// ImHex 1.35.4 Pattern File
#pragma author C3pa
#pragma description Pattern for TES3 BSA files.
#pragma version 0.2.0
#pragma once
#pragma endian little
// #pragma debug


import std.io;
import std.mem;
import std.sys;


struct Header {
	u32 version;
	u32 fileNameHashesOffset;
	u32 numFiles;
} [[static]];

struct FileOffset {
	u32 size;
	u32 offset;
} [[static]];

struct FileNameHash {
	u32 hash1;
	u32 hash2;
} [[static]];

fn ReadString(u32 adress) {
	// This is really a hack
	u32 MAX_LENGTH = 256;
	char buffer[MAX_LENGTH];
	for (u32 i = 0, i < MAX_LENGTH, i += 1) {
		char c = std::mem::read_string(adress + i, 1);
		if (c != "\n") {
			buffer[i] = c;
		}
		else {
			break;
		}
	}
	return buffer;
};

fn ReadName(u32 index, u32 numFiles) {
	u32 fileNamesStart = 12 + 12 * numFiles;
	u32 fileNamesOffset = std::mem::read_unsigned(fileNamesStart - 4 * (numFiles - index), 4);
	return ReadString(fileNamesStart + fileNamesOffset);
};


Header header @ $;
FileOffset fileOffsets[header.numFiles] @ $;
u32 fileNameOffsets[header.numFiles] @ $;
char fileNames[header.fileNameHashesOffset - 12 * header.numFiles] @ $;
FileNameHash fileNameHashes[header.numFiles] @ $;

// TODO: the individual files aren't read yet.
struct File {
	u32 index;
	// std::mem::Bytes<Size> data;
	u32 size = fileOffsets[index].size [[hidden]];
	std::mem::Bytes<size> data = std::mem::read_unsigned($, size);
};

// File files[1] @ $;

std::assert_warn(std::mem::eof(), "End of file not reached");


// ImHex 1.35.4 Pattern File
#pragma author C3pa
#pragma description Pattern for TES3 files: esm, esp and ess.
#pragma version 0.2.0
#pragma once
#pragma endian little
// 40000000 isn't enough to decode Morrowind.esm
#pragma pattern_limit 5000000
// #pragma debug


import std.io;
import std.mem;
import std.sys;

import esx.enums;

// TODO, figure out how MIME works:
// https://github.com/WerWolv/ImHex-Patterns/pull/241

// Turn on to print when an unknown record/subrecord is encountered
bool DEVMODE = false;

/*
Docs:
https://docs.werwolv.net/pattern-language/core-language/attributes
https://docs.werwolv.net/pattern-language/libraries/std/mem.pat#std-mem-read_unsigned

Source:
https://github.com/Greatness7/binary_templates/blob/master/esx.bt

010 Editor Manual:
https://www.sweetscape.com/010editor/manual/DataTypes.htm
https://www.sweetscape.com/010editor/manual/FuncIO.htm

*/

/* -- HEDR (Header) -- */


struct TES3_HEDR {
	float version;
	ESFileType type;
	char author[32];
	char description[256];
	u32 recordCount;
} [[inline, static]];

struct TES3_MAST {
	char masterFileName[parent.parent.size];
} [[inline]];

struct TES3_DATA {
	u64 masterFileSize;
} [[inline, static]];

struct TES3 {
	match(parent.tag) {
		("HEDR"): TES3_HEDR header;
		("MAST"): TES3_MAST master;
		("DATA"): TES3_DATA data;
		(_): {
			if (DEVMODE) {
				std::print("Unknown subrecord read in \"TES3\" record: {}", parent.tag);
			}
			std::mem::Bytes<size> undefined;
		}
	}
} [[inline]];


/* -- STAT (Static) -- */


struct STAT_NAME {
	char id[parent.parent.size];
} [[inline]];

struct STAT_MODL {
	char model[parent.parent.size];
} [[inline]];

struct STAT {
	match(parent.tag) {
		("NAME"): STAT_NAME header;
		("MODL"): STAT_MODL master;
		(_): {
			if (DEVMODE) {
				std::print("Unknown subrecord read in \"STAT\" record: {}", parent.tag);
			}
			std::mem::Bytes<size> undefined;
		}
	}
} [[inline]];


/* -- CELL (Cell) -- */

struct CELL_NAME {
	char id[parent.parent.size];
} [[inline]];

u8 cellDataSize = 12;

struct CELL_DATA {
	// Cell Data
	if (parent.parent.size == cellDataSize) {
		u32 flags;
		s32 gridX;
		s32 gridY;
	}
	// Reference Data
	else {
		// TODO: consider converting to a tes3vector3 stuct
		float xPosition;
		float yPosition;
		float zPosition;
		float xRotation;
		float yRotation;
		float zRotation;
	}
} [[inline]];

struct CELL_WHGT {
	float waterHeight;
} [[inline, static]];

struct CELL_AMBI {
	u8 ambientColor[4];
	u8 sunlightColor[4];
	u8 fogColor[4];
	float fogDensity;
} [[inline, static]];

struct CELL_RGNN {
	char id[parent.parent.size];
} [[inline]];

struct CELL_NAM5 {
	u8 red;
	u8 green;
	u8 blue;
	u8 alpha;
} [[inline, static]];

struct CELL_NAM0 {
	u32 numTempRefs;
} [[inline, static]];

u8 FRMR_UNPACKED_SIZE = 8;

// TODO: add some better formatting for this struct
struct CELL_FRMR {
	if (parent.parent.size == FRMR_UNPACKED_SIZE) {
		u32 masterIndex;
		u32 objectIndex;
	}
	else {
		u32 packedIndices;
	}
} [[inline]];

u8 MVRF_UNPACKED_SIZE = 8;

struct CELL_MVRF {
	if (parent.parent.size == MVRF_UNPACKED_SIZE) {
		u32 masterIndex;
		u32 objectIndex;
	}
	else {
		u32 packedIndices;
	}
} [[inline]];

struct CELL_CNDT {
	s32 gridX;
	s32 gridY;
} [[inline, static]];

struct CELL_UNAM {
	s8 blocked;
} [[inline, static]];

struct CELL_XSCL {
	float scale;
} [[inline, static]];

struct CELL_DODT {
	// TODO Consider replacing with a tes3vector3 struct
	float xPosition;
	float yPosition;
	float zPosition;
	float xRotation;
	float yRotation;
	float zRotation;
} [[inline, static]];

struct CELL_DNAM {
	char id[parent.parent.size];
} [[inline]];

struct CELL_ANAM {
	char id[parent.parent.size];
} [[inline]];

struct CELL_BNAM {
	char id[parent.parent.size];
} [[inline]];

struct CELL_CNAM {
	char id[parent.parent.size];
} [[inline]];

struct CELL_INDX {
	u32 rank;
} [[inline, static]];


struct CELL_XSOL {
	char id[parent.parent.size];
} [[inline]];

struct CELL_XCHG {
	u32 chargeLeft;
} [[inline, static]];

struct CELL_INTV {
	u32 healthLeft;
} [[inline, static]];

struct CELL_NAM9 {
	u32 stackSize;
} [[inline, static]];

struct CELL_FLTV {
	u32 lockLevel;
} [[inline, static]];

struct CELL_KNAM {
	char id[parent.parent.size];
} [[inline]];

struct CELL_TNAM {
	char id[parent.parent.size];
} [[inline]];

struct CELL_DELE {
	s8 deleted[parent.parent.size];
} [[inline]];

struct CELL {
	match(parent.tag) {
		("NAME"): CELL_NAME name;
		("DATA"): CELL_DATA data;
		("WHGT"): CELL_WHGT waterHeight;
		("AMBI"): CELL_AMBI ambientLightData;
		("RGNN"): CELL_RGNN region;
		("NAM5"): CELL_NAM5 mapColor;
		("NAM0"): CELL_NAM0 numTempRefs;
		("FRMR"): CELL_FRMR referenceIndex;
		("MVRF"): CELL_MVRF movedReferenceIndex;
		("CNDT"): CELL_CNDT movedReferenceCell;
		("UNAM"): CELL_UNAM blocked;
		("XSCL"): CELL_XSCL scale;
		("DODT"): CELL_DODT doorDestinationCoords;
		("DNAM"): CELL_DNAM doorDestinationCell;
		("ANAM"): CELL_ANAM ownerId;
		("BNAM"): CELL_BNAM ownerGlobalVariable;
		("CNAM"): CELL_CNAM ownerFactionId;
		("INDX"): CELL_INDX ownerFactionRank;
		("XSOL"): CELL_XSOL soulId;
		("XCHG"): CELL_XCHG chargeLeft;
		("INTV"): CELL_INTV healthLeft;
		("NAM9"): CELL_NAM9 stackSize;
		("FLTV"): CELL_FLTV lockLevel;
		("KNAM"): CELL_KNAM keyId;
		("TNAM"): CELL_TNAM trapId;
		("DELE"): CELL_DELE deleted;
		(_): {
			if (DEVMODE) {
				std::print("Unknown subrecord read in \"CELL\" record: {}", parent.tag);
			}
			std::mem::Bytes<size> undefined;
		}
	}
} [[inline]];

// TODO: cell
// https://github.com/Greatness7/binary_templates/blob/master/esx.bt#L3335

struct SubRecord {
	//if ($ >= parent.endPos) {
	//    return;
	//}
	char tag[4];
	u32 size;
	match(parent.tag) {
		("TES3"): TES3 tes3;
		("STAT"): STAT static;
		("CELL"): CELL cell;
		(_): {
			if (DEVMODE) {
				std::print("Unknown subrecord read: {}", parent.tag);
			}
			std::mem::Bytes<size> undefined;
		}
	}
} [[format("format_SubRecord")]];

fn format_SubRecord(SubRecord rec) {
	return std::format("{}", rec.tag);
};


struct Record {
	char tag[4];
	u32 size;
	u32 flags1;
	u32 flags2;
	
	s64 endPos = $ + size;
	SubRecord subrecords[while($ < endPos)] [[inline]];
} [[format("format_Record")]];

fn format_Record(Record rec) {
	return std::format("{}", rec.tag);
};

Record header @ $;
u32 recordCount = header.subrecords[0].tes3.header.recordCount;
std::print("Found {} records in file's header.", recordCount);

Record rec[while(!std::mem::eof())] @ $ [[inline]];

std::assert_warn(std::mem::eof(), "End of file not reached");
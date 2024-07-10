struct ENT{
u32 offset;
u32 size;
u32 crc;
u16 name_offset;
};
struct BG4{
char MAGIC[3];
u8 compressed; //0x11 is lz11 prob...
if(compressed == 0){
u16 ver;//Ill have to check other games on this
u16 file_count;
u32 data_offset;
u32 idk;//Same as first comment
ENT entrys[file_count];
}else if(compressed == 0x11){
u24 decompress_size;
}
};

BG4 file @ 0;//Thank you jfmherokiller for the intal start
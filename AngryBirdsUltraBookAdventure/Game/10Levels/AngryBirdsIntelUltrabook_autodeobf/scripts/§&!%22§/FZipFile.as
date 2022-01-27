package §&!"§
{
   import §2!#§.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const COMPRESSION_NONE:int = 0;
      
      public static const COMPRESSION_SHRUNK:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const COMPRESSION_IMPLODED:int = 6;
      
      public static const COMPRESSION_TOKENIZED:int = 7;
      
      public static const COMPRESSION_DEFLATED:int = 8;
      
      public static const COMPRESSION_DEFLATED_EXT:int = 9;
      
      public static const COMPRESSION_IMPLODED_PKWARE:int = 10;
      
      protected static var HAS_UNCOMPRESS:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var HAS_INFLATE:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §;!T§:int = 0;
      
      protected var §4!,§:String = "2.0";
      
      protected var §-?§:int = 8;
      
      protected var §+s§:Boolean = false;
      
      protected var §5!Z§:int = -1;
      
      protected var §@e§:int = -1;
      
      protected var §!!U§:int = -1;
      
      protected var §%t§:Boolean = false;
      
      protected var §]N§:Boolean = false;
      
      protected var §,!`§:Date;
      
      protected var §?!b§:uint;
      
      protected var §+!0§:Boolean = false;
      
      protected var §1!^§:uint = 0;
      
      protected var §`!_§:uint = 0;
      
      protected var §1@§:String = "";
      
      protected var §0@§:String;
      
      protected var §0U§:Dictionary;
      
      protected var §@w§:String = "";
      
      protected var §2n§:ByteArray;
      
      var §'A§:uint;
      
      var §4!7§:uint = 0;
      
      var §3![§:uint = 0;
      
      protected var §3o§:Boolean = false;
      
      protected var §3Z§:Function;
      
      public function FZipFile(filenameEncoding:String = "utf-8")
      {
         this.§3Z§ = this.§#z§;
         super();
         this.§0@§ = filenameEncoding;
         this.§0U§ = new Dictionary();
         this.§2n§ = new ByteArray();
         this.§2n§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §^!J§() : Date
      {
         return this.§,!`§;
      }
      
      public function set §^!J§(value:Date) : void
      {
         this.§,!`§ = value != null ? value : new Date();
      }
      
      public function get §4F§() : String
      {
         return this.§1@§;
      }
      
      public function set §4F§(value:String) : void
      {
         this.§1@§ = value;
      }
      
      function get §!!N§() : Boolean
      {
         return this.§%t§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§3o§)
         {
            this.uncompress();
         }
         return this.§2n§;
      }
      
      public function set content(data:ByteArray) : void
      {
         this.§=!'§(data);
      }
      
      public function §=!'§(data:ByteArray, doCompress:Boolean = true) : void
      {
         if(data != null && data.length > 0)
         {
            data.position = 0;
            data.readBytes(this.§2n§,0,data.length);
            this.§'A§ = ChecksumUtil.§?p§(this.§2n§);
            this.§+!0§ = false;
         }
         else
         {
            this.§2n§.length = 0;
            this.§2n§.position = 0;
            this.§3o§ = false;
         }
         if(doCompress)
         {
            this.compress();
         }
         else
         {
            this.§3![§ = this.§4!7§ = this.§2n§.length;
         }
      }
      
      public function get § d§() : String
      {
         return this.§4!,§;
      }
      
      public function get §;!H§() : uint
      {
         return this.§4!7§;
      }
      
      public function get §]!J§() : uint
      {
         return this.§3![§;
      }
      
      public function §^!-§(recompress:Boolean = true, charset:String = "utf-8") : String
      {
         var str:String = null;
         if(this.§3o§)
         {
            this.uncompress();
         }
         this.§2n§.position = 0;
         if(charset == "utf-8")
         {
            str = this.§2n§.readUTFBytes(this.§2n§.bytesAvailable);
         }
         else
         {
            str = this.§2n§.readMultiByte(this.§2n§.bytesAvailable,charset);
         }
         this.§2n§.position = 0;
         if(recompress)
         {
            this.compress();
         }
         return str;
      }
      
      public function §2T§(value:String, charset:String = "utf-8", doCompress:Boolean = true) : void
      {
         this.§2n§.length = 0;
         this.§2n§.position = 0;
         this.§3o§ = false;
         if(value != null && value.length > 0)
         {
            if(charset == "utf-8")
            {
               this.§2n§.writeUTFBytes(value);
            }
            else
            {
               this.§2n§.writeMultiByte(value,charset);
            }
            this.§'A§ = ChecksumUtil.§?p§(this.§2n§);
            this.§+!0§ = false;
         }
         if(doCompress)
         {
            this.compress();
         }
         else
         {
            this.§3![§ = this.§4!7§ = this.§2n§.length;
         }
      }
      
      public function §!E§(stream:IDataOutput, includeAdler32:Boolean, centralDir:Boolean = false, centralDirOffset:uint = 0) : uint
      {
         var headerId:* = null;
         var extraBytes:ByteArray = null;
         var compressed:Boolean = false;
         if(stream == null)
         {
            return 0;
         }
         if(centralDir)
         {
            stream.writeUnsignedInt(FZip.SIG_CENTRAL_FILE_HEADER);
            stream.writeShort(this.§;!T§ << 8 | 20);
         }
         else
         {
            stream.writeUnsignedInt(FZip.SIG_LOCAL_FILE_HEADER);
         }
         stream.writeShort(this.§;!T§ << 8 | 20);
         stream.writeShort(this.§0@§ == "utf-8" ? int(2048) : int(0));
         stream.writeShort(!!this.§3o§ ? int(COMPRESSION_DEFLATED) : int(COMPRESSION_NONE));
         var d:Date = this.§,!`§ != null ? this.§,!`§ : new Date();
         var msdosTime:uint = uint(d.getSeconds()) | uint(d.getMinutes()) << 5 | uint(d.getHours()) << 11;
         var msdosDate:uint = uint(d.getDate()) | uint(d.getMonth() + 1) << 5 | uint(d.getFullYear() - 1980) << 9;
         stream.writeShort(msdosTime);
         stream.writeShort(msdosDate);
         stream.writeUnsignedInt(this.§'A§);
         stream.writeUnsignedInt(this.§4!7§);
         stream.writeUnsignedInt(this.§3![§);
         var ba:ByteArray = new ByteArray();
         ba.endian = Endian.LITTLE_ENDIAN;
         if(this.§0@§ == "utf-8")
         {
            ba.writeUTFBytes(this.§1@§);
         }
         else
         {
            ba.writeMultiByte(this.§1@§,this.§0@§);
         }
         var filenameSize:uint = ba.position;
         for(headerId in this.§0U§)
         {
            extraBytes = this.§0U§[headerId] as ByteArray;
            if(extraBytes != null)
            {
               ba.writeShort(uint(headerId));
               ba.writeShort(uint(extraBytes.length));
               ba.writeBytes(extraBytes);
            }
         }
         if(includeAdler32)
         {
            if(!this.§+!0§)
            {
               compressed = this.§3o§;
               if(compressed)
               {
                  this.uncompress();
               }
               this.§?!b§ = ChecksumUtil.§[2§(this.§2n§,0,this.§2n§.length);
               this.§+!0§ = true;
               if(compressed)
               {
                  this.compress();
               }
            }
            ba.writeShort(56026);
            ba.writeShort(4);
            ba.writeUnsignedInt(this.§?!b§);
         }
         var extrafieldsSize:uint = ba.position - filenameSize;
         if(centralDir && this.§@w§.length > 0)
         {
            if(this.§0@§ == "utf-8")
            {
               ba.writeUTFBytes(this.§@w§);
            }
            else
            {
               ba.writeMultiByte(this.§@w§,this.§0@§);
            }
         }
         var commentSize:uint = ba.position - filenameSize - extrafieldsSize;
         stream.writeShort(filenameSize);
         stream.writeShort(extrafieldsSize);
         if(centralDir)
         {
            stream.writeShort(commentSize);
            stream.writeShort(0);
            stream.writeShort(0);
            stream.writeUnsignedInt(0);
            stream.writeUnsignedInt(centralDirOffset);
         }
         if(filenameSize + extrafieldsSize + commentSize > 0)
         {
            stream.writeBytes(ba);
         }
         var fileSize:uint = 0;
         if(!centralDir && this.§2n§.length > 0)
         {
            if(this.§3o§)
            {
               if(HAS_UNCOMPRESS || HAS_INFLATE)
               {
                  fileSize = this.§2n§.length;
                  stream.writeBytes(this.§2n§,0,fileSize);
               }
               else
               {
                  fileSize = this.§2n§.length - 6;
                  stream.writeBytes(this.§2n§,2,fileSize);
               }
            }
            else
            {
               fileSize = this.§2n§.length;
               stream.writeBytes(this.§2n§,0,fileSize);
            }
         }
         var size:uint = 30 + filenameSize + extrafieldsSize + commentSize + fileSize;
         if(centralDir)
         {
            size += 16;
         }
         return size;
      }
      
      function parse(stream:IDataInput) : Boolean
      {
         while(stream.bytesAvailable && this.§3Z§(stream))
         {
         }
         return this.§3Z§ === this.§,!Y§;
      }
      
      protected function §,!Y§(stream:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §#z§(stream:IDataInput) : Boolean
      {
         if(stream.bytesAvailable >= 30)
         {
            this.§8?§(stream);
            if(this.§1!^§ + this.§`!_§ > 0)
            {
               this.§3Z§ = this.§ "§;
            }
            else
            {
               this.§3Z§ = this.§>G§;
            }
            return true;
         }
         return false;
      }
      
      protected function § "§(stream:IDataInput) : Boolean
      {
         if(stream.bytesAvailable >= this.§1!^§ + this.§`!_§)
         {
            this.§ P§(stream);
            this.§3Z§ = this.§>G§;
            return true;
         }
         return false;
      }
      
      protected function §>G§(stream:IDataInput) : Boolean
      {
         var continueParsing:Boolean = true;
         if(this.§%t§)
         {
            this.§3Z§ = this.§,!Y§;
            continueParsing = false;
         }
         else if(this.§4!7§ == 0)
         {
            this.§3Z§ = this.§,!Y§;
         }
         else if(stream.bytesAvailable >= this.§4!7§)
         {
            this.§&;§(stream);
            this.§3Z§ = this.§,!Y§;
         }
         else
         {
            continueParsing = false;
         }
         return continueParsing;
      }
      
      protected function §8?§(data:IDataInput) : void
      {
         var vSrc:uint = data.readUnsignedShort();
         this.§;!T§ = vSrc >> 8;
         this.§4!,§ = Math.floor((vSrc & 255) / 10) + "." + (vSrc & 255) % 10;
         var flag:uint = data.readUnsignedShort();
         this.§-?§ = data.readUnsignedShort();
         this.§+s§ = (flag & 1) !== 0;
         this.§%t§ = (flag & 8) !== 0;
         this.§]N§ = (flag & 32) !== 0;
         if((flag & 800) !== 0)
         {
            this.§0@§ = "utf-8";
         }
         if(this.§-?§ === COMPRESSION_IMPLODED)
         {
            this.§5!Z§ = (flag & 2) !== 0 ? int(8192) : int(4096);
            this.§@e§ = (flag & 4) !== 0 ? int(3) : int(2);
         }
         else if(this.§-?§ === COMPRESSION_DEFLATED)
         {
            this.§!!U§ = (flag & 6) >> 1;
         }
         var msdosTime:uint = data.readUnsignedShort();
         var msdosDate:uint = data.readUnsignedShort();
         var sec:int = msdosTime & 31;
         var min:int = (msdosTime & 2016) >> 5;
         var hour:int = (msdosTime & 63488) >> 11;
         var day:int = msdosDate & 31;
         var month:int = (msdosDate & 480) >> 5;
         var year:int = ((msdosDate & 65024) >> 9) + 1980;
         this.§,!`§ = new Date(year,month - 1,day,hour,min,sec,0);
         this.§'A§ = data.readUnsignedInt();
         this.§4!7§ = data.readUnsignedInt();
         this.§3![§ = data.readUnsignedInt();
         this.§1!^§ = data.readUnsignedShort();
         this.§`!_§ = data.readUnsignedShort();
      }
      
      protected function § P§(data:IDataInput) : void
      {
         var headerId:uint = 0;
         var dataSize:uint = 0;
         var extraBytes:ByteArray = null;
         if(this.§0@§ == "utf-8")
         {
            this.§1@§ = data.readUTFBytes(this.§1!^§);
         }
         else
         {
            this.§1@§ = data.readMultiByte(this.§1!^§,this.§0@§);
         }
         for(var bytesLeft:uint = this.§`!_§; bytesLeft > 4; )
         {
            headerId = data.readUnsignedShort();
            dataSize = data.readUnsignedShort();
            if(dataSize > bytesLeft)
            {
               throw new Error("Parse error in file " + this.§1@§ + ": Extra field data size too big.");
            }
            if(headerId === 56026 && dataSize === 4)
            {
               this.§?!b§ = data.readUnsignedInt();
               this.§+!0§ = true;
            }
            else if(dataSize > 0)
            {
               extraBytes = new ByteArray();
               data.readBytes(extraBytes,0,dataSize);
               this.§0U§[headerId] = extraBytes;
            }
            bytesLeft -= dataSize + 4;
         }
         if(bytesLeft > 0)
         {
            data.readBytes(new ByteArray(),0,bytesLeft);
         }
      }
      
      function §&;§(data:IDataInput) : void
      {
         var flg:uint = 0;
         if(this.§-?§ === COMPRESSION_DEFLATED && !this.§+s§)
         {
            if(HAS_UNCOMPRESS || HAS_INFLATE)
            {
               data.readBytes(this.§2n§,0,this.§4!7§);
            }
            else
            {
               if(!this.§+!0§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§2n§.writeByte(120);
               flg = ~this.§!!U§ << 6 & 192;
               flg += 31 - (120 << 8 | flg) % 31;
               this.§2n§.writeByte(flg);
               data.readBytes(this.§2n§,2,this.§4!7§);
               this.§2n§.position = this.§2n§.length;
               this.§2n§.writeUnsignedInt(this.§?!b§);
            }
            this.§3o§ = true;
         }
         else
         {
            if(this.§-?§ != COMPRESSION_NONE)
            {
               throw new Error("Compression method " + this.§-?§ + " is not supported.");
            }
            data.readBytes(this.§2n§,0,this.§4!7§);
            this.§3o§ = false;
         }
         this.§2n§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§3o§)
         {
            if(this.§2n§.length > 0)
            {
               this.§2n§.position = 0;
               this.§3![§ = this.§2n§.length;
               if(HAS_INFLATE)
               {
                  this.§2n§.deflate();
                  this.§4!7§ = this.§2n§.length;
               }
               else if(HAS_UNCOMPRESS)
               {
                  this.§2n§.compress.apply(this.§2n§,["deflate"]);
                  this.§4!7§ = this.§2n§.length;
               }
               else
               {
                  this.§2n§.compress();
                  this.§4!7§ = this.§2n§.length - 6;
               }
               this.§2n§.position = 0;
               this.§3o§ = true;
            }
            else
            {
               this.§4!7§ = 0;
               this.§3![§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§3o§ && this.§2n§.length > 0)
         {
            this.§2n§.position = 0;
            if(HAS_INFLATE)
            {
               this.§2n§.inflate();
            }
            else if(HAS_UNCOMPRESS)
            {
               this.§2n§.uncompress.apply(this.§2n§,["deflate"]);
            }
            else
            {
               this.§2n§.uncompress();
            }
            this.§2n§.position = 0;
            this.§3o§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§1@§ + "\n  date:" + this.§,!`§ + "\n  sizeCompressed:" + this.§4!7§ + "\n  sizeUncompressed:" + this.§3![§ + "\n  versionHost:" + this.§;!T§ + "\n  versionNumber:" + this.§4!,§ + "\n  compressionMethod:" + this.§-?§ + "\n  encrypted:" + this.§+s§ + "\n  hasDataDescriptor:" + this.§%t§ + "\n  hasCompressedPatchedData:" + this.§]N§ + "\n  filenameEncoding:" + this.§0@§ + "\n  crc32:" + this.§'A§.toString(16) + "\n  adler32:" + this.§?!b§.toString(16);
      }
   }
}

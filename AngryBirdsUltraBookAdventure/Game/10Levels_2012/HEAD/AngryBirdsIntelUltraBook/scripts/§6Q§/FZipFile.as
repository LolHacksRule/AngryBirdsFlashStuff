package §6Q§
{
   import §@Y§.ChecksumUtil;
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
       
      
      protected var §9N§:int = 0;
      
      protected var §]$§:String = "2.0";
      
      protected var §3i§:int = 8;
      
      protected var §5!^§:Boolean = false;
      
      protected var §+!6§:int = -1;
      
      protected var §=t§:int = -1;
      
      protected var §,!G§:int = -1;
      
      protected var §3_§:Boolean = false;
      
      protected var §@!R§:Boolean = false;
      
      protected var §+u§:Date;
      
      protected var §8!i§:uint;
      
      protected var §=!c§:Boolean = false;
      
      protected var §-!U§:uint = 0;
      
      protected var §4!'§:uint = 0;
      
      protected var §<4§:String = "";
      
      protected var §&H§:String;
      
      protected var §,! §:Dictionary;
      
      protected var §3!k§:String = "";
      
      protected var §-!0§:ByteArray;
      
      var § e§:uint;
      
      var §"i§:uint = 0;
      
      var §,!T§:uint = 0;
      
      protected var §1f§:Boolean = false;
      
      protected var §,!6§:Function;
      
      public function FZipFile(filenameEncoding:String = "utf-8")
      {
         this.§,!6§ = this.§[!T§;
         super();
         this.§&H§ = filenameEncoding;
         this.§,! § = new Dictionary();
         this.§-!0§ = new ByteArray();
         this.§-!0§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §+X§() : Date
      {
         return this.§+u§;
      }
      
      public function set §+X§(value:Date) : void
      {
         this.§+u§ = value != null ? value : new Date();
      }
      
      public function get §2!e§() : String
      {
         return this.§<4§;
      }
      
      public function set §2!e§(value:String) : void
      {
         this.§<4§ = value;
      }
      
      function get §,%§() : Boolean
      {
         return this.§3_§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§1f§)
         {
            this.uncompress();
         }
         return this.§-!0§;
      }
      
      public function set content(data:ByteArray) : void
      {
         this.§]!]§(data);
      }
      
      public function §]!]§(data:ByteArray, doCompress:Boolean = true) : void
      {
         if(data != null && data.length > 0)
         {
            data.position = 0;
            data.readBytes(this.§-!0§,0,data.length);
            this.§ e§ = ChecksumUtil.§=N§(this.§-!0§);
            this.§=!c§ = false;
         }
         else
         {
            this.§-!0§.length = 0;
            this.§-!0§.position = 0;
            this.§1f§ = false;
         }
         if(doCompress)
         {
            this.compress();
         }
         else
         {
            this.§,!T§ = this.§"i§ = this.§-!0§.length;
         }
      }
      
      public function get §`b§() : String
      {
         return this.§]$§;
      }
      
      public function get §#!C§() : uint
      {
         return this.§"i§;
      }
      
      public function get §9^§() : uint
      {
         return this.§,!T§;
      }
      
      public function §,s§(recompress:Boolean = true, charset:String = "utf-8") : String
      {
         var str:String = null;
         if(this.§1f§)
         {
            this.uncompress();
         }
         this.§-!0§.position = 0;
         if(charset == "utf-8")
         {
            str = this.§-!0§.readUTFBytes(this.§-!0§.bytesAvailable);
         }
         else
         {
            str = this.§-!0§.readMultiByte(this.§-!0§.bytesAvailable,charset);
         }
         this.§-!0§.position = 0;
         if(recompress)
         {
            this.compress();
         }
         return str;
      }
      
      public function §%!R§(value:String, charset:String = "utf-8", doCompress:Boolean = true) : void
      {
         this.§-!0§.length = 0;
         this.§-!0§.position = 0;
         this.§1f§ = false;
         if(value != null && value.length > 0)
         {
            if(charset == "utf-8")
            {
               this.§-!0§.writeUTFBytes(value);
            }
            else
            {
               this.§-!0§.writeMultiByte(value,charset);
            }
            this.§ e§ = ChecksumUtil.§=N§(this.§-!0§);
            this.§=!c§ = false;
         }
         if(doCompress)
         {
            this.compress();
         }
         else
         {
            this.§,!T§ = this.§"i§ = this.§-!0§.length;
         }
      }
      
      public function §%f§(stream:IDataOutput, includeAdler32:Boolean, centralDir:Boolean = false, centralDirOffset:uint = 0) : uint
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
            stream.writeShort(this.§9N§ << 8 | 20);
         }
         else
         {
            stream.writeUnsignedInt(FZip.SIG_LOCAL_FILE_HEADER);
         }
         stream.writeShort(this.§9N§ << 8 | 20);
         stream.writeShort(this.§&H§ == "utf-8" ? int(2048) : int(0));
         stream.writeShort(!!this.§1f§ ? int(COMPRESSION_DEFLATED) : int(COMPRESSION_NONE));
         var d:Date = this.§+u§ != null ? this.§+u§ : new Date();
         var msdosTime:uint = uint(d.getSeconds()) | uint(d.getMinutes()) << 5 | uint(d.getHours()) << 11;
         var msdosDate:uint = uint(d.getDate()) | uint(d.getMonth() + 1) << 5 | uint(d.getFullYear() - 1980) << 9;
         stream.writeShort(msdosTime);
         stream.writeShort(msdosDate);
         stream.writeUnsignedInt(this.§ e§);
         stream.writeUnsignedInt(this.§"i§);
         stream.writeUnsignedInt(this.§,!T§);
         var ba:ByteArray = new ByteArray();
         ba.endian = Endian.LITTLE_ENDIAN;
         if(this.§&H§ == "utf-8")
         {
            ba.writeUTFBytes(this.§<4§);
         }
         else
         {
            ba.writeMultiByte(this.§<4§,this.§&H§);
         }
         var filenameSize:uint = ba.position;
         for(headerId in this.§,! §)
         {
            extraBytes = this.§,! §[headerId] as ByteArray;
            if(extraBytes != null)
            {
               ba.writeShort(uint(headerId));
               ba.writeShort(uint(extraBytes.length));
               ba.writeBytes(extraBytes);
            }
         }
         if(includeAdler32)
         {
            if(!this.§=!c§)
            {
               compressed = this.§1f§;
               if(compressed)
               {
                  this.uncompress();
               }
               this.§8!i§ = ChecksumUtil.§80§(this.§-!0§,0,this.§-!0§.length);
               this.§=!c§ = true;
               if(compressed)
               {
                  this.compress();
               }
            }
            ba.writeShort(56026);
            ba.writeShort(4);
            ba.writeUnsignedInt(this.§8!i§);
         }
         var extrafieldsSize:uint = ba.position - filenameSize;
         if(centralDir && this.§3!k§.length > 0)
         {
            if(this.§&H§ == "utf-8")
            {
               ba.writeUTFBytes(this.§3!k§);
            }
            else
            {
               ba.writeMultiByte(this.§3!k§,this.§&H§);
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
         if(!centralDir && this.§-!0§.length > 0)
         {
            if(this.§1f§)
            {
               if(HAS_UNCOMPRESS || HAS_INFLATE)
               {
                  fileSize = this.§-!0§.length;
                  stream.writeBytes(this.§-!0§,0,fileSize);
               }
               else
               {
                  fileSize = this.§-!0§.length - 6;
                  stream.writeBytes(this.§-!0§,2,fileSize);
               }
            }
            else
            {
               fileSize = this.§-!0§.length;
               stream.writeBytes(this.§-!0§,0,fileSize);
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
         while(stream.bytesAvailable && this.§,!6§(stream))
         {
         }
         return this.§,!6§ === this.§extends§;
      }
      
      protected function §extends§(stream:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §[!T§(stream:IDataInput) : Boolean
      {
         if(stream.bytesAvailable >= 30)
         {
            this.§@J§(stream);
            if(this.§-!U§ + this.§4!'§ > 0)
            {
               this.§,!6§ = this.§,]§;
            }
            else
            {
               this.§,!6§ = this.§!!W§;
            }
            return true;
         }
         return false;
      }
      
      protected function §,]§(stream:IDataInput) : Boolean
      {
         if(stream.bytesAvailable >= this.§-!U§ + this.§4!'§)
         {
            this.§]^§(stream);
            this.§,!6§ = this.§!!W§;
            return true;
         }
         return false;
      }
      
      protected function §!!W§(stream:IDataInput) : Boolean
      {
         var continueParsing:Boolean = true;
         if(this.§3_§)
         {
            this.§,!6§ = this.§extends§;
            continueParsing = false;
         }
         else if(this.§"i§ == 0)
         {
            this.§,!6§ = this.§extends§;
         }
         else if(stream.bytesAvailable >= this.§"i§)
         {
            this.§4W§(stream);
            this.§,!6§ = this.§extends§;
         }
         else
         {
            continueParsing = false;
         }
         return continueParsing;
      }
      
      protected function §@J§(data:IDataInput) : void
      {
         var vSrc:uint = data.readUnsignedShort();
         this.§9N§ = vSrc >> 8;
         this.§]$§ = Math.floor((vSrc & 255) / 10) + "." + (vSrc & 255) % 10;
         var flag:uint = data.readUnsignedShort();
         this.§3i§ = data.readUnsignedShort();
         this.§5!^§ = (flag & 1) !== 0;
         this.§3_§ = (flag & 8) !== 0;
         this.§@!R§ = (flag & 32) !== 0;
         if((flag & 800) !== 0)
         {
            this.§&H§ = "utf-8";
         }
         if(this.§3i§ === COMPRESSION_IMPLODED)
         {
            this.§+!6§ = (flag & 2) !== 0 ? int(8192) : int(4096);
            this.§=t§ = (flag & 4) !== 0 ? int(3) : int(2);
         }
         else if(this.§3i§ === COMPRESSION_DEFLATED)
         {
            this.§,!G§ = (flag & 6) >> 1;
         }
         var msdosTime:uint = data.readUnsignedShort();
         var msdosDate:uint = data.readUnsignedShort();
         var sec:int = msdosTime & 31;
         var min:int = (msdosTime & 2016) >> 5;
         var hour:int = (msdosTime & 63488) >> 11;
         var day:int = msdosDate & 31;
         var month:int = (msdosDate & 480) >> 5;
         var year:int = ((msdosDate & 65024) >> 9) + 1980;
         this.§+u§ = new Date(year,month - 1,day,hour,min,sec,0);
         this.§ e§ = data.readUnsignedInt();
         this.§"i§ = data.readUnsignedInt();
         this.§,!T§ = data.readUnsignedInt();
         this.§-!U§ = data.readUnsignedShort();
         this.§4!'§ = data.readUnsignedShort();
      }
      
      protected function §]^§(data:IDataInput) : void
      {
         var headerId:uint = 0;
         var dataSize:uint = 0;
         var extraBytes:ByteArray = null;
         if(this.§&H§ == "utf-8")
         {
            this.§<4§ = data.readUTFBytes(this.§-!U§);
         }
         else
         {
            this.§<4§ = data.readMultiByte(this.§-!U§,this.§&H§);
         }
         for(var bytesLeft:uint = this.§4!'§; bytesLeft > 4; )
         {
            headerId = data.readUnsignedShort();
            dataSize = data.readUnsignedShort();
            if(dataSize > bytesLeft)
            {
               throw new Error("Parse error in file " + this.§<4§ + ": Extra field data size too big.");
            }
            if(headerId === 56026 && dataSize === 4)
            {
               this.§8!i§ = data.readUnsignedInt();
               this.§=!c§ = true;
            }
            else if(dataSize > 0)
            {
               extraBytes = new ByteArray();
               data.readBytes(extraBytes,0,dataSize);
               this.§,! §[headerId] = extraBytes;
            }
            bytesLeft -= dataSize + 4;
         }
         if(bytesLeft > 0)
         {
            data.readBytes(new ByteArray(),0,bytesLeft);
         }
      }
      
      function §4W§(data:IDataInput) : void
      {
         var flg:uint = 0;
         if(this.§3i§ === COMPRESSION_DEFLATED && !this.§5!^§)
         {
            if(HAS_UNCOMPRESS || HAS_INFLATE)
            {
               data.readBytes(this.§-!0§,0,this.§"i§);
            }
            else
            {
               if(!this.§=!c§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§-!0§.writeByte(120);
               flg = ~this.§,!G§ << 6 & 192;
               flg += 31 - (120 << 8 | flg) % 31;
               this.§-!0§.writeByte(flg);
               data.readBytes(this.§-!0§,2,this.§"i§);
               this.§-!0§.position = this.§-!0§.length;
               this.§-!0§.writeUnsignedInt(this.§8!i§);
            }
            this.§1f§ = true;
         }
         else
         {
            if(this.§3i§ != COMPRESSION_NONE)
            {
               throw new Error("Compression method " + this.§3i§ + " is not supported.");
            }
            data.readBytes(this.§-!0§,0,this.§"i§);
            this.§1f§ = false;
         }
         this.§-!0§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§1f§)
         {
            if(this.§-!0§.length > 0)
            {
               this.§-!0§.position = 0;
               this.§,!T§ = this.§-!0§.length;
               if(HAS_INFLATE)
               {
                  this.§-!0§.deflate();
                  this.§"i§ = this.§-!0§.length;
               }
               else if(HAS_UNCOMPRESS)
               {
                  this.§-!0§.compress.apply(this.§-!0§,["deflate"]);
                  this.§"i§ = this.§-!0§.length;
               }
               else
               {
                  this.§-!0§.compress();
                  this.§"i§ = this.§-!0§.length - 6;
               }
               this.§-!0§.position = 0;
               this.§1f§ = true;
            }
            else
            {
               this.§"i§ = 0;
               this.§,!T§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§1f§ && this.§-!0§.length > 0)
         {
            this.§-!0§.position = 0;
            if(HAS_INFLATE)
            {
               this.§-!0§.inflate();
            }
            else if(HAS_UNCOMPRESS)
            {
               this.§-!0§.uncompress.apply(this.§-!0§,["deflate"]);
            }
            else
            {
               this.§-!0§.uncompress();
            }
            this.§-!0§.position = 0;
            this.§1f§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§<4§ + "\n  date:" + this.§+u§ + "\n  sizeCompressed:" + this.§"i§ + "\n  sizeUncompressed:" + this.§,!T§ + "\n  versionHost:" + this.§9N§ + "\n  versionNumber:" + this.§]$§ + "\n  compressionMethod:" + this.§3i§ + "\n  encrypted:" + this.§5!^§ + "\n  hasDataDescriptor:" + this.§3_§ + "\n  hasCompressedPatchedData:" + this.§@!R§ + "\n  filenameEncoding:" + this.§&H§ + "\n  crc32:" + this.§ e§.toString(16) + "\n  adler32:" + this.§8!i§.toString(16);
      }
   }
}

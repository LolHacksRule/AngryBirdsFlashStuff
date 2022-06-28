package §1!>§
{
   import §9F§.ChecksumUtil;
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
       
      
      protected var §>9§:int = 0;
      
      protected var §!!`§:String = "2.0";
      
      protected var §!n§:int = 8;
      
      protected var §;s§:Boolean = false;
      
      protected var §1+§:int = -1;
      
      protected var §;j§:int = -1;
      
      protected var §-!O§:int = -1;
      
      protected var §!v§:Boolean = false;
      
      protected var §>!a§:Boolean = false;
      
      protected var §2!3§:Date;
      
      protected var §?!d§:uint;
      
      protected var §<&§:Boolean = false;
      
      protected var §3F§:uint = 0;
      
      protected var §"=§:uint = 0;
      
      protected var §>!#§:String = "";
      
      protected var §2!"§:String;
      
      protected var §@!Q§:Dictionary;
      
      protected var §'A§:String = "";
      
      protected var §1!"§:ByteArray;
      
      var §&!H§:uint;
      
      var §!!D§:uint = 0;
      
      var §14§:uint = 0;
      
      protected var §4?§:Boolean = false;
      
      protected var §0!R§:Function;
      
      public function FZipFile(filenameEncoding:String = "utf-8")
      {
         this.§0!R§ = this.§[i§;
         super();
         this.§2!"§ = filenameEncoding;
         this.§@!Q§ = new Dictionary();
         this.§1!"§ = new ByteArray();
         this.§1!"§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §<`§() : Date
      {
         return this.§2!3§;
      }
      
      public function set §<`§(value:Date) : void
      {
         this.§2!3§ = value != null ? value : new Date();
      }
      
      public function get §"!a§() : String
      {
         return this.§>!#§;
      }
      
      public function set §"!a§(value:String) : void
      {
         this.§>!#§ = value;
      }
      
      function get §-p§() : Boolean
      {
         return this.§!v§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§4?§)
         {
            this.uncompress();
         }
         return this.§1!"§;
      }
      
      public function set content(data:ByteArray) : void
      {
         this.§!!f§(data);
      }
      
      public function §!!f§(data:ByteArray, doCompress:Boolean = true) : void
      {
         if(data != null && data.length > 0)
         {
            data.position = 0;
            data.readBytes(this.§1!"§,0,data.length);
            this.§&!H§ = ChecksumUtil.§+!Q§(this.§1!"§);
            this.§<&§ = false;
         }
         else
         {
            this.§1!"§.length = 0;
            this.§1!"§.position = 0;
            this.§4?§ = false;
         }
         if(doCompress)
         {
            this.compress();
         }
         else
         {
            this.§14§ = this.§!!D§ = this.§1!"§.length;
         }
      }
      
      public function get §#M§() : String
      {
         return this.§!!`§;
      }
      
      public function get §1!U§() : uint
      {
         return this.§!!D§;
      }
      
      public function get §<!T§() : uint
      {
         return this.§14§;
      }
      
      public function §`!W§(recompress:Boolean = true, charset:String = "utf-8") : String
      {
         var str:String = null;
         if(this.§4?§)
         {
            this.uncompress();
         }
         this.§1!"§.position = 0;
         if(charset == "utf-8")
         {
            str = this.§1!"§.readUTFBytes(this.§1!"§.bytesAvailable);
         }
         else
         {
            str = this.§1!"§.readMultiByte(this.§1!"§.bytesAvailable,charset);
         }
         this.§1!"§.position = 0;
         if(recompress)
         {
            this.compress();
         }
         return str;
      }
      
      public function §'!2§(value:String, charset:String = "utf-8", doCompress:Boolean = true) : void
      {
         this.§1!"§.length = 0;
         this.§1!"§.position = 0;
         this.§4?§ = false;
         if(value != null && value.length > 0)
         {
            if(charset == "utf-8")
            {
               this.§1!"§.writeUTFBytes(value);
            }
            else
            {
               this.§1!"§.writeMultiByte(value,charset);
            }
            this.§&!H§ = ChecksumUtil.§+!Q§(this.§1!"§);
            this.§<&§ = false;
         }
         if(doCompress)
         {
            this.compress();
         }
         else
         {
            this.§14§ = this.§!!D§ = this.§1!"§.length;
         }
      }
      
      public function §+=§(stream:IDataOutput, includeAdler32:Boolean, centralDir:Boolean = false, centralDirOffset:uint = 0) : uint
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
            stream.writeShort(this.§>9§ << 8 | 20);
         }
         else
         {
            stream.writeUnsignedInt(FZip.SIG_LOCAL_FILE_HEADER);
         }
         stream.writeShort(this.§>9§ << 8 | 20);
         stream.writeShort(this.§2!"§ == "utf-8" ? int(2048) : int(0));
         stream.writeShort(!!this.§4?§ ? int(COMPRESSION_DEFLATED) : int(COMPRESSION_NONE));
         var d:Date = this.§2!3§ != null ? this.§2!3§ : new Date();
         var msdosTime:uint = uint(d.getSeconds()) | uint(d.getMinutes()) << 5 | uint(d.getHours()) << 11;
         var msdosDate:uint = uint(d.getDate()) | uint(d.getMonth() + 1) << 5 | uint(d.getFullYear() - 1980) << 9;
         stream.writeShort(msdosTime);
         stream.writeShort(msdosDate);
         stream.writeUnsignedInt(this.§&!H§);
         stream.writeUnsignedInt(this.§!!D§);
         stream.writeUnsignedInt(this.§14§);
         var ba:ByteArray = new ByteArray();
         ba.endian = Endian.LITTLE_ENDIAN;
         if(this.§2!"§ == "utf-8")
         {
            ba.writeUTFBytes(this.§>!#§);
         }
         else
         {
            ba.writeMultiByte(this.§>!#§,this.§2!"§);
         }
         var filenameSize:uint = ba.position;
         for(headerId in this.§@!Q§)
         {
            extraBytes = this.§@!Q§[headerId] as ByteArray;
            if(extraBytes != null)
            {
               ba.writeShort(uint(headerId));
               ba.writeShort(uint(extraBytes.length));
               ba.writeBytes(extraBytes);
            }
         }
         if(includeAdler32)
         {
            if(!this.§<&§)
            {
               compressed = this.§4?§;
               if(compressed)
               {
                  this.uncompress();
               }
               this.§?!d§ = ChecksumUtil.§%,§(this.§1!"§,0,this.§1!"§.length);
               this.§<&§ = true;
               if(compressed)
               {
                  this.compress();
               }
            }
            ba.writeShort(56026);
            ba.writeShort(4);
            ba.writeUnsignedInt(this.§?!d§);
         }
         var extrafieldsSize:uint = ba.position - filenameSize;
         if(centralDir && this.§'A§.length > 0)
         {
            if(this.§2!"§ == "utf-8")
            {
               ba.writeUTFBytes(this.§'A§);
            }
            else
            {
               ba.writeMultiByte(this.§'A§,this.§2!"§);
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
         if(!centralDir && this.§1!"§.length > 0)
         {
            if(this.§4?§)
            {
               if(HAS_UNCOMPRESS || HAS_INFLATE)
               {
                  fileSize = this.§1!"§.length;
                  stream.writeBytes(this.§1!"§,0,fileSize);
               }
               else
               {
                  fileSize = this.§1!"§.length - 6;
                  stream.writeBytes(this.§1!"§,2,fileSize);
               }
            }
            else
            {
               fileSize = this.§1!"§.length;
               stream.writeBytes(this.§1!"§,0,fileSize);
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
         while(stream.bytesAvailable && this.§0!R§(stream))
         {
         }
         return this.§0!R§ === this.§]!@§;
      }
      
      protected function §]!@§(stream:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §[i§(stream:IDataInput) : Boolean
      {
         if(stream.bytesAvailable >= 30)
         {
            this.§3!+§(stream);
            if(this.§3F§ + this.§"=§ > 0)
            {
               this.§0!R§ = this.§;!P§;
            }
            else
            {
               this.§0!R§ = this.§9!P§;
            }
            return true;
         }
         return false;
      }
      
      protected function §;!P§(stream:IDataInput) : Boolean
      {
         if(stream.bytesAvailable >= this.§3F§ + this.§"=§)
         {
            this.§&+§(stream);
            this.§0!R§ = this.§9!P§;
            return true;
         }
         return false;
      }
      
      protected function §9!P§(stream:IDataInput) : Boolean
      {
         var continueParsing:Boolean = true;
         if(this.§!v§)
         {
            this.§0!R§ = this.§]!@§;
            continueParsing = false;
         }
         else if(this.§!!D§ == 0)
         {
            this.§0!R§ = this.§]!@§;
         }
         else if(stream.bytesAvailable >= this.§!!D§)
         {
            this.§<c§(stream);
            this.§0!R§ = this.§]!@§;
         }
         else
         {
            continueParsing = false;
         }
         return continueParsing;
      }
      
      protected function §3!+§(data:IDataInput) : void
      {
         var vSrc:uint = data.readUnsignedShort();
         this.§>9§ = vSrc >> 8;
         this.§!!`§ = Math.floor((vSrc & 255) / 10) + "." + (vSrc & 255) % 10;
         var flag:uint = data.readUnsignedShort();
         this.§!n§ = data.readUnsignedShort();
         this.§;s§ = (flag & 1) !== 0;
         this.§!v§ = (flag & 8) !== 0;
         this.§>!a§ = (flag & 32) !== 0;
         if((flag & 800) !== 0)
         {
            this.§2!"§ = "utf-8";
         }
         if(this.§!n§ === COMPRESSION_IMPLODED)
         {
            this.§1+§ = (flag & 2) !== 0 ? int(8192) : int(4096);
            this.§;j§ = (flag & 4) !== 0 ? int(3) : int(2);
         }
         else if(this.§!n§ === COMPRESSION_DEFLATED)
         {
            this.§-!O§ = (flag & 6) >> 1;
         }
         var msdosTime:uint = data.readUnsignedShort();
         var msdosDate:uint = data.readUnsignedShort();
         var sec:int = msdosTime & 31;
         var min:int = (msdosTime & 2016) >> 5;
         var hour:int = (msdosTime & 63488) >> 11;
         var day:int = msdosDate & 31;
         var month:int = (msdosDate & 480) >> 5;
         var year:int = ((msdosDate & 65024) >> 9) + 1980;
         this.§2!3§ = new Date(year,month - 1,day,hour,min,sec,0);
         this.§&!H§ = data.readUnsignedInt();
         this.§!!D§ = data.readUnsignedInt();
         this.§14§ = data.readUnsignedInt();
         this.§3F§ = data.readUnsignedShort();
         this.§"=§ = data.readUnsignedShort();
      }
      
      protected function §&+§(data:IDataInput) : void
      {
         var headerId:uint = 0;
         var dataSize:uint = 0;
         var extraBytes:ByteArray = null;
         if(this.§2!"§ == "utf-8")
         {
            this.§>!#§ = data.readUTFBytes(this.§3F§);
         }
         else
         {
            this.§>!#§ = data.readMultiByte(this.§3F§,this.§2!"§);
         }
         for(var bytesLeft:uint = this.§"=§; bytesLeft > 4; )
         {
            headerId = data.readUnsignedShort();
            dataSize = data.readUnsignedShort();
            if(dataSize > bytesLeft)
            {
               throw new Error("Parse error in file " + this.§>!#§ + ": Extra field data size too big.");
            }
            if(headerId === 56026 && dataSize === 4)
            {
               this.§?!d§ = data.readUnsignedInt();
               this.§<&§ = true;
            }
            else if(dataSize > 0)
            {
               extraBytes = new ByteArray();
               data.readBytes(extraBytes,0,dataSize);
               this.§@!Q§[headerId] = extraBytes;
            }
            bytesLeft -= dataSize + 4;
         }
         if(bytesLeft > 0)
         {
            data.readBytes(new ByteArray(),0,bytesLeft);
         }
      }
      
      function §<c§(data:IDataInput) : void
      {
         var flg:uint = 0;
         if(this.§!n§ === COMPRESSION_DEFLATED && !this.§;s§)
         {
            if(HAS_UNCOMPRESS || HAS_INFLATE)
            {
               data.readBytes(this.§1!"§,0,this.§!!D§);
            }
            else
            {
               if(!this.§<&§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§1!"§.writeByte(120);
               flg = ~this.§-!O§ << 6 & 192;
               flg += 31 - (120 << 8 | flg) % 31;
               this.§1!"§.writeByte(flg);
               data.readBytes(this.§1!"§,2,this.§!!D§);
               this.§1!"§.position = this.§1!"§.length;
               this.§1!"§.writeUnsignedInt(this.§?!d§);
            }
            this.§4?§ = true;
         }
         else
         {
            if(this.§!n§ != COMPRESSION_NONE)
            {
               throw new Error("Compression method " + this.§!n§ + " is not supported.");
            }
            data.readBytes(this.§1!"§,0,this.§!!D§);
            this.§4?§ = false;
         }
         this.§1!"§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§4?§)
         {
            if(this.§1!"§.length > 0)
            {
               this.§1!"§.position = 0;
               this.§14§ = this.§1!"§.length;
               if(HAS_INFLATE)
               {
                  this.§1!"§.deflate();
                  this.§!!D§ = this.§1!"§.length;
               }
               else if(HAS_UNCOMPRESS)
               {
                  this.§1!"§.compress.apply(this.§1!"§,["deflate"]);
                  this.§!!D§ = this.§1!"§.length;
               }
               else
               {
                  this.§1!"§.compress();
                  this.§!!D§ = this.§1!"§.length - 6;
               }
               this.§1!"§.position = 0;
               this.§4?§ = true;
            }
            else
            {
               this.§!!D§ = 0;
               this.§14§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§4?§ && this.§1!"§.length > 0)
         {
            this.§1!"§.position = 0;
            if(HAS_INFLATE)
            {
               this.§1!"§.inflate();
            }
            else if(HAS_UNCOMPRESS)
            {
               this.§1!"§.uncompress.apply(this.§1!"§,["deflate"]);
            }
            else
            {
               this.§1!"§.uncompress();
            }
            this.§1!"§.position = 0;
            this.§4?§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§>!#§ + "\n  date:" + this.§2!3§ + "\n  sizeCompressed:" + this.§!!D§ + "\n  sizeUncompressed:" + this.§14§ + "\n  versionHost:" + this.§>9§ + "\n  versionNumber:" + this.§!!`§ + "\n  compressionMethod:" + this.§!n§ + "\n  encrypted:" + this.§;s§ + "\n  hasDataDescriptor:" + this.§!v§ + "\n  hasCompressedPatchedData:" + this.§>!a§ + "\n  filenameEncoding:" + this.§2!"§ + "\n  crc32:" + this.§&!H§.toString(16) + "\n  adler32:" + this.§?!d§.toString(16);
      }
   }
}

package deng.fzip
{
   import deng.utils.ChecksumUtil;
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
       
      
      protected var _versionHost:int = 0;
      
      protected var _versionNumber:String = "2.0";
      
      protected var _compressionMethod:int = 8;
      
      protected var _encrypted:Boolean = false;
      
      protected var _implodeDictSize:int = -1;
      
      protected var _implodeShannonFanoTrees:int = -1;
      
      protected var _deflateSpeedOption:int = -1;
      
      protected var _hasDataDescriptor:Boolean = false;
      
      protected var _hasCompressedPatchedData:Boolean = false;
      
      protected var _date:Date;
      
      protected var _adler32:uint;
      
      protected var _hasAdler32:Boolean = false;
      
      protected var _sizeFilename:uint = 0;
      
      protected var _sizeExtra:uint = 0;
      
      protected var _filename:String = "";
      
      protected var _filenameEncoding:String;
      
      protected var _extraFields:Dictionary;
      
      protected var _comment:String = "";
      
      protected var _content:ByteArray;
      
      var _crc32:uint;
      
      var _sizeCompressed:uint = 0;
      
      var _sizeUncompressed:uint = 0;
      
      protected var isCompressed:Boolean = false;
      
      protected var parseFunc:Function;
      
      public function FZipFile(filenameEncoding:String = "utf-8")
      {
         this.parseFunc = this.parseFileHead;
         super();
         this._filenameEncoding = filenameEncoding;
         this._extraFields = new Dictionary();
         this._content = new ByteArray();
         this._content.endian = Endian.BIG_ENDIAN;
      }
      
      public function get date() : Date
      {
         return this._date;
      }
      
      public function set date(value:Date) : void
      {
         this._date = value != null ? value : new Date();
      }
      
      public function get filename() : String
      {
         return this._filename;
      }
      
      public function set filename(value:String) : void
      {
         this._filename = value;
      }
      
      function get hasDataDescriptor() : Boolean
      {
         return this._hasDataDescriptor;
      }
      
      public function get content() : ByteArray
      {
         if(this.isCompressed)
         {
            this.uncompress();
         }
         return this._content;
      }
      
      public function set content(data:ByteArray) : void
      {
         this.setContent(data);
      }
      
      public function setContent(data:ByteArray, doCompress:Boolean = true) : void
      {
         if(data != null && data.length > 0)
         {
            data.position = 0;
            data.readBytes(this._content,0,data.length);
            this._crc32 = ChecksumUtil.CRC32(this._content);
            this._hasAdler32 = false;
         }
         else
         {
            this._content.length = 0;
            this._content.position = 0;
            this.isCompressed = false;
         }
         if(doCompress)
         {
            this.compress();
         }
         else
         {
            this._sizeUncompressed = this._sizeCompressed = this._content.length;
         }
      }
      
      public function get versionNumber() : String
      {
         return this._versionNumber;
      }
      
      public function get sizeCompressed() : uint
      {
         return this._sizeCompressed;
      }
      
      public function get sizeUncompressed() : uint
      {
         return this._sizeUncompressed;
      }
      
      public function getContentAsString(recompress:Boolean = true, charset:String = "utf-8") : String
      {
         var str:String = null;
         if(this.isCompressed)
         {
            this.uncompress();
         }
         this._content.position = 0;
         if(charset == "utf-8")
         {
            str = this._content.readUTFBytes(this._content.bytesAvailable);
         }
         else
         {
            str = this._content.readMultiByte(this._content.bytesAvailable,charset);
         }
         this._content.position = 0;
         if(recompress)
         {
            this.compress();
         }
         return str;
      }
      
      public function setContentAsString(value:String, charset:String = "utf-8", doCompress:Boolean = true) : void
      {
         this._content.length = 0;
         this._content.position = 0;
         this.isCompressed = false;
         if(value != null && value.length > 0)
         {
            if(charset == "utf-8")
            {
               this._content.writeUTFBytes(value);
            }
            else
            {
               this._content.writeMultiByte(value,charset);
            }
            this._crc32 = ChecksumUtil.CRC32(this._content);
            this._hasAdler32 = false;
         }
         if(doCompress)
         {
            this.compress();
         }
         else
         {
            this._sizeUncompressed = this._sizeCompressed = this._content.length;
         }
      }
      
      public function serialize(stream:IDataOutput, includeAdler32:Boolean, centralDir:Boolean = false, centralDirOffset:uint = 0) : uint
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
            stream.writeShort(this._versionHost << 8 | 20);
         }
         else
         {
            stream.writeUnsignedInt(FZip.SIG_LOCAL_FILE_HEADER);
         }
         stream.writeShort(this._versionHost << 8 | 20);
         stream.writeShort(this._filenameEncoding == "utf-8" ? 2048 : 0);
         stream.writeShort(!!this.isCompressed ? int(COMPRESSION_DEFLATED) : int(COMPRESSION_NONE));
         var d:Date = this._date != null ? this._date : new Date();
         var msdosTime:uint = uint(d.getSeconds()) | uint(d.getMinutes()) << 5 | uint(d.getHours()) << 11;
         var msdosDate:uint = uint(d.getDate()) | uint(d.getMonth() + 1) << 5 | uint(d.getFullYear() - 1980) << 9;
         stream.writeShort(msdosTime);
         stream.writeShort(msdosDate);
         stream.writeUnsignedInt(this._crc32);
         stream.writeUnsignedInt(this._sizeCompressed);
         stream.writeUnsignedInt(this._sizeUncompressed);
         var ba:ByteArray = new ByteArray();
         ba.endian = Endian.LITTLE_ENDIAN;
         if(this._filenameEncoding == "utf-8")
         {
            ba.writeUTFBytes(this._filename);
         }
         else
         {
            ba.writeMultiByte(this._filename,this._filenameEncoding);
         }
         var filenameSize:uint = ba.position;
         for(headerId in this._extraFields)
         {
            extraBytes = this._extraFields[headerId] as ByteArray;
            if(extraBytes != null)
            {
               ba.writeShort(uint(headerId));
               ba.writeShort(uint(extraBytes.length));
               ba.writeBytes(extraBytes);
            }
         }
         if(includeAdler32)
         {
            if(!this._hasAdler32)
            {
               compressed = this.isCompressed;
               if(compressed)
               {
                  this.uncompress();
               }
               this._adler32 = ChecksumUtil.Adler32(this._content,0,this._content.length);
               this._hasAdler32 = true;
               if(compressed)
               {
                  this.compress();
               }
            }
            ba.writeShort(56026);
            ba.writeShort(4);
            ba.writeUnsignedInt(this._adler32);
         }
         var extrafieldsSize:uint = ba.position - filenameSize;
         if(centralDir && this._comment.length > 0)
         {
            if(this._filenameEncoding == "utf-8")
            {
               ba.writeUTFBytes(this._comment);
            }
            else
            {
               ba.writeMultiByte(this._comment,this._filenameEncoding);
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
         if(!centralDir && this._content.length > 0)
         {
            if(this.isCompressed)
            {
               if(HAS_UNCOMPRESS || HAS_INFLATE)
               {
                  fileSize = this._content.length;
                  stream.writeBytes(this._content,0,fileSize);
               }
               else
               {
                  fileSize = this._content.length - 6;
                  stream.writeBytes(this._content,2,fileSize);
               }
            }
            else
            {
               fileSize = this._content.length;
               stream.writeBytes(this._content,0,fileSize);
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
         while(stream.bytesAvailable && this.parseFunc(stream))
         {
         }
         return this.parseFunc === this.parseFileIdle;
      }
      
      protected function parseFileIdle(stream:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseFileHead(stream:IDataInput) : Boolean
      {
         if(stream.bytesAvailable >= 30)
         {
            this.parseHead(stream);
            if(this._sizeFilename + this._sizeExtra > 0)
            {
               this.parseFunc = this.parseFileHeadExt;
            }
            else
            {
               this.parseFunc = this.parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      protected function parseFileHeadExt(stream:IDataInput) : Boolean
      {
         if(stream.bytesAvailable >= this._sizeFilename + this._sizeExtra)
         {
            this.parseHeadExt(stream);
            this.parseFunc = this.parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseFileContent(stream:IDataInput) : Boolean
      {
         var continueParsing:Boolean = true;
         if(this._hasDataDescriptor)
         {
            this.parseFunc = this.parseFileIdle;
            continueParsing = false;
         }
         else if(this._sizeCompressed == 0)
         {
            this.parseFunc = this.parseFileIdle;
         }
         else if(stream.bytesAvailable >= this._sizeCompressed)
         {
            this.parseContent(stream);
            this.parseFunc = this.parseFileIdle;
         }
         else
         {
            continueParsing = false;
         }
         return continueParsing;
      }
      
      protected function parseHead(data:IDataInput) : void
      {
         var vSrc:uint = data.readUnsignedShort();
         this._versionHost = vSrc >> 8;
         this._versionNumber = Math.floor((vSrc & 255) / 10) + "." + (vSrc & 255) % 10;
         var flag:uint = data.readUnsignedShort();
         this._compressionMethod = data.readUnsignedShort();
         this._encrypted = (flag & 1) !== 0;
         this._hasDataDescriptor = (flag & 8) !== 0;
         this._hasCompressedPatchedData = (flag & 32) !== 0;
         if((flag & 800) !== 0)
         {
            this._filenameEncoding = "utf-8";
         }
         if(this._compressionMethod === COMPRESSION_IMPLODED)
         {
            this._implodeDictSize = (flag & 2) !== 0 ? 8192 : 4096;
            this._implodeShannonFanoTrees = (flag & 4) !== 0 ? 3 : 2;
         }
         else if(this._compressionMethod === COMPRESSION_DEFLATED)
         {
            this._deflateSpeedOption = (flag & 6) >> 1;
         }
         var msdosTime:uint = data.readUnsignedShort();
         var msdosDate:uint = data.readUnsignedShort();
         var sec:* = msdosTime & 31;
         var min:* = (msdosTime & 2016) >> 5;
         var hour:* = (msdosTime & 63488) >> 11;
         var day:* = msdosDate & 31;
         var month:* = (msdosDate & 480) >> 5;
         var year:int = ((msdosDate & 65024) >> 9) + 1980;
         this._date = new Date(year,month - 1,day,hour,min,sec,0);
         this._crc32 = data.readUnsignedInt();
         this._sizeCompressed = data.readUnsignedInt();
         this._sizeUncompressed = data.readUnsignedInt();
         this._sizeFilename = data.readUnsignedShort();
         this._sizeExtra = data.readUnsignedShort();
      }
      
      protected function parseHeadExt(data:IDataInput) : void
      {
         var headerId:uint = 0;
         var dataSize:uint = 0;
         var extraBytes:ByteArray = null;
         if(this._filenameEncoding == "utf-8")
         {
            this._filename = data.readUTFBytes(this._sizeFilename);
         }
         else
         {
            this._filename = data.readMultiByte(this._sizeFilename,this._filenameEncoding);
         }
         var bytesLeft:uint = this._sizeExtra;
         while(bytesLeft > 4)
         {
            headerId = data.readUnsignedShort();
            dataSize = data.readUnsignedShort();
            if(dataSize > bytesLeft)
            {
               throw new Error("Parse error in file " + this._filename + ": Extra field data size too big.");
            }
            if(headerId === 56026 && dataSize === 4)
            {
               this._adler32 = data.readUnsignedInt();
               this._hasAdler32 = true;
            }
            else if(dataSize > 0)
            {
               extraBytes = new ByteArray();
               data.readBytes(extraBytes,0,dataSize);
               this._extraFields[headerId] = extraBytes;
            }
            bytesLeft -= dataSize + 4;
         }
         if(bytesLeft > 0)
         {
            data.readBytes(new ByteArray(),0,bytesLeft);
         }
      }
      
      function parseContent(data:IDataInput) : void
      {
         var flg:uint = 0;
         if(this._compressionMethod === COMPRESSION_DEFLATED && !this._encrypted)
         {
            if(HAS_UNCOMPRESS || HAS_INFLATE)
            {
               data.readBytes(this._content,0,this._sizeCompressed);
            }
            else
            {
               if(!this._hasAdler32)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this._content.writeByte(120);
               flg = ~this._deflateSpeedOption << 6 & 192;
               flg += 31 - (120 << 8 | flg) % 31;
               this._content.writeByte(flg);
               data.readBytes(this._content,2,this._sizeCompressed);
               this._content.position = this._content.length;
               this._content.writeUnsignedInt(this._adler32);
            }
            this.isCompressed = true;
         }
         else
         {
            if(this._compressionMethod != COMPRESSION_NONE)
            {
               throw new Error("Compression method " + this._compressionMethod + " is not supported.");
            }
            data.readBytes(this._content,0,this._sizeCompressed);
            this.isCompressed = false;
         }
         this._content.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.isCompressed)
         {
            if(this._content.length > 0)
            {
               this._content.position = 0;
               this._sizeUncompressed = this._content.length;
               if(HAS_INFLATE)
               {
                  this._content.deflate();
                  this._sizeCompressed = this._content.length;
               }
               else if(HAS_UNCOMPRESS)
               {
                  this._content.compress.apply(this._content,["deflate"]);
                  this._sizeCompressed = this._content.length;
               }
               else
               {
                  this._content.compress();
                  this._sizeCompressed = this._content.length - 6;
               }
               this._content.position = 0;
               this.isCompressed = true;
            }
            else
            {
               this._sizeCompressed = 0;
               this._sizeUncompressed = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.isCompressed && this._content.length > 0)
         {
            this._content.position = 0;
            if(HAS_INFLATE)
            {
               this._content.inflate();
            }
            else if(HAS_UNCOMPRESS)
            {
               this._content.uncompress.apply(this._content,["deflate"]);
            }
            else
            {
               this._content.uncompress();
            }
            this._content.position = 0;
            this.isCompressed = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this._filename + "\n  date:" + this._date + "\n  sizeCompressed:" + this._sizeCompressed + "\n  sizeUncompressed:" + this._sizeUncompressed + "\n  versionHost:" + this._versionHost + "\n  versionNumber:" + this._versionNumber + "\n  compressionMethod:" + this._compressionMethod + "\n  encrypted:" + this._encrypted + "\n  hasDataDescriptor:" + this._hasDataDescriptor + "\n  hasCompressedPatchedData:" + this._hasCompressedPatchedData + "\n  filenameEncoding:" + this._filenameEncoding + "\n  crc32:" + this._crc32.toString(16) + "\n  adler32:" + this._adler32.toString(16);
      }
   }
}

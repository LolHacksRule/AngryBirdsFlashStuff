package §_-UC§
{
   import §_-XW§.§_-sV§;
   import flash.utils.*;
   
   public class §_-o§
   {
      
      public static const §do§:int = 0;
      
      public static const §_-MG§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §_-Fw§:int = 6;
      
      public static const §_-RL§:int = 7;
      
      public static const §_-Hg§:int = 8;
      
      public static const §_-4T§:int = 9;
      
      public static const §_-x2§:int = 10;
      
      protected static var §_-sN§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §_-ny§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §_-0Y§:int = 0;
      
      protected var §_-kc§:String = "2.0";
      
      protected var §_-78§:int = 8;
      
      protected var §_-Tl§:Boolean = false;
      
      protected var §_-oE§:int = -1;
      
      protected var §_-Ft§:int = -1;
      
      protected var §_-S3§:int = -1;
      
      protected var §_-Vq§:Boolean = false;
      
      protected var §_-TC§:Boolean = false;
      
      protected var §_-YS§:Date;
      
      protected var §_-rg§:uint;
      
      protected var §_-nA§:Boolean = false;
      
      protected var §_-WH§:uint = 0;
      
      protected var §_-7o§:uint = 0;
      
      protected var §_-WV§:String = "";
      
      protected var §_-hS§:String;
      
      protected var §_-Wk§:Dictionary;
      
      protected var §_-Zf§:String = "";
      
      protected var §_-SC§:ByteArray;
      
      var §_-YE§:uint;
      
      var §_-fV§:uint = 0;
      
      var §_-wE§:uint = 0;
      
      protected var §_-Cy§:Boolean = false;
      
      protected var §_-jN§:Function;
      
      public function §_-o§(param1:String = "utf-8")
      {
         this.§_-jN§ = this.§_-Ih§;
         super();
         this.§_-hS§ = param1;
         this.§_-Wk§ = new Dictionary();
         this.§_-SC§ = new ByteArray();
         this.§_-SC§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §function§() : Date
      {
         return this.§_-YS§;
      }
      
      public function set §function§(param1:Date) : void
      {
         this.§_-YS§ = param1 != null ? param1 : new Date();
      }
      
      public function get §_-3K§() : String
      {
         return this.§_-WV§;
      }
      
      public function set §_-3K§(param1:String) : void
      {
         this.§_-WV§ = param1;
      }
      
      function get §_-Yi§() : Boolean
      {
         return this.§_-Vq§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§_-Cy§)
         {
            this.uncompress();
         }
         return this.§_-SC§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§_-zk§(param1);
      }
      
      public function §_-zk§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§_-SC§,0,param1.length);
            this.§_-YE§ = §_-sV§.§_-mh§(this.§_-SC§);
            this.§_-nA§ = false;
         }
         else
         {
            this.§_-SC§.length = 0;
            this.§_-SC§.position = 0;
            this.§_-Cy§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§_-wE§ = this.§_-fV§ = this.§_-SC§.length;
         }
      }
      
      public function get §_-Kd§() : String
      {
         return this.§_-kc§;
      }
      
      public function get §_-D9§() : uint
      {
         return this.§_-fV§;
      }
      
      public function get §_-iA§() : uint
      {
         return this.§_-wE§;
      }
      
      public function §_-QP§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§_-Cy§)
         {
            this.uncompress();
         }
         this.§_-SC§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§_-SC§.readUTFBytes(this.§_-SC§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§_-SC§.readMultiByte(this.§_-SC§.bytesAvailable,param2);
         }
         this.§_-SC§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §_-td§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§_-SC§.length = 0;
         this.§_-SC§.position = 0;
         this.§_-Cy§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§_-SC§.writeUTFBytes(param1);
            }
            else
            {
               this.§_-SC§.writeMultiByte(param1,param2);
            }
            this.§_-YE§ = §_-sV§.§_-mh§(this.§_-SC§);
            this.§_-nA§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§_-wE§ = this.§_-fV§ = this.§_-SC§.length;
         }
      }
      
      public function §_-eo§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:ByteArray = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(§_-vw§.§_-VM§);
            param1.writeShort(this.§_-0Y§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§_-vw§.§_-9I§);
         }
         param1.writeShort(this.§_-0Y§ << 8 | 20);
         param1.writeShort(this.§_-hS§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§_-Cy§ ? int(§_-Hg§) : int(§do§));
         var _loc5_:Date = this.§_-YS§ != null ? this.§_-YS§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§_-YE§);
         param1.writeUnsignedInt(this.§_-fV§);
         param1.writeUnsignedInt(this.§_-wE§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§_-hS§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§_-WV§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§_-WV§,this.§_-hS§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§_-Wk§)
         {
            if((_loc15_ = this.§_-Wk§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§_-nA§)
            {
               if(_loc16_ = this.§_-Cy§)
               {
                  this.uncompress();
               }
               this.§_-rg§ = §_-sV§.§_-2K§(this.§_-SC§,0,this.§_-SC§.length);
               this.§_-nA§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§_-rg§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§_-Zf§.length > 0)
         {
            if(this.§_-hS§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§_-Zf§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§_-Zf§,this.§_-hS§);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:uint = 0;
         if(!param3 && this.§_-SC§.length > 0)
         {
            if(this.§_-Cy§)
            {
               if(§_-sN§ || §_-ny§)
               {
                  _loc13_ = this.§_-SC§.length;
                  param1.writeBytes(this.§_-SC§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§_-SC§.length - 6;
                  param1.writeBytes(this.§_-SC§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§_-SC§.length;
               param1.writeBytes(this.§_-SC§,0,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      function §_-Qq§(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && this.§_-jN§(param1))
         {
         }
         return this.§_-jN§ === this.§_-Kw§;
      }
      
      protected function §_-Kw§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-Ih§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§_-6O§(param1);
            if(this.§_-WH§ + this.§_-7o§ > 0)
            {
               this.§_-jN§ = this.§_-LH§;
            }
            else
            {
               this.§_-jN§ = this.§_-jx§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-LH§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§_-WH§ + this.§_-7o§)
         {
            this.§_-2b§(param1);
            this.§_-jN§ = this.§_-jx§;
            return true;
         }
         return false;
      }
      
      protected function §_-jx§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§_-Vq§)
         {
            this.§_-jN§ = this.§_-Kw§;
            _loc2_ = false;
         }
         else if(this.§_-fV§ == 0)
         {
            this.§_-jN§ = this.§_-Kw§;
         }
         else if(param1.bytesAvailable >= this.§_-fV§)
         {
            this.§_-QG§(param1);
            this.§_-jN§ = this.§_-Kw§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §_-6O§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§_-0Y§ = _loc2_ >> 8;
         this.§_-kc§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§_-78§ = param1.readUnsignedShort();
         this.§_-Tl§ = (_loc3_ & 1) !== 0;
         this.§_-Vq§ = (_loc3_ & 8) !== 0;
         this.§_-TC§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§_-hS§ = "utf-8";
         }
         if(this.§_-78§ === §_-Fw§)
         {
            this.§_-oE§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§_-Ft§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§_-78§ === §_-Hg§)
         {
            this.§_-S3§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§_-YS§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§_-YE§ = param1.readUnsignedInt();
         this.§_-fV§ = param1.readUnsignedInt();
         this.§_-wE§ = param1.readUnsignedInt();
         this.§_-WH§ = param1.readUnsignedShort();
         this.§_-7o§ = param1.readUnsignedShort();
      }
      
      protected function §_-2b§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§_-hS§ == "utf-8")
         {
            this.§_-WV§ = param1.readUTFBytes(this.§_-WH§);
         }
         else
         {
            this.§_-WV§ = param1.readMultiByte(this.§_-WH§,this.§_-hS§);
         }
         var _loc2_:uint = this.§_-7o§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§_-WV§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§_-rg§ = param1.readUnsignedInt();
               this.§_-nA§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§_-Wk§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §_-QG§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§_-78§ === §_-Hg§ && !this.§_-Tl§)
         {
            if(§_-sN§ || §_-ny§)
            {
               param1.readBytes(this.§_-SC§,0,this.§_-fV§);
            }
            else
            {
               if(!this.§_-nA§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§_-SC§.writeByte(120);
               _loc2_ = ~this.§_-S3§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§_-SC§.writeByte(_loc2_);
               param1.readBytes(this.§_-SC§,2,this.§_-fV§);
               this.§_-SC§.position = this.§_-SC§.length;
               this.§_-SC§.writeUnsignedInt(this.§_-rg§);
            }
            this.§_-Cy§ = true;
         }
         else
         {
            if(this.§_-78§ != §do§)
            {
               throw new Error("Compression method " + this.§_-78§ + " is not supported.");
            }
            param1.readBytes(this.§_-SC§,0,this.§_-fV§);
            this.§_-Cy§ = false;
         }
         this.§_-SC§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§_-Cy§)
         {
            if(this.§_-SC§.length > 0)
            {
               this.§_-SC§.position = 0;
               this.§_-wE§ = this.§_-SC§.length;
               if(§_-ny§)
               {
                  this.§_-SC§.deflate();
                  this.§_-fV§ = this.§_-SC§.length;
               }
               else if(§_-sN§)
               {
                  this.§_-SC§.compress.apply(this.§_-SC§,["deflate"]);
                  this.§_-fV§ = this.§_-SC§.length;
               }
               else
               {
                  this.§_-SC§.compress();
                  this.§_-fV§ = this.§_-SC§.length - 6;
               }
               this.§_-SC§.position = 0;
               this.§_-Cy§ = true;
            }
            else
            {
               this.§_-fV§ = 0;
               this.§_-wE§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§_-Cy§ && this.§_-SC§.length > 0)
         {
            this.§_-SC§.position = 0;
            if(§_-ny§)
            {
               this.§_-SC§.inflate();
            }
            else if(§_-sN§)
            {
               this.§_-SC§.uncompress.apply(this.§_-SC§,["deflate"]);
            }
            else
            {
               this.§_-SC§.uncompress();
            }
            this.§_-SC§.position = 0;
            this.§_-Cy§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§_-WV§ + "\n  date:" + this.§_-YS§ + "\n  sizeCompressed:" + this.§_-fV§ + "\n  sizeUncompressed:" + this.§_-wE§ + "\n  versionHost:" + this.§_-0Y§ + "\n  versionNumber:" + this.§_-kc§ + "\n  compressionMethod:" + this.§_-78§ + "\n  encrypted:" + this.§_-Tl§ + "\n  hasDataDescriptor:" + this.§_-Vq§ + "\n  hasCompressedPatchedData:" + this.§_-TC§ + "\n  filenameEncoding:" + this.§_-hS§ + "\n  crc32:" + this.§_-YE§.toString(16) + "\n  adler32:" + this.§_-rg§.toString(16);
      }
   }
}

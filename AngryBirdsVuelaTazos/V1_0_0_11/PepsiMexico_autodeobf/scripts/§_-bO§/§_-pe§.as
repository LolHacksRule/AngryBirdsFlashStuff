package §_-bO§
{
   import §_-Gi§.§_-pk§;
   import flash.utils.*;
   
   public class §_-pe§
   {
      
      public static const §_-3Z§:int = 0;
      
      public static const §_-9P§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §_-e2§:int = 6;
      
      public static const §_-kt§:int = 7;
      
      public static const §_-A§:int = 8;
      
      public static const §_-UJ§:int = 9;
      
      public static const §_-qg§:int = 10;
      
      protected static var §_-PH§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §_-g3§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §_-Pp§:int = 0;
      
      protected var §_-9i§:String = "2.0";
      
      protected var §_-Vj§:int = 8;
      
      protected var §_-LX§:Boolean = false;
      
      protected var §_-Sm§:int = -1;
      
      protected var §_-dM§:int = -1;
      
      protected var §_-oZ§:int = -1;
      
      protected var §_-HS§:Boolean = false;
      
      protected var §_-od§:Boolean = false;
      
      protected var §_-Ec§:Date;
      
      protected var §_-WD§:uint;
      
      protected var §_-cN§:Boolean = false;
      
      protected var §_-m8§:uint = 0;
      
      protected var §_-R5§:uint = 0;
      
      protected var §_-sj§:String = "";
      
      protected var §_-Dz§:String;
      
      protected var §_-H6§:Dictionary;
      
      protected var §_-LB§:String = "";
      
      protected var §_-oj§:ByteArray;
      
      var §_-jX§:uint;
      
      var §_-hX§:uint = 0;
      
      var §_-30§:uint = 0;
      
      protected var §_-7-§:Boolean = false;
      
      protected var §_-kq§:Function;
      
      public function §_-pe§(param1:String = "utf-8")
      {
         this.§_-kq§ = this.§_-8t§;
         super();
         this.§_-Dz§ = param1;
         this.§_-H6§ = new Dictionary();
         this.§_-oj§ = new ByteArray();
         this.§_-oj§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §_-4b§() : Date
      {
         return this.§_-Ec§;
      }
      
      public function set §_-4b§(param1:Date) : void
      {
         this.§_-Ec§ = param1 != null ? param1 : new Date();
      }
      
      public function get §_-sk§() : String
      {
         return this.§_-sj§;
      }
      
      public function set §_-sk§(param1:String) : void
      {
         this.§_-sj§ = param1;
      }
      
      function get §_-Eg§() : Boolean
      {
         return this.§_-HS§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§_-7-§)
         {
            this.uncompress();
         }
         return this.§_-oj§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§_-2y§(param1);
      }
      
      public function §_-2y§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§_-oj§,0,param1.length);
            this.§_-jX§ = §_-pk§.§_-OX§(this.§_-oj§);
            this.§_-cN§ = false;
         }
         else
         {
            this.§_-oj§.length = 0;
            this.§_-oj§.position = 0;
            this.§_-7-§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§_-30§ = this.§_-hX§ = this.§_-oj§.length;
         }
      }
      
      public function get §_-m0§() : String
      {
         return this.§_-9i§;
      }
      
      public function get §_-jt§() : uint
      {
         return this.§_-hX§;
      }
      
      public function get §_-UO§() : uint
      {
         return this.§_-30§;
      }
      
      public function §_-Xv§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§_-7-§)
         {
            this.uncompress();
         }
         this.§_-oj§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§_-oj§.readUTFBytes(this.§_-oj§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§_-oj§.readMultiByte(this.§_-oj§.bytesAvailable,param2);
         }
         this.§_-oj§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §_-Kt§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§_-oj§.length = 0;
         this.§_-oj§.position = 0;
         this.§_-7-§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§_-oj§.writeUTFBytes(param1);
            }
            else
            {
               this.§_-oj§.writeMultiByte(param1,param2);
            }
            this.§_-jX§ = §_-pk§.§_-OX§(this.§_-oj§);
            this.§_-cN§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§_-30§ = this.§_-hX§ = this.§_-oj§.length;
         }
      }
      
      public function §_-hc§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§_-Qq§.§_-1v§);
            param1.writeShort(this.§_-Pp§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§_-Qq§.§_-ga§);
         }
         param1.writeShort(this.§_-Pp§ << 8 | 20);
         param1.writeShort(this.§_-Dz§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§_-7-§ ? int(§_-A§) : int(§_-3Z§));
         var _loc5_:Date = this.§_-Ec§ != null ? this.§_-Ec§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§_-jX§);
         param1.writeUnsignedInt(this.§_-hX§);
         param1.writeUnsignedInt(this.§_-30§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§_-Dz§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§_-sj§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§_-sj§,this.§_-Dz§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§_-H6§)
         {
            if((_loc15_ = this.§_-H6§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§_-cN§)
            {
               if(_loc16_ = this.§_-7-§)
               {
                  this.uncompress();
               }
               this.§_-WD§ = §_-pk§.§_-H5§(this.§_-oj§,0,this.§_-oj§.length);
               this.§_-cN§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§_-WD§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§_-LB§.length > 0)
         {
            if(this.§_-Dz§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§_-LB§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§_-LB§,this.§_-Dz§);
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
         if(!param3 && this.§_-oj§.length > 0)
         {
            if(this.§_-7-§)
            {
               if(§_-PH§ || §_-g3§)
               {
                  _loc13_ = this.§_-oj§.length;
                  param1.writeBytes(this.§_-oj§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§_-oj§.length - 6;
                  param1.writeBytes(this.§_-oj§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§_-oj§.length;
               param1.writeBytes(this.§_-oj§,0,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && this.§_-kq§(param1))
         {
         }
         return this.§_-kq§ === this.§_-CR§;
      }
      
      protected function §_-CR§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-8t§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§_-Ll§(param1);
            if(this.§_-m8§ + this.§_-R5§ > 0)
            {
               this.§_-kq§ = this.§_-E5§;
            }
            else
            {
               this.§_-kq§ = this.§ get§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-E5§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§_-m8§ + this.§_-R5§)
         {
            this.§_-lJ§(param1);
            this.§_-kq§ = this.§ get§;
            return true;
         }
         return false;
      }
      
      protected function § get§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§_-HS§)
         {
            this.§_-kq§ = this.§_-CR§;
            _loc2_ = false;
         }
         else if(this.§_-hX§ == 0)
         {
            this.§_-kq§ = this.§_-CR§;
         }
         else if(param1.bytesAvailable >= this.§_-hX§)
         {
            this.§_-jv§(param1);
            this.§_-kq§ = this.§_-CR§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §_-Ll§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§_-Pp§ = _loc2_ >> 8;
         this.§_-9i§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§_-Vj§ = param1.readUnsignedShort();
         this.§_-LX§ = (_loc3_ & 1) !== 0;
         this.§_-HS§ = (_loc3_ & 8) !== 0;
         this.§_-od§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§_-Dz§ = "utf-8";
         }
         if(this.§_-Vj§ === §_-e2§)
         {
            this.§_-Sm§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§_-dM§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§_-Vj§ === §_-A§)
         {
            this.§_-oZ§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§_-Ec§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§_-jX§ = param1.readUnsignedInt();
         this.§_-hX§ = param1.readUnsignedInt();
         this.§_-30§ = param1.readUnsignedInt();
         this.§_-m8§ = param1.readUnsignedShort();
         this.§_-R5§ = param1.readUnsignedShort();
      }
      
      protected function §_-lJ§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§_-Dz§ == "utf-8")
         {
            this.§_-sj§ = param1.readUTFBytes(this.§_-m8§);
         }
         else
         {
            this.§_-sj§ = param1.readMultiByte(this.§_-m8§,this.§_-Dz§);
         }
         var _loc2_:uint = this.§_-R5§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§_-sj§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§_-WD§ = param1.readUnsignedInt();
               this.§_-cN§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§_-H6§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §_-jv§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§_-Vj§ === §_-A§ && !this.§_-LX§)
         {
            if(§_-PH§ || §_-g3§)
            {
               param1.readBytes(this.§_-oj§,0,this.§_-hX§);
            }
            else
            {
               if(!this.§_-cN§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§_-oj§.writeByte(120);
               _loc2_ = ~this.§_-oZ§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§_-oj§.writeByte(_loc2_);
               param1.readBytes(this.§_-oj§,2,this.§_-hX§);
               this.§_-oj§.position = this.§_-oj§.length;
               this.§_-oj§.writeUnsignedInt(this.§_-WD§);
            }
            this.§_-7-§ = true;
         }
         else
         {
            if(this.§_-Vj§ != §_-3Z§)
            {
               throw new Error("Compression method " + this.§_-Vj§ + " is not supported.");
            }
            param1.readBytes(this.§_-oj§,0,this.§_-hX§);
            this.§_-7-§ = false;
         }
         this.§_-oj§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§_-7-§)
         {
            if(this.§_-oj§.length > 0)
            {
               this.§_-oj§.position = 0;
               this.§_-30§ = this.§_-oj§.length;
               if(§_-g3§)
               {
                  this.§_-oj§.deflate();
                  this.§_-hX§ = this.§_-oj§.length;
               }
               else if(§_-PH§)
               {
                  this.§_-oj§.compress.apply(this.§_-oj§,["deflate"]);
                  this.§_-hX§ = this.§_-oj§.length;
               }
               else
               {
                  this.§_-oj§.compress();
                  this.§_-hX§ = this.§_-oj§.length - 6;
               }
               this.§_-oj§.position = 0;
               this.§_-7-§ = true;
            }
            else
            {
               this.§_-hX§ = 0;
               this.§_-30§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§_-7-§ && this.§_-oj§.length > 0)
         {
            this.§_-oj§.position = 0;
            if(§_-g3§)
            {
               this.§_-oj§.inflate();
            }
            else if(§_-PH§)
            {
               this.§_-oj§.uncompress.apply(this.§_-oj§,["deflate"]);
            }
            else
            {
               this.§_-oj§.uncompress();
            }
            this.§_-oj§.position = 0;
            this.§_-7-§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§_-sj§ + "\n  date:" + this.§_-Ec§ + "\n  sizeCompressed:" + this.§_-hX§ + "\n  sizeUncompressed:" + this.§_-30§ + "\n  versionHost:" + this.§_-Pp§ + "\n  versionNumber:" + this.§_-9i§ + "\n  compressionMethod:" + this.§_-Vj§ + "\n  encrypted:" + this.§_-LX§ + "\n  hasDataDescriptor:" + this.§_-HS§ + "\n  hasCompressedPatchedData:" + this.§_-od§ + "\n  filenameEncoding:" + this.§_-Dz§ + "\n  crc32:" + this.§_-jX§.toString(16) + "\n  adler32:" + this.§_-WD§.toString(16);
      }
   }
}

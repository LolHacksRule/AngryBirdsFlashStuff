package §_-of§
{
   import §_-o9§.§_-EX§;
   import flash.utils.*;
   
   public class §_-Ec§
   {
      
      public static const §_-m2§:int = 0;
      
      public static const §_-sP§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §_-0Ci§:int = 6;
      
      public static const §_-05p§:int = 7;
      
      public static const §_-io§:int = 8;
      
      public static const §_-sA§:int = 9;
      
      public static const §_-PM§:int = 10;
      
      protected static var §_-s-§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §_-Mw§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §_-93§:int = 0;
      
      protected var §_-JJ§:String = "2.0";
      
      protected var §_-WN§:int = 8;
      
      protected var §_-s6§:Boolean = false;
      
      protected var §_-HF§:int = -1;
      
      protected var §_-zW§:int = -1;
      
      protected var §_-7t§:int = -1;
      
      protected var §_-Lc§:Boolean = false;
      
      protected var §_-SG§:Boolean = false;
      
      protected var §_-9y§:Date;
      
      protected var §_-qp§:uint;
      
      protected var §_-050§:Boolean = false;
      
      protected var §_-nz§:uint = 0;
      
      protected var §_-NZ§:uint = 0;
      
      protected var §_-KK§:String = "";
      
      protected var §_-pi§:String;
      
      protected var §_-tV§:Dictionary;
      
      protected var §_-n7§:String = "";
      
      protected var §_-Q§:ByteArray;
      
      var §_-W0§:uint;
      
      var §_-h9§:uint = 0;
      
      var §_-vI§:uint = 0;
      
      protected var §_-gF§:Boolean = false;
      
      protected var §_-wa§:Function;
      
      public function §_-Ec§(param1:String = "utf-8")
      {
         this.§_-wa§ = this.§_-yB§;
         super();
         this.§_-pi§ = param1;
         this.§_-tV§ = new Dictionary();
         this.§_-Q§ = new ByteArray();
         this.§_-Q§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §_-Ki§() : Date
      {
         return this.§_-9y§;
      }
      
      public function set §_-Ki§(param1:Date) : void
      {
         this.§_-9y§ = param1 != null ? param1 : new Date();
      }
      
      public function get §_-UM§() : String
      {
         return this.§_-KK§;
      }
      
      public function set §_-UM§(param1:String) : void
      {
         this.§_-KK§ = param1;
      }
      
      function get §_-c-§() : Boolean
      {
         return this.§_-Lc§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§_-gF§)
         {
            this.uncompress();
         }
         return this.§_-Q§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§_-9n§(param1);
      }
      
      public function §_-9n§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§_-Q§,0,param1.length);
            this.§_-W0§ = §_-EX§.§_-sL§(this.§_-Q§);
            this.§_-050§ = false;
         }
         else
         {
            this.§_-Q§.length = 0;
            this.§_-Q§.position = 0;
            this.§_-gF§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§_-vI§ = this.§_-h9§ = this.§_-Q§.length;
         }
      }
      
      public function get §_-RW§() : String
      {
         return this.§_-JJ§;
      }
      
      public function get §_-47§() : uint
      {
         return this.§_-h9§;
      }
      
      public function get §_-j1§() : uint
      {
         return this.§_-vI§;
      }
      
      public function §_-08J§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§_-gF§)
         {
            this.uncompress();
         }
         this.§_-Q§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§_-Q§.readUTFBytes(this.§_-Q§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§_-Q§.readMultiByte(this.§_-Q§.bytesAvailable,param2);
         }
         this.§_-Q§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §_-TB§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§_-Q§.length = 0;
         this.§_-Q§.position = 0;
         this.§_-gF§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§_-Q§.writeUTFBytes(param1);
            }
            else
            {
               this.§_-Q§.writeMultiByte(param1,param2);
            }
            this.§_-W0§ = §_-EX§.§_-sL§(this.§_-Q§);
            this.§_-050§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§_-vI§ = this.§_-h9§ = this.§_-Q§.length;
         }
      }
      
      public function §_-Bs§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§_-IC§.§_-E§);
            param1.writeShort(this.§_-93§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§_-IC§.§case §);
         }
         param1.writeShort(this.§_-93§ << 8 | 20);
         param1.writeShort(this.§_-pi§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§_-gF§ ? int(§_-io§) : int(§_-m2§));
         var _loc5_:Date = this.§_-9y§ != null ? this.§_-9y§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§_-W0§);
         param1.writeUnsignedInt(this.§_-h9§);
         param1.writeUnsignedInt(this.§_-vI§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§_-pi§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§_-KK§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§_-KK§,this.§_-pi§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§_-tV§)
         {
            if((_loc15_ = this.§_-tV§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§_-050§)
            {
               if(_loc16_ = this.§_-gF§)
               {
                  this.uncompress();
               }
               this.§_-qp§ = §_-EX§.§_-yZ§(this.§_-Q§,0,this.§_-Q§.length);
               this.§_-050§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§_-qp§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§_-n7§.length > 0)
         {
            if(this.§_-pi§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§_-n7§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§_-n7§,this.§_-pi§);
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
         if(!param3 && this.§_-Q§.length > 0)
         {
            if(this.§_-gF§)
            {
               if(§_-s-§ || §_-Mw§)
               {
                  _loc13_ = this.§_-Q§.length;
                  param1.writeBytes(this.§_-Q§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§_-Q§.length - 6;
                  param1.writeBytes(this.§_-Q§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§_-Q§.length;
               param1.writeBytes(this.§_-Q§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§_-wa§(param1))
         {
         }
         return this.§_-wa§ === this.§_-W9§;
      }
      
      protected function §_-W9§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-yB§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§_-TA§(param1);
            if(this.§_-nz§ + this.§_-NZ§ > 0)
            {
               this.§_-wa§ = this.§_-zf§;
            }
            else
            {
               this.§_-wa§ = this.§_-hk§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-zf§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§_-nz§ + this.§_-NZ§)
         {
            this.§_-DH§(param1);
            this.§_-wa§ = this.§_-hk§;
            return true;
         }
         return false;
      }
      
      protected function §_-hk§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§_-Lc§)
         {
            this.§_-wa§ = this.§_-W9§;
            _loc2_ = false;
         }
         else if(this.§_-h9§ == 0)
         {
            this.§_-wa§ = this.§_-W9§;
         }
         else if(param1.bytesAvailable >= this.§_-h9§)
         {
            this.§_-4l§(param1);
            this.§_-wa§ = this.§_-W9§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §_-TA§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§_-93§ = _loc2_ >> 8;
         this.§_-JJ§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§_-WN§ = param1.readUnsignedShort();
         this.§_-s6§ = (_loc3_ & 1) !== 0;
         this.§_-Lc§ = (_loc3_ & 8) !== 0;
         this.§_-SG§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§_-pi§ = "utf-8";
         }
         if(this.§_-WN§ === §_-0Ci§)
         {
            this.§_-HF§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§_-zW§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§_-WN§ === §_-io§)
         {
            this.§_-7t§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§_-9y§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§_-W0§ = param1.readUnsignedInt();
         this.§_-h9§ = param1.readUnsignedInt();
         this.§_-vI§ = param1.readUnsignedInt();
         this.§_-nz§ = param1.readUnsignedShort();
         this.§_-NZ§ = param1.readUnsignedShort();
      }
      
      protected function §_-DH§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§_-pi§ == "utf-8")
         {
            this.§_-KK§ = param1.readUTFBytes(this.§_-nz§);
         }
         else
         {
            this.§_-KK§ = param1.readMultiByte(this.§_-nz§,this.§_-pi§);
         }
         var _loc2_:uint = this.§_-NZ§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§_-KK§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§_-qp§ = param1.readUnsignedInt();
               this.§_-050§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§_-tV§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §_-4l§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§_-WN§ === §_-io§ && !this.§_-s6§)
         {
            if(§_-s-§ || §_-Mw§)
            {
               param1.readBytes(this.§_-Q§,0,this.§_-h9§);
            }
            else
            {
               if(!this.§_-050§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§_-Q§.writeByte(120);
               _loc2_ = ~this.§_-7t§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§_-Q§.writeByte(_loc2_);
               param1.readBytes(this.§_-Q§,2,this.§_-h9§);
               this.§_-Q§.position = this.§_-Q§.length;
               this.§_-Q§.writeUnsignedInt(this.§_-qp§);
            }
            this.§_-gF§ = true;
         }
         else
         {
            if(this.§_-WN§ != §_-m2§)
            {
               throw new Error("Compression method " + this.§_-WN§ + " is not supported.");
            }
            param1.readBytes(this.§_-Q§,0,this.§_-h9§);
            this.§_-gF§ = false;
         }
         this.§_-Q§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§_-gF§)
         {
            if(this.§_-Q§.length > 0)
            {
               this.§_-Q§.position = 0;
               this.§_-vI§ = this.§_-Q§.length;
               if(§_-Mw§)
               {
                  this.§_-Q§.deflate();
                  this.§_-h9§ = this.§_-Q§.length;
               }
               else if(§_-s-§)
               {
                  this.§_-Q§.compress.apply(this.§_-Q§,["deflate"]);
                  this.§_-h9§ = this.§_-Q§.length;
               }
               else
               {
                  this.§_-Q§.compress();
                  this.§_-h9§ = this.§_-Q§.length - 6;
               }
               this.§_-Q§.position = 0;
               this.§_-gF§ = true;
            }
            else
            {
               this.§_-h9§ = 0;
               this.§_-vI§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§_-gF§ && this.§_-Q§.length > 0)
         {
            this.§_-Q§.position = 0;
            if(§_-Mw§)
            {
               this.§_-Q§.inflate();
            }
            else if(§_-s-§)
            {
               this.§_-Q§.uncompress.apply(this.§_-Q§,["deflate"]);
            }
            else
            {
               this.§_-Q§.uncompress();
            }
            this.§_-Q§.position = 0;
            this.§_-gF§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§_-KK§ + "\n  date:" + this.§_-9y§ + "\n  sizeCompressed:" + this.§_-h9§ + "\n  sizeUncompressed:" + this.§_-vI§ + "\n  versionHost:" + this.§_-93§ + "\n  versionNumber:" + this.§_-JJ§ + "\n  compressionMethod:" + this.§_-WN§ + "\n  encrypted:" + this.§_-s6§ + "\n  hasDataDescriptor:" + this.§_-Lc§ + "\n  hasCompressedPatchedData:" + this.§_-SG§ + "\n  filenameEncoding:" + this.§_-pi§ + "\n  crc32:" + this.§_-W0§.toString(16) + "\n  adler32:" + this.§_-qp§.toString(16);
      }
   }
}

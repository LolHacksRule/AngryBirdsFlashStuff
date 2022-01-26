package §_-AI§
{
   import §_-D-§.§_-Kr§;
   import flash.utils.*;
   
   public class §_-Ul§
   {
      
      public static const §_-lj§:int = 0;
      
      public static const §_-lQ§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §_-lF§:int = 6;
      
      public static const §_-Fm§:int = 7;
      
      public static const §_-Mi§:int = 8;
      
      public static const §_-de§:int = 9;
      
      public static const §_-Ym§:int = 10;
      
      protected static var §_-xP§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §_-cG§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §_-lK§:int = 0;
      
      protected var §_-fl§:String = "2.0";
      
      protected var §_-ZP§:int = 8;
      
      protected var §_-CY§:Boolean = false;
      
      protected var §_-uC§:int = -1;
      
      protected var §_-oP§:int = -1;
      
      protected var §_-e4§:int = -1;
      
      protected var §_-Fl§:Boolean = false;
      
      protected var §_-XY§:Boolean = false;
      
      protected var §_-5P§:Date;
      
      protected var §_-W3§:uint;
      
      protected var §_-9Y§:Boolean = false;
      
      protected var §_-ua§:uint = 0;
      
      protected var §_-ac§:uint = 0;
      
      protected var §_-sn§:String = "";
      
      protected var §_-35§:String;
      
      protected var §_-pr§:Dictionary;
      
      protected var §_-F2§:String = "";
      
      protected var §_-TA§:ByteArray;
      
      var §_-Mx§:uint;
      
      var §_-YW§:uint = 0;
      
      var §_-Bf§:uint = 0;
      
      protected var §_-UT§:Boolean = false;
      
      protected var §_-bE§:Function;
      
      public function §_-Ul§(param1:String = "utf-8")
      {
         this.§_-bE§ = this.§_-HV§;
         super();
         this.§_-35§ = param1;
         this.§_-pr§ = new Dictionary();
         this.§_-TA§ = new ByteArray();
         this.§_-TA§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §_-Tf§() : Date
      {
         return this.§_-5P§;
      }
      
      public function set §_-Tf§(param1:Date) : void
      {
         this.§_-5P§ = param1 != null ? param1 : new Date();
      }
      
      public function get §_-XE§() : String
      {
         return this.§_-sn§;
      }
      
      public function set §_-XE§(param1:String) : void
      {
         this.§_-sn§ = param1;
      }
      
      function get §_-VH§() : Boolean
      {
         return this.§_-Fl§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§_-UT§)
         {
            this.uncompress();
         }
         return this.§_-TA§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§_-Ib§(param1);
      }
      
      public function §_-Ib§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§_-TA§,0,param1.length);
            this.§_-Mx§ = §_-Kr§.§_-Rq§(this.§_-TA§);
            this.§_-9Y§ = false;
         }
         else
         {
            this.§_-TA§.length = 0;
            this.§_-TA§.position = 0;
            this.§_-UT§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§_-Bf§ = this.§_-YW§ = this.§_-TA§.length;
         }
      }
      
      public function get §_-1z§() : String
      {
         return this.§_-fl§;
      }
      
      public function get §_-JC§() : uint
      {
         return this.§_-YW§;
      }
      
      public function get §_-sc§() : uint
      {
         return this.§_-Bf§;
      }
      
      public function §_-P6§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§_-UT§)
         {
            this.uncompress();
         }
         this.§_-TA§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§_-TA§.readUTFBytes(this.§_-TA§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§_-TA§.readMultiByte(this.§_-TA§.bytesAvailable,param2);
         }
         this.§_-TA§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §_-ix§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§_-TA§.length = 0;
         this.§_-TA§.position = 0;
         this.§_-UT§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§_-TA§.writeUTFBytes(param1);
            }
            else
            {
               this.§_-TA§.writeMultiByte(param1,param2);
            }
            this.§_-Mx§ = §_-Kr§.§_-Rq§(this.§_-TA§);
            this.§_-9Y§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§_-Bf§ = this.§_-YW§ = this.§_-TA§.length;
         }
      }
      
      public function §_-rU§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§_-4Z§.§_-Sy§);
            param1.writeShort(this.§_-lK§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§_-4Z§.§_-2G§);
         }
         param1.writeShort(this.§_-lK§ << 8 | 20);
         param1.writeShort(this.§_-35§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§_-UT§ ? int(§_-Mi§) : int(§_-lj§));
         var _loc5_:Date = this.§_-5P§ != null ? this.§_-5P§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§_-Mx§);
         param1.writeUnsignedInt(this.§_-YW§);
         param1.writeUnsignedInt(this.§_-Bf§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§_-35§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§_-sn§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§_-sn§,this.§_-35§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§_-pr§)
         {
            if((_loc15_ = this.§_-pr§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§_-9Y§)
            {
               if(_loc16_ = this.§_-UT§)
               {
                  this.uncompress();
               }
               this.§_-W3§ = §_-Kr§.§_-Zv§(this.§_-TA§,0,this.§_-TA§.length);
               this.§_-9Y§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§_-W3§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§_-F2§.length > 0)
         {
            if(this.§_-35§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§_-F2§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§_-F2§,this.§_-35§);
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
         if(!param3 && this.§_-TA§.length > 0)
         {
            if(this.§_-UT§)
            {
               if(§_-xP§ || §_-cG§)
               {
                  _loc13_ = this.§_-TA§.length;
                  param1.writeBytes(this.§_-TA§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§_-TA§.length - 6;
                  param1.writeBytes(this.§_-TA§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§_-TA§.length;
               param1.writeBytes(this.§_-TA§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§_-bE§(param1))
         {
         }
         return this.§_-bE§ === this.§_-E6§;
      }
      
      protected function §_-E6§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-HV§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§_-6X§(param1);
            if(this.§_-ua§ + this.§_-ac§ > 0)
            {
               this.§_-bE§ = this.§_-La§;
            }
            else
            {
               this.§_-bE§ = this.§_-dq§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-La§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§_-ua§ + this.§_-ac§)
         {
            this.§_-8Z§(param1);
            this.§_-bE§ = this.§_-dq§;
            return true;
         }
         return false;
      }
      
      protected function §_-dq§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§_-Fl§)
         {
            this.§_-bE§ = this.§_-E6§;
            _loc2_ = false;
         }
         else if(this.§_-YW§ == 0)
         {
            this.§_-bE§ = this.§_-E6§;
         }
         else if(param1.bytesAvailable >= this.§_-YW§)
         {
            this.§_-HX§(param1);
            this.§_-bE§ = this.§_-E6§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §_-6X§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§_-lK§ = _loc2_ >> 8;
         this.§_-fl§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§_-ZP§ = param1.readUnsignedShort();
         this.§_-CY§ = (_loc3_ & 1) !== 0;
         this.§_-Fl§ = (_loc3_ & 8) !== 0;
         this.§_-XY§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§_-35§ = "utf-8";
         }
         if(this.§_-ZP§ === §_-lF§)
         {
            this.§_-uC§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§_-oP§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§_-ZP§ === §_-Mi§)
         {
            this.§_-e4§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§_-5P§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§_-Mx§ = param1.readUnsignedInt();
         this.§_-YW§ = param1.readUnsignedInt();
         this.§_-Bf§ = param1.readUnsignedInt();
         this.§_-ua§ = param1.readUnsignedShort();
         this.§_-ac§ = param1.readUnsignedShort();
      }
      
      protected function §_-8Z§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§_-35§ == "utf-8")
         {
            this.§_-sn§ = param1.readUTFBytes(this.§_-ua§);
         }
         else
         {
            this.§_-sn§ = param1.readMultiByte(this.§_-ua§,this.§_-35§);
         }
         var _loc2_:uint = this.§_-ac§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§_-sn§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§_-W3§ = param1.readUnsignedInt();
               this.§_-9Y§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§_-pr§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §_-HX§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§_-ZP§ === §_-Mi§ && !this.§_-CY§)
         {
            if(§_-xP§ || §_-cG§)
            {
               param1.readBytes(this.§_-TA§,0,this.§_-YW§);
            }
            else
            {
               if(!this.§_-9Y§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§_-TA§.writeByte(120);
               _loc2_ = ~this.§_-e4§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§_-TA§.writeByte(_loc2_);
               param1.readBytes(this.§_-TA§,2,this.§_-YW§);
               this.§_-TA§.position = this.§_-TA§.length;
               this.§_-TA§.writeUnsignedInt(this.§_-W3§);
            }
            this.§_-UT§ = true;
         }
         else
         {
            if(this.§_-ZP§ != §_-lj§)
            {
               throw new Error("Compression method " + this.§_-ZP§ + " is not supported.");
            }
            param1.readBytes(this.§_-TA§,0,this.§_-YW§);
            this.§_-UT§ = false;
         }
         this.§_-TA§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§_-UT§)
         {
            if(this.§_-TA§.length > 0)
            {
               this.§_-TA§.position = 0;
               this.§_-Bf§ = this.§_-TA§.length;
               if(§_-cG§)
               {
                  this.§_-TA§.deflate();
                  this.§_-YW§ = this.§_-TA§.length;
               }
               else if(§_-xP§)
               {
                  this.§_-TA§.compress.apply(this.§_-TA§,["deflate"]);
                  this.§_-YW§ = this.§_-TA§.length;
               }
               else
               {
                  this.§_-TA§.compress();
                  this.§_-YW§ = this.§_-TA§.length - 6;
               }
               this.§_-TA§.position = 0;
               this.§_-UT§ = true;
            }
            else
            {
               this.§_-YW§ = 0;
               this.§_-Bf§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§_-UT§ && this.§_-TA§.length > 0)
         {
            this.§_-TA§.position = 0;
            if(§_-cG§)
            {
               this.§_-TA§.inflate();
            }
            else if(§_-xP§)
            {
               this.§_-TA§.uncompress.apply(this.§_-TA§,["deflate"]);
            }
            else
            {
               this.§_-TA§.uncompress();
            }
            this.§_-TA§.position = 0;
            this.§_-UT§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§_-sn§ + "\n  date:" + this.§_-5P§ + "\n  sizeCompressed:" + this.§_-YW§ + "\n  sizeUncompressed:" + this.§_-Bf§ + "\n  versionHost:" + this.§_-lK§ + "\n  versionNumber:" + this.§_-fl§ + "\n  compressionMethod:" + this.§_-ZP§ + "\n  encrypted:" + this.§_-CY§ + "\n  hasDataDescriptor:" + this.§_-Fl§ + "\n  hasCompressedPatchedData:" + this.§_-XY§ + "\n  filenameEncoding:" + this.§_-35§ + "\n  crc32:" + this.§_-Mx§.toString(16) + "\n  adler32:" + this.§_-W3§.toString(16);
      }
   }
}

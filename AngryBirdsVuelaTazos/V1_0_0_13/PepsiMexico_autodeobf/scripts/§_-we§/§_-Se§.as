package §_-we§
{
   import §_-xe§.§_-hX§;
   import flash.utils.*;
   
   public class §_-Se§
   {
      
      public static const §_-Ye§:int = 0;
      
      public static const §_-DN§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §_-t0§:int = 6;
      
      public static const §_-CJ§:int = 7;
      
      public static const §_-nX§:int = 8;
      
      public static const §_-7-§:int = 9;
      
      public static const §_-nI§:int = 10;
      
      protected static var §_-pc§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §_-D0§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §_-NX§:int = 0;
      
      protected var §_-z6§:String = "2.0";
      
      protected var §_-Sn§:int = 8;
      
      protected var §_-Xq§:Boolean = false;
      
      protected var §_-Yf§:int = -1;
      
      protected var §_-4L§:int = -1;
      
      protected var §_-1m§:int = -1;
      
      protected var §_-M9§:Boolean = false;
      
      protected var §_-CX§:Boolean = false;
      
      protected var §_-RN§:Date;
      
      protected var §_-Ww§:uint;
      
      protected var § for§:Boolean = false;
      
      protected var §_-dU§:uint = 0;
      
      protected var §_-LG§:uint = 0;
      
      protected var §_-4B§:String = "";
      
      protected var §_-EY§:String;
      
      protected var §_-1d§:Dictionary;
      
      protected var §_-Ol§:String = "";
      
      protected var §_-4z§:ByteArray;
      
      var §_-cO§:uint;
      
      var §_-yG§:uint = 0;
      
      var §_-AE§:uint = 0;
      
      protected var §_-VU§:Boolean = false;
      
      protected var §_-G0§:Function;
      
      public function §_-Se§(param1:String = "utf-8")
      {
         this.§_-G0§ = this.§_-k3§;
         super();
         this.§_-EY§ = param1;
         this.§_-1d§ = new Dictionary();
         this.§_-4z§ = new ByteArray();
         this.§_-4z§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §_-to§() : Date
      {
         return this.§_-RN§;
      }
      
      public function set §_-to§(param1:Date) : void
      {
         this.§_-RN§ = param1 != null ? param1 : new Date();
      }
      
      public function get §_-MM§() : String
      {
         return this.§_-4B§;
      }
      
      public function set §_-MM§(param1:String) : void
      {
         this.§_-4B§ = param1;
      }
      
      function get §_-I2§() : Boolean
      {
         return this.§_-M9§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§_-VU§)
         {
            this.uncompress();
         }
         return this.§_-4z§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§_-TC§(param1);
      }
      
      public function §_-TC§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§_-4z§,0,param1.length);
            this.§_-cO§ = §_-hX§.§_-Vp§(this.§_-4z§);
            this.§ for§ = false;
         }
         else
         {
            this.§_-4z§.length = 0;
            this.§_-4z§.position = 0;
            this.§_-VU§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§_-AE§ = this.§_-yG§ = this.§_-4z§.length;
         }
      }
      
      public function get §_-5s§() : String
      {
         return this.§_-z6§;
      }
      
      public function get §_-P8§() : uint
      {
         return this.§_-yG§;
      }
      
      public function get §_-ap§() : uint
      {
         return this.§_-AE§;
      }
      
      public function §_-RQ§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§_-VU§)
         {
            this.uncompress();
         }
         this.§_-4z§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§_-4z§.readUTFBytes(this.§_-4z§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§_-4z§.readMultiByte(this.§_-4z§.bytesAvailable,param2);
         }
         this.§_-4z§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §_-0S§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§_-4z§.length = 0;
         this.§_-4z§.position = 0;
         this.§_-VU§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§_-4z§.writeUTFBytes(param1);
            }
            else
            {
               this.§_-4z§.writeMultiByte(param1,param2);
            }
            this.§_-cO§ = §_-hX§.§_-Vp§(this.§_-4z§);
            this.§ for§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§_-AE§ = this.§_-yG§ = this.§_-4z§.length;
         }
      }
      
      public function §_-Pv§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§_-Sy§.§_-bC§);
            param1.writeShort(this.§_-NX§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§_-Sy§.§class§);
         }
         param1.writeShort(this.§_-NX§ << 8 | 20);
         param1.writeShort(this.§_-EY§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§_-VU§ ? int(§_-nX§) : int(§_-Ye§));
         var _loc5_:Date = this.§_-RN§ != null ? this.§_-RN§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§_-cO§);
         param1.writeUnsignedInt(this.§_-yG§);
         param1.writeUnsignedInt(this.§_-AE§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§_-EY§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§_-4B§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§_-4B§,this.§_-EY§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§_-1d§)
         {
            if((_loc15_ = this.§_-1d§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§ for§)
            {
               if(_loc16_ = this.§_-VU§)
               {
                  this.uncompress();
               }
               this.§_-Ww§ = §_-hX§.§_-J0§(this.§_-4z§,0,this.§_-4z§.length);
               this.§ for§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§_-Ww§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§_-Ol§.length > 0)
         {
            if(this.§_-EY§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§_-Ol§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§_-Ol§,this.§_-EY§);
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
         if(!param3 && this.§_-4z§.length > 0)
         {
            if(this.§_-VU§)
            {
               if(§_-pc§ || §_-D0§)
               {
                  _loc13_ = this.§_-4z§.length;
                  param1.writeBytes(this.§_-4z§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§_-4z§.length - 6;
                  param1.writeBytes(this.§_-4z§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§_-4z§.length;
               param1.writeBytes(this.§_-4z§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§_-G0§(param1))
         {
         }
         return this.§_-G0§ === this.§_-SZ§;
      }
      
      protected function §_-SZ§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-k3§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§_-IV§(param1);
            if(this.§_-dU§ + this.§_-LG§ > 0)
            {
               this.§_-G0§ = this.§_-UY§;
            }
            else
            {
               this.§_-G0§ = this.§_-Iv§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-UY§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§_-dU§ + this.§_-LG§)
         {
            this.§_-15§(param1);
            this.§_-G0§ = this.§_-Iv§;
            return true;
         }
         return false;
      }
      
      protected function §_-Iv§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§_-M9§)
         {
            this.§_-G0§ = this.§_-SZ§;
            _loc2_ = false;
         }
         else if(this.§_-yG§ == 0)
         {
            this.§_-G0§ = this.§_-SZ§;
         }
         else if(param1.bytesAvailable >= this.§_-yG§)
         {
            this.§_-vV§(param1);
            this.§_-G0§ = this.§_-SZ§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §_-IV§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§_-NX§ = _loc2_ >> 8;
         this.§_-z6§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§_-Sn§ = param1.readUnsignedShort();
         this.§_-Xq§ = (_loc3_ & 1) !== 0;
         this.§_-M9§ = (_loc3_ & 8) !== 0;
         this.§_-CX§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§_-EY§ = "utf-8";
         }
         if(this.§_-Sn§ === §_-t0§)
         {
            this.§_-Yf§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§_-4L§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§_-Sn§ === §_-nX§)
         {
            this.§_-1m§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§_-RN§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§_-cO§ = param1.readUnsignedInt();
         this.§_-yG§ = param1.readUnsignedInt();
         this.§_-AE§ = param1.readUnsignedInt();
         this.§_-dU§ = param1.readUnsignedShort();
         this.§_-LG§ = param1.readUnsignedShort();
      }
      
      protected function §_-15§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§_-EY§ == "utf-8")
         {
            this.§_-4B§ = param1.readUTFBytes(this.§_-dU§);
         }
         else
         {
            this.§_-4B§ = param1.readMultiByte(this.§_-dU§,this.§_-EY§);
         }
         var _loc2_:uint = this.§_-LG§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§_-4B§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§_-Ww§ = param1.readUnsignedInt();
               this.§ for§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§_-1d§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §_-vV§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§_-Sn§ === §_-nX§ && !this.§_-Xq§)
         {
            if(§_-pc§ || §_-D0§)
            {
               param1.readBytes(this.§_-4z§,0,this.§_-yG§);
            }
            else
            {
               if(!this.§ for§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§_-4z§.writeByte(120);
               _loc2_ = ~this.§_-1m§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§_-4z§.writeByte(_loc2_);
               param1.readBytes(this.§_-4z§,2,this.§_-yG§);
               this.§_-4z§.position = this.§_-4z§.length;
               this.§_-4z§.writeUnsignedInt(this.§_-Ww§);
            }
            this.§_-VU§ = true;
         }
         else
         {
            if(this.§_-Sn§ != §_-Ye§)
            {
               throw new Error("Compression method " + this.§_-Sn§ + " is not supported.");
            }
            param1.readBytes(this.§_-4z§,0,this.§_-yG§);
            this.§_-VU§ = false;
         }
         this.§_-4z§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§_-VU§)
         {
            if(this.§_-4z§.length > 0)
            {
               this.§_-4z§.position = 0;
               this.§_-AE§ = this.§_-4z§.length;
               if(§_-D0§)
               {
                  this.§_-4z§.deflate();
                  this.§_-yG§ = this.§_-4z§.length;
               }
               else if(§_-pc§)
               {
                  this.§_-4z§.compress.apply(this.§_-4z§,["deflate"]);
                  this.§_-yG§ = this.§_-4z§.length;
               }
               else
               {
                  this.§_-4z§.compress();
                  this.§_-yG§ = this.§_-4z§.length - 6;
               }
               this.§_-4z§.position = 0;
               this.§_-VU§ = true;
            }
            else
            {
               this.§_-yG§ = 0;
               this.§_-AE§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§_-VU§ && this.§_-4z§.length > 0)
         {
            this.§_-4z§.position = 0;
            if(§_-D0§)
            {
               this.§_-4z§.inflate();
            }
            else if(§_-pc§)
            {
               this.§_-4z§.uncompress.apply(this.§_-4z§,["deflate"]);
            }
            else
            {
               this.§_-4z§.uncompress();
            }
            this.§_-4z§.position = 0;
            this.§_-VU§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§_-4B§ + "\n  date:" + this.§_-RN§ + "\n  sizeCompressed:" + this.§_-yG§ + "\n  sizeUncompressed:" + this.§_-AE§ + "\n  versionHost:" + this.§_-NX§ + "\n  versionNumber:" + this.§_-z6§ + "\n  compressionMethod:" + this.§_-Sn§ + "\n  encrypted:" + this.§_-Xq§ + "\n  hasDataDescriptor:" + this.§_-M9§ + "\n  hasCompressedPatchedData:" + this.§_-CX§ + "\n  filenameEncoding:" + this.§_-EY§ + "\n  crc32:" + this.§_-cO§.toString(16) + "\n  adler32:" + this.§_-Ww§.toString(16);
      }
   }
}

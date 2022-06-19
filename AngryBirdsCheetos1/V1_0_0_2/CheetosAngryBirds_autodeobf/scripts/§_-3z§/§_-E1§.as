package §_-3z§
{
   import §_-JT§.§_-00E§;
   import flash.utils.*;
   
   public class §_-E1§
   {
      
      public static const §_-0b§:int = 0;
      
      public static const §_-i2§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §_-JL§:int = 6;
      
      public static const §_-QJ§:int = 7;
      
      public static const §_-dy§:int = 8;
      
      public static const §_-Uy§:int = 9;
      
      public static const §_-Us§:int = 10;
      
      protected static var §_-13§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §_-PZ§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §_-I9§:int = 0;
      
      protected var §_-pt§:String = "2.0";
      
      protected var §_-g2§:int = 8;
      
      protected var §_-19§:Boolean = false;
      
      protected var §_-PK§:int = -1;
      
      protected var §_-wf§:int = -1;
      
      protected var §_-l1§:int = -1;
      
      protected var §_-FF§:Boolean = false;
      
      protected var §_-qz§:Boolean = false;
      
      protected var §_-7h§:Date;
      
      protected var §_-mu§:uint;
      
      protected var §_-Yx§:Boolean = false;
      
      protected var §_-gY§:uint = 0;
      
      protected var §_-RX§:uint = 0;
      
      protected var §_-Ya§:String = "";
      
      protected var §_-9O§:String;
      
      protected var §_-nk§:Dictionary;
      
      protected var §_-4s§:String = "";
      
      protected var §_-mQ§:ByteArray;
      
      var §_-jY§:uint;
      
      var §_-ot§:uint = 0;
      
      var §_-EJ§:uint = 0;
      
      protected var §_-sg§:Boolean = false;
      
      protected var §_-Ua§:Function;
      
      public function §_-E1§(param1:String = "utf-8")
      {
         this.§_-Ua§ = this.§_-PA§;
         super();
         this.§_-9O§ = param1;
         this.§_-nk§ = new Dictionary();
         this.§_-mQ§ = new ByteArray();
         this.§_-mQ§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §_-jX§() : Date
      {
         return this.§_-7h§;
      }
      
      public function set §_-jX§(param1:Date) : void
      {
         this.§_-7h§ = param1 != null ? param1 : new Date();
      }
      
      public function get §_-fQ§() : String
      {
         return this.§_-Ya§;
      }
      
      public function set §_-fQ§(param1:String) : void
      {
         this.§_-Ya§ = param1;
      }
      
      function get §_-wO§() : Boolean
      {
         return this.§_-FF§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§_-sg§)
         {
            this.uncompress();
         }
         return this.§_-mQ§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§_-cW§(param1);
      }
      
      public function §_-cW§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§_-mQ§,0,param1.length);
            this.§_-jY§ = §_-00E§.§_-yC§(this.§_-mQ§);
            this.§_-Yx§ = false;
         }
         else
         {
            this.§_-mQ§.length = 0;
            this.§_-mQ§.position = 0;
            this.§_-sg§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§_-EJ§ = this.§_-ot§ = this.§_-mQ§.length;
         }
      }
      
      public function get §_-HD§() : String
      {
         return this.§_-pt§;
      }
      
      public function get §_-YP§() : uint
      {
         return this.§_-ot§;
      }
      
      public function get §_-aI§() : uint
      {
         return this.§_-EJ§;
      }
      
      public function §_-b5§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§_-sg§)
         {
            this.uncompress();
         }
         this.§_-mQ§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§_-mQ§.readUTFBytes(this.§_-mQ§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§_-mQ§.readMultiByte(this.§_-mQ§.bytesAvailable,param2);
         }
         this.§_-mQ§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §_-IF§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§_-mQ§.length = 0;
         this.§_-mQ§.position = 0;
         this.§_-sg§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§_-mQ§.writeUTFBytes(param1);
            }
            else
            {
               this.§_-mQ§.writeMultiByte(param1,param2);
            }
            this.§_-jY§ = §_-00E§.§_-yC§(this.§_-mQ§);
            this.§_-Yx§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§_-EJ§ = this.§_-ot§ = this.§_-mQ§.length;
         }
      }
      
      public function §_-Vp§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§_-BP§.§_-On§);
            param1.writeShort(this.§_-I9§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§_-BP§.§_-sE§);
         }
         param1.writeShort(this.§_-I9§ << 8 | 20);
         param1.writeShort(this.§_-9O§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§_-sg§ ? int(§_-dy§) : int(§_-0b§));
         var _loc5_:Date = this.§_-7h§ != null ? this.§_-7h§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§_-jY§);
         param1.writeUnsignedInt(this.§_-ot§);
         param1.writeUnsignedInt(this.§_-EJ§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§_-9O§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§_-Ya§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§_-Ya§,this.§_-9O§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§_-nk§)
         {
            if((_loc15_ = this.§_-nk§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§_-Yx§)
            {
               if(_loc16_ = this.§_-sg§)
               {
                  this.uncompress();
               }
               this.§_-mu§ = §_-00E§.§_-33§(this.§_-mQ§,0,this.§_-mQ§.length);
               this.§_-Yx§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§_-mu§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§_-4s§.length > 0)
         {
            if(this.§_-9O§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§_-4s§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§_-4s§,this.§_-9O§);
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
         if(!param3 && this.§_-mQ§.length > 0)
         {
            if(this.§_-sg§)
            {
               if(§_-13§ || §_-PZ§)
               {
                  _loc13_ = this.§_-mQ§.length;
                  param1.writeBytes(this.§_-mQ§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§_-mQ§.length - 6;
                  param1.writeBytes(this.§_-mQ§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§_-mQ§.length;
               param1.writeBytes(this.§_-mQ§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§_-Ua§(param1))
         {
         }
         return this.§_-Ua§ === this.§_-aD§;
      }
      
      protected function §_-aD§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-PA§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§_-Xt§(param1);
            if(this.§_-gY§ + this.§_-RX§ > 0)
            {
               this.§_-Ua§ = this.§_-2d§;
            }
            else
            {
               this.§_-Ua§ = this.§_-Ee§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-2d§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§_-gY§ + this.§_-RX§)
         {
            this.§_-Kc§(param1);
            this.§_-Ua§ = this.§_-Ee§;
            return true;
         }
         return false;
      }
      
      protected function §_-Ee§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§_-FF§)
         {
            this.§_-Ua§ = this.§_-aD§;
            _loc2_ = false;
         }
         else if(this.§_-ot§ == 0)
         {
            this.§_-Ua§ = this.§_-aD§;
         }
         else if(param1.bytesAvailable >= this.§_-ot§)
         {
            this.§_-HW§(param1);
            this.§_-Ua§ = this.§_-aD§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §_-Xt§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§_-I9§ = _loc2_ >> 8;
         this.§_-pt§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§_-g2§ = param1.readUnsignedShort();
         this.§_-19§ = (_loc3_ & 1) !== 0;
         this.§_-FF§ = (_loc3_ & 8) !== 0;
         this.§_-qz§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§_-9O§ = "utf-8";
         }
         if(this.§_-g2§ === §_-JL§)
         {
            this.§_-PK§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§_-wf§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§_-g2§ === §_-dy§)
         {
            this.§_-l1§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§_-7h§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§_-jY§ = param1.readUnsignedInt();
         this.§_-ot§ = param1.readUnsignedInt();
         this.§_-EJ§ = param1.readUnsignedInt();
         this.§_-gY§ = param1.readUnsignedShort();
         this.§_-RX§ = param1.readUnsignedShort();
      }
      
      protected function §_-Kc§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§_-9O§ == "utf-8")
         {
            this.§_-Ya§ = param1.readUTFBytes(this.§_-gY§);
         }
         else
         {
            this.§_-Ya§ = param1.readMultiByte(this.§_-gY§,this.§_-9O§);
         }
         var _loc2_:uint = this.§_-RX§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§_-Ya§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§_-mu§ = param1.readUnsignedInt();
               this.§_-Yx§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§_-nk§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §_-HW§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§_-g2§ === §_-dy§ && !this.§_-19§)
         {
            if(§_-13§ || §_-PZ§)
            {
               param1.readBytes(this.§_-mQ§,0,this.§_-ot§);
            }
            else
            {
               if(!this.§_-Yx§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§_-mQ§.writeByte(120);
               _loc2_ = ~this.§_-l1§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§_-mQ§.writeByte(_loc2_);
               param1.readBytes(this.§_-mQ§,2,this.§_-ot§);
               this.§_-mQ§.position = this.§_-mQ§.length;
               this.§_-mQ§.writeUnsignedInt(this.§_-mu§);
            }
            this.§_-sg§ = true;
         }
         else
         {
            if(this.§_-g2§ != §_-0b§)
            {
               throw new Error("Compression method " + this.§_-g2§ + " is not supported.");
            }
            param1.readBytes(this.§_-mQ§,0,this.§_-ot§);
            this.§_-sg§ = false;
         }
         this.§_-mQ§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§_-sg§)
         {
            if(this.§_-mQ§.length > 0)
            {
               this.§_-mQ§.position = 0;
               this.§_-EJ§ = this.§_-mQ§.length;
               if(§_-PZ§)
               {
                  this.§_-mQ§.deflate();
                  this.§_-ot§ = this.§_-mQ§.length;
               }
               else if(§_-13§)
               {
                  this.§_-mQ§.compress.apply(this.§_-mQ§,["deflate"]);
                  this.§_-ot§ = this.§_-mQ§.length;
               }
               else
               {
                  this.§_-mQ§.compress();
                  this.§_-ot§ = this.§_-mQ§.length - 6;
               }
               this.§_-mQ§.position = 0;
               this.§_-sg§ = true;
            }
            else
            {
               this.§_-ot§ = 0;
               this.§_-EJ§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§_-sg§ && this.§_-mQ§.length > 0)
         {
            this.§_-mQ§.position = 0;
            if(§_-PZ§)
            {
               this.§_-mQ§.inflate();
            }
            else if(§_-13§)
            {
               this.§_-mQ§.uncompress.apply(this.§_-mQ§,["deflate"]);
            }
            else
            {
               this.§_-mQ§.uncompress();
            }
            this.§_-mQ§.position = 0;
            this.§_-sg§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§_-Ya§ + "\n  date:" + this.§_-7h§ + "\n  sizeCompressed:" + this.§_-ot§ + "\n  sizeUncompressed:" + this.§_-EJ§ + "\n  versionHost:" + this.§_-I9§ + "\n  versionNumber:" + this.§_-pt§ + "\n  compressionMethod:" + this.§_-g2§ + "\n  encrypted:" + this.§_-19§ + "\n  hasDataDescriptor:" + this.§_-FF§ + "\n  hasCompressedPatchedData:" + this.§_-qz§ + "\n  filenameEncoding:" + this.§_-9O§ + "\n  crc32:" + this.§_-jY§.toString(16) + "\n  adler32:" + this.§_-mu§.toString(16);
      }
   }
}

package §_-ja§
{
   import §_-8s§.§_-Q1§;
   import flash.utils.*;
   
   public class §_-GH§
   {
      
      public static const §_-2W§:int = 0;
      
      public static const §_-nR§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §_-lD§:int = 6;
      
      public static const §_-7k§:int = 7;
      
      public static const §_-w§:int = 8;
      
      public static const §_-0v§:int = 9;
      
      public static const §_-cl§:int = 10;
      
      protected static var §_-oX§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §_-bg§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §_-Cn§:int = 0;
      
      protected var §_-al§:String = "2.0";
      
      protected var §_-so§:int = 8;
      
      protected var §_-GO§:Boolean = false;
      
      protected var §_-eh§:int = -1;
      
      protected var §_-2-§:int = -1;
      
      protected var §_-lF§:int = -1;
      
      protected var §_-gF§:Boolean = false;
      
      protected var §_-Tb§:Boolean = false;
      
      protected var §_-nL§:Date;
      
      protected var §_-fC§:uint;
      
      protected var §_-e5§:Boolean = false;
      
      protected var §_-dZ§:uint = 0;
      
      protected var §_-XC§:uint = 0;
      
      protected var §_-oH§:String = "";
      
      protected var §_-BU§:String;
      
      protected var §_-1U§:Dictionary;
      
      protected var §_-g2§:String = "";
      
      protected var §_-GC§:ByteArray;
      
      var §_-j8§:uint;
      
      var §_-mh§:uint = 0;
      
      var §_-xt§:uint = 0;
      
      protected var §_-VN§:Boolean = false;
      
      protected var §_-5W§:Function;
      
      public function §_-GH§(param1:String = "utf-8")
      {
         this.§_-5W§ = this.§_-6X§;
         super();
         this.§_-BU§ = param1;
         this.§_-1U§ = new Dictionary();
         this.§_-GC§ = new ByteArray();
         this.§_-GC§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §_-Ug§() : Date
      {
         return this.§_-nL§;
      }
      
      public function set §_-Ug§(param1:Date) : void
      {
         this.§_-nL§ = param1 != null ? param1 : new Date();
      }
      
      public function get §_-NK§() : String
      {
         return this.§_-oH§;
      }
      
      public function set §_-NK§(param1:String) : void
      {
         this.§_-oH§ = param1;
      }
      
      function get §_-q§() : Boolean
      {
         return this.§_-gF§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§_-VN§)
         {
            this.uncompress();
         }
         return this.§_-GC§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§_-5l§(param1);
      }
      
      public function §_-5l§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§_-GC§,0,param1.length);
            this.§_-j8§ = §_-Q1§.§_-Ot§(this.§_-GC§);
            this.§_-e5§ = false;
         }
         else
         {
            this.§_-GC§.length = 0;
            this.§_-GC§.position = 0;
            this.§_-VN§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§_-xt§ = this.§_-mh§ = this.§_-GC§.length;
         }
      }
      
      public function get §_-Hu§() : String
      {
         return this.§_-al§;
      }
      
      public function get §_-E-§() : uint
      {
         return this.§_-mh§;
      }
      
      public function get §_-ZR§() : uint
      {
         return this.§_-xt§;
      }
      
      public function §_-ak§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§_-VN§)
         {
            this.uncompress();
         }
         this.§_-GC§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§_-GC§.readUTFBytes(this.§_-GC§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§_-GC§.readMultiByte(this.§_-GC§.bytesAvailable,param2);
         }
         this.§_-GC§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §_-tK§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§_-GC§.length = 0;
         this.§_-GC§.position = 0;
         this.§_-VN§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§_-GC§.writeUTFBytes(param1);
            }
            else
            {
               this.§_-GC§.writeMultiByte(param1,param2);
            }
            this.§_-j8§ = §_-Q1§.§_-Ot§(this.§_-GC§);
            this.§_-e5§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§_-xt§ = this.§_-mh§ = this.§_-GC§.length;
         }
      }
      
      public function §_-iY§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§_-Re§.§_-JK§);
            param1.writeShort(this.§_-Cn§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§_-Re§.§_-lb§);
         }
         param1.writeShort(this.§_-Cn§ << 8 | 20);
         param1.writeShort(this.§_-BU§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§_-VN§ ? int(§_-w§) : int(§_-2W§));
         var _loc5_:Date = this.§_-nL§ != null ? this.§_-nL§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§_-j8§);
         param1.writeUnsignedInt(this.§_-mh§);
         param1.writeUnsignedInt(this.§_-xt§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§_-BU§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§_-oH§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§_-oH§,this.§_-BU§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§_-1U§)
         {
            if((_loc15_ = this.§_-1U§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§_-e5§)
            {
               if(_loc16_ = this.§_-VN§)
               {
                  this.uncompress();
               }
               this.§_-fC§ = §_-Q1§.§_-dC§(this.§_-GC§,0,this.§_-GC§.length);
               this.§_-e5§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§_-fC§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§_-g2§.length > 0)
         {
            if(this.§_-BU§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§_-g2§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§_-g2§,this.§_-BU§);
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
         if(!param3 && this.§_-GC§.length > 0)
         {
            if(this.§_-VN§)
            {
               if(§_-oX§ || §_-bg§)
               {
                  _loc13_ = this.§_-GC§.length;
                  param1.writeBytes(this.§_-GC§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§_-GC§.length - 6;
                  param1.writeBytes(this.§_-GC§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§_-GC§.length;
               param1.writeBytes(this.§_-GC§,0,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      function §_-8R§(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && this.§_-5W§(param1))
         {
         }
         return this.§_-5W§ === this.§_-0f§;
      }
      
      protected function §_-0f§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-6X§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§_-Nd§(param1);
            if(this.§_-dZ§ + this.§_-XC§ > 0)
            {
               this.§_-5W§ = this.§_-y-§;
            }
            else
            {
               this.§_-5W§ = this.§_-a6§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-y-§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§_-dZ§ + this.§_-XC§)
         {
            this.§_-rZ§(param1);
            this.§_-5W§ = this.§_-a6§;
            return true;
         }
         return false;
      }
      
      protected function §_-a6§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§_-gF§)
         {
            this.§_-5W§ = this.§_-0f§;
            _loc2_ = false;
         }
         else if(this.§_-mh§ == 0)
         {
            this.§_-5W§ = this.§_-0f§;
         }
         else if(param1.bytesAvailable >= this.§_-mh§)
         {
            this.§_-U6§(param1);
            this.§_-5W§ = this.§_-0f§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §_-Nd§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§_-Cn§ = _loc2_ >> 8;
         this.§_-al§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§_-so§ = param1.readUnsignedShort();
         this.§_-GO§ = (_loc3_ & 1) !== 0;
         this.§_-gF§ = (_loc3_ & 8) !== 0;
         this.§_-Tb§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§_-BU§ = "utf-8";
         }
         if(this.§_-so§ === §_-lD§)
         {
            this.§_-eh§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§_-2-§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§_-so§ === §_-w§)
         {
            this.§_-lF§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§_-nL§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§_-j8§ = param1.readUnsignedInt();
         this.§_-mh§ = param1.readUnsignedInt();
         this.§_-xt§ = param1.readUnsignedInt();
         this.§_-dZ§ = param1.readUnsignedShort();
         this.§_-XC§ = param1.readUnsignedShort();
      }
      
      protected function §_-rZ§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§_-BU§ == "utf-8")
         {
            this.§_-oH§ = param1.readUTFBytes(this.§_-dZ§);
         }
         else
         {
            this.§_-oH§ = param1.readMultiByte(this.§_-dZ§,this.§_-BU§);
         }
         var _loc2_:uint = this.§_-XC§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§_-oH§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§_-fC§ = param1.readUnsignedInt();
               this.§_-e5§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§_-1U§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §_-U6§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§_-so§ === §_-w§ && !this.§_-GO§)
         {
            if(§_-oX§ || §_-bg§)
            {
               param1.readBytes(this.§_-GC§,0,this.§_-mh§);
            }
            else
            {
               if(!this.§_-e5§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§_-GC§.writeByte(120);
               _loc2_ = ~this.§_-lF§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§_-GC§.writeByte(_loc2_);
               param1.readBytes(this.§_-GC§,2,this.§_-mh§);
               this.§_-GC§.position = this.§_-GC§.length;
               this.§_-GC§.writeUnsignedInt(this.§_-fC§);
            }
            this.§_-VN§ = true;
         }
         else
         {
            if(this.§_-so§ != §_-2W§)
            {
               throw new Error("Compression method " + this.§_-so§ + " is not supported.");
            }
            param1.readBytes(this.§_-GC§,0,this.§_-mh§);
            this.§_-VN§ = false;
         }
         this.§_-GC§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§_-VN§)
         {
            if(this.§_-GC§.length > 0)
            {
               this.§_-GC§.position = 0;
               this.§_-xt§ = this.§_-GC§.length;
               if(§_-bg§)
               {
                  this.§_-GC§.deflate();
                  this.§_-mh§ = this.§_-GC§.length;
               }
               else if(§_-oX§)
               {
                  this.§_-GC§.compress.apply(this.§_-GC§,["deflate"]);
                  this.§_-mh§ = this.§_-GC§.length;
               }
               else
               {
                  this.§_-GC§.compress();
                  this.§_-mh§ = this.§_-GC§.length - 6;
               }
               this.§_-GC§.position = 0;
               this.§_-VN§ = true;
            }
            else
            {
               this.§_-mh§ = 0;
               this.§_-xt§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§_-VN§ && this.§_-GC§.length > 0)
         {
            this.§_-GC§.position = 0;
            if(§_-bg§)
            {
               this.§_-GC§.inflate();
            }
            else if(§_-oX§)
            {
               this.§_-GC§.uncompress.apply(this.§_-GC§,["deflate"]);
            }
            else
            {
               this.§_-GC§.uncompress();
            }
            this.§_-GC§.position = 0;
            this.§_-VN§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§_-oH§ + "\n  date:" + this.§_-nL§ + "\n  sizeCompressed:" + this.§_-mh§ + "\n  sizeUncompressed:" + this.§_-xt§ + "\n  versionHost:" + this.§_-Cn§ + "\n  versionNumber:" + this.§_-al§ + "\n  compressionMethod:" + this.§_-so§ + "\n  encrypted:" + this.§_-GO§ + "\n  hasDataDescriptor:" + this.§_-gF§ + "\n  hasCompressedPatchedData:" + this.§_-Tb§ + "\n  filenameEncoding:" + this.§_-BU§ + "\n  crc32:" + this.§_-j8§.toString(16) + "\n  adler32:" + this.§_-fC§.toString(16);
      }
   }
}

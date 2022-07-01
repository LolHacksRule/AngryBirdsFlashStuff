package §2e§
{
   import §<Y§.§7!^§;
   import flash.utils.*;
   
   public class §+!H§
   {
      
      public static const §import§:int = 0;
      
      public static const §5!?§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §4!7§:int = 6;
      
      public static const §+!N§:int = 7;
      
      public static const §^!N§:int = 8;
      
      public static const §2!&§:int = 9;
      
      public static const §5v§:int = 10;
      
      protected static var §@"-§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §+!a§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §7M§:int = 0;
      
      protected var §5![§:String = "2.0";
      
      protected var §5!P§:int = 8;
      
      protected var §59§:Boolean = false;
      
      protected var §#F§:int = -1;
      
      protected var §?$§:int = -1;
      
      protected var §+!>§:int = -1;
      
      protected var §8!O§:Boolean = false;
      
      protected var §7",§:Boolean = false;
      
      protected var §?!^§:Date;
      
      protected var § t§:uint;
      
      protected var §=!Q§:Boolean = false;
      
      protected var §[!h§:uint = 0;
      
      protected var §;!Q§:uint = 0;
      
      protected var §5!>§:String = "";
      
      protected var §8!@§:String;
      
      protected var §,s§:Dictionary;
      
      protected var §>b§:String = "";
      
      protected var §>!8§:ByteArray;
      
      var §+Z§:uint;
      
      var §-!M§:uint = 0;
      
      var §0?§:uint = 0;
      
      protected var §>!X§:Boolean = false;
      
      protected var §8!&§:Function;
      
      public function §+!H§(param1:String = "utf-8")
      {
         this.§8!&§ = this.§[!M§;
         super();
         this.§8!@§ = param1;
         this.§,s§ = new Dictionary();
         this.§>!8§ = new ByteArray();
         this.§>!8§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §64§() : Date
      {
         return this.§?!^§;
      }
      
      public function set §64§(param1:Date) : void
      {
         this.§?!^§ = param1 != null ? param1 : new Date();
      }
      
      public function get §=!N§() : String
      {
         return this.§5!>§;
      }
      
      public function set §=!N§(param1:String) : void
      {
         this.§5!>§ = param1;
      }
      
      function get §41§() : Boolean
      {
         return this.§8!O§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§>!X§)
         {
            this.uncompress();
         }
         return this.§>!8§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§,F§(param1);
      }
      
      public function §,F§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§>!8§,0,param1.length);
            this.§+Z§ = §7!^§.§>e§(this.§>!8§);
            this.§=!Q§ = false;
         }
         else
         {
            this.§>!8§.length = 0;
            this.§>!8§.position = 0;
            this.§>!X§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§0?§ = this.§-!M§ = this.§>!8§.length;
         }
      }
      
      public function get §`!_§() : String
      {
         return this.§5![§;
      }
      
      public function get §%r§() : uint
      {
         return this.§-!M§;
      }
      
      public function get §`S§() : uint
      {
         return this.§0?§;
      }
      
      public function §+b§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§>!X§)
         {
            this.uncompress();
         }
         this.§>!8§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§>!8§.readUTFBytes(this.§>!8§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§>!8§.readMultiByte(this.§>!8§.bytesAvailable,param2);
         }
         this.§>!8§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §1!E§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§>!8§.length = 0;
         this.§>!8§.position = 0;
         this.§>!X§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§>!8§.writeUTFBytes(param1);
            }
            else
            {
               this.§>!8§.writeMultiByte(param1,param2);
            }
            this.§+Z§ = §7!^§.§>e§(this.§>!8§);
            this.§=!Q§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§0?§ = this.§-!M§ = this.§>!8§.length;
         }
      }
      
      public function §]#§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§=!I§.§=!+§);
            param1.writeShort(this.§7M§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§=!I§.§6O§);
         }
         param1.writeShort(this.§7M§ << 8 | 20);
         param1.writeShort(this.§8!@§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§>!X§ ? int(§^!N§) : int(§import§));
         var _loc5_:Date = this.§?!^§ != null ? this.§?!^§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§+Z§);
         param1.writeUnsignedInt(this.§-!M§);
         param1.writeUnsignedInt(this.§0?§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§8!@§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§5!>§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§5!>§,this.§8!@§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§,s§)
         {
            if((_loc15_ = this.§,s§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§=!Q§)
            {
               if(_loc16_ = this.§>!X§)
               {
                  this.uncompress();
               }
               this.§ t§ = §7!^§.§,!v§(this.§>!8§,0,this.§>!8§.length);
               this.§=!Q§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§ t§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§>b§.length > 0)
         {
            if(this.§8!@§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§>b§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§>b§,this.§8!@§);
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
         if(!param3 && this.§>!8§.length > 0)
         {
            if(this.§>!X§)
            {
               if(§@"-§ || §+!a§)
               {
                  _loc13_ = this.§>!8§.length;
                  param1.writeBytes(this.§>!8§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§>!8§.length - 6;
                  param1.writeBytes(this.§>!8§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§>!8§.length;
               param1.writeBytes(this.§>!8§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§8!&§(param1))
         {
         }
         return this.§8!&§ === this.§0B§;
      }
      
      protected function §0B§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §[!M§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§4o§(param1);
            if(this.§[!h§ + this.§;!Q§ > 0)
            {
               this.§8!&§ = this.§#!§;
            }
            else
            {
               this.§8!&§ = this.§&!g§;
            }
            return true;
         }
         return false;
      }
      
      protected function §#!§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§[!h§ + this.§;!Q§)
         {
            this.§=h§(param1);
            this.§8!&§ = this.§&!g§;
            return true;
         }
         return false;
      }
      
      protected function §&!g§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§8!O§)
         {
            this.§8!&§ = this.§0B§;
            _loc2_ = false;
         }
         else if(this.§-!M§ == 0)
         {
            this.§8!&§ = this.§0B§;
         }
         else if(param1.bytesAvailable >= this.§-!M§)
         {
            this.parseContent(param1);
            this.§8!&§ = this.§0B§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §4o§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§7M§ = _loc2_ >> 8;
         this.§5![§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§5!P§ = param1.readUnsignedShort();
         this.§59§ = (_loc3_ & 1) !== 0;
         this.§8!O§ = (_loc3_ & 8) !== 0;
         this.§7",§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§8!@§ = "utf-8";
         }
         if(this.§5!P§ === §4!7§)
         {
            this.§#F§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§?$§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§5!P§ === §^!N§)
         {
            this.§+!>§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§?!^§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§+Z§ = param1.readUnsignedInt();
         this.§-!M§ = param1.readUnsignedInt();
         this.§0?§ = param1.readUnsignedInt();
         this.§[!h§ = param1.readUnsignedShort();
         this.§;!Q§ = param1.readUnsignedShort();
      }
      
      protected function §=h§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§8!@§ == "utf-8")
         {
            this.§5!>§ = param1.readUTFBytes(this.§[!h§);
         }
         else
         {
            this.§5!>§ = param1.readMultiByte(this.§[!h§,this.§8!@§);
         }
         var _loc2_:uint = this.§;!Q§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§5!>§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§ t§ = param1.readUnsignedInt();
               this.§=!Q§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§,s§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function parseContent(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§5!P§ === §^!N§ && !this.§59§)
         {
            if(§@"-§ || §+!a§)
            {
               param1.readBytes(this.§>!8§,0,this.§-!M§);
            }
            else
            {
               if(!this.§=!Q§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§>!8§.writeByte(120);
               _loc2_ = ~this.§+!>§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§>!8§.writeByte(_loc2_);
               param1.readBytes(this.§>!8§,2,this.§-!M§);
               this.§>!8§.position = this.§>!8§.length;
               this.§>!8§.writeUnsignedInt(this.§ t§);
            }
            this.§>!X§ = true;
         }
         else
         {
            if(this.§5!P§ != §import§)
            {
               throw new Error("Compression method " + this.§5!P§ + " is not supported.");
            }
            param1.readBytes(this.§>!8§,0,this.§-!M§);
            this.§>!X§ = false;
         }
         this.§>!8§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§>!X§)
         {
            if(this.§>!8§.length > 0)
            {
               this.§>!8§.position = 0;
               this.§0?§ = this.§>!8§.length;
               if(§+!a§)
               {
                  this.§>!8§.deflate();
                  this.§-!M§ = this.§>!8§.length;
               }
               else if(§@"-§)
               {
                  this.§>!8§.compress.apply(this.§>!8§,["deflate"]);
                  this.§-!M§ = this.§>!8§.length;
               }
               else
               {
                  this.§>!8§.compress();
                  this.§-!M§ = this.§>!8§.length - 6;
               }
               this.§>!8§.position = 0;
               this.§>!X§ = true;
            }
            else
            {
               this.§-!M§ = 0;
               this.§0?§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§>!X§ && this.§>!8§.length > 0)
         {
            this.§>!8§.position = 0;
            if(§+!a§)
            {
               this.§>!8§.inflate();
            }
            else if(§@"-§)
            {
               this.§>!8§.uncompress.apply(this.§>!8§,["deflate"]);
            }
            else
            {
               this.§>!8§.uncompress();
            }
            this.§>!8§.position = 0;
            this.§>!X§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§5!>§ + "\n  date:" + this.§?!^§ + "\n  sizeCompressed:" + this.§-!M§ + "\n  sizeUncompressed:" + this.§0?§ + "\n  versionHost:" + this.§7M§ + "\n  versionNumber:" + this.§5![§ + "\n  compressionMethod:" + this.§5!P§ + "\n  encrypted:" + this.§59§ + "\n  hasDataDescriptor:" + this.§8!O§ + "\n  hasCompressedPatchedData:" + this.§7",§ + "\n  filenameEncoding:" + this.§8!@§ + "\n  crc32:" + this.§+Z§.toString(16) + "\n  adler32:" + this.§ t§.toString(16);
      }
   }
}

package §use §
{
   import §>![§.§2B§;
   import flash.utils.*;
   
   public class §"!X§
   {
      
      public static const §8'§:int = 0;
      
      public static const §5D§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §;!@§:int = 6;
      
      public static const §0A§:int = 7;
      
      public static const §6u§:int = 8;
      
      public static const §`!U§:int = 9;
      
      public static const §;!9§:int = 10;
      
      protected static var §8!^§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §^!L§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §=!b§:int = 0;
      
      protected var §?t§:String = "2.0";
      
      protected var §"M§:int = 8;
      
      protected var §""§:Boolean = false;
      
      protected var §@!U§:int = -1;
      
      protected var §0F§:int = -1;
      
      protected var §!j§:int = -1;
      
      protected var §5G§:Boolean = false;
      
      protected var §=Q§:Boolean = false;
      
      protected var §[Z§:Date;
      
      protected var §8!=§:uint;
      
      protected var §]]§:Boolean = false;
      
      protected var §6!7§:uint = 0;
      
      protected var §+4§:uint = 0;
      
      protected var §5!3§:String = "";
      
      protected var §+;§:String;
      
      protected var §`^§:Dictionary;
      
      protected var §"!=§:String = "";
      
      protected var §?y§:ByteArray;
      
      var §!'§:uint;
      
      var §`!%§:uint = 0;
      
      var §9Q§:uint = 0;
      
      protected var §5!^§:Boolean = false;
      
      protected var §const§:Function;
      
      public function §"!X§(param1:String = "utf-8")
      {
         this.§const§ = this.§^!b§;
         super();
         this.§+;§ = param1;
         this.§`^§ = new Dictionary();
         this.§?y§ = new ByteArray();
         this.§?y§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §<K§() : Date
      {
         return this.§[Z§;
      }
      
      public function set §<K§(param1:Date) : void
      {
         this.§[Z§ = param1 != null ? param1 : new Date();
      }
      
      public function get §<8§() : String
      {
         return this.§5!3§;
      }
      
      public function set §<8§(param1:String) : void
      {
         this.§5!3§ = param1;
      }
      
      function get §37§() : Boolean
      {
         return this.§5G§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§5!^§)
         {
            this.uncompress();
         }
         return this.§?y§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§[!+§(param1);
      }
      
      public function §[!+§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§?y§,0,param1.length);
            this.§!'§ = §2B§.§4!c§(this.§?y§);
            this.§]]§ = false;
         }
         else
         {
            this.§?y§.length = 0;
            this.§?y§.position = 0;
            this.§5!^§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§9Q§ = this.§`!%§ = this.§?y§.length;
         }
      }
      
      public function get §]!9§() : String
      {
         return this.§?t§;
      }
      
      public function get §for§() : uint
      {
         return this.§`!%§;
      }
      
      public function get § B§() : uint
      {
         return this.§9Q§;
      }
      
      public function §9!J§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§5!^§)
         {
            this.uncompress();
         }
         this.§?y§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§?y§.readUTFBytes(this.§?y§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§?y§.readMultiByte(this.§?y§.bytesAvailable,param2);
         }
         this.§?y§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §&w§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§?y§.length = 0;
         this.§?y§.position = 0;
         this.§5!^§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§?y§.writeUTFBytes(param1);
            }
            else
            {
               this.§?y§.writeMultiByte(param1,param2);
            }
            this.§!'§ = §2B§.§4!c§(this.§?y§);
            this.§]]§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§9Q§ = this.§`!%§ = this.§?y§.length;
         }
      }
      
      public function §1;§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§[!,§.§?!$§);
            param1.writeShort(this.§=!b§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§[!,§.§=!@§);
         }
         param1.writeShort(this.§=!b§ << 8 | 20);
         param1.writeShort(this.§+;§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§5!^§ ? int(§6u§) : int(§8'§));
         var _loc5_:Date = this.§[Z§ != null ? this.§[Z§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§!'§);
         param1.writeUnsignedInt(this.§`!%§);
         param1.writeUnsignedInt(this.§9Q§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§+;§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§5!3§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§5!3§,this.§+;§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§`^§)
         {
            if((_loc15_ = this.§`^§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§]]§)
            {
               if(_loc16_ = this.§5!^§)
               {
                  this.uncompress();
               }
               this.§8!=§ = §2B§.§6!2§(this.§?y§,0,this.§?y§.length);
               this.§]]§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§8!=§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§"!=§.length > 0)
         {
            if(this.§+;§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§"!=§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§"!=§,this.§+;§);
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
         if(!param3 && this.§?y§.length > 0)
         {
            if(this.§5!^§)
            {
               if(§8!^§ || §^!L§)
               {
                  _loc13_ = this.§?y§.length;
                  param1.writeBytes(this.§?y§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§?y§.length - 6;
                  param1.writeBytes(this.§?y§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§?y§.length;
               param1.writeBytes(this.§?y§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§const§(param1))
         {
         }
         return this.§const§ === this.§6C§;
      }
      
      protected function §6C§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §^!b§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§"F§(param1);
            if(this.§6!7§ + this.§+4§ > 0)
            {
               this.§const§ = this.§switch§;
            }
            else
            {
               this.§const§ = this.§11§;
            }
            return true;
         }
         return false;
      }
      
      protected function §switch§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§6!7§ + this.§+4§)
         {
            this.§6!S§(param1);
            this.§const§ = this.§11§;
            return true;
         }
         return false;
      }
      
      protected function §11§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§5G§)
         {
            this.§const§ = this.§6C§;
            _loc2_ = false;
         }
         else if(this.§`!%§ == 0)
         {
            this.§const§ = this.§6C§;
         }
         else if(param1.bytesAvailable >= this.§`!%§)
         {
            this.§,!W§(param1);
            this.§const§ = this.§6C§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §"F§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§=!b§ = _loc2_ >> 8;
         this.§?t§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§"M§ = param1.readUnsignedShort();
         this.§""§ = (_loc3_ & 1) !== 0;
         this.§5G§ = (_loc3_ & 8) !== 0;
         this.§=Q§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§+;§ = "utf-8";
         }
         if(this.§"M§ === §;!@§)
         {
            this.§@!U§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§0F§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§"M§ === §6u§)
         {
            this.§!j§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§[Z§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§!'§ = param1.readUnsignedInt();
         this.§`!%§ = param1.readUnsignedInt();
         this.§9Q§ = param1.readUnsignedInt();
         this.§6!7§ = param1.readUnsignedShort();
         this.§+4§ = param1.readUnsignedShort();
      }
      
      protected function §6!S§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§+;§ == "utf-8")
         {
            this.§5!3§ = param1.readUTFBytes(this.§6!7§);
         }
         else
         {
            this.§5!3§ = param1.readMultiByte(this.§6!7§,this.§+;§);
         }
         var _loc2_:uint = this.§+4§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§5!3§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§8!=§ = param1.readUnsignedInt();
               this.§]]§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§`^§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §,!W§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§"M§ === §6u§ && !this.§""§)
         {
            if(§8!^§ || §^!L§)
            {
               param1.readBytes(this.§?y§,0,this.§`!%§);
            }
            else
            {
               if(!this.§]]§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§?y§.writeByte(120);
               _loc2_ = ~this.§!j§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§?y§.writeByte(_loc2_);
               param1.readBytes(this.§?y§,2,this.§`!%§);
               this.§?y§.position = this.§?y§.length;
               this.§?y§.writeUnsignedInt(this.§8!=§);
            }
            this.§5!^§ = true;
         }
         else
         {
            if(this.§"M§ != §8'§)
            {
               throw new Error("Compression method " + this.§"M§ + " is not supported.");
            }
            param1.readBytes(this.§?y§,0,this.§`!%§);
            this.§5!^§ = false;
         }
         this.§?y§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§5!^§)
         {
            if(this.§?y§.length > 0)
            {
               this.§?y§.position = 0;
               this.§9Q§ = this.§?y§.length;
               if(§^!L§)
               {
                  this.§?y§.deflate();
                  this.§`!%§ = this.§?y§.length;
               }
               else if(§8!^§)
               {
                  this.§?y§.compress.apply(this.§?y§,["deflate"]);
                  this.§`!%§ = this.§?y§.length;
               }
               else
               {
                  this.§?y§.compress();
                  this.§`!%§ = this.§?y§.length - 6;
               }
               this.§?y§.position = 0;
               this.§5!^§ = true;
            }
            else
            {
               this.§`!%§ = 0;
               this.§9Q§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§5!^§ && this.§?y§.length > 0)
         {
            this.§?y§.position = 0;
            if(§^!L§)
            {
               this.§?y§.inflate();
            }
            else if(§8!^§)
            {
               this.§?y§.uncompress.apply(this.§?y§,["deflate"]);
            }
            else
            {
               this.§?y§.uncompress();
            }
            this.§?y§.position = 0;
            this.§5!^§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§5!3§ + "\n  date:" + this.§[Z§ + "\n  sizeCompressed:" + this.§`!%§ + "\n  sizeUncompressed:" + this.§9Q§ + "\n  versionHost:" + this.§=!b§ + "\n  versionNumber:" + this.§?t§ + "\n  compressionMethod:" + this.§"M§ + "\n  encrypted:" + this.§""§ + "\n  hasDataDescriptor:" + this.§5G§ + "\n  hasCompressedPatchedData:" + this.§=Q§ + "\n  filenameEncoding:" + this.§+;§ + "\n  crc32:" + this.§!'§.toString(16) + "\n  adler32:" + this.§8!=§.toString(16);
      }
   }
}

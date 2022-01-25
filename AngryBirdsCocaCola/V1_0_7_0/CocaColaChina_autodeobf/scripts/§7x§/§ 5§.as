package §7x§
{
   import §3!E§.§=8§;
   import flash.utils.*;
   
   public class § 5§
   {
      
      public static const §switch§:int = 0;
      
      public static const §11§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §"F§:int = 6;
      
      public static const §6!S§:int = 7;
      
      public static const §,!W§:int = 8;
      
      public static const §8'§:int = 9;
      
      public static const §5D§:int = 10;
      
      protected static var §;!@§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §0A§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §;z§:int = 0;
      
      protected var §#!,§:String = "2.0";
      
      protected var §>6§:int = 8;
      
      protected var §!]§:Boolean = false;
      
      protected var §"!X§:int = -1;
      
      protected var §=!b§:int = -1;
      
      protected var §?t§:int = -1;
      
      protected var §"M§:Boolean = false;
      
      protected var §""§:Boolean = false;
      
      protected var §@!U§:Date;
      
      protected var §0F§:uint;
      
      protected var §!j§:Boolean = false;
      
      protected var §5G§:uint = 0;
      
      protected var §=Q§:uint = 0;
      
      protected var §[Z§:String = "";
      
      protected var §8!=§:String;
      
      protected var §]]§:Dictionary;
      
      protected var §6!7§:String = "";
      
      protected var §+4§:ByteArray;
      
      var §5!3§:uint;
      
      var §+;§:uint = 0;
      
      var §`^§:uint = 0;
      
      protected var §"!=§:Boolean = false;
      
      protected var §[!,§:Function;
      
      public function § 5§(param1:String = "utf-8")
      {
         this.§[!,§ = this.§for§;
         super();
         this.§8!=§ = param1;
         this.§]]§ = new Dictionary();
         this.§+4§ = new ByteArray();
         this.§+4§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §?y§() : Date
      {
         return this.§@!U§;
      }
      
      public function set §?y§(param1:Date) : void
      {
         this.§@!U§ = param1 != null ? param1 : new Date();
      }
      
      public function get §!'§() : String
      {
         return this.§[Z§;
      }
      
      public function set §!'§(param1:String) : void
      {
         this.§[Z§ = param1;
      }
      
      function get §`!%§() : Boolean
      {
         return this.§"M§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§"!=§)
         {
            this.uncompress();
         }
         return this.§+4§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§9Q§(param1);
      }
      
      public function §9Q§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§+4§,0,param1.length);
            this.§5!3§ = §=8§.§]x§(this.§+4§);
            this.§!j§ = false;
         }
         else
         {
            this.§+4§.length = 0;
            this.§+4§.position = 0;
            this.§"!=§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§`^§ = this.§+;§ = this.§+4§.length;
         }
      }
      
      public function get §5!^§() : String
      {
         return this.§#!,§;
      }
      
      public function get §<K§() : uint
      {
         return this.§+;§;
      }
      
      public function get §<8§() : uint
      {
         return this.§`^§;
      }
      
      public function §37§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§"!=§)
         {
            this.uncompress();
         }
         this.§+4§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§+4§.readUTFBytes(this.§+4§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§+4§.readMultiByte(this.§+4§.bytesAvailable,param2);
         }
         this.§+4§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §[!+§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§+4§.length = 0;
         this.§+4§.position = 0;
         this.§"!=§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§+4§.writeUTFBytes(param1);
            }
            else
            {
               this.§+4§.writeMultiByte(param1,param2);
            }
            this.§5!3§ = §=8§.§]x§(this.§+4§);
            this.§!j§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§`^§ = this.§+;§ = this.§+4§.length;
         }
      }
      
      public function §#!c§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§`!Z§.§"E§);
            param1.writeShort(this.§;z§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§`!Z§.§7!Q§);
         }
         param1.writeShort(this.§;z§ << 8 | 20);
         param1.writeShort(this.§8!=§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§"!=§ ? int(§,!W§) : int(§switch§));
         var _loc5_:Date = this.§@!U§ != null ? this.§@!U§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§5!3§);
         param1.writeUnsignedInt(this.§+;§);
         param1.writeUnsignedInt(this.§`^§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§8!=§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§[Z§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§[Z§,this.§8!=§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§]]§)
         {
            if((_loc15_ = this.§]]§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§!j§)
            {
               if(_loc16_ = this.§"!=§)
               {
                  this.uncompress();
               }
               this.§0F§ = §=8§.§&n§(this.§+4§,0,this.§+4§.length);
               this.§!j§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§0F§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§6!7§.length > 0)
         {
            if(this.§8!=§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§6!7§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§6!7§,this.§8!=§);
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
         if(!param3 && this.§+4§.length > 0)
         {
            if(this.§"!=§)
            {
               if(§;!@§ || §0A§)
               {
                  _loc13_ = this.§+4§.length;
                  param1.writeBytes(this.§+4§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§+4§.length - 6;
                  param1.writeBytes(this.§+4§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§+4§.length;
               param1.writeBytes(this.§+4§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§[!,§(param1))
         {
         }
         return this.§[!,§ === this.§]!9§;
      }
      
      protected function §]!9§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §for§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§&w§(param1);
            if(this.§5G§ + this.§=Q§ > 0)
            {
               this.§[!,§ = this.§ B§;
            }
            else
            {
               this.§[!,§ = this.§9!J§;
            }
            return true;
         }
         return false;
      }
      
      protected function § B§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§5G§ + this.§=Q§)
         {
            this.§6C§(param1);
            this.§[!,§ = this.§9!J§;
            return true;
         }
         return false;
      }
      
      protected function §9!J§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§"M§)
         {
            this.§[!,§ = this.§]!9§;
            _loc2_ = false;
         }
         else if(this.§+;§ == 0)
         {
            this.§[!,§ = this.§]!9§;
         }
         else if(param1.bytesAvailable >= this.§+;§)
         {
            this.§^!b§(param1);
            this.§[!,§ = this.§]!9§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §&w§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§;z§ = _loc2_ >> 8;
         this.§#!,§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§>6§ = param1.readUnsignedShort();
         this.§!]§ = (_loc3_ & 1) !== 0;
         this.§"M§ = (_loc3_ & 8) !== 0;
         this.§""§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§8!=§ = "utf-8";
         }
         if(this.§>6§ === §"F§)
         {
            this.§"!X§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§=!b§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§>6§ === §,!W§)
         {
            this.§?t§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§@!U§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§5!3§ = param1.readUnsignedInt();
         this.§+;§ = param1.readUnsignedInt();
         this.§`^§ = param1.readUnsignedInt();
         this.§5G§ = param1.readUnsignedShort();
         this.§=Q§ = param1.readUnsignedShort();
      }
      
      protected function §6C§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§8!=§ == "utf-8")
         {
            this.§[Z§ = param1.readUTFBytes(this.§5G§);
         }
         else
         {
            this.§[Z§ = param1.readMultiByte(this.§5G§,this.§8!=§);
         }
         var _loc2_:uint = this.§=Q§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§[Z§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§0F§ = param1.readUnsignedInt();
               this.§!j§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§]]§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §^!b§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§>6§ === §,!W§ && !this.§!]§)
         {
            if(§;!@§ || §0A§)
            {
               param1.readBytes(this.§+4§,0,this.§+;§);
            }
            else
            {
               if(!this.§!j§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§+4§.writeByte(120);
               _loc2_ = ~this.§?t§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§+4§.writeByte(_loc2_);
               param1.readBytes(this.§+4§,2,this.§+;§);
               this.§+4§.position = this.§+4§.length;
               this.§+4§.writeUnsignedInt(this.§0F§);
            }
            this.§"!=§ = true;
         }
         else
         {
            if(this.§>6§ != §switch§)
            {
               throw new Error("Compression method " + this.§>6§ + " is not supported.");
            }
            param1.readBytes(this.§+4§,0,this.§+;§);
            this.§"!=§ = false;
         }
         this.§+4§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§"!=§)
         {
            if(this.§+4§.length > 0)
            {
               this.§+4§.position = 0;
               this.§`^§ = this.§+4§.length;
               if(§0A§)
               {
                  this.§+4§.deflate();
                  this.§+;§ = this.§+4§.length;
               }
               else if(§;!@§)
               {
                  this.§+4§.compress.apply(this.§+4§,["deflate"]);
                  this.§+;§ = this.§+4§.length;
               }
               else
               {
                  this.§+4§.compress();
                  this.§+;§ = this.§+4§.length - 6;
               }
               this.§+4§.position = 0;
               this.§"!=§ = true;
            }
            else
            {
               this.§+;§ = 0;
               this.§`^§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§"!=§ && this.§+4§.length > 0)
         {
            this.§+4§.position = 0;
            if(§0A§)
            {
               this.§+4§.inflate();
            }
            else if(§;!@§)
            {
               this.§+4§.uncompress.apply(this.§+4§,["deflate"]);
            }
            else
            {
               this.§+4§.uncompress();
            }
            this.§+4§.position = 0;
            this.§"!=§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§[Z§ + "\n  date:" + this.§@!U§ + "\n  sizeCompressed:" + this.§+;§ + "\n  sizeUncompressed:" + this.§`^§ + "\n  versionHost:" + this.§;z§ + "\n  versionNumber:" + this.§#!,§ + "\n  compressionMethod:" + this.§>6§ + "\n  encrypted:" + this.§!]§ + "\n  hasDataDescriptor:" + this.§"M§ + "\n  hasCompressedPatchedData:" + this.§""§ + "\n  filenameEncoding:" + this.§8!=§ + "\n  crc32:" + this.§5!3§.toString(16) + "\n  adler32:" + this.§0F§.toString(16);
      }
   }
}

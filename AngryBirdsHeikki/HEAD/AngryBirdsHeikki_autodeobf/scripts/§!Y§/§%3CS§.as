package §!Y§
{
   import §`!Q§.§&;§;
   import flash.utils.*;
   
   public class §<S§
   {
      
      public static const §1!Q§:int = 0;
      
      public static const §,!U§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §?2§:int = 6;
      
      public static const §^!!§:int = 7;
      
      public static const §=!;§:int = 8;
      
      public static const §#!h§:int = 9;
      
      public static const §6+§:int = 10;
      
      protected static var §,!2§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §"!d§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §9]§:int = 0;
      
      protected var §[=§:String = "2.0";
      
      protected var § !2§:int = 8;
      
      protected var §6f§:Boolean = false;
      
      protected var §&?§:int = -1;
      
      protected var §=q§:int = -1;
      
      protected var §]u§:int = -1;
      
      protected var §'u§:Boolean = false;
      
      protected var §!4§:Boolean = false;
      
      protected var §2`§:Date;
      
      protected var §+'§:uint;
      
      protected var §7"§:Boolean = false;
      
      protected var §4Z§:uint = 0;
      
      protected var §-I§:uint = 0;
      
      protected var §0j§:String = "";
      
      protected var §5!b§:String;
      
      protected var §9!H§:Dictionary;
      
      protected var §@f§:String = "";
      
      protected var §3!6§:ByteArray;
      
      var §"N§:uint;
      
      var §11§:uint = 0;
      
      var §"!F§:uint = 0;
      
      protected var §"!>§:Boolean = false;
      
      protected var §`!$§:Function;
      
      public function §<S§(param1:String = "utf-8")
      {
         this.§`!$§ = this.§3!e§;
         super();
         this.§5!b§ = param1;
         this.§9!H§ = new Dictionary();
         this.§3!6§ = new ByteArray();
         this.§3!6§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §'w§() : Date
      {
         return this.§2`§;
      }
      
      public function set §'w§(param1:Date) : void
      {
         this.§2`§ = param1 != null ? param1 : new Date();
      }
      
      public function get §5'§() : String
      {
         return this.§0j§;
      }
      
      public function set §5'§(param1:String) : void
      {
         this.§0j§ = param1;
      }
      
      function get §5_§() : Boolean
      {
         return this.§'u§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§"!>§)
         {
            this.uncompress();
         }
         return this.§3!6§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§8v§(param1);
      }
      
      public function §8v§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§3!6§,0,param1.length);
            this.§"N§ = §&;§.§0z§(this.§3!6§);
            this.§7"§ = false;
         }
         else
         {
            this.§3!6§.length = 0;
            this.§3!6§.position = 0;
            this.§"!>§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§"!F§ = this.§11§ = this.§3!6§.length;
         }
      }
      
      public function get §`k§() : String
      {
         return this.§[=§;
      }
      
      public function get §=!+§() : uint
      {
         return this.§11§;
      }
      
      public function get §=x§() : uint
      {
         return this.§"!F§;
      }
      
      public function §5e§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§"!>§)
         {
            this.uncompress();
         }
         this.§3!6§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§3!6§.readUTFBytes(this.§3!6§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§3!6§.readMultiByte(this.§3!6§.bytesAvailable,param2);
         }
         this.§3!6§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §;i§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§3!6§.length = 0;
         this.§3!6§.position = 0;
         this.§"!>§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§3!6§.writeUTFBytes(param1);
            }
            else
            {
               this.§3!6§.writeMultiByte(param1,param2);
            }
            this.§"N§ = §&;§.§0z§(this.§3!6§);
            this.§7"§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§"!F§ = this.§11§ = this.§3!6§.length;
         }
      }
      
      public function §;!D§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§?!1§.§7Y§);
            param1.writeShort(this.§9]§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§?!1§.§'m§);
         }
         param1.writeShort(this.§9]§ << 8 | 20);
         param1.writeShort(this.§5!b§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§"!>§ ? int(§=!;§) : int(§1!Q§));
         var _loc5_:Date = this.§2`§ != null ? this.§2`§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§"N§);
         param1.writeUnsignedInt(this.§11§);
         param1.writeUnsignedInt(this.§"!F§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§5!b§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§0j§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§0j§,this.§5!b§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§9!H§)
         {
            if((_loc15_ = this.§9!H§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§7"§)
            {
               if(_loc16_ = this.§"!>§)
               {
                  this.uncompress();
               }
               this.§+'§ = §&;§.§%x§(this.§3!6§,0,this.§3!6§.length);
               this.§7"§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§+'§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§@f§.length > 0)
         {
            if(this.§5!b§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§@f§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§@f§,this.§5!b§);
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
         if(!param3 && this.§3!6§.length > 0)
         {
            if(this.§"!>§)
            {
               if(§,!2§ || §"!d§)
               {
                  _loc13_ = this.§3!6§.length;
                  param1.writeBytes(this.§3!6§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§3!6§.length - 6;
                  param1.writeBytes(this.§3!6§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§3!6§.length;
               param1.writeBytes(this.§3!6§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§`!$§(param1))
         {
         }
         return this.§`!$§ === this.§7L§;
      }
      
      protected function §7L§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §3!e§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§+0§(param1);
            if(this.§4Z§ + this.§-I§ > 0)
            {
               this.§`!$§ = this.§=L§;
            }
            else
            {
               this.§`!$§ = this.§"y§;
            }
            return true;
         }
         return false;
      }
      
      protected function §=L§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§4Z§ + this.§-I§)
         {
            this.§5!J§(param1);
            this.§`!$§ = this.§"y§;
            return true;
         }
         return false;
      }
      
      protected function §"y§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§'u§)
         {
            this.§`!$§ = this.§7L§;
            _loc2_ = false;
         }
         else if(this.§11§ == 0)
         {
            this.§`!$§ = this.§7L§;
         }
         else if(param1.bytesAvailable >= this.§11§)
         {
            this.§^!3§(param1);
            this.§`!$§ = this.§7L§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §+0§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§9]§ = _loc2_ >> 8;
         this.§[=§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§ !2§ = param1.readUnsignedShort();
         this.§6f§ = (_loc3_ & 1) !== 0;
         this.§'u§ = (_loc3_ & 8) !== 0;
         this.§!4§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§5!b§ = "utf-8";
         }
         if(this.§ !2§ === §?2§)
         {
            this.§&?§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§=q§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§ !2§ === §=!;§)
         {
            this.§]u§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§2`§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§"N§ = param1.readUnsignedInt();
         this.§11§ = param1.readUnsignedInt();
         this.§"!F§ = param1.readUnsignedInt();
         this.§4Z§ = param1.readUnsignedShort();
         this.§-I§ = param1.readUnsignedShort();
      }
      
      protected function §5!J§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§5!b§ == "utf-8")
         {
            this.§0j§ = param1.readUTFBytes(this.§4Z§);
         }
         else
         {
            this.§0j§ = param1.readMultiByte(this.§4Z§,this.§5!b§);
         }
         var _loc2_:uint = this.§-I§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§0j§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§+'§ = param1.readUnsignedInt();
               this.§7"§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§9!H§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §^!3§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§ !2§ === §=!;§ && !this.§6f§)
         {
            if(§,!2§ || §"!d§)
            {
               param1.readBytes(this.§3!6§,0,this.§11§);
            }
            else
            {
               if(!this.§7"§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§3!6§.writeByte(120);
               _loc2_ = ~this.§]u§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§3!6§.writeByte(_loc2_);
               param1.readBytes(this.§3!6§,2,this.§11§);
               this.§3!6§.position = this.§3!6§.length;
               this.§3!6§.writeUnsignedInt(this.§+'§);
            }
            this.§"!>§ = true;
         }
         else
         {
            if(this.§ !2§ != §1!Q§)
            {
               throw new Error("Compression method " + this.§ !2§ + " is not supported.");
            }
            param1.readBytes(this.§3!6§,0,this.§11§);
            this.§"!>§ = false;
         }
         this.§3!6§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§"!>§)
         {
            if(this.§3!6§.length > 0)
            {
               this.§3!6§.position = 0;
               this.§"!F§ = this.§3!6§.length;
               if(§"!d§)
               {
                  this.§3!6§.deflate();
                  this.§11§ = this.§3!6§.length;
               }
               else if(§,!2§)
               {
                  this.§3!6§.compress.apply(this.§3!6§,["deflate"]);
                  this.§11§ = this.§3!6§.length;
               }
               else
               {
                  this.§3!6§.compress();
                  this.§11§ = this.§3!6§.length - 6;
               }
               this.§3!6§.position = 0;
               this.§"!>§ = true;
            }
            else
            {
               this.§11§ = 0;
               this.§"!F§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§"!>§ && this.§3!6§.length > 0)
         {
            this.§3!6§.position = 0;
            if(§"!d§)
            {
               this.§3!6§.inflate();
            }
            else if(§,!2§)
            {
               this.§3!6§.uncompress.apply(this.§3!6§,["deflate"]);
            }
            else
            {
               this.§3!6§.uncompress();
            }
            this.§3!6§.position = 0;
            this.§"!>§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§0j§ + "\n  date:" + this.§2`§ + "\n  sizeCompressed:" + this.§11§ + "\n  sizeUncompressed:" + this.§"!F§ + "\n  versionHost:" + this.§9]§ + "\n  versionNumber:" + this.§[=§ + "\n  compressionMethod:" + this.§ !2§ + "\n  encrypted:" + this.§6f§ + "\n  hasDataDescriptor:" + this.§'u§ + "\n  hasCompressedPatchedData:" + this.§!4§ + "\n  filenameEncoding:" + this.§5!b§ + "\n  crc32:" + this.§"N§.toString(16) + "\n  adler32:" + this.§+'§.toString(16);
      }
   }
}

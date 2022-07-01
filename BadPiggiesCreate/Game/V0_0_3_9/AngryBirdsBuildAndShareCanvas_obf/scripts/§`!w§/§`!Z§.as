package §`!w§
{
   import §=!F§.§0Y§;
   import flash.utils.*;
   
   public class §`!Z§
   {
      
      public static const §,R§:int = 0;
      
      public static const §#!J§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §8u§:int = 6;
      
      public static const §@<§:int = 7;
      
      public static const §'§:int = 8;
      
      public static const §]!&§:int = 9;
      
      public static const §#"9§:int = 10;
      
      protected static var §"5§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §4"'§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §-![§:int = 0;
      
      protected var §8B§:String = "2.0";
      
      protected var §?" §:int = 8;
      
      protected var §0y§:Boolean = false;
      
      protected var §3T§:int = -1;
      
      protected var §"m§:int = -1;
      
      protected var §[!s§:int = -1;
      
      protected var §<!'§:Boolean = false;
      
      protected var §6v§:Boolean = false;
      
      protected var §><§:Date;
      
      protected var §!@§:uint;
      
      protected var §'!r§:Boolean = false;
      
      protected var §,!W§:uint = 0;
      
      protected var §"!p§:uint = 0;
      
      protected var §]!%§:String = "";
      
      protected var §0!9§:String;
      
      protected var § "6§:Dictionary;
      
      protected var §][§:String = "";
      
      protected var §0!#§:ByteArray;
      
      var §'!>§:uint;
      
      var §@"&§:uint = 0;
      
      var §8y§:uint = 0;
      
      protected var §=w§:Boolean = false;
      
      protected var §!!S§:Function;
      
      public function §`!Z§(param1:String = "utf-8")
      {
         this.§!!S§ = this.§[!4§;
         super();
         this.§0!9§ = param1;
         this.§ "6§ = new Dictionary();
         this.§0!#§ = new ByteArray();
         this.§0!#§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §`u§() : Date
      {
         return this.§><§;
      }
      
      public function set §`u§(param1:Date) : void
      {
         this.§><§ = param1 != null ? param1 : new Date();
      }
      
      public function get §==§() : String
      {
         return this.§]!%§;
      }
      
      public function set §==§(param1:String) : void
      {
         this.§]!%§ = param1;
      }
      
      function get §`!H§() : Boolean
      {
         return this.§<!'§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§=w§)
         {
            this.uncompress();
         }
         return this.§0!#§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§'!-§(param1);
      }
      
      public function §'!-§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§0!#§,0,param1.length);
            this.§'!>§ = §0Y§.§^!m§(this.§0!#§);
            this.§'!r§ = false;
         }
         else
         {
            this.§0!#§.length = 0;
            this.§0!#§.position = 0;
            this.§=w§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§8y§ = this.§@"&§ = this.§0!#§.length;
         }
      }
      
      public function get §6!r§() : String
      {
         return this.§8B§;
      }
      
      public function get §0!M§() : uint
      {
         return this.§@"&§;
      }
      
      public function get §1!?§() : uint
      {
         return this.§8y§;
      }
      
      public function §%!'§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§=w§)
         {
            this.uncompress();
         }
         this.§0!#§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§0!#§.readUTFBytes(this.§0!#§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§0!#§.readMultiByte(this.§0!#§.bytesAvailable,param2);
         }
         this.§0!#§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §>b§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§0!#§.length = 0;
         this.§0!#§.position = 0;
         this.§=w§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§0!#§.writeUTFBytes(param1);
            }
            else
            {
               this.§0!#§.writeMultiByte(param1,param2);
            }
            this.§'!>§ = §0Y§.§^!m§(this.§0!#§);
            this.§'!r§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§8y§ = this.§@"&§ = this.§0!#§.length;
         }
      }
      
      public function §?!3§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§!!W§.§%!4§);
            param1.writeShort(this.§-![§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§!!W§.§^W§);
         }
         param1.writeShort(this.§-![§ << 8 | 20);
         param1.writeShort(this.§0!9§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§=w§ ? int(§'§) : int(§,R§));
         var _loc5_:Date = this.§><§ != null ? this.§><§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§'!>§);
         param1.writeUnsignedInt(this.§@"&§);
         param1.writeUnsignedInt(this.§8y§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§0!9§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§]!%§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§]!%§,this.§0!9§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§ "6§)
         {
            if((_loc15_ = this.§ "6§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§'!r§)
            {
               if(_loc16_ = this.§=w§)
               {
                  this.uncompress();
               }
               this.§!@§ = §0Y§.§1!q§(this.§0!#§,0,this.§0!#§.length);
               this.§'!r§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§!@§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§][§.length > 0)
         {
            if(this.§0!9§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§][§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§][§,this.§0!9§);
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
         if(!param3 && this.§0!#§.length > 0)
         {
            if(this.§=w§)
            {
               if(§"5§ || §4"'§)
               {
                  _loc13_ = this.§0!#§.length;
                  param1.writeBytes(this.§0!#§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§0!#§.length - 6;
                  param1.writeBytes(this.§0!#§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§0!#§.length;
               param1.writeBytes(this.§0!#§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§!!S§(param1))
         {
         }
         return this.§!!S§ === this.§=a§;
      }
      
      protected function §=a§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §[!4§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§+!4§(param1);
            if(this.§,!W§ + this.§"!p§ > 0)
            {
               this.§!!S§ = this.§1!4§;
            }
            else
            {
               this.§!!S§ = this.§?!z§;
            }
            return true;
         }
         return false;
      }
      
      protected function §1!4§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§,!W§ + this.§"!p§)
         {
            this.§4!c§(param1);
            this.§!!S§ = this.§?!z§;
            return true;
         }
         return false;
      }
      
      protected function §?!z§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§<!'§)
         {
            this.§!!S§ = this.§=a§;
            _loc2_ = false;
         }
         else if(this.§@"&§ == 0)
         {
            this.§!!S§ = this.§=a§;
         }
         else if(param1.bytesAvailable >= this.§@"&§)
         {
            this.§^!L§(param1);
            this.§!!S§ = this.§=a§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §+!4§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§-![§ = _loc2_ >> 8;
         this.§8B§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§?" § = param1.readUnsignedShort();
         this.§0y§ = (_loc3_ & 1) !== 0;
         this.§<!'§ = (_loc3_ & 8) !== 0;
         this.§6v§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§0!9§ = "utf-8";
         }
         if(this.§?" § === §8u§)
         {
            this.§3T§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§"m§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§?" § === §'§)
         {
            this.§[!s§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§><§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§'!>§ = param1.readUnsignedInt();
         this.§@"&§ = param1.readUnsignedInt();
         this.§8y§ = param1.readUnsignedInt();
         this.§,!W§ = param1.readUnsignedShort();
         this.§"!p§ = param1.readUnsignedShort();
      }
      
      protected function §4!c§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§0!9§ == "utf-8")
         {
            this.§]!%§ = param1.readUTFBytes(this.§,!W§);
         }
         else
         {
            this.§]!%§ = param1.readMultiByte(this.§,!W§,this.§0!9§);
         }
         var _loc2_:uint = this.§"!p§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§]!%§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§!@§ = param1.readUnsignedInt();
               this.§'!r§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§ "6§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §^!L§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§?" § === §'§ && !this.§0y§)
         {
            if(§"5§ || §4"'§)
            {
               param1.readBytes(this.§0!#§,0,this.§@"&§);
            }
            else
            {
               if(!this.§'!r§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§0!#§.writeByte(120);
               _loc2_ = ~this.§[!s§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§0!#§.writeByte(_loc2_);
               param1.readBytes(this.§0!#§,2,this.§@"&§);
               this.§0!#§.position = this.§0!#§.length;
               this.§0!#§.writeUnsignedInt(this.§!@§);
            }
            this.§=w§ = true;
         }
         else
         {
            if(this.§?" § != §,R§)
            {
               throw new Error("Compression method " + this.§?" § + " is not supported.");
            }
            param1.readBytes(this.§0!#§,0,this.§@"&§);
            this.§=w§ = false;
         }
         this.§0!#§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§=w§)
         {
            if(this.§0!#§.length > 0)
            {
               this.§0!#§.position = 0;
               this.§8y§ = this.§0!#§.length;
               if(§4"'§)
               {
                  this.§0!#§.deflate();
                  this.§@"&§ = this.§0!#§.length;
               }
               else if(§"5§)
               {
                  this.§0!#§.compress.apply(this.§0!#§,["deflate"]);
                  this.§@"&§ = this.§0!#§.length;
               }
               else
               {
                  this.§0!#§.compress();
                  this.§@"&§ = this.§0!#§.length - 6;
               }
               this.§0!#§.position = 0;
               this.§=w§ = true;
            }
            else
            {
               this.§@"&§ = 0;
               this.§8y§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§=w§ && this.§0!#§.length > 0)
         {
            this.§0!#§.position = 0;
            if(§4"'§)
            {
               this.§0!#§.inflate();
            }
            else if(§"5§)
            {
               this.§0!#§.uncompress.apply(this.§0!#§,["deflate"]);
            }
            else
            {
               this.§0!#§.uncompress();
            }
            this.§0!#§.position = 0;
            this.§=w§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§]!%§ + "\n  date:" + this.§><§ + "\n  sizeCompressed:" + this.§@"&§ + "\n  sizeUncompressed:" + this.§8y§ + "\n  versionHost:" + this.§-![§ + "\n  versionNumber:" + this.§8B§ + "\n  compressionMethod:" + this.§?" § + "\n  encrypted:" + this.§0y§ + "\n  hasDataDescriptor:" + this.§<!'§ + "\n  hasCompressedPatchedData:" + this.§6v§ + "\n  filenameEncoding:" + this.§0!9§ + "\n  crc32:" + this.§'!>§.toString(16) + "\n  adler32:" + this.§!@§.toString(16);
      }
   }
}

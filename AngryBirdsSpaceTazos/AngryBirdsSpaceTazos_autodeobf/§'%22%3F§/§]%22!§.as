package §'"?§
{
   import §,!f§.§ 4§;
   import flash.utils.*;
   
   public class §]"!§
   {
      
      public static const §>-§:int = 0;
      
      public static const §@!+§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §&!<§:int = 6;
      
      public static const §<a§:int = 7;
      
      public static const §]a§:int = 8;
      
      public static const §4G§:int = 9;
      
      public static const §??§:int = 10;
      
      protected static var §set §:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §@8§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §-!@§:int = 0;
      
      protected var §+"§:String = "2.0";
      
      protected var §-V§:int = 8;
      
      protected var §@"?§:Boolean = false;
      
      protected var §1,§:int = -1;
      
      protected var §&"!§:int = -1;
      
      protected var §[!s§:int = -1;
      
      protected var §+!=§:Boolean = false;
      
      protected var §!y§:Boolean = false;
      
      protected var §1V§:Date;
      
      protected var §`"&§:uint;
      
      protected var §!!D§:Boolean = false;
      
      protected var §8!]§:uint = 0;
      
      protected var §4">§:uint = 0;
      
      protected var §1B§:String = "";
      
      protected var §&L§:String;
      
      protected var §>!>§:Dictionary;
      
      protected var §&p§:String = "";
      
      protected var §0!Y§:ByteArray;
      
      var §%0§:uint;
      
      var §2!p§:uint = 0;
      
      var §5!M§:uint = 0;
      
      protected var §3!2§:Boolean = false;
      
      protected var §@!V§:Function;
      
      public function §]"!§(param1:String = "utf-8")
      {
         this.§@!V§ = this.§-!A§;
         super();
         this.§&L§ = param1;
         this.§>!>§ = new Dictionary();
         this.§0!Y§ = new ByteArray();
         this.§0!Y§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get date() : Date
      {
         return this.§1V§;
      }
      
      public function set date(param1:Date) : void
      {
         this.§1V§ = param1 != null ? param1 : new Date();
      }
      
      public function get §0^§() : String
      {
         return this.§1B§;
      }
      
      public function set §0^§(param1:String) : void
      {
         this.§1B§ = param1;
      }
      
      function get §='§() : Boolean
      {
         return this.§+!=§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§3!2§)
         {
            this.uncompress();
         }
         return this.§0!Y§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§`!5§(param1);
      }
      
      public function §`!5§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§0!Y§,0,param1.length);
            this.§%0§ = § 4§.§6!8§(this.§0!Y§);
            this.§!!D§ = false;
         }
         else
         {
            this.§0!Y§.length = 0;
            this.§0!Y§.position = 0;
            this.§3!2§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§5!M§ = this.§2!p§ = this.§0!Y§.length;
         }
      }
      
      public function get §[`§() : String
      {
         return this.§+"§;
      }
      
      public function get §#"1§() : uint
      {
         return this.§2!p§;
      }
      
      public function get §@!3§() : uint
      {
         return this.§5!M§;
      }
      
      public function §'!<§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§3!2§)
         {
            this.uncompress();
         }
         this.§0!Y§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§0!Y§.readUTFBytes(this.§0!Y§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§0!Y§.readMultiByte(this.§0!Y§.bytesAvailable,param2);
         }
         this.§0!Y§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §@7§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§0!Y§.length = 0;
         this.§0!Y§.position = 0;
         this.§3!2§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§0!Y§.writeUTFBytes(param1);
            }
            else
            {
               this.§0!Y§.writeMultiByte(param1,param2);
            }
            this.§%0§ = § 4§.§6!8§(this.§0!Y§);
            this.§!!D§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§5!M§ = this.§2!p§ = this.§0!Y§.length;
         }
      }
      
      public function §?l§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§]"'§.§@4§);
            param1.writeShort(this.§-!@§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§]"'§.§^o§);
         }
         param1.writeShort(this.§-!@§ << 8 | 20);
         param1.writeShort(this.§&L§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§3!2§ ? int(§]a§) : int(§>-§));
         var _loc5_:Date = this.§1V§ != null ? this.§1V§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§%0§);
         param1.writeUnsignedInt(this.§2!p§);
         param1.writeUnsignedInt(this.§5!M§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§&L§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§1B§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§1B§,this.§&L§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§>!>§)
         {
            if((_loc15_ = this.§>!>§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§!!D§)
            {
               if(_loc16_ = this.§3!2§)
               {
                  this.uncompress();
               }
               this.§`"&§ = § 4§.§@!$§(this.§0!Y§,0,this.§0!Y§.length);
               this.§!!D§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§`"&§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§&p§.length > 0)
         {
            if(this.§&L§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§&p§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§&p§,this.§&L§);
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
         if(!param3 && this.§0!Y§.length > 0)
         {
            if(this.§3!2§)
            {
               if(§set § || §@8§)
               {
                  _loc13_ = this.§0!Y§.length;
                  param1.writeBytes(this.§0!Y§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§0!Y§.length - 6;
                  param1.writeBytes(this.§0!Y§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§0!Y§.length;
               param1.writeBytes(this.§0!Y§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§@!V§(param1))
         {
         }
         return this.§@!V§ === this.§+!7§;
      }
      
      protected function §+!7§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §-!A§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§%!4§(param1);
            if(this.§8!]§ + this.§4">§ > 0)
            {
               this.§@!V§ = this.§[T§;
            }
            else
            {
               this.§@!V§ = this.§^!K§;
            }
            return true;
         }
         return false;
      }
      
      protected function §[T§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§8!]§ + this.§4">§)
         {
            this.§,g§(param1);
            this.§@!V§ = this.§^!K§;
            return true;
         }
         return false;
      }
      
      protected function §^!K§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§+!=§)
         {
            this.§@!V§ = this.§+!7§;
            _loc2_ = false;
         }
         else if(this.§2!p§ == 0)
         {
            this.§@!V§ = this.§+!7§;
         }
         else if(param1.bytesAvailable >= this.§2!p§)
         {
            this.§&S§(param1);
            this.§@!V§ = this.§+!7§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §%!4§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§-!@§ = _loc2_ >> 8;
         this.§+"§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§-V§ = param1.readUnsignedShort();
         this.§@"?§ = (_loc3_ & 1) !== 0;
         this.§+!=§ = (_loc3_ & 8) !== 0;
         this.§!y§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§&L§ = "utf-8";
         }
         if(this.§-V§ === §&!<§)
         {
            this.§1,§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§&"!§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§-V§ === §]a§)
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
         this.§1V§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§%0§ = param1.readUnsignedInt();
         this.§2!p§ = param1.readUnsignedInt();
         this.§5!M§ = param1.readUnsignedInt();
         this.§8!]§ = param1.readUnsignedShort();
         this.§4">§ = param1.readUnsignedShort();
      }
      
      protected function §,g§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§&L§ == "utf-8")
         {
            this.§1B§ = param1.readUTFBytes(this.§8!]§);
         }
         else
         {
            this.§1B§ = param1.readMultiByte(this.§8!]§,this.§&L§);
         }
         var _loc2_:uint = this.§4">§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§1B§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§`"&§ = param1.readUnsignedInt();
               this.§!!D§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§>!>§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §&S§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§-V§ === §]a§ && !this.§@"?§)
         {
            if(§set § || §@8§)
            {
               param1.readBytes(this.§0!Y§,0,this.§2!p§);
            }
            else
            {
               if(!this.§!!D§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§0!Y§.writeByte(120);
               _loc2_ = ~this.§[!s§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§0!Y§.writeByte(_loc2_);
               param1.readBytes(this.§0!Y§,2,this.§2!p§);
               this.§0!Y§.position = this.§0!Y§.length;
               this.§0!Y§.writeUnsignedInt(this.§`"&§);
            }
            this.§3!2§ = true;
         }
         else
         {
            if(this.§-V§ != §>-§)
            {
               throw new Error("Compression method " + this.§-V§ + " is not supported.");
            }
            param1.readBytes(this.§0!Y§,0,this.§2!p§);
            this.§3!2§ = false;
         }
         this.§0!Y§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§3!2§)
         {
            if(this.§0!Y§.length > 0)
            {
               this.§0!Y§.position = 0;
               this.§5!M§ = this.§0!Y§.length;
               if(§@8§)
               {
                  this.§0!Y§.deflate();
                  this.§2!p§ = this.§0!Y§.length;
               }
               else if(§set §)
               {
                  this.§0!Y§.compress.apply(this.§0!Y§,["deflate"]);
                  this.§2!p§ = this.§0!Y§.length;
               }
               else
               {
                  this.§0!Y§.compress();
                  this.§2!p§ = this.§0!Y§.length - 6;
               }
               this.§0!Y§.position = 0;
               this.§3!2§ = true;
            }
            else
            {
               this.§2!p§ = 0;
               this.§5!M§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§3!2§ && this.§0!Y§.length > 0)
         {
            this.§0!Y§.position = 0;
            if(§@8§)
            {
               this.§0!Y§.inflate();
            }
            else if(§set §)
            {
               this.§0!Y§.uncompress.apply(this.§0!Y§,["deflate"]);
            }
            else
            {
               this.§0!Y§.uncompress();
            }
            this.§0!Y§.position = 0;
            this.§3!2§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§1B§ + "\n  date:" + this.§1V§ + "\n  sizeCompressed:" + this.§2!p§ + "\n  sizeUncompressed:" + this.§5!M§ + "\n  versionHost:" + this.§-!@§ + "\n  versionNumber:" + this.§+"§ + "\n  compressionMethod:" + this.§-V§ + "\n  encrypted:" + this.§@"?§ + "\n  hasDataDescriptor:" + this.§+!=§ + "\n  hasCompressedPatchedData:" + this.§!y§ + "\n  filenameEncoding:" + this.§&L§ + "\n  crc32:" + this.§%0§.toString(16) + "\n  adler32:" + this.§`"&§.toString(16);
      }
   }
}

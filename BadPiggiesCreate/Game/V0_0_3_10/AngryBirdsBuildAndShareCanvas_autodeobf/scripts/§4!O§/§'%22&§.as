package §4!O§
{
   import §>"1§.§1!a§;
   import flash.utils.*;
   
   public class §'"&§
   {
      
      public static const §9!K§:int = 0;
      
      public static const §`X§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §,!u§:int = 6;
      
      public static const §+"$§:int = 7;
      
      public static const §6e§:int = 8;
      
      public static const §]!=§:int = 9;
      
      public static const §?h§:int = 10;
      
      protected static var §^!r§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §-!H§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §?!I§:int = 0;
      
      protected var §3!$§:String = "2.0";
      
      protected var §&!^§:int = 8;
      
      protected var §3!a§:Boolean = false;
      
      protected var §&!B§:int = -1;
      
      protected var §8!$§:int = -1;
      
      protected var §8!X§:int = -1;
      
      protected var § !w§:Boolean = false;
      
      protected var §@=§:Boolean = false;
      
      protected var §^<§:Date;
      
      protected var §[!L§:uint;
      
      protected var § !6§:Boolean = false;
      
      protected var §,!6§:uint = 0;
      
      protected var §,§:uint = 0;
      
      protected var §<"#§:String = "";
      
      protected var §'!x§:String;
      
      protected var §@!N§:Dictionary;
      
      protected var §!5§:String = "";
      
      protected var §,2§:ByteArray;
      
      var §8!a§:uint;
      
      var §9h§:uint = 0;
      
      var §!P§:uint = 0;
      
      protected var §8!M§:Boolean = false;
      
      protected var §#n§:Function;
      
      public function §'"&§(param1:String = "utf-8")
      {
         this.§#n§ = this.§;&§;
         super();
         this.§'!x§ = param1;
         this.§@!N§ = new Dictionary();
         this.§,2§ = new ByteArray();
         this.§,2§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §-b§() : Date
      {
         return this.§^<§;
      }
      
      public function set §-b§(param1:Date) : void
      {
         this.§^<§ = param1 != null ? param1 : new Date();
      }
      
      public function get §6!S§() : String
      {
         return this.§<"#§;
      }
      
      public function set §6!S§(param1:String) : void
      {
         this.§<"#§ = param1;
      }
      
      function get §8<§() : Boolean
      {
         return this.§ !w§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§8!M§)
         {
            this.uncompress();
         }
         return this.§,2§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§,!r§(param1);
      }
      
      public function §,!r§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§,2§,0,param1.length);
            this.§8!a§ = §1!a§.§#H§(this.§,2§);
            this.§ !6§ = false;
         }
         else
         {
            this.§,2§.length = 0;
            this.§,2§.position = 0;
            this.§8!M§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§!P§ = this.§9h§ = this.§,2§.length;
         }
      }
      
      public function get §2"§() : String
      {
         return this.§3!$§;
      }
      
      public function get §set §() : uint
      {
         return this.§9h§;
      }
      
      public function get §4!;§() : uint
      {
         return this.§!P§;
      }
      
      public function §?D§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§8!M§)
         {
            this.uncompress();
         }
         this.§,2§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§,2§.readUTFBytes(this.§,2§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§,2§.readMultiByte(this.§,2§.bytesAvailable,param2);
         }
         this.§,2§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §;l§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§,2§.length = 0;
         this.§,2§.position = 0;
         this.§8!M§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§,2§.writeUTFBytes(param1);
            }
            else
            {
               this.§,2§.writeMultiByte(param1,param2);
            }
            this.§8!a§ = §1!a§.§#H§(this.§,2§);
            this.§ !6§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§!P§ = this.§9h§ = this.§,2§.length;
         }
      }
      
      public function §"3§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§!V§.§4!9§);
            param1.writeShort(this.§?!I§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§!V§.§ !5§);
         }
         param1.writeShort(this.§?!I§ << 8 | 20);
         param1.writeShort(this.§'!x§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§8!M§ ? int(§6e§) : int(§9!K§));
         var _loc5_:Date = this.§^<§ != null ? this.§^<§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§8!a§);
         param1.writeUnsignedInt(this.§9h§);
         param1.writeUnsignedInt(this.§!P§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§'!x§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§<"#§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§<"#§,this.§'!x§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§@!N§)
         {
            if((_loc15_ = this.§@!N§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§ !6§)
            {
               if(_loc16_ = this.§8!M§)
               {
                  this.uncompress();
               }
               this.§[!L§ = §1!a§.§9l§(this.§,2§,0,this.§,2§.length);
               this.§ !6§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§[!L§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§!5§.length > 0)
         {
            if(this.§'!x§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§!5§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§!5§,this.§'!x§);
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
         if(!param3 && this.§,2§.length > 0)
         {
            if(this.§8!M§)
            {
               if(§^!r§ || §-!H§)
               {
                  _loc13_ = this.§,2§.length;
                  param1.writeBytes(this.§,2§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§,2§.length - 6;
                  param1.writeBytes(this.§,2§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§,2§.length;
               param1.writeBytes(this.§,2§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§#n§(param1))
         {
         }
         return this.§#n§ === this.§?!0§;
      }
      
      protected function §?!0§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §;&§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§>!p§(param1);
            if(this.§,!6§ + this.§,§ > 0)
            {
               this.§#n§ = this.§-!R§;
            }
            else
            {
               this.§#n§ = this.§0!H§;
            }
            return true;
         }
         return false;
      }
      
      protected function §-!R§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§,!6§ + this.§,§)
         {
            this.§7"5§(param1);
            this.§#n§ = this.§0!H§;
            return true;
         }
         return false;
      }
      
      protected function §0!H§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§ !w§)
         {
            this.§#n§ = this.§?!0§;
            _loc2_ = false;
         }
         else if(this.§9h§ == 0)
         {
            this.§#n§ = this.§?!0§;
         }
         else if(param1.bytesAvailable >= this.§9h§)
         {
            this.§ c§(param1);
            this.§#n§ = this.§?!0§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §>!p§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§?!I§ = _loc2_ >> 8;
         this.§3!$§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§&!^§ = param1.readUnsignedShort();
         this.§3!a§ = (_loc3_ & 1) !== 0;
         this.§ !w§ = (_loc3_ & 8) !== 0;
         this.§@=§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§'!x§ = "utf-8";
         }
         if(this.§&!^§ === §,!u§)
         {
            this.§&!B§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§8!$§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§&!^§ === §6e§)
         {
            this.§8!X§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§^<§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§8!a§ = param1.readUnsignedInt();
         this.§9h§ = param1.readUnsignedInt();
         this.§!P§ = param1.readUnsignedInt();
         this.§,!6§ = param1.readUnsignedShort();
         this.§,§ = param1.readUnsignedShort();
      }
      
      protected function §7"5§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§'!x§ == "utf-8")
         {
            this.§<"#§ = param1.readUTFBytes(this.§,!6§);
         }
         else
         {
            this.§<"#§ = param1.readMultiByte(this.§,!6§,this.§'!x§);
         }
         var _loc2_:uint = this.§,§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§<"#§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§[!L§ = param1.readUnsignedInt();
               this.§ !6§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§@!N§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function § c§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§&!^§ === §6e§ && !this.§3!a§)
         {
            if(§^!r§ || §-!H§)
            {
               param1.readBytes(this.§,2§,0,this.§9h§);
            }
            else
            {
               if(!this.§ !6§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§,2§.writeByte(120);
               _loc2_ = ~this.§8!X§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§,2§.writeByte(_loc2_);
               param1.readBytes(this.§,2§,2,this.§9h§);
               this.§,2§.position = this.§,2§.length;
               this.§,2§.writeUnsignedInt(this.§[!L§);
            }
            this.§8!M§ = true;
         }
         else
         {
            if(this.§&!^§ != §9!K§)
            {
               throw new Error("Compression method " + this.§&!^§ + " is not supported.");
            }
            param1.readBytes(this.§,2§,0,this.§9h§);
            this.§8!M§ = false;
         }
         this.§,2§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§8!M§)
         {
            if(this.§,2§.length > 0)
            {
               this.§,2§.position = 0;
               this.§!P§ = this.§,2§.length;
               if(§-!H§)
               {
                  this.§,2§.deflate();
                  this.§9h§ = this.§,2§.length;
               }
               else if(§^!r§)
               {
                  this.§,2§.compress.apply(this.§,2§,["deflate"]);
                  this.§9h§ = this.§,2§.length;
               }
               else
               {
                  this.§,2§.compress();
                  this.§9h§ = this.§,2§.length - 6;
               }
               this.§,2§.position = 0;
               this.§8!M§ = true;
            }
            else
            {
               this.§9h§ = 0;
               this.§!P§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§8!M§ && this.§,2§.length > 0)
         {
            this.§,2§.position = 0;
            if(§-!H§)
            {
               this.§,2§.inflate();
            }
            else if(§^!r§)
            {
               this.§,2§.uncompress.apply(this.§,2§,["deflate"]);
            }
            else
            {
               this.§,2§.uncompress();
            }
            this.§,2§.position = 0;
            this.§8!M§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§<"#§ + "\n  date:" + this.§^<§ + "\n  sizeCompressed:" + this.§9h§ + "\n  sizeUncompressed:" + this.§!P§ + "\n  versionHost:" + this.§?!I§ + "\n  versionNumber:" + this.§3!$§ + "\n  compressionMethod:" + this.§&!^§ + "\n  encrypted:" + this.§3!a§ + "\n  hasDataDescriptor:" + this.§ !w§ + "\n  hasCompressedPatchedData:" + this.§@=§ + "\n  filenameEncoding:" + this.§'!x§ + "\n  crc32:" + this.§8!a§.toString(16) + "\n  adler32:" + this.§[!L§.toString(16);
      }
   }
}

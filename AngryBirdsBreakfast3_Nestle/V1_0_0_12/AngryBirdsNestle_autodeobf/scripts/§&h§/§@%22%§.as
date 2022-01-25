package §&h§
{
   import §>!Y§.§%?§;
   import flash.utils.*;
   
   public class §@"%§
   {
      
      public static const §,!l§:int = 0;
      
      public static const §4^§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §0!]§:int = 6;
      
      public static const §?!s§:int = 7;
      
      public static const §9!H§:int = 8;
      
      public static const §2!M§:int = 9;
      
      public static const §?!J§:int = 10;
      
      protected static var §0!o§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §&!q§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §]" §:int = 0;
      
      protected var §5!D§:String = "2.0";
      
      protected var §0!C§:int = 8;
      
      protected var §[u§:Boolean = false;
      
      protected var §<!6§:int = -1;
      
      protected var §^!F§:int = -1;
      
      protected var §4!1§:int = -1;
      
      protected var §4!M§:Boolean = false;
      
      protected var §;!X§:Boolean = false;
      
      protected var §-!F§:Date;
      
      protected var §+!d§:uint;
      
      protected var §-!g§:Boolean = false;
      
      protected var §5x§:uint = 0;
      
      protected var §]!K§:uint = 0;
      
      protected var §4!b§:String = "";
      
      protected var §0L§:String;
      
      protected var §>r§:Dictionary;
      
      protected var § c§:String = "";
      
      protected var §7!e§:ByteArray;
      
      var §&!S§:uint;
      
      var §@!§:uint = 0;
      
      var § !k§:uint = 0;
      
      protected var §>"'§:Boolean = false;
      
      protected var §3>§:Function;
      
      public function §@"%§(param1:String = "utf-8")
      {
         this.§3>§ = this.§1g§;
         super();
         this.§0L§ = param1;
         this.§>r§ = new Dictionary();
         this.§7!e§ = new ByteArray();
         this.§7!e§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §@!E§() : Date
      {
         return this.§-!F§;
      }
      
      public function set §@!E§(param1:Date) : void
      {
         this.§-!F§ = param1 != null ? param1 : new Date();
      }
      
      public function get §'r§() : String
      {
         return this.§4!b§;
      }
      
      public function set §'r§(param1:String) : void
      {
         this.§4!b§ = param1;
      }
      
      function get §8D§() : Boolean
      {
         return this.§4!M§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§>"'§)
         {
            this.uncompress();
         }
         return this.§7!e§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§+!Z§(param1);
      }
      
      public function §+!Z§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§7!e§,0,param1.length);
            this.§&!S§ = §%?§.§1G§(this.§7!e§);
            this.§-!g§ = false;
         }
         else
         {
            this.§7!e§.length = 0;
            this.§7!e§.position = 0;
            this.§>"'§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§ !k§ = this.§@!§ = this.§7!e§.length;
         }
      }
      
      public function get §'!j§() : String
      {
         return this.§5!D§;
      }
      
      public function get §+=§() : uint
      {
         return this.§@!§;
      }
      
      public function get §7!Q§() : uint
      {
         return this.§ !k§;
      }
      
      public function §#"4§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§>"'§)
         {
            this.uncompress();
         }
         this.§7!e§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§7!e§.readUTFBytes(this.§7!e§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§7!e§.readMultiByte(this.§7!e§.bytesAvailable,param2);
         }
         this.§7!e§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §%!^§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§7!e§.length = 0;
         this.§7!e§.position = 0;
         this.§>"'§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§7!e§.writeUTFBytes(param1);
            }
            else
            {
               this.§7!e§.writeMultiByte(param1,param2);
            }
            this.§&!S§ = §%?§.§1G§(this.§7!e§);
            this.§-!g§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§ !k§ = this.§@!§ = this.§7!e§.length;
         }
      }
      
      public function §=_§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§]t§.§%1§);
            param1.writeShort(this.§]" § << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§]t§.§%S§);
         }
         param1.writeShort(this.§]" § << 8 | 20);
         param1.writeShort(this.§0L§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§>"'§ ? int(§9!H§) : int(§,!l§));
         var _loc5_:Date = this.§-!F§ != null ? this.§-!F§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§&!S§);
         param1.writeUnsignedInt(this.§@!§);
         param1.writeUnsignedInt(this.§ !k§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§0L§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§4!b§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§4!b§,this.§0L§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§>r§)
         {
            if((_loc15_ = this.§>r§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§-!g§)
            {
               if(_loc16_ = this.§>"'§)
               {
                  this.uncompress();
               }
               this.§+!d§ = §%?§.§%,§(this.§7!e§,0,this.§7!e§.length);
               this.§-!g§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§+!d§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§ c§.length > 0)
         {
            if(this.§0L§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§ c§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§ c§,this.§0L§);
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
         if(!param3 && this.§7!e§.length > 0)
         {
            if(this.§>"'§)
            {
               if(§0!o§ || §&!q§)
               {
                  _loc13_ = this.§7!e§.length;
                  param1.writeBytes(this.§7!e§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§7!e§.length - 6;
                  param1.writeBytes(this.§7!e§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§7!e§.length;
               param1.writeBytes(this.§7!e§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§3>§(param1))
         {
         }
         return this.§3>§ === this.§%""§;
      }
      
      protected function §%""§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §1g§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§ !O§(param1);
            if(this.§5x§ + this.§]!K§ > 0)
            {
               this.§3>§ = this.§<!s§;
            }
            else
            {
               this.§3>§ = this.§8$§;
            }
            return true;
         }
         return false;
      }
      
      protected function §<!s§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§5x§ + this.§]!K§)
         {
            this.§ ]§(param1);
            this.§3>§ = this.§8$§;
            return true;
         }
         return false;
      }
      
      protected function §8$§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§4!M§)
         {
            this.§3>§ = this.§%""§;
            _loc2_ = false;
         }
         else if(this.§@!§ == 0)
         {
            this.§3>§ = this.§%""§;
         }
         else if(param1.bytesAvailable >= this.§@!§)
         {
            this.parseContent(param1);
            this.§3>§ = this.§%""§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function § !O§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§]" § = _loc2_ >> 8;
         this.§5!D§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§0!C§ = param1.readUnsignedShort();
         this.§[u§ = (_loc3_ & 1) !== 0;
         this.§4!M§ = (_loc3_ & 8) !== 0;
         this.§;!X§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§0L§ = "utf-8";
         }
         if(this.§0!C§ === §0!]§)
         {
            this.§<!6§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§^!F§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§0!C§ === §9!H§)
         {
            this.§4!1§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§-!F§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§&!S§ = param1.readUnsignedInt();
         this.§@!§ = param1.readUnsignedInt();
         this.§ !k§ = param1.readUnsignedInt();
         this.§5x§ = param1.readUnsignedShort();
         this.§]!K§ = param1.readUnsignedShort();
      }
      
      protected function § ]§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§0L§ == "utf-8")
         {
            this.§4!b§ = param1.readUTFBytes(this.§5x§);
         }
         else
         {
            this.§4!b§ = param1.readMultiByte(this.§5x§,this.§0L§);
         }
         var _loc2_:uint = this.§]!K§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§4!b§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§+!d§ = param1.readUnsignedInt();
               this.§-!g§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§>r§[_loc3_] = _loc5_;
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
         if(this.§0!C§ === §9!H§ && !this.§[u§)
         {
            if(§0!o§ || §&!q§)
            {
               param1.readBytes(this.§7!e§,0,this.§@!§);
            }
            else
            {
               if(!this.§-!g§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§7!e§.writeByte(120);
               _loc2_ = ~this.§4!1§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§7!e§.writeByte(_loc2_);
               param1.readBytes(this.§7!e§,2,this.§@!§);
               this.§7!e§.position = this.§7!e§.length;
               this.§7!e§.writeUnsignedInt(this.§+!d§);
            }
            this.§>"'§ = true;
         }
         else
         {
            if(this.§0!C§ != §,!l§)
            {
               throw new Error("Compression method " + this.§0!C§ + " is not supported.");
            }
            param1.readBytes(this.§7!e§,0,this.§@!§);
            this.§>"'§ = false;
         }
         this.§7!e§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§>"'§)
         {
            if(this.§7!e§.length > 0)
            {
               this.§7!e§.position = 0;
               this.§ !k§ = this.§7!e§.length;
               if(§&!q§)
               {
                  this.§7!e§.deflate();
                  this.§@!§ = this.§7!e§.length;
               }
               else if(§0!o§)
               {
                  this.§7!e§.compress.apply(this.§7!e§,["deflate"]);
                  this.§@!§ = this.§7!e§.length;
               }
               else
               {
                  this.§7!e§.compress();
                  this.§@!§ = this.§7!e§.length - 6;
               }
               this.§7!e§.position = 0;
               this.§>"'§ = true;
            }
            else
            {
               this.§@!§ = 0;
               this.§ !k§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§>"'§ && this.§7!e§.length > 0)
         {
            this.§7!e§.position = 0;
            if(§&!q§)
            {
               this.§7!e§.inflate();
            }
            else if(§0!o§)
            {
               this.§7!e§.uncompress.apply(this.§7!e§,["deflate"]);
            }
            else
            {
               this.§7!e§.uncompress();
            }
            this.§7!e§.position = 0;
            this.§>"'§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§4!b§ + "\n  date:" + this.§-!F§ + "\n  sizeCompressed:" + this.§@!§ + "\n  sizeUncompressed:" + this.§ !k§ + "\n  versionHost:" + this.§]" § + "\n  versionNumber:" + this.§5!D§ + "\n  compressionMethod:" + this.§0!C§ + "\n  encrypted:" + this.§[u§ + "\n  hasDataDescriptor:" + this.§4!M§ + "\n  hasCompressedPatchedData:" + this.§;!X§ + "\n  filenameEncoding:" + this.§0L§ + "\n  crc32:" + this.§&!S§.toString(16) + "\n  adler32:" + this.§+!d§.toString(16);
      }
   }
}

package §?!Y§
{
   import §?"§.§7K§;
   import flash.utils.*;
   
   public class §1K§
   {
      
      public static const §7!C§:int = 0;
      
      public static const §7!L§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §^!$§:int = 6;
      
      public static const §01§:int = 7;
      
      public static const §^<§:int = 8;
      
      public static const §-!R§:int = 9;
      
      public static const §"!`§:int = 10;
      
      protected static var §]3§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §6!]§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §3k§:int = 0;
      
      protected var §?U§:String = "2.0";
      
      protected var §'5§:int = 8;
      
      protected var §=U§:Boolean = false;
      
      protected var §7q§:int = -1;
      
      protected var §9!`§:int = -1;
      
      protected var §`3§:int = -1;
      
      protected var §[h§:Boolean = false;
      
      protected var § !W§:Boolean = false;
      
      protected var §-o§:Date;
      
      protected var §0"§:uint;
      
      protected var §>!L§:Boolean = false;
      
      protected var §=s§:uint = 0;
      
      protected var §-!I§:uint = 0;
      
      protected var §?!T§:String = "";
      
      protected var §;O§:String;
      
      protected var §5B§:Dictionary;
      
      protected var §'!F§:String = "";
      
      protected var §`S§:ByteArray;
      
      var §`V§:uint;
      
      var §[!%§:uint = 0;
      
      var §%!c§:uint = 0;
      
      protected var §;!'§:Boolean = false;
      
      protected var §=H§:Function;
      
      public function §1K§(param1:String = "utf-8")
      {
         this.§=H§ = this.§4H§;
         super();
         this.§;O§ = param1;
         this.§5B§ = new Dictionary();
         this.§`S§ = new ByteArray();
         this.§`S§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §]z§() : Date
      {
         return this.§-o§;
      }
      
      public function set §]z§(param1:Date) : void
      {
         this.§-o§ = param1 != null ? param1 : new Date();
      }
      
      public function get §7d§() : String
      {
         return this.§?!T§;
      }
      
      public function set §7d§(param1:String) : void
      {
         this.§?!T§ = param1;
      }
      
      function get §7!H§() : Boolean
      {
         return this.§[h§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§;!'§)
         {
            this.uncompress();
         }
         return this.§`S§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§<!A§(param1);
      }
      
      public function §<!A§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§`S§,0,param1.length);
            this.§`V§ = §7K§.§%1§(this.§`S§);
            this.§>!L§ = false;
         }
         else
         {
            this.§`S§.length = 0;
            this.§`S§.position = 0;
            this.§;!'§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§%!c§ = this.§[!%§ = this.§`S§.length;
         }
      }
      
      public function get §5u§() : String
      {
         return this.§?U§;
      }
      
      public function get §,!`§() : uint
      {
         return this.§[!%§;
      }
      
      public function get §1!U§() : uint
      {
         return this.§%!c§;
      }
      
      public function §>!$§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§;!'§)
         {
            this.uncompress();
         }
         this.§`S§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§`S§.readUTFBytes(this.§`S§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§`S§.readMultiByte(this.§`S§.bytesAvailable,param2);
         }
         this.§`S§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §8O§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§`S§.length = 0;
         this.§`S§.position = 0;
         this.§;!'§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§`S§.writeUTFBytes(param1);
            }
            else
            {
               this.§`S§.writeMultiByte(param1,param2);
            }
            this.§`V§ = §7K§.§%1§(this.§`S§);
            this.§>!L§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§%!c§ = this.§[!%§ = this.§`S§.length;
         }
      }
      
      public function §;`§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§#G§.§"C§);
            param1.writeShort(this.§3k§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§#G§.§"!2§);
         }
         param1.writeShort(this.§3k§ << 8 | 20);
         param1.writeShort(this.§;O§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§;!'§ ? int(§^<§) : int(§7!C§));
         var _loc5_:Date = this.§-o§ != null ? this.§-o§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§`V§);
         param1.writeUnsignedInt(this.§[!%§);
         param1.writeUnsignedInt(this.§%!c§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§;O§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§?!T§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§?!T§,this.§;O§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§5B§)
         {
            if((_loc15_ = this.§5B§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§>!L§)
            {
               if(_loc16_ = this.§;!'§)
               {
                  this.uncompress();
               }
               this.§0"§ = §7K§.§`B§(this.§`S§,0,this.§`S§.length);
               this.§>!L§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§0"§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§'!F§.length > 0)
         {
            if(this.§;O§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§'!F§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§'!F§,this.§;O§);
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
         if(!param3 && this.§`S§.length > 0)
         {
            if(this.§;!'§)
            {
               if(§]3§ || §6!]§)
               {
                  _loc13_ = this.§`S§.length;
                  param1.writeBytes(this.§`S§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§`S§.length - 6;
                  param1.writeBytes(this.§`S§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§`S§.length;
               param1.writeBytes(this.§`S§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§=H§(param1))
         {
         }
         return this.§=H§ === this.§[0§;
      }
      
      protected function §[0§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §4H§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§9!@§(param1);
            if(this.§=s§ + this.§-!I§ > 0)
            {
               this.§=H§ = this.§`$§;
            }
            else
            {
               this.§=H§ = this.§,!Y§;
            }
            return true;
         }
         return false;
      }
      
      protected function §`$§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§=s§ + this.§-!I§)
         {
            this.§`c§(param1);
            this.§=H§ = this.§,!Y§;
            return true;
         }
         return false;
      }
      
      protected function §,!Y§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§[h§)
         {
            this.§=H§ = this.§[0§;
            _loc2_ = false;
         }
         else if(this.§[!%§ == 0)
         {
            this.§=H§ = this.§[0§;
         }
         else if(param1.bytesAvailable >= this.§[!%§)
         {
            this.§`I§(param1);
            this.§=H§ = this.§[0§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §9!@§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§3k§ = _loc2_ >> 8;
         this.§?U§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§'5§ = param1.readUnsignedShort();
         this.§=U§ = (_loc3_ & 1) !== 0;
         this.§[h§ = (_loc3_ & 8) !== 0;
         this.§ !W§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§;O§ = "utf-8";
         }
         if(this.§'5§ === §^!$§)
         {
            this.§7q§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§9!`§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§'5§ === §^<§)
         {
            this.§`3§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§-o§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§`V§ = param1.readUnsignedInt();
         this.§[!%§ = param1.readUnsignedInt();
         this.§%!c§ = param1.readUnsignedInt();
         this.§=s§ = param1.readUnsignedShort();
         this.§-!I§ = param1.readUnsignedShort();
      }
      
      protected function §`c§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§;O§ == "utf-8")
         {
            this.§?!T§ = param1.readUTFBytes(this.§=s§);
         }
         else
         {
            this.§?!T§ = param1.readMultiByte(this.§=s§,this.§;O§);
         }
         var _loc2_:uint = this.§-!I§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§?!T§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§0"§ = param1.readUnsignedInt();
               this.§>!L§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§5B§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §`I§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§'5§ === §^<§ && !this.§=U§)
         {
            if(§]3§ || §6!]§)
            {
               param1.readBytes(this.§`S§,0,this.§[!%§);
            }
            else
            {
               if(!this.§>!L§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§`S§.writeByte(120);
               _loc2_ = ~this.§`3§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§`S§.writeByte(_loc2_);
               param1.readBytes(this.§`S§,2,this.§[!%§);
               this.§`S§.position = this.§`S§.length;
               this.§`S§.writeUnsignedInt(this.§0"§);
            }
            this.§;!'§ = true;
         }
         else
         {
            if(this.§'5§ != §7!C§)
            {
               throw new Error("Compression method " + this.§'5§ + " is not supported.");
            }
            param1.readBytes(this.§`S§,0,this.§[!%§);
            this.§;!'§ = false;
         }
         this.§`S§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§;!'§)
         {
            if(this.§`S§.length > 0)
            {
               this.§`S§.position = 0;
               this.§%!c§ = this.§`S§.length;
               if(§6!]§)
               {
                  this.§`S§.deflate();
                  this.§[!%§ = this.§`S§.length;
               }
               else if(§]3§)
               {
                  this.§`S§.compress.apply(this.§`S§,["deflate"]);
                  this.§[!%§ = this.§`S§.length;
               }
               else
               {
                  this.§`S§.compress();
                  this.§[!%§ = this.§`S§.length - 6;
               }
               this.§`S§.position = 0;
               this.§;!'§ = true;
            }
            else
            {
               this.§[!%§ = 0;
               this.§%!c§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§;!'§ && this.§`S§.length > 0)
         {
            this.§`S§.position = 0;
            if(§6!]§)
            {
               this.§`S§.inflate();
            }
            else if(§]3§)
            {
               this.§`S§.uncompress.apply(this.§`S§,["deflate"]);
            }
            else
            {
               this.§`S§.uncompress();
            }
            this.§`S§.position = 0;
            this.§;!'§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§?!T§ + "\n  date:" + this.§-o§ + "\n  sizeCompressed:" + this.§[!%§ + "\n  sizeUncompressed:" + this.§%!c§ + "\n  versionHost:" + this.§3k§ + "\n  versionNumber:" + this.§?U§ + "\n  compressionMethod:" + this.§'5§ + "\n  encrypted:" + this.§=U§ + "\n  hasDataDescriptor:" + this.§[h§ + "\n  hasCompressedPatchedData:" + this.§ !W§ + "\n  filenameEncoding:" + this.§;O§ + "\n  crc32:" + this.§`V§.toString(16) + "\n  adler32:" + this.§0"§.toString(16);
      }
   }
}

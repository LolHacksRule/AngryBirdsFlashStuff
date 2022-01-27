package §?P§
{
   import §,p§.§`!D§;
   import flash.utils.*;
   
   public class §,!Q§
   {
      
      public static const §@O§:int = 0;
      
      public static const §8!D§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §'!H§:int = 6;
      
      public static const §2"§:int = 7;
      
      public static const §3;§:int = 8;
      
      public static const §,T§:int = 9;
      
      public static const §5n§:int = 10;
      
      protected static var §3!+§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §!R§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §[q§:int = 0;
      
      protected var §=G§:String = "2.0";
      
      protected var §8e§:int = 8;
      
      protected var §`Y§:Boolean = false;
      
      protected var §5t§:int = -1;
      
      protected var §1g§:int = -1;
      
      protected var §'?§:int = -1;
      
      protected var § X§:Boolean = false;
      
      protected var §4$§:Boolean = false;
      
      protected var §25§:Date;
      
      protected var §-H§:uint;
      
      protected var §@g§:Boolean = false;
      
      protected var §"!<§:uint = 0;
      
      protected var §%g§:uint = 0;
      
      protected var §2-§:String = "";
      
      protected var §-N§:String;
      
      protected var §-!!§:Dictionary;
      
      protected var §>!P§:String = "";
      
      protected var §>!7§:ByteArray;
      
      var §-2§:uint;
      
      var §&I§:uint = 0;
      
      var §]!&§:uint = 0;
      
      protected var §9C§:Boolean = false;
      
      protected var §8!J§:Function;
      
      public function §,!Q§(param1:String = "utf-8")
      {
         this.§8!J§ = this.§3g§;
         super();
         this.§-N§ = param1;
         this.§-!!§ = new Dictionary();
         this.§>!7§ = new ByteArray();
         this.§>!7§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §`B§() : Date
      {
         return this.§25§;
      }
      
      public function set §`B§(param1:Date) : void
      {
         this.§25§ = param1 != null ? param1 : new Date();
      }
      
      public function get §<!K§() : String
      {
         return this.§2-§;
      }
      
      public function set §<!K§(param1:String) : void
      {
         this.§2-§ = param1;
      }
      
      function get §&U§() : Boolean
      {
         return this.§ X§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§9C§)
         {
            this.uncompress();
         }
         return this.§>!7§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§[t§(param1);
      }
      
      public function §[t§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§>!7§,0,param1.length);
            this.§-2§ = §`!D§.§^+§(this.§>!7§);
            this.§@g§ = false;
         }
         else
         {
            this.§>!7§.length = 0;
            this.§>!7§.position = 0;
            this.§9C§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§]!&§ = this.§&I§ = this.§>!7§.length;
         }
      }
      
      public function get §-x§() : String
      {
         return this.§=G§;
      }
      
      public function get §5r§() : uint
      {
         return this.§&I§;
      }
      
      public function get §5"§() : uint
      {
         return this.§]!&§;
      }
      
      public function §@x§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§9C§)
         {
            this.uncompress();
         }
         this.§>!7§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§>!7§.readUTFBytes(this.§>!7§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§>!7§.readMultiByte(this.§>!7§.bytesAvailable,param2);
         }
         this.§>!7§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §!y§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§>!7§.length = 0;
         this.§>!7§.position = 0;
         this.§9C§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§>!7§.writeUTFBytes(param1);
            }
            else
            {
               this.§>!7§.writeMultiByte(param1,param2);
            }
            this.§-2§ = §`!D§.§^+§(this.§>!7§);
            this.§@g§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§]!&§ = this.§&I§ = this.§>!7§.length;
         }
      }
      
      public function §#!B§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§]f§.§ 4§);
            param1.writeShort(this.§[q§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§]f§.§[!6§);
         }
         param1.writeShort(this.§[q§ << 8 | 20);
         param1.writeShort(this.§-N§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§9C§ ? int(§3;§) : int(§@O§));
         var _loc5_:Date = this.§25§ != null ? this.§25§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§-2§);
         param1.writeUnsignedInt(this.§&I§);
         param1.writeUnsignedInt(this.§]!&§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§-N§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§2-§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§2-§,this.§-N§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§-!!§)
         {
            if((_loc15_ = this.§-!!§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§@g§)
            {
               if(_loc16_ = this.§9C§)
               {
                  this.uncompress();
               }
               this.§-H§ = §`!D§.§,5§(this.§>!7§,0,this.§>!7§.length);
               this.§@g§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§-H§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§>!P§.length > 0)
         {
            if(this.§-N§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§>!P§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§>!P§,this.§-N§);
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
         if(!param3 && this.§>!7§.length > 0)
         {
            if(this.§9C§)
            {
               if(§3!+§ || §!R§)
               {
                  _loc13_ = this.§>!7§.length;
                  param1.writeBytes(this.§>!7§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§>!7§.length - 6;
                  param1.writeBytes(this.§>!7§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§>!7§.length;
               param1.writeBytes(this.§>!7§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§8!J§(param1))
         {
         }
         return this.§8!J§ === this.§9A§;
      }
      
      protected function §9A§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §3g§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§4w§(param1);
            if(this.§"!<§ + this.§%g§ > 0)
            {
               this.§8!J§ = this.§<?§;
            }
            else
            {
               this.§8!J§ = this.§6!0§;
            }
            return true;
         }
         return false;
      }
      
      protected function §<?§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§"!<§ + this.§%g§)
         {
            this.§5!@§(param1);
            this.§8!J§ = this.§6!0§;
            return true;
         }
         return false;
      }
      
      protected function §6!0§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§ X§)
         {
            this.§8!J§ = this.§9A§;
            _loc2_ = false;
         }
         else if(this.§&I§ == 0)
         {
            this.§8!J§ = this.§9A§;
         }
         else if(param1.bytesAvailable >= this.§&I§)
         {
            this.§2q§(param1);
            this.§8!J§ = this.§9A§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §4w§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§[q§ = _loc2_ >> 8;
         this.§=G§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§8e§ = param1.readUnsignedShort();
         this.§`Y§ = (_loc3_ & 1) !== 0;
         this.§ X§ = (_loc3_ & 8) !== 0;
         this.§4$§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§-N§ = "utf-8";
         }
         if(this.§8e§ === §'!H§)
         {
            this.§5t§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§1g§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§8e§ === §3;§)
         {
            this.§'?§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§25§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§-2§ = param1.readUnsignedInt();
         this.§&I§ = param1.readUnsignedInt();
         this.§]!&§ = param1.readUnsignedInt();
         this.§"!<§ = param1.readUnsignedShort();
         this.§%g§ = param1.readUnsignedShort();
      }
      
      protected function §5!@§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§-N§ == "utf-8")
         {
            this.§2-§ = param1.readUTFBytes(this.§"!<§);
         }
         else
         {
            this.§2-§ = param1.readMultiByte(this.§"!<§,this.§-N§);
         }
         var _loc2_:uint = this.§%g§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§2-§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§-H§ = param1.readUnsignedInt();
               this.§@g§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§-!!§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §2q§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§8e§ === §3;§ && !this.§`Y§)
         {
            if(§3!+§ || §!R§)
            {
               param1.readBytes(this.§>!7§,0,this.§&I§);
            }
            else
            {
               if(!this.§@g§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§>!7§.writeByte(120);
               _loc2_ = ~this.§'?§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§>!7§.writeByte(_loc2_);
               param1.readBytes(this.§>!7§,2,this.§&I§);
               this.§>!7§.position = this.§>!7§.length;
               this.§>!7§.writeUnsignedInt(this.§-H§);
            }
            this.§9C§ = true;
         }
         else
         {
            if(this.§8e§ != §@O§)
            {
               throw new Error("Compression method " + this.§8e§ + " is not supported.");
            }
            param1.readBytes(this.§>!7§,0,this.§&I§);
            this.§9C§ = false;
         }
         this.§>!7§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§9C§)
         {
            if(this.§>!7§.length > 0)
            {
               this.§>!7§.position = 0;
               this.§]!&§ = this.§>!7§.length;
               if(§!R§)
               {
                  this.§>!7§.deflate();
                  this.§&I§ = this.§>!7§.length;
               }
               else if(§3!+§)
               {
                  this.§>!7§.compress.apply(this.§>!7§,["deflate"]);
                  this.§&I§ = this.§>!7§.length;
               }
               else
               {
                  this.§>!7§.compress();
                  this.§&I§ = this.§>!7§.length - 6;
               }
               this.§>!7§.position = 0;
               this.§9C§ = true;
            }
            else
            {
               this.§&I§ = 0;
               this.§]!&§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§9C§ && this.§>!7§.length > 0)
         {
            this.§>!7§.position = 0;
            if(§!R§)
            {
               this.§>!7§.inflate();
            }
            else if(§3!+§)
            {
               this.§>!7§.uncompress.apply(this.§>!7§,["deflate"]);
            }
            else
            {
               this.§>!7§.uncompress();
            }
            this.§>!7§.position = 0;
            this.§9C§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§2-§ + "\n  date:" + this.§25§ + "\n  sizeCompressed:" + this.§&I§ + "\n  sizeUncompressed:" + this.§]!&§ + "\n  versionHost:" + this.§[q§ + "\n  versionNumber:" + this.§=G§ + "\n  compressionMethod:" + this.§8e§ + "\n  encrypted:" + this.§`Y§ + "\n  hasDataDescriptor:" + this.§ X§ + "\n  hasCompressedPatchedData:" + this.§4$§ + "\n  filenameEncoding:" + this.§-N§ + "\n  crc32:" + this.§-2§.toString(16) + "\n  adler32:" + this.§-H§.toString(16);
      }
   }
}

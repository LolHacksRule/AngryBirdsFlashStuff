package §[4§
{
   import §,H§.§9B§;
   import flash.utils.*;
   
   public class §>!3§
   {
      
      public static const §1T§:int = 0;
      
      public static const §3=§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §^!$§:int = 6;
      
      public static const §#§:int = 7;
      
      public static const §8M§:int = 8;
      
      public static const §#!#§:int = 9;
      
      public static const §+!4§:int = 10;
      
      protected static var §6=§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §>!?§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §>!7§:int = 0;
      
      protected var §]!!§:String = "2.0";
      
      protected var §5!G§:int = 8;
      
      protected var §+C§:Boolean = false;
      
      protected var §<!L§:int = -1;
      
      protected var §?@§:int = -1;
      
      protected var §#y§:int = -1;
      
      protected var §=O§:Boolean = false;
      
      protected var §&?§:Boolean = false;
      
      protected var §%!%§:Date;
      
      protected var §-!0§:uint;
      
      protected var §"$§:Boolean = false;
      
      protected var §9g§:uint = 0;
      
      protected var §8!-§:uint = 0;
      
      protected var §-1§:String = "";
      
      protected var §0!A§:String;
      
      protected var §2!1§:Dictionary;
      
      protected var §7!,§:String = "";
      
      protected var §>!1§:ByteArray;
      
      var §^F§:uint;
      
      var §>u§:uint = 0;
      
      var §=d§:uint = 0;
      
      protected var §<l§:Boolean = false;
      
      protected var §1!N§:Function;
      
      public function §>!3§(param1:String = "utf-8")
      {
         this.§1!N§ = this.§[!#§;
         super();
         this.§0!A§ = param1;
         this.§2!1§ = new Dictionary();
         this.§>!1§ = new ByteArray();
         this.§>!1§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §+t§() : Date
      {
         return this.§%!%§;
      }
      
      public function set §+t§(param1:Date) : void
      {
         this.§%!%§ = param1 != null ? param1 : new Date();
      }
      
      public function get §>d§() : String
      {
         return this.§-1§;
      }
      
      public function set §>d§(param1:String) : void
      {
         this.§-1§ = param1;
      }
      
      function get §7i§() : Boolean
      {
         return this.§=O§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§<l§)
         {
            this.uncompress();
         }
         return this.§>!1§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§>!5§(param1);
      }
      
      public function §>!5§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§>!1§,0,param1.length);
            this.§^F§ = §9B§.§'!'§(this.§>!1§);
            this.§"$§ = false;
         }
         else
         {
            this.§>!1§.length = 0;
            this.§>!1§.position = 0;
            this.§<l§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§=d§ = this.§>u§ = this.§>!1§.length;
         }
      }
      
      public function get §>&§() : String
      {
         return this.§]!!§;
      }
      
      public function get §]§() : uint
      {
         return this.§>u§;
      }
      
      public function get §`B§() : uint
      {
         return this.§=d§;
      }
      
      public function §'!N§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§<l§)
         {
            this.uncompress();
         }
         this.§>!1§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§>!1§.readUTFBytes(this.§>!1§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§>!1§.readMultiByte(this.§>!1§.bytesAvailable,param2);
         }
         this.§>!1§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §6P§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§>!1§.length = 0;
         this.§>!1§.position = 0;
         this.§<l§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§>!1§.writeUTFBytes(param1);
            }
            else
            {
               this.§>!1§.writeMultiByte(param1,param2);
            }
            this.§^F§ = §9B§.§'!'§(this.§>!1§);
            this.§"$§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§=d§ = this.§>u§ = this.§>!1§.length;
         }
      }
      
      public function §]5§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§+;§.§;H§);
            param1.writeShort(this.§>!7§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§+;§.§@[§);
         }
         param1.writeShort(this.§>!7§ << 8 | 20);
         param1.writeShort(this.§0!A§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§<l§ ? int(§8M§) : int(§1T§));
         var _loc5_:Date = this.§%!%§ != null ? this.§%!%§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§^F§);
         param1.writeUnsignedInt(this.§>u§);
         param1.writeUnsignedInt(this.§=d§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§0!A§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§-1§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§-1§,this.§0!A§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§2!1§)
         {
            if((_loc15_ = this.§2!1§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§"$§)
            {
               if(_loc16_ = this.§<l§)
               {
                  this.uncompress();
               }
               this.§-!0§ = §9B§.§4`§(this.§>!1§,0,this.§>!1§.length);
               this.§"$§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§-!0§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§7!,§.length > 0)
         {
            if(this.§0!A§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§7!,§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§7!,§,this.§0!A§);
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
         if(!param3 && this.§>!1§.length > 0)
         {
            if(this.§<l§)
            {
               if(§6=§ || §>!?§)
               {
                  _loc13_ = this.§>!1§.length;
                  param1.writeBytes(this.§>!1§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§>!1§.length - 6;
                  param1.writeBytes(this.§>!1§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§>!1§.length;
               param1.writeBytes(this.§>!1§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§1!N§(param1))
         {
         }
         return this.§1!N§ === this.§ !6§;
      }
      
      protected function § !6§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §[!#§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§5P§(param1);
            if(this.§9g§ + this.§8!-§ > 0)
            {
               this.§1!N§ = this.§+0§;
            }
            else
            {
               this.§1!N§ = this.§3!N§;
            }
            return true;
         }
         return false;
      }
      
      protected function §+0§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§9g§ + this.§8!-§)
         {
            this.§@!8§(param1);
            this.§1!N§ = this.§3!N§;
            return true;
         }
         return false;
      }
      
      protected function §3!N§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§=O§)
         {
            this.§1!N§ = this.§ !6§;
            _loc2_ = false;
         }
         else if(this.§>u§ == 0)
         {
            this.§1!N§ = this.§ !6§;
         }
         else if(param1.bytesAvailable >= this.§>u§)
         {
            this.§8!§(param1);
            this.§1!N§ = this.§ !6§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §5P§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§>!7§ = _loc2_ >> 8;
         this.§]!!§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§5!G§ = param1.readUnsignedShort();
         this.§+C§ = (_loc3_ & 1) !== 0;
         this.§=O§ = (_loc3_ & 8) !== 0;
         this.§&?§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§0!A§ = "utf-8";
         }
         if(this.§5!G§ === §^!$§)
         {
            this.§<!L§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§?@§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§5!G§ === §8M§)
         {
            this.§#y§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§%!%§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§^F§ = param1.readUnsignedInt();
         this.§>u§ = param1.readUnsignedInt();
         this.§=d§ = param1.readUnsignedInt();
         this.§9g§ = param1.readUnsignedShort();
         this.§8!-§ = param1.readUnsignedShort();
      }
      
      protected function §@!8§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§0!A§ == "utf-8")
         {
            this.§-1§ = param1.readUTFBytes(this.§9g§);
         }
         else
         {
            this.§-1§ = param1.readMultiByte(this.§9g§,this.§0!A§);
         }
         var _loc2_:uint = this.§8!-§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§-1§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§-!0§ = param1.readUnsignedInt();
               this.§"$§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§2!1§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §8!§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§5!G§ === §8M§ && !this.§+C§)
         {
            if(§6=§ || §>!?§)
            {
               param1.readBytes(this.§>!1§,0,this.§>u§);
            }
            else
            {
               if(!this.§"$§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§>!1§.writeByte(120);
               _loc2_ = ~this.§#y§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§>!1§.writeByte(_loc2_);
               param1.readBytes(this.§>!1§,2,this.§>u§);
               this.§>!1§.position = this.§>!1§.length;
               this.§>!1§.writeUnsignedInt(this.§-!0§);
            }
            this.§<l§ = true;
         }
         else
         {
            if(this.§5!G§ != §1T§)
            {
               throw new Error("Compression method " + this.§5!G§ + " is not supported.");
            }
            param1.readBytes(this.§>!1§,0,this.§>u§);
            this.§<l§ = false;
         }
         this.§>!1§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§<l§)
         {
            if(this.§>!1§.length > 0)
            {
               this.§>!1§.position = 0;
               this.§=d§ = this.§>!1§.length;
               if(§>!?§)
               {
                  this.§>!1§.deflate();
                  this.§>u§ = this.§>!1§.length;
               }
               else if(§6=§)
               {
                  this.§>!1§.compress.apply(this.§>!1§,["deflate"]);
                  this.§>u§ = this.§>!1§.length;
               }
               else
               {
                  this.§>!1§.compress();
                  this.§>u§ = this.§>!1§.length - 6;
               }
               this.§>!1§.position = 0;
               this.§<l§ = true;
            }
            else
            {
               this.§>u§ = 0;
               this.§=d§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§<l§ && this.§>!1§.length > 0)
         {
            this.§>!1§.position = 0;
            if(§>!?§)
            {
               this.§>!1§.inflate();
            }
            else if(§6=§)
            {
               this.§>!1§.uncompress.apply(this.§>!1§,["deflate"]);
            }
            else
            {
               this.§>!1§.uncompress();
            }
            this.§>!1§.position = 0;
            this.§<l§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§-1§ + "\n  date:" + this.§%!%§ + "\n  sizeCompressed:" + this.§>u§ + "\n  sizeUncompressed:" + this.§=d§ + "\n  versionHost:" + this.§>!7§ + "\n  versionNumber:" + this.§]!!§ + "\n  compressionMethod:" + this.§5!G§ + "\n  encrypted:" + this.§+C§ + "\n  hasDataDescriptor:" + this.§=O§ + "\n  hasCompressedPatchedData:" + this.§&?§ + "\n  filenameEncoding:" + this.§0!A§ + "\n  crc32:" + this.§^F§.toString(16) + "\n  adler32:" + this.§-!0§.toString(16);
      }
   }
}

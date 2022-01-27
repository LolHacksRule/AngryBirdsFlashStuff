package §`!%§
{
   import §9!K§.§[!§;
   import flash.utils.*;
   
   public class §-d§
   {
      
      public static const §@[§:int = 0;
      
      public static const §?=§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §"=§:int = 6;
      
      public static const § for§:int = 7;
      
      public static const §5%§:int = 8;
      
      public static const §-!+§:int = 9;
      
      public static const §6S§:int = 10;
      
      protected static var §@!1§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §#!B§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §9M§:int = 0;
      
      protected var §8H§:String = "2.0";
      
      protected var §!L§:int = 8;
      
      protected var §7!L§:Boolean = false;
      
      protected var §"5§:int = -1;
      
      protected var §`!F§:int = -1;
      
      protected var §3!N§:int = -1;
      
      protected var §=!@§:Boolean = false;
      
      protected var §3!<§:Boolean = false;
      
      protected var §!Y§:Date;
      
      protected var §<0§:uint;
      
      protected var §7F§:Boolean = false;
      
      protected var §<G§:uint = 0;
      
      protected var §%l§:uint = 0;
      
      protected var §%!%§:String = "";
      
      protected var §9w§:String;
      
      protected var §[j§:Dictionary;
      
      protected var §@d§:String = "";
      
      protected var §!w§:ByteArray;
      
      var §;F§:uint;
      
      var §4I§:uint = 0;
      
      var §=S§:uint = 0;
      
      protected var §!P§:Boolean = false;
      
      protected var §`! §:Function;
      
      public function §-d§(param1:String = "utf-8")
      {
         this.§`! § = this.§[!B§;
         super();
         this.§9w§ = param1;
         this.§[j§ = new Dictionary();
         this.§!w§ = new ByteArray();
         this.§!w§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §53§() : Date
      {
         return this.§!Y§;
      }
      
      public function set §53§(param1:Date) : void
      {
         this.§!Y§ = param1 != null ? param1 : new Date();
      }
      
      public function get §8!1§() : String
      {
         return this.§%!%§;
      }
      
      public function set §8!1§(param1:String) : void
      {
         this.§%!%§ = param1;
      }
      
      function get § !H§() : Boolean
      {
         return this.§=!@§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§!P§)
         {
            this.uncompress();
         }
         return this.§!w§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§;Q§(param1);
      }
      
      public function §;Q§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§!w§,0,param1.length);
            this.§;F§ = §[!§.§1W§(this.§!w§);
            this.§7F§ = false;
         }
         else
         {
            this.§!w§.length = 0;
            this.§!w§.position = 0;
            this.§!P§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§=S§ = this.§4I§ = this.§!w§.length;
         }
      }
      
      public function get §8!0§() : String
      {
         return this.§8H§;
      }
      
      public function get final() : uint
      {
         return this.§4I§;
      }
      
      public function get §%6§() : uint
      {
         return this.§=S§;
      }
      
      public function §8`§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§!P§)
         {
            this.uncompress();
         }
         this.§!w§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§!w§.readUTFBytes(this.§!w§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§!w§.readMultiByte(this.§!w§.bytesAvailable,param2);
         }
         this.§!w§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §=!,§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§!w§.length = 0;
         this.§!w§.position = 0;
         this.§!P§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§!w§.writeUTFBytes(param1);
            }
            else
            {
               this.§!w§.writeMultiByte(param1,param2);
            }
            this.§;F§ = §[!§.§1W§(this.§!w§);
            this.§7F§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§=S§ = this.§4I§ = this.§!w§.length;
         }
      }
      
      public function §^1§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§6c§.§=p§);
            param1.writeShort(this.§9M§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§6c§.§7U§);
         }
         param1.writeShort(this.§9M§ << 8 | 20);
         param1.writeShort(this.§9w§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§!P§ ? int(§5%§) : int(§@[§));
         var _loc5_:Date = this.§!Y§ != null ? this.§!Y§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§;F§);
         param1.writeUnsignedInt(this.§4I§);
         param1.writeUnsignedInt(this.§=S§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§9w§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§%!%§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§%!%§,this.§9w§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§[j§)
         {
            if((_loc15_ = this.§[j§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§7F§)
            {
               if(_loc16_ = this.§!P§)
               {
                  this.uncompress();
               }
               this.§<0§ = §[!§.§!6§(this.§!w§,0,this.§!w§.length);
               this.§7F§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§<0§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§@d§.length > 0)
         {
            if(this.§9w§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§@d§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§@d§,this.§9w§);
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
         if(!param3 && this.§!w§.length > 0)
         {
            if(this.§!P§)
            {
               if(§@!1§ || §#!B§)
               {
                  _loc13_ = this.§!w§.length;
                  param1.writeBytes(this.§!w§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§!w§.length - 6;
                  param1.writeBytes(this.§!w§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§!w§.length;
               param1.writeBytes(this.§!w§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§`! §(param1))
         {
         }
         return this.§`! § === this.§&g§;
      }
      
      protected function §&g§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §[!B§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§;!'§(param1);
            if(this.§<G§ + this.§%l§ > 0)
            {
               this.§`! § = this.§>#§;
            }
            else
            {
               this.§`! § = this.§;r§;
            }
            return true;
         }
         return false;
      }
      
      protected function §>#§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§<G§ + this.§%l§)
         {
            this.§[,§(param1);
            this.§`! § = this.§;r§;
            return true;
         }
         return false;
      }
      
      protected function §;r§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§=!@§)
         {
            this.§`! § = this.§&g§;
            _loc2_ = false;
         }
         else if(this.§4I§ == 0)
         {
            this.§`! § = this.§&g§;
         }
         else if(param1.bytesAvailable >= this.§4I§)
         {
            this.§"$§(param1);
            this.§`! § = this.§&g§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §;!'§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§9M§ = _loc2_ >> 8;
         this.§8H§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§!L§ = param1.readUnsignedShort();
         this.§7!L§ = (_loc3_ & 1) !== 0;
         this.§=!@§ = (_loc3_ & 8) !== 0;
         this.§3!<§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§9w§ = "utf-8";
         }
         if(this.§!L§ === §"=§)
         {
            this.§"5§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§`!F§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§!L§ === §5%§)
         {
            this.§3!N§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§!Y§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§;F§ = param1.readUnsignedInt();
         this.§4I§ = param1.readUnsignedInt();
         this.§=S§ = param1.readUnsignedInt();
         this.§<G§ = param1.readUnsignedShort();
         this.§%l§ = param1.readUnsignedShort();
      }
      
      protected function §[,§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§9w§ == "utf-8")
         {
            this.§%!%§ = param1.readUTFBytes(this.§<G§);
         }
         else
         {
            this.§%!%§ = param1.readMultiByte(this.§<G§,this.§9w§);
         }
         var _loc2_:uint = this.§%l§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§%!%§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§<0§ = param1.readUnsignedInt();
               this.§7F§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§[j§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §"$§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§!L§ === §5%§ && !this.§7!L§)
         {
            if(§@!1§ || §#!B§)
            {
               param1.readBytes(this.§!w§,0,this.§4I§);
            }
            else
            {
               if(!this.§7F§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§!w§.writeByte(120);
               _loc2_ = ~this.§3!N§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§!w§.writeByte(_loc2_);
               param1.readBytes(this.§!w§,2,this.§4I§);
               this.§!w§.position = this.§!w§.length;
               this.§!w§.writeUnsignedInt(this.§<0§);
            }
            this.§!P§ = true;
         }
         else
         {
            if(this.§!L§ != §@[§)
            {
               throw new Error("Compression method " + this.§!L§ + " is not supported.");
            }
            param1.readBytes(this.§!w§,0,this.§4I§);
            this.§!P§ = false;
         }
         this.§!w§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§!P§)
         {
            if(this.§!w§.length > 0)
            {
               this.§!w§.position = 0;
               this.§=S§ = this.§!w§.length;
               if(§#!B§)
               {
                  this.§!w§.deflate();
                  this.§4I§ = this.§!w§.length;
               }
               else if(§@!1§)
               {
                  this.§!w§.compress.apply(this.§!w§,["deflate"]);
                  this.§4I§ = this.§!w§.length;
               }
               else
               {
                  this.§!w§.compress();
                  this.§4I§ = this.§!w§.length - 6;
               }
               this.§!w§.position = 0;
               this.§!P§ = true;
            }
            else
            {
               this.§4I§ = 0;
               this.§=S§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§!P§ && this.§!w§.length > 0)
         {
            this.§!w§.position = 0;
            if(§#!B§)
            {
               this.§!w§.inflate();
            }
            else if(§@!1§)
            {
               this.§!w§.uncompress.apply(this.§!w§,["deflate"]);
            }
            else
            {
               this.§!w§.uncompress();
            }
            this.§!w§.position = 0;
            this.§!P§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§%!%§ + "\n  date:" + this.§!Y§ + "\n  sizeCompressed:" + this.§4I§ + "\n  sizeUncompressed:" + this.§=S§ + "\n  versionHost:" + this.§9M§ + "\n  versionNumber:" + this.§8H§ + "\n  compressionMethod:" + this.§!L§ + "\n  encrypted:" + this.§7!L§ + "\n  hasDataDescriptor:" + this.§=!@§ + "\n  hasCompressedPatchedData:" + this.§3!<§ + "\n  filenameEncoding:" + this.§9w§ + "\n  crc32:" + this.§;F§.toString(16) + "\n  adler32:" + this.§<0§.toString(16);
      }
   }
}

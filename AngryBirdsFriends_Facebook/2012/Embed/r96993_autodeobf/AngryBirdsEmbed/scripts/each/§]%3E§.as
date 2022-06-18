package each
{
   import §4;§.§5!-§;
   import flash.utils.*;
   
   public class §]>§
   {
      
      public static const §<b§:int = 0;
      
      public static const §5u§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §#!<§:int = 6;
      
      public static const §4!?§:int = 7;
      
      public static const §<u§:int = 8;
      
      public static const §!!>§:int = 9;
      
      public static const §<D§:int = 10;
      
      protected static var §-+§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §%I§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §6]§:int = 0;
      
      protected var §1B§:String = "2.0";
      
      protected var §6>§:int = 8;
      
      protected var §<J§:Boolean = false;
      
      protected var §4! §:int = -1;
      
      protected var §&!B§:int = -1;
      
      protected var §^!+§:int = -1;
      
      protected var §<e§:Boolean = false;
      
      protected var §@!-§:Boolean = false;
      
      protected var §%7§:Date;
      
      protected var §5!#§:uint;
      
      protected var §0!1§:Boolean = false;
      
      protected var §[`§:uint = 0;
      
      protected var §+$§:uint = 0;
      
      protected var §46§:String = "";
      
      protected var §5q§:String;
      
      protected var §88§:Dictionary;
      
      protected var §;V§:String = "";
      
      protected var §?]§:ByteArray;
      
      var §,g§:uint;
      
      var §>E§:uint = 0;
      
      var §!O§:uint = 0;
      
      protected var §3b§:Boolean = false;
      
      protected var §`8§:Function;
      
      public function §]>§(param1:String = "utf-8")
      {
         this.§`8§ = this.§?d§;
         super();
         this.§5q§ = param1;
         this.§88§ = new Dictionary();
         this.§?]§ = new ByteArray();
         this.§?]§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §6`§() : Date
      {
         return this.§%7§;
      }
      
      public function set §6`§(param1:Date) : void
      {
         this.§%7§ = param1 != null ? param1 : new Date();
      }
      
      public function get §case §() : String
      {
         return this.§46§;
      }
      
      public function set §case §(param1:String) : void
      {
         this.§46§ = param1;
      }
      
      function get §!!!§() : Boolean
      {
         return this.§<e§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§3b§)
         {
            this.uncompress();
         }
         return this.§?]§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§6!1§(param1);
      }
      
      public function §6!1§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§?]§,0,param1.length);
            this.§,g§ = §5!-§.§@!6§(this.§?]§);
            this.§0!1§ = false;
         }
         else
         {
            this.§?]§.length = 0;
            this.§?]§.position = 0;
            this.§3b§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§!O§ = this.§>E§ = this.§?]§.length;
         }
      }
      
      public function get §!!E§() : String
      {
         return this.§1B§;
      }
      
      public function get § !#§() : uint
      {
         return this.§>E§;
      }
      
      public function get § 2§() : uint
      {
         return this.§!O§;
      }
      
      public function §<>§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§3b§)
         {
            this.uncompress();
         }
         this.§?]§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§?]§.readUTFBytes(this.§?]§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§?]§.readMultiByte(this.§?]§.bytesAvailable,param2);
         }
         this.§?]§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §"!9§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§?]§.length = 0;
         this.§?]§.position = 0;
         this.§3b§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§?]§.writeUTFBytes(param1);
            }
            else
            {
               this.§?]§.writeMultiByte(param1,param2);
            }
            this.§,g§ = §5!-§.§@!6§(this.§?]§);
            this.§0!1§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§!O§ = this.§>E§ = this.§?]§.length;
         }
      }
      
      public function §5x§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§24§.§=!=§);
            param1.writeShort(this.§6]§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§24§.§6!-§);
         }
         param1.writeShort(this.§6]§ << 8 | 20);
         param1.writeShort(this.§5q§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§3b§ ? int(§<u§) : int(§<b§));
         var _loc5_:Date = this.§%7§ != null ? this.§%7§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§,g§);
         param1.writeUnsignedInt(this.§>E§);
         param1.writeUnsignedInt(this.§!O§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§5q§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§46§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§46§,this.§5q§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§88§)
         {
            if((_loc15_ = this.§88§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§0!1§)
            {
               if(_loc16_ = this.§3b§)
               {
                  this.uncompress();
               }
               this.§5!#§ = §5!-§.§switch§(this.§?]§,0,this.§?]§.length);
               this.§0!1§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§5!#§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§;V§.length > 0)
         {
            if(this.§5q§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§;V§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§;V§,this.§5q§);
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
         if(!param3 && this.§?]§.length > 0)
         {
            if(this.§3b§)
            {
               if(§-+§ || §%I§)
               {
                  _loc13_ = this.§?]§.length;
                  param1.writeBytes(this.§?]§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§?]§.length - 6;
                  param1.writeBytes(this.§?]§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§?]§.length;
               param1.writeBytes(this.§?]§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§`8§(param1))
         {
         }
         return this.§`8§ === this.§@!2§;
      }
      
      protected function §@!2§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §?d§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§4a§(param1);
            if(this.§[`§ + this.§+$§ > 0)
            {
               this.§`8§ = this.§6!9§;
            }
            else
            {
               this.§`8§ = this.§4Z§;
            }
            return true;
         }
         return false;
      }
      
      protected function §6!9§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§[`§ + this.§+$§)
         {
            this.§<H§(param1);
            this.§`8§ = this.§4Z§;
            return true;
         }
         return false;
      }
      
      protected function §4Z§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§<e§)
         {
            this.§`8§ = this.§@!2§;
            _loc2_ = false;
         }
         else if(this.§>E§ == 0)
         {
            this.§`8§ = this.§@!2§;
         }
         else if(param1.bytesAvailable >= this.§>E§)
         {
            this.§[I§(param1);
            this.§`8§ = this.§@!2§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §4a§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§6]§ = _loc2_ >> 8;
         this.§1B§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§6>§ = param1.readUnsignedShort();
         this.§<J§ = (_loc3_ & 1) !== 0;
         this.§<e§ = (_loc3_ & 8) !== 0;
         this.§@!-§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§5q§ = "utf-8";
         }
         if(this.§6>§ === §#!<§)
         {
            this.§4! § = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§&!B§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§6>§ === §<u§)
         {
            this.§^!+§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§%7§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§,g§ = param1.readUnsignedInt();
         this.§>E§ = param1.readUnsignedInt();
         this.§!O§ = param1.readUnsignedInt();
         this.§[`§ = param1.readUnsignedShort();
         this.§+$§ = param1.readUnsignedShort();
      }
      
      protected function §<H§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§5q§ == "utf-8")
         {
            this.§46§ = param1.readUTFBytes(this.§[`§);
         }
         else
         {
            this.§46§ = param1.readMultiByte(this.§[`§,this.§5q§);
         }
         var _loc2_:uint = this.§+$§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§46§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§5!#§ = param1.readUnsignedInt();
               this.§0!1§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§88§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §[I§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§6>§ === §<u§ && !this.§<J§)
         {
            if(§-+§ || §%I§)
            {
               param1.readBytes(this.§?]§,0,this.§>E§);
            }
            else
            {
               if(!this.§0!1§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§?]§.writeByte(120);
               _loc2_ = ~this.§^!+§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§?]§.writeByte(_loc2_);
               param1.readBytes(this.§?]§,2,this.§>E§);
               this.§?]§.position = this.§?]§.length;
               this.§?]§.writeUnsignedInt(this.§5!#§);
            }
            this.§3b§ = true;
         }
         else
         {
            if(this.§6>§ != §<b§)
            {
               throw new Error("Compression method " + this.§6>§ + " is not supported.");
            }
            param1.readBytes(this.§?]§,0,this.§>E§);
            this.§3b§ = false;
         }
         this.§?]§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§3b§)
         {
            if(this.§?]§.length > 0)
            {
               this.§?]§.position = 0;
               this.§!O§ = this.§?]§.length;
               if(§%I§)
               {
                  this.§?]§.deflate();
                  this.§>E§ = this.§?]§.length;
               }
               else if(§-+§)
               {
                  this.§?]§.compress.apply(this.§?]§,["deflate"]);
                  this.§>E§ = this.§?]§.length;
               }
               else
               {
                  this.§?]§.compress();
                  this.§>E§ = this.§?]§.length - 6;
               }
               this.§?]§.position = 0;
               this.§3b§ = true;
            }
            else
            {
               this.§>E§ = 0;
               this.§!O§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§3b§ && this.§?]§.length > 0)
         {
            this.§?]§.position = 0;
            if(§%I§)
            {
               this.§?]§.inflate();
            }
            else if(§-+§)
            {
               this.§?]§.uncompress.apply(this.§?]§,["deflate"]);
            }
            else
            {
               this.§?]§.uncompress();
            }
            this.§?]§.position = 0;
            this.§3b§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§46§ + "\n  date:" + this.§%7§ + "\n  sizeCompressed:" + this.§>E§ + "\n  sizeUncompressed:" + this.§!O§ + "\n  versionHost:" + this.§6]§ + "\n  versionNumber:" + this.§1B§ + "\n  compressionMethod:" + this.§6>§ + "\n  encrypted:" + this.§<J§ + "\n  hasDataDescriptor:" + this.§<e§ + "\n  hasCompressedPatchedData:" + this.§@!-§ + "\n  filenameEncoding:" + this.§5q§ + "\n  crc32:" + this.§,g§.toString(16) + "\n  adler32:" + this.§5!#§.toString(16);
      }
   }
}

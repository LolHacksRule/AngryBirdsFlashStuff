package §3q§
{
   import §]!8§.§;h§;
   import flash.utils.*;
   
   public class §4!a§
   {
      
      public static const §!C§:int = 0;
      
      public static const §else§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §^o§:int = 6;
      
      public static const §,!1§:int = 7;
      
      public static const §@!V§:int = 8;
      
      public static const §1V§:int = 9;
      
      public static const §%v§:int = 10;
      
      protected static var §@!N§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §8!4§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §2K§:int = 0;
      
      protected var §%&§:String = "2.0";
      
      protected var §!!`§:int = 8;
      
      protected var §'!d§:Boolean = false;
      
      protected var §,!+§:int = -1;
      
      protected var §8l§:int = -1;
      
      protected var §1!H§:int = -1;
      
      protected var §-3§:Boolean = false;
      
      protected var §^!@§:Boolean = false;
      
      protected var §+!4§:Date;
      
      protected var §<!H§:uint;
      
      protected var §"5§:Boolean = false;
      
      protected var §2k§:uint = 0;
      
      protected var §#^§:uint = 0;
      
      protected var §"!I§:String = "";
      
      protected var § _§:String;
      
      protected var §4!X§:Dictionary;
      
      protected var §+!F§:String = "";
      
      protected var §>U§:ByteArray;
      
      var §3h§:uint;
      
      var §&!?§:uint = 0;
      
      var §^v§:uint = 0;
      
      protected var §!!O§:Boolean = false;
      
      protected var §,D§:Function;
      
      public function §4!a§(param1:String = "utf-8")
      {
         this.§,D§ = this.§=,§;
         super();
         this.§ _§ = param1;
         this.§4!X§ = new Dictionary();
         this.§>U§ = new ByteArray();
         this.§>U§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §+!S§() : Date
      {
         return this.§+!4§;
      }
      
      public function set §+!S§(param1:Date) : void
      {
         this.§+!4§ = param1 != null ? param1 : new Date();
      }
      
      public function get §%![§() : String
      {
         return this.§"!I§;
      }
      
      public function set §%![§(param1:String) : void
      {
         this.§"!I§ = param1;
      }
      
      function get §9![§() : Boolean
      {
         return this.§-3§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§!!O§)
         {
            this.uncompress();
         }
         return this.§>U§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§1i§(param1);
      }
      
      public function §1i§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§>U§,0,param1.length);
            this.§3h§ = §;h§.§4!d§(this.§>U§);
            this.§"5§ = false;
         }
         else
         {
            this.§>U§.length = 0;
            this.§>U§.position = 0;
            this.§!!O§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§^v§ = this.§&!?§ = this.§>U§.length;
         }
      }
      
      public function get §5j§() : String
      {
         return this.§%&§;
      }
      
      public function get §`!'§() : uint
      {
         return this.§&!?§;
      }
      
      public function get §5!%§() : uint
      {
         return this.§^v§;
      }
      
      public function §,e§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§!!O§)
         {
            this.uncompress();
         }
         this.§>U§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§>U§.readUTFBytes(this.§>U§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§>U§.readMultiByte(this.§>U§.bytesAvailable,param2);
         }
         this.§>U§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §&6§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§>U§.length = 0;
         this.§>U§.position = 0;
         this.§!!O§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§>U§.writeUTFBytes(param1);
            }
            else
            {
               this.§>U§.writeMultiByte(param1,param2);
            }
            this.§3h§ = §;h§.§4!d§(this.§>U§);
            this.§"5§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§^v§ = this.§&!?§ = this.§>U§.length;
         }
      }
      
      public function §"!1§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§-q§.§#!%§);
            param1.writeShort(this.§2K§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§-q§.§!k§);
         }
         param1.writeShort(this.§2K§ << 8 | 20);
         param1.writeShort(this.§ _§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§!!O§ ? int(§@!V§) : int(§!C§));
         var _loc5_:Date = this.§+!4§ != null ? this.§+!4§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§3h§);
         param1.writeUnsignedInt(this.§&!?§);
         param1.writeUnsignedInt(this.§^v§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§ _§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§"!I§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§"!I§,this.§ _§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§4!X§)
         {
            if((_loc15_ = this.§4!X§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§"5§)
            {
               if(_loc16_ = this.§!!O§)
               {
                  this.uncompress();
               }
               this.§<!H§ = §;h§.§^!?§(this.§>U§,0,this.§>U§.length);
               this.§"5§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§<!H§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§+!F§.length > 0)
         {
            if(this.§ _§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§+!F§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§+!F§,this.§ _§);
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
         if(!param3 && this.§>U§.length > 0)
         {
            if(this.§!!O§)
            {
               if(§@!N§ || §8!4§)
               {
                  _loc13_ = this.§>U§.length;
                  param1.writeBytes(this.§>U§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§>U§.length - 6;
                  param1.writeBytes(this.§>U§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§>U§.length;
               param1.writeBytes(this.§>U§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§,D§(param1))
         {
         }
         return this.§,D§ === this.§[!2§;
      }
      
      protected function §[!2§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §=,§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§!!X§(param1);
            if(this.§2k§ + this.§#^§ > 0)
            {
               this.§,D§ = this.§7!H§;
            }
            else
            {
               this.§,D§ = this.§?!"§;
            }
            return true;
         }
         return false;
      }
      
      protected function §7!H§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§2k§ + this.§#^§)
         {
            this.§1!G§(param1);
            this.§,D§ = this.§?!"§;
            return true;
         }
         return false;
      }
      
      protected function §?!"§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§-3§)
         {
            this.§,D§ = this.§[!2§;
            _loc2_ = false;
         }
         else if(this.§&!?§ == 0)
         {
            this.§,D§ = this.§[!2§;
         }
         else if(param1.bytesAvailable >= this.§&!?§)
         {
            this.§`!"§(param1);
            this.§,D§ = this.§[!2§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §!!X§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§2K§ = _loc2_ >> 8;
         this.§%&§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§!!`§ = param1.readUnsignedShort();
         this.§'!d§ = (_loc3_ & 1) !== 0;
         this.§-3§ = (_loc3_ & 8) !== 0;
         this.§^!@§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§ _§ = "utf-8";
         }
         if(this.§!!`§ === §^o§)
         {
            this.§,!+§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§8l§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§!!`§ === §@!V§)
         {
            this.§1!H§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§+!4§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§3h§ = param1.readUnsignedInt();
         this.§&!?§ = param1.readUnsignedInt();
         this.§^v§ = param1.readUnsignedInt();
         this.§2k§ = param1.readUnsignedShort();
         this.§#^§ = param1.readUnsignedShort();
      }
      
      protected function §1!G§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§ _§ == "utf-8")
         {
            this.§"!I§ = param1.readUTFBytes(this.§2k§);
         }
         else
         {
            this.§"!I§ = param1.readMultiByte(this.§2k§,this.§ _§);
         }
         var _loc2_:uint = this.§#^§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§"!I§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§<!H§ = param1.readUnsignedInt();
               this.§"5§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§4!X§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §`!"§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§!!`§ === §@!V§ && !this.§'!d§)
         {
            if(§@!N§ || §8!4§)
            {
               param1.readBytes(this.§>U§,0,this.§&!?§);
            }
            else
            {
               if(!this.§"5§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§>U§.writeByte(120);
               _loc2_ = ~this.§1!H§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§>U§.writeByte(_loc2_);
               param1.readBytes(this.§>U§,2,this.§&!?§);
               this.§>U§.position = this.§>U§.length;
               this.§>U§.writeUnsignedInt(this.§<!H§);
            }
            this.§!!O§ = true;
         }
         else
         {
            if(this.§!!`§ != §!C§)
            {
               throw new Error("Compression method " + this.§!!`§ + " is not supported.");
            }
            param1.readBytes(this.§>U§,0,this.§&!?§);
            this.§!!O§ = false;
         }
         this.§>U§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§!!O§)
         {
            if(this.§>U§.length > 0)
            {
               this.§>U§.position = 0;
               this.§^v§ = this.§>U§.length;
               if(§8!4§)
               {
                  this.§>U§.deflate();
                  this.§&!?§ = this.§>U§.length;
               }
               else if(§@!N§)
               {
                  this.§>U§.compress.apply(this.§>U§,["deflate"]);
                  this.§&!?§ = this.§>U§.length;
               }
               else
               {
                  this.§>U§.compress();
                  this.§&!?§ = this.§>U§.length - 6;
               }
               this.§>U§.position = 0;
               this.§!!O§ = true;
            }
            else
            {
               this.§&!?§ = 0;
               this.§^v§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§!!O§ && this.§>U§.length > 0)
         {
            this.§>U§.position = 0;
            if(§8!4§)
            {
               this.§>U§.inflate();
            }
            else if(§@!N§)
            {
               this.§>U§.uncompress.apply(this.§>U§,["deflate"]);
            }
            else
            {
               this.§>U§.uncompress();
            }
            this.§>U§.position = 0;
            this.§!!O§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§"!I§ + "\n  date:" + this.§+!4§ + "\n  sizeCompressed:" + this.§&!?§ + "\n  sizeUncompressed:" + this.§^v§ + "\n  versionHost:" + this.§2K§ + "\n  versionNumber:" + this.§%&§ + "\n  compressionMethod:" + this.§!!`§ + "\n  encrypted:" + this.§'!d§ + "\n  hasDataDescriptor:" + this.§-3§ + "\n  hasCompressedPatchedData:" + this.§^!@§ + "\n  filenameEncoding:" + this.§ _§ + "\n  crc32:" + this.§3h§.toString(16) + "\n  adler32:" + this.§<!H§.toString(16);
      }
   }
}

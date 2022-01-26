package §=!-§
{
   import §5!Z§.§0Z§;
   import flash.utils.*;
   
   public class §@m§
   {
      
      public static const §>!U§:int = 0;
      
      public static const §+!S§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §#n§:int = 6;
      
      public static const §>=§:int = 7;
      
      public static const §7'§:int = 8;
      
      public static const §'!K§:int = 9;
      
      public static const §"!I§:int = 10;
      
      protected static var §"A§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §1r§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §6! §:int = 0;
      
      protected var §,!Z§:String = "2.0";
      
      protected var §%!5§:int = 8;
      
      protected var §^c§:Boolean = false;
      
      protected var §97§:int = -1;
      
      protected var §@u§:int = -1;
      
      protected var §%q§:int = -1;
      
      protected var §`7§:Boolean = false;
      
      protected var §[!`§:Boolean = false;
      
      protected var §+!L§:Date;
      
      protected var §=,§:uint;
      
      protected var §@!0§:Boolean = false;
      
      protected var §]!P§:uint = 0;
      
      protected var §[§:uint = 0;
      
      protected var §8t§:String = "";
      
      protected var §-C§:String;
      
      protected var §[V§:Dictionary;
      
      protected var §`k§:String = "";
      
      protected var §8I§:ByteArray;
      
      var §&<§:uint;
      
      var §0H§:uint = 0;
      
      var §4!2§:uint = 0;
      
      protected var §1I§:Boolean = false;
      
      protected var §"?§:Function;
      
      public function §@m§(param1:String = "utf-8")
      {
         this.§"?§ = this.§;B§;
         super();
         this.§-C§ = param1;
         this.§[V§ = new Dictionary();
         this.§8I§ = new ByteArray();
         this.§8I§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §7j§() : Date
      {
         return this.§+!L§;
      }
      
      public function set §7j§(param1:Date) : void
      {
         this.§+!L§ = param1 != null ? param1 : new Date();
      }
      
      public function get §0k§() : String
      {
         return this.§8t§;
      }
      
      public function set §0k§(param1:String) : void
      {
         this.§8t§ = param1;
      }
      
      function get §]V§() : Boolean
      {
         return this.§`7§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§1I§)
         {
            this.uncompress();
         }
         return this.§8I§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§7q§(param1);
      }
      
      public function §7q§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§8I§,0,param1.length);
            this.§&<§ = §0Z§.§!W§(this.§8I§);
            this.§@!0§ = false;
         }
         else
         {
            this.§8I§.length = 0;
            this.§8I§.position = 0;
            this.§1I§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§4!2§ = this.§0H§ = this.§8I§.length;
         }
      }
      
      public function get §79§() : String
      {
         return this.§,!Z§;
      }
      
      public function get §`!3§() : uint
      {
         return this.§0H§;
      }
      
      public function get §4!+§() : uint
      {
         return this.§4!2§;
      }
      
      public function §#q§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§1I§)
         {
            this.uncompress();
         }
         this.§8I§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§8I§.readUTFBytes(this.§8I§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§8I§.readMultiByte(this.§8I§.bytesAvailable,param2);
         }
         this.§8I§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §1y§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§8I§.length = 0;
         this.§8I§.position = 0;
         this.§1I§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§8I§.writeUTFBytes(param1);
            }
            else
            {
               this.§8I§.writeMultiByte(param1,param2);
            }
            this.§&<§ = §0Z§.§!W§(this.§8I§);
            this.§@!0§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§4!2§ = this.§0H§ = this.§8I§.length;
         }
      }
      
      public function § true§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§]#§.§61§);
            param1.writeShort(this.§6! § << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§]#§.§0R§);
         }
         param1.writeShort(this.§6! § << 8 | 20);
         param1.writeShort(this.§-C§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§1I§ ? int(§7'§) : int(§>!U§));
         var _loc5_:Date = this.§+!L§ != null ? this.§+!L§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§&<§);
         param1.writeUnsignedInt(this.§0H§);
         param1.writeUnsignedInt(this.§4!2§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§-C§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§8t§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§8t§,this.§-C§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§[V§)
         {
            if((_loc15_ = this.§[V§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§@!0§)
            {
               if(_loc16_ = this.§1I§)
               {
                  this.uncompress();
               }
               this.§=,§ = §0Z§.§45§(this.§8I§,0,this.§8I§.length);
               this.§@!0§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§=,§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§`k§.length > 0)
         {
            if(this.§-C§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§`k§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§`k§,this.§-C§);
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
         if(!param3 && this.§8I§.length > 0)
         {
            if(this.§1I§)
            {
               if(§"A§ || §1r§)
               {
                  _loc13_ = this.§8I§.length;
                  param1.writeBytes(this.§8I§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§8I§.length - 6;
                  param1.writeBytes(this.§8I§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§8I§.length;
               param1.writeBytes(this.§8I§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§"?§(param1))
         {
         }
         return this.§"?§ === this.§;c§;
      }
      
      protected function §;c§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §;B§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§<U§(param1);
            if(this.§]!P§ + this.§[§ > 0)
            {
               this.§"?§ = this.§-B§;
            }
            else
            {
               this.§"?§ = this.§'h§;
            }
            return true;
         }
         return false;
      }
      
      protected function §-B§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§]!P§ + this.§[§)
         {
            this.§^>§(param1);
            this.§"?§ = this.§'h§;
            return true;
         }
         return false;
      }
      
      protected function §'h§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§`7§)
         {
            this.§"?§ = this.§;c§;
            _loc2_ = false;
         }
         else if(this.§0H§ == 0)
         {
            this.§"?§ = this.§;c§;
         }
         else if(param1.bytesAvailable >= this.§0H§)
         {
            this.§3!N§(param1);
            this.§"?§ = this.§;c§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §<U§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§6! § = _loc2_ >> 8;
         this.§,!Z§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§%!5§ = param1.readUnsignedShort();
         this.§^c§ = (_loc3_ & 1) !== 0;
         this.§`7§ = (_loc3_ & 8) !== 0;
         this.§[!`§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§-C§ = "utf-8";
         }
         if(this.§%!5§ === §#n§)
         {
            this.§97§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§@u§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§%!5§ === §7'§)
         {
            this.§%q§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§+!L§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§&<§ = param1.readUnsignedInt();
         this.§0H§ = param1.readUnsignedInt();
         this.§4!2§ = param1.readUnsignedInt();
         this.§]!P§ = param1.readUnsignedShort();
         this.§[§ = param1.readUnsignedShort();
      }
      
      protected function §^>§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§-C§ == "utf-8")
         {
            this.§8t§ = param1.readUTFBytes(this.§]!P§);
         }
         else
         {
            this.§8t§ = param1.readMultiByte(this.§]!P§,this.§-C§);
         }
         var _loc2_:uint = this.§[§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§8t§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§=,§ = param1.readUnsignedInt();
               this.§@!0§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§[V§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §3!N§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§%!5§ === §7'§ && !this.§^c§)
         {
            if(§"A§ || §1r§)
            {
               param1.readBytes(this.§8I§,0,this.§0H§);
            }
            else
            {
               if(!this.§@!0§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§8I§.writeByte(120);
               _loc2_ = ~this.§%q§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§8I§.writeByte(_loc2_);
               param1.readBytes(this.§8I§,2,this.§0H§);
               this.§8I§.position = this.§8I§.length;
               this.§8I§.writeUnsignedInt(this.§=,§);
            }
            this.§1I§ = true;
         }
         else
         {
            if(this.§%!5§ != §>!U§)
            {
               throw new Error("Compression method " + this.§%!5§ + " is not supported.");
            }
            param1.readBytes(this.§8I§,0,this.§0H§);
            this.§1I§ = false;
         }
         this.§8I§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§1I§)
         {
            if(this.§8I§.length > 0)
            {
               this.§8I§.position = 0;
               this.§4!2§ = this.§8I§.length;
               if(§1r§)
               {
                  this.§8I§.deflate();
                  this.§0H§ = this.§8I§.length;
               }
               else if(§"A§)
               {
                  this.§8I§.compress.apply(this.§8I§,["deflate"]);
                  this.§0H§ = this.§8I§.length;
               }
               else
               {
                  this.§8I§.compress();
                  this.§0H§ = this.§8I§.length - 6;
               }
               this.§8I§.position = 0;
               this.§1I§ = true;
            }
            else
            {
               this.§0H§ = 0;
               this.§4!2§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§1I§ && this.§8I§.length > 0)
         {
            this.§8I§.position = 0;
            if(§1r§)
            {
               this.§8I§.inflate();
            }
            else if(§"A§)
            {
               this.§8I§.uncompress.apply(this.§8I§,["deflate"]);
            }
            else
            {
               this.§8I§.uncompress();
            }
            this.§8I§.position = 0;
            this.§1I§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§8t§ + "\n  date:" + this.§+!L§ + "\n  sizeCompressed:" + this.§0H§ + "\n  sizeUncompressed:" + this.§4!2§ + "\n  versionHost:" + this.§6! § + "\n  versionNumber:" + this.§,!Z§ + "\n  compressionMethod:" + this.§%!5§ + "\n  encrypted:" + this.§^c§ + "\n  hasDataDescriptor:" + this.§`7§ + "\n  hasCompressedPatchedData:" + this.§[!`§ + "\n  filenameEncoding:" + this.§-C§ + "\n  crc32:" + this.§&<§.toString(16) + "\n  adler32:" + this.§=,§.toString(16);
      }
   }
}

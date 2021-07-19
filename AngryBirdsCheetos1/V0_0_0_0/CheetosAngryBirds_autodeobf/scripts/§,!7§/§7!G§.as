package §,!7§
{
   import §=N§.§6R§;
   import flash.utils.*;
   
   public class §7!G§
   {
      
      public static const §18§:int = 0;
      
      public static const §7t§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §"I§:int = 6;
      
      public static const §3m§:int = 7;
      
      public static const §3!D§:int = 8;
      
      public static const §"`§:int = 9;
      
      public static const §,!A§:int = 10;
      
      protected static var §+K§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §?`§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §9!C§:int = 0;
      
      protected var §0!P§:String = "2.0";
      
      protected var §0!K§:int = 8;
      
      protected var §>0§:Boolean = false;
      
      protected var §#!R§:int = -1;
      
      protected var §[t§:int = -1;
      
      protected var §'W§:int = -1;
      
      protected var §^1§:Boolean = false;
      
      protected var §#!@§:Boolean = false;
      
      protected var §^t§:Date;
      
      protected var §;!Y§:uint;
      
      protected var §!O§:Boolean = false;
      
      protected var §2!R§:uint = 0;
      
      protected var §case§:uint = 0;
      
      protected var §2!S§:String = "";
      
      protected var §4d§:String;
      
      protected var §;!P§:Dictionary;
      
      protected var §1!P§:String = "";
      
      protected var §!!7§:ByteArray;
      
      var §^!T§:uint;
      
      var §%D§:uint = 0;
      
      var §>!R§:uint = 0;
      
      protected var §6!I§:Boolean = false;
      
      protected var §+c§:Function;
      
      public function §7!G§(param1:String = "utf-8")
      {
         this.§+c§ = this.§6!%§;
         super();
         this.§4d§ = param1;
         this.§;!P§ = new Dictionary();
         this.§!!7§ = new ByteArray();
         this.§!!7§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §25§() : Date
      {
         return this.§^t§;
      }
      
      public function set §25§(param1:Date) : void
      {
         this.§^t§ = param1 != null ? param1 : new Date();
      }
      
      public function get §8!§() : String
      {
         return this.§2!S§;
      }
      
      public function set §8!§(param1:String) : void
      {
         this.§2!S§ = param1;
      }
      
      function get §!!'§() : Boolean
      {
         return this.§^1§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§6!I§)
         {
            this.uncompress();
         }
         return this.§!!7§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§#e§(param1);
      }
      
      public function §#e§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§!!7§,0,param1.length);
            this.§^!T§ = §6R§.§#<§(this.§!!7§);
            this.§!O§ = false;
         }
         else
         {
            this.§!!7§.length = 0;
            this.§!!7§.position = 0;
            this.§6!I§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§>!R§ = this.§%D§ = this.§!!7§.length;
         }
      }
      
      public function get §^^§() : String
      {
         return this.§0!P§;
      }
      
      public function get §>J§() : uint
      {
         return this.§%D§;
      }
      
      public function get §'o§() : uint
      {
         return this.§>!R§;
      }
      
      public function §-7§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§6!I§)
         {
            this.uncompress();
         }
         this.§!!7§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§!!7§.readUTFBytes(this.§!!7§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§!!7§.readMultiByte(this.§!!7§.bytesAvailable,param2);
         }
         this.§!!7§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §,!W§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§!!7§.length = 0;
         this.§!!7§.position = 0;
         this.§6!I§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§!!7§.writeUTFBytes(param1);
            }
            else
            {
               this.§!!7§.writeMultiByte(param1,param2);
            }
            this.§^!T§ = §6R§.§#<§(this.§!!7§);
            this.§!O§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§>!R§ = this.§%D§ = this.§!!7§.length;
         }
      }
      
      public function §`r§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§#!K§.§"Y§);
            param1.writeShort(this.§9!C§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§#!K§.§<_§);
         }
         param1.writeShort(this.§9!C§ << 8 | 20);
         param1.writeShort(this.§4d§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§6!I§ ? int(§3!D§) : int(§18§));
         var _loc5_:Date = this.§^t§ != null ? this.§^t§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§^!T§);
         param1.writeUnsignedInt(this.§%D§);
         param1.writeUnsignedInt(this.§>!R§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§4d§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§2!S§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§2!S§,this.§4d§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§;!P§)
         {
            if((_loc15_ = this.§;!P§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§!O§)
            {
               if(_loc16_ = this.§6!I§)
               {
                  this.uncompress();
               }
               this.§;!Y§ = §6R§.§1!H§(this.§!!7§,0,this.§!!7§.length);
               this.§!O§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§;!Y§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§1!P§.length > 0)
         {
            if(this.§4d§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§1!P§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§1!P§,this.§4d§);
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
         if(!param3 && this.§!!7§.length > 0)
         {
            if(this.§6!I§)
            {
               if(§+K§ || §?`§)
               {
                  _loc13_ = this.§!!7§.length;
                  param1.writeBytes(this.§!!7§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§!!7§.length - 6;
                  param1.writeBytes(this.§!!7§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§!!7§.length;
               param1.writeBytes(this.§!!7§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§+c§(param1))
         {
         }
         return this.§+c§ === this.§"<§;
      }
      
      protected function §"<§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §6!%§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§ !X§(param1);
            if(this.§2!R§ + this.§case§ > 0)
            {
               this.§+c§ = this.§-R§;
            }
            else
            {
               this.§+c§ = this.§@^§;
            }
            return true;
         }
         return false;
      }
      
      protected function §-R§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§2!R§ + this.§case§)
         {
            this.§!$§(param1);
            this.§+c§ = this.§@^§;
            return true;
         }
         return false;
      }
      
      protected function §@^§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§^1§)
         {
            this.§+c§ = this.§"<§;
            _loc2_ = false;
         }
         else if(this.§%D§ == 0)
         {
            this.§+c§ = this.§"<§;
         }
         else if(param1.bytesAvailable >= this.§%D§)
         {
            this.§;N§(param1);
            this.§+c§ = this.§"<§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function § !X§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§9!C§ = _loc2_ >> 8;
         this.§0!P§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§0!K§ = param1.readUnsignedShort();
         this.§>0§ = (_loc3_ & 1) !== 0;
         this.§^1§ = (_loc3_ & 8) !== 0;
         this.§#!@§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§4d§ = "utf-8";
         }
         if(this.§0!K§ === §"I§)
         {
            this.§#!R§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§[t§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§0!K§ === §3!D§)
         {
            this.§'W§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§^t§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§^!T§ = param1.readUnsignedInt();
         this.§%D§ = param1.readUnsignedInt();
         this.§>!R§ = param1.readUnsignedInt();
         this.§2!R§ = param1.readUnsignedShort();
         this.§case§ = param1.readUnsignedShort();
      }
      
      protected function §!$§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§4d§ == "utf-8")
         {
            this.§2!S§ = param1.readUTFBytes(this.§2!R§);
         }
         else
         {
            this.§2!S§ = param1.readMultiByte(this.§2!R§,this.§4d§);
         }
         var _loc2_:uint = this.§case§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§2!S§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§;!Y§ = param1.readUnsignedInt();
               this.§!O§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§;!P§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §;N§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§0!K§ === §3!D§ && !this.§>0§)
         {
            if(§+K§ || §?`§)
            {
               param1.readBytes(this.§!!7§,0,this.§%D§);
            }
            else
            {
               if(!this.§!O§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§!!7§.writeByte(120);
               _loc2_ = ~this.§'W§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§!!7§.writeByte(_loc2_);
               param1.readBytes(this.§!!7§,2,this.§%D§);
               this.§!!7§.position = this.§!!7§.length;
               this.§!!7§.writeUnsignedInt(this.§;!Y§);
            }
            this.§6!I§ = true;
         }
         else
         {
            if(this.§0!K§ != §18§)
            {
               throw new Error("Compression method " + this.§0!K§ + " is not supported.");
            }
            param1.readBytes(this.§!!7§,0,this.§%D§);
            this.§6!I§ = false;
         }
         this.§!!7§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§6!I§)
         {
            if(this.§!!7§.length > 0)
            {
               this.§!!7§.position = 0;
               this.§>!R§ = this.§!!7§.length;
               if(§?`§)
               {
                  this.§!!7§.deflate();
                  this.§%D§ = this.§!!7§.length;
               }
               else if(§+K§)
               {
                  this.§!!7§.compress.apply(this.§!!7§,["deflate"]);
                  this.§%D§ = this.§!!7§.length;
               }
               else
               {
                  this.§!!7§.compress();
                  this.§%D§ = this.§!!7§.length - 6;
               }
               this.§!!7§.position = 0;
               this.§6!I§ = true;
            }
            else
            {
               this.§%D§ = 0;
               this.§>!R§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§6!I§ && this.§!!7§.length > 0)
         {
            this.§!!7§.position = 0;
            if(§?`§)
            {
               this.§!!7§.inflate();
            }
            else if(§+K§)
            {
               this.§!!7§.uncompress.apply(this.§!!7§,["deflate"]);
            }
            else
            {
               this.§!!7§.uncompress();
            }
            this.§!!7§.position = 0;
            this.§6!I§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§2!S§ + "\n  date:" + this.§^t§ + "\n  sizeCompressed:" + this.§%D§ + "\n  sizeUncompressed:" + this.§>!R§ + "\n  versionHost:" + this.§9!C§ + "\n  versionNumber:" + this.§0!P§ + "\n  compressionMethod:" + this.§0!K§ + "\n  encrypted:" + this.§>0§ + "\n  hasDataDescriptor:" + this.§^1§ + "\n  hasCompressedPatchedData:" + this.§#!@§ + "\n  filenameEncoding:" + this.§4d§ + "\n  crc32:" + this.§^!T§.toString(16) + "\n  adler32:" + this.§;!Y§.toString(16);
      }
   }
}

package §@!X§
{
   import §[_§.§=N§;
   import flash.utils.*;
   
   public class §"u§
   {
      
      public static const §;N§:int = 0;
      
      public static const §18§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §7t§:int = 6;
      
      public static const §"I§:int = 7;
      
      public static const §3m§:int = 8;
      
      public static const §3!D§:int = 9;
      
      public static const §"`§:int = 10;
      
      protected static var §,!A§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §+K§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §7!G§:int = 0;
      
      protected var §9!C§:String = "2.0";
      
      protected var §0!P§:int = 8;
      
      protected var §0!K§:Boolean = false;
      
      protected var §>0§:int = -1;
      
      protected var §#!R§:int = -1;
      
      protected var §[t§:int = -1;
      
      protected var §'W§:Boolean = false;
      
      protected var §^1§:Boolean = false;
      
      protected var §#!@§:Date;
      
      protected var §^t§:uint;
      
      protected var §;!Y§:Boolean = false;
      
      protected var §!O§:uint = 0;
      
      protected var §2!R§:uint = 0;
      
      protected var §case§:String = "";
      
      protected var §2!S§:String;
      
      protected var §4d§:Dictionary;
      
      protected var §;!P§:String = "";
      
      protected var §1!P§:ByteArray;
      
      var §!!7§:uint;
      
      var §^!T§:uint = 0;
      
      var §%D§:uint = 0;
      
      protected var §>!R§:Boolean = false;
      
      protected var §3!#§:Function;
      
      public function §"u§(param1:String = "utf-8")
      {
         this.§3!#§ = this.§"<§;
         super();
         this.§2!S§ = param1;
         this.§4d§ = new Dictionary();
         this.§1!P§ = new ByteArray();
         this.§1!P§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §6!I§() : Date
      {
         return this.§#!@§;
      }
      
      public function set §6!I§(param1:Date) : void
      {
         this.§#!@§ = param1 != null ? param1 : new Date();
      }
      
      public function get §25§() : String
      {
         return this.§case§;
      }
      
      public function set §25§(param1:String) : void
      {
         this.§case§ = param1;
      }
      
      function get §8!§() : Boolean
      {
         return this.§'W§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§>!R§)
         {
            this.uncompress();
         }
         return this.§1!P§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§!!'§(param1);
      }
      
      public function §!!'§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§1!P§,0,param1.length);
            this.§!!7§ = §=N§.§`V§(this.§1!P§);
            this.§;!Y§ = false;
         }
         else
         {
            this.§1!P§.length = 0;
            this.§1!P§.position = 0;
            this.§>!R§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§%D§ = this.§^!T§ = this.§1!P§.length;
         }
      }
      
      public function get §#e§() : String
      {
         return this.§9!C§;
      }
      
      public function get §^^§() : uint
      {
         return this.§^!T§;
      }
      
      public function get §>J§() : uint
      {
         return this.§%D§;
      }
      
      public function §'o§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§>!R§)
         {
            this.uncompress();
         }
         this.§1!P§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§1!P§.readUTFBytes(this.§1!P§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§1!P§.readMultiByte(this.§1!P§.bytesAvailable,param2);
         }
         this.§1!P§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §-7§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§1!P§.length = 0;
         this.§1!P§.position = 0;
         this.§>!R§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§1!P§.writeUTFBytes(param1);
            }
            else
            {
               this.§1!P§.writeMultiByte(param1,param2);
            }
            this.§!!7§ = §=N§.§`V§(this.§1!P§);
            this.§;!Y§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§%D§ = this.§^!T§ = this.§1!P§.length;
         }
      }
      
      public function §?c§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§,!7§.§extends§);
            param1.writeShort(this.§7!G§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§,!7§.§;?§);
         }
         param1.writeShort(this.§7!G§ << 8 | 20);
         param1.writeShort(this.§2!S§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§>!R§ ? int(§3m§) : int(§;N§));
         var _loc5_:Date = this.§#!@§ != null ? this.§#!@§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§!!7§);
         param1.writeUnsignedInt(this.§^!T§);
         param1.writeUnsignedInt(this.§%D§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§2!S§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§case§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§case§,this.§2!S§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§4d§)
         {
            if((_loc15_ = this.§4d§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§;!Y§)
            {
               if(_loc16_ = this.§>!R§)
               {
                  this.uncompress();
               }
               this.§^t§ = §=N§.§#<§(this.§1!P§,0,this.§1!P§.length);
               this.§;!Y§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§^t§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§;!P§.length > 0)
         {
            if(this.§2!S§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§;!P§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§;!P§,this.§2!S§);
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
         if(!param3 && this.§1!P§.length > 0)
         {
            if(this.§>!R§)
            {
               if(§,!A§ || §+K§)
               {
                  _loc13_ = this.§1!P§.length;
                  param1.writeBytes(this.§1!P§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§1!P§.length - 6;
                  param1.writeBytes(this.§1!P§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§1!P§.length;
               param1.writeBytes(this.§1!P§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§3!#§(param1))
         {
         }
         return this.§3!#§ === this.§,!W§;
      }
      
      protected function §,!W§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §"<§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§@^§(param1);
            if(this.§!O§ + this.§2!R§ > 0)
            {
               this.§3!#§ = this.§6!%§;
            }
            else
            {
               this.§3!#§ = this.§-R§;
            }
            return true;
         }
         return false;
      }
      
      protected function §6!%§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§!O§ + this.§2!R§)
         {
            this.§ !X§(param1);
            this.§3!#§ = this.§-R§;
            return true;
         }
         return false;
      }
      
      protected function §-R§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§'W§)
         {
            this.§3!#§ = this.§,!W§;
            _loc2_ = false;
         }
         else if(this.§^!T§ == 0)
         {
            this.§3!#§ = this.§,!W§;
         }
         else if(param1.bytesAvailable >= this.§^!T§)
         {
            this.§!$§(param1);
            this.§3!#§ = this.§,!W§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §@^§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§7!G§ = _loc2_ >> 8;
         this.§9!C§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§0!P§ = param1.readUnsignedShort();
         this.§0!K§ = (_loc3_ & 1) !== 0;
         this.§'W§ = (_loc3_ & 8) !== 0;
         this.§^1§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§2!S§ = "utf-8";
         }
         if(this.§0!P§ === §7t§)
         {
            this.§>0§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§#!R§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§0!P§ === §3m§)
         {
            this.§[t§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§#!@§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§!!7§ = param1.readUnsignedInt();
         this.§^!T§ = param1.readUnsignedInt();
         this.§%D§ = param1.readUnsignedInt();
         this.§!O§ = param1.readUnsignedShort();
         this.§2!R§ = param1.readUnsignedShort();
      }
      
      protected function § !X§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§2!S§ == "utf-8")
         {
            this.§case§ = param1.readUTFBytes(this.§!O§);
         }
         else
         {
            this.§case§ = param1.readMultiByte(this.§!O§,this.§2!S§);
         }
         var _loc2_:uint = this.§2!R§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§case§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§^t§ = param1.readUnsignedInt();
               this.§;!Y§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§4d§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §!$§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§0!P§ === §3m§ && !this.§0!K§)
         {
            if(§,!A§ || §+K§)
            {
               param1.readBytes(this.§1!P§,0,this.§^!T§);
            }
            else
            {
               if(!this.§;!Y§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§1!P§.writeByte(120);
               _loc2_ = ~this.§[t§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§1!P§.writeByte(_loc2_);
               param1.readBytes(this.§1!P§,2,this.§^!T§);
               this.§1!P§.position = this.§1!P§.length;
               this.§1!P§.writeUnsignedInt(this.§^t§);
            }
            this.§>!R§ = true;
         }
         else
         {
            if(this.§0!P§ != §;N§)
            {
               throw new Error("Compression method " + this.§0!P§ + " is not supported.");
            }
            param1.readBytes(this.§1!P§,0,this.§^!T§);
            this.§>!R§ = false;
         }
         this.§1!P§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§>!R§)
         {
            if(this.§1!P§.length > 0)
            {
               this.§1!P§.position = 0;
               this.§%D§ = this.§1!P§.length;
               if(§+K§)
               {
                  this.§1!P§.deflate();
                  this.§^!T§ = this.§1!P§.length;
               }
               else if(§,!A§)
               {
                  this.§1!P§.compress.apply(this.§1!P§,["deflate"]);
                  this.§^!T§ = this.§1!P§.length;
               }
               else
               {
                  this.§1!P§.compress();
                  this.§^!T§ = this.§1!P§.length - 6;
               }
               this.§1!P§.position = 0;
               this.§>!R§ = true;
            }
            else
            {
               this.§^!T§ = 0;
               this.§%D§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§>!R§ && this.§1!P§.length > 0)
         {
            this.§1!P§.position = 0;
            if(§+K§)
            {
               this.§1!P§.inflate();
            }
            else if(§,!A§)
            {
               this.§1!P§.uncompress.apply(this.§1!P§,["deflate"]);
            }
            else
            {
               this.§1!P§.uncompress();
            }
            this.§1!P§.position = 0;
            this.§>!R§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§case§ + "\n  date:" + this.§#!@§ + "\n  sizeCompressed:" + this.§^!T§ + "\n  sizeUncompressed:" + this.§%D§ + "\n  versionHost:" + this.§7!G§ + "\n  versionNumber:" + this.§9!C§ + "\n  compressionMethod:" + this.§0!P§ + "\n  encrypted:" + this.§0!K§ + "\n  hasDataDescriptor:" + this.§'W§ + "\n  hasCompressedPatchedData:" + this.§^1§ + "\n  filenameEncoding:" + this.§2!S§ + "\n  crc32:" + this.§!!7§.toString(16) + "\n  adler32:" + this.§^t§.toString(16);
      }
   }
}

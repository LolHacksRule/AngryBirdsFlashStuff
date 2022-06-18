package §[H§
{
   import § ?§.§-w§;
   import flash.utils.*;
   
   public class §>m§
   {
      
      public static const §3>§:int = 0;
      
      public static const §7!N§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §'!6§:int = 6;
      
      public static const §9e§:int = 7;
      
      public static const §%Q§:int = 8;
      
      public static const §3!I§:int = 9;
      
      public static const §3[§:int = 10;
      
      protected static var §-<§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §&8§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §3k§:int = 0;
      
      protected var § else§:String = "2.0";
      
      protected var §5!?§:int = 8;
      
      protected var §-?§:Boolean = false;
      
      protected var §1j§:int = -1;
      
      protected var §&p§:int = -1;
      
      protected var §9!§:int = -1;
      
      protected var §&%§:Boolean = false;
      
      protected var §,!'§:Boolean = false;
      
      protected var §9A§:Date;
      
      protected var §4!9§:uint;
      
      protected var §9j§:Boolean = false;
      
      protected var §@Y§:uint = 0;
      
      protected var §8S§:uint = 0;
      
      protected var §8!#§:String = "";
      
      protected var §;§:String;
      
      protected var §"k§:Dictionary;
      
      protected var §@q§:String = "";
      
      protected var §[@§:ByteArray;
      
      var §4O§:uint;
      
      var §5!K§:uint = 0;
      
      var §7t§:uint = 0;
      
      protected var §^!O§:Boolean = false;
      
      protected var §1!-§:Function;
      
      public function §>m§(param1:String = "utf-8")
      {
         this.§1!-§ = this.§5n§;
         super();
         this.§;§ = param1;
         this.§"k§ = new Dictionary();
         this.§[@§ = new ByteArray();
         this.§[@§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §0!9§() : Date
      {
         return this.§9A§;
      }
      
      public function set §0!9§(param1:Date) : void
      {
         this.§9A§ = param1 != null ? param1 : new Date();
      }
      
      public function get §4^§() : String
      {
         return this.§8!#§;
      }
      
      public function set §4^§(param1:String) : void
      {
         this.§8!#§ = param1;
      }
      
      function get §0!H§() : Boolean
      {
         return this.§&%§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§^!O§)
         {
            this.uncompress();
         }
         return this.§[@§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§7!=§(param1);
      }
      
      public function §7!=§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§[@§,0,param1.length);
            this.§4O§ = §-w§.§7!B§(this.§[@§);
            this.§9j§ = false;
         }
         else
         {
            this.§[@§.length = 0;
            this.§[@§.position = 0;
            this.§^!O§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§7t§ = this.§5!K§ = this.§[@§.length;
         }
      }
      
      public function get §-o§() : String
      {
         return this.§ else§;
      }
      
      public function get §0+§() : uint
      {
         return this.§5!K§;
      }
      
      public function get § each§() : uint
      {
         return this.§7t§;
      }
      
      public function §2!@§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§^!O§)
         {
            this.uncompress();
         }
         this.§[@§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§[@§.readUTFBytes(this.§[@§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§[@§.readMultiByte(this.§[@§.bytesAvailable,param2);
         }
         this.§[@§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §3!E§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§[@§.length = 0;
         this.§[@§.position = 0;
         this.§^!O§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§[@§.writeUTFBytes(param1);
            }
            else
            {
               this.§[@§.writeMultiByte(param1,param2);
            }
            this.§4O§ = §-w§.§7!B§(this.§[@§);
            this.§9j§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§7t§ = this.§5!K§ = this.§[@§.length;
         }
      }
      
      public function §"!2§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§9N§.§9!7§);
            param1.writeShort(this.§3k§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§9N§.§?!4§);
         }
         param1.writeShort(this.§3k§ << 8 | 20);
         param1.writeShort(this.§;§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§^!O§ ? int(§%Q§) : int(§3>§));
         var _loc5_:Date = this.§9A§ != null ? this.§9A§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§4O§);
         param1.writeUnsignedInt(this.§5!K§);
         param1.writeUnsignedInt(this.§7t§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§;§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§8!#§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§8!#§,this.§;§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§"k§)
         {
            if((_loc15_ = this.§"k§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§9j§)
            {
               if(_loc16_ = this.§^!O§)
               {
                  this.uncompress();
               }
               this.§4!9§ = §-w§.§'!'§(this.§[@§,0,this.§[@§.length);
               this.§9j§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§4!9§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§@q§.length > 0)
         {
            if(this.§;§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§@q§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§@q§,this.§;§);
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
         if(!param3 && this.§[@§.length > 0)
         {
            if(this.§^!O§)
            {
               if(§-<§ || §&8§)
               {
                  _loc13_ = this.§[@§.length;
                  param1.writeBytes(this.§[@§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§[@§.length - 6;
                  param1.writeBytes(this.§[@§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§[@§.length;
               param1.writeBytes(this.§[@§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§1!-§(param1))
         {
         }
         return this.§1!-§ === this.§'!9§;
      }
      
      protected function §'!9§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §5n§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§7A§(param1);
            if(this.§@Y§ + this.§8S§ > 0)
            {
               this.§1!-§ = this.§+x§;
            }
            else
            {
               this.§1!-§ = this.§9!N§;
            }
            return true;
         }
         return false;
      }
      
      protected function §+x§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§@Y§ + this.§8S§)
         {
            this.§6a§(param1);
            this.§1!-§ = this.§9!N§;
            return true;
         }
         return false;
      }
      
      protected function §9!N§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§&%§)
         {
            this.§1!-§ = this.§'!9§;
            _loc2_ = false;
         }
         else if(this.§5!K§ == 0)
         {
            this.§1!-§ = this.§'!9§;
         }
         else if(param1.bytesAvailable >= this.§5!K§)
         {
            this.§>!>§(param1);
            this.§1!-§ = this.§'!9§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §7A§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§3k§ = _loc2_ >> 8;
         this.§ else§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§5!?§ = param1.readUnsignedShort();
         this.§-?§ = (_loc3_ & 1) !== 0;
         this.§&%§ = (_loc3_ & 8) !== 0;
         this.§,!'§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§;§ = "utf-8";
         }
         if(this.§5!?§ === §'!6§)
         {
            this.§1j§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§&p§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§5!?§ === §%Q§)
         {
            this.§9!§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§9A§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§4O§ = param1.readUnsignedInt();
         this.§5!K§ = param1.readUnsignedInt();
         this.§7t§ = param1.readUnsignedInt();
         this.§@Y§ = param1.readUnsignedShort();
         this.§8S§ = param1.readUnsignedShort();
      }
      
      protected function §6a§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§;§ == "utf-8")
         {
            this.§8!#§ = param1.readUTFBytes(this.§@Y§);
         }
         else
         {
            this.§8!#§ = param1.readMultiByte(this.§@Y§,this.§;§);
         }
         var _loc2_:uint = this.§8S§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§8!#§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§4!9§ = param1.readUnsignedInt();
               this.§9j§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§"k§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §>!>§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§5!?§ === §%Q§ && !this.§-?§)
         {
            if(§-<§ || §&8§)
            {
               param1.readBytes(this.§[@§,0,this.§5!K§);
            }
            else
            {
               if(!this.§9j§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§[@§.writeByte(120);
               _loc2_ = ~this.§9!§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§[@§.writeByte(_loc2_);
               param1.readBytes(this.§[@§,2,this.§5!K§);
               this.§[@§.position = this.§[@§.length;
               this.§[@§.writeUnsignedInt(this.§4!9§);
            }
            this.§^!O§ = true;
         }
         else
         {
            if(this.§5!?§ != §3>§)
            {
               throw new Error("Compression method " + this.§5!?§ + " is not supported.");
            }
            param1.readBytes(this.§[@§,0,this.§5!K§);
            this.§^!O§ = false;
         }
         this.§[@§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§^!O§)
         {
            if(this.§[@§.length > 0)
            {
               this.§[@§.position = 0;
               this.§7t§ = this.§[@§.length;
               if(§&8§)
               {
                  this.§[@§.deflate();
                  this.§5!K§ = this.§[@§.length;
               }
               else if(§-<§)
               {
                  this.§[@§.compress.apply(this.§[@§,["deflate"]);
                  this.§5!K§ = this.§[@§.length;
               }
               else
               {
                  this.§[@§.compress();
                  this.§5!K§ = this.§[@§.length - 6;
               }
               this.§[@§.position = 0;
               this.§^!O§ = true;
            }
            else
            {
               this.§5!K§ = 0;
               this.§7t§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§^!O§ && this.§[@§.length > 0)
         {
            this.§[@§.position = 0;
            if(§&8§)
            {
               this.§[@§.inflate();
            }
            else if(§-<§)
            {
               this.§[@§.uncompress.apply(this.§[@§,["deflate"]);
            }
            else
            {
               this.§[@§.uncompress();
            }
            this.§[@§.position = 0;
            this.§^!O§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§8!#§ + "\n  date:" + this.§9A§ + "\n  sizeCompressed:" + this.§5!K§ + "\n  sizeUncompressed:" + this.§7t§ + "\n  versionHost:" + this.§3k§ + "\n  versionNumber:" + this.§ else§ + "\n  compressionMethod:" + this.§5!?§ + "\n  encrypted:" + this.§-?§ + "\n  hasDataDescriptor:" + this.§&%§ + "\n  hasCompressedPatchedData:" + this.§,!'§ + "\n  filenameEncoding:" + this.§;§ + "\n  crc32:" + this.§4O§.toString(16) + "\n  adler32:" + this.§4!9§.toString(16);
      }
   }
}

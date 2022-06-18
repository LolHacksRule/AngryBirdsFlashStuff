package §2&§
{
   import §=U§.§9R§;
   import flash.utils.*;
   
   public class §?o§
   {
      
      public static const §>P§:int = 0;
      
      public static const §'!>§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §<5§:int = 6;
      
      public static const §9!^§:int = 7;
      
      public static const §^!5§:int = 8;
      
      public static const § !6§:int = 9;
      
      public static const §9A§:int = 10;
      
      protected static var §8[§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §>B§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §>0§:int = 0;
      
      protected var §6Q§:String = "2.0";
      
      protected var §5D§:int = 8;
      
      protected var §`-§:Boolean = false;
      
      protected var §;b§:int = -1;
      
      protected var §-E§:int = -1;
      
      protected var §^r§:int = -1;
      
      protected var §1X§:Boolean = false;
      
      protected var §4p§:Boolean = false;
      
      protected var §]!?§:Date;
      
      protected var §3!$§:uint;
      
      protected var §+[§:Boolean = false;
      
      protected var §=z§:uint = 0;
      
      protected var §+2§:uint = 0;
      
      protected var §"`§:String = "";
      
      protected var §"!>§:String;
      
      protected var §#!K§:Dictionary;
      
      protected var §0r§:String = "";
      
      protected var §8d§:ByteArray;
      
      var §@T§:uint;
      
      var §-d§:uint = 0;
      
      var § F§:uint = 0;
      
      protected var §6;§:Boolean = false;
      
      protected var §]`§:Function;
      
      public function §?o§(param1:String = "utf-8")
      {
         this.§]`§ = this.§;,§;
         super();
         this.§"!>§ = param1;
         this.§#!K§ = new Dictionary();
         this.§8d§ = new ByteArray();
         this.§8d§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §,!O§() : Date
      {
         return this.§]!?§;
      }
      
      public function set §,!O§(param1:Date) : void
      {
         this.§]!?§ = param1 != null ? param1 : new Date();
      }
      
      public function get §else§() : String
      {
         return this.§"`§;
      }
      
      public function set §else§(param1:String) : void
      {
         this.§"`§ = param1;
      }
      
      function get §!D§() : Boolean
      {
         return this.§1X§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§6;§)
         {
            this.uncompress();
         }
         return this.§8d§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§%%§(param1);
      }
      
      public function §%%§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§8d§,0,param1.length);
            this.§@T§ = §9R§.§6$§(this.§8d§);
            this.§+[§ = false;
         }
         else
         {
            this.§8d§.length = 0;
            this.§8d§.position = 0;
            this.§6;§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§ F§ = this.§-d§ = this.§8d§.length;
         }
      }
      
      public function get §@!_§() : String
      {
         return this.§6Q§;
      }
      
      public function get §"! §() : uint
      {
         return this.§-d§;
      }
      
      public function get §@!$§() : uint
      {
         return this.§ F§;
      }
      
      public function §6?§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§6;§)
         {
            this.uncompress();
         }
         this.§8d§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§8d§.readUTFBytes(this.§8d§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§8d§.readMultiByte(this.§8d§.bytesAvailable,param2);
         }
         this.§8d§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §!A§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§8d§.length = 0;
         this.§8d§.position = 0;
         this.§6;§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§8d§.writeUTFBytes(param1);
            }
            else
            {
               this.§8d§.writeMultiByte(param1,param2);
            }
            this.§@T§ = §9R§.§6$§(this.§8d§);
            this.§+[§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§ F§ = this.§-d§ = this.§8d§.length;
         }
      }
      
      public function §"^§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§`b§.§&P§);
            param1.writeShort(this.§>0§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§`b§.§@!G§);
         }
         param1.writeShort(this.§>0§ << 8 | 20);
         param1.writeShort(this.§"!>§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§6;§ ? int(§^!5§) : int(§>P§));
         var _loc5_:Date = this.§]!?§ != null ? this.§]!?§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§@T§);
         param1.writeUnsignedInt(this.§-d§);
         param1.writeUnsignedInt(this.§ F§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§"!>§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§"`§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§"`§,this.§"!>§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§#!K§)
         {
            if((_loc15_ = this.§#!K§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§+[§)
            {
               if(_loc16_ = this.§6;§)
               {
                  this.uncompress();
               }
               this.§3!$§ = §9R§.§<!`§(this.§8d§,0,this.§8d§.length);
               this.§+[§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§3!$§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§0r§.length > 0)
         {
            if(this.§"!>§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§0r§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§0r§,this.§"!>§);
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
         if(!param3 && this.§8d§.length > 0)
         {
            if(this.§6;§)
            {
               if(§8[§ || §>B§)
               {
                  _loc13_ = this.§8d§.length;
                  param1.writeBytes(this.§8d§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§8d§.length - 6;
                  param1.writeBytes(this.§8d§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§8d§.length;
               param1.writeBytes(this.§8d§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§]`§(param1))
         {
         }
         return this.§]`§ === this.§&!=§;
      }
      
      protected function §&!=§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §;,§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§'L§(param1);
            if(this.§=z§ + this.§+2§ > 0)
            {
               this.§]`§ = this.§ !I§;
            }
            else
            {
               this.§]`§ = this.§;N§;
            }
            return true;
         }
         return false;
      }
      
      protected function § !I§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§=z§ + this.§+2§)
         {
            this.§&A§(param1);
            this.§]`§ = this.§;N§;
            return true;
         }
         return false;
      }
      
      protected function §;N§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§1X§)
         {
            this.§]`§ = this.§&!=§;
            _loc2_ = false;
         }
         else if(this.§-d§ == 0)
         {
            this.§]`§ = this.§&!=§;
         }
         else if(param1.bytesAvailable >= this.§-d§)
         {
            this.§1!§(param1);
            this.§]`§ = this.§&!=§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §'L§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§>0§ = _loc2_ >> 8;
         this.§6Q§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§5D§ = param1.readUnsignedShort();
         this.§`-§ = (_loc3_ & 1) !== 0;
         this.§1X§ = (_loc3_ & 8) !== 0;
         this.§4p§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§"!>§ = "utf-8";
         }
         if(this.§5D§ === §<5§)
         {
            this.§;b§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§-E§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§5D§ === §^!5§)
         {
            this.§^r§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§]!?§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§@T§ = param1.readUnsignedInt();
         this.§-d§ = param1.readUnsignedInt();
         this.§ F§ = param1.readUnsignedInt();
         this.§=z§ = param1.readUnsignedShort();
         this.§+2§ = param1.readUnsignedShort();
      }
      
      protected function §&A§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§"!>§ == "utf-8")
         {
            this.§"`§ = param1.readUTFBytes(this.§=z§);
         }
         else
         {
            this.§"`§ = param1.readMultiByte(this.§=z§,this.§"!>§);
         }
         var _loc2_:uint = this.§+2§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§"`§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§3!$§ = param1.readUnsignedInt();
               this.§+[§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§#!K§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §1!§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§5D§ === §^!5§ && !this.§`-§)
         {
            if(§8[§ || §>B§)
            {
               param1.readBytes(this.§8d§,0,this.§-d§);
            }
            else
            {
               if(!this.§+[§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§8d§.writeByte(120);
               _loc2_ = ~this.§^r§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§8d§.writeByte(_loc2_);
               param1.readBytes(this.§8d§,2,this.§-d§);
               this.§8d§.position = this.§8d§.length;
               this.§8d§.writeUnsignedInt(this.§3!$§);
            }
            this.§6;§ = true;
         }
         else
         {
            if(this.§5D§ != §>P§)
            {
               throw new Error("Compression method " + this.§5D§ + " is not supported.");
            }
            param1.readBytes(this.§8d§,0,this.§-d§);
            this.§6;§ = false;
         }
         this.§8d§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§6;§)
         {
            if(this.§8d§.length > 0)
            {
               this.§8d§.position = 0;
               this.§ F§ = this.§8d§.length;
               if(§>B§)
               {
                  this.§8d§.deflate();
                  this.§-d§ = this.§8d§.length;
               }
               else if(§8[§)
               {
                  this.§8d§.compress.apply(this.§8d§,["deflate"]);
                  this.§-d§ = this.§8d§.length;
               }
               else
               {
                  this.§8d§.compress();
                  this.§-d§ = this.§8d§.length - 6;
               }
               this.§8d§.position = 0;
               this.§6;§ = true;
            }
            else
            {
               this.§-d§ = 0;
               this.§ F§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§6;§ && this.§8d§.length > 0)
         {
            this.§8d§.position = 0;
            if(§>B§)
            {
               this.§8d§.inflate();
            }
            else if(§8[§)
            {
               this.§8d§.uncompress.apply(this.§8d§,["deflate"]);
            }
            else
            {
               this.§8d§.uncompress();
            }
            this.§8d§.position = 0;
            this.§6;§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§"`§ + "\n  date:" + this.§]!?§ + "\n  sizeCompressed:" + this.§-d§ + "\n  sizeUncompressed:" + this.§ F§ + "\n  versionHost:" + this.§>0§ + "\n  versionNumber:" + this.§6Q§ + "\n  compressionMethod:" + this.§5D§ + "\n  encrypted:" + this.§`-§ + "\n  hasDataDescriptor:" + this.§1X§ + "\n  hasCompressedPatchedData:" + this.§4p§ + "\n  filenameEncoding:" + this.§"!>§ + "\n  crc32:" + this.§@T§.toString(16) + "\n  adler32:" + this.§3!$§.toString(16);
      }
   }
}

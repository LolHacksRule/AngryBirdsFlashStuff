package §5_§
{
   import §>!F§.§9i§;
   import flash.utils.*;
   
   public class §2w§
   {
      
      public static const §?!=§:int = 0;
      
      public static const §>§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §"R§:int = 6;
      
      public static const §case§:int = 7;
      
      public static const §,!=§:int = 8;
      
      public static const §#V§:int = 9;
      
      public static const §9!0§:int = 10;
      
      protected static var §+!H§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §!"+§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §!"&§:int = 0;
      
      protected var §#t§:String = "2.0";
      
      protected var §7!;§:int = 8;
      
      protected var §4k§:Boolean = false;
      
      protected var §^i§:int = -1;
      
      protected var §1!y§:int = -1;
      
      protected var §2^§:int = -1;
      
      protected var §9Z§:Boolean = false;
      
      protected var §>!j§:Boolean = false;
      
      protected var §,!h§:Date;
      
      protected var §3!b§:uint;
      
      protected var § ;§:Boolean = false;
      
      protected var §+!V§:uint = 0;
      
      protected var §[!g§:uint = 0;
      
      protected var §0!X§:String = "";
      
      protected var §!+§:String;
      
      protected var §#!K§:Dictionary;
      
      protected var §;!z§:String = "";
      
      protected var §7!<§:ByteArray;
      
      var §"!b§:uint;
      
      var §+"1§:uint = 0;
      
      var §8!T§:uint = 0;
      
      protected var §;!?§:Boolean = false;
      
      protected var §="$§:Function;
      
      public function §2w§(param1:String = "utf-8")
      {
         this.§="$§ = this.§4e§;
         super();
         this.§!+§ = param1;
         this.§#!K§ = new Dictionary();
         this.§7!<§ = new ByteArray();
         this.§7!<§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §?!^§() : Date
      {
         return this.§,!h§;
      }
      
      public function set §?!^§(param1:Date) : void
      {
         this.§,!h§ = param1 != null ? param1 : new Date();
      }
      
      public function get § !P§() : String
      {
         return this.§0!X§;
      }
      
      public function set § !P§(param1:String) : void
      {
         this.§0!X§ = param1;
      }
      
      function get §0!_§() : Boolean
      {
         return this.§9Z§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§;!?§)
         {
            this.uncompress();
         }
         return this.§7!<§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§15§(param1);
      }
      
      public function §15§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§7!<§,0,param1.length);
            this.§"!b§ = §9i§.§1Y§(this.§7!<§);
            this.§ ;§ = false;
         }
         else
         {
            this.§7!<§.length = 0;
            this.§7!<§.position = 0;
            this.§;!?§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§8!T§ = this.§+"1§ = this.§7!<§.length;
         }
      }
      
      public function get §8!I§() : String
      {
         return this.§#t§;
      }
      
      public function get §<!f§() : uint
      {
         return this.§+"1§;
      }
      
      public function get §;!h§() : uint
      {
         return this.§8!T§;
      }
      
      public function §>k§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§;!?§)
         {
            this.uncompress();
         }
         this.§7!<§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§7!<§.readUTFBytes(this.§7!<§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§7!<§.readMultiByte(this.§7!<§.bytesAvailable,param2);
         }
         this.§7!<§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §%o§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§7!<§.length = 0;
         this.§7!<§.position = 0;
         this.§;!?§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§7!<§.writeUTFBytes(param1);
            }
            else
            {
               this.§7!<§.writeMultiByte(param1,param2);
            }
            this.§"!b§ = §9i§.§1Y§(this.§7!<§);
            this.§ ;§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§8!T§ = this.§+"1§ = this.§7!<§.length;
         }
      }
      
      public function §[!"§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§<o§.§]=§);
            param1.writeShort(this.§!"&§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§<o§.§-V§);
         }
         param1.writeShort(this.§!"&§ << 8 | 20);
         param1.writeShort(this.§!+§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§;!?§ ? int(§,!=§) : int(§?!=§));
         var _loc5_:Date = this.§,!h§ != null ? this.§,!h§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§"!b§);
         param1.writeUnsignedInt(this.§+"1§);
         param1.writeUnsignedInt(this.§8!T§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§!+§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§0!X§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§0!X§,this.§!+§);
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
            if(!this.§ ;§)
            {
               if(_loc16_ = this.§;!?§)
               {
                  this.uncompress();
               }
               this.§3!b§ = §9i§.§-!-§(this.§7!<§,0,this.§7!<§.length);
               this.§ ;§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§3!b§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§;!z§.length > 0)
         {
            if(this.§!+§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§;!z§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§;!z§,this.§!+§);
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
         if(!param3 && this.§7!<§.length > 0)
         {
            if(this.§;!?§)
            {
               if(§+!H§ || §!"+§)
               {
                  _loc13_ = this.§7!<§.length;
                  param1.writeBytes(this.§7!<§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§7!<§.length - 6;
                  param1.writeBytes(this.§7!<§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§7!<§.length;
               param1.writeBytes(this.§7!<§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§="$§(param1))
         {
         }
         return this.§="$§ === this.§^!@§;
      }
      
      protected function §^!@§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §4e§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§&!q§(param1);
            if(this.§+!V§ + this.§[!g§ > 0)
            {
               this.§="$§ = this.§9a§;
            }
            else
            {
               this.§="$§ = this.§4&§;
            }
            return true;
         }
         return false;
      }
      
      protected function §9a§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§+!V§ + this.§[!g§)
         {
            this.§8b§(param1);
            this.§="$§ = this.§4&§;
            return true;
         }
         return false;
      }
      
      protected function §4&§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§9Z§)
         {
            this.§="$§ = this.§^!@§;
            _loc2_ = false;
         }
         else if(this.§+"1§ == 0)
         {
            this.§="$§ = this.§^!@§;
         }
         else if(param1.bytesAvailable >= this.§+"1§)
         {
            this.parseContent(param1);
            this.§="$§ = this.§^!@§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §&!q§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§!"&§ = _loc2_ >> 8;
         this.§#t§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§7!;§ = param1.readUnsignedShort();
         this.§4k§ = (_loc3_ & 1) !== 0;
         this.§9Z§ = (_loc3_ & 8) !== 0;
         this.§>!j§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§!+§ = "utf-8";
         }
         if(this.§7!;§ === §"R§)
         {
            this.§^i§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§1!y§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§7!;§ === §,!=§)
         {
            this.§2^§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§,!h§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§"!b§ = param1.readUnsignedInt();
         this.§+"1§ = param1.readUnsignedInt();
         this.§8!T§ = param1.readUnsignedInt();
         this.§+!V§ = param1.readUnsignedShort();
         this.§[!g§ = param1.readUnsignedShort();
      }
      
      protected function §8b§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§!+§ == "utf-8")
         {
            this.§0!X§ = param1.readUTFBytes(this.§+!V§);
         }
         else
         {
            this.§0!X§ = param1.readMultiByte(this.§+!V§,this.§!+§);
         }
         var _loc2_:uint = this.§[!g§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§0!X§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§3!b§ = param1.readUnsignedInt();
               this.§ ;§ = true;
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
      
      function parseContent(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§7!;§ === §,!=§ && !this.§4k§)
         {
            if(§+!H§ || §!"+§)
            {
               param1.readBytes(this.§7!<§,0,this.§+"1§);
            }
            else
            {
               if(!this.§ ;§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§7!<§.writeByte(120);
               _loc2_ = ~this.§2^§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§7!<§.writeByte(_loc2_);
               param1.readBytes(this.§7!<§,2,this.§+"1§);
               this.§7!<§.position = this.§7!<§.length;
               this.§7!<§.writeUnsignedInt(this.§3!b§);
            }
            this.§;!?§ = true;
         }
         else
         {
            if(this.§7!;§ != §?!=§)
            {
               throw new Error("Compression method " + this.§7!;§ + " is not supported.");
            }
            param1.readBytes(this.§7!<§,0,this.§+"1§);
            this.§;!?§ = false;
         }
         this.§7!<§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§;!?§)
         {
            if(this.§7!<§.length > 0)
            {
               this.§7!<§.position = 0;
               this.§8!T§ = this.§7!<§.length;
               if(§!"+§)
               {
                  this.§7!<§.deflate();
                  this.§+"1§ = this.§7!<§.length;
               }
               else if(§+!H§)
               {
                  this.§7!<§.compress.apply(this.§7!<§,["deflate"]);
                  this.§+"1§ = this.§7!<§.length;
               }
               else
               {
                  this.§7!<§.compress();
                  this.§+"1§ = this.§7!<§.length - 6;
               }
               this.§7!<§.position = 0;
               this.§;!?§ = true;
            }
            else
            {
               this.§+"1§ = 0;
               this.§8!T§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§;!?§ && this.§7!<§.length > 0)
         {
            this.§7!<§.position = 0;
            if(§!"+§)
            {
               this.§7!<§.inflate();
            }
            else if(§+!H§)
            {
               this.§7!<§.uncompress.apply(this.§7!<§,["deflate"]);
            }
            else
            {
               this.§7!<§.uncompress();
            }
            this.§7!<§.position = 0;
            this.§;!?§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§0!X§ + "\n  date:" + this.§,!h§ + "\n  sizeCompressed:" + this.§+"1§ + "\n  sizeUncompressed:" + this.§8!T§ + "\n  versionHost:" + this.§!"&§ + "\n  versionNumber:" + this.§#t§ + "\n  compressionMethod:" + this.§7!;§ + "\n  encrypted:" + this.§4k§ + "\n  hasDataDescriptor:" + this.§9Z§ + "\n  hasCompressedPatchedData:" + this.§>!j§ + "\n  filenameEncoding:" + this.§!+§ + "\n  crc32:" + this.§"!b§.toString(16) + "\n  adler32:" + this.§3!b§.toString(16);
      }
   }
}

package §6g§
{
   import §#d§.§@!G§;
   import flash.utils.*;
   
   public class §7k§
   {
      
      public static const §,Z§:int = 0;
      
      public static const §%!;§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §8t§:int = 6;
      
      public static const §0!@§:int = 7;
      
      public static const §@!R§:int = 8;
      
      public static const §4I§:int = 9;
      
      public static const §7!K§:int = 10;
      
      protected static var §9" §:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §&Q§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §!!E§:int = 0;
      
      protected var §#-§:String = "2.0";
      
      protected var §4!K§:int = 8;
      
      protected var §5W§:Boolean = false;
      
      protected var §"O§:int = -1;
      
      protected var §0!?§:int = -1;
      
      protected var §"!&§:int = -1;
      
      protected var §6T§:Boolean = false;
      
      protected var §`!G§:Boolean = false;
      
      protected var §-",§:Date;
      
      protected var §"8§:uint;
      
      protected var §5!-§:Boolean = false;
      
      protected var §9!b§:uint = 0;
      
      protected var §"!k§:uint = 0;
      
      protected var §1n§:String = "";
      
      protected var §7>§:String;
      
      protected var §!!V§:Dictionary;
      
      protected var §>!d§:String = "";
      
      protected var §4!z§:ByteArray;
      
      var §&v§:uint;
      
      var §"!p§:uint = 0;
      
      var §`" §:uint = 0;
      
      protected var §^!§:Boolean = false;
      
      protected var §9z§:Function;
      
      public function §7k§(param1:String = "utf-8")
      {
         this.§9z§ = this.§9!0§;
         super();
         this.§7>§ = param1;
         this.§!!V§ = new Dictionary();
         this.§4!z§ = new ByteArray();
         this.§4!z§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §&[§() : Date
      {
         return this.§-",§;
      }
      
      public function set §&[§(param1:Date) : void
      {
         this.§-",§ = param1 != null ? param1 : new Date();
      }
      
      public function get §"!n§() : String
      {
         return this.§1n§;
      }
      
      public function set §"!n§(param1:String) : void
      {
         this.§1n§ = param1;
      }
      
      function get § !O§() : Boolean
      {
         return this.§6T§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§^!§)
         {
            this.uncompress();
         }
         return this.§4!z§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§in§(param1);
      }
      
      public function §in§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§4!z§,0,param1.length);
            this.§&v§ = §@!G§.§-"+§(this.§4!z§);
            this.§5!-§ = false;
         }
         else
         {
            this.§4!z§.length = 0;
            this.§4!z§.position = 0;
            this.§^!§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§`" § = this.§"!p§ = this.§4!z§.length;
         }
      }
      
      public function get §@!!§() : String
      {
         return this.§#-§;
      }
      
      public function get §<!O§() : uint
      {
         return this.§"!p§;
      }
      
      public function get §#^§() : uint
      {
         return this.§`" §;
      }
      
      public function §`2§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§^!§)
         {
            this.uncompress();
         }
         this.§4!z§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§4!z§.readUTFBytes(this.§4!z§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§4!z§.readMultiByte(this.§4!z§.bytesAvailable,param2);
         }
         this.§4!z§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §&"$§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§4!z§.length = 0;
         this.§4!z§.position = 0;
         this.§^!§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§4!z§.writeUTFBytes(param1);
            }
            else
            {
               this.§4!z§.writeMultiByte(param1,param2);
            }
            this.§&v§ = §@!G§.§-"+§(this.§4!z§);
            this.§5!-§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§`" § = this.§"!p§ = this.§4!z§.length;
         }
      }
      
      public function §!!t§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§@"#§.§`!V§);
            param1.writeShort(this.§!!E§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§@"#§.§2!F§);
         }
         param1.writeShort(this.§!!E§ << 8 | 20);
         param1.writeShort(this.§7>§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§^!§ ? int(§@!R§) : int(§,Z§));
         var _loc5_:Date = this.§-",§ != null ? this.§-",§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§&v§);
         param1.writeUnsignedInt(this.§"!p§);
         param1.writeUnsignedInt(this.§`" §);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§7>§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§1n§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§1n§,this.§7>§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§!!V§)
         {
            if((_loc15_ = this.§!!V§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§5!-§)
            {
               if(_loc16_ = this.§^!§)
               {
                  this.uncompress();
               }
               this.§"8§ = §@!G§.§;!e§(this.§4!z§,0,this.§4!z§.length);
               this.§5!-§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§"8§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§>!d§.length > 0)
         {
            if(this.§7>§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§>!d§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§>!d§,this.§7>§);
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
         if(!param3 && this.§4!z§.length > 0)
         {
            if(this.§^!§)
            {
               if(§9" § || §&Q§)
               {
                  _loc13_ = this.§4!z§.length;
                  param1.writeBytes(this.§4!z§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§4!z§.length - 6;
                  param1.writeBytes(this.§4!z§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§4!z§.length;
               param1.writeBytes(this.§4!z§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§9z§(param1))
         {
         }
         return this.§9z§ === this.§,!u§;
      }
      
      protected function §,!u§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §9!0§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§-!I§(param1);
            if(this.§9!b§ + this.§"!k§ > 0)
            {
               this.§9z§ = this.§6!3§;
            }
            else
            {
               this.§9z§ = this.§!!&§;
            }
            return true;
         }
         return false;
      }
      
      protected function §6!3§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§9!b§ + this.§"!k§)
         {
            this.§<T§(param1);
            this.§9z§ = this.§!!&§;
            return true;
         }
         return false;
      }
      
      protected function §!!&§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§6T§)
         {
            this.§9z§ = this.§,!u§;
            _loc2_ = false;
         }
         else if(this.§"!p§ == 0)
         {
            this.§9z§ = this.§,!u§;
         }
         else if(param1.bytesAvailable >= this.§"!p§)
         {
            this.§ H§(param1);
            this.§9z§ = this.§,!u§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §-!I§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§!!E§ = _loc2_ >> 8;
         this.§#-§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§4!K§ = param1.readUnsignedShort();
         this.§5W§ = (_loc3_ & 1) !== 0;
         this.§6T§ = (_loc3_ & 8) !== 0;
         this.§`!G§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§7>§ = "utf-8";
         }
         if(this.§4!K§ === §8t§)
         {
            this.§"O§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§0!?§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§4!K§ === §@!R§)
         {
            this.§"!&§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§-",§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§&v§ = param1.readUnsignedInt();
         this.§"!p§ = param1.readUnsignedInt();
         this.§`" § = param1.readUnsignedInt();
         this.§9!b§ = param1.readUnsignedShort();
         this.§"!k§ = param1.readUnsignedShort();
      }
      
      protected function §<T§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§7>§ == "utf-8")
         {
            this.§1n§ = param1.readUTFBytes(this.§9!b§);
         }
         else
         {
            this.§1n§ = param1.readMultiByte(this.§9!b§,this.§7>§);
         }
         var _loc2_:uint = this.§"!k§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§1n§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§"8§ = param1.readUnsignedInt();
               this.§5!-§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§!!V§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function § H§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§4!K§ === §@!R§ && !this.§5W§)
         {
            if(§9" § || §&Q§)
            {
               param1.readBytes(this.§4!z§,0,this.§"!p§);
            }
            else
            {
               if(!this.§5!-§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§4!z§.writeByte(120);
               _loc2_ = ~this.§"!&§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§4!z§.writeByte(_loc2_);
               param1.readBytes(this.§4!z§,2,this.§"!p§);
               this.§4!z§.position = this.§4!z§.length;
               this.§4!z§.writeUnsignedInt(this.§"8§);
            }
            this.§^!§ = true;
         }
         else
         {
            if(this.§4!K§ != §,Z§)
            {
               throw new Error("Compression method " + this.§4!K§ + " is not supported.");
            }
            param1.readBytes(this.§4!z§,0,this.§"!p§);
            this.§^!§ = false;
         }
         this.§4!z§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§^!§)
         {
            if(this.§4!z§.length > 0)
            {
               this.§4!z§.position = 0;
               this.§`" § = this.§4!z§.length;
               if(§&Q§)
               {
                  this.§4!z§.deflate();
                  this.§"!p§ = this.§4!z§.length;
               }
               else if(§9" §)
               {
                  this.§4!z§.compress.apply(this.§4!z§,["deflate"]);
                  this.§"!p§ = this.§4!z§.length;
               }
               else
               {
                  this.§4!z§.compress();
                  this.§"!p§ = this.§4!z§.length - 6;
               }
               this.§4!z§.position = 0;
               this.§^!§ = true;
            }
            else
            {
               this.§"!p§ = 0;
               this.§`" § = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§^!§ && this.§4!z§.length > 0)
         {
            this.§4!z§.position = 0;
            if(§&Q§)
            {
               this.§4!z§.inflate();
            }
            else if(§9" §)
            {
               this.§4!z§.uncompress.apply(this.§4!z§,["deflate"]);
            }
            else
            {
               this.§4!z§.uncompress();
            }
            this.§4!z§.position = 0;
            this.§^!§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§1n§ + "\n  date:" + this.§-",§ + "\n  sizeCompressed:" + this.§"!p§ + "\n  sizeUncompressed:" + this.§`" § + "\n  versionHost:" + this.§!!E§ + "\n  versionNumber:" + this.§#-§ + "\n  compressionMethod:" + this.§4!K§ + "\n  encrypted:" + this.§5W§ + "\n  hasDataDescriptor:" + this.§6T§ + "\n  hasCompressedPatchedData:" + this.§`!G§ + "\n  filenameEncoding:" + this.§7>§ + "\n  crc32:" + this.§&v§.toString(16) + "\n  adler32:" + this.§"8§.toString(16);
      }
   }
}

package §@!G§
{
   import §>5§.§9F§;
   import flash.utils.*;
   
   public class §]b§
   {
      
      public static const §!!%§:int = 0;
      
      public static const §#c§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §;!O§:int = 6;
      
      public static const §3!s§:int = 7;
      
      public static const §"I§:int = 8;
      
      public static const §%!L§:int = 9;
      
      public static const §%!@§:int = 10;
      
      protected static var §&!A§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §][§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §`!&§:int = 0;
      
      protected var §#!h§:String = "2.0";
      
      protected var §>!;§:int = 8;
      
      protected var §4g§:Boolean = false;
      
      protected var §!!b§:int = -1;
      
      protected var §9"4§:int = -1;
      
      protected var §7!K§:int = -1;
      
      protected var §5!o§:Boolean = false;
      
      protected var §#h§:Boolean = false;
      
      protected var §"d§:Date;
      
      protected var §;!]§:uint;
      
      protected var §?!l§:Boolean = false;
      
      protected var §4_§:uint = 0;
      
      protected var §3w§:uint = 0;
      
      protected var §8!O§:String = "";
      
      protected var §^,§:String;
      
      protected var §>`§:Dictionary;
      
      protected var §,"'§:String = "";
      
      protected var §%Y§:ByteArray;
      
      var §`!M§:uint;
      
      var §;"&§:uint = 0;
      
      var §"!6§:uint = 0;
      
      protected var §"?§:Boolean = false;
      
      protected var §"!L§:Function;
      
      public function §]b§(param1:String = "utf-8")
      {
         this.§"!L§ = this.§?-§;
         super();
         this.§^,§ = param1;
         this.§>`§ = new Dictionary();
         this.§%Y§ = new ByteArray();
         this.§%Y§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §^!X§() : Date
      {
         return this.§"d§;
      }
      
      public function set §^!X§(param1:Date) : void
      {
         this.§"d§ = param1 != null ? param1 : new Date();
      }
      
      public function get §@z§() : String
      {
         return this.§8!O§;
      }
      
      public function set §@z§(param1:String) : void
      {
         this.§8!O§ = param1;
      }
      
      function get §8!8§() : Boolean
      {
         return this.§5!o§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§"?§)
         {
            this.uncompress();
         }
         return this.§%Y§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§,!R§(param1);
      }
      
      public function §,!R§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§%Y§,0,param1.length);
            this.§`!M§ = §9F§.§[E§(this.§%Y§);
            this.§?!l§ = false;
         }
         else
         {
            this.§%Y§.length = 0;
            this.§%Y§.position = 0;
            this.§"?§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§"!6§ = this.§;"&§ = this.§%Y§.length;
         }
      }
      
      public function get §2!V§() : String
      {
         return this.§#!h§;
      }
      
      public function get §;x§() : uint
      {
         return this.§;"&§;
      }
      
      public function get §>_§() : uint
      {
         return this.§"!6§;
      }
      
      public function §9!y§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§"?§)
         {
            this.uncompress();
         }
         this.§%Y§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§%Y§.readUTFBytes(this.§%Y§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§%Y§.readMultiByte(this.§%Y§.bytesAvailable,param2);
         }
         this.§%Y§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §+!F§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§%Y§.length = 0;
         this.§%Y§.position = 0;
         this.§"?§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§%Y§.writeUTFBytes(param1);
            }
            else
            {
               this.§%Y§.writeMultiByte(param1,param2);
            }
            this.§`!M§ = §9F§.§[E§(this.§%Y§);
            this.§?!l§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§"!6§ = this.§;"&§ = this.§%Y§.length;
         }
      }
      
      public function §6!&§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§4!Z§.§1!d§);
            param1.writeShort(this.§`!&§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§4!Z§.§[G§);
         }
         param1.writeShort(this.§`!&§ << 8 | 20);
         param1.writeShort(this.§^,§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§"?§ ? int(§"I§) : int(§!!%§));
         var _loc5_:Date = this.§"d§ != null ? this.§"d§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§`!M§);
         param1.writeUnsignedInt(this.§;"&§);
         param1.writeUnsignedInt(this.§"!6§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§^,§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§8!O§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§8!O§,this.§^,§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§>`§)
         {
            if((_loc15_ = this.§>`§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§?!l§)
            {
               if(_loc16_ = this.§"?§)
               {
                  this.uncompress();
               }
               this.§;!]§ = §9F§.§<"%§(this.§%Y§,0,this.§%Y§.length);
               this.§?!l§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§;!]§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§,"'§.length > 0)
         {
            if(this.§^,§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§,"'§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§,"'§,this.§^,§);
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
         if(!param3 && this.§%Y§.length > 0)
         {
            if(this.§"?§)
            {
               if(§&!A§ || §][§)
               {
                  _loc13_ = this.§%Y§.length;
                  param1.writeBytes(this.§%Y§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§%Y§.length - 6;
                  param1.writeBytes(this.§%Y§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§%Y§.length;
               param1.writeBytes(this.§%Y§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§"!L§(param1))
         {
         }
         return this.§"!L§ === this.§0"-§;
      }
      
      protected function §0"-§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §?-§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§"T§(param1);
            if(this.§4_§ + this.§3w§ > 0)
            {
               this.§"!L§ = this.§7!k§;
            }
            else
            {
               this.§"!L§ = this.§<u§;
            }
            return true;
         }
         return false;
      }
      
      protected function §7!k§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§4_§ + this.§3w§)
         {
            this.§,u§(param1);
            this.§"!L§ = this.§<u§;
            return true;
         }
         return false;
      }
      
      protected function §<u§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§5!o§)
         {
            this.§"!L§ = this.§0"-§;
            _loc2_ = false;
         }
         else if(this.§;"&§ == 0)
         {
            this.§"!L§ = this.§0"-§;
         }
         else if(param1.bytesAvailable >= this.§;"&§)
         {
            this.parseContent(param1);
            this.§"!L§ = this.§0"-§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §"T§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§`!&§ = _loc2_ >> 8;
         this.§#!h§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§>!;§ = param1.readUnsignedShort();
         this.§4g§ = (_loc3_ & 1) !== 0;
         this.§5!o§ = (_loc3_ & 8) !== 0;
         this.§#h§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§^,§ = "utf-8";
         }
         if(this.§>!;§ === §;!O§)
         {
            this.§!!b§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§9"4§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§>!;§ === §"I§)
         {
            this.§7!K§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§"d§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§`!M§ = param1.readUnsignedInt();
         this.§;"&§ = param1.readUnsignedInt();
         this.§"!6§ = param1.readUnsignedInt();
         this.§4_§ = param1.readUnsignedShort();
         this.§3w§ = param1.readUnsignedShort();
      }
      
      protected function §,u§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§^,§ == "utf-8")
         {
            this.§8!O§ = param1.readUTFBytes(this.§4_§);
         }
         else
         {
            this.§8!O§ = param1.readMultiByte(this.§4_§,this.§^,§);
         }
         var _loc2_:uint = this.§3w§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§8!O§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§;!]§ = param1.readUnsignedInt();
               this.§?!l§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§>`§[_loc3_] = _loc5_;
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
         if(this.§>!;§ === §"I§ && !this.§4g§)
         {
            if(§&!A§ || §][§)
            {
               param1.readBytes(this.§%Y§,0,this.§;"&§);
            }
            else
            {
               if(!this.§?!l§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§%Y§.writeByte(120);
               _loc2_ = ~this.§7!K§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§%Y§.writeByte(_loc2_);
               param1.readBytes(this.§%Y§,2,this.§;"&§);
               this.§%Y§.position = this.§%Y§.length;
               this.§%Y§.writeUnsignedInt(this.§;!]§);
            }
            this.§"?§ = true;
         }
         else
         {
            if(this.§>!;§ != §!!%§)
            {
               throw new Error("Compression method " + this.§>!;§ + " is not supported.");
            }
            param1.readBytes(this.§%Y§,0,this.§;"&§);
            this.§"?§ = false;
         }
         this.§%Y§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§"?§)
         {
            if(this.§%Y§.length > 0)
            {
               this.§%Y§.position = 0;
               this.§"!6§ = this.§%Y§.length;
               if(§][§)
               {
                  this.§%Y§.deflate();
                  this.§;"&§ = this.§%Y§.length;
               }
               else if(§&!A§)
               {
                  this.§%Y§.compress.apply(this.§%Y§,["deflate"]);
                  this.§;"&§ = this.§%Y§.length;
               }
               else
               {
                  this.§%Y§.compress();
                  this.§;"&§ = this.§%Y§.length - 6;
               }
               this.§%Y§.position = 0;
               this.§"?§ = true;
            }
            else
            {
               this.§;"&§ = 0;
               this.§"!6§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§"?§ && this.§%Y§.length > 0)
         {
            this.§%Y§.position = 0;
            if(§][§)
            {
               this.§%Y§.inflate();
            }
            else if(§&!A§)
            {
               this.§%Y§.uncompress.apply(this.§%Y§,["deflate"]);
            }
            else
            {
               this.§%Y§.uncompress();
            }
            this.§%Y§.position = 0;
            this.§"?§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§8!O§ + "\n  date:" + this.§"d§ + "\n  sizeCompressed:" + this.§;"&§ + "\n  sizeUncompressed:" + this.§"!6§ + "\n  versionHost:" + this.§`!&§ + "\n  versionNumber:" + this.§#!h§ + "\n  compressionMethod:" + this.§>!;§ + "\n  encrypted:" + this.§4g§ + "\n  hasDataDescriptor:" + this.§5!o§ + "\n  hasCompressedPatchedData:" + this.§#h§ + "\n  filenameEncoding:" + this.§^,§ + "\n  crc32:" + this.§`!M§.toString(16) + "\n  adler32:" + this.§;!]§.toString(16);
      }
   }
}

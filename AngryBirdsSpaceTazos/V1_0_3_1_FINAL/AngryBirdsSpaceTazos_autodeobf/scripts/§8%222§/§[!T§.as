package §8"2§
{
   import §&;§.§1I§;
   import flash.utils.*;
   
   public class §[!T§
   {
      
      public static const §!"A§:int = 0;
      
      public static const §"!#§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §,!i§:int = 6;
      
      public static const §]H§:int = 7;
      
      public static const §[!x§:int = 8;
      
      public static const §?"=§:int = 9;
      
      public static const §"!s§:int = 10;
      
      protected static var §>!A§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §!"+§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §,!X§:int = 0;
      
      protected var §>!U§:String = "2.0";
      
      protected var §@!L§:int = 8;
      
      protected var §+r§:Boolean = false;
      
      protected var §>!y§:int = -1;
      
      protected var §,v§:int = -1;
      
      protected var § !%§:int = -1;
      
      protected var §3!!§:Boolean = false;
      
      protected var §#X§:Boolean = false;
      
      protected var §,P§:Date;
      
      protected var § !W§:uint;
      
      protected var §40§:Boolean = false;
      
      protected var §!!-§:uint = 0;
      
      protected var §97§:uint = 0;
      
      protected var §[!P§:String = "";
      
      protected var §>";§:String;
      
      protected var §!!y§:Dictionary;
      
      protected var §4"0§:String = "";
      
      protected var §+!+§:ByteArray;
      
      var §&v§:uint;
      
      var §<!h§:uint = 0;
      
      var §]"$§:uint = 0;
      
      protected var §>!r§:Boolean = false;
      
      protected var §]O§:Function;
      
      public function §[!T§(param1:String = "utf-8")
      {
         this.§]O§ = this.§=v§;
         super();
         this.§>";§ = param1;
         this.§!!y§ = new Dictionary();
         this.§+!+§ = new ByteArray();
         this.§+!+§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get date() : Date
      {
         return this.§,P§;
      }
      
      public function set date(param1:Date) : void
      {
         this.§,P§ = param1 != null ? param1 : new Date();
      }
      
      public function get §2"-§() : String
      {
         return this.§[!P§;
      }
      
      public function set §2"-§(param1:String) : void
      {
         this.§[!P§ = param1;
      }
      
      function get §?"+§() : Boolean
      {
         return this.§3!!§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§>!r§)
         {
            this.uncompress();
         }
         return this.§+!+§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§-"0§(param1);
      }
      
      public function §-"0§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§+!+§,0,param1.length);
            this.§&v§ = §1I§.§&x§(this.§+!+§);
            this.§40§ = false;
         }
         else
         {
            this.§+!+§.length = 0;
            this.§+!+§.position = 0;
            this.§>!r§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§]"$§ = this.§<!h§ = this.§+!+§.length;
         }
      }
      
      public function get §!!0§() : String
      {
         return this.§>!U§;
      }
      
      public function get §-F§() : uint
      {
         return this.§<!h§;
      }
      
      public function get §9!d§() : uint
      {
         return this.§]"$§;
      }
      
      public function §3!z§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§>!r§)
         {
            this.uncompress();
         }
         this.§+!+§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§+!+§.readUTFBytes(this.§+!+§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§+!+§.readMultiByte(this.§+!+§.bytesAvailable,param2);
         }
         this.§+!+§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §`]§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§+!+§.length = 0;
         this.§+!+§.position = 0;
         this.§>!r§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§+!+§.writeUTFBytes(param1);
            }
            else
            {
               this.§+!+§.writeMultiByte(param1,param2);
            }
            this.§&v§ = §1I§.§&x§(this.§+!+§);
            this.§40§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§]"$§ = this.§<!h§ = this.§+!+§.length;
         }
      }
      
      public function §%!I§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§3=§.§-]§);
            param1.writeShort(this.§,!X§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§3=§.§51§);
         }
         param1.writeShort(this.§,!X§ << 8 | 20);
         param1.writeShort(this.§>";§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§>!r§ ? int(§[!x§) : int(§!"A§));
         var _loc5_:Date = this.§,P§ != null ? this.§,P§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§&v§);
         param1.writeUnsignedInt(this.§<!h§);
         param1.writeUnsignedInt(this.§]"$§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§>";§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§[!P§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§[!P§,this.§>";§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§!!y§)
         {
            if((_loc15_ = this.§!!y§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§40§)
            {
               if(_loc16_ = this.§>!r§)
               {
                  this.uncompress();
               }
               this.§ !W§ = §1I§.§,"0§(this.§+!+§,0,this.§+!+§.length);
               this.§40§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§ !W§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§4"0§.length > 0)
         {
            if(this.§>";§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§4"0§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§4"0§,this.§>";§);
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
         if(!param3 && this.§+!+§.length > 0)
         {
            if(this.§>!r§)
            {
               if(§>!A§ || §!"+§)
               {
                  _loc13_ = this.§+!+§.length;
                  param1.writeBytes(this.§+!+§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§+!+§.length - 6;
                  param1.writeBytes(this.§+!+§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§+!+§.length;
               param1.writeBytes(this.§+!+§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§]O§(param1))
         {
         }
         return this.§]O§ === this.§4^§;
      }
      
      protected function §4^§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §=v§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§>s§(param1);
            if(this.§!!-§ + this.§97§ > 0)
            {
               this.§]O§ = this.§?! §;
            }
            else
            {
               this.§]O§ = this.§,H§;
            }
            return true;
         }
         return false;
      }
      
      protected function §?! §(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§!!-§ + this.§97§)
         {
            this.§ r§(param1);
            this.§]O§ = this.§,H§;
            return true;
         }
         return false;
      }
      
      protected function §,H§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§3!!§)
         {
            this.§]O§ = this.§4^§;
            _loc2_ = false;
         }
         else if(this.§<!h§ == 0)
         {
            this.§]O§ = this.§4^§;
         }
         else if(param1.bytesAvailable >= this.§<!h§)
         {
            this.§-"5§(param1);
            this.§]O§ = this.§4^§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §>s§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§,!X§ = _loc2_ >> 8;
         this.§>!U§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§@!L§ = param1.readUnsignedShort();
         this.§+r§ = (_loc3_ & 1) !== 0;
         this.§3!!§ = (_loc3_ & 8) !== 0;
         this.§#X§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§>";§ = "utf-8";
         }
         if(this.§@!L§ === §,!i§)
         {
            this.§>!y§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§,v§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§@!L§ === §[!x§)
         {
            this.§ !%§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§,P§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§&v§ = param1.readUnsignedInt();
         this.§<!h§ = param1.readUnsignedInt();
         this.§]"$§ = param1.readUnsignedInt();
         this.§!!-§ = param1.readUnsignedShort();
         this.§97§ = param1.readUnsignedShort();
      }
      
      protected function § r§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§>";§ == "utf-8")
         {
            this.§[!P§ = param1.readUTFBytes(this.§!!-§);
         }
         else
         {
            this.§[!P§ = param1.readMultiByte(this.§!!-§,this.§>";§);
         }
         var _loc2_:uint = this.§97§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§[!P§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§ !W§ = param1.readUnsignedInt();
               this.§40§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§!!y§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §-"5§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§@!L§ === §[!x§ && !this.§+r§)
         {
            if(§>!A§ || §!"+§)
            {
               param1.readBytes(this.§+!+§,0,this.§<!h§);
            }
            else
            {
               if(!this.§40§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§+!+§.writeByte(120);
               _loc2_ = ~this.§ !%§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§+!+§.writeByte(_loc2_);
               param1.readBytes(this.§+!+§,2,this.§<!h§);
               this.§+!+§.position = this.§+!+§.length;
               this.§+!+§.writeUnsignedInt(this.§ !W§);
            }
            this.§>!r§ = true;
         }
         else
         {
            if(this.§@!L§ != §!"A§)
            {
               throw new Error("Compression method " + this.§@!L§ + " is not supported.");
            }
            param1.readBytes(this.§+!+§,0,this.§<!h§);
            this.§>!r§ = false;
         }
         this.§+!+§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§>!r§)
         {
            if(this.§+!+§.length > 0)
            {
               this.§+!+§.position = 0;
               this.§]"$§ = this.§+!+§.length;
               if(§!"+§)
               {
                  this.§+!+§.deflate();
                  this.§<!h§ = this.§+!+§.length;
               }
               else if(§>!A§)
               {
                  this.§+!+§.compress.apply(this.§+!+§,["deflate"]);
                  this.§<!h§ = this.§+!+§.length;
               }
               else
               {
                  this.§+!+§.compress();
                  this.§<!h§ = this.§+!+§.length - 6;
               }
               this.§+!+§.position = 0;
               this.§>!r§ = true;
            }
            else
            {
               this.§<!h§ = 0;
               this.§]"$§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§>!r§ && this.§+!+§.length > 0)
         {
            this.§+!+§.position = 0;
            if(§!"+§)
            {
               this.§+!+§.inflate();
            }
            else if(§>!A§)
            {
               this.§+!+§.uncompress.apply(this.§+!+§,["deflate"]);
            }
            else
            {
               this.§+!+§.uncompress();
            }
            this.§+!+§.position = 0;
            this.§>!r§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§[!P§ + "\n  date:" + this.§,P§ + "\n  sizeCompressed:" + this.§<!h§ + "\n  sizeUncompressed:" + this.§]"$§ + "\n  versionHost:" + this.§,!X§ + "\n  versionNumber:" + this.§>!U§ + "\n  compressionMethod:" + this.§@!L§ + "\n  encrypted:" + this.§+r§ + "\n  hasDataDescriptor:" + this.§3!!§ + "\n  hasCompressedPatchedData:" + this.§#X§ + "\n  filenameEncoding:" + this.§>";§ + "\n  crc32:" + this.§&v§.toString(16) + "\n  adler32:" + this.§ !W§.toString(16);
      }
   }
}

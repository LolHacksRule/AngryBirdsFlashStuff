package §7!#§
{
   import §<§.§<"§;
   import flash.utils.*;
   
   public class §"!8§
   {
      
      public static const §>k§:int = 0;
      
      public static const §]!p§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §8a§:int = 6;
      
      public static const §"G§:int = 7;
      
      public static const §3b§:int = 8;
      
      public static const §,x§:int = 9;
      
      public static const §3!N§:int = 10;
      
      protected static var §5z§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §8!?§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §1C§:int = 0;
      
      protected var §>9§:String = "2.0";
      
      protected var §8d§:int = 8;
      
      protected var §<!c§:Boolean = false;
      
      protected var §4!]§:int = -1;
      
      protected var §]!k§:int = -1;
      
      protected var §?!l§:int = -1;
      
      protected var §]!_§:Boolean = false;
      
      protected var §set §:Boolean = false;
      
      protected var §5!P§:Date;
      
      protected var §%r§:uint;
      
      protected var §62§:Boolean = false;
      
      protected var §!5§:uint = 0;
      
      protected var §,#§:uint = 0;
      
      protected var §]8§:String = "";
      
      protected var §%^§:String;
      
      protected var §[!&§:Dictionary;
      
      protected var § !o§:String = "";
      
      protected var §@l§:ByteArray;
      
      var §9R§:uint;
      
      var §9!?§:uint = 0;
      
      var §&i§:uint = 0;
      
      protected var §-!G§:Boolean = false;
      
      protected var §?R§:Function;
      
      public function §"!8§(param1:String = "utf-8")
      {
         this.§?R§ = this.§?!C§;
         super();
         this.§%^§ = param1;
         this.§[!&§ = new Dictionary();
         this.§@l§ = new ByteArray();
         this.§@l§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §@!$§() : Date
      {
         return this.§5!P§;
      }
      
      public function set §@!$§(param1:Date) : void
      {
         this.§5!P§ = param1 != null ? param1 : new Date();
      }
      
      public function get §;!]§() : String
      {
         return this.§]8§;
      }
      
      public function set §;!]§(param1:String) : void
      {
         this.§]8§ = param1;
      }
      
      function get §!H§() : Boolean
      {
         return this.§]!_§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§-!G§)
         {
            this.uncompress();
         }
         return this.§@l§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§=!C§(param1);
      }
      
      public function §=!C§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§@l§,0,param1.length);
            this.§9R§ = §<"§.§&!q§(this.§@l§);
            this.§62§ = false;
         }
         else
         {
            this.§@l§.length = 0;
            this.§@l§.position = 0;
            this.§-!G§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§&i§ = this.§9!?§ = this.§@l§.length;
         }
      }
      
      public function get §2r§() : String
      {
         return this.§>9§;
      }
      
      public function get §=!$§() : uint
      {
         return this.§9!?§;
      }
      
      public function get §6H§() : uint
      {
         return this.§&i§;
      }
      
      public function §4!j§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§-!G§)
         {
            this.uncompress();
         }
         this.§@l§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§@l§.readUTFBytes(this.§@l§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§@l§.readMultiByte(this.§@l§.bytesAvailable,param2);
         }
         this.§@l§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §%!Z§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§@l§.length = 0;
         this.§@l§.position = 0;
         this.§-!G§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§@l§.writeUTFBytes(param1);
            }
            else
            {
               this.§@l§.writeMultiByte(param1,param2);
            }
            this.§9R§ = §<"§.§&!q§(this.§@l§);
            this.§62§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§&i§ = this.§9!?§ = this.§@l§.length;
         }
      }
      
      public function §`!4§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§@2§.§@!e§);
            param1.writeShort(this.§1C§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§@2§.§5!&§);
         }
         param1.writeShort(this.§1C§ << 8 | 20);
         param1.writeShort(this.§%^§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§-!G§ ? int(§3b§) : int(§>k§));
         var _loc5_:Date = this.§5!P§ != null ? this.§5!P§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§9R§);
         param1.writeUnsignedInt(this.§9!?§);
         param1.writeUnsignedInt(this.§&i§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§%^§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§]8§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§]8§,this.§%^§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§[!&§)
         {
            if((_loc15_ = this.§[!&§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§62§)
            {
               if(_loc16_ = this.§-!G§)
               {
                  this.uncompress();
               }
               this.§%r§ = §<"§.§^=§(this.§@l§,0,this.§@l§.length);
               this.§62§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§%r§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§ !o§.length > 0)
         {
            if(this.§%^§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§ !o§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§ !o§,this.§%^§);
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
         if(!param3 && this.§@l§.length > 0)
         {
            if(this.§-!G§)
            {
               if(§5z§ || §8!?§)
               {
                  _loc13_ = this.§@l§.length;
                  param1.writeBytes(this.§@l§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§@l§.length - 6;
                  param1.writeBytes(this.§@l§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§@l§.length;
               param1.writeBytes(this.§@l§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§?R§(param1))
         {
         }
         return this.§?R§ === this.§&&§;
      }
      
      protected function §&&§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §?!C§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§9!"§(param1);
            if(this.§!5§ + this.§,#§ > 0)
            {
               this.§?R§ = this.§'!5§;
            }
            else
            {
               this.§?R§ = this.§!!%§;
            }
            return true;
         }
         return false;
      }
      
      protected function §'!5§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§!5§ + this.§,#§)
         {
            this.§`!Z§(param1);
            this.§?R§ = this.§!!%§;
            return true;
         }
         return false;
      }
      
      protected function §!!%§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§]!_§)
         {
            this.§?R§ = this.§&&§;
            _loc2_ = false;
         }
         else if(this.§9!?§ == 0)
         {
            this.§?R§ = this.§&&§;
         }
         else if(param1.bytesAvailable >= this.§9!?§)
         {
            this.§[=§(param1);
            this.§?R§ = this.§&&§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §9!"§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§1C§ = _loc2_ >> 8;
         this.§>9§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§8d§ = param1.readUnsignedShort();
         this.§<!c§ = (_loc3_ & 1) !== 0;
         this.§]!_§ = (_loc3_ & 8) !== 0;
         this.§set § = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§%^§ = "utf-8";
         }
         if(this.§8d§ === §8a§)
         {
            this.§4!]§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§]!k§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§8d§ === §3b§)
         {
            this.§?!l§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§5!P§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§9R§ = param1.readUnsignedInt();
         this.§9!?§ = param1.readUnsignedInt();
         this.§&i§ = param1.readUnsignedInt();
         this.§!5§ = param1.readUnsignedShort();
         this.§,#§ = param1.readUnsignedShort();
      }
      
      protected function §`!Z§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§%^§ == "utf-8")
         {
            this.§]8§ = param1.readUTFBytes(this.§!5§);
         }
         else
         {
            this.§]8§ = param1.readMultiByte(this.§!5§,this.§%^§);
         }
         var _loc2_:uint = this.§,#§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§]8§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§%r§ = param1.readUnsignedInt();
               this.§62§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§[!&§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §[=§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§8d§ === §3b§ && !this.§<!c§)
         {
            if(§5z§ || §8!?§)
            {
               param1.readBytes(this.§@l§,0,this.§9!?§);
            }
            else
            {
               if(!this.§62§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§@l§.writeByte(120);
               _loc2_ = ~this.§?!l§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§@l§.writeByte(_loc2_);
               param1.readBytes(this.§@l§,2,this.§9!?§);
               this.§@l§.position = this.§@l§.length;
               this.§@l§.writeUnsignedInt(this.§%r§);
            }
            this.§-!G§ = true;
         }
         else
         {
            if(this.§8d§ != §>k§)
            {
               throw new Error("Compression method " + this.§8d§ + " is not supported.");
            }
            param1.readBytes(this.§@l§,0,this.§9!?§);
            this.§-!G§ = false;
         }
         this.§@l§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§-!G§)
         {
            if(this.§@l§.length > 0)
            {
               this.§@l§.position = 0;
               this.§&i§ = this.§@l§.length;
               if(§8!?§)
               {
                  this.§@l§.deflate();
                  this.§9!?§ = this.§@l§.length;
               }
               else if(§5z§)
               {
                  this.§@l§.compress.apply(this.§@l§,["deflate"]);
                  this.§9!?§ = this.§@l§.length;
               }
               else
               {
                  this.§@l§.compress();
                  this.§9!?§ = this.§@l§.length - 6;
               }
               this.§@l§.position = 0;
               this.§-!G§ = true;
            }
            else
            {
               this.§9!?§ = 0;
               this.§&i§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§-!G§ && this.§@l§.length > 0)
         {
            this.§@l§.position = 0;
            if(§8!?§)
            {
               this.§@l§.inflate();
            }
            else if(§5z§)
            {
               this.§@l§.uncompress.apply(this.§@l§,["deflate"]);
            }
            else
            {
               this.§@l§.uncompress();
            }
            this.§@l§.position = 0;
            this.§-!G§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§]8§ + "\n  date:" + this.§5!P§ + "\n  sizeCompressed:" + this.§9!?§ + "\n  sizeUncompressed:" + this.§&i§ + "\n  versionHost:" + this.§1C§ + "\n  versionNumber:" + this.§>9§ + "\n  compressionMethod:" + this.§8d§ + "\n  encrypted:" + this.§<!c§ + "\n  hasDataDescriptor:" + this.§]!_§ + "\n  hasCompressedPatchedData:" + this.§set § + "\n  filenameEncoding:" + this.§%^§ + "\n  crc32:" + this.§9R§.toString(16) + "\n  adler32:" + this.§%r§.toString(16);
      }
   }
}

package §!!G§
{
   import §]M§.§%;§;
   import flash.utils.*;
   
   public class §`Z§
   {
      
      public static const §0X§:int = 0;
      
      public static const §2!y§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §@!4§:int = 6;
      
      public static const §'!,§:int = 7;
      
      public static const §6!Q§:int = 8;
      
      public static const §4n§:int = 9;
      
      public static const §]!E§:int = 10;
      
      protected static var § U§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §-Q§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §[!R§:int = 0;
      
      protected var §6!S§:String = "2.0";
      
      protected var §6!H§:int = 8;
      
      protected var §+W§:Boolean = false;
      
      protected var §7!z§:int = -1;
      
      protected var §2O§:int = -1;
      
      protected var §@!G§:int = -1;
      
      protected var §?!0§:Boolean = false;
      
      protected var §;H§:Boolean = false;
      
      protected var §var§:Date;
      
      protected var §&!W§:uint;
      
      protected var §1"B§:Boolean = false;
      
      protected var §!!n§:uint = 0;
      
      protected var §6!Z§:uint = 0;
      
      protected var §'W§:String = "";
      
      protected var §4!;§:String;
      
      protected var §%c§:Dictionary;
      
      protected var §0!b§:String = "";
      
      protected var §%!S§:ByteArray;
      
      var §9!Y§:uint;
      
      var §8i§:uint = 0;
      
      var §5v§:uint = 0;
      
      protected var §'i§:Boolean = false;
      
      protected var §""H§:Function;
      
      public function §`Z§(param1:String = "utf-8")
      {
         this.§""H§ = this.§0S§;
         super();
         this.§4!;§ = param1;
         this.§%c§ = new Dictionary();
         this.§%!S§ = new ByteArray();
         this.§%!S§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get date() : Date
      {
         return this.§var§;
      }
      
      public function set date(param1:Date) : void
      {
         this.§var§ = param1 != null ? param1 : new Date();
      }
      
      public function get §7!$§() : String
      {
         return this.§'W§;
      }
      
      public function set §7!$§(param1:String) : void
      {
         this.§'W§ = param1;
      }
      
      function get §+"H§() : Boolean
      {
         return this.§?!0§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§'i§)
         {
            this.uncompress();
         }
         return this.§%!S§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§!!2§(param1);
      }
      
      public function §!!2§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§%!S§,0,param1.length);
            this.§9!Y§ = §%;§.§2!_§(this.§%!S§);
            this.§1"B§ = false;
         }
         else
         {
            this.§%!S§.length = 0;
            this.§%!S§.position = 0;
            this.§'i§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§5v§ = this.§8i§ = this.§%!S§.length;
         }
      }
      
      public function get §0?§() : String
      {
         return this.§6!S§;
      }
      
      public function get §&!e§() : uint
      {
         return this.§8i§;
      }
      
      public function get §"!z§() : uint
      {
         return this.§5v§;
      }
      
      public function §8m§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§'i§)
         {
            this.uncompress();
         }
         this.§%!S§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§%!S§.readUTFBytes(this.§%!S§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§%!S§.readMultiByte(this.§%!S§.bytesAvailable,param2);
         }
         this.§%!S§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §0"5§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§%!S§.length = 0;
         this.§%!S§.position = 0;
         this.§'i§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§%!S§.writeUTFBytes(param1);
            }
            else
            {
               this.§%!S§.writeMultiByte(param1,param2);
            }
            this.§9!Y§ = §%;§.§2!_§(this.§%!S§);
            this.§1"B§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§5v§ = this.§8i§ = this.§%!S§.length;
         }
      }
      
      public function §&x§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§9$§.§2!s§);
            param1.writeShort(this.§[!R§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§9$§.§3!T§);
         }
         param1.writeShort(this.§[!R§ << 8 | 20);
         param1.writeShort(this.§4!;§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§'i§ ? int(§6!Q§) : int(§0X§));
         var _loc5_:Date = this.§var§ != null ? this.§var§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§9!Y§);
         param1.writeUnsignedInt(this.§8i§);
         param1.writeUnsignedInt(this.§5v§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§4!;§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§'W§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§'W§,this.§4!;§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§%c§)
         {
            if((_loc15_ = this.§%c§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§1"B§)
            {
               if(_loc16_ = this.§'i§)
               {
                  this.uncompress();
               }
               this.§&!W§ = §%;§.§ r§(this.§%!S§,0,this.§%!S§.length);
               this.§1"B§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§&!W§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§0!b§.length > 0)
         {
            if(this.§4!;§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§0!b§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§0!b§,this.§4!;§);
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
         if(!param3 && this.§%!S§.length > 0)
         {
            if(this.§'i§)
            {
               if(§ U§ || §-Q§)
               {
                  _loc13_ = this.§%!S§.length;
                  param1.writeBytes(this.§%!S§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§%!S§.length - 6;
                  param1.writeBytes(this.§%!S§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§%!S§.length;
               param1.writeBytes(this.§%!S§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§""H§(param1))
         {
         }
         return this.§""H§ === this.§[T§;
      }
      
      protected function §[T§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §0S§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§#!Y§(param1);
            if(this.§!!n§ + this.§6!Z§ > 0)
            {
               this.§""H§ = this.§,d§;
            }
            else
            {
               this.§""H§ = this.§=!9§;
            }
            return true;
         }
         return false;
      }
      
      protected function §,d§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§!!n§ + this.§6!Z§)
         {
            this.§5!V§(param1);
            this.§""H§ = this.§=!9§;
            return true;
         }
         return false;
      }
      
      protected function §=!9§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§?!0§)
         {
            this.§""H§ = this.§[T§;
            _loc2_ = false;
         }
         else if(this.§8i§ == 0)
         {
            this.§""H§ = this.§[T§;
         }
         else if(param1.bytesAvailable >= this.§8i§)
         {
            this.§4"2§(param1);
            this.§""H§ = this.§[T§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §#!Y§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§[!R§ = _loc2_ >> 8;
         this.§6!S§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§6!H§ = param1.readUnsignedShort();
         this.§+W§ = (_loc3_ & 1) !== 0;
         this.§?!0§ = (_loc3_ & 8) !== 0;
         this.§;H§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§4!;§ = "utf-8";
         }
         if(this.§6!H§ === §@!4§)
         {
            this.§7!z§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§2O§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§6!H§ === §6!Q§)
         {
            this.§@!G§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§var§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§9!Y§ = param1.readUnsignedInt();
         this.§8i§ = param1.readUnsignedInt();
         this.§5v§ = param1.readUnsignedInt();
         this.§!!n§ = param1.readUnsignedShort();
         this.§6!Z§ = param1.readUnsignedShort();
      }
      
      protected function §5!V§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§4!;§ == "utf-8")
         {
            this.§'W§ = param1.readUTFBytes(this.§!!n§);
         }
         else
         {
            this.§'W§ = param1.readMultiByte(this.§!!n§,this.§4!;§);
         }
         var _loc2_:uint = this.§6!Z§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§'W§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§&!W§ = param1.readUnsignedInt();
               this.§1"B§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§%c§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §4"2§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§6!H§ === §6!Q§ && !this.§+W§)
         {
            if(§ U§ || §-Q§)
            {
               param1.readBytes(this.§%!S§,0,this.§8i§);
            }
            else
            {
               if(!this.§1"B§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§%!S§.writeByte(120);
               _loc2_ = ~this.§@!G§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§%!S§.writeByte(_loc2_);
               param1.readBytes(this.§%!S§,2,this.§8i§);
               this.§%!S§.position = this.§%!S§.length;
               this.§%!S§.writeUnsignedInt(this.§&!W§);
            }
            this.§'i§ = true;
         }
         else
         {
            if(this.§6!H§ != §0X§)
            {
               throw new Error("Compression method " + this.§6!H§ + " is not supported.");
            }
            param1.readBytes(this.§%!S§,0,this.§8i§);
            this.§'i§ = false;
         }
         this.§%!S§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§'i§)
         {
            if(this.§%!S§.length > 0)
            {
               this.§%!S§.position = 0;
               this.§5v§ = this.§%!S§.length;
               if(§-Q§)
               {
                  this.§%!S§.deflate();
                  this.§8i§ = this.§%!S§.length;
               }
               else if(§ U§)
               {
                  this.§%!S§.compress.apply(this.§%!S§,["deflate"]);
                  this.§8i§ = this.§%!S§.length;
               }
               else
               {
                  this.§%!S§.compress();
                  this.§8i§ = this.§%!S§.length - 6;
               }
               this.§%!S§.position = 0;
               this.§'i§ = true;
            }
            else
            {
               this.§8i§ = 0;
               this.§5v§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§'i§ && this.§%!S§.length > 0)
         {
            this.§%!S§.position = 0;
            if(§-Q§)
            {
               this.§%!S§.inflate();
            }
            else if(§ U§)
            {
               this.§%!S§.uncompress.apply(this.§%!S§,["deflate"]);
            }
            else
            {
               this.§%!S§.uncompress();
            }
            this.§%!S§.position = 0;
            this.§'i§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§'W§ + "\n  date:" + this.§var§ + "\n  sizeCompressed:" + this.§8i§ + "\n  sizeUncompressed:" + this.§5v§ + "\n  versionHost:" + this.§[!R§ + "\n  versionNumber:" + this.§6!S§ + "\n  compressionMethod:" + this.§6!H§ + "\n  encrypted:" + this.§+W§ + "\n  hasDataDescriptor:" + this.§?!0§ + "\n  hasCompressedPatchedData:" + this.§;H§ + "\n  filenameEncoding:" + this.§4!;§ + "\n  crc32:" + this.§9!Y§.toString(16) + "\n  adler32:" + this.§&!W§.toString(16);
      }
   }
}

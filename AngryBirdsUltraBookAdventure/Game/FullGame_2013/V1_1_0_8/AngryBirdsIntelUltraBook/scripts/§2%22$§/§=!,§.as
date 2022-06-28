package §2"$§
{
   import §[!X§.§-,§;
   import flash.utils.*;
   
   public class §=!,§
   {
      
      public static const §2!F§:int = 0;
      
      public static const §2!0§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §0!w§:int = 6;
      
      public static const §8q§:int = 7;
      
      public static const §5!n§:int = 8;
      
      public static const §%e§:int = 9;
      
      public static const §1!8§:int = 10;
      
      protected static var §8!7§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var § s§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §6e§:int = 0;
      
      protected var §!!c§:String = "2.0";
      
      protected var §&!s§:int = 8;
      
      protected var §'s§:Boolean = false;
      
      protected var §<i§:int = -1;
      
      protected var §8!!§:int = -1;
      
      protected var §1-§:int = -1;
      
      protected var §,y§:Boolean = false;
      
      protected var § !7§:Boolean = false;
      
      protected var § U§:Date;
      
      protected var §,!`§:uint;
      
      protected var §5h§:Boolean = false;
      
      protected var §"q§:uint = 0;
      
      protected var §1X§:uint = 0;
      
      protected var §1!'§:String = "";
      
      protected var §[u§:String;
      
      protected var §"j§:Dictionary;
      
      protected var §=!>§:String = "";
      
      protected var §5!@§:ByteArray;
      
      var §!!f§:uint;
      
      var §9$§:uint = 0;
      
      var §%Z§:uint = 0;
      
      protected var §0!l§:Boolean = false;
      
      protected var §<!o§:Function;
      
      public function §=!,§(param1:String = "utf-8")
      {
         this.§<!o§ = this.§9!c§;
         super();
         this.§[u§ = param1;
         this.§"j§ = new Dictionary();
         this.§5!@§ = new ByteArray();
         this.§5!@§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §'!E§() : Date
      {
         return this.§ U§;
      }
      
      public function set §'!E§(param1:Date) : void
      {
         this.§ U§ = param1 != null ? param1 : new Date();
      }
      
      public function get §=!;§() : String
      {
         return this.§1!'§;
      }
      
      public function set §=!;§(param1:String) : void
      {
         this.§1!'§ = param1;
      }
      
      function get §#U§() : Boolean
      {
         return this.§,y§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§0!l§)
         {
            this.uncompress();
         }
         return this.§5!@§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§^4§(param1);
      }
      
      public function §^4§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§5!@§,0,param1.length);
            this.§!!f§ = §-,§.§3'§(this.§5!@§);
            this.§5h§ = false;
         }
         else
         {
            this.§5!@§.length = 0;
            this.§5!@§.position = 0;
            this.§0!l§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§%Z§ = this.§9$§ = this.§5!@§.length;
         }
      }
      
      public function get §;e§() : String
      {
         return this.§!!c§;
      }
      
      public function get §2!6§() : uint
      {
         return this.§9$§;
      }
      
      public function get §]s§() : uint
      {
         return this.§%Z§;
      }
      
      public function §7Y§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§0!l§)
         {
            this.uncompress();
         }
         this.§5!@§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§5!@§.readUTFBytes(this.§5!@§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§5!@§.readMultiByte(this.§5!@§.bytesAvailable,param2);
         }
         this.§5!@§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §&p§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§5!@§.length = 0;
         this.§5!@§.position = 0;
         this.§0!l§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§5!@§.writeUTFBytes(param1);
            }
            else
            {
               this.§5!@§.writeMultiByte(param1,param2);
            }
            this.§!!f§ = §-,§.§3'§(this.§5!@§);
            this.§5h§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§%Z§ = this.§9$§ = this.§5!@§.length;
         }
      }
      
      public function §,!4§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§1!h§.§?!2§);
            param1.writeShort(this.§6e§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§1!h§.§<D§);
         }
         param1.writeShort(this.§6e§ << 8 | 20);
         param1.writeShort(this.§[u§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§0!l§ ? int(§5!n§) : int(§2!F§));
         var _loc5_:Date = this.§ U§ != null ? this.§ U§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§!!f§);
         param1.writeUnsignedInt(this.§9$§);
         param1.writeUnsignedInt(this.§%Z§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§[u§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§1!'§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§1!'§,this.§[u§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§"j§)
         {
            if((_loc15_ = this.§"j§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§5h§)
            {
               if(_loc16_ = this.§0!l§)
               {
                  this.uncompress();
               }
               this.§,!`§ = §-,§.§-!x§(this.§5!@§,0,this.§5!@§.length);
               this.§5h§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§,!`§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§=!>§.length > 0)
         {
            if(this.§[u§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§=!>§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§=!>§,this.§[u§);
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
         if(!param3 && this.§5!@§.length > 0)
         {
            if(this.§0!l§)
            {
               if(§8!7§ || § s§)
               {
                  _loc13_ = this.§5!@§.length;
                  param1.writeBytes(this.§5!@§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§5!@§.length - 6;
                  param1.writeBytes(this.§5!@§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§5!@§.length;
               param1.writeBytes(this.§5!@§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§<!o§(param1))
         {
         }
         return this.§<!o§ === this.§8b§;
      }
      
      protected function §8b§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §9!c§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§8s§(param1);
            if(this.§"q§ + this.§1X§ > 0)
            {
               this.§<!o§ = this.§^§;
            }
            else
            {
               this.§<!o§ = this.§=!g§;
            }
            return true;
         }
         return false;
      }
      
      protected function §^§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§"q§ + this.§1X§)
         {
            this.§8!r§(param1);
            this.§<!o§ = this.§=!g§;
            return true;
         }
         return false;
      }
      
      protected function §=!g§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§,y§)
         {
            this.§<!o§ = this.§8b§;
            _loc2_ = false;
         }
         else if(this.§9$§ == 0)
         {
            this.§<!o§ = this.§8b§;
         }
         else if(param1.bytesAvailable >= this.§9$§)
         {
            this.§<6§(param1);
            this.§<!o§ = this.§8b§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §8s§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§6e§ = _loc2_ >> 8;
         this.§!!c§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§&!s§ = param1.readUnsignedShort();
         this.§'s§ = (_loc3_ & 1) !== 0;
         this.§,y§ = (_loc3_ & 8) !== 0;
         this.§ !7§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§[u§ = "utf-8";
         }
         if(this.§&!s§ === §0!w§)
         {
            this.§<i§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§8!!§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§&!s§ === §5!n§)
         {
            this.§1-§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§ U§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§!!f§ = param1.readUnsignedInt();
         this.§9$§ = param1.readUnsignedInt();
         this.§%Z§ = param1.readUnsignedInt();
         this.§"q§ = param1.readUnsignedShort();
         this.§1X§ = param1.readUnsignedShort();
      }
      
      protected function §8!r§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§[u§ == "utf-8")
         {
            this.§1!'§ = param1.readUTFBytes(this.§"q§);
         }
         else
         {
            this.§1!'§ = param1.readMultiByte(this.§"q§,this.§[u§);
         }
         var _loc2_:uint = this.§1X§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§1!'§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§,!`§ = param1.readUnsignedInt();
               this.§5h§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§"j§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §<6§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§&!s§ === §5!n§ && !this.§'s§)
         {
            if(§8!7§ || § s§)
            {
               param1.readBytes(this.§5!@§,0,this.§9$§);
            }
            else
            {
               if(!this.§5h§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§5!@§.writeByte(120);
               _loc2_ = ~this.§1-§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§5!@§.writeByte(_loc2_);
               param1.readBytes(this.§5!@§,2,this.§9$§);
               this.§5!@§.position = this.§5!@§.length;
               this.§5!@§.writeUnsignedInt(this.§,!`§);
            }
            this.§0!l§ = true;
         }
         else
         {
            if(this.§&!s§ != §2!F§)
            {
               throw new Error("Compression method " + this.§&!s§ + " is not supported.");
            }
            param1.readBytes(this.§5!@§,0,this.§9$§);
            this.§0!l§ = false;
         }
         this.§5!@§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§0!l§)
         {
            if(this.§5!@§.length > 0)
            {
               this.§5!@§.position = 0;
               this.§%Z§ = this.§5!@§.length;
               if(§ s§)
               {
                  this.§5!@§.deflate();
                  this.§9$§ = this.§5!@§.length;
               }
               else if(§8!7§)
               {
                  this.§5!@§.compress.apply(this.§5!@§,["deflate"]);
                  this.§9$§ = this.§5!@§.length;
               }
               else
               {
                  this.§5!@§.compress();
                  this.§9$§ = this.§5!@§.length - 6;
               }
               this.§5!@§.position = 0;
               this.§0!l§ = true;
            }
            else
            {
               this.§9$§ = 0;
               this.§%Z§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§0!l§ && this.§5!@§.length > 0)
         {
            this.§5!@§.position = 0;
            if(§ s§)
            {
               this.§5!@§.inflate();
            }
            else if(§8!7§)
            {
               this.§5!@§.uncompress.apply(this.§5!@§,["deflate"]);
            }
            else
            {
               this.§5!@§.uncompress();
            }
            this.§5!@§.position = 0;
            this.§0!l§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§1!'§ + "\n  date:" + this.§ U§ + "\n  sizeCompressed:" + this.§9$§ + "\n  sizeUncompressed:" + this.§%Z§ + "\n  versionHost:" + this.§6e§ + "\n  versionNumber:" + this.§!!c§ + "\n  compressionMethod:" + this.§&!s§ + "\n  encrypted:" + this.§'s§ + "\n  hasDataDescriptor:" + this.§,y§ + "\n  hasCompressedPatchedData:" + this.§ !7§ + "\n  filenameEncoding:" + this.§[u§ + "\n  crc32:" + this.§!!f§.toString(16) + "\n  adler32:" + this.§,!`§.toString(16);
      }
   }
}

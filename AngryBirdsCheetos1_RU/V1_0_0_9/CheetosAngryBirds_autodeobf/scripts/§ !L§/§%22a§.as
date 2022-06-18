package § !L§
{
   import §,9§.§]1§;
   import flash.utils.*;
   
   public class §"a§
   {
      
      public static const §&z§:int = 0;
      
      public static const §1!_§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §`[§:int = 6;
      
      public static const §]a§:int = 7;
      
      public static const §%b§:int = 8;
      
      public static const § I§:int = 9;
      
      public static const §#i§:int = 10;
      
      protected static var §1L§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §`i§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §<!Q§:int = 0;
      
      protected var §4C§:String = "2.0";
      
      protected var §1o§:int = 8;
      
      protected var §6!0§:Boolean = false;
      
      protected var §1#§:int = -1;
      
      protected var §2!?§:int = -1;
      
      protected var §"!V§:int = -1;
      
      protected var §0!T§:Boolean = false;
      
      protected var §2!>§:Boolean = false;
      
      protected var §#r§:Date;
      
      protected var §!`§:uint;
      
      protected var §>A§:Boolean = false;
      
      protected var §^y§:uint = 0;
      
      protected var §#!_§:uint = 0;
      
      protected var §2B§:String = "";
      
      protected var §%!P§:String;
      
      protected var §-Y§:Dictionary;
      
      protected var §2[§:String = "";
      
      protected var §>4§:ByteArray;
      
      var §?!F§:uint;
      
      var §<![§:uint = 0;
      
      var §'f§:uint = 0;
      
      protected var §2Y§:Boolean = false;
      
      protected var §"D§:Function;
      
      public function §"a§(param1:String = "utf-8")
      {
         this.§"D§ = this.§9u§;
         super();
         this.§%!P§ = param1;
         this.§-Y§ = new Dictionary();
         this.§>4§ = new ByteArray();
         this.§>4§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §,^§() : Date
      {
         return this.§#r§;
      }
      
      public function set §,^§(param1:Date) : void
      {
         this.§#r§ = param1 != null ? param1 : new Date();
      }
      
      public function get §+!N§() : String
      {
         return this.§2B§;
      }
      
      public function set §+!N§(param1:String) : void
      {
         this.§2B§ = param1;
      }
      
      function get §+!4§() : Boolean
      {
         return this.§0!T§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§2Y§)
         {
            this.uncompress();
         }
         return this.§>4§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§]!S§(param1);
      }
      
      public function §]!S§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§>4§,0,param1.length);
            this.§?!F§ = §]1§.§-!@§(this.§>4§);
            this.§>A§ = false;
         }
         else
         {
            this.§>4§.length = 0;
            this.§>4§.position = 0;
            this.§2Y§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§'f§ = this.§<![§ = this.§>4§.length;
         }
      }
      
      public function get §[Y§() : String
      {
         return this.§4C§;
      }
      
      public function get §6>§() : uint
      {
         return this.§<![§;
      }
      
      public function get §<!^§() : uint
      {
         return this.§'f§;
      }
      
      public function §<5§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§2Y§)
         {
            this.uncompress();
         }
         this.§>4§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§>4§.readUTFBytes(this.§>4§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§>4§.readMultiByte(this.§>4§.bytesAvailable,param2);
         }
         this.§>4§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §]A§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§>4§.length = 0;
         this.§>4§.position = 0;
         this.§2Y§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§>4§.writeUTFBytes(param1);
            }
            else
            {
               this.§>4§.writeMultiByte(param1,param2);
            }
            this.§?!F§ = §]1§.§-!@§(this.§>4§);
            this.§>A§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§'f§ = this.§<![§ = this.§>4§.length;
         }
      }
      
      public function §+!Y§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§7h§.§,!P§);
            param1.writeShort(this.§<!Q§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§7h§.§2k§);
         }
         param1.writeShort(this.§<!Q§ << 8 | 20);
         param1.writeShort(this.§%!P§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§2Y§ ? int(§%b§) : int(§&z§));
         var _loc5_:Date = this.§#r§ != null ? this.§#r§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§?!F§);
         param1.writeUnsignedInt(this.§<![§);
         param1.writeUnsignedInt(this.§'f§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§%!P§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§2B§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§2B§,this.§%!P§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§-Y§)
         {
            if((_loc15_ = this.§-Y§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§>A§)
            {
               if(_loc16_ = this.§2Y§)
               {
                  this.uncompress();
               }
               this.§!`§ = §]1§.§51§(this.§>4§,0,this.§>4§.length);
               this.§>A§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§!`§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§2[§.length > 0)
         {
            if(this.§%!P§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§2[§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§2[§,this.§%!P§);
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
         if(!param3 && this.§>4§.length > 0)
         {
            if(this.§2Y§)
            {
               if(§1L§ || §`i§)
               {
                  _loc13_ = this.§>4§.length;
                  param1.writeBytes(this.§>4§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§>4§.length - 6;
                  param1.writeBytes(this.§>4§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§>4§.length;
               param1.writeBytes(this.§>4§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§"D§(param1))
         {
         }
         return this.§"D§ === this.§&!F§;
      }
      
      protected function §&!F§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §9u§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§+!`§(param1);
            if(this.§^y§ + this.§#!_§ > 0)
            {
               this.§"D§ = this.§?x§;
            }
            else
            {
               this.§"D§ = this.§8v§;
            }
            return true;
         }
         return false;
      }
      
      protected function §?x§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§^y§ + this.§#!_§)
         {
            this.§^!7§(param1);
            this.§"D§ = this.§8v§;
            return true;
         }
         return false;
      }
      
      protected function §8v§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§0!T§)
         {
            this.§"D§ = this.§&!F§;
            _loc2_ = false;
         }
         else if(this.§<![§ == 0)
         {
            this.§"D§ = this.§&!F§;
         }
         else if(param1.bytesAvailable >= this.§<![§)
         {
            this.§=!"§(param1);
            this.§"D§ = this.§&!F§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §+!`§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§<!Q§ = _loc2_ >> 8;
         this.§4C§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§1o§ = param1.readUnsignedShort();
         this.§6!0§ = (_loc3_ & 1) !== 0;
         this.§0!T§ = (_loc3_ & 8) !== 0;
         this.§2!>§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§%!P§ = "utf-8";
         }
         if(this.§1o§ === §`[§)
         {
            this.§1#§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§2!?§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§1o§ === §%b§)
         {
            this.§"!V§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§#r§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§?!F§ = param1.readUnsignedInt();
         this.§<![§ = param1.readUnsignedInt();
         this.§'f§ = param1.readUnsignedInt();
         this.§^y§ = param1.readUnsignedShort();
         this.§#!_§ = param1.readUnsignedShort();
      }
      
      protected function §^!7§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§%!P§ == "utf-8")
         {
            this.§2B§ = param1.readUTFBytes(this.§^y§);
         }
         else
         {
            this.§2B§ = param1.readMultiByte(this.§^y§,this.§%!P§);
         }
         var _loc2_:uint = this.§#!_§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§2B§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§!`§ = param1.readUnsignedInt();
               this.§>A§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§-Y§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §=!"§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§1o§ === §%b§ && !this.§6!0§)
         {
            if(§1L§ || §`i§)
            {
               param1.readBytes(this.§>4§,0,this.§<![§);
            }
            else
            {
               if(!this.§>A§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§>4§.writeByte(120);
               _loc2_ = ~this.§"!V§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§>4§.writeByte(_loc2_);
               param1.readBytes(this.§>4§,2,this.§<![§);
               this.§>4§.position = this.§>4§.length;
               this.§>4§.writeUnsignedInt(this.§!`§);
            }
            this.§2Y§ = true;
         }
         else
         {
            if(this.§1o§ != §&z§)
            {
               throw new Error("Compression method " + this.§1o§ + " is not supported.");
            }
            param1.readBytes(this.§>4§,0,this.§<![§);
            this.§2Y§ = false;
         }
         this.§>4§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§2Y§)
         {
            if(this.§>4§.length > 0)
            {
               this.§>4§.position = 0;
               this.§'f§ = this.§>4§.length;
               if(§`i§)
               {
                  this.§>4§.deflate();
                  this.§<![§ = this.§>4§.length;
               }
               else if(§1L§)
               {
                  this.§>4§.compress.apply(this.§>4§,["deflate"]);
                  this.§<![§ = this.§>4§.length;
               }
               else
               {
                  this.§>4§.compress();
                  this.§<![§ = this.§>4§.length - 6;
               }
               this.§>4§.position = 0;
               this.§2Y§ = true;
            }
            else
            {
               this.§<![§ = 0;
               this.§'f§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§2Y§ && this.§>4§.length > 0)
         {
            this.§>4§.position = 0;
            if(§`i§)
            {
               this.§>4§.inflate();
            }
            else if(§1L§)
            {
               this.§>4§.uncompress.apply(this.§>4§,["deflate"]);
            }
            else
            {
               this.§>4§.uncompress();
            }
            this.§>4§.position = 0;
            this.§2Y§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§2B§ + "\n  date:" + this.§#r§ + "\n  sizeCompressed:" + this.§<![§ + "\n  sizeUncompressed:" + this.§'f§ + "\n  versionHost:" + this.§<!Q§ + "\n  versionNumber:" + this.§4C§ + "\n  compressionMethod:" + this.§1o§ + "\n  encrypted:" + this.§6!0§ + "\n  hasDataDescriptor:" + this.§0!T§ + "\n  hasCompressedPatchedData:" + this.§2!>§ + "\n  filenameEncoding:" + this.§%!P§ + "\n  crc32:" + this.§?!F§.toString(16) + "\n  adler32:" + this.§!`§.toString(16);
      }
   }
}

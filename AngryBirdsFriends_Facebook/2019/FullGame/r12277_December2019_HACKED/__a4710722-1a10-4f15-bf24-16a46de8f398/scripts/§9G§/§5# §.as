package §9G§
{
   import §'!p§.§[m§;
   import flash.utils.*;
   
   public class §5# §
   {
      
      public static const §"!c§:int = 0;
      
      public static const §-!;§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §@!"§:int = 6;
      
      public static const § for§:int = 7;
      
      public static const §@#X§:int = 8;
      
      public static const §5#h§:int = 9;
      
      public static const §,!$§:int = 10;
      
      protected static var §1#+§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §'!E§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §&!E§:int = 0;
      
      protected var §#!h§:String = "2.0";
      
      protected var §2!<§:int = 8;
      
      protected var §`D§:Boolean = false;
      
      protected var §;#h§:int = -1;
      
      protected var §"$C§:int = -1;
      
      protected var §4#y§:int = -1;
      
      protected var §%!U§:Boolean = false;
      
      protected var §&!o§:Boolean = false;
      
      protected var §8#W§:Date;
      
      protected var §%z§:uint;
      
      protected var §>!o§:Boolean = false;
      
      protected var §^E§:uint = 0;
      
      protected var get:uint = 0;
      
      protected var §%#k§:String = "";
      
      protected var §[!6§:String;
      
      protected var §?"G§:Dictionary;
      
      protected var §[!E§:String = "";
      
      protected var §4"G§:ByteArray;
      
      var §8"L§:uint;
      
      var §0"4§:uint = 0;
      
      var §3%§:uint = 0;
      
      protected var §>M§:Boolean = false;
      
      protected var §0#l§:Function;
      
      public function §5# §(param1:String = "utf-8")
      {
         this.§0#l§ = this.§7"U§;
         super();
         this.§[!6§ = param1;
         this.§?"G§ = new Dictionary();
         this.§4"G§ = new ByteArray();
         this.§4"G§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §@$C§() : Date
      {
         return this.§8#W§;
      }
      
      public function set §@$C§(param1:Date) : void
      {
         this.§8#W§ = param1 != null ? param1 : new Date();
      }
      
      public function get filename() : String
      {
         return this.§%#k§;
      }
      
      public function set filename(param1:String) : void
      {
         this.§%#k§ = param1;
      }
      
      function get §1$!§() : Boolean
      {
         return this.§%!U§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§>M§)
         {
            this.uncompress();
         }
         return this.§4"G§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§]#e§(param1);
      }
      
      public function §]#e§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§4"G§,0,param1.length);
            this.§8"L§ = §[m§.§9"?§(this.§4"G§);
            this.§>!o§ = false;
         }
         else
         {
            this.§4"G§.length = 0;
            this.§4"G§.position = 0;
            this.§>M§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§3%§ = this.§0"4§ = this.§4"G§.length;
         }
      }
      
      public function get §2$%§() : String
      {
         return this.§#!h§;
      }
      
      public function get §>v§() : uint
      {
         return this.§0"4§;
      }
      
      public function get §1"L§() : uint
      {
         return this.§3%§;
      }
      
      public function §&!>§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§>M§)
         {
            this.uncompress();
         }
         this.§4"G§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§4"G§.readUTFBytes(this.§4"G§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§4"G§.readMultiByte(this.§4"G§.bytesAvailable,param2);
         }
         this.§4"G§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §9!>§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§4"G§.length = 0;
         this.§4"G§.position = 0;
         this.§>M§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§4"G§.writeUTFBytes(param1);
            }
            else
            {
               this.§4"G§.writeMultiByte(param1,param2);
            }
            this.§8"L§ = §[m§.§9"?§(this.§4"G§);
            this.§>!o§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§3%§ = this.§0"4§ = this.§4"G§.length;
         }
      }
      
      public function §!2§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§+$6§.§^F§);
            param1.writeShort(this.§&!E§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§+$6§.§#$-§);
         }
         param1.writeShort(this.§&!E§ << 8 | 20);
         param1.writeShort(this.§[!6§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§>M§ ? int(§@#X§) : int(§"!c§));
         var _loc5_:Date = this.§8#W§ != null ? this.§8#W§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§8"L§);
         param1.writeUnsignedInt(this.§0"4§);
         param1.writeUnsignedInt(this.§3%§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§[!6§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§%#k§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§%#k§,this.§[!6§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§?"G§)
         {
            if((_loc15_ = this.§?"G§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§>!o§)
            {
               if(_loc16_ = this.§>M§)
               {
                  this.uncompress();
               }
               this.§%z§ = §[m§.§ !o§(this.§4"G§,0,this.§4"G§.length);
               this.§>!o§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§%z§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§[!E§.length > 0)
         {
            if(this.§[!6§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§[!E§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§[!E§,this.§[!6§);
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
         if(!param3 && this.§4"G§.length > 0)
         {
            if(this.§>M§)
            {
               if(§1#+§ || §'!E§)
               {
                  _loc13_ = this.§4"G§.length;
                  param1.writeBytes(this.§4"G§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§4"G§.length - 6;
                  param1.writeBytes(this.§4"G§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§4"G§.length;
               param1.writeBytes(this.§4"G§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§0#l§(param1))
         {
         }
         return this.§0#l§ === this.§&!'§;
      }
      
      protected function §&!'§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §7"U§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§<#H§(param1);
            if(this.§^E§ + this.get > 0)
            {
               this.§0#l§ = this.§[A§;
            }
            else
            {
               this.§0#l§ = this.§4-§;
            }
            return true;
         }
         return false;
      }
      
      protected function §[A§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§^E§ + this.get)
         {
            this.§?v§(param1);
            this.§0#l§ = this.§4-§;
            return true;
         }
         return false;
      }
      
      protected function §4-§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§%!U§)
         {
            this.§0#l§ = this.§&!'§;
            _loc2_ = false;
         }
         else if(this.§0"4§ == 0)
         {
            this.§0#l§ = this.§&!'§;
         }
         else if(param1.bytesAvailable >= this.§0"4§)
         {
            this.§;!Q§(param1);
            this.§0#l§ = this.§&!'§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §<#H§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§&!E§ = _loc2_ >> 8;
         this.§#!h§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§2!<§ = param1.readUnsignedShort();
         this.§`D§ = (_loc3_ & 1) !== 0;
         this.§%!U§ = (_loc3_ & 8) !== 0;
         this.§&!o§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§[!6§ = "utf-8";
         }
         if(this.§2!<§ === §@!"§)
         {
            this.§;#h§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§"$C§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§2!<§ === §@#X§)
         {
            this.§4#y§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§8#W§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§8"L§ = param1.readUnsignedInt();
         this.§0"4§ = param1.readUnsignedInt();
         this.§3%§ = param1.readUnsignedInt();
         this.§^E§ = param1.readUnsignedShort();
         this.get = param1.readUnsignedShort();
      }
      
      protected function §?v§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§[!6§ == "utf-8")
         {
            this.§%#k§ = param1.readUTFBytes(this.§^E§);
         }
         else
         {
            this.§%#k§ = param1.readMultiByte(this.§^E§,this.§[!6§);
         }
         var _loc2_:uint = this.get;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§%#k§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§%z§ = param1.readUnsignedInt();
               this.§>!o§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§?"G§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §;!Q§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§2!<§ === §@#X§ && !this.§`D§)
         {
            if(§1#+§ || §'!E§)
            {
               param1.readBytes(this.§4"G§,0,this.§0"4§);
            }
            else
            {
               if(!this.§>!o§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§4"G§.writeByte(120);
               _loc2_ = ~this.§4#y§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§4"G§.writeByte(_loc2_);
               param1.readBytes(this.§4"G§,2,this.§0"4§);
               this.§4"G§.position = this.§4"G§.length;
               this.§4"G§.writeUnsignedInt(this.§%z§);
            }
            this.§>M§ = true;
         }
         else if(this.§2!<§ == §"!c§)
         {
            param1.readBytes(this.§4"G§,0,this.§0"4§);
            this.§>M§ = false;
         }
         else
         {
            throw new Error("Compression method " + this.§2!<§ + " is not supported.");
         }
         this.§4"G§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§>M§)
         {
            if(this.§4"G§.length > 0)
            {
               this.§4"G§.position = 0;
               this.§3%§ = this.§4"G§.length;
               if(§'!E§)
               {
                  this.§4"G§.deflate();
                  this.§0"4§ = this.§4"G§.length;
               }
               else if(§1#+§)
               {
                  this.§4"G§.compress.apply(this.§4"G§,["deflate"]);
                  this.§0"4§ = this.§4"G§.length;
               }
               else
               {
                  this.§4"G§.compress();
                  this.§0"4§ = this.§4"G§.length - 6;
               }
               this.§4"G§.position = 0;
               this.§>M§ = true;
            }
            else
            {
               this.§0"4§ = 0;
               this.§3%§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§>M§ && this.§4"G§.length > 0)
         {
            this.§4"G§.position = 0;
            if(§'!E§)
            {
               this.§4"G§.inflate();
            }
            else if(§1#+§)
            {
               this.§4"G§.uncompress.apply(this.§4"G§,["deflate"]);
            }
            else
            {
               this.§4"G§.uncompress();
            }
            this.§4"G§.position = 0;
            this.§>M§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§%#k§ + "\n  date:" + this.§8#W§ + "\n  sizeCompressed:" + this.§0"4§ + "\n  sizeUncompressed:" + this.§3%§ + "\n  versionHost:" + this.§&!E§ + "\n  versionNumber:" + this.§#!h§ + "\n  compressionMethod:" + this.§2!<§ + "\n  encrypted:" + this.§`D§ + "\n  hasDataDescriptor:" + this.§%!U§ + "\n  hasCompressedPatchedData:" + this.§&!o§ + "\n  filenameEncoding:" + this.§[!6§ + "\n  crc32:" + this.§8"L§.toString(16) + "\n  adler32:" + this.§%z§.toString(16);
      }
   }
}

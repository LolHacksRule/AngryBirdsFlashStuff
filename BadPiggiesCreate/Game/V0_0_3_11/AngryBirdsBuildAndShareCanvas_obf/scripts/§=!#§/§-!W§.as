package §=!#§
{
   import §>!?§.§;!'§;
   import flash.utils.*;
   
   public class §-!W§
   {
      
      public static const §%T§:int = 0;
      
      public static const §`!;§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §1",§:int = 6;
      
      public static const §<"9§:int = 7;
      
      public static const §5!9§:int = 8;
      
      public static const §6!a§:int = 9;
      
      public static const §=n§:int = 10;
      
      protected static var §2"1§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §0"1§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §[o§:int = 0;
      
      protected var §[p§:String = "2.0";
      
      protected var §@T§:int = 8;
      
      protected var §@!"§:Boolean = false;
      
      protected var §2",§:int = -1;
      
      protected var §[!=§:int = -1;
      
      protected var §4! §:int = -1;
      
      protected var §^"#§:Boolean = false;
      
      protected var §0#§:Boolean = false;
      
      protected var §2!H§:Date;
      
      protected var §3X§:uint;
      
      protected var §<5§:Boolean = false;
      
      protected var §9!E§:uint = 0;
      
      protected var §]"4§:uint = 0;
      
      protected var §%!x§:String = "";
      
      protected var §@!G§:String;
      
      protected var §@"6§:Dictionary;
      
      protected var §2!`§:String = "";
      
      protected var §?!S§:ByteArray;
      
      var §-!U§:uint;
      
      var §1,§:uint = 0;
      
      var §0!j§:uint = 0;
      
      protected var §`b§:Boolean = false;
      
      protected var § !y§:Function;
      
      public function §-!W§(param1:String = "utf-8")
      {
         this.§ !y§ = this.§=!T§;
         super();
         this.§@!G§ = param1;
         this.§@"6§ = new Dictionary();
         this.§?!S§ = new ByteArray();
         this.§?!S§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §3!"§() : Date
      {
         return this.§2!H§;
      }
      
      public function set §3!"§(param1:Date) : void
      {
         this.§2!H§ = param1 != null ? param1 : new Date();
      }
      
      public function get §<i§() : String
      {
         return this.§%!x§;
      }
      
      public function set §<i§(param1:String) : void
      {
         this.§%!x§ = param1;
      }
      
      function get §,"1§() : Boolean
      {
         return this.§^"#§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§`b§)
         {
            this.uncompress();
         }
         return this.§?!S§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§;"&§(param1);
      }
      
      public function §;"&§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§?!S§,0,param1.length);
            this.§-!U§ = §;!'§.§""-§(this.§?!S§);
            this.§<5§ = false;
         }
         else
         {
            this.§?!S§.length = 0;
            this.§?!S§.position = 0;
            this.§`b§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§0!j§ = this.§1,§ = this.§?!S§.length;
         }
      }
      
      public function get §=!2§() : String
      {
         return this.§[p§;
      }
      
      public function get §1Y§() : uint
      {
         return this.§1,§;
      }
      
      public function get §9"§() : uint
      {
         return this.§0!j§;
      }
      
      public function §="1§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§`b§)
         {
            this.uncompress();
         }
         this.§?!S§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§?!S§.readUTFBytes(this.§?!S§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§?!S§.readMultiByte(this.§?!S§.bytesAvailable,param2);
         }
         this.§?!S§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §7E§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§?!S§.length = 0;
         this.§?!S§.position = 0;
         this.§`b§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§?!S§.writeUTFBytes(param1);
            }
            else
            {
               this.§?!S§.writeMultiByte(param1,param2);
            }
            this.§-!U§ = §;!'§.§""-§(this.§?!S§);
            this.§<5§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§0!j§ = this.§1,§ = this.§?!S§.length;
         }
      }
      
      public function §6h§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§]f§.§<L§);
            param1.writeShort(this.§[o§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§]f§.§40§);
         }
         param1.writeShort(this.§[o§ << 8 | 20);
         param1.writeShort(this.§@!G§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§`b§ ? int(§5!9§) : int(§%T§));
         var _loc5_:Date = this.§2!H§ != null ? this.§2!H§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§-!U§);
         param1.writeUnsignedInt(this.§1,§);
         param1.writeUnsignedInt(this.§0!j§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§@!G§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§%!x§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§%!x§,this.§@!G§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§@"6§)
         {
            if((_loc15_ = this.§@"6§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§<5§)
            {
               if(_loc16_ = this.§`b§)
               {
                  this.uncompress();
               }
               this.§3X§ = §;!'§.§-!,§(this.§?!S§,0,this.§?!S§.length);
               this.§<5§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§3X§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§2!`§.length > 0)
         {
            if(this.§@!G§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§2!`§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§2!`§,this.§@!G§);
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
         if(!param3 && this.§?!S§.length > 0)
         {
            if(this.§`b§)
            {
               if(§2"1§ || §0"1§)
               {
                  _loc13_ = this.§?!S§.length;
                  param1.writeBytes(this.§?!S§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§?!S§.length - 6;
                  param1.writeBytes(this.§?!S§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§?!S§.length;
               param1.writeBytes(this.§?!S§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§ !y§(param1))
         {
         }
         return this.§ !y§ === this.§5!M§;
      }
      
      protected function §5!M§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §=!T§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§-!u§(param1);
            if(this.§9!E§ + this.§]"4§ > 0)
            {
               this.§ !y§ = this.§!!q§;
            }
            else
            {
               this.§ !y§ = this.§[!U§;
            }
            return true;
         }
         return false;
      }
      
      protected function §!!q§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§9!E§ + this.§]"4§)
         {
            this.§0"#§(param1);
            this.§ !y§ = this.§[!U§;
            return true;
         }
         return false;
      }
      
      protected function §[!U§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§^"#§)
         {
            this.§ !y§ = this.§5!M§;
            _loc2_ = false;
         }
         else if(this.§1,§ == 0)
         {
            this.§ !y§ = this.§5!M§;
         }
         else if(param1.bytesAvailable >= this.§1,§)
         {
            this.§0!U§(param1);
            this.§ !y§ = this.§5!M§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §-!u§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§[o§ = _loc2_ >> 8;
         this.§[p§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§@T§ = param1.readUnsignedShort();
         this.§@!"§ = (_loc3_ & 1) !== 0;
         this.§^"#§ = (_loc3_ & 8) !== 0;
         this.§0#§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§@!G§ = "utf-8";
         }
         if(this.§@T§ === §1",§)
         {
            this.§2",§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§[!=§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§@T§ === §5!9§)
         {
            this.§4! § = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§2!H§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§-!U§ = param1.readUnsignedInt();
         this.§1,§ = param1.readUnsignedInt();
         this.§0!j§ = param1.readUnsignedInt();
         this.§9!E§ = param1.readUnsignedShort();
         this.§]"4§ = param1.readUnsignedShort();
      }
      
      protected function §0"#§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§@!G§ == "utf-8")
         {
            this.§%!x§ = param1.readUTFBytes(this.§9!E§);
         }
         else
         {
            this.§%!x§ = param1.readMultiByte(this.§9!E§,this.§@!G§);
         }
         var _loc2_:uint = this.§]"4§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§%!x§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§3X§ = param1.readUnsignedInt();
               this.§<5§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§@"6§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §0!U§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§@T§ === §5!9§ && !this.§@!"§)
         {
            if(§2"1§ || §0"1§)
            {
               param1.readBytes(this.§?!S§,0,this.§1,§);
            }
            else
            {
               if(!this.§<5§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§?!S§.writeByte(120);
               _loc2_ = ~this.§4! § << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§?!S§.writeByte(_loc2_);
               param1.readBytes(this.§?!S§,2,this.§1,§);
               this.§?!S§.position = this.§?!S§.length;
               this.§?!S§.writeUnsignedInt(this.§3X§);
            }
            this.§`b§ = true;
         }
         else
         {
            if(this.§@T§ != §%T§)
            {
               throw new Error("Compression method " + this.§@T§ + " is not supported.");
            }
            param1.readBytes(this.§?!S§,0,this.§1,§);
            this.§`b§ = false;
         }
         this.§?!S§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§`b§)
         {
            if(this.§?!S§.length > 0)
            {
               this.§?!S§.position = 0;
               this.§0!j§ = this.§?!S§.length;
               if(§0"1§)
               {
                  this.§?!S§.deflate();
                  this.§1,§ = this.§?!S§.length;
               }
               else if(§2"1§)
               {
                  this.§?!S§.compress.apply(this.§?!S§,["deflate"]);
                  this.§1,§ = this.§?!S§.length;
               }
               else
               {
                  this.§?!S§.compress();
                  this.§1,§ = this.§?!S§.length - 6;
               }
               this.§?!S§.position = 0;
               this.§`b§ = true;
            }
            else
            {
               this.§1,§ = 0;
               this.§0!j§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§`b§ && this.§?!S§.length > 0)
         {
            this.§?!S§.position = 0;
            if(§0"1§)
            {
               this.§?!S§.inflate();
            }
            else if(§2"1§)
            {
               this.§?!S§.uncompress.apply(this.§?!S§,["deflate"]);
            }
            else
            {
               this.§?!S§.uncompress();
            }
            this.§?!S§.position = 0;
            this.§`b§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§%!x§ + "\n  date:" + this.§2!H§ + "\n  sizeCompressed:" + this.§1,§ + "\n  sizeUncompressed:" + this.§0!j§ + "\n  versionHost:" + this.§[o§ + "\n  versionNumber:" + this.§[p§ + "\n  compressionMethod:" + this.§@T§ + "\n  encrypted:" + this.§@!"§ + "\n  hasDataDescriptor:" + this.§^"#§ + "\n  hasCompressedPatchedData:" + this.§0#§ + "\n  filenameEncoding:" + this.§@!G§ + "\n  crc32:" + this.§-!U§.toString(16) + "\n  adler32:" + this.§3X§.toString(16);
      }
   }
}

package §5b§
{
   import §0"5§.§<Y§;
   import flash.utils.*;
   
   public class §8"g§
   {
      
      public static const §=!m§:int = 0;
      
      public static const §3"2§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const § j§:int = 6;
      
      public static const §[!$§:int = 7;
      
      public static const §;#"§:int = 8;
      
      public static const §]!Q§:int = 9;
      
      public static const §,s§:int = 10;
      
      protected static var §7!#§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §8!'§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §'",§:int = 0;
      
      protected var §3"y§:String = "2.0";
      
      protected var §2"h§:int = 8;
      
      protected var §&"2§:Boolean = false;
      
      protected var §["G§:int = -1;
      
      protected var §9"G§:int = -1;
      
      protected var § "<§:int = -1;
      
      protected var §["-§:Boolean = false;
      
      protected var §`"`§:Boolean = false;
      
      protected var §+%§:Date;
      
      protected var §%#7§:uint;
      
      protected var §6J§:Boolean = false;
      
      protected var §="p§:uint = 0;
      
      protected var §?q§:uint = 0;
      
      protected var §&m§:String = "";
      
      protected var §2"B§:String;
      
      protected var §`!m§:Dictionary;
      
      protected var §3#!§:String = "";
      
      protected var §,"4§:ByteArray;
      
      var §^"`§:uint;
      
      var §%!U§:uint = 0;
      
      var §7Q§:uint = 0;
      
      protected var § "S§:Boolean = false;
      
      protected var §[S§:Function;
      
      public function §8"g§(param1:String = "utf-8")
      {
         this.§[S§ = this.§@!i§;
         super();
         this.§2"B§ = param1;
         this.§`!m§ = new Dictionary();
         this.§,"4§ = new ByteArray();
         this.§,"4§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get date() : Date
      {
         return this.§+%§;
      }
      
      public function set date(param1:Date) : void
      {
         this.§+%§ = param1 != null ? param1 : new Date();
      }
      
      public function get §+V§() : String
      {
         return this.§&m§;
      }
      
      public function set §+V§(param1:String) : void
      {
         this.§&m§ = param1;
      }
      
      function get §?" §() : Boolean
      {
         return this.§["-§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§ "S§)
         {
            this.uncompress();
         }
         return this.§,"4§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§@"j§(param1);
      }
      
      public function §@"j§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§,"4§,0,param1.length);
            this.§^"`§ = §<Y§.§]!y§(this.§,"4§);
            this.§6J§ = false;
         }
         else
         {
            this.§,"4§.length = 0;
            this.§,"4§.position = 0;
            this.§ "S§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§7Q§ = this.§%!U§ = this.§,"4§.length;
         }
      }
      
      public function get §9m§() : String
      {
         return this.§3"y§;
      }
      
      public function get §"!N§() : uint
      {
         return this.§%!U§;
      }
      
      public function get §2!G§() : uint
      {
         return this.§7Q§;
      }
      
      public function §+!G§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§ "S§)
         {
            this.uncompress();
         }
         this.§,"4§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§,"4§.readUTFBytes(this.§,"4§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§,"4§.readMultiByte(this.§,"4§.bytesAvailable,param2);
         }
         this.§,"4§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §<k§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§,"4§.length = 0;
         this.§,"4§.position = 0;
         this.§ "S§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§,"4§.writeUTFBytes(param1);
            }
            else
            {
               this.§,"4§.writeMultiByte(param1,param2);
            }
            this.§^"`§ = §<Y§.§]!y§(this.§,"4§);
            this.§6J§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§7Q§ = this.§%!U§ = this.§,"4§.length;
         }
      }
      
      public function §6!S§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§^!h§.§'3§);
            param1.writeShort(this.§'",§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§^!h§.§]",§);
         }
         param1.writeShort(this.§'",§ << 8 | 20);
         param1.writeShort(this.§2"B§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§ "S§ ? int(§;#"§) : int(§=!m§));
         var _loc5_:Date = this.§+%§ != null ? this.§+%§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§^"`§);
         param1.writeUnsignedInt(this.§%!U§);
         param1.writeUnsignedInt(this.§7Q§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§2"B§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§&m§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§&m§,this.§2"B§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§`!m§)
         {
            if((_loc15_ = this.§`!m§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§6J§)
            {
               if(_loc16_ = this.§ "S§)
               {
                  this.uncompress();
               }
               this.§%#7§ = §<Y§.§#"5§(this.§,"4§,0,this.§,"4§.length);
               this.§6J§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§%#7§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§3#!§.length > 0)
         {
            if(this.§2"B§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§3#!§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§3#!§,this.§2"B§);
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
         if(!param3 && this.§,"4§.length > 0)
         {
            if(this.§ "S§)
            {
               if(§7!#§ || §8!'§)
               {
                  _loc13_ = this.§,"4§.length;
                  param1.writeBytes(this.§,"4§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§,"4§.length - 6;
                  param1.writeBytes(this.§,"4§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§,"4§.length;
               param1.writeBytes(this.§,"4§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§[S§(param1))
         {
         }
         return this.§[S§ === this.§>!o§;
      }
      
      protected function §>!o§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §@!i§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§+!i§(param1);
            if(this.§="p§ + this.§?q§ > 0)
            {
               this.§[S§ = this.§1!Y§;
            }
            else
            {
               this.§[S§ = this.§@U§;
            }
            return true;
         }
         return false;
      }
      
      protected function §1!Y§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§="p§ + this.§?q§)
         {
            this.§8"$§(param1);
            this.§[S§ = this.§@U§;
            return true;
         }
         return false;
      }
      
      protected function §@U§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§["-§)
         {
            this.§[S§ = this.§>!o§;
            _loc2_ = false;
         }
         else if(this.§%!U§ == 0)
         {
            this.§[S§ = this.§>!o§;
         }
         else if(param1.bytesAvailable >= this.§%!U§)
         {
            this.§&!Z§(param1);
            this.§[S§ = this.§>!o§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §+!i§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§'",§ = _loc2_ >> 8;
         this.§3"y§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§2"h§ = param1.readUnsignedShort();
         this.§&"2§ = (_loc3_ & 1) !== 0;
         this.§["-§ = (_loc3_ & 8) !== 0;
         this.§`"`§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§2"B§ = "utf-8";
         }
         if(this.§2"h§ === § j§)
         {
            this.§["G§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§9"G§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§2"h§ === §;#"§)
         {
            this.§ "<§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§+%§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§^"`§ = param1.readUnsignedInt();
         this.§%!U§ = param1.readUnsignedInt();
         this.§7Q§ = param1.readUnsignedInt();
         this.§="p§ = param1.readUnsignedShort();
         this.§?q§ = param1.readUnsignedShort();
      }
      
      protected function §8"$§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§2"B§ == "utf-8")
         {
            this.§&m§ = param1.readUTFBytes(this.§="p§);
         }
         else
         {
            this.§&m§ = param1.readMultiByte(this.§="p§,this.§2"B§);
         }
         var _loc2_:uint = this.§?q§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§&m§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§%#7§ = param1.readUnsignedInt();
               this.§6J§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§`!m§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §&!Z§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§2"h§ === §;#"§ && !this.§&"2§)
         {
            if(§7!#§ || §8!'§)
            {
               param1.readBytes(this.§,"4§,0,this.§%!U§);
            }
            else
            {
               if(!this.§6J§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§,"4§.writeByte(120);
               _loc2_ = ~this.§ "<§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§,"4§.writeByte(_loc2_);
               param1.readBytes(this.§,"4§,2,this.§%!U§);
               this.§,"4§.position = this.§,"4§.length;
               this.§,"4§.writeUnsignedInt(this.§%#7§);
            }
            this.§ "S§ = true;
         }
         else
         {
            if(this.§2"h§ != §=!m§)
            {
               throw new Error("Compression method " + this.§2"h§ + " is not supported.");
            }
            param1.readBytes(this.§,"4§,0,this.§%!U§);
            this.§ "S§ = false;
         }
         this.§,"4§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§ "S§)
         {
            if(this.§,"4§.length > 0)
            {
               this.§,"4§.position = 0;
               this.§7Q§ = this.§,"4§.length;
               if(§8!'§)
               {
                  this.§,"4§.deflate();
                  this.§%!U§ = this.§,"4§.length;
               }
               else if(§7!#§)
               {
                  this.§,"4§.compress.apply(this.§,"4§,["deflate"]);
                  this.§%!U§ = this.§,"4§.length;
               }
               else
               {
                  this.§,"4§.compress();
                  this.§%!U§ = this.§,"4§.length - 6;
               }
               this.§,"4§.position = 0;
               this.§ "S§ = true;
            }
            else
            {
               this.§%!U§ = 0;
               this.§7Q§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§ "S§ && this.§,"4§.length > 0)
         {
            this.§,"4§.position = 0;
            if(§8!'§)
            {
               this.§,"4§.inflate();
            }
            else if(§7!#§)
            {
               this.§,"4§.uncompress.apply(this.§,"4§,["deflate"]);
            }
            else
            {
               this.§,"4§.uncompress();
            }
            this.§,"4§.position = 0;
            this.§ "S§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§&m§ + "\n  date:" + this.§+%§ + "\n  sizeCompressed:" + this.§%!U§ + "\n  sizeUncompressed:" + this.§7Q§ + "\n  versionHost:" + this.§'",§ + "\n  versionNumber:" + this.§3"y§ + "\n  compressionMethod:" + this.§2"h§ + "\n  encrypted:" + this.§&"2§ + "\n  hasDataDescriptor:" + this.§["-§ + "\n  hasCompressedPatchedData:" + this.§`"`§ + "\n  filenameEncoding:" + this.§2"B§ + "\n  crc32:" + this.§^"`§.toString(16) + "\n  adler32:" + this.§%#7§.toString(16);
      }
   }
}

package §+!G§
{
   import §6J§.§%X§;
   import flash.utils.*;
   
   public class §6!!§
   {
      
      public static const §[!E§:int = 0;
      
      public static const §#a§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §!m§:int = 6;
      
      public static const §->§:int = 7;
      
      public static const §,!8§:int = 8;
      
      public static const §]A§:int = 9;
      
      public static const §"B§:int = 10;
      
      protected static var §<2§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §;S§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §-n§:int = 0;
      
      protected var §`!%§:String = "2.0";
      
      protected var § 5§:int = 8;
      
      protected var §@U§:Boolean = false;
      
      protected var §,!<§:int = -1;
      
      protected var §[!7§:int = -1;
      
      protected var §%!&§:int = -1;
      
      protected var §3O§:Boolean = false;
      
      protected var §<&§:Boolean = false;
      
      protected var §=b§:Date;
      
      protected var §@L§:uint;
      
      protected var §7k§:Boolean = false;
      
      protected var §3%§:uint = 0;
      
      protected var §;n§:uint = 0;
      
      protected var §6]§:String = "";
      
      protected var §7!P§:String;
      
      protected var §+m§:Dictionary;
      
      protected var §#H§:String = "";
      
      protected var §6A§:ByteArray;
      
      var §9M§:uint;
      
      var §,+§:uint = 0;
      
      var §2T§:uint = 0;
      
      protected var §6!D§:Boolean = false;
      
      protected var §8h§:Function;
      
      public function §6!!§(param1:String = "utf-8")
      {
         this.§8h§ = this.§,B§;
         super();
         this.§7!P§ = param1;
         this.§+m§ = new Dictionary();
         this.§6A§ = new ByteArray();
         this.§6A§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §4!,§() : Date
      {
         return this.§=b§;
      }
      
      public function set §4!,§(param1:Date) : void
      {
         this.§=b§ = param1 != null ? param1 : new Date();
      }
      
      public function get §!!H§() : String
      {
         return this.§6]§;
      }
      
      public function set §!!H§(param1:String) : void
      {
         this.§6]§ = param1;
      }
      
      function get §0!H§() : Boolean
      {
         return this.§3O§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§6!D§)
         {
            this.uncompress();
         }
         return this.§6A§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§0e§(param1);
      }
      
      public function §0e§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§6A§,0,param1.length);
            this.§9M§ = §%X§.§%!1§(this.§6A§);
            this.§7k§ = false;
         }
         else
         {
            this.§6A§.length = 0;
            this.§6A§.position = 0;
            this.§6!D§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§2T§ = this.§,+§ = this.§6A§.length;
         }
      }
      
      public function get §3!'§() : String
      {
         return this.§`!%§;
      }
      
      public function get §4!%§() : uint
      {
         return this.§,+§;
      }
      
      public function get §`0§() : uint
      {
         return this.§2T§;
      }
      
      public function §77§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§6!D§)
         {
            this.uncompress();
         }
         this.§6A§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§6A§.readUTFBytes(this.§6A§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§6A§.readMultiByte(this.§6A§.bytesAvailable,param2);
         }
         this.§6A§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §[n§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§6A§.length = 0;
         this.§6A§.position = 0;
         this.§6!D§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§6A§.writeUTFBytes(param1);
            }
            else
            {
               this.§6A§.writeMultiByte(param1,param2);
            }
            this.§9M§ = §%X§.§%!1§(this.§6A§);
            this.§7k§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§2T§ = this.§,+§ = this.§6A§.length;
         }
      }
      
      public function §<K§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§!Y§.§+z§);
            param1.writeShort(this.§-n§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§!Y§.§!§);
         }
         param1.writeShort(this.§-n§ << 8 | 20);
         param1.writeShort(this.§7!P§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§6!D§ ? int(§,!8§) : int(§[!E§));
         var _loc5_:Date = this.§=b§ != null ? this.§=b§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§9M§);
         param1.writeUnsignedInt(this.§,+§);
         param1.writeUnsignedInt(this.§2T§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§7!P§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§6]§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§6]§,this.§7!P§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§+m§)
         {
            if((_loc15_ = this.§+m§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§7k§)
            {
               if(_loc16_ = this.§6!D§)
               {
                  this.uncompress();
               }
               this.§@L§ = §%X§.§+T§(this.§6A§,0,this.§6A§.length);
               this.§7k§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§@L§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§#H§.length > 0)
         {
            if(this.§7!P§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§#H§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§#H§,this.§7!P§);
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
         if(!param3 && this.§6A§.length > 0)
         {
            if(this.§6!D§)
            {
               if(§<2§ || §;S§)
               {
                  _loc13_ = this.§6A§.length;
                  param1.writeBytes(this.§6A§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§6A§.length - 6;
                  param1.writeBytes(this.§6A§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§6A§.length;
               param1.writeBytes(this.§6A§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§8h§(param1))
         {
         }
         return this.§8h§ === this.§=!K§;
      }
      
      protected function §=!K§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §,B§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§8Z§(param1);
            if(this.§3%§ + this.§;n§ > 0)
            {
               this.§8h§ = this.§!!"§;
            }
            else
            {
               this.§8h§ = this.§`!D§;
            }
            return true;
         }
         return false;
      }
      
      protected function §!!"§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§3%§ + this.§;n§)
         {
            this.§ !6§(param1);
            this.§8h§ = this.§`!D§;
            return true;
         }
         return false;
      }
      
      protected function §`!D§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§3O§)
         {
            this.§8h§ = this.§=!K§;
            _loc2_ = false;
         }
         else if(this.§,+§ == 0)
         {
            this.§8h§ = this.§=!K§;
         }
         else if(param1.bytesAvailable >= this.§,+§)
         {
            this.§3!M§(param1);
            this.§8h§ = this.§=!K§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §8Z§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§-n§ = _loc2_ >> 8;
         this.§`!%§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§ 5§ = param1.readUnsignedShort();
         this.§@U§ = (_loc3_ & 1) !== 0;
         this.§3O§ = (_loc3_ & 8) !== 0;
         this.§<&§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§7!P§ = "utf-8";
         }
         if(this.§ 5§ === §!m§)
         {
            this.§,!<§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§[!7§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§ 5§ === §,!8§)
         {
            this.§%!&§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§=b§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§9M§ = param1.readUnsignedInt();
         this.§,+§ = param1.readUnsignedInt();
         this.§2T§ = param1.readUnsignedInt();
         this.§3%§ = param1.readUnsignedShort();
         this.§;n§ = param1.readUnsignedShort();
      }
      
      protected function § !6§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§7!P§ == "utf-8")
         {
            this.§6]§ = param1.readUTFBytes(this.§3%§);
         }
         else
         {
            this.§6]§ = param1.readMultiByte(this.§3%§,this.§7!P§);
         }
         var _loc2_:uint = this.§;n§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§6]§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§@L§ = param1.readUnsignedInt();
               this.§7k§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§+m§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §3!M§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§ 5§ === §,!8§ && !this.§@U§)
         {
            if(§<2§ || §;S§)
            {
               param1.readBytes(this.§6A§,0,this.§,+§);
            }
            else
            {
               if(!this.§7k§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§6A§.writeByte(120);
               _loc2_ = ~this.§%!&§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§6A§.writeByte(_loc2_);
               param1.readBytes(this.§6A§,2,this.§,+§);
               this.§6A§.position = this.§6A§.length;
               this.§6A§.writeUnsignedInt(this.§@L§);
            }
            this.§6!D§ = true;
         }
         else
         {
            if(this.§ 5§ != §[!E§)
            {
               throw new Error("Compression method " + this.§ 5§ + " is not supported.");
            }
            param1.readBytes(this.§6A§,0,this.§,+§);
            this.§6!D§ = false;
         }
         this.§6A§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§6!D§)
         {
            if(this.§6A§.length > 0)
            {
               this.§6A§.position = 0;
               this.§2T§ = this.§6A§.length;
               if(§;S§)
               {
                  this.§6A§.deflate();
                  this.§,+§ = this.§6A§.length;
               }
               else if(§<2§)
               {
                  this.§6A§.compress.apply(this.§6A§,["deflate"]);
                  this.§,+§ = this.§6A§.length;
               }
               else
               {
                  this.§6A§.compress();
                  this.§,+§ = this.§6A§.length - 6;
               }
               this.§6A§.position = 0;
               this.§6!D§ = true;
            }
            else
            {
               this.§,+§ = 0;
               this.§2T§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§6!D§ && this.§6A§.length > 0)
         {
            this.§6A§.position = 0;
            if(§;S§)
            {
               this.§6A§.inflate();
            }
            else if(§<2§)
            {
               this.§6A§.uncompress.apply(this.§6A§,["deflate"]);
            }
            else
            {
               this.§6A§.uncompress();
            }
            this.§6A§.position = 0;
            this.§6!D§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§6]§ + "\n  date:" + this.§=b§ + "\n  sizeCompressed:" + this.§,+§ + "\n  sizeUncompressed:" + this.§2T§ + "\n  versionHost:" + this.§-n§ + "\n  versionNumber:" + this.§`!%§ + "\n  compressionMethod:" + this.§ 5§ + "\n  encrypted:" + this.§@U§ + "\n  hasDataDescriptor:" + this.§3O§ + "\n  hasCompressedPatchedData:" + this.§<&§ + "\n  filenameEncoding:" + this.§7!P§ + "\n  crc32:" + this.§9M§.toString(16) + "\n  adler32:" + this.§@L§.toString(16);
      }
   }
}

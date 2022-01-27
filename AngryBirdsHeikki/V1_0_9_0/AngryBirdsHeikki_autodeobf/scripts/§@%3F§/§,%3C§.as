package §@?§
{
   import §1k§.§=>§;
   import flash.utils.*;
   
   public class §,<§
   {
      
      public static const §+!b§:int = 0;
      
      public static const §?w§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §'!=§:int = 6;
      
      public static const §[N§:int = 7;
      
      public static const §%T§:int = 8;
      
      public static const §]!E§:int = 9;
      
      public static const § H§:int = 10;
      
      protected static var §;>§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §[!d§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §2h§:int = 0;
      
      protected var §@V§:String = "2.0";
      
      protected var §0_§:int = 8;
      
      protected var §+"§:Boolean = false;
      
      protected var §-!M§:int = -1;
      
      protected var §!y§:int = -1;
      
      protected var §-#§:int = -1;
      
      protected var § k§:Boolean = false;
      
      protected var §2!C§:Boolean = false;
      
      protected var §`!=§:Date;
      
      protected var §7v§:uint;
      
      protected var §"!K§:Boolean = false;
      
      protected var §?!-§:uint = 0;
      
      protected var §"z§:uint = 0;
      
      protected var §<!&§:String = "";
      
      protected var §+!^§:String;
      
      protected var §!u§:Dictionary;
      
      protected var §&!8§:String = "";
      
      protected var §^m§:ByteArray;
      
      var § c§:uint;
      
      var §3j§:uint = 0;
      
      var §4!P§:uint = 0;
      
      protected var §7e§:Boolean = false;
      
      protected var §@!d§:Function;
      
      public function §,<§(param1:String = "utf-8")
      {
         this.§@!d§ = this.§+<§;
         super();
         this.§+!^§ = param1;
         this.§!u§ = new Dictionary();
         this.§^m§ = new ByteArray();
         this.§^m§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §4!>§() : Date
      {
         return this.§`!=§;
      }
      
      public function set §4!>§(param1:Date) : void
      {
         this.§`!=§ = param1 != null ? param1 : new Date();
      }
      
      public function get §<H§() : String
      {
         return this.§<!&§;
      }
      
      public function set §<H§(param1:String) : void
      {
         this.§<!&§ = param1;
      }
      
      function get §3!d§() : Boolean
      {
         return this.§ k§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§7e§)
         {
            this.uncompress();
         }
         return this.§^m§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§?!c§(param1);
      }
      
      public function §?!c§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§^m§,0,param1.length);
            this.§ c§ = §=>§.§]!]§(this.§^m§);
            this.§"!K§ = false;
         }
         else
         {
            this.§^m§.length = 0;
            this.§^m§.position = 0;
            this.§7e§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§4!P§ = this.§3j§ = this.§^m§.length;
         }
      }
      
      public function get §#E§() : String
      {
         return this.§@V§;
      }
      
      public function get §%!5§() : uint
      {
         return this.§3j§;
      }
      
      public function get §`!§() : uint
      {
         return this.§4!P§;
      }
      
      public function §&v§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§7e§)
         {
            this.uncompress();
         }
         this.§^m§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§^m§.readUTFBytes(this.§^m§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§^m§.readMultiByte(this.§^m§.bytesAvailable,param2);
         }
         this.§^m§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §!z§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§^m§.length = 0;
         this.§^m§.position = 0;
         this.§7e§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§^m§.writeUTFBytes(param1);
            }
            else
            {
               this.§^m§.writeMultiByte(param1,param2);
            }
            this.§ c§ = §=>§.§]!]§(this.§^m§);
            this.§"!K§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§4!P§ = this.§3j§ = this.§^m§.length;
         }
      }
      
      public function §?p§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§;d§.§#H§);
            param1.writeShort(this.§2h§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§;d§.§9!&§);
         }
         param1.writeShort(this.§2h§ << 8 | 20);
         param1.writeShort(this.§+!^§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§7e§ ? int(§%T§) : int(§+!b§));
         var _loc5_:Date = this.§`!=§ != null ? this.§`!=§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§ c§);
         param1.writeUnsignedInt(this.§3j§);
         param1.writeUnsignedInt(this.§4!P§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§+!^§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§<!&§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§<!&§,this.§+!^§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§!u§)
         {
            if((_loc15_ = this.§!u§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§"!K§)
            {
               if(_loc16_ = this.§7e§)
               {
                  this.uncompress();
               }
               this.§7v§ = §=>§.§;K§(this.§^m§,0,this.§^m§.length);
               this.§"!K§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§7v§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§&!8§.length > 0)
         {
            if(this.§+!^§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§&!8§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§&!8§,this.§+!^§);
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
         if(!param3 && this.§^m§.length > 0)
         {
            if(this.§7e§)
            {
               if(§;>§ || §[!d§)
               {
                  _loc13_ = this.§^m§.length;
                  param1.writeBytes(this.§^m§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§^m§.length - 6;
                  param1.writeBytes(this.§^m§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§^m§.length;
               param1.writeBytes(this.§^m§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§@!d§(param1))
         {
         }
         return this.§@!d§ === this.§+!4§;
      }
      
      protected function §+!4§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §+<§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§7!?§(param1);
            if(this.§?!-§ + this.§"z§ > 0)
            {
               this.§@!d§ = this.§'l§;
            }
            else
            {
               this.§@!d§ = this.§&-§;
            }
            return true;
         }
         return false;
      }
      
      protected function §'l§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§?!-§ + this.§"z§)
         {
            this.§&!"§(param1);
            this.§@!d§ = this.§&-§;
            return true;
         }
         return false;
      }
      
      protected function §&-§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§ k§)
         {
            this.§@!d§ = this.§+!4§;
            _loc2_ = false;
         }
         else if(this.§3j§ == 0)
         {
            this.§@!d§ = this.§+!4§;
         }
         else if(param1.bytesAvailable >= this.§3j§)
         {
            this.§2,§(param1);
            this.§@!d§ = this.§+!4§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §7!?§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§2h§ = _loc2_ >> 8;
         this.§@V§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§0_§ = param1.readUnsignedShort();
         this.§+"§ = (_loc3_ & 1) !== 0;
         this.§ k§ = (_loc3_ & 8) !== 0;
         this.§2!C§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§+!^§ = "utf-8";
         }
         if(this.§0_§ === §'!=§)
         {
            this.§-!M§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§!y§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§0_§ === §%T§)
         {
            this.§-#§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§`!=§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§ c§ = param1.readUnsignedInt();
         this.§3j§ = param1.readUnsignedInt();
         this.§4!P§ = param1.readUnsignedInt();
         this.§?!-§ = param1.readUnsignedShort();
         this.§"z§ = param1.readUnsignedShort();
      }
      
      protected function §&!"§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§+!^§ == "utf-8")
         {
            this.§<!&§ = param1.readUTFBytes(this.§?!-§);
         }
         else
         {
            this.§<!&§ = param1.readMultiByte(this.§?!-§,this.§+!^§);
         }
         var _loc2_:uint = this.§"z§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§<!&§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§7v§ = param1.readUnsignedInt();
               this.§"!K§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§!u§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §2,§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§0_§ === §%T§ && !this.§+"§)
         {
            if(§;>§ || §[!d§)
            {
               param1.readBytes(this.§^m§,0,this.§3j§);
            }
            else
            {
               if(!this.§"!K§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§^m§.writeByte(120);
               _loc2_ = ~this.§-#§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§^m§.writeByte(_loc2_);
               param1.readBytes(this.§^m§,2,this.§3j§);
               this.§^m§.position = this.§^m§.length;
               this.§^m§.writeUnsignedInt(this.§7v§);
            }
            this.§7e§ = true;
         }
         else
         {
            if(this.§0_§ != §+!b§)
            {
               throw new Error("Compression method " + this.§0_§ + " is not supported.");
            }
            param1.readBytes(this.§^m§,0,this.§3j§);
            this.§7e§ = false;
         }
         this.§^m§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§7e§)
         {
            if(this.§^m§.length > 0)
            {
               this.§^m§.position = 0;
               this.§4!P§ = this.§^m§.length;
               if(§[!d§)
               {
                  this.§^m§.deflate();
                  this.§3j§ = this.§^m§.length;
               }
               else if(§;>§)
               {
                  this.§^m§.compress.apply(this.§^m§,["deflate"]);
                  this.§3j§ = this.§^m§.length;
               }
               else
               {
                  this.§^m§.compress();
                  this.§3j§ = this.§^m§.length - 6;
               }
               this.§^m§.position = 0;
               this.§7e§ = true;
            }
            else
            {
               this.§3j§ = 0;
               this.§4!P§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§7e§ && this.§^m§.length > 0)
         {
            this.§^m§.position = 0;
            if(§[!d§)
            {
               this.§^m§.inflate();
            }
            else if(§;>§)
            {
               this.§^m§.uncompress.apply(this.§^m§,["deflate"]);
            }
            else
            {
               this.§^m§.uncompress();
            }
            this.§^m§.position = 0;
            this.§7e§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§<!&§ + "\n  date:" + this.§`!=§ + "\n  sizeCompressed:" + this.§3j§ + "\n  sizeUncompressed:" + this.§4!P§ + "\n  versionHost:" + this.§2h§ + "\n  versionNumber:" + this.§@V§ + "\n  compressionMethod:" + this.§0_§ + "\n  encrypted:" + this.§+"§ + "\n  hasDataDescriptor:" + this.§ k§ + "\n  hasCompressedPatchedData:" + this.§2!C§ + "\n  filenameEncoding:" + this.§+!^§ + "\n  crc32:" + this.§ c§.toString(16) + "\n  adler32:" + this.§7v§.toString(16);
      }
   }
}

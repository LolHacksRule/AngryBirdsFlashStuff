package §9A§
{
   import §"!H§.§<!L§;
   import flash.utils.*;
   
   public class §>"§
   {
      
      public static const §6R§:int = 0;
      
      public static const §@+§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §<""§:int = 6;
      
      public static const §6!6§:int = 7;
      
      public static const §3!^§:int = 8;
      
      public static const §"""§:int = 9;
      
      public static const §%q§:int = 10;
      
      protected static var §[!d§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §`!;§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §]!c§:int = 0;
      
      protected var §3#§:String = "2.0";
      
      protected var §#"&§:int = 8;
      
      protected var §'g§:Boolean = false;
      
      protected var §7i§:int = -1;
      
      protected var §1![§:int = -1;
      
      protected var §-"B§:int = -1;
      
      protected var §%"5§:Boolean = false;
      
      protected var §@y§:Boolean = false;
      
      protected var §<!G§:Date;
      
      protected var §1#§:uint;
      
      protected var §4!C§:Boolean = false;
      
      protected var §;j§:uint = 0;
      
      protected var §7!h§:uint = 0;
      
      protected var §2!2§:String = "";
      
      protected var § !X§:String;
      
      protected var §<q§:Dictionary;
      
      protected var §4X§:String = "";
      
      protected var §%e§:ByteArray;
      
      var §7!$§:uint;
      
      var §`!d§:uint = 0;
      
      var §default§:uint = 0;
      
      protected var §%!T§:Boolean = false;
      
      protected var §;F§:Function;
      
      public function §>"§(param1:String = "utf-8")
      {
         this.§;F§ = this.§>!$§;
         super();
         this.§ !X§ = param1;
         this.§<q§ = new Dictionary();
         this.§%e§ = new ByteArray();
         this.§%e§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §;"3§() : Date
      {
         return this.§<!G§;
      }
      
      public function set §;"3§(param1:Date) : void
      {
         this.§<!G§ = param1 != null ? param1 : new Date();
      }
      
      public function get §>" §() : String
      {
         return this.§2!2§;
      }
      
      public function set §>" §(param1:String) : void
      {
         this.§2!2§ = param1;
      }
      
      function get §,,§() : Boolean
      {
         return this.§%"5§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§%!T§)
         {
            this.uncompress();
         }
         return this.§%e§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§!t§(param1);
      }
      
      public function §!t§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§%e§,0,param1.length);
            this.§7!$§ = §<!L§.§?_§(this.§%e§);
            this.§4!C§ = false;
         }
         else
         {
            this.§%e§.length = 0;
            this.§%e§.position = 0;
            this.§%!T§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§default§ = this.§`!d§ = this.§%e§.length;
         }
      }
      
      public function get §^o§() : String
      {
         return this.§3#§;
      }
      
      public function get §@!d§() : uint
      {
         return this.§`!d§;
      }
      
      public function get §6!&§() : uint
      {
         return this.§default§;
      }
      
      public function §,q§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§%!T§)
         {
            this.uncompress();
         }
         this.§%e§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§%e§.readUTFBytes(this.§%e§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§%e§.readMultiByte(this.§%e§.bytesAvailable,param2);
         }
         this.§%e§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §!!X§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§%e§.length = 0;
         this.§%e§.position = 0;
         this.§%!T§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§%e§.writeUTFBytes(param1);
            }
            else
            {
               this.§%e§.writeMultiByte(param1,param2);
            }
            this.§7!$§ = §<!L§.§?_§(this.§%e§);
            this.§4!C§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§default§ = this.§`!d§ = this.§%e§.length;
         }
      }
      
      public function §;!a§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§5Y§.§#8§);
            param1.writeShort(this.§]!c§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§5Y§.§0s§);
         }
         param1.writeShort(this.§]!c§ << 8 | 20);
         param1.writeShort(this.§ !X§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§%!T§ ? int(§3!^§) : int(§6R§));
         var _loc5_:Date = this.§<!G§ != null ? this.§<!G§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§7!$§);
         param1.writeUnsignedInt(this.§`!d§);
         param1.writeUnsignedInt(this.§default§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§ !X§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§2!2§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§2!2§,this.§ !X§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§<q§)
         {
            if((_loc15_ = this.§<q§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§4!C§)
            {
               if(_loc16_ = this.§%!T§)
               {
                  this.uncompress();
               }
               this.§1#§ = §<!L§.§"k§(this.§%e§,0,this.§%e§.length);
               this.§4!C§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§1#§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§4X§.length > 0)
         {
            if(this.§ !X§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§4X§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§4X§,this.§ !X§);
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
         if(!param3 && this.§%e§.length > 0)
         {
            if(this.§%!T§)
            {
               if(§[!d§ || §`!;§)
               {
                  _loc13_ = this.§%e§.length;
                  param1.writeBytes(this.§%e§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§%e§.length - 6;
                  param1.writeBytes(this.§%e§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§%e§.length;
               param1.writeBytes(this.§%e§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§;F§(param1))
         {
         }
         return this.§;F§ === this.§]!?§;
      }
      
      protected function §]!?§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §>!$§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§;",§(param1);
            if(this.§;j§ + this.§7!h§ > 0)
            {
               this.§;F§ = this.§`!Z§;
            }
            else
            {
               this.§;F§ = this.§<!t§;
            }
            return true;
         }
         return false;
      }
      
      protected function §`!Z§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§;j§ + this.§7!h§)
         {
            this.§>"1§(param1);
            this.§;F§ = this.§<!t§;
            return true;
         }
         return false;
      }
      
      protected function §<!t§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§%"5§)
         {
            this.§;F§ = this.§]!?§;
            _loc2_ = false;
         }
         else if(this.§`!d§ == 0)
         {
            this.§;F§ = this.§]!?§;
         }
         else if(param1.bytesAvailable >= this.§`!d§)
         {
            this.§!@§(param1);
            this.§;F§ = this.§]!?§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §;",§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§]!c§ = _loc2_ >> 8;
         this.§3#§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§#"&§ = param1.readUnsignedShort();
         this.§'g§ = (_loc3_ & 1) !== 0;
         this.§%"5§ = (_loc3_ & 8) !== 0;
         this.§@y§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§ !X§ = "utf-8";
         }
         if(this.§#"&§ === §<""§)
         {
            this.§7i§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§1![§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§#"&§ === §3!^§)
         {
            this.§-"B§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§<!G§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§7!$§ = param1.readUnsignedInt();
         this.§`!d§ = param1.readUnsignedInt();
         this.§default§ = param1.readUnsignedInt();
         this.§;j§ = param1.readUnsignedShort();
         this.§7!h§ = param1.readUnsignedShort();
      }
      
      protected function §>"1§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§ !X§ == "utf-8")
         {
            this.§2!2§ = param1.readUTFBytes(this.§;j§);
         }
         else
         {
            this.§2!2§ = param1.readMultiByte(this.§;j§,this.§ !X§);
         }
         var _loc2_:uint = this.§7!h§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§2!2§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§1#§ = param1.readUnsignedInt();
               this.§4!C§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§<q§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §!@§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§#"&§ === §3!^§ && !this.§'g§)
         {
            if(§[!d§ || §`!;§)
            {
               param1.readBytes(this.§%e§,0,this.§`!d§);
            }
            else
            {
               if(!this.§4!C§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§%e§.writeByte(120);
               _loc2_ = ~this.§-"B§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§%e§.writeByte(_loc2_);
               param1.readBytes(this.§%e§,2,this.§`!d§);
               this.§%e§.position = this.§%e§.length;
               this.§%e§.writeUnsignedInt(this.§1#§);
            }
            this.§%!T§ = true;
         }
         else
         {
            if(this.§#"&§ != §6R§)
            {
               throw new Error("Compression method " + this.§#"&§ + " is not supported.");
            }
            param1.readBytes(this.§%e§,0,this.§`!d§);
            this.§%!T§ = false;
         }
         this.§%e§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§%!T§)
         {
            if(this.§%e§.length > 0)
            {
               this.§%e§.position = 0;
               this.§default§ = this.§%e§.length;
               if(§`!;§)
               {
                  this.§%e§.deflate();
                  this.§`!d§ = this.§%e§.length;
               }
               else if(§[!d§)
               {
                  this.§%e§.compress.apply(this.§%e§,["deflate"]);
                  this.§`!d§ = this.§%e§.length;
               }
               else
               {
                  this.§%e§.compress();
                  this.§`!d§ = this.§%e§.length - 6;
               }
               this.§%e§.position = 0;
               this.§%!T§ = true;
            }
            else
            {
               this.§`!d§ = 0;
               this.§default§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§%!T§ && this.§%e§.length > 0)
         {
            this.§%e§.position = 0;
            if(§`!;§)
            {
               this.§%e§.inflate();
            }
            else if(§[!d§)
            {
               this.§%e§.uncompress.apply(this.§%e§,["deflate"]);
            }
            else
            {
               this.§%e§.uncompress();
            }
            this.§%e§.position = 0;
            this.§%!T§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§2!2§ + "\n  date:" + this.§<!G§ + "\n  sizeCompressed:" + this.§`!d§ + "\n  sizeUncompressed:" + this.§default§ + "\n  versionHost:" + this.§]!c§ + "\n  versionNumber:" + this.§3#§ + "\n  compressionMethod:" + this.§#"&§ + "\n  encrypted:" + this.§'g§ + "\n  hasDataDescriptor:" + this.§%"5§ + "\n  hasCompressedPatchedData:" + this.§@y§ + "\n  filenameEncoding:" + this.§ !X§ + "\n  crc32:" + this.§7!$§.toString(16) + "\n  adler32:" + this.§1#§.toString(16);
      }
   }
}

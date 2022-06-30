package §?!G§
{
   import §3T§.§?!B§;
   import flash.utils.*;
   
   public class §#<§
   {
      
      public static const §&c§:int = 0;
      
      public static const §^H§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §^#§:int = 6;
      
      public static const §1!Q§:int = 7;
      
      public static const § !4§:int = 8;
      
      public static const §9!B§:int = 9;
      
      public static const §[d§:int = 10;
      
      protected static var §#!N§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §%]§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §8!V§:int = 0;
      
      protected var §+!X§:String = "2.0";
      
      protected var §&_§:int = 8;
      
      protected var §%!1§:Boolean = false;
      
      protected var §,B§:int = -1;
      
      protected var §8!D§:int = -1;
      
      protected var §?w§:int = -1;
      
      protected var §#!B§:Boolean = false;
      
      protected var §'@§:Boolean = false;
      
      protected var §2!O§:Date;
      
      protected var §3y§:uint;
      
      protected var §`%§:Boolean = false;
      
      protected var §#V§:uint = 0;
      
      protected var § !S§:uint = 0;
      
      protected var §01§:String = "";
      
      protected var § do§:String;
      
      protected var §<[§:Dictionary;
      
      protected var §]!>§:String = "";
      
      protected var §6!N§:ByteArray;
      
      var §8!$§:uint;
      
      var §=X§:uint = 0;
      
      var §;Z§:uint = 0;
      
      protected var §9l§:Boolean = false;
      
      protected var §[V§:Function;
      
      public function §#<§(param1:String = "utf-8")
      {
         this.§[V§ = this.§9! §;
         super();
         this.§ do§ = param1;
         this.§<[§ = new Dictionary();
         this.§6!N§ = new ByteArray();
         this.§6!N§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §!m§() : Date
      {
         return this.§2!O§;
      }
      
      public function set §!m§(param1:Date) : void
      {
         this.§2!O§ = param1 != null ? param1 : new Date();
      }
      
      public function get §<l§() : String
      {
         return this.§01§;
      }
      
      public function set §<l§(param1:String) : void
      {
         this.§01§ = param1;
      }
      
      function get §^X§() : Boolean
      {
         return this.§#!B§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§9l§)
         {
            this.uncompress();
         }
         return this.§6!N§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§7o§(param1);
      }
      
      public function §7o§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§6!N§,0,param1.length);
            this.§8!$§ = §?!B§.§6!0§(this.§6!N§);
            this.§`%§ = false;
         }
         else
         {
            this.§6!N§.length = 0;
            this.§6!N§.position = 0;
            this.§9l§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§;Z§ = this.§=X§ = this.§6!N§.length;
         }
      }
      
      public function get §6c§() : String
      {
         return this.§+!X§;
      }
      
      public function get §67§() : uint
      {
         return this.§=X§;
      }
      
      public function get §>h§() : uint
      {
         return this.§;Z§;
      }
      
      public function §!!§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§9l§)
         {
            this.uncompress();
         }
         this.§6!N§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§6!N§.readUTFBytes(this.§6!N§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§6!N§.readMultiByte(this.§6!N§.bytesAvailable,param2);
         }
         this.§6!N§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §`i§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§6!N§.length = 0;
         this.§6!N§.position = 0;
         this.§9l§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§6!N§.writeUTFBytes(param1);
            }
            else
            {
               this.§6!N§.writeMultiByte(param1,param2);
            }
            this.§8!$§ = §?!B§.§6!0§(this.§6!N§);
            this.§`%§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§;Z§ = this.§=X§ = this.§6!N§.length;
         }
      }
      
      public function §7!X§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§?!^§.§8y§);
            param1.writeShort(this.§8!V§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§?!^§.§+L§);
         }
         param1.writeShort(this.§8!V§ << 8 | 20);
         param1.writeShort(this.§ do§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§9l§ ? int(§ !4§) : int(§&c§));
         var _loc5_:Date = this.§2!O§ != null ? this.§2!O§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§8!$§);
         param1.writeUnsignedInt(this.§=X§);
         param1.writeUnsignedInt(this.§;Z§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§ do§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§01§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§01§,this.§ do§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§<[§)
         {
            if((_loc15_ = this.§<[§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§`%§)
            {
               if(_loc16_ = this.§9l§)
               {
                  this.uncompress();
               }
               this.§3y§ = §?!B§.§>!H§(this.§6!N§,0,this.§6!N§.length);
               this.§`%§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§3y§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§]!>§.length > 0)
         {
            if(this.§ do§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§]!>§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§]!>§,this.§ do§);
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
         if(!param3 && this.§6!N§.length > 0)
         {
            if(this.§9l§)
            {
               if(§#!N§ || §%]§)
               {
                  _loc13_ = this.§6!N§.length;
                  param1.writeBytes(this.§6!N§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§6!N§.length - 6;
                  param1.writeBytes(this.§6!N§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§6!N§.length;
               param1.writeBytes(this.§6!N§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§[V§(param1))
         {
         }
         return this.§[V§ === this.§1!;§;
      }
      
      protected function §1!;§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §9! §(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§ !W§(param1);
            if(this.§#V§ + this.§ !S§ > 0)
            {
               this.§[V§ = this.§4K§;
            }
            else
            {
               this.§[V§ = this.§%g§;
            }
            return true;
         }
         return false;
      }
      
      protected function §4K§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§#V§ + this.§ !S§)
         {
            this.§]!=§(param1);
            this.§[V§ = this.§%g§;
            return true;
         }
         return false;
      }
      
      protected function §%g§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§#!B§)
         {
            this.§[V§ = this.§1!;§;
            _loc2_ = false;
         }
         else if(this.§=X§ == 0)
         {
            this.§[V§ = this.§1!;§;
         }
         else if(param1.bytesAvailable >= this.§=X§)
         {
            this.§;!G§(param1);
            this.§[V§ = this.§1!;§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function § !W§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§8!V§ = _loc2_ >> 8;
         this.§+!X§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§&_§ = param1.readUnsignedShort();
         this.§%!1§ = (_loc3_ & 1) !== 0;
         this.§#!B§ = (_loc3_ & 8) !== 0;
         this.§'@§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§ do§ = "utf-8";
         }
         if(this.§&_§ === §^#§)
         {
            this.§,B§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§8!D§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§&_§ === § !4§)
         {
            this.§?w§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§2!O§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§8!$§ = param1.readUnsignedInt();
         this.§=X§ = param1.readUnsignedInt();
         this.§;Z§ = param1.readUnsignedInt();
         this.§#V§ = param1.readUnsignedShort();
         this.§ !S§ = param1.readUnsignedShort();
      }
      
      protected function §]!=§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§ do§ == "utf-8")
         {
            this.§01§ = param1.readUTFBytes(this.§#V§);
         }
         else
         {
            this.§01§ = param1.readMultiByte(this.§#V§,this.§ do§);
         }
         var _loc2_:uint = this.§ !S§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§01§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§3y§ = param1.readUnsignedInt();
               this.§`%§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§<[§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §;!G§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§&_§ === § !4§ && !this.§%!1§)
         {
            if(§#!N§ || §%]§)
            {
               param1.readBytes(this.§6!N§,0,this.§=X§);
            }
            else
            {
               if(!this.§`%§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§6!N§.writeByte(120);
               _loc2_ = ~this.§?w§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§6!N§.writeByte(_loc2_);
               param1.readBytes(this.§6!N§,2,this.§=X§);
               this.§6!N§.position = this.§6!N§.length;
               this.§6!N§.writeUnsignedInt(this.§3y§);
            }
            this.§9l§ = true;
         }
         else
         {
            if(this.§&_§ != §&c§)
            {
               throw new Error("Compression method " + this.§&_§ + " is not supported.");
            }
            param1.readBytes(this.§6!N§,0,this.§=X§);
            this.§9l§ = false;
         }
         this.§6!N§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§9l§)
         {
            if(this.§6!N§.length > 0)
            {
               this.§6!N§.position = 0;
               this.§;Z§ = this.§6!N§.length;
               if(§%]§)
               {
                  this.§6!N§.deflate();
                  this.§=X§ = this.§6!N§.length;
               }
               else if(§#!N§)
               {
                  this.§6!N§.compress.apply(this.§6!N§,["deflate"]);
                  this.§=X§ = this.§6!N§.length;
               }
               else
               {
                  this.§6!N§.compress();
                  this.§=X§ = this.§6!N§.length - 6;
               }
               this.§6!N§.position = 0;
               this.§9l§ = true;
            }
            else
            {
               this.§=X§ = 0;
               this.§;Z§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§9l§ && this.§6!N§.length > 0)
         {
            this.§6!N§.position = 0;
            if(§%]§)
            {
               this.§6!N§.inflate();
            }
            else if(§#!N§)
            {
               this.§6!N§.uncompress.apply(this.§6!N§,["deflate"]);
            }
            else
            {
               this.§6!N§.uncompress();
            }
            this.§6!N§.position = 0;
            this.§9l§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§01§ + "\n  date:" + this.§2!O§ + "\n  sizeCompressed:" + this.§=X§ + "\n  sizeUncompressed:" + this.§;Z§ + "\n  versionHost:" + this.§8!V§ + "\n  versionNumber:" + this.§+!X§ + "\n  compressionMethod:" + this.§&_§ + "\n  encrypted:" + this.§%!1§ + "\n  hasDataDescriptor:" + this.§#!B§ + "\n  hasCompressedPatchedData:" + this.§'@§ + "\n  filenameEncoding:" + this.§ do§ + "\n  crc32:" + this.§8!$§.toString(16) + "\n  adler32:" + this.§3y§.toString(16);
      }
   }
}

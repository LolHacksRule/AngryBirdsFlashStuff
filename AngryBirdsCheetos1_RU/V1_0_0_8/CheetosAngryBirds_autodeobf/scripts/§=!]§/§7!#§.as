package §=!]§
{
   import §<D§.§89§;
   import flash.utils.*;
   
   public class §7!#§
   {
      
      public static const §`Q§:int = 0;
      
      public static const §0Z§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §;!'§:int = 6;
      
      public static const §#0§:int = 7;
      
      public static const §=>§:int = 8;
      
      public static const §#!5§:int = 9;
      
      public static const §1`§:int = 10;
      
      protected static var §,!!§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §-]§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §[x§:int = 0;
      
      protected var §9L§:String = "2.0";
      
      protected var §#[§:int = 8;
      
      protected var §-i§:Boolean = false;
      
      protected var §?d§:int = -1;
      
      protected var §@0§:int = -1;
      
      protected var §9#§:int = -1;
      
      protected var §1n§:Boolean = false;
      
      protected var §?q§:Boolean = false;
      
      protected var §!l§:Date;
      
      protected var §[Y§:uint;
      
      protected var §=t§:Boolean = false;
      
      protected var §2!O§:uint = 0;
      
      protected var §=D§:uint = 0;
      
      protected var §#!K§:String = "";
      
      protected var §9!B§:String;
      
      protected var §0T§:Dictionary;
      
      protected var §]!Q§:String = "";
      
      protected var §3!@§:ByteArray;
      
      var §3Q§:uint;
      
      var §!!+§:uint = 0;
      
      var §7!!§:uint = 0;
      
      protected var §+!=§:Boolean = false;
      
      protected var §<d§:Function;
      
      public function §7!#§(param1:String = "utf-8")
      {
         this.§<d§ = this.§@R§;
         super();
         this.§9!B§ = param1;
         this.§0T§ = new Dictionary();
         this.§3!@§ = new ByteArray();
         this.§3!@§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §`U§() : Date
      {
         return this.§!l§;
      }
      
      public function set §`U§(param1:Date) : void
      {
         this.§!l§ = param1 != null ? param1 : new Date();
      }
      
      public function get § n§() : String
      {
         return this.§#!K§;
      }
      
      public function set § n§(param1:String) : void
      {
         this.§#!K§ = param1;
      }
      
      function get §^v§() : Boolean
      {
         return this.§1n§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§+!=§)
         {
            this.uncompress();
         }
         return this.§3!@§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§?@§(param1);
      }
      
      public function §?@§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§3!@§,0,param1.length);
            this.§3Q§ = §89§.§#G§(this.§3!@§);
            this.§=t§ = false;
         }
         else
         {
            this.§3!@§.length = 0;
            this.§3!@§.position = 0;
            this.§+!=§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§7!!§ = this.§!!+§ = this.§3!@§.length;
         }
      }
      
      public function get §>![§() : String
      {
         return this.§9L§;
      }
      
      public function get §>]§() : uint
      {
         return this.§!!+§;
      }
      
      public function get §31§() : uint
      {
         return this.§7!!§;
      }
      
      public function §?D§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§+!=§)
         {
            this.uncompress();
         }
         this.§3!@§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§3!@§.readUTFBytes(this.§3!@§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§3!@§.readMultiByte(this.§3!@§.bytesAvailable,param2);
         }
         this.§3!@§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function § 5§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§3!@§.length = 0;
         this.§3!@§.position = 0;
         this.§+!=§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§3!@§.writeUTFBytes(param1);
            }
            else
            {
               this.§3!@§.writeMultiByte(param1,param2);
            }
            this.§3Q§ = §89§.§#G§(this.§3!@§);
            this.§=t§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§7!!§ = this.§!!+§ = this.§3!@§.length;
         }
      }
      
      public function §7!+§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§8!B§.§9!C§);
            param1.writeShort(this.§[x§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§8!B§.§^!C§);
         }
         param1.writeShort(this.§[x§ << 8 | 20);
         param1.writeShort(this.§9!B§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§+!=§ ? int(§=>§) : int(§`Q§));
         var _loc5_:Date = this.§!l§ != null ? this.§!l§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§3Q§);
         param1.writeUnsignedInt(this.§!!+§);
         param1.writeUnsignedInt(this.§7!!§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§9!B§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§#!K§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§#!K§,this.§9!B§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§0T§)
         {
            if((_loc15_ = this.§0T§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§=t§)
            {
               if(_loc16_ = this.§+!=§)
               {
                  this.uncompress();
               }
               this.§[Y§ = §89§.§@!§(this.§3!@§,0,this.§3!@§.length);
               this.§=t§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§[Y§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§]!Q§.length > 0)
         {
            if(this.§9!B§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§]!Q§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§]!Q§,this.§9!B§);
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
         if(!param3 && this.§3!@§.length > 0)
         {
            if(this.§+!=§)
            {
               if(§,!!§ || §-]§)
               {
                  _loc13_ = this.§3!@§.length;
                  param1.writeBytes(this.§3!@§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§3!@§.length - 6;
                  param1.writeBytes(this.§3!@§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§3!@§.length;
               param1.writeBytes(this.§3!@§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§<d§(param1))
         {
         }
         return this.§<d§ === this.§&!Y§;
      }
      
      protected function §&!Y§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §@R§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§=[§(param1);
            if(this.§2!O§ + this.§=D§ > 0)
            {
               this.§<d§ = this.§for§;
            }
            else
            {
               this.§<d§ = this.§-E§;
            }
            return true;
         }
         return false;
      }
      
      protected function §for§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§2!O§ + this.§=D§)
         {
            this.§=!D§(param1);
            this.§<d§ = this.§-E§;
            return true;
         }
         return false;
      }
      
      protected function §-E§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§1n§)
         {
            this.§<d§ = this.§&!Y§;
            _loc2_ = false;
         }
         else if(this.§!!+§ == 0)
         {
            this.§<d§ = this.§&!Y§;
         }
         else if(param1.bytesAvailable >= this.§!!+§)
         {
            this.§>V§(param1);
            this.§<d§ = this.§&!Y§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §=[§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§[x§ = _loc2_ >> 8;
         this.§9L§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§#[§ = param1.readUnsignedShort();
         this.§-i§ = (_loc3_ & 1) !== 0;
         this.§1n§ = (_loc3_ & 8) !== 0;
         this.§?q§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§9!B§ = "utf-8";
         }
         if(this.§#[§ === §;!'§)
         {
            this.§?d§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§@0§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§#[§ === §=>§)
         {
            this.§9#§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§!l§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§3Q§ = param1.readUnsignedInt();
         this.§!!+§ = param1.readUnsignedInt();
         this.§7!!§ = param1.readUnsignedInt();
         this.§2!O§ = param1.readUnsignedShort();
         this.§=D§ = param1.readUnsignedShort();
      }
      
      protected function §=!D§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§9!B§ == "utf-8")
         {
            this.§#!K§ = param1.readUTFBytes(this.§2!O§);
         }
         else
         {
            this.§#!K§ = param1.readMultiByte(this.§2!O§,this.§9!B§);
         }
         var _loc2_:uint = this.§=D§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§#!K§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§[Y§ = param1.readUnsignedInt();
               this.§=t§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§0T§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §>V§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§#[§ === §=>§ && !this.§-i§)
         {
            if(§,!!§ || §-]§)
            {
               param1.readBytes(this.§3!@§,0,this.§!!+§);
            }
            else
            {
               if(!this.§=t§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§3!@§.writeByte(120);
               _loc2_ = ~this.§9#§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§3!@§.writeByte(_loc2_);
               param1.readBytes(this.§3!@§,2,this.§!!+§);
               this.§3!@§.position = this.§3!@§.length;
               this.§3!@§.writeUnsignedInt(this.§[Y§);
            }
            this.§+!=§ = true;
         }
         else
         {
            if(this.§#[§ != §`Q§)
            {
               throw new Error("Compression method " + this.§#[§ + " is not supported.");
            }
            param1.readBytes(this.§3!@§,0,this.§!!+§);
            this.§+!=§ = false;
         }
         this.§3!@§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§+!=§)
         {
            if(this.§3!@§.length > 0)
            {
               this.§3!@§.position = 0;
               this.§7!!§ = this.§3!@§.length;
               if(§-]§)
               {
                  this.§3!@§.deflate();
                  this.§!!+§ = this.§3!@§.length;
               }
               else if(§,!!§)
               {
                  this.§3!@§.compress.apply(this.§3!@§,["deflate"]);
                  this.§!!+§ = this.§3!@§.length;
               }
               else
               {
                  this.§3!@§.compress();
                  this.§!!+§ = this.§3!@§.length - 6;
               }
               this.§3!@§.position = 0;
               this.§+!=§ = true;
            }
            else
            {
               this.§!!+§ = 0;
               this.§7!!§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§+!=§ && this.§3!@§.length > 0)
         {
            this.§3!@§.position = 0;
            if(§-]§)
            {
               this.§3!@§.inflate();
            }
            else if(§,!!§)
            {
               this.§3!@§.uncompress.apply(this.§3!@§,["deflate"]);
            }
            else
            {
               this.§3!@§.uncompress();
            }
            this.§3!@§.position = 0;
            this.§+!=§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§#!K§ + "\n  date:" + this.§!l§ + "\n  sizeCompressed:" + this.§!!+§ + "\n  sizeUncompressed:" + this.§7!!§ + "\n  versionHost:" + this.§[x§ + "\n  versionNumber:" + this.§9L§ + "\n  compressionMethod:" + this.§#[§ + "\n  encrypted:" + this.§-i§ + "\n  hasDataDescriptor:" + this.§1n§ + "\n  hasCompressedPatchedData:" + this.§?q§ + "\n  filenameEncoding:" + this.§9!B§ + "\n  crc32:" + this.§3Q§.toString(16) + "\n  adler32:" + this.§[Y§.toString(16);
      }
   }
}

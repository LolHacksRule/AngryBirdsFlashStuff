package §6!=§
{
   import §>U§.§5l§;
   import flash.utils.*;
   
   public class §implements§
   {
      
      public static const §8G§:int = 0;
      
      public static const §&Q§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §@[§:int = 6;
      
      public static const §=E§:int = 7;
      
      public static const §-!c§:int = 8;
      
      public static const §"-§:int = 9;
      
      public static const §4!T§:int = 10;
      
      protected static var §#'§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §32§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §'&§:int = 0;
      
      protected var §>!D§:String = "2.0";
      
      protected var §[L§:int = 8;
      
      protected var §>a§:Boolean = false;
      
      protected var § @§:int = -1;
      
      protected var §9C§:int = -1;
      
      protected var §7!K§:int = -1;
      
      protected var §?!3§:Boolean = false;
      
      protected var §+v§:Boolean = false;
      
      protected var §,v§:Date;
      
      protected var §;!;§:uint;
      
      protected var §2!G§:Boolean = false;
      
      protected var §default§:uint = 0;
      
      protected var §1C§:uint = 0;
      
      protected var §!O§:String = "";
      
      protected var §[!0§:String;
      
      protected var §5x§:Dictionary;
      
      protected var §3[§:String = "";
      
      protected var §+r§:ByteArray;
      
      var §@!2§:uint;
      
      var §5w§:uint = 0;
      
      var §68§:uint = 0;
      
      protected var §'b§:Boolean = false;
      
      protected var §@g§:Function;
      
      public function §implements§(param1:String = "utf-8")
      {
         this.§@g§ = this.§!i§;
         super();
         this.§[!0§ = param1;
         this.§5x§ = new Dictionary();
         this.§+r§ = new ByteArray();
         this.§+r§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §;!1§() : Date
      {
         return this.§,v§;
      }
      
      public function set §;!1§(param1:Date) : void
      {
         this.§,v§ = param1 != null ? param1 : new Date();
      }
      
      public function get §,i§() : String
      {
         return this.§!O§;
      }
      
      public function set §,i§(param1:String) : void
      {
         this.§!O§ = param1;
      }
      
      function get §false§() : Boolean
      {
         return this.§?!3§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§'b§)
         {
            this.uncompress();
         }
         return this.§+r§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§0!S§(param1);
      }
      
      public function §0!S§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§+r§,0,param1.length);
            this.§@!2§ = §5l§.§3!%§(this.§+r§);
            this.§2!G§ = false;
         }
         else
         {
            this.§+r§.length = 0;
            this.§+r§.position = 0;
            this.§'b§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§68§ = this.§5w§ = this.§+r§.length;
         }
      }
      
      public function get §"!M§() : String
      {
         return this.§>!D§;
      }
      
      public function get §`x§() : uint
      {
         return this.§5w§;
      }
      
      public function get §<5§() : uint
      {
         return this.§68§;
      }
      
      public function §%4§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§'b§)
         {
            this.uncompress();
         }
         this.§+r§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§+r§.readUTFBytes(this.§+r§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§+r§.readMultiByte(this.§+r§.bytesAvailable,param2);
         }
         this.§+r§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §#!R§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§+r§.length = 0;
         this.§+r§.position = 0;
         this.§'b§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§+r§.writeUTFBytes(param1);
            }
            else
            {
               this.§+r§.writeMultiByte(param1,param2);
            }
            this.§@!2§ = §5l§.§3!%§(this.§+r§);
            this.§2!G§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§68§ = this.§5w§ = this.§+r§.length;
         }
      }
      
      public function §7C§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§";§.§#c§);
            param1.writeShort(this.§'&§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§";§.§67§);
         }
         param1.writeShort(this.§'&§ << 8 | 20);
         param1.writeShort(this.§[!0§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§'b§ ? int(§-!c§) : int(§8G§));
         var _loc5_:Date = this.§,v§ != null ? this.§,v§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§@!2§);
         param1.writeUnsignedInt(this.§5w§);
         param1.writeUnsignedInt(this.§68§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§[!0§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§!O§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§!O§,this.§[!0§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§5x§)
         {
            if((_loc15_ = this.§5x§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§2!G§)
            {
               if(_loc16_ = this.§'b§)
               {
                  this.uncompress();
               }
               this.§;!;§ = §5l§.§2z§(this.§+r§,0,this.§+r§.length);
               this.§2!G§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§;!;§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§3[§.length > 0)
         {
            if(this.§[!0§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§3[§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§3[§,this.§[!0§);
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
         if(!param3 && this.§+r§.length > 0)
         {
            if(this.§'b§)
            {
               if(§#'§ || §32§)
               {
                  _loc13_ = this.§+r§.length;
                  param1.writeBytes(this.§+r§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§+r§.length - 6;
                  param1.writeBytes(this.§+r§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§+r§.length;
               param1.writeBytes(this.§+r§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§@g§(param1))
         {
         }
         return this.§@g§ === this.§7O§;
      }
      
      protected function §7O§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §!i§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§9d§(param1);
            if(this.§default§ + this.§1C§ > 0)
            {
               this.§@g§ = this.§5[§;
            }
            else
            {
               this.§@g§ = this.§function§;
            }
            return true;
         }
         return false;
      }
      
      protected function §5[§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§default§ + this.§1C§)
         {
            this.§7W§(param1);
            this.§@g§ = this.§function§;
            return true;
         }
         return false;
      }
      
      protected function §function§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§?!3§)
         {
            this.§@g§ = this.§7O§;
            _loc2_ = false;
         }
         else if(this.§5w§ == 0)
         {
            this.§@g§ = this.§7O§;
         }
         else if(param1.bytesAvailable >= this.§5w§)
         {
            this.§;Q§(param1);
            this.§@g§ = this.§7O§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §9d§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§'&§ = _loc2_ >> 8;
         this.§>!D§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§[L§ = param1.readUnsignedShort();
         this.§>a§ = (_loc3_ & 1) !== 0;
         this.§?!3§ = (_loc3_ & 8) !== 0;
         this.§+v§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§[!0§ = "utf-8";
         }
         if(this.§[L§ === §@[§)
         {
            this.§ @§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§9C§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§[L§ === §-!c§)
         {
            this.§7!K§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§,v§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§@!2§ = param1.readUnsignedInt();
         this.§5w§ = param1.readUnsignedInt();
         this.§68§ = param1.readUnsignedInt();
         this.§default§ = param1.readUnsignedShort();
         this.§1C§ = param1.readUnsignedShort();
      }
      
      protected function §7W§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§[!0§ == "utf-8")
         {
            this.§!O§ = param1.readUTFBytes(this.§default§);
         }
         else
         {
            this.§!O§ = param1.readMultiByte(this.§default§,this.§[!0§);
         }
         var _loc2_:uint = this.§1C§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§!O§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§;!;§ = param1.readUnsignedInt();
               this.§2!G§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§5x§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §;Q§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§[L§ === §-!c§ && !this.§>a§)
         {
            if(§#'§ || §32§)
            {
               param1.readBytes(this.§+r§,0,this.§5w§);
            }
            else
            {
               if(!this.§2!G§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§+r§.writeByte(120);
               _loc2_ = ~this.§7!K§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§+r§.writeByte(_loc2_);
               param1.readBytes(this.§+r§,2,this.§5w§);
               this.§+r§.position = this.§+r§.length;
               this.§+r§.writeUnsignedInt(this.§;!;§);
            }
            this.§'b§ = true;
         }
         else
         {
            if(this.§[L§ != §8G§)
            {
               throw new Error("Compression method " + this.§[L§ + " is not supported.");
            }
            param1.readBytes(this.§+r§,0,this.§5w§);
            this.§'b§ = false;
         }
         this.§+r§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§'b§)
         {
            if(this.§+r§.length > 0)
            {
               this.§+r§.position = 0;
               this.§68§ = this.§+r§.length;
               if(§32§)
               {
                  this.§+r§.deflate();
                  this.§5w§ = this.§+r§.length;
               }
               else if(§#'§)
               {
                  this.§+r§.compress.apply(this.§+r§,["deflate"]);
                  this.§5w§ = this.§+r§.length;
               }
               else
               {
                  this.§+r§.compress();
                  this.§5w§ = this.§+r§.length - 6;
               }
               this.§+r§.position = 0;
               this.§'b§ = true;
            }
            else
            {
               this.§5w§ = 0;
               this.§68§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§'b§ && this.§+r§.length > 0)
         {
            this.§+r§.position = 0;
            if(§32§)
            {
               this.§+r§.inflate();
            }
            else if(§#'§)
            {
               this.§+r§.uncompress.apply(this.§+r§,["deflate"]);
            }
            else
            {
               this.§+r§.uncompress();
            }
            this.§+r§.position = 0;
            this.§'b§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§!O§ + "\n  date:" + this.§,v§ + "\n  sizeCompressed:" + this.§5w§ + "\n  sizeUncompressed:" + this.§68§ + "\n  versionHost:" + this.§'&§ + "\n  versionNumber:" + this.§>!D§ + "\n  compressionMethod:" + this.§[L§ + "\n  encrypted:" + this.§>a§ + "\n  hasDataDescriptor:" + this.§?!3§ + "\n  hasCompressedPatchedData:" + this.§+v§ + "\n  filenameEncoding:" + this.§[!0§ + "\n  crc32:" + this.§@!2§.toString(16) + "\n  adler32:" + this.§;!;§.toString(16);
      }
   }
}

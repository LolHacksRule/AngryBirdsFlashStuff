package §2%§
{
   import §?0§.§ null§;
   import flash.utils.*;
   
   public class §&i§
   {
      
      public static const §-!'§:int = 0;
      
      public static const §&c§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §5!K§:int = 6;
      
      public static const §?!C§:int = 7;
      
      public static const §'§:int = 8;
      
      public static const §1Y§:int = 9;
      
      public static const §@u§:int = 10;
      
      protected static var §'^§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §1!7§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §=I§:int = 0;
      
      protected var §"!G§:String = "2.0";
      
      protected var §?"§:int = 8;
      
      protected var §'e§:Boolean = false;
      
      protected var §?x§:int = -1;
      
      protected var §2! §:int = -1;
      
      protected var §&O§:int = -1;
      
      protected var §!a§:Boolean = false;
      
      protected var §+S§:Boolean = false;
      
      protected var §=!D§:Date;
      
      protected var §8!;§:uint;
      
      protected var §6!A§:Boolean = false;
      
      protected var §>O§:uint = 0;
      
      protected var §]T§:uint = 0;
      
      protected var §"[§:String = "";
      
      protected var §<X§:String;
      
      protected var §5s§:Dictionary;
      
      protected var §9O§:String = "";
      
      protected var §<m§:ByteArray;
      
      var §[v§:uint;
      
      var §2y§:uint = 0;
      
      var §"K§:uint = 0;
      
      protected var native:Boolean = false;
      
      protected var § &§:Function;
      
      public function §&i§(param1:String = "utf-8")
      {
         this.§ &§ = this.§11§;
         super();
         this.§<X§ = param1;
         this.§5s§ = new Dictionary();
         this.§<m§ = new ByteArray();
         this.§<m§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §'r§() : Date
      {
         return this.§=!D§;
      }
      
      public function set §'r§(param1:Date) : void
      {
         this.§=!D§ = param1 != null ? param1 : new Date();
      }
      
      public function get §1p§() : String
      {
         return this.§"[§;
      }
      
      public function set §1p§(param1:String) : void
      {
         this.§"[§ = param1;
      }
      
      function get §2I§() : Boolean
      {
         return this.§!a§;
      }
      
      public function get content() : ByteArray
      {
         if(this.native)
         {
            this.uncompress();
         }
         return this.§<m§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§9!L§(param1);
      }
      
      public function §9!L§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§<m§,0,param1.length);
            this.§[v§ = § null§.§>W§(this.§<m§);
            this.§6!A§ = false;
         }
         else
         {
            this.§<m§.length = 0;
            this.§<m§.position = 0;
            this.native = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§"K§ = this.§2y§ = this.§<m§.length;
         }
      }
      
      public function get §!S§() : String
      {
         return this.§"!G§;
      }
      
      public function get §?!L§() : uint
      {
         return this.§2y§;
      }
      
      public function get §14§() : uint
      {
         return this.§"K§;
      }
      
      public function §<!J§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.native)
         {
            this.uncompress();
         }
         this.§<m§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§<m§.readUTFBytes(this.§<m§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§<m§.readMultiByte(this.§<m§.bytesAvailable,param2);
         }
         this.§<m§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §%;§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§<m§.length = 0;
         this.§<m§.position = 0;
         this.native = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§<m§.writeUTFBytes(param1);
            }
            else
            {
               this.§<m§.writeMultiByte(param1,param2);
            }
            this.§[v§ = § null§.§>W§(this.§<m§);
            this.§6!A§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§"K§ = this.§2y§ = this.§<m§.length;
         }
      }
      
      public function §?M§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§&!7§.§2Y§);
            param1.writeShort(this.§=I§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§&!7§.§!!O§);
         }
         param1.writeShort(this.§=I§ << 8 | 20);
         param1.writeShort(this.§<X§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.native ? int(§'§) : int(§-!'§));
         var _loc5_:Date = this.§=!D§ != null ? this.§=!D§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§[v§);
         param1.writeUnsignedInt(this.§2y§);
         param1.writeUnsignedInt(this.§"K§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§<X§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§"[§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§"[§,this.§<X§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§5s§)
         {
            if((_loc15_ = this.§5s§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§6!A§)
            {
               if(_loc16_ = this.native)
               {
                  this.uncompress();
               }
               this.§8!;§ = § null§.§[E§(this.§<m§,0,this.§<m§.length);
               this.§6!A§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§8!;§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§9O§.length > 0)
         {
            if(this.§<X§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§9O§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§9O§,this.§<X§);
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
         if(!param3 && this.§<m§.length > 0)
         {
            if(this.native)
            {
               if(§'^§ || §1!7§)
               {
                  _loc13_ = this.§<m§.length;
                  param1.writeBytes(this.§<m§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§<m§.length - 6;
                  param1.writeBytes(this.§<m§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§<m§.length;
               param1.writeBytes(this.§<m§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§ &§(param1))
         {
         }
         return this.§ &§ === this.§+-§;
      }
      
      protected function §+-§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §11§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§%§(param1);
            if(this.§>O§ + this.§]T§ > 0)
            {
               this.§ &§ = this.§ W§;
            }
            else
            {
               this.§ &§ = this.§#!M§;
            }
            return true;
         }
         return false;
      }
      
      protected function § W§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§>O§ + this.§]T§)
         {
            this.§0!E§(param1);
            this.§ &§ = this.§#!M§;
            return true;
         }
         return false;
      }
      
      protected function §#!M§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§!a§)
         {
            this.§ &§ = this.§+-§;
            _loc2_ = false;
         }
         else if(this.§2y§ == 0)
         {
            this.§ &§ = this.§+-§;
         }
         else if(param1.bytesAvailable >= this.§2y§)
         {
            this.§6]§(param1);
            this.§ &§ = this.§+-§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §%§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§=I§ = _loc2_ >> 8;
         this.§"!G§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§?"§ = param1.readUnsignedShort();
         this.§'e§ = (_loc3_ & 1) !== 0;
         this.§!a§ = (_loc3_ & 8) !== 0;
         this.§+S§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§<X§ = "utf-8";
         }
         if(this.§?"§ === §5!K§)
         {
            this.§?x§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§2! § = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§?"§ === §'§)
         {
            this.§&O§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§=!D§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§[v§ = param1.readUnsignedInt();
         this.§2y§ = param1.readUnsignedInt();
         this.§"K§ = param1.readUnsignedInt();
         this.§>O§ = param1.readUnsignedShort();
         this.§]T§ = param1.readUnsignedShort();
      }
      
      protected function §0!E§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§<X§ == "utf-8")
         {
            this.§"[§ = param1.readUTFBytes(this.§>O§);
         }
         else
         {
            this.§"[§ = param1.readMultiByte(this.§>O§,this.§<X§);
         }
         var _loc2_:uint = this.§]T§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§"[§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§8!;§ = param1.readUnsignedInt();
               this.§6!A§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§5s§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §6]§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§?"§ === §'§ && !this.§'e§)
         {
            if(§'^§ || §1!7§)
            {
               param1.readBytes(this.§<m§,0,this.§2y§);
            }
            else
            {
               if(!this.§6!A§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§<m§.writeByte(120);
               _loc2_ = ~this.§&O§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§<m§.writeByte(_loc2_);
               param1.readBytes(this.§<m§,2,this.§2y§);
               this.§<m§.position = this.§<m§.length;
               this.§<m§.writeUnsignedInt(this.§8!;§);
            }
            this.native = true;
         }
         else
         {
            if(this.§?"§ != §-!'§)
            {
               throw new Error("Compression method " + this.§?"§ + " is not supported.");
            }
            param1.readBytes(this.§<m§,0,this.§2y§);
            this.native = false;
         }
         this.§<m§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.native)
         {
            if(this.§<m§.length > 0)
            {
               this.§<m§.position = 0;
               this.§"K§ = this.§<m§.length;
               if(§1!7§)
               {
                  this.§<m§.deflate();
                  this.§2y§ = this.§<m§.length;
               }
               else if(§'^§)
               {
                  this.§<m§.compress.apply(this.§<m§,["deflate"]);
                  this.§2y§ = this.§<m§.length;
               }
               else
               {
                  this.§<m§.compress();
                  this.§2y§ = this.§<m§.length - 6;
               }
               this.§<m§.position = 0;
               this.native = true;
            }
            else
            {
               this.§2y§ = 0;
               this.§"K§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.native && this.§<m§.length > 0)
         {
            this.§<m§.position = 0;
            if(§1!7§)
            {
               this.§<m§.inflate();
            }
            else if(§'^§)
            {
               this.§<m§.uncompress.apply(this.§<m§,["deflate"]);
            }
            else
            {
               this.§<m§.uncompress();
            }
            this.§<m§.position = 0;
            this.native = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§"[§ + "\n  date:" + this.§=!D§ + "\n  sizeCompressed:" + this.§2y§ + "\n  sizeUncompressed:" + this.§"K§ + "\n  versionHost:" + this.§=I§ + "\n  versionNumber:" + this.§"!G§ + "\n  compressionMethod:" + this.§?"§ + "\n  encrypted:" + this.§'e§ + "\n  hasDataDescriptor:" + this.§!a§ + "\n  hasCompressedPatchedData:" + this.§+S§ + "\n  filenameEncoding:" + this.§<X§ + "\n  crc32:" + this.§[v§.toString(16) + "\n  adler32:" + this.§8!;§.toString(16);
      }
   }
}

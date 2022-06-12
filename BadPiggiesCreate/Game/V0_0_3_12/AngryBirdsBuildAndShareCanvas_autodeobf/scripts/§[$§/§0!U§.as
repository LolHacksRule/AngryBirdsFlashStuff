package §[$§
{
   import §7">§.§4s§;
   import flash.utils.*;
   
   public class §0!U§
   {
      
      public static const §9^§:int = 0;
      
      public static const §6!=§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §3!y§:int = 6;
      
      public static const §9!B§:int = 7;
      
      public static const §"!q§:int = 8;
      
      public static const §>!p§:int = 9;
      
      public static const §;K§:int = 10;
      
      protected static var §?!@§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §["'§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §9!?§:int = 0;
      
      protected var §4$§:String = "2.0";
      
      protected var §["%§:int = 8;
      
      protected var §"!W§:Boolean = false;
      
      protected var §!f§:int = -1;
      
      protected var §=4§:int = -1;
      
      protected var §3! §:int = -1;
      
      protected var § !;§:Boolean = false;
      
      protected var §6![§:Boolean = false;
      
      protected var §9?§:Date;
      
      protected var §="6§:uint;
      
      protected var §;"9§:Boolean = false;
      
      protected var §#!7§:uint = 0;
      
      protected var §,"<§:uint = 0;
      
      protected var §[!N§:String = "";
      
      protected var §&!i§:String;
      
      protected var §?!!§:Dictionary;
      
      protected var § X§:String = "";
      
      protected var §!>§:ByteArray;
      
      var §45§:uint;
      
      var §;"2§:uint = 0;
      
      var §',§:uint = 0;
      
      protected var §["1§:Boolean = false;
      
      protected var §?N§:Function;
      
      public function §0!U§(param1:String = "utf-8")
      {
         this.§?N§ = this.§0""§;
         super();
         this.§&!i§ = param1;
         this.§?!!§ = new Dictionary();
         this.§!>§ = new ByteArray();
         this.§!>§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §'!t§() : Date
      {
         return this.§9?§;
      }
      
      public function set §'!t§(param1:Date) : void
      {
         this.§9?§ = param1 != null ? param1 : new Date();
      }
      
      public function get §>!r§() : String
      {
         return this.§[!N§;
      }
      
      public function set §>!r§(param1:String) : void
      {
         this.§[!N§ = param1;
      }
      
      function get §#!j§() : Boolean
      {
         return this.§ !;§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§["1§)
         {
            this.uncompress();
         }
         return this.§!>§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§3Y§(param1);
      }
      
      public function §3Y§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§!>§,0,param1.length);
            this.§45§ = §4s§.§4!z§(this.§!>§);
            this.§;"9§ = false;
         }
         else
         {
            this.§!>§.length = 0;
            this.§!>§.position = 0;
            this.§["1§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§',§ = this.§;"2§ = this.§!>§.length;
         }
      }
      
      public function get §&U§() : String
      {
         return this.§4$§;
      }
      
      public function get §>'§() : uint
      {
         return this.§;"2§;
      }
      
      public function get §%;§() : uint
      {
         return this.§',§;
      }
      
      public function §'!v§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§["1§)
         {
            this.uncompress();
         }
         this.§!>§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§!>§.readUTFBytes(this.§!>§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§!>§.readMultiByte(this.§!>§.bytesAvailable,param2);
         }
         this.§!>§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §!!X§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§!>§.length = 0;
         this.§!>§.position = 0;
         this.§["1§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§!>§.writeUTFBytes(param1);
            }
            else
            {
               this.§!>§.writeMultiByte(param1,param2);
            }
            this.§45§ = §4s§.§4!z§(this.§!>§);
            this.§;"9§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§',§ = this.§;"2§ = this.§!>§.length;
         }
      }
      
      public function §%c§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§^!6§.§"!C§);
            param1.writeShort(this.§9!?§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§^!6§.§@"5§);
         }
         param1.writeShort(this.§9!?§ << 8 | 20);
         param1.writeShort(this.§&!i§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§["1§ ? int(§"!q§) : int(§9^§));
         var _loc5_:Date = this.§9?§ != null ? this.§9?§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§45§);
         param1.writeUnsignedInt(this.§;"2§);
         param1.writeUnsignedInt(this.§',§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§&!i§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§[!N§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§[!N§,this.§&!i§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§?!!§)
         {
            if((_loc15_ = this.§?!!§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§;"9§)
            {
               if(_loc16_ = this.§["1§)
               {
                  this.uncompress();
               }
               this.§="6§ = §4s§.§&#§(this.§!>§,0,this.§!>§.length);
               this.§;"9§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§="6§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§ X§.length > 0)
         {
            if(this.§&!i§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§ X§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§ X§,this.§&!i§);
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
         if(!param3 && this.§!>§.length > 0)
         {
            if(this.§["1§)
            {
               if(§?!@§ || §["'§)
               {
                  _loc13_ = this.§!>§.length;
                  param1.writeBytes(this.§!>§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§!>§.length - 6;
                  param1.writeBytes(this.§!>§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§!>§.length;
               param1.writeBytes(this.§!>§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§?N§(param1))
         {
         }
         return this.§?N§ === this.§9#§;
      }
      
      protected function §9#§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §0""§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§!t§(param1);
            if(this.§#!7§ + this.§,"<§ > 0)
            {
               this.§?N§ = this.§%!z§;
            }
            else
            {
               this.§?N§ = this.§9!;§;
            }
            return true;
         }
         return false;
      }
      
      protected function §%!z§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§#!7§ + this.§,"<§)
         {
            this.§0!9§(param1);
            this.§?N§ = this.§9!;§;
            return true;
         }
         return false;
      }
      
      protected function §9!;§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§ !;§)
         {
            this.§?N§ = this.§9#§;
            _loc2_ = false;
         }
         else if(this.§;"2§ == 0)
         {
            this.§?N§ = this.§9#§;
         }
         else if(param1.bytesAvailable >= this.§;"2§)
         {
            this.§0!f§(param1);
            this.§?N§ = this.§9#§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §!t§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§9!?§ = _loc2_ >> 8;
         this.§4$§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§["%§ = param1.readUnsignedShort();
         this.§"!W§ = (_loc3_ & 1) !== 0;
         this.§ !;§ = (_loc3_ & 8) !== 0;
         this.§6![§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§&!i§ = "utf-8";
         }
         if(this.§["%§ === §3!y§)
         {
            this.§!f§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§=4§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§["%§ === §"!q§)
         {
            this.§3! § = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§9?§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§45§ = param1.readUnsignedInt();
         this.§;"2§ = param1.readUnsignedInt();
         this.§',§ = param1.readUnsignedInt();
         this.§#!7§ = param1.readUnsignedShort();
         this.§,"<§ = param1.readUnsignedShort();
      }
      
      protected function §0!9§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§&!i§ == "utf-8")
         {
            this.§[!N§ = param1.readUTFBytes(this.§#!7§);
         }
         else
         {
            this.§[!N§ = param1.readMultiByte(this.§#!7§,this.§&!i§);
         }
         var _loc2_:uint = this.§,"<§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§[!N§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§="6§ = param1.readUnsignedInt();
               this.§;"9§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§?!!§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §0!f§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§["%§ === §"!q§ && !this.§"!W§)
         {
            if(§?!@§ || §["'§)
            {
               param1.readBytes(this.§!>§,0,this.§;"2§);
            }
            else
            {
               if(!this.§;"9§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§!>§.writeByte(120);
               _loc2_ = ~this.§3! § << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§!>§.writeByte(_loc2_);
               param1.readBytes(this.§!>§,2,this.§;"2§);
               this.§!>§.position = this.§!>§.length;
               this.§!>§.writeUnsignedInt(this.§="6§);
            }
            this.§["1§ = true;
         }
         else
         {
            if(this.§["%§ != §9^§)
            {
               throw new Error("Compression method " + this.§["%§ + " is not supported.");
            }
            param1.readBytes(this.§!>§,0,this.§;"2§);
            this.§["1§ = false;
         }
         this.§!>§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§["1§)
         {
            if(this.§!>§.length > 0)
            {
               this.§!>§.position = 0;
               this.§',§ = this.§!>§.length;
               if(§["'§)
               {
                  this.§!>§.deflate();
                  this.§;"2§ = this.§!>§.length;
               }
               else if(§?!@§)
               {
                  this.§!>§.compress.apply(this.§!>§,["deflate"]);
                  this.§;"2§ = this.§!>§.length;
               }
               else
               {
                  this.§!>§.compress();
                  this.§;"2§ = this.§!>§.length - 6;
               }
               this.§!>§.position = 0;
               this.§["1§ = true;
            }
            else
            {
               this.§;"2§ = 0;
               this.§',§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§["1§ && this.§!>§.length > 0)
         {
            this.§!>§.position = 0;
            if(§["'§)
            {
               this.§!>§.inflate();
            }
            else if(§?!@§)
            {
               this.§!>§.uncompress.apply(this.§!>§,["deflate"]);
            }
            else
            {
               this.§!>§.uncompress();
            }
            this.§!>§.position = 0;
            this.§["1§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§[!N§ + "\n  date:" + this.§9?§ + "\n  sizeCompressed:" + this.§;"2§ + "\n  sizeUncompressed:" + this.§',§ + "\n  versionHost:" + this.§9!?§ + "\n  versionNumber:" + this.§4$§ + "\n  compressionMethod:" + this.§["%§ + "\n  encrypted:" + this.§"!W§ + "\n  hasDataDescriptor:" + this.§ !;§ + "\n  hasCompressedPatchedData:" + this.§6![§ + "\n  filenameEncoding:" + this.§&!i§ + "\n  crc32:" + this.§45§.toString(16) + "\n  adler32:" + this.§="6§.toString(16);
      }
   }
}

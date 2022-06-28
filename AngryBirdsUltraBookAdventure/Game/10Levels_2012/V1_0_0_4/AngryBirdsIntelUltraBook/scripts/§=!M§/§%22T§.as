package §=!M§
{
   import §9_§.§7!@§;
   import flash.utils.*;
   
   public class §"T§
   {
      
      public static const §1C§:int = 0;
      
      public static const §@!e§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §1!m§:int = 6;
      
      public static const §&"§:int = 7;
      
      public static const §"Q§:int = 8;
      
      public static const §?S§:int = 9;
      
      public static const §&!#§:int = 10;
      
      protected static var §>t§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §#!!§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §]!@§:int = 0;
      
      protected var §?&§:String = "2.0";
      
      protected var §9p§:int = 8;
      
      protected var §%!I§:Boolean = false;
      
      protected var §'!y§:int = -1;
      
      protected var §<;§:int = -1;
      
      protected var §2A§:int = -1;
      
      protected var §<g§:Boolean = false;
      
      protected var §]z§:Boolean = false;
      
      protected var §]$§:Date;
      
      protected var §!!n§:uint;
      
      protected var §]C§:Boolean = false;
      
      protected var §<7§:uint = 0;
      
      protected var §`7§:uint = 0;
      
      protected var §=!J§:String = "";
      
      protected var §2!§:String;
      
      protected var §?m§:Dictionary;
      
      protected var §continue§:String = "";
      
      protected var §@o§:ByteArray;
      
      var §%b§:uint;
      
      var §3!3§:uint = 0;
      
      var §!Q§:uint = 0;
      
      protected var §='§:Boolean = false;
      
      protected var §3!b§:Function;
      
      public function §"T§(param1:String = "utf-8")
      {
         this.§3!b§ = this.§>!i§;
         super();
         this.§2!§ = param1;
         this.§?m§ = new Dictionary();
         this.§@o§ = new ByteArray();
         this.§@o§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get § ?§() : Date
      {
         return this.§]$§;
      }
      
      public function set § ?§(param1:Date) : void
      {
         this.§]$§ = param1 != null ? param1 : new Date();
      }
      
      public function get §,,§() : String
      {
         return this.§=!J§;
      }
      
      public function set §,,§(param1:String) : void
      {
         this.§=!J§ = param1;
      }
      
      function get § for§() : Boolean
      {
         return this.§<g§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§='§)
         {
            this.uncompress();
         }
         return this.§@o§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§=1§(param1);
      }
      
      public function §=1§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§@o§,0,param1.length);
            this.§%b§ = §7!@§.§"!'§(this.§@o§);
            this.§]C§ = false;
         }
         else
         {
            this.§@o§.length = 0;
            this.§@o§.position = 0;
            this.§='§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§!Q§ = this.§3!3§ = this.§@o§.length;
         }
      }
      
      public function get §,! §() : String
      {
         return this.§?&§;
      }
      
      public function get §]!9§() : uint
      {
         return this.§3!3§;
      }
      
      public function get §-O§() : uint
      {
         return this.§!Q§;
      }
      
      public function §4p§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§='§)
         {
            this.uncompress();
         }
         this.§@o§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§@o§.readUTFBytes(this.§@o§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§@o§.readMultiByte(this.§@o§.bytesAvailable,param2);
         }
         this.§@o§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §5!8§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§@o§.length = 0;
         this.§@o§.position = 0;
         this.§='§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§@o§.writeUTFBytes(param1);
            }
            else
            {
               this.§@o§.writeMultiByte(param1,param2);
            }
            this.§%b§ = §7!@§.§"!'§(this.§@o§);
            this.§]C§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§!Q§ = this.§3!3§ = this.§@o§.length;
         }
      }
      
      public function §+p§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§3Q§.§2s§);
            param1.writeShort(this.§]!@§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§3Q§.§<p§);
         }
         param1.writeShort(this.§]!@§ << 8 | 20);
         param1.writeShort(this.§2!§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§='§ ? int(§"Q§) : int(§1C§));
         var _loc5_:Date = this.§]$§ != null ? this.§]$§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§%b§);
         param1.writeUnsignedInt(this.§3!3§);
         param1.writeUnsignedInt(this.§!Q§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§2!§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§=!J§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§=!J§,this.§2!§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§?m§)
         {
            if((_loc15_ = this.§?m§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§]C§)
            {
               if(_loc16_ = this.§='§)
               {
                  this.uncompress();
               }
               this.§!!n§ = §7!@§.§!F§(this.§@o§,0,this.§@o§.length);
               this.§]C§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§!!n§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§continue§.length > 0)
         {
            if(this.§2!§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§continue§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§continue§,this.§2!§);
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
         if(!param3 && this.§@o§.length > 0)
         {
            if(this.§='§)
            {
               if(§>t§ || §#!!§)
               {
                  _loc13_ = this.§@o§.length;
                  param1.writeBytes(this.§@o§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§@o§.length - 6;
                  param1.writeBytes(this.§@o§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§@o§.length;
               param1.writeBytes(this.§@o§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§3!b§(param1))
         {
         }
         return this.§3!b§ === this.§0!A§;
      }
      
      protected function §0!A§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §>!i§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§"!N§(param1);
            if(this.§<7§ + this.§`7§ > 0)
            {
               this.§3!b§ = this.§0`§;
            }
            else
            {
               this.§3!b§ = this.§`!I§;
            }
            return true;
         }
         return false;
      }
      
      protected function §0`§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§<7§ + this.§`7§)
         {
            this.§7C§(param1);
            this.§3!b§ = this.§`!I§;
            return true;
         }
         return false;
      }
      
      protected function §`!I§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§<g§)
         {
            this.§3!b§ = this.§0!A§;
            _loc2_ = false;
         }
         else if(this.§3!3§ == 0)
         {
            this.§3!b§ = this.§0!A§;
         }
         else if(param1.bytesAvailable >= this.§3!3§)
         {
            this.§&!G§(param1);
            this.§3!b§ = this.§0!A§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §"!N§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§]!@§ = _loc2_ >> 8;
         this.§?&§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§9p§ = param1.readUnsignedShort();
         this.§%!I§ = (_loc3_ & 1) !== 0;
         this.§<g§ = (_loc3_ & 8) !== 0;
         this.§]z§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§2!§ = "utf-8";
         }
         if(this.§9p§ === §1!m§)
         {
            this.§'!y§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§<;§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§9p§ === §"Q§)
         {
            this.§2A§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§]$§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§%b§ = param1.readUnsignedInt();
         this.§3!3§ = param1.readUnsignedInt();
         this.§!Q§ = param1.readUnsignedInt();
         this.§<7§ = param1.readUnsignedShort();
         this.§`7§ = param1.readUnsignedShort();
      }
      
      protected function §7C§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§2!§ == "utf-8")
         {
            this.§=!J§ = param1.readUTFBytes(this.§<7§);
         }
         else
         {
            this.§=!J§ = param1.readMultiByte(this.§<7§,this.§2!§);
         }
         var _loc2_:uint = this.§`7§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§=!J§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§!!n§ = param1.readUnsignedInt();
               this.§]C§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§?m§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §&!G§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§9p§ === §"Q§ && !this.§%!I§)
         {
            if(§>t§ || §#!!§)
            {
               param1.readBytes(this.§@o§,0,this.§3!3§);
            }
            else
            {
               if(!this.§]C§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§@o§.writeByte(120);
               _loc2_ = ~this.§2A§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§@o§.writeByte(_loc2_);
               param1.readBytes(this.§@o§,2,this.§3!3§);
               this.§@o§.position = this.§@o§.length;
               this.§@o§.writeUnsignedInt(this.§!!n§);
            }
            this.§='§ = true;
         }
         else
         {
            if(this.§9p§ != §1C§)
            {
               throw new Error("Compression method " + this.§9p§ + " is not supported.");
            }
            param1.readBytes(this.§@o§,0,this.§3!3§);
            this.§='§ = false;
         }
         this.§@o§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§='§)
         {
            if(this.§@o§.length > 0)
            {
               this.§@o§.position = 0;
               this.§!Q§ = this.§@o§.length;
               if(§#!!§)
               {
                  this.§@o§.deflate();
                  this.§3!3§ = this.§@o§.length;
               }
               else if(§>t§)
               {
                  this.§@o§.compress.apply(this.§@o§,["deflate"]);
                  this.§3!3§ = this.§@o§.length;
               }
               else
               {
                  this.§@o§.compress();
                  this.§3!3§ = this.§@o§.length - 6;
               }
               this.§@o§.position = 0;
               this.§='§ = true;
            }
            else
            {
               this.§3!3§ = 0;
               this.§!Q§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§='§ && this.§@o§.length > 0)
         {
            this.§@o§.position = 0;
            if(§#!!§)
            {
               this.§@o§.inflate();
            }
            else if(§>t§)
            {
               this.§@o§.uncompress.apply(this.§@o§,["deflate"]);
            }
            else
            {
               this.§@o§.uncompress();
            }
            this.§@o§.position = 0;
            this.§='§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§=!J§ + "\n  date:" + this.§]$§ + "\n  sizeCompressed:" + this.§3!3§ + "\n  sizeUncompressed:" + this.§!Q§ + "\n  versionHost:" + this.§]!@§ + "\n  versionNumber:" + this.§?&§ + "\n  compressionMethod:" + this.§9p§ + "\n  encrypted:" + this.§%!I§ + "\n  hasDataDescriptor:" + this.§<g§ + "\n  hasCompressedPatchedData:" + this.§]z§ + "\n  filenameEncoding:" + this.§2!§ + "\n  crc32:" + this.§%b§.toString(16) + "\n  adler32:" + this.§!!n§.toString(16);
      }
   }
}

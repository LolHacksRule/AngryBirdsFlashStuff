package §6K§
{
   import §&7§.§9]§;
   import flash.utils.*;
   
   public class §,$§
   {
      
      public static const §,!"§:int = 0;
      
      public static const §-!,§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §`2§:int = 6;
      
      public static const §-K§:int = 7;
      
      public static const §7i§:int = 8;
      
      public static const §="§:int = 9;
      
      public static const §?!!§:int = 10;
      
      protected static var §;!A§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var § !3§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §;C§:int = 0;
      
      protected var §31§:String = "2.0";
      
      protected var §<§:int = 8;
      
      protected var §&!0§:Boolean = false;
      
      protected var §1u§:int = -1;
      
      protected var §[!2§:int = -1;
      
      protected var §9!F§:int = -1;
      
      protected var §,#§:Boolean = false;
      
      protected var §2O§:Boolean = false;
      
      protected var §;!7§:Date;
      
      protected var §5^§:uint;
      
      protected var §7n§:Boolean = false;
      
      protected var §75§:uint = 0;
      
      protected var §7y§:uint = 0;
      
      protected var §>!3§:String = "";
      
      protected var §>r§:String;
      
      protected var §;!@§:Dictionary;
      
      protected var §%!-§:String = "";
      
      protected var §>!F§:ByteArray;
      
      var §-!6§:uint;
      
      var §-y§:uint = 0;
      
      var §"!L§:uint = 0;
      
      protected var §]R§:Boolean = false;
      
      protected var §`i§:Function;
      
      public function §,$§(param1:String = "utf-8")
      {
         this.§`i§ = this.§2!G§;
         super();
         this.§>r§ = param1;
         this.§;!@§ = new Dictionary();
         this.§>!F§ = new ByteArray();
         this.§>!F§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §<!4§() : Date
      {
         return this.§;!7§;
      }
      
      public function set §<!4§(param1:Date) : void
      {
         this.§;!7§ = param1 != null ? param1 : new Date();
      }
      
      public function get §%;§() : String
      {
         return this.§>!3§;
      }
      
      public function set §%;§(param1:String) : void
      {
         this.§>!3§ = param1;
      }
      
      function get §<!H§() : Boolean
      {
         return this.§,#§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§]R§)
         {
            this.uncompress();
         }
         return this.§>!F§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§98§(param1);
      }
      
      public function §98§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§>!F§,0,param1.length);
            this.§-!6§ = §9]§.§>"§(this.§>!F§);
            this.§7n§ = false;
         }
         else
         {
            this.§>!F§.length = 0;
            this.§>!F§.position = 0;
            this.§]R§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§"!L§ = this.§-y§ = this.§>!F§.length;
         }
      }
      
      public function get §-!@§() : String
      {
         return this.§31§;
      }
      
      public function get §]1§() : uint
      {
         return this.§-y§;
      }
      
      public function get §^!<§() : uint
      {
         return this.§"!L§;
      }
      
      public function §3L§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§]R§)
         {
            this.uncompress();
         }
         this.§>!F§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§>!F§.readUTFBytes(this.§>!F§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§>!F§.readMultiByte(this.§>!F§.bytesAvailable,param2);
         }
         this.§>!F§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §#h§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§>!F§.length = 0;
         this.§>!F§.position = 0;
         this.§]R§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§>!F§.writeUTFBytes(param1);
            }
            else
            {
               this.§>!F§.writeMultiByte(param1,param2);
            }
            this.§-!6§ = §9]§.§>"§(this.§>!F§);
            this.§7n§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§"!L§ = this.§-y§ = this.§>!F§.length;
         }
      }
      
      public function §[!A§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§7!;§.§-!&§);
            param1.writeShort(this.§;C§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§7!;§.§&!M§);
         }
         param1.writeShort(this.§;C§ << 8 | 20);
         param1.writeShort(this.§>r§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§]R§ ? int(§7i§) : int(§,!"§));
         var _loc5_:Date = this.§;!7§ != null ? this.§;!7§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§-!6§);
         param1.writeUnsignedInt(this.§-y§);
         param1.writeUnsignedInt(this.§"!L§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§>r§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§>!3§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§>!3§,this.§>r§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§;!@§)
         {
            if((_loc15_ = this.§;!@§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§7n§)
            {
               if(_loc16_ = this.§]R§)
               {
                  this.uncompress();
               }
               this.§5^§ = §9]§.§4i§(this.§>!F§,0,this.§>!F§.length);
               this.§7n§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§5^§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§%!-§.length > 0)
         {
            if(this.§>r§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§%!-§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§%!-§,this.§>r§);
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
         if(!param3 && this.§>!F§.length > 0)
         {
            if(this.§]R§)
            {
               if(§;!A§ || § !3§)
               {
                  _loc13_ = this.§>!F§.length;
                  param1.writeBytes(this.§>!F§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§>!F§.length - 6;
                  param1.writeBytes(this.§>!F§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§>!F§.length;
               param1.writeBytes(this.§>!F§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§`i§(param1))
         {
         }
         return this.§`i§ === this.§+i§;
      }
      
      protected function §+i§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §2!G§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§9E§(param1);
            if(this.§75§ + this.§7y§ > 0)
            {
               this.§`i§ = this.§!`§;
            }
            else
            {
               this.§`i§ = this.§]Q§;
            }
            return true;
         }
         return false;
      }
      
      protected function §!`§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§75§ + this.§7y§)
         {
            this.§,x§(param1);
            this.§`i§ = this.§]Q§;
            return true;
         }
         return false;
      }
      
      protected function §]Q§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§,#§)
         {
            this.§`i§ = this.§+i§;
            _loc2_ = false;
         }
         else if(this.§-y§ == 0)
         {
            this.§`i§ = this.§+i§;
         }
         else if(param1.bytesAvailable >= this.§-y§)
         {
            this.§&i§(param1);
            this.§`i§ = this.§+i§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §9E§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§;C§ = _loc2_ >> 8;
         this.§31§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§<§ = param1.readUnsignedShort();
         this.§&!0§ = (_loc3_ & 1) !== 0;
         this.§,#§ = (_loc3_ & 8) !== 0;
         this.§2O§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§>r§ = "utf-8";
         }
         if(this.§<§ === §`2§)
         {
            this.§1u§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§[!2§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§<§ === §7i§)
         {
            this.§9!F§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§;!7§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§-!6§ = param1.readUnsignedInt();
         this.§-y§ = param1.readUnsignedInt();
         this.§"!L§ = param1.readUnsignedInt();
         this.§75§ = param1.readUnsignedShort();
         this.§7y§ = param1.readUnsignedShort();
      }
      
      protected function §,x§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§>r§ == "utf-8")
         {
            this.§>!3§ = param1.readUTFBytes(this.§75§);
         }
         else
         {
            this.§>!3§ = param1.readMultiByte(this.§75§,this.§>r§);
         }
         var _loc2_:uint = this.§7y§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§>!3§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§5^§ = param1.readUnsignedInt();
               this.§7n§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§;!@§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §&i§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§<§ === §7i§ && !this.§&!0§)
         {
            if(§;!A§ || § !3§)
            {
               param1.readBytes(this.§>!F§,0,this.§-y§);
            }
            else
            {
               if(!this.§7n§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§>!F§.writeByte(120);
               _loc2_ = ~this.§9!F§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§>!F§.writeByte(_loc2_);
               param1.readBytes(this.§>!F§,2,this.§-y§);
               this.§>!F§.position = this.§>!F§.length;
               this.§>!F§.writeUnsignedInt(this.§5^§);
            }
            this.§]R§ = true;
         }
         else
         {
            if(this.§<§ != §,!"§)
            {
               throw new Error("Compression method " + this.§<§ + " is not supported.");
            }
            param1.readBytes(this.§>!F§,0,this.§-y§);
            this.§]R§ = false;
         }
         this.§>!F§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§]R§)
         {
            if(this.§>!F§.length > 0)
            {
               this.§>!F§.position = 0;
               this.§"!L§ = this.§>!F§.length;
               if(§ !3§)
               {
                  this.§>!F§.deflate();
                  this.§-y§ = this.§>!F§.length;
               }
               else if(§;!A§)
               {
                  this.§>!F§.compress.apply(this.§>!F§,["deflate"]);
                  this.§-y§ = this.§>!F§.length;
               }
               else
               {
                  this.§>!F§.compress();
                  this.§-y§ = this.§>!F§.length - 6;
               }
               this.§>!F§.position = 0;
               this.§]R§ = true;
            }
            else
            {
               this.§-y§ = 0;
               this.§"!L§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§]R§ && this.§>!F§.length > 0)
         {
            this.§>!F§.position = 0;
            if(§ !3§)
            {
               this.§>!F§.inflate();
            }
            else if(§;!A§)
            {
               this.§>!F§.uncompress.apply(this.§>!F§,["deflate"]);
            }
            else
            {
               this.§>!F§.uncompress();
            }
            this.§>!F§.position = 0;
            this.§]R§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§>!3§ + "\n  date:" + this.§;!7§ + "\n  sizeCompressed:" + this.§-y§ + "\n  sizeUncompressed:" + this.§"!L§ + "\n  versionHost:" + this.§;C§ + "\n  versionNumber:" + this.§31§ + "\n  compressionMethod:" + this.§<§ + "\n  encrypted:" + this.§&!0§ + "\n  hasDataDescriptor:" + this.§,#§ + "\n  hasCompressedPatchedData:" + this.§2O§ + "\n  filenameEncoding:" + this.§>r§ + "\n  crc32:" + this.§-!6§.toString(16) + "\n  adler32:" + this.§5^§.toString(16);
      }
   }
}

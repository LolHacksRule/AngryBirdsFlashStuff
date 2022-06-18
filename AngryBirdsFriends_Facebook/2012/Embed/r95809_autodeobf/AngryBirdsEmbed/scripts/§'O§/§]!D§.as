package §'O§
{
   import §<!"§.§5!9§;
   import flash.utils.*;
   
   public class §]!D§
   {
      
      public static const §9!$§:int = 0;
      
      public static const §4!#§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §2!F§:int = 6;
      
      public static const §+!$§:int = 7;
      
      public static const §1b§:int = 8;
      
      public static const §#<§:int = 9;
      
      public static const §#S§:int = 10;
      
      protected static var §5!7§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §<!C§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §2!6§:int = 0;
      
      protected var §`#§:String = "2.0";
      
      protected var §>!F§:int = 8;
      
      protected var §]1§:Boolean = false;
      
      protected var §]M§:int = -1;
      
      protected var §9g§:int = -1;
      
      protected var §+"§:int = -1;
      
      protected var §0!'§:Boolean = false;
      
      protected var §9!&§:Boolean = false;
      
      protected var §<5§:Date;
      
      protected var §<h§:uint;
      
      protected var §,P§:Boolean = false;
      
      protected var §?h§:uint = 0;
      
      protected var §%x§:uint = 0;
      
      protected var §85§:String = "";
      
      protected var §[D§:String;
      
      protected var §2!§:Dictionary;
      
      protected var §?P§:String = "";
      
      protected var §2!?§:ByteArray;
      
      var §1!3§:uint;
      
      var §[>§:uint = 0;
      
      var §7!&§:uint = 0;
      
      protected var §[!;§:Boolean = false;
      
      protected var §6m§:Function;
      
      public function §]!D§(param1:String = "utf-8")
      {
         this.§6m§ = this.§#!A§;
         super();
         this.§[D§ = param1;
         this.§2!§ = new Dictionary();
         this.§2!?§ = new ByteArray();
         this.§2!?§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §1w§() : Date
      {
         return this.§<5§;
      }
      
      public function set §1w§(param1:Date) : void
      {
         this.§<5§ = param1 != null ? param1 : new Date();
      }
      
      public function get §%1§() : String
      {
         return this.§85§;
      }
      
      public function set §%1§(param1:String) : void
      {
         this.§85§ = param1;
      }
      
      function get §@u§() : Boolean
      {
         return this.§0!'§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§[!;§)
         {
            this.uncompress();
         }
         return this.§2!?§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§5o§(param1);
      }
      
      public function §5o§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§2!?§,0,param1.length);
            this.§1!3§ = §5!9§.§3M§(this.§2!?§);
            this.§,P§ = false;
         }
         else
         {
            this.§2!?§.length = 0;
            this.§2!?§.position = 0;
            this.§[!;§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§7!&§ = this.§[>§ = this.§2!?§.length;
         }
      }
      
      public function get §'!A§() : String
      {
         return this.§`#§;
      }
      
      public function get §5h§() : uint
      {
         return this.§[>§;
      }
      
      public function get §&H§() : uint
      {
         return this.§7!&§;
      }
      
      public function §0N§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§[!;§)
         {
            this.uncompress();
         }
         this.§2!?§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§2!?§.readUTFBytes(this.§2!?§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§2!?§.readMultiByte(this.§2!?§.bytesAvailable,param2);
         }
         this.§2!?§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §;!?§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§2!?§.length = 0;
         this.§2!?§.position = 0;
         this.§[!;§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§2!?§.writeUTFBytes(param1);
            }
            else
            {
               this.§2!?§.writeMultiByte(param1,param2);
            }
            this.§1!3§ = §5!9§.§3M§(this.§2!?§);
            this.§,P§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§7!&§ = this.§[>§ = this.§2!?§.length;
         }
      }
      
      public function §&R§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§0E§.§+!D§);
            param1.writeShort(this.§2!6§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§0E§.§?O§);
         }
         param1.writeShort(this.§2!6§ << 8 | 20);
         param1.writeShort(this.§[D§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§[!;§ ? int(§1b§) : int(§9!$§));
         var _loc5_:Date = this.§<5§ != null ? this.§<5§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§1!3§);
         param1.writeUnsignedInt(this.§[>§);
         param1.writeUnsignedInt(this.§7!&§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§[D§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§85§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§85§,this.§[D§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§2!§)
         {
            if((_loc15_ = this.§2!§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§,P§)
            {
               if(_loc16_ = this.§[!;§)
               {
                  this.uncompress();
               }
               this.§<h§ = §5!9§.§8!D§(this.§2!?§,0,this.§2!?§.length);
               this.§,P§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§<h§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§?P§.length > 0)
         {
            if(this.§[D§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§?P§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§?P§,this.§[D§);
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
         if(!param3 && this.§2!?§.length > 0)
         {
            if(this.§[!;§)
            {
               if(§5!7§ || §<!C§)
               {
                  _loc13_ = this.§2!?§.length;
                  param1.writeBytes(this.§2!?§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§2!?§.length - 6;
                  param1.writeBytes(this.§2!?§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§2!?§.length;
               param1.writeBytes(this.§2!?§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§6m§(param1))
         {
         }
         return this.§6m§ === this.§3N§;
      }
      
      protected function §3N§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §#!A§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§;q§(param1);
            if(this.§?h§ + this.§%x§ > 0)
            {
               this.§6m§ = this.§0-§;
            }
            else
            {
               this.§6m§ = this.§+p§;
            }
            return true;
         }
         return false;
      }
      
      protected function §0-§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§?h§ + this.§%x§)
         {
            this.§7!%§(param1);
            this.§6m§ = this.§+p§;
            return true;
         }
         return false;
      }
      
      protected function §+p§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§0!'§)
         {
            this.§6m§ = this.§3N§;
            _loc2_ = false;
         }
         else if(this.§[>§ == 0)
         {
            this.§6m§ = this.§3N§;
         }
         else if(param1.bytesAvailable >= this.§[>§)
         {
            this.§4"§(param1);
            this.§6m§ = this.§3N§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §;q§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§2!6§ = _loc2_ >> 8;
         this.§`#§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§>!F§ = param1.readUnsignedShort();
         this.§]1§ = (_loc3_ & 1) !== 0;
         this.§0!'§ = (_loc3_ & 8) !== 0;
         this.§9!&§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§[D§ = "utf-8";
         }
         if(this.§>!F§ === §2!F§)
         {
            this.§]M§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§9g§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§>!F§ === §1b§)
         {
            this.§+"§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§<5§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§1!3§ = param1.readUnsignedInt();
         this.§[>§ = param1.readUnsignedInt();
         this.§7!&§ = param1.readUnsignedInt();
         this.§?h§ = param1.readUnsignedShort();
         this.§%x§ = param1.readUnsignedShort();
      }
      
      protected function §7!%§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§[D§ == "utf-8")
         {
            this.§85§ = param1.readUTFBytes(this.§?h§);
         }
         else
         {
            this.§85§ = param1.readMultiByte(this.§?h§,this.§[D§);
         }
         var _loc2_:uint = this.§%x§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§85§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§<h§ = param1.readUnsignedInt();
               this.§,P§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§2!§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §4"§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§>!F§ === §1b§ && !this.§]1§)
         {
            if(§5!7§ || §<!C§)
            {
               param1.readBytes(this.§2!?§,0,this.§[>§);
            }
            else
            {
               if(!this.§,P§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§2!?§.writeByte(120);
               _loc2_ = ~this.§+"§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§2!?§.writeByte(_loc2_);
               param1.readBytes(this.§2!?§,2,this.§[>§);
               this.§2!?§.position = this.§2!?§.length;
               this.§2!?§.writeUnsignedInt(this.§<h§);
            }
            this.§[!;§ = true;
         }
         else
         {
            if(this.§>!F§ != §9!$§)
            {
               throw new Error("Compression method " + this.§>!F§ + " is not supported.");
            }
            param1.readBytes(this.§2!?§,0,this.§[>§);
            this.§[!;§ = false;
         }
         this.§2!?§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§[!;§)
         {
            if(this.§2!?§.length > 0)
            {
               this.§2!?§.position = 0;
               this.§7!&§ = this.§2!?§.length;
               if(§<!C§)
               {
                  this.§2!?§.deflate();
                  this.§[>§ = this.§2!?§.length;
               }
               else if(§5!7§)
               {
                  this.§2!?§.compress.apply(this.§2!?§,["deflate"]);
                  this.§[>§ = this.§2!?§.length;
               }
               else
               {
                  this.§2!?§.compress();
                  this.§[>§ = this.§2!?§.length - 6;
               }
               this.§2!?§.position = 0;
               this.§[!;§ = true;
            }
            else
            {
               this.§[>§ = 0;
               this.§7!&§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§[!;§ && this.§2!?§.length > 0)
         {
            this.§2!?§.position = 0;
            if(§<!C§)
            {
               this.§2!?§.inflate();
            }
            else if(§5!7§)
            {
               this.§2!?§.uncompress.apply(this.§2!?§,["deflate"]);
            }
            else
            {
               this.§2!?§.uncompress();
            }
            this.§2!?§.position = 0;
            this.§[!;§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§85§ + "\n  date:" + this.§<5§ + "\n  sizeCompressed:" + this.§[>§ + "\n  sizeUncompressed:" + this.§7!&§ + "\n  versionHost:" + this.§2!6§ + "\n  versionNumber:" + this.§`#§ + "\n  compressionMethod:" + this.§>!F§ + "\n  encrypted:" + this.§]1§ + "\n  hasDataDescriptor:" + this.§0!'§ + "\n  hasCompressedPatchedData:" + this.§9!&§ + "\n  filenameEncoding:" + this.§[D§ + "\n  crc32:" + this.§1!3§.toString(16) + "\n  adler32:" + this.§<h§.toString(16);
      }
   }
}

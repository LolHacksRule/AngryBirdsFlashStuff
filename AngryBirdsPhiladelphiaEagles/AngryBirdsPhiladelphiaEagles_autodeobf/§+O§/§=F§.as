package §+O§
{
   import §^$§.§;U§;
   import flash.utils.*;
   
   public class §=F§
   {
      
      public static const §1_§:int = 0;
      
      public static const §='§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §[7§:int = 6;
      
      public static const § 3§:int = 7;
      
      public static const §"i§:int = 8;
      
      public static const §!x§:int = 9;
      
      public static const §5^§:int = 10;
      
      protected static var §3i§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §0X§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §^C§:int = 0;
      
      protected var §+[§:String = "2.0";
      
      protected var §0!2§:int = 8;
      
      protected var §[^§:Boolean = false;
      
      protected var §3T§:int = -1;
      
      protected var §'H§:int = -1;
      
      protected var §0h§:int = -1;
      
      protected var §#P§:Boolean = false;
      
      protected var §%!E§:Boolean = false;
      
      protected var §"c§:Date;
      
      protected var §4f§:uint;
      
      protected var §5S§:Boolean = false;
      
      protected var §[B§:uint = 0;
      
      protected var §>e§:uint = 0;
      
      protected var § o§:String = "";
      
      protected var §;B§:String;
      
      protected var §;!"§:Dictionary;
      
      protected var §-h§:String = "";
      
      protected var §0`§:ByteArray;
      
      var §;!I§:uint;
      
      var §59§:uint = 0;
      
      var §;!Q§:uint = 0;
      
      protected var §@%§:Boolean = false;
      
      protected var §1S§:Function;
      
      public function §=F§(param1:String = "utf-8")
      {
         this.§1S§ = this.§^N§;
         super();
         this.§;B§ = param1;
         this.§;!"§ = new Dictionary();
         this.§0`§ = new ByteArray();
         this.§0`§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §%n§() : Date
      {
         return this.§"c§;
      }
      
      public function set §%n§(param1:Date) : void
      {
         this.§"c§ = param1 != null ? param1 : new Date();
      }
      
      public function get §26§() : String
      {
         return this.§ o§;
      }
      
      public function set §26§(param1:String) : void
      {
         this.§ o§ = param1;
      }
      
      function get §'!>§() : Boolean
      {
         return this.§#P§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§@%§)
         {
            this.uncompress();
         }
         return this.§0`§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§!!N§(param1);
      }
      
      public function §!!N§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§0`§,0,param1.length);
            this.§;!I§ = §;U§.§++§(this.§0`§);
            this.§5S§ = false;
         }
         else
         {
            this.§0`§.length = 0;
            this.§0`§.position = 0;
            this.§@%§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§;!Q§ = this.§59§ = this.§0`§.length;
         }
      }
      
      public function get §1!%§() : String
      {
         return this.§+[§;
      }
      
      public function get §'n§() : uint
      {
         return this.§59§;
      }
      
      public function get §-d§() : uint
      {
         return this.§;!Q§;
      }
      
      public function §2o§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§@%§)
         {
            this.uncompress();
         }
         this.§0`§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§0`§.readUTFBytes(this.§0`§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§0`§.readMultiByte(this.§0`§.bytesAvailable,param2);
         }
         this.§0`§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §3o§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§0`§.length = 0;
         this.§0`§.position = 0;
         this.§@%§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§0`§.writeUTFBytes(param1);
            }
            else
            {
               this.§0`§.writeMultiByte(param1,param2);
            }
            this.§;!I§ = §;U§.§++§(this.§0`§);
            this.§5S§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§;!Q§ = this.§59§ = this.§0`§.length;
         }
      }
      
      public function §?!E§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§?^§.§ e§);
            param1.writeShort(this.§^C§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§?^§.§5"§);
         }
         param1.writeShort(this.§^C§ << 8 | 20);
         param1.writeShort(this.§;B§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§@%§ ? int(§"i§) : int(§1_§));
         var _loc5_:Date = this.§"c§ != null ? this.§"c§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§;!I§);
         param1.writeUnsignedInt(this.§59§);
         param1.writeUnsignedInt(this.§;!Q§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§;B§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§ o§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§ o§,this.§;B§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§;!"§)
         {
            if((_loc15_ = this.§;!"§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§5S§)
            {
               if(_loc16_ = this.§@%§)
               {
                  this.uncompress();
               }
               this.§4f§ = §;U§.§=m§(this.§0`§,0,this.§0`§.length);
               this.§5S§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§4f§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§-h§.length > 0)
         {
            if(this.§;B§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§-h§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§-h§,this.§;B§);
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
         if(!param3 && this.§0`§.length > 0)
         {
            if(this.§@%§)
            {
               if(§3i§ || §0X§)
               {
                  _loc13_ = this.§0`§.length;
                  param1.writeBytes(this.§0`§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§0`§.length - 6;
                  param1.writeBytes(this.§0`§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§0`§.length;
               param1.writeBytes(this.§0`§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§1S§(param1))
         {
         }
         return this.§1S§ === this.§<$§;
      }
      
      protected function §<$§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §^N§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§&Y§(param1);
            if(this.§[B§ + this.§>e§ > 0)
            {
               this.§1S§ = this.§"^§;
            }
            else
            {
               this.§1S§ = this.§<+§;
            }
            return true;
         }
         return false;
      }
      
      protected function §"^§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§[B§ + this.§>e§)
         {
            this.§8%§(param1);
            this.§1S§ = this.§<+§;
            return true;
         }
         return false;
      }
      
      protected function §<+§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§#P§)
         {
            this.§1S§ = this.§<$§;
            _loc2_ = false;
         }
         else if(this.§59§ == 0)
         {
            this.§1S§ = this.§<$§;
         }
         else if(param1.bytesAvailable >= this.§59§)
         {
            this.§5!6§(param1);
            this.§1S§ = this.§<$§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §&Y§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§^C§ = _loc2_ >> 8;
         this.§+[§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§0!2§ = param1.readUnsignedShort();
         this.§[^§ = (_loc3_ & 1) !== 0;
         this.§#P§ = (_loc3_ & 8) !== 0;
         this.§%!E§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§;B§ = "utf-8";
         }
         if(this.§0!2§ === §[7§)
         {
            this.§3T§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§'H§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§0!2§ === §"i§)
         {
            this.§0h§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§"c§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§;!I§ = param1.readUnsignedInt();
         this.§59§ = param1.readUnsignedInt();
         this.§;!Q§ = param1.readUnsignedInt();
         this.§[B§ = param1.readUnsignedShort();
         this.§>e§ = param1.readUnsignedShort();
      }
      
      protected function §8%§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§;B§ == "utf-8")
         {
            this.§ o§ = param1.readUTFBytes(this.§[B§);
         }
         else
         {
            this.§ o§ = param1.readMultiByte(this.§[B§,this.§;B§);
         }
         var _loc2_:uint = this.§>e§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§ o§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§4f§ = param1.readUnsignedInt();
               this.§5S§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§;!"§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §5!6§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§0!2§ === §"i§ && !this.§[^§)
         {
            if(§3i§ || §0X§)
            {
               param1.readBytes(this.§0`§,0,this.§59§);
            }
            else
            {
               if(!this.§5S§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§0`§.writeByte(120);
               _loc2_ = ~this.§0h§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§0`§.writeByte(_loc2_);
               param1.readBytes(this.§0`§,2,this.§59§);
               this.§0`§.position = this.§0`§.length;
               this.§0`§.writeUnsignedInt(this.§4f§);
            }
            this.§@%§ = true;
         }
         else
         {
            if(this.§0!2§ != §1_§)
            {
               throw new Error("Compression method " + this.§0!2§ + " is not supported.");
            }
            param1.readBytes(this.§0`§,0,this.§59§);
            this.§@%§ = false;
         }
         this.§0`§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§@%§)
         {
            if(this.§0`§.length > 0)
            {
               this.§0`§.position = 0;
               this.§;!Q§ = this.§0`§.length;
               if(§0X§)
               {
                  this.§0`§.deflate();
                  this.§59§ = this.§0`§.length;
               }
               else if(§3i§)
               {
                  this.§0`§.compress.apply(this.§0`§,["deflate"]);
                  this.§59§ = this.§0`§.length;
               }
               else
               {
                  this.§0`§.compress();
                  this.§59§ = this.§0`§.length - 6;
               }
               this.§0`§.position = 0;
               this.§@%§ = true;
            }
            else
            {
               this.§59§ = 0;
               this.§;!Q§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§@%§ && this.§0`§.length > 0)
         {
            this.§0`§.position = 0;
            if(§0X§)
            {
               this.§0`§.inflate();
            }
            else if(§3i§)
            {
               this.§0`§.uncompress.apply(this.§0`§,["deflate"]);
            }
            else
            {
               this.§0`§.uncompress();
            }
            this.§0`§.position = 0;
            this.§@%§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§ o§ + "\n  date:" + this.§"c§ + "\n  sizeCompressed:" + this.§59§ + "\n  sizeUncompressed:" + this.§;!Q§ + "\n  versionHost:" + this.§^C§ + "\n  versionNumber:" + this.§+[§ + "\n  compressionMethod:" + this.§0!2§ + "\n  encrypted:" + this.§[^§ + "\n  hasDataDescriptor:" + this.§#P§ + "\n  hasCompressedPatchedData:" + this.§%!E§ + "\n  filenameEncoding:" + this.§;B§ + "\n  crc32:" + this.§;!I§.toString(16) + "\n  adler32:" + this.§4f§.toString(16);
      }
   }
}

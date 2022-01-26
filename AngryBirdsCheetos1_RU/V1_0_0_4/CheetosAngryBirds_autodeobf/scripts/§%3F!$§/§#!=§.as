package §?!$§
{
   import §=d§.§89§;
   import flash.utils.*;
   
   public class §#!=§
   {
      
      public static const §+3§:int = 0;
      
      public static const §6!G§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §]!;§:int = 6;
      
      public static const §9A§:int = 7;
      
      public static const §04§:int = 8;
      
      public static const §3!X§:int = 9;
      
      public static const §,#§:int = 10;
      
      protected static var §+!6§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §]"§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §%S§:int = 0;
      
      protected var §=;§:String = "2.0";
      
      protected var §`m§:int = 8;
      
      protected var § !U§:Boolean = false;
      
      protected var §?M§:int = -1;
      
      protected var §9p§:int = -1;
      
      protected var §9s§:int = -1;
      
      protected var §9F§:Boolean = false;
      
      protected var §?G§:Boolean = false;
      
      protected var §%5§:Date;
      
      protected var §0!H§:uint;
      
      protected var §=G§:Boolean = false;
      
      protected var §#h§:uint = 0;
      
      protected var §"!6§:uint = 0;
      
      protected var §[!U§:String = "";
      
      protected var §<f§:String;
      
      protected var §,z§:Dictionary;
      
      protected var §#!"§:String = "";
      
      protected var §'I§:ByteArray;
      
      var §<!§:uint;
      
      var §[!6§:uint = 0;
      
      var §'K§:uint = 0;
      
      protected var §^>§:Boolean = false;
      
      protected var §>M§:Function;
      
      public function §#!=§(param1:String = "utf-8")
      {
         this.§>M§ = this.§=6§;
         super();
         this.§<f§ = param1;
         this.§,z§ = new Dictionary();
         this.§'I§ = new ByteArray();
         this.§'I§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §'a§() : Date
      {
         return this.§%5§;
      }
      
      public function set §'a§(param1:Date) : void
      {
         this.§%5§ = param1 != null ? param1 : new Date();
      }
      
      public function get §!!M§() : String
      {
         return this.§[!U§;
      }
      
      public function set §!!M§(param1:String) : void
      {
         this.§[!U§ = param1;
      }
      
      function get §?f§() : Boolean
      {
         return this.§9F§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§^>§)
         {
            this.uncompress();
         }
         return this.§'I§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§&4§(param1);
      }
      
      public function §&4§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§'I§,0,param1.length);
            this.§<!§ = §89§.§@]§(this.§'I§);
            this.§=G§ = false;
         }
         else
         {
            this.§'I§.length = 0;
            this.§'I§.position = 0;
            this.§^>§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§'K§ = this.§[!6§ = this.§'I§.length;
         }
      }
      
      public function get §=!3§() : String
      {
         return this.§=;§;
      }
      
      public function get §+c§() : uint
      {
         return this.§[!6§;
      }
      
      public function get §,!%§() : uint
      {
         return this.§'K§;
      }
      
      public function §5!?§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§^>§)
         {
            this.uncompress();
         }
         this.§'I§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§'I§.readUTFBytes(this.§'I§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§'I§.readMultiByte(this.§'I§.bytesAvailable,param2);
         }
         this.§'I§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §1p§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§'I§.length = 0;
         this.§'I§.position = 0;
         this.§^>§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§'I§.writeUTFBytes(param1);
            }
            else
            {
               this.§'I§.writeMultiByte(param1,param2);
            }
            this.§<!§ = §89§.§@]§(this.§'I§);
            this.§=G§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§'K§ = this.§[!6§ = this.§'I§.length;
         }
      }
      
      public function § !6§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§"X§.§2R§);
            param1.writeShort(this.§%S§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§"X§.§#V§);
         }
         param1.writeShort(this.§%S§ << 8 | 20);
         param1.writeShort(this.§<f§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§^>§ ? int(§04§) : int(§+3§));
         var _loc5_:Date = this.§%5§ != null ? this.§%5§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§<!§);
         param1.writeUnsignedInt(this.§[!6§);
         param1.writeUnsignedInt(this.§'K§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§<f§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§[!U§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§[!U§,this.§<f§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§,z§)
         {
            if((_loc15_ = this.§,z§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§=G§)
            {
               if(_loc16_ = this.§^>§)
               {
                  this.uncompress();
               }
               this.§0!H§ = §89§.§<!]§(this.§'I§,0,this.§'I§.length);
               this.§=G§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§0!H§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§#!"§.length > 0)
         {
            if(this.§<f§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§#!"§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§#!"§,this.§<f§);
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
         if(!param3 && this.§'I§.length > 0)
         {
            if(this.§^>§)
            {
               if(§+!6§ || §]"§)
               {
                  _loc13_ = this.§'I§.length;
                  param1.writeBytes(this.§'I§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§'I§.length - 6;
                  param1.writeBytes(this.§'I§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§'I§.length;
               param1.writeBytes(this.§'I§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§>M§(param1))
         {
         }
         return this.§>M§ === this.§ m§;
      }
      
      protected function § m§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §=6§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§<!#§(param1);
            if(this.§#h§ + this.§"!6§ > 0)
            {
               this.§>M§ = this.§,g§;
            }
            else
            {
               this.§>M§ = this.§6q§;
            }
            return true;
         }
         return false;
      }
      
      protected function §,g§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§#h§ + this.§"!6§)
         {
            this.§#&§(param1);
            this.§>M§ = this.§6q§;
            return true;
         }
         return false;
      }
      
      protected function §6q§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§9F§)
         {
            this.§>M§ = this.§ m§;
            _loc2_ = false;
         }
         else if(this.§[!6§ == 0)
         {
            this.§>M§ = this.§ m§;
         }
         else if(param1.bytesAvailable >= this.§[!6§)
         {
            this.§8=§(param1);
            this.§>M§ = this.§ m§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §<!#§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§%S§ = _loc2_ >> 8;
         this.§=;§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§`m§ = param1.readUnsignedShort();
         this.§ !U§ = (_loc3_ & 1) !== 0;
         this.§9F§ = (_loc3_ & 8) !== 0;
         this.§?G§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§<f§ = "utf-8";
         }
         if(this.§`m§ === §]!;§)
         {
            this.§?M§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§9p§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§`m§ === §04§)
         {
            this.§9s§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§%5§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§<!§ = param1.readUnsignedInt();
         this.§[!6§ = param1.readUnsignedInt();
         this.§'K§ = param1.readUnsignedInt();
         this.§#h§ = param1.readUnsignedShort();
         this.§"!6§ = param1.readUnsignedShort();
      }
      
      protected function §#&§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§<f§ == "utf-8")
         {
            this.§[!U§ = param1.readUTFBytes(this.§#h§);
         }
         else
         {
            this.§[!U§ = param1.readMultiByte(this.§#h§,this.§<f§);
         }
         var _loc2_:uint = this.§"!6§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§[!U§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§0!H§ = param1.readUnsignedInt();
               this.§=G§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§,z§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §8=§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§`m§ === §04§ && !this.§ !U§)
         {
            if(§+!6§ || §]"§)
            {
               param1.readBytes(this.§'I§,0,this.§[!6§);
            }
            else
            {
               if(!this.§=G§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§'I§.writeByte(120);
               _loc2_ = ~this.§9s§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§'I§.writeByte(_loc2_);
               param1.readBytes(this.§'I§,2,this.§[!6§);
               this.§'I§.position = this.§'I§.length;
               this.§'I§.writeUnsignedInt(this.§0!H§);
            }
            this.§^>§ = true;
         }
         else
         {
            if(this.§`m§ != §+3§)
            {
               throw new Error("Compression method " + this.§`m§ + " is not supported.");
            }
            param1.readBytes(this.§'I§,0,this.§[!6§);
            this.§^>§ = false;
         }
         this.§'I§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§^>§)
         {
            if(this.§'I§.length > 0)
            {
               this.§'I§.position = 0;
               this.§'K§ = this.§'I§.length;
               if(§]"§)
               {
                  this.§'I§.deflate();
                  this.§[!6§ = this.§'I§.length;
               }
               else if(§+!6§)
               {
                  this.§'I§.compress.apply(this.§'I§,["deflate"]);
                  this.§[!6§ = this.§'I§.length;
               }
               else
               {
                  this.§'I§.compress();
                  this.§[!6§ = this.§'I§.length - 6;
               }
               this.§'I§.position = 0;
               this.§^>§ = true;
            }
            else
            {
               this.§[!6§ = 0;
               this.§'K§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§^>§ && this.§'I§.length > 0)
         {
            this.§'I§.position = 0;
            if(§]"§)
            {
               this.§'I§.inflate();
            }
            else if(§+!6§)
            {
               this.§'I§.uncompress.apply(this.§'I§,["deflate"]);
            }
            else
            {
               this.§'I§.uncompress();
            }
            this.§'I§.position = 0;
            this.§^>§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§[!U§ + "\n  date:" + this.§%5§ + "\n  sizeCompressed:" + this.§[!6§ + "\n  sizeUncompressed:" + this.§'K§ + "\n  versionHost:" + this.§%S§ + "\n  versionNumber:" + this.§=;§ + "\n  compressionMethod:" + this.§`m§ + "\n  encrypted:" + this.§ !U§ + "\n  hasDataDescriptor:" + this.§9F§ + "\n  hasCompressedPatchedData:" + this.§?G§ + "\n  filenameEncoding:" + this.§<f§ + "\n  crc32:" + this.§<!§.toString(16) + "\n  adler32:" + this.§0!H§.toString(16);
      }
   }
}

package §1§#2
{
   import §4!f§.§+>§;
   import flash.utils.*;
   
   public class §%"e§
   {
      
      public static const §!"e§:int = 0;
      
      public static const §&"v§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §8!D§:int = 6;
      
      public static const §<"r§:int = 7;
      
      public static const §1"z§:int = 8;
      
      public static const §=#&§:int = 9;
      
      public static const §%"'§:int = 10;
      
      protected static var §@H§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §,">§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §5c§:int = 0;
      
      protected var §<@§:String = "2.0";
      
      protected var §4">§:int = 8;
      
      protected var §'!9§:Boolean = false;
      
      protected var §]!I§:int = -1;
      
      protected var §<!%§:int = -1;
      
      protected var §<g§:int = -1;
      
      protected var §^"L§:Boolean = false;
      
      protected var §=§:Boolean = false;
      
      protected var §,!_§:Date;
      
      protected var §1"&§:uint;
      
      protected var §[!7§:Boolean = false;
      
      protected var §1"U§:uint = 0;
      
      protected var §,"O§:uint = 0;
      
      protected var §1"_§:String = "";
      
      protected var §&G§:String;
      
      protected var §?"V§:Dictionary;
      
      protected var §1#7§:String = "";
      
      protected var §4I§:ByteArray;
      
      var §`#0§:uint;
      
      var §?'§:uint = 0;
      
      var §^!W§:uint = 0;
      
      protected var §%"G§:Boolean = false;
      
      protected var §5"3§:Function;
      
      public function §%"e§(param1:String = "utf-8")
      {
         this.§5"3§ = this.§]G§;
         super();
         this.§&G§ = param1;
         this.§?"V§ = new Dictionary();
         this.§4I§ = new ByteArray();
         this.§4I§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get date() : Date
      {
         return this.§,!_§;
      }
      
      public function set date(param1:Date) : void
      {
         this.§,!_§ = param1 != null ? param1 : new Date();
      }
      
      public function get §0!q§() : String
      {
         return this.§1"_§;
      }
      
      public function set §0!q§(param1:String) : void
      {
         this.§1"_§ = param1;
      }
      
      function get §]!X§() : Boolean
      {
         return this.§^"L§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§%"G§)
         {
            this.uncompress();
         }
         return this.§4I§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§-"S§(param1);
      }
      
      public function §-"S§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§4I§,0,param1.length);
            this.§`#0§ = §+>§.§9!!§(this.§4I§);
            this.§[!7§ = false;
         }
         else
         {
            this.§4I§.length = 0;
            this.§4I§.position = 0;
            this.§%"G§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§^!W§ = this.§?'§ = this.§4I§.length;
         }
      }
      
      public function get §9"G§() : String
      {
         return this.§<@§;
      }
      
      public function get §9">§() : uint
      {
         return this.§?'§;
      }
      
      public function get §<#6§() : uint
      {
         return this.§^!W§;
      }
      
      public function §5!o§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§%"G§)
         {
            this.uncompress();
         }
         this.§4I§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§4I§.readUTFBytes(this.§4I§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§4I§.readMultiByte(this.§4I§.bytesAvailable,param2);
         }
         this.§4I§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §-<§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§4I§.length = 0;
         this.§4I§.position = 0;
         this.§%"G§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§4I§.writeUTFBytes(param1);
            }
            else
            {
               this.§4I§.writeMultiByte(param1,param2);
            }
            this.§`#0§ = §+>§.§9!!§(this.§4I§);
            this.§[!7§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§^!W§ = this.§?'§ = this.§4I§.length;
         }
      }
      
      public function §8U§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§1#§.§`_§);
            param1.writeShort(this.§5c§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§1#§.§,"8§);
         }
         param1.writeShort(this.§5c§ << 8 | 20);
         param1.writeShort(this.§&G§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§%"G§ ? int(§1"z§) : int(§!"e§));
         var _loc5_:Date = this.§,!_§ != null ? this.§,!_§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§`#0§);
         param1.writeUnsignedInt(this.§?'§);
         param1.writeUnsignedInt(this.§^!W§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§&G§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§1"_§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§1"_§,this.§&G§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§?"V§)
         {
            if((_loc15_ = this.§?"V§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§[!7§)
            {
               if(_loc16_ = this.§%"G§)
               {
                  this.uncompress();
               }
               this.§1"&§ = §+>§.§"+§(this.§4I§,0,this.§4I§.length);
               this.§[!7§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§1"&§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§1#7§.length > 0)
         {
            if(this.§&G§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§1#7§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§1#7§,this.§&G§);
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
         if(!param3 && this.§4I§.length > 0)
         {
            if(this.§%"G§)
            {
               if(§@H§ || §,">§)
               {
                  _loc13_ = this.§4I§.length;
                  param1.writeBytes(this.§4I§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§4I§.length - 6;
                  param1.writeBytes(this.§4I§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§4I§.length;
               param1.writeBytes(this.§4I§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§5"3§(param1))
         {
         }
         return this.§5"3§ === this.§5"4§;
      }
      
      protected function §5"4§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §]G§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§+"A§(param1);
            if(this.§1"U§ + this.§,"O§ > 0)
            {
               this.§5"3§ = this.§0a§;
            }
            else
            {
               this.§5"3§ = this.§@s§;
            }
            return true;
         }
         return false;
      }
      
      protected function §0a§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§1"U§ + this.§,"O§)
         {
            this.§2e§(param1);
            this.§5"3§ = this.§@s§;
            return true;
         }
         return false;
      }
      
      protected function §@s§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§^"L§)
         {
            this.§5"3§ = this.§5"4§;
            _loc2_ = false;
         }
         else if(this.§?'§ == 0)
         {
            this.§5"3§ = this.§5"4§;
         }
         else if(param1.bytesAvailable >= this.§?'§)
         {
            this.§8!N§(param1);
            this.§5"3§ = this.§5"4§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §+"A§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§5c§ = _loc2_ >> 8;
         this.§<@§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§4">§ = param1.readUnsignedShort();
         this.§'!9§ = (_loc3_ & 1) !== 0;
         this.§^"L§ = (_loc3_ & 8) !== 0;
         this.§=§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§&G§ = "utf-8";
         }
         if(this.§4">§ === §8!D§)
         {
            this.§]!I§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§<!%§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§4">§ === §1"z§)
         {
            this.§<g§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§,!_§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§`#0§ = param1.readUnsignedInt();
         this.§?'§ = param1.readUnsignedInt();
         this.§^!W§ = param1.readUnsignedInt();
         this.§1"U§ = param1.readUnsignedShort();
         this.§,"O§ = param1.readUnsignedShort();
      }
      
      protected function §2e§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§&G§ == "utf-8")
         {
            this.§1"_§ = param1.readUTFBytes(this.§1"U§);
         }
         else
         {
            this.§1"_§ = param1.readMultiByte(this.§1"U§,this.§&G§);
         }
         var _loc2_:uint = this.§,"O§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§1"_§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§1"&§ = param1.readUnsignedInt();
               this.§[!7§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§?"V§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §8!N§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§4">§ === §1"z§ && !this.§'!9§)
         {
            if(§@H§ || §,">§)
            {
               param1.readBytes(this.§4I§,0,this.§?'§);
            }
            else
            {
               if(!this.§[!7§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§4I§.writeByte(120);
               _loc2_ = ~this.§<g§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§4I§.writeByte(_loc2_);
               param1.readBytes(this.§4I§,2,this.§?'§);
               this.§4I§.position = this.§4I§.length;
               this.§4I§.writeUnsignedInt(this.§1"&§);
            }
            this.§%"G§ = true;
         }
         else
         {
            if(this.§4">§ != §!"e§)
            {
               throw new Error("Compression method " + this.§4">§ + " is not supported.");
            }
            param1.readBytes(this.§4I§,0,this.§?'§);
            this.§%"G§ = false;
         }
         this.§4I§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§%"G§)
         {
            if(this.§4I§.length > 0)
            {
               this.§4I§.position = 0;
               this.§^!W§ = this.§4I§.length;
               if(§,">§)
               {
                  this.§4I§.deflate();
                  this.§?'§ = this.§4I§.length;
               }
               else if(§@H§)
               {
                  this.§4I§.compress.apply(this.§4I§,["deflate"]);
                  this.§?'§ = this.§4I§.length;
               }
               else
               {
                  this.§4I§.compress();
                  this.§?'§ = this.§4I§.length - 6;
               }
               this.§4I§.position = 0;
               this.§%"G§ = true;
            }
            else
            {
               this.§?'§ = 0;
               this.§^!W§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§%"G§ && this.§4I§.length > 0)
         {
            this.§4I§.position = 0;
            if(§,">§)
            {
               this.§4I§.inflate();
            }
            else if(§@H§)
            {
               this.§4I§.uncompress.apply(this.§4I§,["deflate"]);
            }
            else
            {
               this.§4I§.uncompress();
            }
            this.§4I§.position = 0;
            this.§%"G§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§1"_§ + "\n  date:" + this.§,!_§ + "\n  sizeCompressed:" + this.§?'§ + "\n  sizeUncompressed:" + this.§^!W§ + "\n  versionHost:" + this.§5c§ + "\n  versionNumber:" + this.§<@§ + "\n  compressionMethod:" + this.§4">§ + "\n  encrypted:" + this.§'!9§ + "\n  hasDataDescriptor:" + this.§^"L§ + "\n  hasCompressedPatchedData:" + this.§=§ + "\n  filenameEncoding:" + this.§&G§ + "\n  crc32:" + this.§`#0§.toString(16) + "\n  adler32:" + this.§1"&§.toString(16);
      }
   }
}

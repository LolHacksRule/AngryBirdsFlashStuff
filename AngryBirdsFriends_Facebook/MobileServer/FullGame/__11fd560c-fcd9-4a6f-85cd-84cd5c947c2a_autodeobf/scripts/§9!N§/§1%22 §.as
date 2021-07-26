package §9!N§
{
   import §8"3§.§@!r§;
   import flash.utils.*;
   
   public class §1" §
   {
      
      public static const §>`§:int = 0;
      
      public static const §`![§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §4#Y§:int = 6;
      
      public static const §2!A§:int = 7;
      
      public static const §&!j§:int = 8;
      
      public static const §-#v§:int = 9;
      
      public static const §@#D§:int = 10;
      
      protected static var §#"U§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §-#J§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §%!5§:int = 0;
      
      protected var §'!6§:String = "2.0";
      
      protected var §[#e§:int = 8;
      
      protected var §8!j§:Boolean = false;
      
      protected var §@#@§:int = -1;
      
      protected var §#W§:int = -1;
      
      protected var §"!V§:int = -1;
      
      protected var §-!Y§:Boolean = false;
      
      protected var §9I§:Boolean = false;
      
      protected var §=_§:Date;
      
      protected var §<'§:uint;
      
      protected var §<"i§:Boolean = false;
      
      protected var §<$'§:uint = 0;
      
      protected var §>"Q§:uint = 0;
      
      protected var §5$,§:String = "";
      
      protected var §0"l§:String;
      
      protected var §%]§:Dictionary;
      
      protected var §&# §:String = "";
      
      protected var § "8§:ByteArray;
      
      var §]!?§:uint;
      
      var §^#r§:uint = 0;
      
      var § Q§:uint = 0;
      
      protected var §=!y§:Boolean = false;
      
      protected var §;#M§:Function;
      
      public function §1" §(param1:String = "utf-8")
      {
         this.§;#M§ = this.§5!-§;
         super();
         this.§0"l§ = param1;
         this.§%]§ = new Dictionary();
         this.§ "8§ = new ByteArray();
         this.§ "8§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §14§() : Date
      {
         return this.§=_§;
      }
      
      public function set §14§(param1:Date) : void
      {
         this.§=_§ = param1 != null ? param1 : new Date();
      }
      
      public function get filename() : String
      {
         return this.§5$,§;
      }
      
      public function set filename(param1:String) : void
      {
         this.§5$,§ = param1;
      }
      
      function get §@"7§() : Boolean
      {
         return this.§-!Y§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§=!y§)
         {
            this.uncompress();
         }
         return this.§ "8§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§7C§(param1);
      }
      
      public function §7C§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§ "8§,0,param1.length);
            this.§]!?§ = §@!r§.§1#&§(this.§ "8§);
            this.§<"i§ = false;
         }
         else
         {
            this.§ "8§.length = 0;
            this.§ "8§.position = 0;
            this.§=!y§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§ Q§ = this.§^#r§ = this.§ "8§.length;
         }
      }
      
      public function get §"!p§() : String
      {
         return this.§'!6§;
      }
      
      public function get §-y§() : uint
      {
         return this.§^#r§;
      }
      
      public function get §[#F§() : uint
      {
         return this.§ Q§;
      }
      
      public function §<"N§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§=!y§)
         {
            this.uncompress();
         }
         this.§ "8§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§ "8§.readUTFBytes(this.§ "8§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§ "8§.readMultiByte(this.§ "8§.bytesAvailable,param2);
         }
         this.§ "8§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §,$ §(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§ "8§.length = 0;
         this.§ "8§.position = 0;
         this.§=!y§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§ "8§.writeUTFBytes(param1);
            }
            else
            {
               this.§ "8§.writeMultiByte(param1,param2);
            }
            this.§]!?§ = §@!r§.§1#&§(this.§ "8§);
            this.§<"i§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§ Q§ = this.§^#r§ = this.§ "8§.length;
         }
      }
      
      public function §`!I§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§["]§.§6j§);
            param1.writeShort(this.§%!5§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§["]§.§8!m§);
         }
         param1.writeShort(this.§%!5§ << 8 | 20);
         param1.writeShort(this.§0"l§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§=!y§ ? int(§&!j§) : int(§>`§));
         var _loc5_:Date = this.§=_§ != null ? this.§=_§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§]!?§);
         param1.writeUnsignedInt(this.§^#r§);
         param1.writeUnsignedInt(this.§ Q§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§0"l§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§5$,§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§5$,§,this.§0"l§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§%]§)
         {
            if((_loc15_ = this.§%]§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§<"i§)
            {
               if(_loc16_ = this.§=!y§)
               {
                  this.uncompress();
               }
               this.§<'§ = §@!r§.§##b§(this.§ "8§,0,this.§ "8§.length);
               this.§<"i§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§<'§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§&# §.length > 0)
         {
            if(this.§0"l§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§&# §);
            }
            else
            {
               _loc8_.writeMultiByte(this.§&# §,this.§0"l§);
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
         if(!param3 && this.§ "8§.length > 0)
         {
            if(this.§=!y§)
            {
               if(§#"U§ || §-#J§)
               {
                  _loc13_ = this.§ "8§.length;
                  param1.writeBytes(this.§ "8§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§ "8§.length - 6;
                  param1.writeBytes(this.§ "8§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§ "8§.length;
               param1.writeBytes(this.§ "8§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§;#M§(param1))
         {
         }
         return this.§;#M§ === this.§'<§;
      }
      
      protected function §'<§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §5!-§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§'!I§(param1);
            if(this.§<$'§ + this.§>"Q§ > 0)
            {
               this.§;#M§ = this.§>#H§;
            }
            else
            {
               this.§;#M§ = this.§1! §;
            }
            return true;
         }
         return false;
      }
      
      protected function §>#H§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§<$'§ + this.§>"Q§)
         {
            this.§@"N§(param1);
            this.§;#M§ = this.§1! §;
            return true;
         }
         return false;
      }
      
      protected function §1! §(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§-!Y§)
         {
            this.§;#M§ = this.§'<§;
            _loc2_ = false;
         }
         else if(this.§^#r§ == 0)
         {
            this.§;#M§ = this.§'<§;
         }
         else if(param1.bytesAvailable >= this.§^#r§)
         {
            this.§0G§(param1);
            this.§;#M§ = this.§'<§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §'!I§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§%!5§ = _loc2_ >> 8;
         this.§'!6§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§[#e§ = param1.readUnsignedShort();
         this.§8!j§ = (_loc3_ & 1) !== 0;
         this.§-!Y§ = (_loc3_ & 8) !== 0;
         this.§9I§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§0"l§ = "utf-8";
         }
         if(this.§[#e§ === §4#Y§)
         {
            this.§@#@§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§#W§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§[#e§ === §&!j§)
         {
            this.§"!V§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§=_§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§]!?§ = param1.readUnsignedInt();
         this.§^#r§ = param1.readUnsignedInt();
         this.§ Q§ = param1.readUnsignedInt();
         this.§<$'§ = param1.readUnsignedShort();
         this.§>"Q§ = param1.readUnsignedShort();
      }
      
      protected function §@"N§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§0"l§ == "utf-8")
         {
            this.§5$,§ = param1.readUTFBytes(this.§<$'§);
         }
         else
         {
            this.§5$,§ = param1.readMultiByte(this.§<$'§,this.§0"l§);
         }
         var _loc2_:uint = this.§>"Q§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§5$,§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§<'§ = param1.readUnsignedInt();
               this.§<"i§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§%]§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §0G§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§[#e§ === §&!j§ && !this.§8!j§)
         {
            if(§#"U§ || §-#J§)
            {
               param1.readBytes(this.§ "8§,0,this.§^#r§);
            }
            else
            {
               if(!this.§<"i§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§ "8§.writeByte(120);
               _loc2_ = ~this.§"!V§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§ "8§.writeByte(_loc2_);
               param1.readBytes(this.§ "8§,2,this.§^#r§);
               this.§ "8§.position = this.§ "8§.length;
               this.§ "8§.writeUnsignedInt(this.§<'§);
            }
            this.§=!y§ = true;
         }
         else
         {
            if(this.§[#e§ != §>`§)
            {
               throw new Error("Compression method " + this.§[#e§ + " is not supported.");
            }
            param1.readBytes(this.§ "8§,0,this.§^#r§);
            this.§=!y§ = false;
         }
         this.§ "8§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§=!y§)
         {
            if(this.§ "8§.length > 0)
            {
               this.§ "8§.position = 0;
               this.§ Q§ = this.§ "8§.length;
               if(§-#J§)
               {
                  this.§ "8§.deflate();
                  this.§^#r§ = this.§ "8§.length;
               }
               else if(§#"U§)
               {
                  this.§ "8§.compress.apply(this.§ "8§,["deflate"]);
                  this.§^#r§ = this.§ "8§.length;
               }
               else
               {
                  this.§ "8§.compress();
                  this.§^#r§ = this.§ "8§.length - 6;
               }
               this.§ "8§.position = 0;
               this.§=!y§ = true;
            }
            else
            {
               this.§^#r§ = 0;
               this.§ Q§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§=!y§ && this.§ "8§.length > 0)
         {
            this.§ "8§.position = 0;
            if(§-#J§)
            {
               this.§ "8§.inflate();
            }
            else if(§#"U§)
            {
               this.§ "8§.uncompress.apply(this.§ "8§,["deflate"]);
            }
            else
            {
               this.§ "8§.uncompress();
            }
            this.§ "8§.position = 0;
            this.§=!y§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§5$,§ + "\n  date:" + this.§=_§ + "\n  sizeCompressed:" + this.§^#r§ + "\n  sizeUncompressed:" + this.§ Q§ + "\n  versionHost:" + this.§%!5§ + "\n  versionNumber:" + this.§'!6§ + "\n  compressionMethod:" + this.§[#e§ + "\n  encrypted:" + this.§8!j§ + "\n  hasDataDescriptor:" + this.§-!Y§ + "\n  hasCompressedPatchedData:" + this.§9I§ + "\n  filenameEncoding:" + this.§0"l§ + "\n  crc32:" + this.§]!?§.toString(16) + "\n  adler32:" + this.§<'§.toString(16);
      }
   }
}

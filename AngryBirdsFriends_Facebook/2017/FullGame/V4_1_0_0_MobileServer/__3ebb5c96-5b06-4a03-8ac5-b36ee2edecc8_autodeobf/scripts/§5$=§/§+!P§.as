package §5$=§
{
   import §""7§.§9"f§;
   import flash.utils.*;
   
   public class §+!P§
   {
      
      public static const §9#V§:int = 0;
      
      public static const §&"1§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §?#z§:int = 6;
      
      public static const §6#U§:int = 7;
      
      public static const override:int = 8;
      
      public static const §0!o§:int = 9;
      
      public static const § "]§:int = 10;
      
      protected static var §[";§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §>#3§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §6!n§:int = 0;
      
      protected var §1"7§:String = "2.0";
      
      protected var §-Q§:int = 8;
      
      protected var §4!M§:Boolean = false;
      
      protected var § #S§:int = -1;
      
      protected var §2!p§:int = -1;
      
      protected var §9$#§:int = -1;
      
      protected var §!#V§:Boolean = false;
      
      protected var §`"i§:Boolean = false;
      
      protected var §<#D§:Date;
      
      protected var §7"e§:uint;
      
      protected var §"#A§:Boolean = false;
      
      protected var §1!q§:uint = 0;
      
      protected var §[C§:uint = 0;
      
      protected var §;"h§:String = "";
      
      protected var §]g§:String;
      
      protected var §="T§:Dictionary;
      
      protected var §;"c§:String = "";
      
      protected var §0"6§:ByteArray;
      
      var §`! §:uint;
      
      var §5#@§:uint = 0;
      
      var §<#0§:uint = 0;
      
      protected var §1#?§:Boolean = false;
      
      protected var §&"9§:Function;
      
      public function §+!P§(param1:String = "utf-8")
      {
         this.§&"9§ = this.§7I§;
         super();
         this.§]g§ = param1;
         this.§="T§ = new Dictionary();
         this.§0"6§ = new ByteArray();
         this.§0"6§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §!!Z§() : Date
      {
         return this.§<#D§;
      }
      
      public function set §!!Z§(param1:Date) : void
      {
         this.§<#D§ = param1 != null ? param1 : new Date();
      }
      
      public function get filename() : String
      {
         return this.§;"h§;
      }
      
      public function set filename(param1:String) : void
      {
         this.§;"h§ = param1;
      }
      
      function get §8$<§() : Boolean
      {
         return this.§!#V§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§1#?§)
         {
            this.uncompress();
         }
         return this.§0"6§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§#!v§(param1);
      }
      
      public function §#!v§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§0"6§,0,param1.length);
            this.§`! § = §9"f§.§4"^§(this.§0"6§);
            this.§"#A§ = false;
         }
         else
         {
            this.§0"6§.length = 0;
            this.§0"6§.position = 0;
            this.§1#?§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§<#0§ = this.§5#@§ = this.§0"6§.length;
         }
      }
      
      public function get §!#n§() : String
      {
         return this.§1"7§;
      }
      
      public function get §7$5§() : uint
      {
         return this.§5#@§;
      }
      
      public function get §8U§() : uint
      {
         return this.§<#0§;
      }
      
      public function §6!#§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§1#?§)
         {
            this.uncompress();
         }
         this.§0"6§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§0"6§.readUTFBytes(this.§0"6§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§0"6§.readMultiByte(this.§0"6§.bytesAvailable,param2);
         }
         this.§0"6§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §<7§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§0"6§.length = 0;
         this.§0"6§.position = 0;
         this.§1#?§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§0"6§.writeUTFBytes(param1);
            }
            else
            {
               this.§0"6§.writeMultiByte(param1,param2);
            }
            this.§`! § = §9"f§.§4"^§(this.§0"6§);
            this.§"#A§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§<#0§ = this.§5#@§ = this.§0"6§.length;
         }
      }
      
      public function §&"F§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§%#v§.§3!V§);
            param1.writeShort(this.§6!n§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§%#v§.§;!B§);
         }
         param1.writeShort(this.§6!n§ << 8 | 20);
         param1.writeShort(this.§]g§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§1#?§ ? int(override) : int(§9#V§));
         var _loc5_:Date = this.§<#D§ != null ? this.§<#D§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§`! §);
         param1.writeUnsignedInt(this.§5#@§);
         param1.writeUnsignedInt(this.§<#0§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§]g§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§;"h§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§;"h§,this.§]g§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§="T§)
         {
            if((_loc15_ = this.§="T§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§"#A§)
            {
               if(_loc16_ = this.§1#?§)
               {
                  this.uncompress();
               }
               this.§7"e§ = §9"f§.§1"'§(this.§0"6§,0,this.§0"6§.length);
               this.§"#A§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§7"e§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§;"c§.length > 0)
         {
            if(this.§]g§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§;"c§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§;"c§,this.§]g§);
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
         if(!param3 && this.§0"6§.length > 0)
         {
            if(this.§1#?§)
            {
               if(§[";§ || §>#3§)
               {
                  _loc13_ = this.§0"6§.length;
                  param1.writeBytes(this.§0"6§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§0"6§.length - 6;
                  param1.writeBytes(this.§0"6§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§0"6§.length;
               param1.writeBytes(this.§0"6§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§&"9§(param1))
         {
         }
         return this.§&"9§ === this.§#!`§;
      }
      
      protected function §#!`§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §7I§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§9z§(param1);
            if(this.§1!q§ + this.§[C§ > 0)
            {
               this.§&"9§ = this.§@n§;
            }
            else
            {
               this.§&"9§ = this.§7"X§;
            }
            return true;
         }
         return false;
      }
      
      protected function §@n§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§1!q§ + this.§[C§)
         {
            this.§@$6§(param1);
            this.§&"9§ = this.§7"X§;
            return true;
         }
         return false;
      }
      
      protected function §7"X§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§!#V§)
         {
            this.§&"9§ = this.§#!`§;
            _loc2_ = false;
         }
         else if(this.§5#@§ == 0)
         {
            this.§&"9§ = this.§#!`§;
         }
         else if(param1.bytesAvailable >= this.§5#@§)
         {
            this.§&"K§(param1);
            this.§&"9§ = this.§#!`§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §9z§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§6!n§ = _loc2_ >> 8;
         this.§1"7§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§-Q§ = param1.readUnsignedShort();
         this.§4!M§ = (_loc3_ & 1) !== 0;
         this.§!#V§ = (_loc3_ & 8) !== 0;
         this.§`"i§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§]g§ = "utf-8";
         }
         if(this.§-Q§ === §?#z§)
         {
            this.§ #S§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§2!p§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§-Q§ === override)
         {
            this.§9$#§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§<#D§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§`! § = param1.readUnsignedInt();
         this.§5#@§ = param1.readUnsignedInt();
         this.§<#0§ = param1.readUnsignedInt();
         this.§1!q§ = param1.readUnsignedShort();
         this.§[C§ = param1.readUnsignedShort();
      }
      
      protected function §@$6§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§]g§ == "utf-8")
         {
            this.§;"h§ = param1.readUTFBytes(this.§1!q§);
         }
         else
         {
            this.§;"h§ = param1.readMultiByte(this.§1!q§,this.§]g§);
         }
         var _loc2_:uint = this.§[C§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§;"h§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§7"e§ = param1.readUnsignedInt();
               this.§"#A§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§="T§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §&"K§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§-Q§ === override && !this.§4!M§)
         {
            if(§[";§ || §>#3§)
            {
               param1.readBytes(this.§0"6§,0,this.§5#@§);
            }
            else
            {
               if(!this.§"#A§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§0"6§.writeByte(120);
               _loc2_ = ~this.§9$#§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§0"6§.writeByte(_loc2_);
               param1.readBytes(this.§0"6§,2,this.§5#@§);
               this.§0"6§.position = this.§0"6§.length;
               this.§0"6§.writeUnsignedInt(this.§7"e§);
            }
            this.§1#?§ = true;
         }
         else
         {
            if(this.§-Q§ != §9#V§)
            {
               throw new Error("Compression method " + this.§-Q§ + " is not supported.");
            }
            param1.readBytes(this.§0"6§,0,this.§5#@§);
            this.§1#?§ = false;
         }
         this.§0"6§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§1#?§)
         {
            if(this.§0"6§.length > 0)
            {
               this.§0"6§.position = 0;
               this.§<#0§ = this.§0"6§.length;
               if(§>#3§)
               {
                  this.§0"6§.deflate();
                  this.§5#@§ = this.§0"6§.length;
               }
               else if(§[";§)
               {
                  this.§0"6§.compress.apply(this.§0"6§,["deflate"]);
                  this.§5#@§ = this.§0"6§.length;
               }
               else
               {
                  this.§0"6§.compress();
                  this.§5#@§ = this.§0"6§.length - 6;
               }
               this.§0"6§.position = 0;
               this.§1#?§ = true;
            }
            else
            {
               this.§5#@§ = 0;
               this.§<#0§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§1#?§ && this.§0"6§.length > 0)
         {
            this.§0"6§.position = 0;
            if(§>#3§)
            {
               this.§0"6§.inflate();
            }
            else if(§[";§)
            {
               this.§0"6§.uncompress.apply(this.§0"6§,["deflate"]);
            }
            else
            {
               this.§0"6§.uncompress();
            }
            this.§0"6§.position = 0;
            this.§1#?§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§;"h§ + "\n  date:" + this.§<#D§ + "\n  sizeCompressed:" + this.§5#@§ + "\n  sizeUncompressed:" + this.§<#0§ + "\n  versionHost:" + this.§6!n§ + "\n  versionNumber:" + this.§1"7§ + "\n  compressionMethod:" + this.§-Q§ + "\n  encrypted:" + this.§4!M§ + "\n  hasDataDescriptor:" + this.§!#V§ + "\n  hasCompressedPatchedData:" + this.§`"i§ + "\n  filenameEncoding:" + this.§]g§ + "\n  crc32:" + this.§`! §.toString(16) + "\n  adler32:" + this.§7"e§.toString(16);
      }
   }
}

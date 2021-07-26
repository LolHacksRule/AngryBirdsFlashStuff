package §`!P§
{
   import §,g§.§%$-§;
   import flash.utils.*;
   
   public class §+#u§
   {
      
      public static const §6"A§:int = 0;
      
      public static const §,"Q§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §3$+§:int = 6;
      
      public static const §2"!§:int = 7;
      
      public static const § !4§:int = 8;
      
      public static const §,"@§:int = 9;
      
      public static const §3>§:int = 10;
      
      protected static var §#!S§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §`"B§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §0"A§:int = 0;
      
      protected var §]#i§:String = "2.0";
      
      protected var §@$=§:int = 8;
      
      protected var §5"_§:Boolean = false;
      
      protected var §>#o§:int = -1;
      
      protected var §6!f§:int = -1;
      
      protected var §@5§:int = -1;
      
      protected var §<?§:Boolean = false;
      
      protected var §`!O§:Boolean = false;
      
      protected var §@Y§:Date;
      
      protected var §[z§:uint;
      
      protected var §9#c§:Boolean = false;
      
      protected var §'#!§:uint = 0;
      
      protected var §,"u§:uint = 0;
      
      protected var §["`§:String = "";
      
      protected var §,#<§:String;
      
      protected var §]$4§:Dictionary;
      
      protected var §?"7§:String = "";
      
      protected var §-!0§:ByteArray;
      
      var §3!^§:uint;
      
      var §@!V§:uint = 0;
      
      var §7K§:uint = 0;
      
      protected var §,!i§:Boolean = false;
      
      protected var §#!N§:Function;
      
      public function §+#u§(param1:String = "utf-8")
      {
         this.§#!N§ = this.§ !h§;
         super();
         this.§,#<§ = param1;
         this.§]$4§ = new Dictionary();
         this.§-!0§ = new ByteArray();
         this.§-!0§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §-f§() : Date
      {
         return this.§@Y§;
      }
      
      public function set §-f§(param1:Date) : void
      {
         this.§@Y§ = param1 != null ? param1 : new Date();
      }
      
      public function get filename() : String
      {
         return this.§["`§;
      }
      
      public function set filename(param1:String) : void
      {
         this.§["`§ = param1;
      }
      
      function get §-"T§() : Boolean
      {
         return this.§<?§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§,!i§)
         {
            this.uncompress();
         }
         return this.§-!0§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§^$>§(param1);
      }
      
      public function §^$>§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§-!0§,0,param1.length);
            this.§3!^§ = §%$-§.§&"M§(this.§-!0§);
            this.§9#c§ = false;
         }
         else
         {
            this.§-!0§.length = 0;
            this.§-!0§.position = 0;
            this.§,!i§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§7K§ = this.§@!V§ = this.§-!0§.length;
         }
      }
      
      public function get §8@§() : String
      {
         return this.§]#i§;
      }
      
      public function get §;!D§() : uint
      {
         return this.§@!V§;
      }
      
      public function get §;#a§() : uint
      {
         return this.§7K§;
      }
      
      public function §>!s§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§,!i§)
         {
            this.uncompress();
         }
         this.§-!0§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§-!0§.readUTFBytes(this.§-!0§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§-!0§.readMultiByte(this.§-!0§.bytesAvailable,param2);
         }
         this.§-!0§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §4$-§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§-!0§.length = 0;
         this.§-!0§.position = 0;
         this.§,!i§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§-!0§.writeUTFBytes(param1);
            }
            else
            {
               this.§-!0§.writeMultiByte(param1,param2);
            }
            this.§3!^§ = §%$-§.§&"M§(this.§-!0§);
            this.§9#c§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§7K§ = this.§@!V§ = this.§-!0§.length;
         }
      }
      
      public function §=$<§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§%#D§.§^"J§);
            param1.writeShort(this.§0"A§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§%#D§.§<a§);
         }
         param1.writeShort(this.§0"A§ << 8 | 20);
         param1.writeShort(this.§,#<§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§,!i§ ? int(§ !4§) : int(§6"A§));
         var _loc5_:Date = this.§@Y§ != null ? this.§@Y§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§3!^§);
         param1.writeUnsignedInt(this.§@!V§);
         param1.writeUnsignedInt(this.§7K§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§,#<§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§["`§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§["`§,this.§,#<§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§]$4§)
         {
            if((_loc15_ = this.§]$4§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§9#c§)
            {
               if(_loc16_ = this.§,!i§)
               {
                  this.uncompress();
               }
               this.§[z§ = §%$-§.§ $7§(this.§-!0§,0,this.§-!0§.length);
               this.§9#c§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§[z§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§?"7§.length > 0)
         {
            if(this.§,#<§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§?"7§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§?"7§,this.§,#<§);
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
         if(!param3 && this.§-!0§.length > 0)
         {
            if(this.§,!i§)
            {
               if(§#!S§ || §`"B§)
               {
                  _loc13_ = this.§-!0§.length;
                  param1.writeBytes(this.§-!0§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§-!0§.length - 6;
                  param1.writeBytes(this.§-!0§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§-!0§.length;
               param1.writeBytes(this.§-!0§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§#!N§(param1))
         {
         }
         return this.§#!N§ === this.§]#$§;
      }
      
      protected function §]#$§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function § !h§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§%$"§(param1);
            if(this.§'#!§ + this.§,"u§ > 0)
            {
               this.§#!N§ = this.§'#m§;
            }
            else
            {
               this.§#!N§ = this.§8w§;
            }
            return true;
         }
         return false;
      }
      
      protected function §'#m§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§'#!§ + this.§,"u§)
         {
            this.§3g§(param1);
            this.§#!N§ = this.§8w§;
            return true;
         }
         return false;
      }
      
      protected function §8w§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§<?§)
         {
            this.§#!N§ = this.§]#$§;
            _loc2_ = false;
         }
         else if(this.§@!V§ == 0)
         {
            this.§#!N§ = this.§]#$§;
         }
         else if(param1.bytesAvailable >= this.§@!V§)
         {
            this.§9#W§(param1);
            this.§#!N§ = this.§]#$§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §%$"§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§0"A§ = _loc2_ >> 8;
         this.§]#i§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§@$=§ = param1.readUnsignedShort();
         this.§5"_§ = (_loc3_ & 1) !== 0;
         this.§<?§ = (_loc3_ & 8) !== 0;
         this.§`!O§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§,#<§ = "utf-8";
         }
         if(this.§@$=§ === §3$+§)
         {
            this.§>#o§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§6!f§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§@$=§ === § !4§)
         {
            this.§@5§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§@Y§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§3!^§ = param1.readUnsignedInt();
         this.§@!V§ = param1.readUnsignedInt();
         this.§7K§ = param1.readUnsignedInt();
         this.§'#!§ = param1.readUnsignedShort();
         this.§,"u§ = param1.readUnsignedShort();
      }
      
      protected function §3g§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§,#<§ == "utf-8")
         {
            this.§["`§ = param1.readUTFBytes(this.§'#!§);
         }
         else
         {
            this.§["`§ = param1.readMultiByte(this.§'#!§,this.§,#<§);
         }
         var _loc2_:uint = this.§,"u§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§["`§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§[z§ = param1.readUnsignedInt();
               this.§9#c§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§]$4§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §9#W§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§@$=§ === § !4§ && !this.§5"_§)
         {
            if(§#!S§ || §`"B§)
            {
               param1.readBytes(this.§-!0§,0,this.§@!V§);
            }
            else
            {
               if(!this.§9#c§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§-!0§.writeByte(120);
               _loc2_ = ~this.§@5§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§-!0§.writeByte(_loc2_);
               param1.readBytes(this.§-!0§,2,this.§@!V§);
               this.§-!0§.position = this.§-!0§.length;
               this.§-!0§.writeUnsignedInt(this.§[z§);
            }
            this.§,!i§ = true;
         }
         else
         {
            if(this.§@$=§ != §6"A§)
            {
               throw new Error("Compression method " + this.§@$=§ + " is not supported.");
            }
            param1.readBytes(this.§-!0§,0,this.§@!V§);
            this.§,!i§ = false;
         }
         this.§-!0§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§,!i§)
         {
            if(this.§-!0§.length > 0)
            {
               this.§-!0§.position = 0;
               this.§7K§ = this.§-!0§.length;
               if(§`"B§)
               {
                  this.§-!0§.deflate();
                  this.§@!V§ = this.§-!0§.length;
               }
               else if(§#!S§)
               {
                  this.§-!0§.compress.apply(this.§-!0§,["deflate"]);
                  this.§@!V§ = this.§-!0§.length;
               }
               else
               {
                  this.§-!0§.compress();
                  this.§@!V§ = this.§-!0§.length - 6;
               }
               this.§-!0§.position = 0;
               this.§,!i§ = true;
            }
            else
            {
               this.§@!V§ = 0;
               this.§7K§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§,!i§ && this.§-!0§.length > 0)
         {
            this.§-!0§.position = 0;
            if(§`"B§)
            {
               this.§-!0§.inflate();
            }
            else if(§#!S§)
            {
               this.§-!0§.uncompress.apply(this.§-!0§,["deflate"]);
            }
            else
            {
               this.§-!0§.uncompress();
            }
            this.§-!0§.position = 0;
            this.§,!i§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§["`§ + "\n  date:" + this.§@Y§ + "\n  sizeCompressed:" + this.§@!V§ + "\n  sizeUncompressed:" + this.§7K§ + "\n  versionHost:" + this.§0"A§ + "\n  versionNumber:" + this.§]#i§ + "\n  compressionMethod:" + this.§@$=§ + "\n  encrypted:" + this.§5"_§ + "\n  hasDataDescriptor:" + this.§<?§ + "\n  hasCompressedPatchedData:" + this.§`!O§ + "\n  filenameEncoding:" + this.§,#<§ + "\n  crc32:" + this.§3!^§.toString(16) + "\n  adler32:" + this.§[z§.toString(16);
      }
   }
}

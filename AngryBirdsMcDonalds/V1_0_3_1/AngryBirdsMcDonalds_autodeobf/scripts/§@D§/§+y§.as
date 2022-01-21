package §@D§
{
   import §>!C§.§['§;
   import flash.utils.*;
   
   public class §+y§
   {
      
      public static const §&=§:int = 0;
      
      public static const §,!%§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §@W§:int = 6;
      
      public static const §`c§:int = 7;
      
      public static const §;! §:int = 8;
      
      public static const §-!"§:int = 9;
      
      public static const §?,§:int = 10;
      
      protected static var §!o§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §[n§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §,g§:int = 0;
      
      protected var §9!D§:String = "2.0";
      
      protected var §;!Y§:int = 8;
      
      protected var §#!6§:Boolean = false;
      
      protected var §5!C§:int = -1;
      
      protected var §=!l§:int = -1;
      
      protected var §5![§:int = -1;
      
      protected var §1!O§:Boolean = false;
      
      protected var §3!j§:Boolean = false;
      
      protected var §%!T§:Date;
      
      protected var §^F§:uint;
      
      protected var §7!c§:Boolean = false;
      
      protected var §8!#§:uint = 0;
      
      protected var §+D§:uint = 0;
      
      protected var §;@§:String = "";
      
      protected var §while§:String;
      
      protected var §0!>§:Dictionary;
      
      protected var §+?§:String = "";
      
      protected var §]!Y§:ByteArray;
      
      var §"!^§:uint;
      
      var §`j§:uint = 0;
      
      var §+c§:uint = 0;
      
      protected var §%a§:Boolean = false;
      
      protected var §+!§:Function;
      
      public function §+y§(param1:String = "utf-8")
      {
         this.§+!§ = this.§1! §;
         super();
         this.§while§ = param1;
         this.§0!>§ = new Dictionary();
         this.§]!Y§ = new ByteArray();
         this.§]!Y§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §9!n§() : Date
      {
         return this.§%!T§;
      }
      
      public function set §9!n§(param1:Date) : void
      {
         this.§%!T§ = param1 != null ? param1 : new Date();
      }
      
      public function get §@!X§() : String
      {
         return this.§;@§;
      }
      
      public function set §@!X§(param1:String) : void
      {
         this.§;@§ = param1;
      }
      
      function get §7b§() : Boolean
      {
         return this.§1!O§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§%a§)
         {
            this.uncompress();
         }
         return this.§]!Y§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§?!Y§(param1);
      }
      
      public function §?!Y§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§]!Y§,0,param1.length);
            this.§"!^§ = §['§.§9!g§(this.§]!Y§);
            this.§7!c§ = false;
         }
         else
         {
            this.§]!Y§.length = 0;
            this.§]!Y§.position = 0;
            this.§%a§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§+c§ = this.§`j§ = this.§]!Y§.length;
         }
      }
      
      public function get §!!%§() : String
      {
         return this.§9!D§;
      }
      
      public function get §0!E§() : uint
      {
         return this.§`j§;
      }
      
      public function get §%!N§() : uint
      {
         return this.§+c§;
      }
      
      public function §^!+§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§%a§)
         {
            this.uncompress();
         }
         this.§]!Y§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§]!Y§.readUTFBytes(this.§]!Y§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§]!Y§.readMultiByte(this.§]!Y§.bytesAvailable,param2);
         }
         this.§]!Y§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §2!4§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§]!Y§.length = 0;
         this.§]!Y§.position = 0;
         this.§%a§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§]!Y§.writeUTFBytes(param1);
            }
            else
            {
               this.§]!Y§.writeMultiByte(param1,param2);
            }
            this.§"!^§ = §['§.§9!g§(this.§]!Y§);
            this.§7!c§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§+c§ = this.§`j§ = this.§]!Y§.length;
         }
      }
      
      public function §]#§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§-G§.§?b§);
            param1.writeShort(this.§,g§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§-G§.§+!^§);
         }
         param1.writeShort(this.§,g§ << 8 | 20);
         param1.writeShort(this.§while§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§%a§ ? int(§;! §) : int(§&=§));
         var _loc5_:Date = this.§%!T§ != null ? this.§%!T§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§"!^§);
         param1.writeUnsignedInt(this.§`j§);
         param1.writeUnsignedInt(this.§+c§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§while§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§;@§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§;@§,this.§while§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§0!>§)
         {
            if((_loc15_ = this.§0!>§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§7!c§)
            {
               if(_loc16_ = this.§%a§)
               {
                  this.uncompress();
               }
               this.§^F§ = §['§.§]!0§(this.§]!Y§,0,this.§]!Y§.length);
               this.§7!c§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§^F§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§+?§.length > 0)
         {
            if(this.§while§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§+?§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§+?§,this.§while§);
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
         if(!param3 && this.§]!Y§.length > 0)
         {
            if(this.§%a§)
            {
               if(§!o§ || §[n§)
               {
                  _loc13_ = this.§]!Y§.length;
                  param1.writeBytes(this.§]!Y§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§]!Y§.length - 6;
                  param1.writeBytes(this.§]!Y§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§]!Y§.length;
               param1.writeBytes(this.§]!Y§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§+!§(param1))
         {
         }
         return this.§+!§ === this.§%!A§;
      }
      
      protected function §%!A§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §1! §(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§@!Q§(param1);
            if(this.§8!#§ + this.§+D§ > 0)
            {
               this.§+!§ = this.§<!b§;
            }
            else
            {
               this.§+!§ = this.§5!^§;
            }
            return true;
         }
         return false;
      }
      
      protected function §<!b§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§8!#§ + this.§+D§)
         {
            this.§?!G§(param1);
            this.§+!§ = this.§5!^§;
            return true;
         }
         return false;
      }
      
      protected function §5!^§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§1!O§)
         {
            this.§+!§ = this.§%!A§;
            _loc2_ = false;
         }
         else if(this.§`j§ == 0)
         {
            this.§+!§ = this.§%!A§;
         }
         else if(param1.bytesAvailable >= this.§`j§)
         {
            this.§]!i§(param1);
            this.§+!§ = this.§%!A§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §@!Q§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§,g§ = _loc2_ >> 8;
         this.§9!D§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§;!Y§ = param1.readUnsignedShort();
         this.§#!6§ = (_loc3_ & 1) !== 0;
         this.§1!O§ = (_loc3_ & 8) !== 0;
         this.§3!j§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§while§ = "utf-8";
         }
         if(this.§;!Y§ === §@W§)
         {
            this.§5!C§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§=!l§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§;!Y§ === §;! §)
         {
            this.§5![§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§%!T§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§"!^§ = param1.readUnsignedInt();
         this.§`j§ = param1.readUnsignedInt();
         this.§+c§ = param1.readUnsignedInt();
         this.§8!#§ = param1.readUnsignedShort();
         this.§+D§ = param1.readUnsignedShort();
      }
      
      protected function §?!G§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§while§ == "utf-8")
         {
            this.§;@§ = param1.readUTFBytes(this.§8!#§);
         }
         else
         {
            this.§;@§ = param1.readMultiByte(this.§8!#§,this.§while§);
         }
         var _loc2_:uint = this.§+D§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§;@§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§^F§ = param1.readUnsignedInt();
               this.§7!c§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§0!>§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §]!i§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§;!Y§ === §;! § && !this.§#!6§)
         {
            if(§!o§ || §[n§)
            {
               param1.readBytes(this.§]!Y§,0,this.§`j§);
            }
            else
            {
               if(!this.§7!c§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§]!Y§.writeByte(120);
               _loc2_ = ~this.§5![§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§]!Y§.writeByte(_loc2_);
               param1.readBytes(this.§]!Y§,2,this.§`j§);
               this.§]!Y§.position = this.§]!Y§.length;
               this.§]!Y§.writeUnsignedInt(this.§^F§);
            }
            this.§%a§ = true;
         }
         else
         {
            if(this.§;!Y§ != §&=§)
            {
               throw new Error("Compression method " + this.§;!Y§ + " is not supported.");
            }
            param1.readBytes(this.§]!Y§,0,this.§`j§);
            this.§%a§ = false;
         }
         this.§]!Y§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§%a§)
         {
            if(this.§]!Y§.length > 0)
            {
               this.§]!Y§.position = 0;
               this.§+c§ = this.§]!Y§.length;
               if(§[n§)
               {
                  this.§]!Y§.deflate();
                  this.§`j§ = this.§]!Y§.length;
               }
               else if(§!o§)
               {
                  this.§]!Y§.compress.apply(this.§]!Y§,["deflate"]);
                  this.§`j§ = this.§]!Y§.length;
               }
               else
               {
                  this.§]!Y§.compress();
                  this.§`j§ = this.§]!Y§.length - 6;
               }
               this.§]!Y§.position = 0;
               this.§%a§ = true;
            }
            else
            {
               this.§`j§ = 0;
               this.§+c§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§%a§ && this.§]!Y§.length > 0)
         {
            this.§]!Y§.position = 0;
            if(§[n§)
            {
               this.§]!Y§.inflate();
            }
            else if(§!o§)
            {
               this.§]!Y§.uncompress.apply(this.§]!Y§,["deflate"]);
            }
            else
            {
               this.§]!Y§.uncompress();
            }
            this.§]!Y§.position = 0;
            this.§%a§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§;@§ + "\n  date:" + this.§%!T§ + "\n  sizeCompressed:" + this.§`j§ + "\n  sizeUncompressed:" + this.§+c§ + "\n  versionHost:" + this.§,g§ + "\n  versionNumber:" + this.§9!D§ + "\n  compressionMethod:" + this.§;!Y§ + "\n  encrypted:" + this.§#!6§ + "\n  hasDataDescriptor:" + this.§1!O§ + "\n  hasCompressedPatchedData:" + this.§3!j§ + "\n  filenameEncoding:" + this.§while§ + "\n  crc32:" + this.§"!^§.toString(16) + "\n  adler32:" + this.§^F§.toString(16);
      }
   }
}

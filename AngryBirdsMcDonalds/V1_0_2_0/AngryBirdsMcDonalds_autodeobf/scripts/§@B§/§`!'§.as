package §@B§
{
   import §>!4§.§@!I§;
   import flash.utils.*;
   
   public class §`!'§
   {
      
      public static const §=!'§:int = 0;
      
      public static const §[!&§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §&!!§:int = 6;
      
      public static const §,X§:int = 7;
      
      public static const §,&§:int = 8;
      
      public static const §1P§:int = 9;
      
      public static const §+Q§:int = 10;
      
      protected static var §1E§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §[7§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §+^§:int = 0;
      
      protected var §0!,§:String = "2.0";
      
      protected var §0&§:int = 8;
      
      protected var §-d§:Boolean = false;
      
      protected var §]e§:int = -1;
      
      protected var §=!<§:int = -1;
      
      protected var §+!!§:int = -1;
      
      protected var §&!L§:Boolean = false;
      
      protected var §0a§:Boolean = false;
      
      protected var §4Y§:Date;
      
      protected var §7^§:uint;
      
      protected var §-"§:Boolean = false;
      
      protected var §;z§:uint = 0;
      
      protected var §4M§:uint = 0;
      
      protected var §&6§:String = "";
      
      protected var §]!B§:String;
      
      protected var §1!S§:Dictionary;
      
      protected var §7F§:String = "";
      
      protected var §-!'§:ByteArray;
      
      var §&E§:uint;
      
      var §'d§:uint = 0;
      
      var §@!b§:uint = 0;
      
      protected var §!!Z§:Boolean = false;
      
      protected var §]>§:Function;
      
      public function §`!'§(param1:String = "utf-8")
      {
         this.§]>§ = this.§28§;
         super();
         this.§]!B§ = param1;
         this.§1!S§ = new Dictionary();
         this.§-!'§ = new ByteArray();
         this.§-!'§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §3!X§() : Date
      {
         return this.§4Y§;
      }
      
      public function set §3!X§(param1:Date) : void
      {
         this.§4Y§ = param1 != null ? param1 : new Date();
      }
      
      public function get §0!+§() : String
      {
         return this.§&6§;
      }
      
      public function set §0!+§(param1:String) : void
      {
         this.§&6§ = param1;
      }
      
      function get §while§() : Boolean
      {
         return this.§&!L§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§!!Z§)
         {
            this.uncompress();
         }
         return this.§-!'§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§!!_§(param1);
      }
      
      public function §!!_§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§-!'§,0,param1.length);
            this.§&E§ = §@!I§.§`g§(this.§-!'§);
            this.§-"§ = false;
         }
         else
         {
            this.§-!'§.length = 0;
            this.§-!'§.position = 0;
            this.§!!Z§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§@!b§ = this.§'d§ = this.§-!'§.length;
         }
      }
      
      public function get §[!"§() : String
      {
         return this.§0!,§;
      }
      
      public function get §#1§() : uint
      {
         return this.§'d§;
      }
      
      public function get § try§() : uint
      {
         return this.§@!b§;
      }
      
      public function §1!,§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§!!Z§)
         {
            this.uncompress();
         }
         this.§-!'§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§-!'§.readUTFBytes(this.§-!'§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§-!'§.readMultiByte(this.§-!'§.bytesAvailable,param2);
         }
         this.§-!'§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §^!1§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§-!'§.length = 0;
         this.§-!'§.position = 0;
         this.§!!Z§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§-!'§.writeUTFBytes(param1);
            }
            else
            {
               this.§-!'§.writeMultiByte(param1,param2);
            }
            this.§&E§ = §@!I§.§`g§(this.§-!'§);
            this.§-"§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§@!b§ = this.§'d§ = this.§-!'§.length;
         }
      }
      
      public function §4S§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§,=§.§?i§);
            param1.writeShort(this.§+^§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§,=§.§,!`§);
         }
         param1.writeShort(this.§+^§ << 8 | 20);
         param1.writeShort(this.§]!B§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§!!Z§ ? int(§,&§) : int(§=!'§));
         var _loc5_:Date = this.§4Y§ != null ? this.§4Y§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§&E§);
         param1.writeUnsignedInt(this.§'d§);
         param1.writeUnsignedInt(this.§@!b§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§]!B§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§&6§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§&6§,this.§]!B§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§1!S§)
         {
            if((_loc15_ = this.§1!S§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§-"§)
            {
               if(_loc16_ = this.§!!Z§)
               {
                  this.uncompress();
               }
               this.§7^§ = §@!I§.§5w§(this.§-!'§,0,this.§-!'§.length);
               this.§-"§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§7^§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§7F§.length > 0)
         {
            if(this.§]!B§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§7F§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§7F§,this.§]!B§);
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
         if(!param3 && this.§-!'§.length > 0)
         {
            if(this.§!!Z§)
            {
               if(§1E§ || §[7§)
               {
                  _loc13_ = this.§-!'§.length;
                  param1.writeBytes(this.§-!'§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§-!'§.length - 6;
                  param1.writeBytes(this.§-!'§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§-!'§.length;
               param1.writeBytes(this.§-!'§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§]>§(param1))
         {
         }
         return this.§]>§ === this.§#!o§;
      }
      
      protected function §#!o§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §28§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§"!#§(param1);
            if(this.§;z§ + this.§4M§ > 0)
            {
               this.§]>§ = this.§=!§;
            }
            else
            {
               this.§]>§ = this.§&!B§;
            }
            return true;
         }
         return false;
      }
      
      protected function §=!§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§;z§ + this.§4M§)
         {
            this.§4!!§(param1);
            this.§]>§ = this.§&!B§;
            return true;
         }
         return false;
      }
      
      protected function §&!B§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§&!L§)
         {
            this.§]>§ = this.§#!o§;
            _loc2_ = false;
         }
         else if(this.§'d§ == 0)
         {
            this.§]>§ = this.§#!o§;
         }
         else if(param1.bytesAvailable >= this.§'d§)
         {
            this.§@'§(param1);
            this.§]>§ = this.§#!o§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §"!#§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§+^§ = _loc2_ >> 8;
         this.§0!,§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§0&§ = param1.readUnsignedShort();
         this.§-d§ = (_loc3_ & 1) !== 0;
         this.§&!L§ = (_loc3_ & 8) !== 0;
         this.§0a§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§]!B§ = "utf-8";
         }
         if(this.§0&§ === §&!!§)
         {
            this.§]e§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§=!<§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§0&§ === §,&§)
         {
            this.§+!!§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§4Y§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§&E§ = param1.readUnsignedInt();
         this.§'d§ = param1.readUnsignedInt();
         this.§@!b§ = param1.readUnsignedInt();
         this.§;z§ = param1.readUnsignedShort();
         this.§4M§ = param1.readUnsignedShort();
      }
      
      protected function §4!!§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§]!B§ == "utf-8")
         {
            this.§&6§ = param1.readUTFBytes(this.§;z§);
         }
         else
         {
            this.§&6§ = param1.readMultiByte(this.§;z§,this.§]!B§);
         }
         var _loc2_:uint = this.§4M§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§&6§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§7^§ = param1.readUnsignedInt();
               this.§-"§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§1!S§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §@'§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§0&§ === §,&§ && !this.§-d§)
         {
            if(§1E§ || §[7§)
            {
               param1.readBytes(this.§-!'§,0,this.§'d§);
            }
            else
            {
               if(!this.§-"§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§-!'§.writeByte(120);
               _loc2_ = ~this.§+!!§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§-!'§.writeByte(_loc2_);
               param1.readBytes(this.§-!'§,2,this.§'d§);
               this.§-!'§.position = this.§-!'§.length;
               this.§-!'§.writeUnsignedInt(this.§7^§);
            }
            this.§!!Z§ = true;
         }
         else
         {
            if(this.§0&§ != §=!'§)
            {
               throw new Error("Compression method " + this.§0&§ + " is not supported.");
            }
            param1.readBytes(this.§-!'§,0,this.§'d§);
            this.§!!Z§ = false;
         }
         this.§-!'§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§!!Z§)
         {
            if(this.§-!'§.length > 0)
            {
               this.§-!'§.position = 0;
               this.§@!b§ = this.§-!'§.length;
               if(§[7§)
               {
                  this.§-!'§.deflate();
                  this.§'d§ = this.§-!'§.length;
               }
               else if(§1E§)
               {
                  this.§-!'§.compress.apply(this.§-!'§,["deflate"]);
                  this.§'d§ = this.§-!'§.length;
               }
               else
               {
                  this.§-!'§.compress();
                  this.§'d§ = this.§-!'§.length - 6;
               }
               this.§-!'§.position = 0;
               this.§!!Z§ = true;
            }
            else
            {
               this.§'d§ = 0;
               this.§@!b§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§!!Z§ && this.§-!'§.length > 0)
         {
            this.§-!'§.position = 0;
            if(§[7§)
            {
               this.§-!'§.inflate();
            }
            else if(§1E§)
            {
               this.§-!'§.uncompress.apply(this.§-!'§,["deflate"]);
            }
            else
            {
               this.§-!'§.uncompress();
            }
            this.§-!'§.position = 0;
            this.§!!Z§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§&6§ + "\n  date:" + this.§4Y§ + "\n  sizeCompressed:" + this.§'d§ + "\n  sizeUncompressed:" + this.§@!b§ + "\n  versionHost:" + this.§+^§ + "\n  versionNumber:" + this.§0!,§ + "\n  compressionMethod:" + this.§0&§ + "\n  encrypted:" + this.§-d§ + "\n  hasDataDescriptor:" + this.§&!L§ + "\n  hasCompressedPatchedData:" + this.§0a§ + "\n  filenameEncoding:" + this.§]!B§ + "\n  crc32:" + this.§&E§.toString(16) + "\n  adler32:" + this.§7^§.toString(16);
      }
   }
}

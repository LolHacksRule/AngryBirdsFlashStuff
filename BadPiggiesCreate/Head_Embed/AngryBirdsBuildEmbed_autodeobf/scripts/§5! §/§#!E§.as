package §5! §
{
   import §<!8§.§0!l§;
   import flash.utils.*;
   
   public class §#!E§
   {
      
      public static const §,V§:int = 0;
      
      public static const §,b§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §6!K§:int = 6;
      
      public static const §^!N§:int = 7;
      
      public static const §9!v§:int = 8;
      
      public static const §&5§:int = 9;
      
      public static const §1!K§:int = 10;
      
      protected static var §0K§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §2K§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §1!S§:int = 0;
      
      protected var §=!;§:String = "2.0";
      
      protected var §,#§:int = 8;
      
      protected var § -§:Boolean = false;
      
      protected var §1!R§:int = -1;
      
      protected var §20§:int = -1;
      
      protected var §40§:int = -1;
      
      protected var §4'§:Boolean = false;
      
      protected var §<?§:Boolean = false;
      
      protected var §=!d§:Date;
      
      protected var §8!3§:uint;
      
      protected var §7!u§:Boolean = false;
      
      protected var §`F§:uint = 0;
      
      protected var § !&§:uint = 0;
      
      protected var §#9§:String = "";
      
      protected var §5S§:String;
      
      protected var §^v§:Dictionary;
      
      protected var §44§:String = "";
      
      protected var §=!N§:ByteArray;
      
      var §[!5§:uint;
      
      var §2!t§:uint = 0;
      
      var §3!Q§:uint = 0;
      
      protected var §<!Y§:Boolean = false;
      
      protected var §&x§:Function;
      
      public function §#!E§(param1:String = "utf-8")
      {
         this.§&x§ = this.§?!$§;
         super();
         this.§5S§ = param1;
         this.§^v§ = new Dictionary();
         this.§=!N§ = new ByteArray();
         this.§=!N§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §5=§() : Date
      {
         return this.§=!d§;
      }
      
      public function set §5=§(param1:Date) : void
      {
         this.§=!d§ = param1 != null ? param1 : new Date();
      }
      
      public function get §%n§() : String
      {
         return this.§#9§;
      }
      
      public function set §%n§(param1:String) : void
      {
         this.§#9§ = param1;
      }
      
      function get §1x§() : Boolean
      {
         return this.§4'§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§<!Y§)
         {
            this.uncompress();
         }
         return this.§=!N§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§2!6§(param1);
      }
      
      public function §2!6§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§=!N§,0,param1.length);
            this.§[!5§ = §0!l§.§7e§(this.§=!N§);
            this.§7!u§ = false;
         }
         else
         {
            this.§=!N§.length = 0;
            this.§=!N§.position = 0;
            this.§<!Y§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§3!Q§ = this.§2!t§ = this.§=!N§.length;
         }
      }
      
      public function get §0a§() : String
      {
         return this.§=!;§;
      }
      
      public function get §`3§() : uint
      {
         return this.§2!t§;
      }
      
      public function get §?!I§() : uint
      {
         return this.§3!Q§;
      }
      
      public function §'!K§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§<!Y§)
         {
            this.uncompress();
         }
         this.§=!N§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§=!N§.readUTFBytes(this.§=!N§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§=!N§.readMultiByte(this.§=!N§.bytesAvailable,param2);
         }
         this.§=!N§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §super§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§=!N§.length = 0;
         this.§=!N§.position = 0;
         this.§<!Y§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§=!N§.writeUTFBytes(param1);
            }
            else
            {
               this.§=!N§.writeMultiByte(param1,param2);
            }
            this.§[!5§ = §0!l§.§7e§(this.§=!N§);
            this.§7!u§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§3!Q§ = this.§2!t§ = this.§=!N§.length;
         }
      }
      
      public function §=&§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§27§.§'!7§);
            param1.writeShort(this.§1!S§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§27§.§@!]§);
         }
         param1.writeShort(this.§1!S§ << 8 | 20);
         param1.writeShort(this.§5S§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§<!Y§ ? int(§9!v§) : int(§,V§));
         var _loc5_:Date = this.§=!d§ != null ? this.§=!d§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§[!5§);
         param1.writeUnsignedInt(this.§2!t§);
         param1.writeUnsignedInt(this.§3!Q§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§5S§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§#9§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§#9§,this.§5S§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§^v§)
         {
            if((_loc15_ = this.§^v§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§7!u§)
            {
               if(_loc16_ = this.§<!Y§)
               {
                  this.uncompress();
               }
               this.§8!3§ = §0!l§.§-s§(this.§=!N§,0,this.§=!N§.length);
               this.§7!u§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§8!3§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§44§.length > 0)
         {
            if(this.§5S§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§44§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§44§,this.§5S§);
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
         if(!param3 && this.§=!N§.length > 0)
         {
            if(this.§<!Y§)
            {
               if(§0K§ || §2K§)
               {
                  _loc13_ = this.§=!N§.length;
                  param1.writeBytes(this.§=!N§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§=!N§.length - 6;
                  param1.writeBytes(this.§=!N§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§=!N§.length;
               param1.writeBytes(this.§=!N§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§&x§(param1))
         {
         }
         return this.§&x§ === this.§each §;
      }
      
      protected function §each §(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §?!$§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§1s§(param1);
            if(this.§`F§ + this.§ !&§ > 0)
            {
               this.§&x§ = this.§3!O§;
            }
            else
            {
               this.§&x§ = this.§-!h§;
            }
            return true;
         }
         return false;
      }
      
      protected function §3!O§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§`F§ + this.§ !&§)
         {
            this.§3!H§(param1);
            this.§&x§ = this.§-!h§;
            return true;
         }
         return false;
      }
      
      protected function §-!h§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§4'§)
         {
            this.§&x§ = this.§each §;
            _loc2_ = false;
         }
         else if(this.§2!t§ == 0)
         {
            this.§&x§ = this.§each §;
         }
         else if(param1.bytesAvailable >= this.§2!t§)
         {
            this.§"r§(param1);
            this.§&x§ = this.§each §;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §1s§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§1!S§ = _loc2_ >> 8;
         this.§=!;§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§,#§ = param1.readUnsignedShort();
         this.§ -§ = (_loc3_ & 1) !== 0;
         this.§4'§ = (_loc3_ & 8) !== 0;
         this.§<?§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§5S§ = "utf-8";
         }
         if(this.§,#§ === §6!K§)
         {
            this.§1!R§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§20§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§,#§ === §9!v§)
         {
            this.§40§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§=!d§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§[!5§ = param1.readUnsignedInt();
         this.§2!t§ = param1.readUnsignedInt();
         this.§3!Q§ = param1.readUnsignedInt();
         this.§`F§ = param1.readUnsignedShort();
         this.§ !&§ = param1.readUnsignedShort();
      }
      
      protected function §3!H§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§5S§ == "utf-8")
         {
            this.§#9§ = param1.readUTFBytes(this.§`F§);
         }
         else
         {
            this.§#9§ = param1.readMultiByte(this.§`F§,this.§5S§);
         }
         var _loc2_:uint = this.§ !&§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§#9§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§8!3§ = param1.readUnsignedInt();
               this.§7!u§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§^v§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §"r§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§,#§ === §9!v§ && !this.§ -§)
         {
            if(§0K§ || §2K§)
            {
               param1.readBytes(this.§=!N§,0,this.§2!t§);
            }
            else
            {
               if(!this.§7!u§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§=!N§.writeByte(120);
               _loc2_ = ~this.§40§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§=!N§.writeByte(_loc2_);
               param1.readBytes(this.§=!N§,2,this.§2!t§);
               this.§=!N§.position = this.§=!N§.length;
               this.§=!N§.writeUnsignedInt(this.§8!3§);
            }
            this.§<!Y§ = true;
         }
         else
         {
            if(this.§,#§ != §,V§)
            {
               throw new Error("Compression method " + this.§,#§ + " is not supported.");
            }
            param1.readBytes(this.§=!N§,0,this.§2!t§);
            this.§<!Y§ = false;
         }
         this.§=!N§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§<!Y§)
         {
            if(this.§=!N§.length > 0)
            {
               this.§=!N§.position = 0;
               this.§3!Q§ = this.§=!N§.length;
               if(§2K§)
               {
                  this.§=!N§.deflate();
                  this.§2!t§ = this.§=!N§.length;
               }
               else if(§0K§)
               {
                  this.§=!N§.compress.apply(this.§=!N§,["deflate"]);
                  this.§2!t§ = this.§=!N§.length;
               }
               else
               {
                  this.§=!N§.compress();
                  this.§2!t§ = this.§=!N§.length - 6;
               }
               this.§=!N§.position = 0;
               this.§<!Y§ = true;
            }
            else
            {
               this.§2!t§ = 0;
               this.§3!Q§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§<!Y§ && this.§=!N§.length > 0)
         {
            this.§=!N§.position = 0;
            if(§2K§)
            {
               this.§=!N§.inflate();
            }
            else if(§0K§)
            {
               this.§=!N§.uncompress.apply(this.§=!N§,["deflate"]);
            }
            else
            {
               this.§=!N§.uncompress();
            }
            this.§=!N§.position = 0;
            this.§<!Y§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§#9§ + "\n  date:" + this.§=!d§ + "\n  sizeCompressed:" + this.§2!t§ + "\n  sizeUncompressed:" + this.§3!Q§ + "\n  versionHost:" + this.§1!S§ + "\n  versionNumber:" + this.§=!;§ + "\n  compressionMethod:" + this.§,#§ + "\n  encrypted:" + this.§ -§ + "\n  hasDataDescriptor:" + this.§4'§ + "\n  hasCompressedPatchedData:" + this.§<?§ + "\n  filenameEncoding:" + this.§5S§ + "\n  crc32:" + this.§[!5§.toString(16) + "\n  adler32:" + this.§8!3§.toString(16);
      }
   }
}

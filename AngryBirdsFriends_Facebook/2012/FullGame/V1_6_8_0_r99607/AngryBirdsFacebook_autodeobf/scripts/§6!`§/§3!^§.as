package §6!`§
{
   import §^P§.§ !#§;
   import flash.utils.*;
   
   public class §3!^§
   {
      
      public static const §+x§:int = 0;
      
      public static const §"a§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §]s§:int = 6;
      
      public static const §2"@§:int = 7;
      
      public static const §5U§:int = 8;
      
      public static const §^U§:int = 9;
      
      public static const §@"&§:int = 10;
      
      protected static var §=h§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §7E§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §5!Q§:int = 0;
      
      protected var §6!Z§:String = "2.0";
      
      protected var §'!m§:int = 8;
      
      protected var §41§:Boolean = false;
      
      protected var §=2§:int = -1;
      
      protected var §^u§:int = -1;
      
      protected var §for §:int = -1;
      
      protected var §,3§:Boolean = false;
      
      protected var §#"§:Boolean = false;
      
      protected var § "C§:Date;
      
      protected var §=!N§:uint;
      
      protected var §=R§:Boolean = false;
      
      protected var §'p§:uint = 0;
      
      protected var §2!C§:uint = 0;
      
      protected var §=";§:String = "";
      
      protected var §"!w§:String;
      
      protected var §9X§:Dictionary;
      
      protected var §+"A§:String = "";
      
      protected var §2t§:ByteArray;
      
      var §0l§:uint;
      
      var § "'§:uint = 0;
      
      var §false§:uint = 0;
      
      protected var § s§:Boolean = false;
      
      protected var §]!9§:Function;
      
      public function §3!^§(param1:String = "utf-8")
      {
         this.§]!9§ = this.§%!>§;
         super();
         this.§"!w§ = param1;
         this.§9X§ = new Dictionary();
         this.§2t§ = new ByteArray();
         this.§2t§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §@! §() : Date
      {
         return this.§ "C§;
      }
      
      public function set §@! §(param1:Date) : void
      {
         this.§ "C§ = param1 != null ? param1 : new Date();
      }
      
      public function get §14§() : String
      {
         return this.§=";§;
      }
      
      public function set §14§(param1:String) : void
      {
         this.§=";§ = param1;
      }
      
      function get §<!g§() : Boolean
      {
         return this.§,3§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§ s§)
         {
            this.uncompress();
         }
         return this.§2t§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§1!-§(param1);
      }
      
      public function §1!-§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§2t§,0,param1.length);
            this.§0l§ = § !#§.§!d§(this.§2t§);
            this.§=R§ = false;
         }
         else
         {
            this.§2t§.length = 0;
            this.§2t§.position = 0;
            this.§ s§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§false§ = this.§ "'§ = this.§2t§.length;
         }
      }
      
      public function get §]!H§() : String
      {
         return this.§6!Z§;
      }
      
      public function get §0!8§() : uint
      {
         return this.§ "'§;
      }
      
      public function get §3q§() : uint
      {
         return this.§false§;
      }
      
      public function §!!#§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§ s§)
         {
            this.uncompress();
         }
         this.§2t§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§2t§.readUTFBytes(this.§2t§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§2t§.readMultiByte(this.§2t§.bytesAvailable,param2);
         }
         this.§2t§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §!!e§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§2t§.length = 0;
         this.§2t§.position = 0;
         this.§ s§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§2t§.writeUTFBytes(param1);
            }
            else
            {
               this.§2t§.writeMultiByte(param1,param2);
            }
            this.§0l§ = § !#§.§!d§(this.§2t§);
            this.§=R§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§false§ = this.§ "'§ = this.§2t§.length;
         }
      }
      
      public function §;4§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§ "§.§^!§);
            param1.writeShort(this.§5!Q§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§ "§.§[";§);
         }
         param1.writeShort(this.§5!Q§ << 8 | 20);
         param1.writeShort(this.§"!w§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§ s§ ? int(§5U§) : int(§+x§));
         var _loc5_:Date = this.§ "C§ != null ? this.§ "C§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§0l§);
         param1.writeUnsignedInt(this.§ "'§);
         param1.writeUnsignedInt(this.§false§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§"!w§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§=";§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§=";§,this.§"!w§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§9X§)
         {
            if((_loc15_ = this.§9X§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§=R§)
            {
               if(_loc16_ = this.§ s§)
               {
                  this.uncompress();
               }
               this.§=!N§ = § !#§.§!?§(this.§2t§,0,this.§2t§.length);
               this.§=R§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§=!N§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§+"A§.length > 0)
         {
            if(this.§"!w§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§+"A§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§+"A§,this.§"!w§);
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
         if(!param3 && this.§2t§.length > 0)
         {
            if(this.§ s§)
            {
               if(§=h§ || §7E§)
               {
                  _loc13_ = this.§2t§.length;
                  param1.writeBytes(this.§2t§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§2t§.length - 6;
                  param1.writeBytes(this.§2t§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§2t§.length;
               param1.writeBytes(this.§2t§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§]!9§(param1))
         {
         }
         return this.§]!9§ === this.§3"0§;
      }
      
      protected function §3"0§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §%!>§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§1!F§(param1);
            if(this.§'p§ + this.§2!C§ > 0)
            {
               this.§]!9§ = this.§,!H§;
            }
            else
            {
               this.§]!9§ = this.§'P§;
            }
            return true;
         }
         return false;
      }
      
      protected function §,!H§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§'p§ + this.§2!C§)
         {
            this.§0!g§(param1);
            this.§]!9§ = this.§'P§;
            return true;
         }
         return false;
      }
      
      protected function §'P§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§,3§)
         {
            this.§]!9§ = this.§3"0§;
            _loc2_ = false;
         }
         else if(this.§ "'§ == 0)
         {
            this.§]!9§ = this.§3"0§;
         }
         else if(param1.bytesAvailable >= this.§ "'§)
         {
            this.§4!N§(param1);
            this.§]!9§ = this.§3"0§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §1!F§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§5!Q§ = _loc2_ >> 8;
         this.§6!Z§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§'!m§ = param1.readUnsignedShort();
         this.§41§ = (_loc3_ & 1) !== 0;
         this.§,3§ = (_loc3_ & 8) !== 0;
         this.§#"§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§"!w§ = "utf-8";
         }
         if(this.§'!m§ === §]s§)
         {
            this.§=2§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§^u§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§'!m§ === §5U§)
         {
            this.§for § = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§ "C§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§0l§ = param1.readUnsignedInt();
         this.§ "'§ = param1.readUnsignedInt();
         this.§false§ = param1.readUnsignedInt();
         this.§'p§ = param1.readUnsignedShort();
         this.§2!C§ = param1.readUnsignedShort();
      }
      
      protected function §0!g§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§"!w§ == "utf-8")
         {
            this.§=";§ = param1.readUTFBytes(this.§'p§);
         }
         else
         {
            this.§=";§ = param1.readMultiByte(this.§'p§,this.§"!w§);
         }
         var _loc2_:uint = this.§2!C§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§=";§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§=!N§ = param1.readUnsignedInt();
               this.§=R§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§9X§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §4!N§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§'!m§ === §5U§ && !this.§41§)
         {
            if(§=h§ || §7E§)
            {
               param1.readBytes(this.§2t§,0,this.§ "'§);
            }
            else
            {
               if(!this.§=R§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§2t§.writeByte(120);
               _loc2_ = ~this.§for § << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§2t§.writeByte(_loc2_);
               param1.readBytes(this.§2t§,2,this.§ "'§);
               this.§2t§.position = this.§2t§.length;
               this.§2t§.writeUnsignedInt(this.§=!N§);
            }
            this.§ s§ = true;
         }
         else
         {
            if(this.§'!m§ != §+x§)
            {
               throw new Error("Compression method " + this.§'!m§ + " is not supported.");
            }
            param1.readBytes(this.§2t§,0,this.§ "'§);
            this.§ s§ = false;
         }
         this.§2t§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§ s§)
         {
            if(this.§2t§.length > 0)
            {
               this.§2t§.position = 0;
               this.§false§ = this.§2t§.length;
               if(§7E§)
               {
                  this.§2t§.deflate();
                  this.§ "'§ = this.§2t§.length;
               }
               else if(§=h§)
               {
                  this.§2t§.compress.apply(this.§2t§,["deflate"]);
                  this.§ "'§ = this.§2t§.length;
               }
               else
               {
                  this.§2t§.compress();
                  this.§ "'§ = this.§2t§.length - 6;
               }
               this.§2t§.position = 0;
               this.§ s§ = true;
            }
            else
            {
               this.§ "'§ = 0;
               this.§false§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§ s§ && this.§2t§.length > 0)
         {
            this.§2t§.position = 0;
            if(§7E§)
            {
               this.§2t§.inflate();
            }
            else if(§=h§)
            {
               this.§2t§.uncompress.apply(this.§2t§,["deflate"]);
            }
            else
            {
               this.§2t§.uncompress();
            }
            this.§2t§.position = 0;
            this.§ s§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§=";§ + "\n  date:" + this.§ "C§ + "\n  sizeCompressed:" + this.§ "'§ + "\n  sizeUncompressed:" + this.§false§ + "\n  versionHost:" + this.§5!Q§ + "\n  versionNumber:" + this.§6!Z§ + "\n  compressionMethod:" + this.§'!m§ + "\n  encrypted:" + this.§41§ + "\n  hasDataDescriptor:" + this.§,3§ + "\n  hasCompressedPatchedData:" + this.§#"§ + "\n  filenameEncoding:" + this.§"!w§ + "\n  crc32:" + this.§0l§.toString(16) + "\n  adler32:" + this.§=!N§.toString(16);
      }
   }
}

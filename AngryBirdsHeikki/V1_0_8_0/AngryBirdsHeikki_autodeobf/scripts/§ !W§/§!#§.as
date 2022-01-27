package § !W§
{
   import §!4§.§5;§;
   import flash.utils.*;
   
   public class §!#§
   {
      
      public static const §[-§:int = 0;
      
      public static const §,!?§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §%?§:int = 6;
      
      public static const §%C§:int = 7;
      
      public static const §1!A§:int = 8;
      
      public static const §+!$§:int = 9;
      
      public static const §3i§:int = 10;
      
      protected static var §#4§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §?!J§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §]h§:int = 0;
      
      protected var §0!Y§:String = "2.0";
      
      protected var §%B§:int = 8;
      
      protected var §<!b§:Boolean = false;
      
      protected var §>!#§:int = -1;
      
      protected var §&!E§:int = -1;
      
      protected var §-,§:int = -1;
      
      protected var §5!L§:Boolean = false;
      
      protected var §;w§:Boolean = false;
      
      protected var §8c§:Date;
      
      protected var §=P§:uint;
      
      protected var §&!C§:Boolean = false;
      
      protected var §;#§:uint = 0;
      
      protected var §%!>§:uint = 0;
      
      protected var §;!Z§:String = "";
      
      protected var §<@§:String;
      
      protected var §2g§:Dictionary;
      
      protected var §6U§:String = "";
      
      protected var § !%§:ByteArray;
      
      var §@]§:uint;
      
      var §&H§:uint = 0;
      
      var §-!?§:uint = 0;
      
      protected var §1y§:Boolean = false;
      
      protected var §;!a§:Function;
      
      public function §!#§(param1:String = "utf-8")
      {
         this.§;!a§ = this.§]!e§;
         super();
         this.§<@§ = param1;
         this.§2g§ = new Dictionary();
         this.§ !%§ = new ByteArray();
         this.§ !%§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §1!C§() : Date
      {
         return this.§8c§;
      }
      
      public function set §1!C§(param1:Date) : void
      {
         this.§8c§ = param1 != null ? param1 : new Date();
      }
      
      public function get §+!<§() : String
      {
         return this.§;!Z§;
      }
      
      public function set §+!<§(param1:String) : void
      {
         this.§;!Z§ = param1;
      }
      
      function get §8;§() : Boolean
      {
         return this.§5!L§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§1y§)
         {
            this.uncompress();
         }
         return this.§ !%§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§%<§(param1);
      }
      
      public function §%<§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§ !%§,0,param1.length);
            this.§@]§ = §5;§.§1H§(this.§ !%§);
            this.§&!C§ = false;
         }
         else
         {
            this.§ !%§.length = 0;
            this.§ !%§.position = 0;
            this.§1y§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§-!?§ = this.§&H§ = this.§ !%§.length;
         }
      }
      
      public function get § !1§() : String
      {
         return this.§0!Y§;
      }
      
      public function get §+t§() : uint
      {
         return this.§&H§;
      }
      
      public function get §+!&§() : uint
      {
         return this.§-!?§;
      }
      
      public function §9o§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§1y§)
         {
            this.uncompress();
         }
         this.§ !%§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§ !%§.readUTFBytes(this.§ !%§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§ !%§.readMultiByte(this.§ !%§.bytesAvailable,param2);
         }
         this.§ !%§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §'j§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§ !%§.length = 0;
         this.§ !%§.position = 0;
         this.§1y§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§ !%§.writeUTFBytes(param1);
            }
            else
            {
               this.§ !%§.writeMultiByte(param1,param2);
            }
            this.§@]§ = §5;§.§1H§(this.§ !%§);
            this.§&!C§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§-!?§ = this.§&H§ = this.§ !%§.length;
         }
      }
      
      public function §#3§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§ Q§.§ K§);
            param1.writeShort(this.§]h§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§ Q§.§<_§);
         }
         param1.writeShort(this.§]h§ << 8 | 20);
         param1.writeShort(this.§<@§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§1y§ ? int(§1!A§) : int(§[-§));
         var _loc5_:Date = this.§8c§ != null ? this.§8c§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§@]§);
         param1.writeUnsignedInt(this.§&H§);
         param1.writeUnsignedInt(this.§-!?§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§<@§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§;!Z§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§;!Z§,this.§<@§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§2g§)
         {
            if((_loc15_ = this.§2g§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§&!C§)
            {
               if(_loc16_ = this.§1y§)
               {
                  this.uncompress();
               }
               this.§=P§ = §5;§.§8]§(this.§ !%§,0,this.§ !%§.length);
               this.§&!C§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§=P§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§6U§.length > 0)
         {
            if(this.§<@§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§6U§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§6U§,this.§<@§);
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
         if(!param3 && this.§ !%§.length > 0)
         {
            if(this.§1y§)
            {
               if(§#4§ || §?!J§)
               {
                  _loc13_ = this.§ !%§.length;
                  param1.writeBytes(this.§ !%§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§ !%§.length - 6;
                  param1.writeBytes(this.§ !%§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§ !%§.length;
               param1.writeBytes(this.§ !%§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§;!a§(param1))
         {
         }
         return this.§;!a§ === this.§]9§;
      }
      
      protected function §]9§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §]!e§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§<Z§(param1);
            if(this.§;#§ + this.§%!>§ > 0)
            {
               this.§;!a§ = this.§0a§;
            }
            else
            {
               this.§;!a§ = this.§=!5§;
            }
            return true;
         }
         return false;
      }
      
      protected function §0a§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§;#§ + this.§%!>§)
         {
            this.§`<§(param1);
            this.§;!a§ = this.§=!5§;
            return true;
         }
         return false;
      }
      
      protected function §=!5§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§5!L§)
         {
            this.§;!a§ = this.§]9§;
            _loc2_ = false;
         }
         else if(this.§&H§ == 0)
         {
            this.§;!a§ = this.§]9§;
         }
         else if(param1.bytesAvailable >= this.§&H§)
         {
            this.§;!X§(param1);
            this.§;!a§ = this.§]9§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §<Z§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§]h§ = _loc2_ >> 8;
         this.§0!Y§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§%B§ = param1.readUnsignedShort();
         this.§<!b§ = (_loc3_ & 1) !== 0;
         this.§5!L§ = (_loc3_ & 8) !== 0;
         this.§;w§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§<@§ = "utf-8";
         }
         if(this.§%B§ === §%?§)
         {
            this.§>!#§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§&!E§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§%B§ === §1!A§)
         {
            this.§-,§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§8c§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§@]§ = param1.readUnsignedInt();
         this.§&H§ = param1.readUnsignedInt();
         this.§-!?§ = param1.readUnsignedInt();
         this.§;#§ = param1.readUnsignedShort();
         this.§%!>§ = param1.readUnsignedShort();
      }
      
      protected function §`<§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§<@§ == "utf-8")
         {
            this.§;!Z§ = param1.readUTFBytes(this.§;#§);
         }
         else
         {
            this.§;!Z§ = param1.readMultiByte(this.§;#§,this.§<@§);
         }
         var _loc2_:uint = this.§%!>§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§;!Z§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§=P§ = param1.readUnsignedInt();
               this.§&!C§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§2g§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §;!X§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§%B§ === §1!A§ && !this.§<!b§)
         {
            if(§#4§ || §?!J§)
            {
               param1.readBytes(this.§ !%§,0,this.§&H§);
            }
            else
            {
               if(!this.§&!C§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§ !%§.writeByte(120);
               _loc2_ = ~this.§-,§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§ !%§.writeByte(_loc2_);
               param1.readBytes(this.§ !%§,2,this.§&H§);
               this.§ !%§.position = this.§ !%§.length;
               this.§ !%§.writeUnsignedInt(this.§=P§);
            }
            this.§1y§ = true;
         }
         else
         {
            if(this.§%B§ != §[-§)
            {
               throw new Error("Compression method " + this.§%B§ + " is not supported.");
            }
            param1.readBytes(this.§ !%§,0,this.§&H§);
            this.§1y§ = false;
         }
         this.§ !%§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§1y§)
         {
            if(this.§ !%§.length > 0)
            {
               this.§ !%§.position = 0;
               this.§-!?§ = this.§ !%§.length;
               if(§?!J§)
               {
                  this.§ !%§.deflate();
                  this.§&H§ = this.§ !%§.length;
               }
               else if(§#4§)
               {
                  this.§ !%§.compress.apply(this.§ !%§,["deflate"]);
                  this.§&H§ = this.§ !%§.length;
               }
               else
               {
                  this.§ !%§.compress();
                  this.§&H§ = this.§ !%§.length - 6;
               }
               this.§ !%§.position = 0;
               this.§1y§ = true;
            }
            else
            {
               this.§&H§ = 0;
               this.§-!?§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§1y§ && this.§ !%§.length > 0)
         {
            this.§ !%§.position = 0;
            if(§?!J§)
            {
               this.§ !%§.inflate();
            }
            else if(§#4§)
            {
               this.§ !%§.uncompress.apply(this.§ !%§,["deflate"]);
            }
            else
            {
               this.§ !%§.uncompress();
            }
            this.§ !%§.position = 0;
            this.§1y§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§;!Z§ + "\n  date:" + this.§8c§ + "\n  sizeCompressed:" + this.§&H§ + "\n  sizeUncompressed:" + this.§-!?§ + "\n  versionHost:" + this.§]h§ + "\n  versionNumber:" + this.§0!Y§ + "\n  compressionMethod:" + this.§%B§ + "\n  encrypted:" + this.§<!b§ + "\n  hasDataDescriptor:" + this.§5!L§ + "\n  hasCompressedPatchedData:" + this.§;w§ + "\n  filenameEncoding:" + this.§<@§ + "\n  crc32:" + this.§@]§.toString(16) + "\n  adler32:" + this.§=P§.toString(16);
      }
   }
}

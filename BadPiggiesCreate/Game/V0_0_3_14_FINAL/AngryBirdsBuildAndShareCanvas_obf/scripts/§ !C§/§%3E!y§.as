package § !C§
{
   import §%X§.§=!;§;
   import flash.utils.*;
   
   public class §>!y§
   {
      
      public static const §%"!§:int = 0;
      
      public static const §7t§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §0!F§:int = 6;
      
      public static const §;%§:int = 7;
      
      public static const §3e§:int = 8;
      
      public static const §<z§:int = 9;
      
      public static const §,!!§:int = 10;
      
      protected static var §+!R§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §=A§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §7J§:int = 0;
      
      protected var §@0§:String = "2.0";
      
      protected var §8!4§:int = 8;
      
      protected var §=!c§:Boolean = false;
      
      protected var §4h§:int = -1;
      
      protected var §=I§:int = -1;
      
      protected var §@]§:int = -1;
      
      protected var §3! §:Boolean = false;
      
      protected var §;`§:Boolean = false;
      
      protected var §,!^§:Date;
      
      protected var §<!"§:uint;
      
      protected var §"">§:Boolean = false;
      
      protected var §<! §:uint = 0;
      
      protected var §?z§:uint = 0;
      
      protected var § if§:String = "";
      
      protected var §&^§:String;
      
      protected var §2!$§:Dictionary;
      
      protected var §!<§:String = "";
      
      protected var §0F§:ByteArray;
      
      var §-!D§:uint;
      
      var §&C§:uint = 0;
      
      var §2!3§:uint = 0;
      
      protected var §9X§:Boolean = false;
      
      protected var §'"%§:Function;
      
      public function §>!y§(param1:String = "utf-8")
      {
         this.§'"%§ = this.§4M§;
         super();
         this.§&^§ = param1;
         this.§2!$§ = new Dictionary();
         this.§0F§ = new ByteArray();
         this.§0F§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §?!F§() : Date
      {
         return this.§,!^§;
      }
      
      public function set §?!F§(param1:Date) : void
      {
         this.§,!^§ = param1 != null ? param1 : new Date();
      }
      
      public function get §8`§() : String
      {
         return this.§ if§;
      }
      
      public function set §8`§(param1:String) : void
      {
         this.§ if§ = param1;
      }
      
      function get §8!2§() : Boolean
      {
         return this.§3! §;
      }
      
      public function get content() : ByteArray
      {
         if(this.§9X§)
         {
            this.uncompress();
         }
         return this.§0F§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§=E§(param1);
      }
      
      public function §=E§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§0F§,0,param1.length);
            this.§-!D§ = §=!;§.§ !<§(this.§0F§);
            this.§"">§ = false;
         }
         else
         {
            this.§0F§.length = 0;
            this.§0F§.position = 0;
            this.§9X§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§2!3§ = this.§&C§ = this.§0F§.length;
         }
      }
      
      public function get §]!V§() : String
      {
         return this.§@0§;
      }
      
      public function get §4";§() : uint
      {
         return this.§&C§;
      }
      
      public function get §5!&§() : uint
      {
         return this.§2!3§;
      }
      
      public function §'!G§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§9X§)
         {
            this.uncompress();
         }
         this.§0F§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§0F§.readUTFBytes(this.§0F§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§0F§.readMultiByte(this.§0F§.bytesAvailable,param2);
         }
         this.§0F§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §&!E§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§0F§.length = 0;
         this.§0F§.position = 0;
         this.§9X§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§0F§.writeUTFBytes(param1);
            }
            else
            {
               this.§0F§.writeMultiByte(param1,param2);
            }
            this.§-!D§ = §=!;§.§ !<§(this.§0F§);
            this.§"">§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§2!3§ = this.§&C§ = this.§0F§.length;
         }
      }
      
      public function §0!@§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§&4§.§ e§);
            param1.writeShort(this.§7J§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§&4§.§'9§);
         }
         param1.writeShort(this.§7J§ << 8 | 20);
         param1.writeShort(this.§&^§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§9X§ ? int(§3e§) : int(§%"!§));
         var _loc5_:Date = this.§,!^§ != null ? this.§,!^§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§-!D§);
         param1.writeUnsignedInt(this.§&C§);
         param1.writeUnsignedInt(this.§2!3§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§&^§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§ if§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§ if§,this.§&^§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§2!$§)
         {
            if((_loc15_ = this.§2!$§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§"">§)
            {
               if(_loc16_ = this.§9X§)
               {
                  this.uncompress();
               }
               this.§<!"§ = §=!;§.§>"#§(this.§0F§,0,this.§0F§.length);
               this.§"">§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§<!"§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§!<§.length > 0)
         {
            if(this.§&^§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§!<§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§!<§,this.§&^§);
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
         if(!param3 && this.§0F§.length > 0)
         {
            if(this.§9X§)
            {
               if(§+!R§ || §=A§)
               {
                  _loc13_ = this.§0F§.length;
                  param1.writeBytes(this.§0F§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§0F§.length - 6;
                  param1.writeBytes(this.§0F§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§0F§.length;
               param1.writeBytes(this.§0F§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§'"%§(param1))
         {
         }
         return this.§'"%§ === this.§#!0§;
      }
      
      protected function §#!0§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §4M§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§'S§(param1);
            if(this.§<! § + this.§?z§ > 0)
            {
               this.§'"%§ = this.§&!0§;
            }
            else
            {
               this.§'"%§ = this.§@!]§;
            }
            return true;
         }
         return false;
      }
      
      protected function §&!0§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§<! § + this.§?z§)
         {
            this.§`9§(param1);
            this.§'"%§ = this.§@!]§;
            return true;
         }
         return false;
      }
      
      protected function §@!]§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§3! §)
         {
            this.§'"%§ = this.§#!0§;
            _loc2_ = false;
         }
         else if(this.§&C§ == 0)
         {
            this.§'"%§ = this.§#!0§;
         }
         else if(param1.bytesAvailable >= this.§&C§)
         {
            this.§!!9§(param1);
            this.§'"%§ = this.§#!0§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §'S§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§7J§ = _loc2_ >> 8;
         this.§@0§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§8!4§ = param1.readUnsignedShort();
         this.§=!c§ = (_loc3_ & 1) !== 0;
         this.§3! § = (_loc3_ & 8) !== 0;
         this.§;`§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§&^§ = "utf-8";
         }
         if(this.§8!4§ === §0!F§)
         {
            this.§4h§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§=I§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§8!4§ === §3e§)
         {
            this.§@]§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§,!^§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§-!D§ = param1.readUnsignedInt();
         this.§&C§ = param1.readUnsignedInt();
         this.§2!3§ = param1.readUnsignedInt();
         this.§<! § = param1.readUnsignedShort();
         this.§?z§ = param1.readUnsignedShort();
      }
      
      protected function §`9§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§&^§ == "utf-8")
         {
            this.§ if§ = param1.readUTFBytes(this.§<! §);
         }
         else
         {
            this.§ if§ = param1.readMultiByte(this.§<! §,this.§&^§);
         }
         var _loc2_:uint = this.§?z§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§ if§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§<!"§ = param1.readUnsignedInt();
               this.§"">§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§2!$§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §!!9§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§8!4§ === §3e§ && !this.§=!c§)
         {
            if(§+!R§ || §=A§)
            {
               param1.readBytes(this.§0F§,0,this.§&C§);
            }
            else
            {
               if(!this.§"">§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§0F§.writeByte(120);
               _loc2_ = ~this.§@]§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§0F§.writeByte(_loc2_);
               param1.readBytes(this.§0F§,2,this.§&C§);
               this.§0F§.position = this.§0F§.length;
               this.§0F§.writeUnsignedInt(this.§<!"§);
            }
            this.§9X§ = true;
         }
         else
         {
            if(this.§8!4§ != §%"!§)
            {
               throw new Error("Compression method " + this.§8!4§ + " is not supported.");
            }
            param1.readBytes(this.§0F§,0,this.§&C§);
            this.§9X§ = false;
         }
         this.§0F§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§9X§)
         {
            if(this.§0F§.length > 0)
            {
               this.§0F§.position = 0;
               this.§2!3§ = this.§0F§.length;
               if(§=A§)
               {
                  this.§0F§.deflate();
                  this.§&C§ = this.§0F§.length;
               }
               else if(§+!R§)
               {
                  this.§0F§.compress.apply(this.§0F§,["deflate"]);
                  this.§&C§ = this.§0F§.length;
               }
               else
               {
                  this.§0F§.compress();
                  this.§&C§ = this.§0F§.length - 6;
               }
               this.§0F§.position = 0;
               this.§9X§ = true;
            }
            else
            {
               this.§&C§ = 0;
               this.§2!3§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§9X§ && this.§0F§.length > 0)
         {
            this.§0F§.position = 0;
            if(§=A§)
            {
               this.§0F§.inflate();
            }
            else if(§+!R§)
            {
               this.§0F§.uncompress.apply(this.§0F§,["deflate"]);
            }
            else
            {
               this.§0F§.uncompress();
            }
            this.§0F§.position = 0;
            this.§9X§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§ if§ + "\n  date:" + this.§,!^§ + "\n  sizeCompressed:" + this.§&C§ + "\n  sizeUncompressed:" + this.§2!3§ + "\n  versionHost:" + this.§7J§ + "\n  versionNumber:" + this.§@0§ + "\n  compressionMethod:" + this.§8!4§ + "\n  encrypted:" + this.§=!c§ + "\n  hasDataDescriptor:" + this.§3! § + "\n  hasCompressedPatchedData:" + this.§;`§ + "\n  filenameEncoding:" + this.§&^§ + "\n  crc32:" + this.§-!D§.toString(16) + "\n  adler32:" + this.§<!"§.toString(16);
      }
   }
}

package §^§
{
   import §&!H§.§<G§;
   import flash.utils.*;
   
   public class §"!0§
   {
      
      public static const §6!'§:int = 0;
      
      public static const §^O§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §+!6§:int = 6;
      
      public static const §#!?§:int = 7;
      
      public static const §<b§:int = 8;
      
      public static const §&S§:int = 9;
      
      public static const §0F§:int = 10;
      
      protected static var §8!=§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §;!@§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §7!>§:int = 0;
      
      protected var §[1§:String = "2.0";
      
      protected var §7S§:int = 8;
      
      protected var §&!?§:Boolean = false;
      
      protected var §`d§:int = -1;
      
      protected var §0j§:int = -1;
      
      protected var §58§:int = -1;
      
      protected var §<!9§:Boolean = false;
      
      protected var §>X§:Boolean = false;
      
      protected var §3<§:Date;
      
      protected var §;M§:uint;
      
      protected var §2! §:Boolean = false;
      
      protected var §-l§:uint = 0;
      
      protected var §=[§:uint = 0;
      
      protected var §@x§:String = "";
      
      protected var §#W§:String;
      
      protected var §9§:Dictionary;
      
      protected var §,S§:String = "";
      
      protected var §4!>§:ByteArray;
      
      var §10§:uint;
      
      var §0a§:uint = 0;
      
      var §"!2§:uint = 0;
      
      protected var §6-§:Boolean = false;
      
      protected var §[B§:Function;
      
      public function §"!0§(param1:String = "utf-8")
      {
         this.§[B§ = this.§,!A§;
         super();
         this.§#W§ = param1;
         this.§9§ = new Dictionary();
         this.§4!>§ = new ByteArray();
         this.§4!>§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §2!?§() : Date
      {
         return this.§3<§;
      }
      
      public function set §2!?§(param1:Date) : void
      {
         this.§3<§ = param1 != null ? param1 : new Date();
      }
      
      public function get §4T§() : String
      {
         return this.§@x§;
      }
      
      public function set §4T§(param1:String) : void
      {
         this.§@x§ = param1;
      }
      
      function get §`"§() : Boolean
      {
         return this.§<!9§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§6-§)
         {
            this.uncompress();
         }
         return this.§4!>§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§%!2§(param1);
      }
      
      public function §%!2§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§4!>§,0,param1.length);
            this.§10§ = §<G§.§[d§(this.§4!>§);
            this.§2! § = false;
         }
         else
         {
            this.§4!>§.length = 0;
            this.§4!>§.position = 0;
            this.§6-§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§"!2§ = this.§0a§ = this.§4!>§.length;
         }
      }
      
      public function get §'r§() : String
      {
         return this.§[1§;
      }
      
      public function get §=8§() : uint
      {
         return this.§0a§;
      }
      
      public function get §^u§() : uint
      {
         return this.§"!2§;
      }
      
      public function §0I§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§6-§)
         {
            this.uncompress();
         }
         this.§4!>§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§4!>§.readUTFBytes(this.§4!>§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§4!>§.readMultiByte(this.§4!>§.bytesAvailable,param2);
         }
         this.§4!>§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §=Y§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§4!>§.length = 0;
         this.§4!>§.position = 0;
         this.§6-§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§4!>§.writeUTFBytes(param1);
            }
            else
            {
               this.§4!>§.writeMultiByte(param1,param2);
            }
            this.§10§ = §<G§.§[d§(this.§4!>§);
            this.§2! § = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§"!2§ = this.§0a§ = this.§4!>§.length;
         }
      }
      
      public function §9<§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§'6§.§?<§);
            param1.writeShort(this.§7!>§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§'6§.§]!A§);
         }
         param1.writeShort(this.§7!>§ << 8 | 20);
         param1.writeShort(this.§#W§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§6-§ ? int(§<b§) : int(§6!'§));
         var _loc5_:Date = this.§3<§ != null ? this.§3<§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§10§);
         param1.writeUnsignedInt(this.§0a§);
         param1.writeUnsignedInt(this.§"!2§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§#W§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§@x§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§@x§,this.§#W§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§9§)
         {
            if((_loc15_ = this.§9§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§2! §)
            {
               if(_loc16_ = this.§6-§)
               {
                  this.uncompress();
               }
               this.§;M§ = §<G§.§for §(this.§4!>§,0,this.§4!>§.length);
               this.§2! § = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§;M§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§,S§.length > 0)
         {
            if(this.§#W§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§,S§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§,S§,this.§#W§);
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
         if(!param3 && this.§4!>§.length > 0)
         {
            if(this.§6-§)
            {
               if(§8!=§ || §;!@§)
               {
                  _loc13_ = this.§4!>§.length;
                  param1.writeBytes(this.§4!>§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§4!>§.length - 6;
                  param1.writeBytes(this.§4!>§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§4!>§.length;
               param1.writeBytes(this.§4!>§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§[B§(param1))
         {
         }
         return this.§[B§ === this.§ j§;
      }
      
      protected function § j§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §,!A§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§6n§(param1);
            if(this.§-l§ + this.§=[§ > 0)
            {
               this.§[B§ = this.§1!D§;
            }
            else
            {
               this.§[B§ = this.§'D§;
            }
            return true;
         }
         return false;
      }
      
      protected function §1!D§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§-l§ + this.§=[§)
         {
            this.§+f§(param1);
            this.§[B§ = this.§'D§;
            return true;
         }
         return false;
      }
      
      protected function §'D§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§<!9§)
         {
            this.§[B§ = this.§ j§;
            _loc2_ = false;
         }
         else if(this.§0a§ == 0)
         {
            this.§[B§ = this.§ j§;
         }
         else if(param1.bytesAvailable >= this.§0a§)
         {
            this.§90§(param1);
            this.§[B§ = this.§ j§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §6n§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§7!>§ = _loc2_ >> 8;
         this.§[1§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§7S§ = param1.readUnsignedShort();
         this.§&!?§ = (_loc3_ & 1) !== 0;
         this.§<!9§ = (_loc3_ & 8) !== 0;
         this.§>X§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§#W§ = "utf-8";
         }
         if(this.§7S§ === §+!6§)
         {
            this.§`d§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§0j§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§7S§ === §<b§)
         {
            this.§58§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§3<§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§10§ = param1.readUnsignedInt();
         this.§0a§ = param1.readUnsignedInt();
         this.§"!2§ = param1.readUnsignedInt();
         this.§-l§ = param1.readUnsignedShort();
         this.§=[§ = param1.readUnsignedShort();
      }
      
      protected function §+f§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§#W§ == "utf-8")
         {
            this.§@x§ = param1.readUTFBytes(this.§-l§);
         }
         else
         {
            this.§@x§ = param1.readMultiByte(this.§-l§,this.§#W§);
         }
         var _loc2_:uint = this.§=[§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§@x§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§;M§ = param1.readUnsignedInt();
               this.§2! § = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§9§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §90§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§7S§ === §<b§ && !this.§&!?§)
         {
            if(§8!=§ || §;!@§)
            {
               param1.readBytes(this.§4!>§,0,this.§0a§);
            }
            else
            {
               if(!this.§2! §)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§4!>§.writeByte(120);
               _loc2_ = ~this.§58§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§4!>§.writeByte(_loc2_);
               param1.readBytes(this.§4!>§,2,this.§0a§);
               this.§4!>§.position = this.§4!>§.length;
               this.§4!>§.writeUnsignedInt(this.§;M§);
            }
            this.§6-§ = true;
         }
         else
         {
            if(this.§7S§ != §6!'§)
            {
               throw new Error("Compression method " + this.§7S§ + " is not supported.");
            }
            param1.readBytes(this.§4!>§,0,this.§0a§);
            this.§6-§ = false;
         }
         this.§4!>§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§6-§)
         {
            if(this.§4!>§.length > 0)
            {
               this.§4!>§.position = 0;
               this.§"!2§ = this.§4!>§.length;
               if(§;!@§)
               {
                  this.§4!>§.deflate();
                  this.§0a§ = this.§4!>§.length;
               }
               else if(§8!=§)
               {
                  this.§4!>§.compress.apply(this.§4!>§,["deflate"]);
                  this.§0a§ = this.§4!>§.length;
               }
               else
               {
                  this.§4!>§.compress();
                  this.§0a§ = this.§4!>§.length - 6;
               }
               this.§4!>§.position = 0;
               this.§6-§ = true;
            }
            else
            {
               this.§0a§ = 0;
               this.§"!2§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§6-§ && this.§4!>§.length > 0)
         {
            this.§4!>§.position = 0;
            if(§;!@§)
            {
               this.§4!>§.inflate();
            }
            else if(§8!=§)
            {
               this.§4!>§.uncompress.apply(this.§4!>§,["deflate"]);
            }
            else
            {
               this.§4!>§.uncompress();
            }
            this.§4!>§.position = 0;
            this.§6-§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§@x§ + "\n  date:" + this.§3<§ + "\n  sizeCompressed:" + this.§0a§ + "\n  sizeUncompressed:" + this.§"!2§ + "\n  versionHost:" + this.§7!>§ + "\n  versionNumber:" + this.§[1§ + "\n  compressionMethod:" + this.§7S§ + "\n  encrypted:" + this.§&!?§ + "\n  hasDataDescriptor:" + this.§<!9§ + "\n  hasCompressedPatchedData:" + this.§>X§ + "\n  filenameEncoding:" + this.§#W§ + "\n  crc32:" + this.§10§.toString(16) + "\n  adler32:" + this.§;M§.toString(16);
      }
   }
}

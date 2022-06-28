package §'6§
{
   import §&!H§.§<G§;
   import flash.utils.*;
   
   public class §7!>§
   {
      
      public static const §^O§:int = 0;
      
      public static const §+!6§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §#!?§:int = 6;
      
      public static const §<b§:int = 7;
      
      public static const §&S§:int = 8;
      
      public static const §0F§:int = 9;
      
      public static const §8!=§:int = 10;
      
      protected static var §;!@§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §"!+§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §[1§:int = 0;
      
      protected var §7S§:String = "2.0";
      
      protected var §&!?§:int = 8;
      
      protected var §`d§:Boolean = false;
      
      protected var §0j§:int = -1;
      
      protected var §58§:int = -1;
      
      protected var §<!9§:int = -1;
      
      protected var §>X§:Boolean = false;
      
      protected var §3<§:Boolean = false;
      
      protected var §;M§:Date;
      
      protected var §2! §:uint;
      
      protected var §-l§:Boolean = false;
      
      protected var §=[§:uint = 0;
      
      protected var §@x§:uint = 0;
      
      protected var §#W§:String = "";
      
      protected var §9§:String;
      
      protected var §,S§:Dictionary;
      
      protected var §4!>§:String = "";
      
      protected var §10§:ByteArray;
      
      var §0a§:uint;
      
      var §"!2§:uint = 0;
      
      var §6-§:uint = 0;
      
      protected var §2!?§:Boolean = false;
      
      protected var §5!8§:Function;
      
      public function §7!>§(param1:String = "utf-8")
      {
         this.§5!8§ = this.§1!D§;
         super();
         this.§9§ = param1;
         this.§,S§ = new Dictionary();
         this.§10§ = new ByteArray();
         this.§10§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §4T§() : Date
      {
         return this.§;M§;
      }
      
      public function set §4T§(param1:Date) : void
      {
         this.§;M§ = param1 != null ? param1 : new Date();
      }
      
      public function get §`"§() : String
      {
         return this.§#W§;
      }
      
      public function set §`"§(param1:String) : void
      {
         this.§#W§ = param1;
      }
      
      function get §%!2§() : Boolean
      {
         return this.§>X§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§2!?§)
         {
            this.uncompress();
         }
         return this.§10§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§'r§(param1);
      }
      
      public function §'r§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§10§,0,param1.length);
            this.§0a§ = §<G§.§[d§(this.§10§);
            this.§-l§ = false;
         }
         else
         {
            this.§10§.length = 0;
            this.§10§.position = 0;
            this.§2!?§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§6-§ = this.§"!2§ = this.§10§.length;
         }
      }
      
      public function get §=8§() : String
      {
         return this.§7S§;
      }
      
      public function get §^u§() : uint
      {
         return this.§"!2§;
      }
      
      public function get §0I§() : uint
      {
         return this.§6-§;
      }
      
      public function §=Y§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§2!?§)
         {
            this.uncompress();
         }
         this.§10§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§10§.readUTFBytes(this.§10§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§10§.readMultiByte(this.§10§.bytesAvailable,param2);
         }
         this.§10§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function § j§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§10§.length = 0;
         this.§10§.position = 0;
         this.§2!?§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§10§.writeUTFBytes(param1);
            }
            else
            {
               this.§10§.writeMultiByte(param1,param2);
            }
            this.§0a§ = §<G§.§[d§(this.§10§);
            this.§-l§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§6-§ = this.§"!2§ = this.§10§.length;
         }
      }
      
      public function § ^§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§[!8§.§1v§);
            param1.writeShort(this.§[1§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§[!8§.§==§);
         }
         param1.writeShort(this.§[1§ << 8 | 20);
         param1.writeShort(this.§9§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§2!?§ ? int(§&S§) : int(§^O§));
         var _loc5_:Date = this.§;M§ != null ? this.§;M§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§0a§);
         param1.writeUnsignedInt(this.§"!2§);
         param1.writeUnsignedInt(this.§6-§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§9§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§#W§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§#W§,this.§9§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§,S§)
         {
            if((_loc15_ = this.§,S§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§-l§)
            {
               if(_loc16_ = this.§2!?§)
               {
                  this.uncompress();
               }
               this.§2! § = §<G§.§for §(this.§10§,0,this.§10§.length);
               this.§-l§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§2! §);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§4!>§.length > 0)
         {
            if(this.§9§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§4!>§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§4!>§,this.§9§);
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
         if(!param3 && this.§10§.length > 0)
         {
            if(this.§2!?§)
            {
               if(§;!@§ || §"!+§)
               {
                  _loc13_ = this.§10§.length;
                  param1.writeBytes(this.§10§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§10§.length - 6;
                  param1.writeBytes(this.§10§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§10§.length;
               param1.writeBytes(this.§10§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§5!8§(param1))
         {
         }
         return this.§5!8§ === this.§,!A§;
      }
      
      protected function §,!A§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §1!D§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§+f§(param1);
            if(this.§=[§ + this.§@x§ > 0)
            {
               this.§5!8§ = this.§'D§;
            }
            else
            {
               this.§5!8§ = this.§6n§;
            }
            return true;
         }
         return false;
      }
      
      protected function §'D§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§=[§ + this.§@x§)
         {
            this.§90§(param1);
            this.§5!8§ = this.§6n§;
            return true;
         }
         return false;
      }
      
      protected function §6n§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§>X§)
         {
            this.§5!8§ = this.§,!A§;
            _loc2_ = false;
         }
         else if(this.§"!2§ == 0)
         {
            this.§5!8§ = this.§,!A§;
         }
         else if(param1.bytesAvailable >= this.§"!2§)
         {
            this.§6!'§(param1);
            this.§5!8§ = this.§,!A§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §+f§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§[1§ = _loc2_ >> 8;
         this.§7S§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§&!?§ = param1.readUnsignedShort();
         this.§`d§ = (_loc3_ & 1) !== 0;
         this.§>X§ = (_loc3_ & 8) !== 0;
         this.§3<§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§9§ = "utf-8";
         }
         if(this.§&!?§ === §#!?§)
         {
            this.§0j§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§58§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§&!?§ === §&S§)
         {
            this.§<!9§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§;M§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§0a§ = param1.readUnsignedInt();
         this.§"!2§ = param1.readUnsignedInt();
         this.§6-§ = param1.readUnsignedInt();
         this.§=[§ = param1.readUnsignedShort();
         this.§@x§ = param1.readUnsignedShort();
      }
      
      protected function §90§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§9§ == "utf-8")
         {
            this.§#W§ = param1.readUTFBytes(this.§=[§);
         }
         else
         {
            this.§#W§ = param1.readMultiByte(this.§=[§,this.§9§);
         }
         var _loc2_:uint = this.§@x§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§#W§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§2! § = param1.readUnsignedInt();
               this.§-l§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§,S§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §6!'§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§&!?§ === §&S§ && !this.§`d§)
         {
            if(§;!@§ || §"!+§)
            {
               param1.readBytes(this.§10§,0,this.§"!2§);
            }
            else
            {
               if(!this.§-l§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§10§.writeByte(120);
               _loc2_ = ~this.§<!9§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§10§.writeByte(_loc2_);
               param1.readBytes(this.§10§,2,this.§"!2§);
               this.§10§.position = this.§10§.length;
               this.§10§.writeUnsignedInt(this.§2! §);
            }
            this.§2!?§ = true;
         }
         else
         {
            if(this.§&!?§ != §^O§)
            {
               throw new Error("Compression method " + this.§&!?§ + " is not supported.");
            }
            param1.readBytes(this.§10§,0,this.§"!2§);
            this.§2!?§ = false;
         }
         this.§10§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§2!?§)
         {
            if(this.§10§.length > 0)
            {
               this.§10§.position = 0;
               this.§6-§ = this.§10§.length;
               if(§"!+§)
               {
                  this.§10§.deflate();
                  this.§"!2§ = this.§10§.length;
               }
               else if(§;!@§)
               {
                  this.§10§.compress.apply(this.§10§,["deflate"]);
                  this.§"!2§ = this.§10§.length;
               }
               else
               {
                  this.§10§.compress();
                  this.§"!2§ = this.§10§.length - 6;
               }
               this.§10§.position = 0;
               this.§2!?§ = true;
            }
            else
            {
               this.§"!2§ = 0;
               this.§6-§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§2!?§ && this.§10§.length > 0)
         {
            this.§10§.position = 0;
            if(§"!+§)
            {
               this.§10§.inflate();
            }
            else if(§;!@§)
            {
               this.§10§.uncompress.apply(this.§10§,["deflate"]);
            }
            else
            {
               this.§10§.uncompress();
            }
            this.§10§.position = 0;
            this.§2!?§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§#W§ + "\n  date:" + this.§;M§ + "\n  sizeCompressed:" + this.§"!2§ + "\n  sizeUncompressed:" + this.§6-§ + "\n  versionHost:" + this.§[1§ + "\n  versionNumber:" + this.§7S§ + "\n  compressionMethod:" + this.§&!?§ + "\n  encrypted:" + this.§`d§ + "\n  hasDataDescriptor:" + this.§>X§ + "\n  hasCompressedPatchedData:" + this.§3<§ + "\n  filenameEncoding:" + this.§9§ + "\n  crc32:" + this.§0a§.toString(16) + "\n  adler32:" + this.§2! §.toString(16);
      }
   }
}

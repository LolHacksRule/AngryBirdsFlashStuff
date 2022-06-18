package §2"_§
{
   import §"!m§.§@$§;
   import flash.utils.*;
   
   public class §3#8§
   {
      
      public static const §4!R§:int = 0;
      
      public static const §+"z§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §<!9§:int = 6;
      
      public static const §,#M§:int = 7;
      
      public static const §+"7§:int = 8;
      
      public static const §'"q§:int = 9;
      
      public static const §9"[§:int = 10;
      
      protected static var §!#m§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §6!J§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §[!r§:int = 0;
      
      protected var §8"'§:String = "2.0";
      
      protected var §2"§:int = 8;
      
      protected var §1-§:Boolean = false;
      
      protected var §@#D§:int = -1;
      
      protected var §4#I§:int = -1;
      
      protected var §&!y§:int = -1;
      
      protected var §4#e§:Boolean = false;
      
      protected var §29§:Boolean = false;
      
      protected var §5!]§:Date;
      
      protected var §9!X§:uint;
      
      protected var §]#v§:Boolean = false;
      
      protected var §,J§:uint = 0;
      
      protected var § #i§:uint = 0;
      
      protected var §>!L§:String = "";
      
      protected var §<!^§:String;
      
      protected var §,k§:Dictionary;
      
      protected var §0"%§:String = "";
      
      protected var §8!9§:ByteArray;
      
      var §%"M§:uint;
      
      var §^"s§:uint = 0;
      
      var §'";§:uint = 0;
      
      protected var §6"F§:Boolean = false;
      
      protected var §2P§:Function;
      
      public function §3#8§(param1:String = "utf-8")
      {
         this.§2P§ = this.§<g§;
         super();
         this.§<!^§ = param1;
         this.§,k§ = new Dictionary();
         this.§8!9§ = new ByteArray();
         this.§8!9§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §3$D§() : Date
      {
         return this.§5!]§;
      }
      
      public function set §3$D§(param1:Date) : void
      {
         this.§5!]§ = param1 != null ? param1 : new Date();
      }
      
      public function get filename() : String
      {
         return this.§>!L§;
      }
      
      public function set filename(param1:String) : void
      {
         this.§>!L§ = param1;
      }
      
      function get §?$-§() : Boolean
      {
         return this.§4#e§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§6"F§)
         {
            this.uncompress();
         }
         return this.§8!9§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§5!h§(param1);
      }
      
      public function §5!h§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§8!9§,0,param1.length);
            this.§%"M§ = §@$§.§="y§(this.§8!9§);
            this.§]#v§ = false;
         }
         else
         {
            this.§8!9§.length = 0;
            this.§8!9§.position = 0;
            this.§6"F§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§'";§ = this.§^"s§ = this.§8!9§.length;
         }
      }
      
      public function get §#!h§() : String
      {
         return this.§8"'§;
      }
      
      public function get §?"+§() : uint
      {
         return this.§^"s§;
      }
      
      public function get §["i§() : uint
      {
         return this.§'";§;
      }
      
      public function §"$4§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§6"F§)
         {
            this.uncompress();
         }
         this.§8!9§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§8!9§.readUTFBytes(this.§8!9§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§8!9§.readMultiByte(this.§8!9§.bytesAvailable,param2);
         }
         this.§8!9§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §@m§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§8!9§.length = 0;
         this.§8!9§.position = 0;
         this.§6"F§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§8!9§.writeUTFBytes(param1);
            }
            else
            {
               this.§8!9§.writeMultiByte(param1,param2);
            }
            this.§%"M§ = §@$§.§="y§(this.§8!9§);
            this.§]#v§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§'";§ = this.§^"s§ = this.§8!9§.length;
         }
      }
      
      public function §+!>§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§6!L§.§>#f§);
            param1.writeShort(this.§[!r§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§6!L§.§!@§);
         }
         param1.writeShort(this.§[!r§ << 8 | 20);
         param1.writeShort(this.§<!^§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§6"F§ ? int(§+"7§) : int(§4!R§));
         var _loc5_:Date = this.§5!]§ != null ? this.§5!]§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§%"M§);
         param1.writeUnsignedInt(this.§^"s§);
         param1.writeUnsignedInt(this.§'";§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§<!^§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§>!L§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§>!L§,this.§<!^§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§,k§)
         {
            if((_loc15_ = this.§,k§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§]#v§)
            {
               if(_loc16_ = this.§6"F§)
               {
                  this.uncompress();
               }
               this.§9!X§ = §@$§.§3">§(this.§8!9§,0,this.§8!9§.length);
               this.§]#v§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§9!X§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§0"%§.length > 0)
         {
            if(this.§<!^§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§0"%§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§0"%§,this.§<!^§);
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
         if(!param3 && this.§8!9§.length > 0)
         {
            if(this.§6"F§)
            {
               if(§!#m§ || §6!J§)
               {
                  _loc13_ = this.§8!9§.length;
                  param1.writeBytes(this.§8!9§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§8!9§.length - 6;
                  param1.writeBytes(this.§8!9§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§8!9§.length;
               param1.writeBytes(this.§8!9§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§2P§(param1))
         {
         }
         return this.§2P§ === this.§'"]§;
      }
      
      protected function §'"]§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §<g§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§"!#§(param1);
            if(this.§,J§ + this.§ #i§ > 0)
            {
               this.§2P§ = this.§0!Y§;
            }
            else
            {
               this.§2P§ = this.§3!P§;
            }
            return true;
         }
         return false;
      }
      
      protected function §0!Y§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§,J§ + this.§ #i§)
         {
            this.§<d§(param1);
            this.§2P§ = this.§3!P§;
            return true;
         }
         return false;
      }
      
      protected function §3!P§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§4#e§)
         {
            this.§2P§ = this.§'"]§;
            _loc2_ = false;
         }
         else if(this.§^"s§ == 0)
         {
            this.§2P§ = this.§'"]§;
         }
         else if(param1.bytesAvailable >= this.§^"s§)
         {
            this.§%$0§(param1);
            this.§2P§ = this.§'"]§;
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
         this.§[!r§ = _loc2_ >> 8;
         this.§8"'§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§2"§ = param1.readUnsignedShort();
         this.§1-§ = (_loc3_ & 1) !== 0;
         this.§4#e§ = (_loc3_ & 8) !== 0;
         this.§29§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§<!^§ = "utf-8";
         }
         if(this.§2"§ === §<!9§)
         {
            this.§@#D§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§4#I§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§2"§ === §+"7§)
         {
            this.§&!y§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§5!]§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§%"M§ = param1.readUnsignedInt();
         this.§^"s§ = param1.readUnsignedInt();
         this.§'";§ = param1.readUnsignedInt();
         this.§,J§ = param1.readUnsignedShort();
         this.§ #i§ = param1.readUnsignedShort();
      }
      
      protected function §<d§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§<!^§ == "utf-8")
         {
            this.§>!L§ = param1.readUTFBytes(this.§,J§);
         }
         else
         {
            this.§>!L§ = param1.readMultiByte(this.§,J§,this.§<!^§);
         }
         var _loc2_:uint = this.§ #i§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§>!L§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§9!X§ = param1.readUnsignedInt();
               this.§]#v§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§,k§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §%$0§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§2"§ === §+"7§ && !this.§1-§)
         {
            if(§!#m§ || §6!J§)
            {
               param1.readBytes(this.§8!9§,0,this.§^"s§);
            }
            else
            {
               if(!this.§]#v§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§8!9§.writeByte(120);
               _loc2_ = ~this.§&!y§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§8!9§.writeByte(_loc2_);
               param1.readBytes(this.§8!9§,2,this.§^"s§);
               this.§8!9§.position = this.§8!9§.length;
               this.§8!9§.writeUnsignedInt(this.§9!X§);
            }
            this.§6"F§ = true;
         }
         else if(this.§2"§ == §4!R§)
         {
            param1.readBytes(this.§8!9§,0,this.§^"s§);
            this.§6"F§ = false;
         }
         else
         {
            throw new Error("Compression method " + this.§2"§ + " is not supported.");
         }
         this.§8!9§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§6"F§)
         {
            if(this.§8!9§.length > 0)
            {
               this.§8!9§.position = 0;
               this.§'";§ = this.§8!9§.length;
               if(§6!J§)
               {
                  this.§8!9§.deflate();
                  this.§^"s§ = this.§8!9§.length;
               }
               else if(§!#m§)
               {
                  this.§8!9§.compress.apply(this.§8!9§,["deflate"]);
                  this.§^"s§ = this.§8!9§.length;
               }
               else
               {
                  this.§8!9§.compress();
                  this.§^"s§ = this.§8!9§.length - 6;
               }
               this.§8!9§.position = 0;
               this.§6"F§ = true;
            }
            else
            {
               this.§^"s§ = 0;
               this.§'";§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§6"F§ && this.§8!9§.length > 0)
         {
            this.§8!9§.position = 0;
            if(§6!J§)
            {
               this.§8!9§.inflate();
            }
            else if(§!#m§)
            {
               this.§8!9§.uncompress.apply(this.§8!9§,["deflate"]);
            }
            else
            {
               this.§8!9§.uncompress();
            }
            this.§8!9§.position = 0;
            this.§6"F§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§>!L§ + "\n  date:" + this.§5!]§ + "\n  sizeCompressed:" + this.§^"s§ + "\n  sizeUncompressed:" + this.§'";§ + "\n  versionHost:" + this.§[!r§ + "\n  versionNumber:" + this.§8"'§ + "\n  compressionMethod:" + this.§2"§ + "\n  encrypted:" + this.§1-§ + "\n  hasDataDescriptor:" + this.§4#e§ + "\n  hasCompressedPatchedData:" + this.§29§ + "\n  filenameEncoding:" + this.§<!^§ + "\n  crc32:" + this.§%"M§.toString(16) + "\n  adler32:" + this.§9!X§.toString(16);
      }
   }
}

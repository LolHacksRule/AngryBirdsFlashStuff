package §;Z§
{
   import §8j§.§%Z§;
   import flash.utils.*;
   
   public class §>E§
   {
      
      public static const §99§:int = 0;
      
      public static const §`s§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §^<§:int = 6;
      
      public static const §;>§:int = 7;
      
      public static const §4f§:int = 8;
      
      public static const §1!!§:int = 9;
      
      public static const §1y§:int = 10;
      
      protected static var §3!I§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §7R§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §2!J§:int = 0;
      
      protected var §`!>§:String = "2.0";
      
      protected var §!,§:int = 8;
      
      protected var §!!4§:Boolean = false;
      
      protected var §9E§:int = -1;
      
      protected var §2m§:int = -1;
      
      protected var §7D§:int = -1;
      
      protected var §;y§:Boolean = false;
      
      protected var §[!+§:Boolean = false;
      
      protected var §0o§:Date;
      
      protected var §[!'§:uint;
      
      protected var §-=§:Boolean = false;
      
      protected var §^!,§:uint = 0;
      
      protected var §&!H§:uint = 0;
      
      protected var §5k§:String = "";
      
      protected var §+a§:String;
      
      protected var § case§:Dictionary;
      
      protected var §'@§:String = "";
      
      protected var §+g§:ByteArray;
      
      var §4g§:uint;
      
      var §<!J§:uint = 0;
      
      var §-+§:uint = 0;
      
      protected var §5$§:Boolean = false;
      
      protected var §@!'§:Function;
      
      public function §>E§(param1:String = "utf-8")
      {
         this.§@!'§ = this.§[l§;
         super();
         this.§+a§ = param1;
         this.§ case§ = new Dictionary();
         this.§+g§ = new ByteArray();
         this.§+g§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §47§() : Date
      {
         return this.§0o§;
      }
      
      public function set §47§(param1:Date) : void
      {
         this.§0o§ = param1 != null ? param1 : new Date();
      }
      
      public function get §<n§() : String
      {
         return this.§5k§;
      }
      
      public function set §<n§(param1:String) : void
      {
         this.§5k§ = param1;
      }
      
      function get §<^§() : Boolean
      {
         return this.§;y§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§5$§)
         {
            this.uncompress();
         }
         return this.§+g§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§=_§(param1);
      }
      
      public function §=_§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§+g§,0,param1.length);
            this.§4g§ = §%Z§.§5p§(this.§+g§);
            this.§-=§ = false;
         }
         else
         {
            this.§+g§.length = 0;
            this.§+g§.position = 0;
            this.§5$§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§-+§ = this.§<!J§ = this.§+g§.length;
         }
      }
      
      public function get §6k§() : String
      {
         return this.§`!>§;
      }
      
      public function get §1o§() : uint
      {
         return this.§<!J§;
      }
      
      public function get §>!&§() : uint
      {
         return this.§-+§;
      }
      
      public function §&!<§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§5$§)
         {
            this.uncompress();
         }
         this.§+g§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§+g§.readUTFBytes(this.§+g§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§+g§.readMultiByte(this.§+g§.bytesAvailable,param2);
         }
         this.§+g§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §!?§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§+g§.length = 0;
         this.§+g§.position = 0;
         this.§5$§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§+g§.writeUTFBytes(param1);
            }
            else
            {
               this.§+g§.writeMultiByte(param1,param2);
            }
            this.§4g§ = §%Z§.§5p§(this.§+g§);
            this.§-=§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§-+§ = this.§<!J§ = this.§+g§.length;
         }
      }
      
      public function § m§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§?A§.§"Z§);
            param1.writeShort(this.§2!J§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§?A§.§4^§);
         }
         param1.writeShort(this.§2!J§ << 8 | 20);
         param1.writeShort(this.§+a§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§5$§ ? int(§4f§) : int(§99§));
         var _loc5_:Date = this.§0o§ != null ? this.§0o§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§4g§);
         param1.writeUnsignedInt(this.§<!J§);
         param1.writeUnsignedInt(this.§-+§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§+a§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§5k§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§5k§,this.§+a§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§ case§)
         {
            if((_loc15_ = this.§ case§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§-=§)
            {
               if(_loc16_ = this.§5$§)
               {
                  this.uncompress();
               }
               this.§[!'§ = §%Z§.§%!0§(this.§+g§,0,this.§+g§.length);
               this.§-=§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§[!'§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§'@§.length > 0)
         {
            if(this.§+a§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§'@§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§'@§,this.§+a§);
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
         if(!param3 && this.§+g§.length > 0)
         {
            if(this.§5$§)
            {
               if(§3!I§ || §7R§)
               {
                  _loc13_ = this.§+g§.length;
                  param1.writeBytes(this.§+g§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§+g§.length - 6;
                  param1.writeBytes(this.§+g§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§+g§.length;
               param1.writeBytes(this.§+g§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§@!'§(param1))
         {
         }
         return this.§@!'§ === this.§?C§;
      }
      
      protected function §?C§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §[l§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§8!+§(param1);
            if(this.§^!,§ + this.§&!H§ > 0)
            {
               this.§@!'§ = this.§import§;
            }
            else
            {
               this.§@!'§ = this.§2!!§;
            }
            return true;
         }
         return false;
      }
      
      protected function §import§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§^!,§ + this.§&!H§)
         {
            this.§;!P§(param1);
            this.§@!'§ = this.§2!!§;
            return true;
         }
         return false;
      }
      
      protected function §2!!§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§;y§)
         {
            this.§@!'§ = this.§?C§;
            _loc2_ = false;
         }
         else if(this.§<!J§ == 0)
         {
            this.§@!'§ = this.§?C§;
         }
         else if(param1.bytesAvailable >= this.§<!J§)
         {
            this.§;7§(param1);
            this.§@!'§ = this.§?C§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §8!+§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§2!J§ = _loc2_ >> 8;
         this.§`!>§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§!,§ = param1.readUnsignedShort();
         this.§!!4§ = (_loc3_ & 1) !== 0;
         this.§;y§ = (_loc3_ & 8) !== 0;
         this.§[!+§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§+a§ = "utf-8";
         }
         if(this.§!,§ === §^<§)
         {
            this.§9E§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§2m§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§!,§ === §4f§)
         {
            this.§7D§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§0o§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§4g§ = param1.readUnsignedInt();
         this.§<!J§ = param1.readUnsignedInt();
         this.§-+§ = param1.readUnsignedInt();
         this.§^!,§ = param1.readUnsignedShort();
         this.§&!H§ = param1.readUnsignedShort();
      }
      
      protected function §;!P§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§+a§ == "utf-8")
         {
            this.§5k§ = param1.readUTFBytes(this.§^!,§);
         }
         else
         {
            this.§5k§ = param1.readMultiByte(this.§^!,§,this.§+a§);
         }
         var _loc2_:uint = this.§&!H§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§5k§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§[!'§ = param1.readUnsignedInt();
               this.§-=§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§ case§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §;7§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§!,§ === §4f§ && !this.§!!4§)
         {
            if(§3!I§ || §7R§)
            {
               param1.readBytes(this.§+g§,0,this.§<!J§);
            }
            else
            {
               if(!this.§-=§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§+g§.writeByte(120);
               _loc2_ = ~this.§7D§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§+g§.writeByte(_loc2_);
               param1.readBytes(this.§+g§,2,this.§<!J§);
               this.§+g§.position = this.§+g§.length;
               this.§+g§.writeUnsignedInt(this.§[!'§);
            }
            this.§5$§ = true;
         }
         else
         {
            if(this.§!,§ != §99§)
            {
               throw new Error("Compression method " + this.§!,§ + " is not supported.");
            }
            param1.readBytes(this.§+g§,0,this.§<!J§);
            this.§5$§ = false;
         }
         this.§+g§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§5$§)
         {
            if(this.§+g§.length > 0)
            {
               this.§+g§.position = 0;
               this.§-+§ = this.§+g§.length;
               if(§7R§)
               {
                  this.§+g§.deflate();
                  this.§<!J§ = this.§+g§.length;
               }
               else if(§3!I§)
               {
                  this.§+g§.compress.apply(this.§+g§,["deflate"]);
                  this.§<!J§ = this.§+g§.length;
               }
               else
               {
                  this.§+g§.compress();
                  this.§<!J§ = this.§+g§.length - 6;
               }
               this.§+g§.position = 0;
               this.§5$§ = true;
            }
            else
            {
               this.§<!J§ = 0;
               this.§-+§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§5$§ && this.§+g§.length > 0)
         {
            this.§+g§.position = 0;
            if(§7R§)
            {
               this.§+g§.inflate();
            }
            else if(§3!I§)
            {
               this.§+g§.uncompress.apply(this.§+g§,["deflate"]);
            }
            else
            {
               this.§+g§.uncompress();
            }
            this.§+g§.position = 0;
            this.§5$§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§5k§ + "\n  date:" + this.§0o§ + "\n  sizeCompressed:" + this.§<!J§ + "\n  sizeUncompressed:" + this.§-+§ + "\n  versionHost:" + this.§2!J§ + "\n  versionNumber:" + this.§`!>§ + "\n  compressionMethod:" + this.§!,§ + "\n  encrypted:" + this.§!!4§ + "\n  hasDataDescriptor:" + this.§;y§ + "\n  hasCompressedPatchedData:" + this.§[!+§ + "\n  filenameEncoding:" + this.§+a§ + "\n  crc32:" + this.§4g§.toString(16) + "\n  adler32:" + this.§[!'§.toString(16);
      }
   }
}

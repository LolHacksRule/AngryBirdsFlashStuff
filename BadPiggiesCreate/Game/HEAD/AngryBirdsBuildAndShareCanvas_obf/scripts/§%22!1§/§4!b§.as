package §"!1§
{
   import §3!@§.§["-§;
   import flash.utils.*;
   
   public class §4!b§
   {
      
      public static const §[!n§:int = 0;
      
      public static const §&j§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §<o§:int = 6;
      
      public static const §>!+§:int = 7;
      
      public static const §#!x§:int = 8;
      
      public static const §9"0§:int = 9;
      
      public static const §2!&§:int = 10;
      
      protected static var §8!6§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §0!"§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §7!>§:int = 0;
      
      protected var §1$§:String = "2.0";
      
      protected var §extends§:int = 8;
      
      protected var §9"4§:Boolean = false;
      
      protected var §=!W§:int = -1;
      
      protected var §9"7§:int = -1;
      
      protected var §["7§:int = -1;
      
      protected var §"!k§:Boolean = false;
      
      protected var §9!&§:Boolean = false;
      
      protected var §5!M§:Date;
      
      protected var §2"9§:uint;
      
      protected var §8!S§:Boolean = false;
      
      protected var §7h§:uint = 0;
      
      protected var §>K§:uint = 0;
      
      protected var §+!E§:String = "";
      
      protected var §>a§:String;
      
      protected var §`!@§:Dictionary;
      
      protected var §[![§:String = "";
      
      protected var §]!t§:ByteArray;
      
      var §8d§:uint;
      
      var §5!w§:uint = 0;
      
      var §&!_§:uint = 0;
      
      protected var §4"3§:Boolean = false;
      
      protected var §44§:Function;
      
      public function §4!b§(param1:String = "utf-8")
      {
         this.§44§ = this.§!!t§;
         super();
         this.§>a§ = param1;
         this.§`!@§ = new Dictionary();
         this.§]!t§ = new ByteArray();
         this.§]!t§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §%0§() : Date
      {
         return this.§5!M§;
      }
      
      public function set §%0§(param1:Date) : void
      {
         this.§5!M§ = param1 != null ? param1 : new Date();
      }
      
      public function get §['§() : String
      {
         return this.§+!E§;
      }
      
      public function set §['§(param1:String) : void
      {
         this.§+!E§ = param1;
      }
      
      function get §'H§() : Boolean
      {
         return this.§"!k§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§4"3§)
         {
            this.uncompress();
         }
         return this.§]!t§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§'h§(param1);
      }
      
      public function §'h§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§]!t§,0,param1.length);
            this.§8d§ = §["-§.§7"2§(this.§]!t§);
            this.§8!S§ = false;
         }
         else
         {
            this.§]!t§.length = 0;
            this.§]!t§.position = 0;
            this.§4"3§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§&!_§ = this.§5!w§ = this.§]!t§.length;
         }
      }
      
      public function get §7!!§() : String
      {
         return this.§1$§;
      }
      
      public function get §6C§() : uint
      {
         return this.§5!w§;
      }
      
      public function get §-K§() : uint
      {
         return this.§&!_§;
      }
      
      public function §^! §(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§4"3§)
         {
            this.uncompress();
         }
         this.§]!t§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§]!t§.readUTFBytes(this.§]!t§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§]!t§.readMultiByte(this.§]!t§.bytesAvailable,param2);
         }
         this.§]!t§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §&!V§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§]!t§.length = 0;
         this.§]!t§.position = 0;
         this.§4"3§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§]!t§.writeUTFBytes(param1);
            }
            else
            {
               this.§]!t§.writeMultiByte(param1,param2);
            }
            this.§8d§ = §["-§.§7"2§(this.§]!t§);
            this.§8!S§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§&!_§ = this.§5!w§ = this.§]!t§.length;
         }
      }
      
      public function §>!3§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§?!q§.§-!Q§);
            param1.writeShort(this.§7!>§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§?!q§.§'!b§);
         }
         param1.writeShort(this.§7!>§ << 8 | 20);
         param1.writeShort(this.§>a§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§4"3§ ? int(§#!x§) : int(§[!n§));
         var _loc5_:Date = this.§5!M§ != null ? this.§5!M§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§8d§);
         param1.writeUnsignedInt(this.§5!w§);
         param1.writeUnsignedInt(this.§&!_§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§>a§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§+!E§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§+!E§,this.§>a§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§`!@§)
         {
            if((_loc15_ = this.§`!@§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§8!S§)
            {
               if(_loc16_ = this.§4"3§)
               {
                  this.uncompress();
               }
               this.§2"9§ = §["-§.§2"+§(this.§]!t§,0,this.§]!t§.length);
               this.§8!S§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§2"9§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§[![§.length > 0)
         {
            if(this.§>a§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§[![§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§[![§,this.§>a§);
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
         if(!param3 && this.§]!t§.length > 0)
         {
            if(this.§4"3§)
            {
               if(§8!6§ || §0!"§)
               {
                  _loc13_ = this.§]!t§.length;
                  param1.writeBytes(this.§]!t§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§]!t§.length - 6;
                  param1.writeBytes(this.§]!t§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§]!t§.length;
               param1.writeBytes(this.§]!t§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§44§(param1))
         {
         }
         return this.§44§ === this.§3c§;
      }
      
      protected function §3c§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §!!t§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§=!;§(param1);
            if(this.§7h§ + this.§>K§ > 0)
            {
               this.§44§ = this.§5m§;
            }
            else
            {
               this.§44§ = this.§^""§;
            }
            return true;
         }
         return false;
      }
      
      protected function §5m§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§7h§ + this.§>K§)
         {
            this.§>!-§(param1);
            this.§44§ = this.§^""§;
            return true;
         }
         return false;
      }
      
      protected function §^""§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§"!k§)
         {
            this.§44§ = this.§3c§;
            _loc2_ = false;
         }
         else if(this.§5!w§ == 0)
         {
            this.§44§ = this.§3c§;
         }
         else if(param1.bytesAvailable >= this.§5!w§)
         {
            this.§<h§(param1);
            this.§44§ = this.§3c§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §=!;§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§7!>§ = _loc2_ >> 8;
         this.§1$§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§extends§ = param1.readUnsignedShort();
         this.§9"4§ = (_loc3_ & 1) !== 0;
         this.§"!k§ = (_loc3_ & 8) !== 0;
         this.§9!&§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§>a§ = "utf-8";
         }
         if(this.§extends§ === §<o§)
         {
            this.§=!W§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§9"7§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§extends§ === §#!x§)
         {
            this.§["7§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§5!M§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§8d§ = param1.readUnsignedInt();
         this.§5!w§ = param1.readUnsignedInt();
         this.§&!_§ = param1.readUnsignedInt();
         this.§7h§ = param1.readUnsignedShort();
         this.§>K§ = param1.readUnsignedShort();
      }
      
      protected function §>!-§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§>a§ == "utf-8")
         {
            this.§+!E§ = param1.readUTFBytes(this.§7h§);
         }
         else
         {
            this.§+!E§ = param1.readMultiByte(this.§7h§,this.§>a§);
         }
         var _loc2_:uint = this.§>K§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§+!E§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§2"9§ = param1.readUnsignedInt();
               this.§8!S§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§`!@§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §<h§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§extends§ === §#!x§ && !this.§9"4§)
         {
            if(§8!6§ || §0!"§)
            {
               param1.readBytes(this.§]!t§,0,this.§5!w§);
            }
            else
            {
               if(!this.§8!S§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§]!t§.writeByte(120);
               _loc2_ = ~this.§["7§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§]!t§.writeByte(_loc2_);
               param1.readBytes(this.§]!t§,2,this.§5!w§);
               this.§]!t§.position = this.§]!t§.length;
               this.§]!t§.writeUnsignedInt(this.§2"9§);
            }
            this.§4"3§ = true;
         }
         else
         {
            if(this.§extends§ != §[!n§)
            {
               throw new Error("Compression method " + this.§extends§ + " is not supported.");
            }
            param1.readBytes(this.§]!t§,0,this.§5!w§);
            this.§4"3§ = false;
         }
         this.§]!t§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§4"3§)
         {
            if(this.§]!t§.length > 0)
            {
               this.§]!t§.position = 0;
               this.§&!_§ = this.§]!t§.length;
               if(§0!"§)
               {
                  this.§]!t§.deflate();
                  this.§5!w§ = this.§]!t§.length;
               }
               else if(§8!6§)
               {
                  this.§]!t§.compress.apply(this.§]!t§,["deflate"]);
                  this.§5!w§ = this.§]!t§.length;
               }
               else
               {
                  this.§]!t§.compress();
                  this.§5!w§ = this.§]!t§.length - 6;
               }
               this.§]!t§.position = 0;
               this.§4"3§ = true;
            }
            else
            {
               this.§5!w§ = 0;
               this.§&!_§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§4"3§ && this.§]!t§.length > 0)
         {
            this.§]!t§.position = 0;
            if(§0!"§)
            {
               this.§]!t§.inflate();
            }
            else if(§8!6§)
            {
               this.§]!t§.uncompress.apply(this.§]!t§,["deflate"]);
            }
            else
            {
               this.§]!t§.uncompress();
            }
            this.§]!t§.position = 0;
            this.§4"3§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§+!E§ + "\n  date:" + this.§5!M§ + "\n  sizeCompressed:" + this.§5!w§ + "\n  sizeUncompressed:" + this.§&!_§ + "\n  versionHost:" + this.§7!>§ + "\n  versionNumber:" + this.§1$§ + "\n  compressionMethod:" + this.§extends§ + "\n  encrypted:" + this.§9"4§ + "\n  hasDataDescriptor:" + this.§"!k§ + "\n  hasCompressedPatchedData:" + this.§9!&§ + "\n  filenameEncoding:" + this.§>a§ + "\n  crc32:" + this.§8d§.toString(16) + "\n  adler32:" + this.§2"9§.toString(16);
      }
   }
}

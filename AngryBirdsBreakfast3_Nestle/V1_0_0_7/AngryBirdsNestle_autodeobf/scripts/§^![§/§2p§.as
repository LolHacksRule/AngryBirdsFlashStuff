package §^![§
{
   import §+!b§.§]o§;
   import flash.utils.*;
   
   public class §2p§
   {
      
      public static const §@5§:int = 0;
      
      public static const §,,§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const § !J§:int = 6;
      
      public static const §>S§:int = 7;
      
      public static const §<n§:int = 8;
      
      public static const §=!x§:int = 9;
      
      public static const §-f§:int = 10;
      
      protected static var §4!#§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §>!W§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §7$§:int = 0;
      
      protected var §5q§:String = "2.0";
      
      protected var §>o§:int = 8;
      
      protected var §;2§:Boolean = false;
      
      protected var §+U§:int = -1;
      
      protected var §5!x§:int = -1;
      
      protected var §7!_§:int = -1;
      
      protected var §0!R§:Boolean = false;
      
      protected var §]!P§:Boolean = false;
      
      protected var §5!I§:Date;
      
      protected var §&!R§:uint;
      
      protected var §6R§:Boolean = false;
      
      protected var §&!m§:uint = 0;
      
      protected var §#!U§:uint = 0;
      
      protected var §8!v§:String = "";
      
      protected var §5!<§:String;
      
      protected var §3S§:Dictionary;
      
      protected var §;!V§:String = "";
      
      protected var §+X§:ByteArray;
      
      var §#"1§:uint;
      
      var §8x§:uint = 0;
      
      var §&J§:uint = 0;
      
      protected var §?!f§:Boolean = false;
      
      protected var §>x§:Function;
      
      public function §2p§(param1:String = "utf-8")
      {
         this.§>x§ = this.§2k§;
         super();
         this.§5!<§ = param1;
         this.§3S§ = new Dictionary();
         this.§+X§ = new ByteArray();
         this.§+X§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §2!Z§() : Date
      {
         return this.§5!I§;
      }
      
      public function set §2!Z§(param1:Date) : void
      {
         this.§5!I§ = param1 != null ? param1 : new Date();
      }
      
      public function get §]!+§() : String
      {
         return this.§8!v§;
      }
      
      public function set §]!+§(param1:String) : void
      {
         this.§8!v§ = param1;
      }
      
      function get §5!%§() : Boolean
      {
         return this.§0!R§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§?!f§)
         {
            this.uncompress();
         }
         return this.§+X§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§9h§(param1);
      }
      
      public function §9h§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§+X§,0,param1.length);
            this.§#"1§ = §]o§.§9!L§(this.§+X§);
            this.§6R§ = false;
         }
         else
         {
            this.§+X§.length = 0;
            this.§+X§.position = 0;
            this.§?!f§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§&J§ = this.§8x§ = this.§+X§.length;
         }
      }
      
      public function get §>t§() : String
      {
         return this.§5q§;
      }
      
      public function get §6!Y§() : uint
      {
         return this.§8x§;
      }
      
      public function get §`!W§() : uint
      {
         return this.§&J§;
      }
      
      public function §7!?§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§?!f§)
         {
            this.uncompress();
         }
         this.§+X§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§+X§.readUTFBytes(this.§+X§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§+X§.readMultiByte(this.§+X§.bytesAvailable,param2);
         }
         this.§+X§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §2^§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§+X§.length = 0;
         this.§+X§.position = 0;
         this.§?!f§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§+X§.writeUTFBytes(param1);
            }
            else
            {
               this.§+X§.writeMultiByte(param1,param2);
            }
            this.§#"1§ = §]o§.§9!L§(this.§+X§);
            this.§6R§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§&J§ = this.§8x§ = this.§+X§.length;
         }
      }
      
      public function §-!x§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§`!q§.§,!'§);
            param1.writeShort(this.§7$§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§`!q§.§[!y§);
         }
         param1.writeShort(this.§7$§ << 8 | 20);
         param1.writeShort(this.§5!<§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§?!f§ ? int(§<n§) : int(§@5§));
         var _loc5_:Date = this.§5!I§ != null ? this.§5!I§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§#"1§);
         param1.writeUnsignedInt(this.§8x§);
         param1.writeUnsignedInt(this.§&J§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§5!<§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§8!v§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§8!v§,this.§5!<§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§3S§)
         {
            if((_loc15_ = this.§3S§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§6R§)
            {
               if(_loc16_ = this.§?!f§)
               {
                  this.uncompress();
               }
               this.§&!R§ = §]o§.§ !M§(this.§+X§,0,this.§+X§.length);
               this.§6R§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§&!R§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§;!V§.length > 0)
         {
            if(this.§5!<§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§;!V§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§;!V§,this.§5!<§);
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
         if(!param3 && this.§+X§.length > 0)
         {
            if(this.§?!f§)
            {
               if(§4!#§ || §>!W§)
               {
                  _loc13_ = this.§+X§.length;
                  param1.writeBytes(this.§+X§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§+X§.length - 6;
                  param1.writeBytes(this.§+X§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§+X§.length;
               param1.writeBytes(this.§+X§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§>x§(param1))
         {
         }
         return this.§>x§ === this.§@9§;
      }
      
      protected function §@9§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §2k§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§>L§(param1);
            if(this.§&!m§ + this.§#!U§ > 0)
            {
               this.§>x§ = this.§#6§;
            }
            else
            {
               this.§>x§ = this.§`!t§;
            }
            return true;
         }
         return false;
      }
      
      protected function §#6§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§&!m§ + this.§#!U§)
         {
            this.§,B§(param1);
            this.§>x§ = this.§`!t§;
            return true;
         }
         return false;
      }
      
      protected function §`!t§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§0!R§)
         {
            this.§>x§ = this.§@9§;
            _loc2_ = false;
         }
         else if(this.§8x§ == 0)
         {
            this.§>x§ = this.§@9§;
         }
         else if(param1.bytesAvailable >= this.§8x§)
         {
            this.parseContent(param1);
            this.§>x§ = this.§@9§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §>L§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§7$§ = _loc2_ >> 8;
         this.§5q§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§>o§ = param1.readUnsignedShort();
         this.§;2§ = (_loc3_ & 1) !== 0;
         this.§0!R§ = (_loc3_ & 8) !== 0;
         this.§]!P§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§5!<§ = "utf-8";
         }
         if(this.§>o§ === § !J§)
         {
            this.§+U§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§5!x§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§>o§ === §<n§)
         {
            this.§7!_§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§5!I§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§#"1§ = param1.readUnsignedInt();
         this.§8x§ = param1.readUnsignedInt();
         this.§&J§ = param1.readUnsignedInt();
         this.§&!m§ = param1.readUnsignedShort();
         this.§#!U§ = param1.readUnsignedShort();
      }
      
      protected function §,B§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§5!<§ == "utf-8")
         {
            this.§8!v§ = param1.readUTFBytes(this.§&!m§);
         }
         else
         {
            this.§8!v§ = param1.readMultiByte(this.§&!m§,this.§5!<§);
         }
         var _loc2_:uint = this.§#!U§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§8!v§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§&!R§ = param1.readUnsignedInt();
               this.§6R§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§3S§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function parseContent(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§>o§ === §<n§ && !this.§;2§)
         {
            if(§4!#§ || §>!W§)
            {
               param1.readBytes(this.§+X§,0,this.§8x§);
            }
            else
            {
               if(!this.§6R§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§+X§.writeByte(120);
               _loc2_ = ~this.§7!_§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§+X§.writeByte(_loc2_);
               param1.readBytes(this.§+X§,2,this.§8x§);
               this.§+X§.position = this.§+X§.length;
               this.§+X§.writeUnsignedInt(this.§&!R§);
            }
            this.§?!f§ = true;
         }
         else
         {
            if(this.§>o§ != §@5§)
            {
               throw new Error("Compression method " + this.§>o§ + " is not supported.");
            }
            param1.readBytes(this.§+X§,0,this.§8x§);
            this.§?!f§ = false;
         }
         this.§+X§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§?!f§)
         {
            if(this.§+X§.length > 0)
            {
               this.§+X§.position = 0;
               this.§&J§ = this.§+X§.length;
               if(§>!W§)
               {
                  this.§+X§.deflate();
                  this.§8x§ = this.§+X§.length;
               }
               else if(§4!#§)
               {
                  this.§+X§.compress.apply(this.§+X§,["deflate"]);
                  this.§8x§ = this.§+X§.length;
               }
               else
               {
                  this.§+X§.compress();
                  this.§8x§ = this.§+X§.length - 6;
               }
               this.§+X§.position = 0;
               this.§?!f§ = true;
            }
            else
            {
               this.§8x§ = 0;
               this.§&J§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§?!f§ && this.§+X§.length > 0)
         {
            this.§+X§.position = 0;
            if(§>!W§)
            {
               this.§+X§.inflate();
            }
            else if(§4!#§)
            {
               this.§+X§.uncompress.apply(this.§+X§,["deflate"]);
            }
            else
            {
               this.§+X§.uncompress();
            }
            this.§+X§.position = 0;
            this.§?!f§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§8!v§ + "\n  date:" + this.§5!I§ + "\n  sizeCompressed:" + this.§8x§ + "\n  sizeUncompressed:" + this.§&J§ + "\n  versionHost:" + this.§7$§ + "\n  versionNumber:" + this.§5q§ + "\n  compressionMethod:" + this.§>o§ + "\n  encrypted:" + this.§;2§ + "\n  hasDataDescriptor:" + this.§0!R§ + "\n  hasCompressedPatchedData:" + this.§]!P§ + "\n  filenameEncoding:" + this.§5!<§ + "\n  crc32:" + this.§#"1§.toString(16) + "\n  adler32:" + this.§&!R§.toString(16);
      }
   }
}

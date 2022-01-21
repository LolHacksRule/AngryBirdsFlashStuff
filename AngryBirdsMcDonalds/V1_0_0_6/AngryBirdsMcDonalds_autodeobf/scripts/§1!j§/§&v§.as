package §1!j§
{
   import §?1§.§#&§;
   import flash.utils.*;
   
   public class §&v§
   {
      
      public static const §0u§:int = 0;
      
      public static const §0!0§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §5W§:int = 6;
      
      public static const §`!V§:int = 7;
      
      public static const §?!M§:int = 8;
      
      public static const §[[§:int = 9;
      
      public static const §0m§:int = 10;
      
      protected static var §#!`§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §]2§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §^!"§:int = 0;
      
      protected var §7!^§:String = "2.0";
      
      protected var §+S§:int = 8;
      
      protected var §["§:Boolean = false;
      
      protected var §7H§:int = -1;
      
      protected var §`!m§:int = -1;
      
      protected var §0,§:int = -1;
      
      protected var §;V§:Boolean = false;
      
      protected var §>O§:Boolean = false;
      
      protected var §#2§:Date;
      
      protected var §;l§:uint;
      
      protected var §#t§:Boolean = false;
      
      protected var §;P§:uint = 0;
      
      protected var §6!K§:uint = 0;
      
      protected var §3!<§:String = "";
      
      protected var §`&§:String;
      
      protected var §[X§:Dictionary;
      
      protected var §]!A§:String = "";
      
      protected var §@&§:ByteArray;
      
      var §<!"§:uint;
      
      var §1_§:uint = 0;
      
      var §!;§:uint = 0;
      
      protected var §"#§:Boolean = false;
      
      protected var §^W§:Function;
      
      public function §&v§(param1:String = "utf-8")
      {
         this.§^W§ = this.§1>§;
         super();
         this.§`&§ = param1;
         this.§[X§ = new Dictionary();
         this.§@&§ = new ByteArray();
         this.§@&§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §>x§() : Date
      {
         return this.§#2§;
      }
      
      public function set §>x§(param1:Date) : void
      {
         this.§#2§ = param1 != null ? param1 : new Date();
      }
      
      public function get §5!O§() : String
      {
         return this.§3!<§;
      }
      
      public function set §5!O§(param1:String) : void
      {
         this.§3!<§ = param1;
      }
      
      function get §-!&§() : Boolean
      {
         return this.§;V§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§"#§)
         {
            this.uncompress();
         }
         return this.§@&§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§1E§(param1);
      }
      
      public function §1E§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§@&§,0,param1.length);
            this.§<!"§ = §#&§.§^!Q§(this.§@&§);
            this.§#t§ = false;
         }
         else
         {
            this.§@&§.length = 0;
            this.§@&§.position = 0;
            this.§"#§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§!;§ = this.§1_§ = this.§@&§.length;
         }
      }
      
      public function get §7!?§() : String
      {
         return this.§7!^§;
      }
      
      public function get §[_§() : uint
      {
         return this.§1_§;
      }
      
      public function get §0'§() : uint
      {
         return this.§!;§;
      }
      
      public function §7! §(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§"#§)
         {
            this.uncompress();
         }
         this.§@&§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§@&§.readUTFBytes(this.§@&§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§@&§.readMultiByte(this.§@&§.bytesAvailable,param2);
         }
         this.§@&§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §8b§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§@&§.length = 0;
         this.§@&§.position = 0;
         this.§"#§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§@&§.writeUTFBytes(param1);
            }
            else
            {
               this.§@&§.writeMultiByte(param1,param2);
            }
            this.§<!"§ = §#&§.§^!Q§(this.§@&§);
            this.§#t§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§!;§ = this.§1_§ = this.§@&§.length;
         }
      }
      
      public function §&#§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§49§.§2A§);
            param1.writeShort(this.§^!"§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§49§.§!$§);
         }
         param1.writeShort(this.§^!"§ << 8 | 20);
         param1.writeShort(this.§`&§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§"#§ ? int(§?!M§) : int(§0u§));
         var _loc5_:Date = this.§#2§ != null ? this.§#2§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§<!"§);
         param1.writeUnsignedInt(this.§1_§);
         param1.writeUnsignedInt(this.§!;§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§`&§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§3!<§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§3!<§,this.§`&§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§[X§)
         {
            if((_loc15_ = this.§[X§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§#t§)
            {
               if(_loc16_ = this.§"#§)
               {
                  this.uncompress();
               }
               this.§;l§ = §#&§.§>i§(this.§@&§,0,this.§@&§.length);
               this.§#t§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§;l§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§]!A§.length > 0)
         {
            if(this.§`&§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§]!A§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§]!A§,this.§`&§);
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
         if(!param3 && this.§@&§.length > 0)
         {
            if(this.§"#§)
            {
               if(§#!`§ || §]2§)
               {
                  _loc13_ = this.§@&§.length;
                  param1.writeBytes(this.§@&§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§@&§.length - 6;
                  param1.writeBytes(this.§@&§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§@&§.length;
               param1.writeBytes(this.§@&§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§^W§(param1))
         {
         }
         return this.§^W§ === this.§#§;
      }
      
      protected function §#§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §1>§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§[<§(param1);
            if(this.§;P§ + this.§6!K§ > 0)
            {
               this.§^W§ = this.§^h§;
            }
            else
            {
               this.§^W§ = this.§1-§;
            }
            return true;
         }
         return false;
      }
      
      protected function §^h§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§;P§ + this.§6!K§)
         {
            this.§1!T§(param1);
            this.§^W§ = this.§1-§;
            return true;
         }
         return false;
      }
      
      protected function §1-§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§;V§)
         {
            this.§^W§ = this.§#§;
            _loc2_ = false;
         }
         else if(this.§1_§ == 0)
         {
            this.§^W§ = this.§#§;
         }
         else if(param1.bytesAvailable >= this.§1_§)
         {
            this.§'[§(param1);
            this.§^W§ = this.§#§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §[<§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§^!"§ = _loc2_ >> 8;
         this.§7!^§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§+S§ = param1.readUnsignedShort();
         this.§["§ = (_loc3_ & 1) !== 0;
         this.§;V§ = (_loc3_ & 8) !== 0;
         this.§>O§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§`&§ = "utf-8";
         }
         if(this.§+S§ === §5W§)
         {
            this.§7H§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§`!m§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§+S§ === §?!M§)
         {
            this.§0,§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§#2§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§<!"§ = param1.readUnsignedInt();
         this.§1_§ = param1.readUnsignedInt();
         this.§!;§ = param1.readUnsignedInt();
         this.§;P§ = param1.readUnsignedShort();
         this.§6!K§ = param1.readUnsignedShort();
      }
      
      protected function §1!T§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§`&§ == "utf-8")
         {
            this.§3!<§ = param1.readUTFBytes(this.§;P§);
         }
         else
         {
            this.§3!<§ = param1.readMultiByte(this.§;P§,this.§`&§);
         }
         var _loc2_:uint = this.§6!K§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§3!<§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§;l§ = param1.readUnsignedInt();
               this.§#t§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§[X§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §'[§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§+S§ === §?!M§ && !this.§["§)
         {
            if(§#!`§ || §]2§)
            {
               param1.readBytes(this.§@&§,0,this.§1_§);
            }
            else
            {
               if(!this.§#t§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§@&§.writeByte(120);
               _loc2_ = ~this.§0,§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§@&§.writeByte(_loc2_);
               param1.readBytes(this.§@&§,2,this.§1_§);
               this.§@&§.position = this.§@&§.length;
               this.§@&§.writeUnsignedInt(this.§;l§);
            }
            this.§"#§ = true;
         }
         else
         {
            if(this.§+S§ != §0u§)
            {
               throw new Error("Compression method " + this.§+S§ + " is not supported.");
            }
            param1.readBytes(this.§@&§,0,this.§1_§);
            this.§"#§ = false;
         }
         this.§@&§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§"#§)
         {
            if(this.§@&§.length > 0)
            {
               this.§@&§.position = 0;
               this.§!;§ = this.§@&§.length;
               if(§]2§)
               {
                  this.§@&§.deflate();
                  this.§1_§ = this.§@&§.length;
               }
               else if(§#!`§)
               {
                  this.§@&§.compress.apply(this.§@&§,["deflate"]);
                  this.§1_§ = this.§@&§.length;
               }
               else
               {
                  this.§@&§.compress();
                  this.§1_§ = this.§@&§.length - 6;
               }
               this.§@&§.position = 0;
               this.§"#§ = true;
            }
            else
            {
               this.§1_§ = 0;
               this.§!;§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§"#§ && this.§@&§.length > 0)
         {
            this.§@&§.position = 0;
            if(§]2§)
            {
               this.§@&§.inflate();
            }
            else if(§#!`§)
            {
               this.§@&§.uncompress.apply(this.§@&§,["deflate"]);
            }
            else
            {
               this.§@&§.uncompress();
            }
            this.§@&§.position = 0;
            this.§"#§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§3!<§ + "\n  date:" + this.§#2§ + "\n  sizeCompressed:" + this.§1_§ + "\n  sizeUncompressed:" + this.§!;§ + "\n  versionHost:" + this.§^!"§ + "\n  versionNumber:" + this.§7!^§ + "\n  compressionMethod:" + this.§+S§ + "\n  encrypted:" + this.§["§ + "\n  hasDataDescriptor:" + this.§;V§ + "\n  hasCompressedPatchedData:" + this.§>O§ + "\n  filenameEncoding:" + this.§`&§ + "\n  crc32:" + this.§<!"§.toString(16) + "\n  adler32:" + this.§;l§.toString(16);
      }
   }
}

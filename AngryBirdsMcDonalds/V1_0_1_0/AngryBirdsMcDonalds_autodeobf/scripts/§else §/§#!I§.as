package §else §
{
   import §[!]§.§-G§;
   import flash.utils.*;
   
   public class §#!I§
   {
      
      public static const §6H§:int = 0;
      
      public static const §`u§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §%Z§:int = 6;
      
      public static const §`!2§:int = 7;
      
      public static const §@!;§:int = 8;
      
      public static const § i§:int = 9;
      
      public static const §17§:int = 10;
      
      protected static var §0L§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §1!j§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §@!<§:int = 0;
      
      protected var § >§:String = "2.0";
      
      protected var §"4§:int = 8;
      
      protected var §5^§:Boolean = false;
      
      protected var §9?§:int = -1;
      
      protected var §`[§:int = -1;
      
      protected var §=!b§:int = -1;
      
      protected var §4"§:Boolean = false;
      
      protected var §=!Z§:Boolean = false;
      
      protected var §+! §:Date;
      
      protected var §"!,§:uint;
      
      protected var §1!W§:Boolean = false;
      
      protected var §true§:uint = 0;
      
      protected var §'!P§:uint = 0;
      
      protected var §[!^§:String = "";
      
      protected var §>!+§:String;
      
      protected var §,k§:Dictionary;
      
      protected var §]-§:String = "";
      
      protected var §#!`§:ByteArray;
      
      var §6+§:uint;
      
      var §[!l§:uint = 0;
      
      var §^!0§:uint = 0;
      
      protected var §[o§:Boolean = false;
      
      protected var §5&§:Function;
      
      public function §#!I§(param1:String = "utf-8")
      {
         this.§5&§ = this.§[[§;
         super();
         this.§>!+§ = param1;
         this.§,k§ = new Dictionary();
         this.§#!`§ = new ByteArray();
         this.§#!`§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §1!%§() : Date
      {
         return this.§+! §;
      }
      
      public function set §1!%§(param1:Date) : void
      {
         this.§+! § = param1 != null ? param1 : new Date();
      }
      
      public function get §^!R§() : String
      {
         return this.§[!^§;
      }
      
      public function set §^!R§(param1:String) : void
      {
         this.§[!^§ = param1;
      }
      
      function get §8!&§() : Boolean
      {
         return this.§4"§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§[o§)
         {
            this.uncompress();
         }
         return this.§#!`§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§<!!§(param1);
      }
      
      public function §<!!§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§#!`§,0,param1.length);
            this.§6+§ = §-G§.§7X§(this.§#!`§);
            this.§1!W§ = false;
         }
         else
         {
            this.§#!`§.length = 0;
            this.§#!`§.position = 0;
            this.§[o§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§^!0§ = this.§[!l§ = this.§#!`§.length;
         }
      }
      
      public function get §-p§() : String
      {
         return this.§ >§;
      }
      
      public function get §1!J§() : uint
      {
         return this.§[!l§;
      }
      
      public function get §"!g§() : uint
      {
         return this.§^!0§;
      }
      
      public function §"!E§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§[o§)
         {
            this.uncompress();
         }
         this.§#!`§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§#!`§.readUTFBytes(this.§#!`§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§#!`§.readMultiByte(this.§#!`§.bytesAvailable,param2);
         }
         this.§#!`§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §8!4§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§#!`§.length = 0;
         this.§#!`§.position = 0;
         this.§[o§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§#!`§.writeUTFBytes(param1);
            }
            else
            {
               this.§#!`§.writeMultiByte(param1,param2);
            }
            this.§6+§ = §-G§.§7X§(this.§#!`§);
            this.§1!W§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§^!0§ = this.§[!l§ = this.§#!`§.length;
         }
      }
      
      public function §4V§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§3L§.§!!4§);
            param1.writeShort(this.§@!<§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§3L§.§9M§);
         }
         param1.writeShort(this.§@!<§ << 8 | 20);
         param1.writeShort(this.§>!+§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§[o§ ? int(§@!;§) : int(§6H§));
         var _loc5_:Date = this.§+! § != null ? this.§+! § : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§6+§);
         param1.writeUnsignedInt(this.§[!l§);
         param1.writeUnsignedInt(this.§^!0§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§>!+§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§[!^§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§[!^§,this.§>!+§);
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
            if(!this.§1!W§)
            {
               if(_loc16_ = this.§[o§)
               {
                  this.uncompress();
               }
               this.§"!,§ = §-G§.§<!P§(this.§#!`§,0,this.§#!`§.length);
               this.§1!W§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§"!,§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§]-§.length > 0)
         {
            if(this.§>!+§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§]-§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§]-§,this.§>!+§);
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
         if(!param3 && this.§#!`§.length > 0)
         {
            if(this.§[o§)
            {
               if(§0L§ || §1!j§)
               {
                  _loc13_ = this.§#!`§.length;
                  param1.writeBytes(this.§#!`§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§#!`§.length - 6;
                  param1.writeBytes(this.§#!`§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§#!`§.length;
               param1.writeBytes(this.§#!`§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§5&§(param1))
         {
         }
         return this.§5&§ === this.§<!f§;
      }
      
      protected function §<!f§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §[[§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§?!L§(param1);
            if(this.§true§ + this.§'!P§ > 0)
            {
               this.§5&§ = this.§[!Z§;
            }
            else
            {
               this.§5&§ = this.§8!<§;
            }
            return true;
         }
         return false;
      }
      
      protected function §[!Z§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§true§ + this.§'!P§)
         {
            this.§=<§(param1);
            this.§5&§ = this.§8!<§;
            return true;
         }
         return false;
      }
      
      protected function §8!<§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§4"§)
         {
            this.§5&§ = this.§<!f§;
            _loc2_ = false;
         }
         else if(this.§[!l§ == 0)
         {
            this.§5&§ = this.§<!f§;
         }
         else if(param1.bytesAvailable >= this.§[!l§)
         {
            this.§%!Z§(param1);
            this.§5&§ = this.§<!f§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §?!L§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§@!<§ = _loc2_ >> 8;
         this.§ >§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§"4§ = param1.readUnsignedShort();
         this.§5^§ = (_loc3_ & 1) !== 0;
         this.§4"§ = (_loc3_ & 8) !== 0;
         this.§=!Z§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§>!+§ = "utf-8";
         }
         if(this.§"4§ === §%Z§)
         {
            this.§9?§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§`[§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§"4§ === §@!;§)
         {
            this.§=!b§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§+! § = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§6+§ = param1.readUnsignedInt();
         this.§[!l§ = param1.readUnsignedInt();
         this.§^!0§ = param1.readUnsignedInt();
         this.§true§ = param1.readUnsignedShort();
         this.§'!P§ = param1.readUnsignedShort();
      }
      
      protected function §=<§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§>!+§ == "utf-8")
         {
            this.§[!^§ = param1.readUTFBytes(this.§true§);
         }
         else
         {
            this.§[!^§ = param1.readMultiByte(this.§true§,this.§>!+§);
         }
         var _loc2_:uint = this.§'!P§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§[!^§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§"!,§ = param1.readUnsignedInt();
               this.§1!W§ = true;
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
      
      function §%!Z§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§"4§ === §@!;§ && !this.§5^§)
         {
            if(§0L§ || §1!j§)
            {
               param1.readBytes(this.§#!`§,0,this.§[!l§);
            }
            else
            {
               if(!this.§1!W§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§#!`§.writeByte(120);
               _loc2_ = ~this.§=!b§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§#!`§.writeByte(_loc2_);
               param1.readBytes(this.§#!`§,2,this.§[!l§);
               this.§#!`§.position = this.§#!`§.length;
               this.§#!`§.writeUnsignedInt(this.§"!,§);
            }
            this.§[o§ = true;
         }
         else
         {
            if(this.§"4§ != §6H§)
            {
               throw new Error("Compression method " + this.§"4§ + " is not supported.");
            }
            param1.readBytes(this.§#!`§,0,this.§[!l§);
            this.§[o§ = false;
         }
         this.§#!`§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§[o§)
         {
            if(this.§#!`§.length > 0)
            {
               this.§#!`§.position = 0;
               this.§^!0§ = this.§#!`§.length;
               if(§1!j§)
               {
                  this.§#!`§.deflate();
                  this.§[!l§ = this.§#!`§.length;
               }
               else if(§0L§)
               {
                  this.§#!`§.compress.apply(this.§#!`§,["deflate"]);
                  this.§[!l§ = this.§#!`§.length;
               }
               else
               {
                  this.§#!`§.compress();
                  this.§[!l§ = this.§#!`§.length - 6;
               }
               this.§#!`§.position = 0;
               this.§[o§ = true;
            }
            else
            {
               this.§[!l§ = 0;
               this.§^!0§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§[o§ && this.§#!`§.length > 0)
         {
            this.§#!`§.position = 0;
            if(§1!j§)
            {
               this.§#!`§.inflate();
            }
            else if(§0L§)
            {
               this.§#!`§.uncompress.apply(this.§#!`§,["deflate"]);
            }
            else
            {
               this.§#!`§.uncompress();
            }
            this.§#!`§.position = 0;
            this.§[o§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§[!^§ + "\n  date:" + this.§+! § + "\n  sizeCompressed:" + this.§[!l§ + "\n  sizeUncompressed:" + this.§^!0§ + "\n  versionHost:" + this.§@!<§ + "\n  versionNumber:" + this.§ >§ + "\n  compressionMethod:" + this.§"4§ + "\n  encrypted:" + this.§5^§ + "\n  hasDataDescriptor:" + this.§4"§ + "\n  hasCompressedPatchedData:" + this.§=!Z§ + "\n  filenameEncoding:" + this.§>!+§ + "\n  crc32:" + this.§6+§.toString(16) + "\n  adler32:" + this.§"!,§.toString(16);
      }
   }
}

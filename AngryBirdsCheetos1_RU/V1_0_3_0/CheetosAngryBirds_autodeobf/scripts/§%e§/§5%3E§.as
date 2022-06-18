package §%e§
{
   import §5!^§.§9a§;
   import flash.utils.*;
   
   public class §5>§
   {
      
      public static const §"!M§:int = 0;
      
      public static const §@c§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §;![§:int = 6;
      
      public static const §+!=§:int = 7;
      
      public static const §%;§:int = 8;
      
      public static const §0v§:int = 9;
      
      public static const §;!T§:int = 10;
      
      protected static var §92§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §>R§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §-!O§:int = 0;
      
      protected var §<T§:String = "2.0";
      
      protected var §3!X§:int = 8;
      
      protected var §'1§:Boolean = false;
      
      protected var §#p§:int = -1;
      
      protected var §;!F§:int = -1;
      
      protected var §,-§:int = -1;
      
      protected var §>W§:Boolean = false;
      
      protected var §,!A§:Boolean = false;
      
      protected var §1!@§:Date;
      
      protected var §+m§:uint;
      
      protected var §@!T§:Boolean = false;
      
      protected var §=9§:uint = 0;
      
      protected var §'!S§:uint = 0;
      
      protected var §9!3§:String = "";
      
      protected var §6H§:String;
      
      protected var §4s§:Dictionary;
      
      protected var §&[§:String = "";
      
      protected var §>!U§:ByteArray;
      
      var §`!Y§:uint;
      
      var §5!S§:uint = 0;
      
      var §in§:uint = 0;
      
      protected var §!!?§:Boolean = false;
      
      protected var § !W§:Function;
      
      public function §5>§(param1:String = "utf-8")
      {
         this.§ !W§ = this.§7!O§;
         super();
         this.§6H§ = param1;
         this.§4s§ = new Dictionary();
         this.§>!U§ = new ByteArray();
         this.§>!U§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §`!;§() : Date
      {
         return this.§1!@§;
      }
      
      public function set §`!;§(param1:Date) : void
      {
         this.§1!@§ = param1 != null ? param1 : new Date();
      }
      
      public function get §@!?§() : String
      {
         return this.§9!3§;
      }
      
      public function set §@!?§(param1:String) : void
      {
         this.§9!3§ = param1;
      }
      
      function get §,u§() : Boolean
      {
         return this.§>W§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§!!?§)
         {
            this.uncompress();
         }
         return this.§>!U§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§#0§(param1);
      }
      
      public function §#0§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§>!U§,0,param1.length);
            this.§`!Y§ = §9a§.§+^§(this.§>!U§);
            this.§@!T§ = false;
         }
         else
         {
            this.§>!U§.length = 0;
            this.§>!U§.position = 0;
            this.§!!?§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§in§ = this.§5!S§ = this.§>!U§.length;
         }
      }
      
      public function get §!!8§() : String
      {
         return this.§<T§;
      }
      
      public function get §[^§() : uint
      {
         return this.§5!S§;
      }
      
      public function get §0!4§() : uint
      {
         return this.§in§;
      }
      
      public function §8!O§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§!!?§)
         {
            this.uncompress();
         }
         this.§>!U§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§>!U§.readUTFBytes(this.§>!U§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§>!U§.readMultiByte(this.§>!U§.bytesAvailable,param2);
         }
         this.§>!U§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §!e§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§>!U§.length = 0;
         this.§>!U§.position = 0;
         this.§!!?§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§>!U§.writeUTFBytes(param1);
            }
            else
            {
               this.§>!U§.writeMultiByte(param1,param2);
            }
            this.§`!Y§ = §9a§.§+^§(this.§>!U§);
            this.§@!T§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§in§ = this.§5!S§ = this.§>!U§.length;
         }
      }
      
      public function §`@§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§@5§.§'@§);
            param1.writeShort(this.§-!O§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§@5§.§^!7§);
         }
         param1.writeShort(this.§-!O§ << 8 | 20);
         param1.writeShort(this.§6H§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§!!?§ ? int(§%;§) : int(§"!M§));
         var _loc5_:Date = this.§1!@§ != null ? this.§1!@§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§`!Y§);
         param1.writeUnsignedInt(this.§5!S§);
         param1.writeUnsignedInt(this.§in§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§6H§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§9!3§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§9!3§,this.§6H§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§4s§)
         {
            if((_loc15_ = this.§4s§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§@!T§)
            {
               if(_loc16_ = this.§!!?§)
               {
                  this.uncompress();
               }
               this.§+m§ = §9a§.§^y§(this.§>!U§,0,this.§>!U§.length);
               this.§@!T§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§+m§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§&[§.length > 0)
         {
            if(this.§6H§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§&[§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§&[§,this.§6H§);
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
         if(!param3 && this.§>!U§.length > 0)
         {
            if(this.§!!?§)
            {
               if(§92§ || §>R§)
               {
                  _loc13_ = this.§>!U§.length;
                  param1.writeBytes(this.§>!U§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§>!U§.length - 6;
                  param1.writeBytes(this.§>!U§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§>!U§.length;
               param1.writeBytes(this.§>!U§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§ !W§(param1))
         {
         }
         return this.§ !W§ === this.§'u§;
      }
      
      protected function §'u§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §7!O§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§5M§(param1);
            if(this.§=9§ + this.§'!S§ > 0)
            {
               this.§ !W§ = this.§ 1§;
            }
            else
            {
               this.§ !W§ = this.§[d§;
            }
            return true;
         }
         return false;
      }
      
      protected function § 1§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§=9§ + this.§'!S§)
         {
            this.§&r§(param1);
            this.§ !W§ = this.§[d§;
            return true;
         }
         return false;
      }
      
      protected function §[d§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§>W§)
         {
            this.§ !W§ = this.§'u§;
            _loc2_ = false;
         }
         else if(this.§5!S§ == 0)
         {
            this.§ !W§ = this.§'u§;
         }
         else if(param1.bytesAvailable >= this.§5!S§)
         {
            this.§4!L§(param1);
            this.§ !W§ = this.§'u§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §5M§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§-!O§ = _loc2_ >> 8;
         this.§<T§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§3!X§ = param1.readUnsignedShort();
         this.§'1§ = (_loc3_ & 1) !== 0;
         this.§>W§ = (_loc3_ & 8) !== 0;
         this.§,!A§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§6H§ = "utf-8";
         }
         if(this.§3!X§ === §;![§)
         {
            this.§#p§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§;!F§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§3!X§ === §%;§)
         {
            this.§,-§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§1!@§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§`!Y§ = param1.readUnsignedInt();
         this.§5!S§ = param1.readUnsignedInt();
         this.§in§ = param1.readUnsignedInt();
         this.§=9§ = param1.readUnsignedShort();
         this.§'!S§ = param1.readUnsignedShort();
      }
      
      protected function §&r§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§6H§ == "utf-8")
         {
            this.§9!3§ = param1.readUTFBytes(this.§=9§);
         }
         else
         {
            this.§9!3§ = param1.readMultiByte(this.§=9§,this.§6H§);
         }
         var _loc2_:uint = this.§'!S§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§9!3§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§+m§ = param1.readUnsignedInt();
               this.§@!T§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§4s§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §4!L§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§3!X§ === §%;§ && !this.§'1§)
         {
            if(§92§ || §>R§)
            {
               param1.readBytes(this.§>!U§,0,this.§5!S§);
            }
            else
            {
               if(!this.§@!T§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§>!U§.writeByte(120);
               _loc2_ = ~this.§,-§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§>!U§.writeByte(_loc2_);
               param1.readBytes(this.§>!U§,2,this.§5!S§);
               this.§>!U§.position = this.§>!U§.length;
               this.§>!U§.writeUnsignedInt(this.§+m§);
            }
            this.§!!?§ = true;
         }
         else
         {
            if(this.§3!X§ != §"!M§)
            {
               throw new Error("Compression method " + this.§3!X§ + " is not supported.");
            }
            param1.readBytes(this.§>!U§,0,this.§5!S§);
            this.§!!?§ = false;
         }
         this.§>!U§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§!!?§)
         {
            if(this.§>!U§.length > 0)
            {
               this.§>!U§.position = 0;
               this.§in§ = this.§>!U§.length;
               if(§>R§)
               {
                  this.§>!U§.deflate();
                  this.§5!S§ = this.§>!U§.length;
               }
               else if(§92§)
               {
                  this.§>!U§.compress.apply(this.§>!U§,["deflate"]);
                  this.§5!S§ = this.§>!U§.length;
               }
               else
               {
                  this.§>!U§.compress();
                  this.§5!S§ = this.§>!U§.length - 6;
               }
               this.§>!U§.position = 0;
               this.§!!?§ = true;
            }
            else
            {
               this.§5!S§ = 0;
               this.§in§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§!!?§ && this.§>!U§.length > 0)
         {
            this.§>!U§.position = 0;
            if(§>R§)
            {
               this.§>!U§.inflate();
            }
            else if(§92§)
            {
               this.§>!U§.uncompress.apply(this.§>!U§,["deflate"]);
            }
            else
            {
               this.§>!U§.uncompress();
            }
            this.§>!U§.position = 0;
            this.§!!?§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§9!3§ + "\n  date:" + this.§1!@§ + "\n  sizeCompressed:" + this.§5!S§ + "\n  sizeUncompressed:" + this.§in§ + "\n  versionHost:" + this.§-!O§ + "\n  versionNumber:" + this.§<T§ + "\n  compressionMethod:" + this.§3!X§ + "\n  encrypted:" + this.§'1§ + "\n  hasDataDescriptor:" + this.§>W§ + "\n  hasCompressedPatchedData:" + this.§,!A§ + "\n  filenameEncoding:" + this.§6H§ + "\n  crc32:" + this.§`!Y§.toString(16) + "\n  adler32:" + this.§+m§.toString(16);
      }
   }
}

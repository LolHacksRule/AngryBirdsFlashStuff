package §`b§
{
   import §`L§.§7B§;
   import flash.utils.*;
   
   public class §=#§
   {
      
      public static const §#`§:int = 0;
      
      public static const §%!e§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §8!e§:int = 6;
      
      public static const §+!§:int = 7;
      
      public static const §@!D§:int = 8;
      
      public static const §9&§:int = 9;
      
      public static const §0U§:int = 10;
      
      protected static var §<!X§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §,'§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §!m§:int = 0;
      
      protected var §'7§:String = "2.0";
      
      protected var §"v§:int = 8;
      
      protected var §^=§:Boolean = false;
      
      protected var §%!@§:int = -1;
      
      protected var §%S§:int = -1;
      
      protected var §'4§:int = -1;
      
      protected var §=!?§:Boolean = false;
      
      protected var §;^§:Boolean = false;
      
      protected var §8=§:Date;
      
      protected var §5!<§:uint;
      
      protected var §<!C§:Boolean = false;
      
      protected var §>9§:uint = 0;
      
      protected var §&K§:uint = 0;
      
      protected var §>U§:String = "";
      
      protected var §%9§:String;
      
      protected var §8J§:Dictionary;
      
      protected var §8!S§:String = "";
      
      protected var §#!-§:ByteArray;
      
      var §6!]§:uint;
      
      var §>!4§:uint = 0;
      
      var override:uint = 0;
      
      protected var §,!Y§:Boolean = false;
      
      protected var §+e§:Function;
      
      public function §=#§(param1:String = "utf-8")
      {
         this.§+e§ = this.§6!J§;
         super();
         this.§%9§ = param1;
         this.§8J§ = new Dictionary();
         this.§#!-§ = new ByteArray();
         this.§#!-§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get § !B§() : Date
      {
         return this.§8=§;
      }
      
      public function set § !B§(param1:Date) : void
      {
         this.§8=§ = param1 != null ? param1 : new Date();
      }
      
      public function get §@b§() : String
      {
         return this.§>U§;
      }
      
      public function set §@b§(param1:String) : void
      {
         this.§>U§ = param1;
      }
      
      function get §`!R§() : Boolean
      {
         return this.§=!?§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§,!Y§)
         {
            this.uncompress();
         }
         return this.§#!-§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§#r§(param1);
      }
      
      public function §#r§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§#!-§,0,param1.length);
            this.§6!]§ = §7B§.§8!9§(this.§#!-§);
            this.§<!C§ = false;
         }
         else
         {
            this.§#!-§.length = 0;
            this.§#!-§.position = 0;
            this.§,!Y§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.override = this.§>!4§ = this.§#!-§.length;
         }
      }
      
      public function get §?y§() : String
      {
         return this.§'7§;
      }
      
      public function get §,p§() : uint
      {
         return this.§>!4§;
      }
      
      public function get §2!1§() : uint
      {
         return this.override;
      }
      
      public function §;!§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§,!Y§)
         {
            this.uncompress();
         }
         this.§#!-§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§#!-§.readUTFBytes(this.§#!-§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§#!-§.readMultiByte(this.§#!-§.bytesAvailable,param2);
         }
         this.§#!-§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §[w§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§#!-§.length = 0;
         this.§#!-§.position = 0;
         this.§,!Y§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§#!-§.writeUTFBytes(param1);
            }
            else
            {
               this.§#!-§.writeMultiByte(param1,param2);
            }
            this.§6!]§ = §7B§.§8!9§(this.§#!-§);
            this.§<!C§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.override = this.§>!4§ = this.§#!-§.length;
         }
      }
      
      public function §;!T§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§ !9§.§6F§);
            param1.writeShort(this.§!m§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§ !9§.§&D§);
         }
         param1.writeShort(this.§!m§ << 8 | 20);
         param1.writeShort(this.§%9§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§,!Y§ ? int(§@!D§) : int(§#`§));
         var _loc5_:Date = this.§8=§ != null ? this.§8=§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§6!]§);
         param1.writeUnsignedInt(this.§>!4§);
         param1.writeUnsignedInt(this.override);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§%9§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§>U§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§>U§,this.§%9§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§8J§)
         {
            if((_loc15_ = this.§8J§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§<!C§)
            {
               if(_loc16_ = this.§,!Y§)
               {
                  this.uncompress();
               }
               this.§5!<§ = §7B§.§9Y§(this.§#!-§,0,this.§#!-§.length);
               this.§<!C§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§5!<§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§8!S§.length > 0)
         {
            if(this.§%9§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§8!S§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§8!S§,this.§%9§);
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
         if(!param3 && this.§#!-§.length > 0)
         {
            if(this.§,!Y§)
            {
               if(§<!X§ || §,'§)
               {
                  _loc13_ = this.§#!-§.length;
                  param1.writeBytes(this.§#!-§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§#!-§.length - 6;
                  param1.writeBytes(this.§#!-§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§#!-§.length;
               param1.writeBytes(this.§#!-§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§+e§(param1))
         {
         }
         return this.§+e§ === this.§]"§;
      }
      
      protected function §]"§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §6!J§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§[!`§(param1);
            if(this.§>9§ + this.§&K§ > 0)
            {
               this.§+e§ = this.§@!V§;
            }
            else
            {
               this.§+e§ = this.§%i§;
            }
            return true;
         }
         return false;
      }
      
      protected function §@!V§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§>9§ + this.§&K§)
         {
            this.§#7§(param1);
            this.§+e§ = this.§%i§;
            return true;
         }
         return false;
      }
      
      protected function §%i§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§=!?§)
         {
            this.§+e§ = this.§]"§;
            _loc2_ = false;
         }
         else if(this.§>!4§ == 0)
         {
            this.§+e§ = this.§]"§;
         }
         else if(param1.bytesAvailable >= this.§>!4§)
         {
            this.§3!Y§(param1);
            this.§+e§ = this.§]"§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §[!`§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§!m§ = _loc2_ >> 8;
         this.§'7§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§"v§ = param1.readUnsignedShort();
         this.§^=§ = (_loc3_ & 1) !== 0;
         this.§=!?§ = (_loc3_ & 8) !== 0;
         this.§;^§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§%9§ = "utf-8";
         }
         if(this.§"v§ === §8!e§)
         {
            this.§%!@§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§%S§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§"v§ === §@!D§)
         {
            this.§'4§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§8=§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§6!]§ = param1.readUnsignedInt();
         this.§>!4§ = param1.readUnsignedInt();
         this.override = param1.readUnsignedInt();
         this.§>9§ = param1.readUnsignedShort();
         this.§&K§ = param1.readUnsignedShort();
      }
      
      protected function §#7§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§%9§ == "utf-8")
         {
            this.§>U§ = param1.readUTFBytes(this.§>9§);
         }
         else
         {
            this.§>U§ = param1.readMultiByte(this.§>9§,this.§%9§);
         }
         var _loc2_:uint = this.§&K§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§>U§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§5!<§ = param1.readUnsignedInt();
               this.§<!C§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§8J§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §3!Y§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§"v§ === §@!D§ && !this.§^=§)
         {
            if(§<!X§ || §,'§)
            {
               param1.readBytes(this.§#!-§,0,this.§>!4§);
            }
            else
            {
               if(!this.§<!C§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§#!-§.writeByte(120);
               _loc2_ = ~this.§'4§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§#!-§.writeByte(_loc2_);
               param1.readBytes(this.§#!-§,2,this.§>!4§);
               this.§#!-§.position = this.§#!-§.length;
               this.§#!-§.writeUnsignedInt(this.§5!<§);
            }
            this.§,!Y§ = true;
         }
         else
         {
            if(this.§"v§ != §#`§)
            {
               throw new Error("Compression method " + this.§"v§ + " is not supported.");
            }
            param1.readBytes(this.§#!-§,0,this.§>!4§);
            this.§,!Y§ = false;
         }
         this.§#!-§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§,!Y§)
         {
            if(this.§#!-§.length > 0)
            {
               this.§#!-§.position = 0;
               this.override = this.§#!-§.length;
               if(§,'§)
               {
                  this.§#!-§.deflate();
                  this.§>!4§ = this.§#!-§.length;
               }
               else if(§<!X§)
               {
                  this.§#!-§.compress.apply(this.§#!-§,["deflate"]);
                  this.§>!4§ = this.§#!-§.length;
               }
               else
               {
                  this.§#!-§.compress();
                  this.§>!4§ = this.§#!-§.length - 6;
               }
               this.§#!-§.position = 0;
               this.§,!Y§ = true;
            }
            else
            {
               this.§>!4§ = 0;
               this.override = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§,!Y§ && this.§#!-§.length > 0)
         {
            this.§#!-§.position = 0;
            if(§,'§)
            {
               this.§#!-§.inflate();
            }
            else if(§<!X§)
            {
               this.§#!-§.uncompress.apply(this.§#!-§,["deflate"]);
            }
            else
            {
               this.§#!-§.uncompress();
            }
            this.§#!-§.position = 0;
            this.§,!Y§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§>U§ + "\n  date:" + this.§8=§ + "\n  sizeCompressed:" + this.§>!4§ + "\n  sizeUncompressed:" + this.override + "\n  versionHost:" + this.§!m§ + "\n  versionNumber:" + this.§'7§ + "\n  compressionMethod:" + this.§"v§ + "\n  encrypted:" + this.§^=§ + "\n  hasDataDescriptor:" + this.§=!?§ + "\n  hasCompressedPatchedData:" + this.§;^§ + "\n  filenameEncoding:" + this.§%9§ + "\n  crc32:" + this.§6!]§.toString(16) + "\n  adler32:" + this.§5!<§.toString(16);
      }
   }
}

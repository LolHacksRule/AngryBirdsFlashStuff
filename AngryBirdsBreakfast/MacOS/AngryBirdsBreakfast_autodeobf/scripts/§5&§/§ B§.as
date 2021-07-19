package §5&§
{
   import §2!k§.§0!V§;
   import flash.utils.*;
   
   public class § B§
   {
      
      public static const §'!p§:int = 0;
      
      public static const §59§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §#!#§:int = 6;
      
      public static const §3p§:int = 7;
      
      public static const §@!?§:int = 8;
      
      public static const §0!#§:int = 9;
      
      public static const §+!w§:int = 10;
      
      protected static var §`a§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §<5§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §?!1§:int = 0;
      
      protected var §4!!§:String = "2.0";
      
      protected var §;!p§:int = 8;
      
      protected var §&#§:Boolean = false;
      
      protected var §4&§:int = -1;
      
      protected var §=%§:int = -1;
      
      protected var §0"%§:int = -1;
      
      protected var §8!?§:Boolean = false;
      
      protected var §'>§:Boolean = false;
      
      protected var §=" §:Date;
      
      protected var §,5§:uint;
      
      protected var §[s§:Boolean = false;
      
      protected var § v§:uint = 0;
      
      protected var §=!9§:uint = 0;
      
      protected var §6!J§:String = "";
      
      protected var §6!t§:String;
      
      protected var §4!^§:Dictionary;
      
      protected var §8!e§:String = "";
      
      protected var §>!<§:ByteArray;
      
      var §1"+§:uint;
      
      var §>!W§:uint = 0;
      
      var §-!O§:uint = 0;
      
      protected var §%"+§:Boolean = false;
      
      protected var §;!2§:Function;
      
      public function § B§(param1:String = "utf-8")
      {
         this.§;!2§ = this.§&N§;
         super();
         this.§6!t§ = param1;
         this.§4!^§ = new Dictionary();
         this.§>!<§ = new ByteArray();
         this.§>!<§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §%,§() : Date
      {
         return this.§=" §;
      }
      
      public function set §%,§(param1:Date) : void
      {
         this.§=" § = param1 != null ? param1 : new Date();
      }
      
      public function get §!! §() : String
      {
         return this.§6!J§;
      }
      
      public function set §!! §(param1:String) : void
      {
         this.§6!J§ = param1;
      }
      
      function get §?!w§() : Boolean
      {
         return this.§8!?§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§%"+§)
         {
            this.uncompress();
         }
         return this.§>!<§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§4!g§(param1);
      }
      
      public function §4!g§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§>!<§,0,param1.length);
            this.§1"+§ = §0!V§.§!<§(this.§>!<§);
            this.§[s§ = false;
         }
         else
         {
            this.§>!<§.length = 0;
            this.§>!<§.position = 0;
            this.§%"+§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§-!O§ = this.§>!W§ = this.§>!<§.length;
         }
      }
      
      public function get versionNumber() : String
      {
         return this.§4!!§;
      }
      
      public function get §2%§() : uint
      {
         return this.§>!W§;
      }
      
      public function get §]6§() : uint
      {
         return this.§-!O§;
      }
      
      public function §41§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§%"+§)
         {
            this.uncompress();
         }
         this.§>!<§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§>!<§.readUTFBytes(this.§>!<§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§>!<§.readMultiByte(this.§>!<§.bytesAvailable,param2);
         }
         this.§>!<§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §[K§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§>!<§.length = 0;
         this.§>!<§.position = 0;
         this.§%"+§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§>!<§.writeUTFBytes(param1);
            }
            else
            {
               this.§>!<§.writeMultiByte(param1,param2);
            }
            this.§1"+§ = §0!V§.§!<§(this.§>!<§);
            this.§[s§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§-!O§ = this.§>!W§ = this.§>!<§.length;
         }
      }
      
      public function §`$§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§9!O§.§^!1§);
            param1.writeShort(this.§?!1§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§9!O§.§'""§);
         }
         param1.writeShort(this.§?!1§ << 8 | 20);
         param1.writeShort(this.§6!t§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§%"+§ ? int(§@!?§) : int(§'!p§));
         var _loc5_:Date = this.§=" § != null ? this.§=" § : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§1"+§);
         param1.writeUnsignedInt(this.§>!W§);
         param1.writeUnsignedInt(this.§-!O§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§6!t§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§6!J§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§6!J§,this.§6!t§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§4!^§)
         {
            if((_loc15_ = this.§4!^§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§[s§)
            {
               if(_loc16_ = this.§%"+§)
               {
                  this.uncompress();
               }
               this.§,5§ = §0!V§.§2!O§(this.§>!<§,0,this.§>!<§.length);
               this.§[s§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§,5§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§8!e§.length > 0)
         {
            if(this.§6!t§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§8!e§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§8!e§,this.§6!t§);
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
         if(!param3 && this.§>!<§.length > 0)
         {
            if(this.§%"+§)
            {
               if(§`a§ || §<5§)
               {
                  _loc13_ = this.§>!<§.length;
                  param1.writeBytes(this.§>!<§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§>!<§.length - 6;
                  param1.writeBytes(this.§>!<§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§>!<§.length;
               param1.writeBytes(this.§>!<§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§;!2§(param1))
         {
         }
         return this.§;!2§ === this.§6!j§;
      }
      
      protected function §6!j§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §&N§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§]'§(param1);
            if(this.§ v§ + this.§=!9§ > 0)
            {
               this.§;!2§ = this.§?a§;
            }
            else
            {
               this.§;!2§ = this.§9!^§;
            }
            return true;
         }
         return false;
      }
      
      protected function §?a§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§ v§ + this.§=!9§)
         {
            this.§^y§(param1);
            this.§;!2§ = this.§9!^§;
            return true;
         }
         return false;
      }
      
      protected function §9!^§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§8!?§)
         {
            this.§;!2§ = this.§6!j§;
            _loc2_ = false;
         }
         else if(this.§>!W§ == 0)
         {
            this.§;!2§ = this.§6!j§;
         }
         else if(param1.bytesAvailable >= this.§>!W§)
         {
            this.parseContent(param1);
            this.§;!2§ = this.§6!j§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §]'§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§?!1§ = _loc2_ >> 8;
         this.§4!!§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§;!p§ = param1.readUnsignedShort();
         this.§&#§ = (_loc3_ & 1) !== 0;
         this.§8!?§ = (_loc3_ & 8) !== 0;
         this.§'>§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§6!t§ = "utf-8";
         }
         if(this.§;!p§ === §#!#§)
         {
            this.§4&§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§=%§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§;!p§ === §@!?§)
         {
            this.§0"%§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§=" § = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§1"+§ = param1.readUnsignedInt();
         this.§>!W§ = param1.readUnsignedInt();
         this.§-!O§ = param1.readUnsignedInt();
         this.§ v§ = param1.readUnsignedShort();
         this.§=!9§ = param1.readUnsignedShort();
      }
      
      protected function §^y§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§6!t§ == "utf-8")
         {
            this.§6!J§ = param1.readUTFBytes(this.§ v§);
         }
         else
         {
            this.§6!J§ = param1.readMultiByte(this.§ v§,this.§6!t§);
         }
         var _loc2_:uint = this.§=!9§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§6!J§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§,5§ = param1.readUnsignedInt();
               this.§[s§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§4!^§[_loc3_] = _loc5_;
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
         if(this.§;!p§ === §@!?§ && !this.§&#§)
         {
            if(§`a§ || §<5§)
            {
               param1.readBytes(this.§>!<§,0,this.§>!W§);
            }
            else
            {
               if(!this.§[s§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§>!<§.writeByte(120);
               _loc2_ = ~this.§0"%§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§>!<§.writeByte(_loc2_);
               param1.readBytes(this.§>!<§,2,this.§>!W§);
               this.§>!<§.position = this.§>!<§.length;
               this.§>!<§.writeUnsignedInt(this.§,5§);
            }
            this.§%"+§ = true;
         }
         else
         {
            if(this.§;!p§ != §'!p§)
            {
               throw new Error("Compression method " + this.§;!p§ + " is not supported.");
            }
            param1.readBytes(this.§>!<§,0,this.§>!W§);
            this.§%"+§ = false;
         }
         this.§>!<§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§%"+§)
         {
            if(this.§>!<§.length > 0)
            {
               this.§>!<§.position = 0;
               this.§-!O§ = this.§>!<§.length;
               if(§<5§)
               {
                  this.§>!<§.deflate();
                  this.§>!W§ = this.§>!<§.length;
               }
               else if(§`a§)
               {
                  this.§>!<§.compress.apply(this.§>!<§,["deflate"]);
                  this.§>!W§ = this.§>!<§.length;
               }
               else
               {
                  this.§>!<§.compress();
                  this.§>!W§ = this.§>!<§.length - 6;
               }
               this.§>!<§.position = 0;
               this.§%"+§ = true;
            }
            else
            {
               this.§>!W§ = 0;
               this.§-!O§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§%"+§ && this.§>!<§.length > 0)
         {
            this.§>!<§.position = 0;
            if(§<5§)
            {
               this.§>!<§.inflate();
            }
            else if(§`a§)
            {
               this.§>!<§.uncompress.apply(this.§>!<§,["deflate"]);
            }
            else
            {
               this.§>!<§.uncompress();
            }
            this.§>!<§.position = 0;
            this.§%"+§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§6!J§ + "\n  date:" + this.§=" § + "\n  sizeCompressed:" + this.§>!W§ + "\n  sizeUncompressed:" + this.§-!O§ + "\n  versionHost:" + this.§?!1§ + "\n  versionNumber:" + this.§4!!§ + "\n  compressionMethod:" + this.§;!p§ + "\n  encrypted:" + this.§&#§ + "\n  hasDataDescriptor:" + this.§8!?§ + "\n  hasCompressedPatchedData:" + this.§'>§ + "\n  filenameEncoding:" + this.§6!t§ + "\n  crc32:" + this.§1"+§.toString(16) + "\n  adler32:" + this.§,5§.toString(16);
      }
   }
}

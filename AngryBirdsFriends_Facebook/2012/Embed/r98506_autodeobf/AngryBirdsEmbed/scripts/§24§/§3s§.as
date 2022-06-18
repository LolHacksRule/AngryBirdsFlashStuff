package §24§
{
   import §1! §.§-3§;
   import flash.utils.*;
   
   public class §3s§
   {
      
      public static const §;B§:int = 0;
      
      public static const §75§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §,!E§:int = 6;
      
      public static const §0R§:int = 7;
      
      public static const § I§:int = 8;
      
      public static const §=m§:int = 9;
      
      public static const §+S§:int = 10;
      
      protected static var §&?§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §16§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §@!2§:int = 0;
      
      protected var §';§:String = "2.0";
      
      protected var §&!8§:int = 8;
      
      protected var §"%§:Boolean = false;
      
      protected var §`5§:int = -1;
      
      protected var §]6§:int = -1;
      
      protected var §59§:int = -1;
      
      protected var §7!'§:Boolean = false;
      
      protected var §0t§:Boolean = false;
      
      protected var §9<§:Date;
      
      protected var §4!B§:uint;
      
      protected var §'&§:Boolean = false;
      
      protected var §^n§:uint = 0;
      
      protected var §6!$§:uint = 0;
      
      protected var §^T§:String = "";
      
      protected var §`§:String;
      
      protected var §70§:Dictionary;
      
      protected var §8T§:String = "";
      
      protected var §6^§:ByteArray;
      
      var §5!A§:uint;
      
      var §6f§:uint = 0;
      
      var §-g§:uint = 0;
      
      protected var §6<§:Boolean = false;
      
      protected var §5!!§:Function;
      
      public function §3s§(param1:String = "utf-8")
      {
         this.§5!!§ = this.§!F§;
         super();
         this.§`§ = param1;
         this.§70§ = new Dictionary();
         this.§6^§ = new ByteArray();
         this.§6^§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §6!D§() : Date
      {
         return this.§9<§;
      }
      
      public function set §6!D§(param1:Date) : void
      {
         this.§9<§ = param1 != null ? param1 : new Date();
      }
      
      public function get §,!2§() : String
      {
         return this.§^T§;
      }
      
      public function set §,!2§(param1:String) : void
      {
         this.§^T§ = param1;
      }
      
      function get §=B§() : Boolean
      {
         return this.§7!'§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§6<§)
         {
            this.uncompress();
         }
         return this.§6^§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§3-§(param1);
      }
      
      public function §3-§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§6^§,0,param1.length);
            this.§5!A§ = §-3§.§1!<§(this.§6^§);
            this.§'&§ = false;
         }
         else
         {
            this.§6^§.length = 0;
            this.§6^§.position = 0;
            this.§6<§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§-g§ = this.§6f§ = this.§6^§.length;
         }
      }
      
      public function get §!P§() : String
      {
         return this.§';§;
      }
      
      public function get §58§() : uint
      {
         return this.§6f§;
      }
      
      public function get §#!#§() : uint
      {
         return this.§-g§;
      }
      
      public function §;z§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§6<§)
         {
            this.uncompress();
         }
         this.§6^§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§6^§.readUTFBytes(this.§6^§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§6^§.readMultiByte(this.§6^§.bytesAvailable,param2);
         }
         this.§6^§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §#W§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§6^§.length = 0;
         this.§6^§.position = 0;
         this.§6<§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§6^§.writeUTFBytes(param1);
            }
            else
            {
               this.§6^§.writeMultiByte(param1,param2);
            }
            this.§5!A§ = §-3§.§1!<§(this.§6^§);
            this.§'&§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§-g§ = this.§6f§ = this.§6^§.length;
         }
      }
      
      public function §]>§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§-`§.§1u§);
            param1.writeShort(this.§@!2§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§-`§.§2O§);
         }
         param1.writeShort(this.§@!2§ << 8 | 20);
         param1.writeShort(this.§`§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§6<§ ? int(§ I§) : int(§;B§));
         var _loc5_:Date = this.§9<§ != null ? this.§9<§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§5!A§);
         param1.writeUnsignedInt(this.§6f§);
         param1.writeUnsignedInt(this.§-g§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§`§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§^T§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§^T§,this.§`§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§70§)
         {
            if((_loc15_ = this.§70§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§'&§)
            {
               if(_loc16_ = this.§6<§)
               {
                  this.uncompress();
               }
               this.§4!B§ = §-3§.§`J§(this.§6^§,0,this.§6^§.length);
               this.§'&§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§4!B§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§8T§.length > 0)
         {
            if(this.§`§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§8T§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§8T§,this.§`§);
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
         if(!param3 && this.§6^§.length > 0)
         {
            if(this.§6<§)
            {
               if(§&?§ || §16§)
               {
                  _loc13_ = this.§6^§.length;
                  param1.writeBytes(this.§6^§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§6^§.length - 6;
                  param1.writeBytes(this.§6^§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§6^§.length;
               param1.writeBytes(this.§6^§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§5!!§(param1))
         {
         }
         return this.§5!!§ === this.§1]§;
      }
      
      protected function §1]§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §!F§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§"!#§(param1);
            if(this.§^n§ + this.§6!$§ > 0)
            {
               this.§5!!§ = this.§!! §;
            }
            else
            {
               this.§5!!§ = this.§>h§;
            }
            return true;
         }
         return false;
      }
      
      protected function §!! §(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§^n§ + this.§6!$§)
         {
            this.§3G§(param1);
            this.§5!!§ = this.§>h§;
            return true;
         }
         return false;
      }
      
      protected function §>h§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§7!'§)
         {
            this.§5!!§ = this.§1]§;
            _loc2_ = false;
         }
         else if(this.§6f§ == 0)
         {
            this.§5!!§ = this.§1]§;
         }
         else if(param1.bytesAvailable >= this.§6f§)
         {
            this.§6%§(param1);
            this.§5!!§ = this.§1]§;
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
         this.§@!2§ = _loc2_ >> 8;
         this.§';§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§&!8§ = param1.readUnsignedShort();
         this.§"%§ = (_loc3_ & 1) !== 0;
         this.§7!'§ = (_loc3_ & 8) !== 0;
         this.§0t§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§`§ = "utf-8";
         }
         if(this.§&!8§ === §,!E§)
         {
            this.§`5§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§]6§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§&!8§ === § I§)
         {
            this.§59§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§9<§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§5!A§ = param1.readUnsignedInt();
         this.§6f§ = param1.readUnsignedInt();
         this.§-g§ = param1.readUnsignedInt();
         this.§^n§ = param1.readUnsignedShort();
         this.§6!$§ = param1.readUnsignedShort();
      }
      
      protected function §3G§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§`§ == "utf-8")
         {
            this.§^T§ = param1.readUTFBytes(this.§^n§);
         }
         else
         {
            this.§^T§ = param1.readMultiByte(this.§^n§,this.§`§);
         }
         var _loc2_:uint = this.§6!$§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§^T§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§4!B§ = param1.readUnsignedInt();
               this.§'&§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§70§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §6%§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§&!8§ === § I§ && !this.§"%§)
         {
            if(§&?§ || §16§)
            {
               param1.readBytes(this.§6^§,0,this.§6f§);
            }
            else
            {
               if(!this.§'&§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§6^§.writeByte(120);
               _loc2_ = ~this.§59§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§6^§.writeByte(_loc2_);
               param1.readBytes(this.§6^§,2,this.§6f§);
               this.§6^§.position = this.§6^§.length;
               this.§6^§.writeUnsignedInt(this.§4!B§);
            }
            this.§6<§ = true;
         }
         else
         {
            if(this.§&!8§ != §;B§)
            {
               throw new Error("Compression method " + this.§&!8§ + " is not supported.");
            }
            param1.readBytes(this.§6^§,0,this.§6f§);
            this.§6<§ = false;
         }
         this.§6^§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§6<§)
         {
            if(this.§6^§.length > 0)
            {
               this.§6^§.position = 0;
               this.§-g§ = this.§6^§.length;
               if(§16§)
               {
                  this.§6^§.deflate();
                  this.§6f§ = this.§6^§.length;
               }
               else if(§&?§)
               {
                  this.§6^§.compress.apply(this.§6^§,["deflate"]);
                  this.§6f§ = this.§6^§.length;
               }
               else
               {
                  this.§6^§.compress();
                  this.§6f§ = this.§6^§.length - 6;
               }
               this.§6^§.position = 0;
               this.§6<§ = true;
            }
            else
            {
               this.§6f§ = 0;
               this.§-g§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§6<§ && this.§6^§.length > 0)
         {
            this.§6^§.position = 0;
            if(§16§)
            {
               this.§6^§.inflate();
            }
            else if(§&?§)
            {
               this.§6^§.uncompress.apply(this.§6^§,["deflate"]);
            }
            else
            {
               this.§6^§.uncompress();
            }
            this.§6^§.position = 0;
            this.§6<§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§^T§ + "\n  date:" + this.§9<§ + "\n  sizeCompressed:" + this.§6f§ + "\n  sizeUncompressed:" + this.§-g§ + "\n  versionHost:" + this.§@!2§ + "\n  versionNumber:" + this.§';§ + "\n  compressionMethod:" + this.§&!8§ + "\n  encrypted:" + this.§"%§ + "\n  hasDataDescriptor:" + this.§7!'§ + "\n  hasCompressedPatchedData:" + this.§0t§ + "\n  filenameEncoding:" + this.§`§ + "\n  crc32:" + this.§5!A§.toString(16) + "\n  adler32:" + this.§4!B§.toString(16);
      }
   }
}

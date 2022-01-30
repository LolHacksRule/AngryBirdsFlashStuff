package §["5§
{
   import §6>§.§3I§;
   import flash.utils.*;
   
   public class §8!z§
   {
      
      public static const §?I§:int = 0;
      
      public static const §7!c§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §]i§:int = 6;
      
      public static const §with§:int = 7;
      
      public static const §2G§:int = 8;
      
      public static const §!x§:int = 9;
      
      public static const §var §:int = 10;
      
      protected static var § !c§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var § "&§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var § var§:int = 0;
      
      protected var §@m§:String = "2.0";
      
      protected var §;0§:int = 8;
      
      protected var §&"0§:Boolean = false;
      
      protected var §0!v§:int = -1;
      
      protected var §+"&§:int = -1;
      
      protected var §]!J§:int = -1;
      
      protected var §'!7§:Boolean = false;
      
      protected var §]!V§:Boolean = false;
      
      protected var §&!P§:Date;
      
      protected var §+""§:uint;
      
      protected var §@!a§:Boolean = false;
      
      protected var §29§:uint = 0;
      
      protected var §]!7§:uint = 0;
      
      protected var §11§:String = "";
      
      protected var §7!q§:String;
      
      protected var §1!'§:Dictionary;
      
      protected var §?!<§:String = "";
      
      protected var §,"0§:ByteArray;
      
      var §5h§:uint;
      
      var §^!v§:uint = 0;
      
      var §"d§:uint = 0;
      
      protected var § U§:Boolean = false;
      
      protected var §`!n§:Function;
      
      public function §8!z§(param1:String = "utf-8")
      {
         this.§`!n§ = this.§@z§;
         super();
         this.§7!q§ = param1;
         this.§1!'§ = new Dictionary();
         this.§,"0§ = new ByteArray();
         this.§,"0§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §!"-§() : Date
      {
         return this.§&!P§;
      }
      
      public function set §!"-§(param1:Date) : void
      {
         this.§&!P§ = param1 != null ? param1 : new Date();
      }
      
      public function get §!!'§() : String
      {
         return this.§11§;
      }
      
      public function set §!!'§(param1:String) : void
      {
         this.§11§ = param1;
      }
      
      function get §?$§() : Boolean
      {
         return this.§'!7§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§ U§)
         {
            this.uncompress();
         }
         return this.§,"0§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§,!3§(param1);
      }
      
      public function §,!3§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§,"0§,0,param1.length);
            this.§5h§ = §3I§.§--§(this.§,"0§);
            this.§@!a§ = false;
         }
         else
         {
            this.§,"0§.length = 0;
            this.§,"0§.position = 0;
            this.§ U§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§"d§ = this.§^!v§ = this.§,"0§.length;
         }
      }
      
      public function get § "#§() : String
      {
         return this.§@m§;
      }
      
      public function get §57§() : uint
      {
         return this.§^!v§;
      }
      
      public function get §@!O§() : uint
      {
         return this.§"d§;
      }
      
      public function §%6§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§ U§)
         {
            this.uncompress();
         }
         this.§,"0§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§,"0§.readUTFBytes(this.§,"0§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§,"0§.readMultiByte(this.§,"0§.bytesAvailable,param2);
         }
         this.§,"0§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §'&§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§,"0§.length = 0;
         this.§,"0§.position = 0;
         this.§ U§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§,"0§.writeUTFBytes(param1);
            }
            else
            {
               this.§,"0§.writeMultiByte(param1,param2);
            }
            this.§5h§ = §3I§.§--§(this.§,"0§);
            this.§@!a§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§"d§ = this.§^!v§ = this.§,"0§.length;
         }
      }
      
      public function §0!%§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§+4§.§>!m§);
            param1.writeShort(this.§ var§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§+4§.§?M§);
         }
         param1.writeShort(this.§ var§ << 8 | 20);
         param1.writeShort(this.§7!q§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§ U§ ? int(§2G§) : int(§?I§));
         var _loc5_:Date = this.§&!P§ != null ? this.§&!P§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§5h§);
         param1.writeUnsignedInt(this.§^!v§);
         param1.writeUnsignedInt(this.§"d§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§7!q§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§11§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§11§,this.§7!q§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§1!'§)
         {
            if((_loc15_ = this.§1!'§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§@!a§)
            {
               if(_loc16_ = this.§ U§)
               {
                  this.uncompress();
               }
               this.§+""§ = §3I§.§@>§(this.§,"0§,0,this.§,"0§.length);
               this.§@!a§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§+""§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§?!<§.length > 0)
         {
            if(this.§7!q§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§?!<§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§?!<§,this.§7!q§);
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
         if(!param3 && this.§,"0§.length > 0)
         {
            if(this.§ U§)
            {
               if(§ !c§ || § "&§)
               {
                  _loc13_ = this.§,"0§.length;
                  param1.writeBytes(this.§,"0§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§,"0§.length - 6;
                  param1.writeBytes(this.§,"0§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§,"0§.length;
               param1.writeBytes(this.§,"0§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§`!n§(param1))
         {
         }
         return this.§`!n§ === this.§5!5§;
      }
      
      protected function §5!5§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §@z§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§3!Z§(param1);
            if(this.§29§ + this.§]!7§ > 0)
            {
               this.§`!n§ = this.§>!z§;
            }
            else
            {
               this.§`!n§ = this.§9!#§;
            }
            return true;
         }
         return false;
      }
      
      protected function §>!z§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§29§ + this.§]!7§)
         {
            this.§0!y§(param1);
            this.§`!n§ = this.§9!#§;
            return true;
         }
         return false;
      }
      
      protected function §9!#§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§'!7§)
         {
            this.§`!n§ = this.§5!5§;
            _loc2_ = false;
         }
         else if(this.§^!v§ == 0)
         {
            this.§`!n§ = this.§5!5§;
         }
         else if(param1.bytesAvailable >= this.§^!v§)
         {
            this.§1J§(param1);
            this.§`!n§ = this.§5!5§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §3!Z§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§ var§ = _loc2_ >> 8;
         this.§@m§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§;0§ = param1.readUnsignedShort();
         this.§&"0§ = (_loc3_ & 1) !== 0;
         this.§'!7§ = (_loc3_ & 8) !== 0;
         this.§]!V§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§7!q§ = "utf-8";
         }
         if(this.§;0§ === §]i§)
         {
            this.§0!v§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§+"&§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§;0§ === §2G§)
         {
            this.§]!J§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§&!P§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§5h§ = param1.readUnsignedInt();
         this.§^!v§ = param1.readUnsignedInt();
         this.§"d§ = param1.readUnsignedInt();
         this.§29§ = param1.readUnsignedShort();
         this.§]!7§ = param1.readUnsignedShort();
      }
      
      protected function §0!y§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§7!q§ == "utf-8")
         {
            this.§11§ = param1.readUTFBytes(this.§29§);
         }
         else
         {
            this.§11§ = param1.readMultiByte(this.§29§,this.§7!q§);
         }
         var _loc2_:uint = this.§]!7§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§11§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§+""§ = param1.readUnsignedInt();
               this.§@!a§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§1!'§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §1J§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§;0§ === §2G§ && !this.§&"0§)
         {
            if(§ !c§ || § "&§)
            {
               param1.readBytes(this.§,"0§,0,this.§^!v§);
            }
            else
            {
               if(!this.§@!a§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§,"0§.writeByte(120);
               _loc2_ = ~this.§]!J§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§,"0§.writeByte(_loc2_);
               param1.readBytes(this.§,"0§,2,this.§^!v§);
               this.§,"0§.position = this.§,"0§.length;
               this.§,"0§.writeUnsignedInt(this.§+""§);
            }
            this.§ U§ = true;
         }
         else
         {
            if(this.§;0§ != §?I§)
            {
               throw new Error("Compression method " + this.§;0§ + " is not supported.");
            }
            param1.readBytes(this.§,"0§,0,this.§^!v§);
            this.§ U§ = false;
         }
         this.§,"0§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§ U§)
         {
            if(this.§,"0§.length > 0)
            {
               this.§,"0§.position = 0;
               this.§"d§ = this.§,"0§.length;
               if(§ "&§)
               {
                  this.§,"0§.deflate();
                  this.§^!v§ = this.§,"0§.length;
               }
               else if(§ !c§)
               {
                  this.§,"0§.compress.apply(this.§,"0§,["deflate"]);
                  this.§^!v§ = this.§,"0§.length;
               }
               else
               {
                  this.§,"0§.compress();
                  this.§^!v§ = this.§,"0§.length - 6;
               }
               this.§,"0§.position = 0;
               this.§ U§ = true;
            }
            else
            {
               this.§^!v§ = 0;
               this.§"d§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§ U§ && this.§,"0§.length > 0)
         {
            this.§,"0§.position = 0;
            if(§ "&§)
            {
               this.§,"0§.inflate();
            }
            else if(§ !c§)
            {
               this.§,"0§.uncompress.apply(this.§,"0§,["deflate"]);
            }
            else
            {
               this.§,"0§.uncompress();
            }
            this.§,"0§.position = 0;
            this.§ U§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§11§ + "\n  date:" + this.§&!P§ + "\n  sizeCompressed:" + this.§^!v§ + "\n  sizeUncompressed:" + this.§"d§ + "\n  versionHost:" + this.§ var§ + "\n  versionNumber:" + this.§@m§ + "\n  compressionMethod:" + this.§;0§ + "\n  encrypted:" + this.§&"0§ + "\n  hasDataDescriptor:" + this.§'!7§ + "\n  hasCompressedPatchedData:" + this.§]!V§ + "\n  filenameEncoding:" + this.§7!q§ + "\n  crc32:" + this.§5h§.toString(16) + "\n  adler32:" + this.§+""§.toString(16);
      }
   }
}

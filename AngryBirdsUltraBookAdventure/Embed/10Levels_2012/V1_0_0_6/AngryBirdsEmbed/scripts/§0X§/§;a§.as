package §0X§
{
   import §=f§.§,C§;
   import flash.utils.*;
   
   public class §;a§
   {
      
      public static const §!7§:int = 0;
      
      public static const §else §:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §#`§:int = 6;
      
      public static const §+w§:int = 7;
      
      public static const §@S§:int = 8;
      
      public static const §<6§:int = 9;
      
      public static const §^p§:int = 10;
      
      protected static var §!+§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §'c§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §`,§:int = 0;
      
      protected var §71§:String = "2.0";
      
      protected var §+!4§:int = 8;
      
      protected var §<O§:Boolean = false;
      
      protected var §@Y§:int = -1;
      
      protected var §>5§:int = -1;
      
      protected var §+! §:int = -1;
      
      protected var §1V§:Boolean = false;
      
      protected var § i§:Boolean = false;
      
      protected var §super§:Date;
      
      protected var §-p§:uint;
      
      protected var §[!$§:Boolean = false;
      
      protected var §"b§:uint = 0;
      
      protected var §<-§:uint = 0;
      
      protected var §!!2§:String = "";
      
      protected var §6d§:String;
      
      protected var §;!C§:Dictionary;
      
      protected var §6!6§:String = "";
      
      protected var §!m§:ByteArray;
      
      var §-!<§:uint;
      
      var §@W§:uint = 0;
      
      var §=X§:uint = 0;
      
      protected var §]$§:Boolean = false;
      
      protected var §%U§:Function;
      
      public function §;a§(param1:String = "utf-8")
      {
         this.§%U§ = this.§]'§;
         super();
         this.§6d§ = param1;
         this.§;!C§ = new Dictionary();
         this.§!m§ = new ByteArray();
         this.§!m§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §while§() : Date
      {
         return this.§super§;
      }
      
      public function set §while§(param1:Date) : void
      {
         this.§super§ = param1 != null ? param1 : new Date();
      }
      
      public function get §?s§() : String
      {
         return this.§!!2§;
      }
      
      public function set §?s§(param1:String) : void
      {
         this.§!!2§ = param1;
      }
      
      function get § I§() : Boolean
      {
         return this.§1V§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§]$§)
         {
            this.uncompress();
         }
         return this.§!m§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§-!E§(param1);
      }
      
      public function §-!E§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§!m§,0,param1.length);
            this.§-!<§ = §,C§.§=8§(this.§!m§);
            this.§[!$§ = false;
         }
         else
         {
            this.§!m§.length = 0;
            this.§!m§.position = 0;
            this.§]$§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§=X§ = this.§@W§ = this.§!m§.length;
         }
      }
      
      public function get §,`§() : String
      {
         return this.§71§;
      }
      
      public function get §-i§() : uint
      {
         return this.§@W§;
      }
      
      public function get §53§() : uint
      {
         return this.§=X§;
      }
      
      public function §+n§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§]$§)
         {
            this.uncompress();
         }
         this.§!m§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§!m§.readUTFBytes(this.§!m§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§!m§.readMultiByte(this.§!m§.bytesAvailable,param2);
         }
         this.§!m§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §8b§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§!m§.length = 0;
         this.§!m§.position = 0;
         this.§]$§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§!m§.writeUTFBytes(param1);
            }
            else
            {
               this.§!m§.writeMultiByte(param1,param2);
            }
            this.§-!<§ = §,C§.§=8§(this.§!m§);
            this.§[!$§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§=X§ = this.§@W§ = this.§!m§.length;
         }
      }
      
      public function §&b§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§1P§.§]h§);
            param1.writeShort(this.§`,§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§1P§.§"!;§);
         }
         param1.writeShort(this.§`,§ << 8 | 20);
         param1.writeShort(this.§6d§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§]$§ ? int(§@S§) : int(§!7§));
         var _loc5_:Date = this.§super§ != null ? this.§super§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§-!<§);
         param1.writeUnsignedInt(this.§@W§);
         param1.writeUnsignedInt(this.§=X§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§6d§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§!!2§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§!!2§,this.§6d§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§;!C§)
         {
            if((_loc15_ = this.§;!C§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§[!$§)
            {
               if(_loc16_ = this.§]$§)
               {
                  this.uncompress();
               }
               this.§-p§ = §,C§.§`!?§(this.§!m§,0,this.§!m§.length);
               this.§[!$§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§-p§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§6!6§.length > 0)
         {
            if(this.§6d§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§6!6§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§6!6§,this.§6d§);
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
         if(!param3 && this.§!m§.length > 0)
         {
            if(this.§]$§)
            {
               if(§!+§ || §'c§)
               {
                  _loc13_ = this.§!m§.length;
                  param1.writeBytes(this.§!m§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§!m§.length - 6;
                  param1.writeBytes(this.§!m§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§!m§.length;
               param1.writeBytes(this.§!m§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§%U§(param1))
         {
         }
         return this.§%U§ === this.§^H§;
      }
      
      protected function §^H§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §]'§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§0D§(param1);
            if(this.§"b§ + this.§<-§ > 0)
            {
               this.§%U§ = this.§[;§;
            }
            else
            {
               this.§%U§ = this.§8A§;
            }
            return true;
         }
         return false;
      }
      
      protected function §[;§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§"b§ + this.§<-§)
         {
            this.§!!'§(param1);
            this.§%U§ = this.§8A§;
            return true;
         }
         return false;
      }
      
      protected function §8A§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§1V§)
         {
            this.§%U§ = this.§^H§;
            _loc2_ = false;
         }
         else if(this.§@W§ == 0)
         {
            this.§%U§ = this.§^H§;
         }
         else if(param1.bytesAvailable >= this.§@W§)
         {
            this.§@K§(param1);
            this.§%U§ = this.§^H§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §0D§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§`,§ = _loc2_ >> 8;
         this.§71§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§+!4§ = param1.readUnsignedShort();
         this.§<O§ = (_loc3_ & 1) !== 0;
         this.§1V§ = (_loc3_ & 8) !== 0;
         this.§ i§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§6d§ = "utf-8";
         }
         if(this.§+!4§ === §#`§)
         {
            this.§@Y§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§>5§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§+!4§ === §@S§)
         {
            this.§+! § = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§super§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§-!<§ = param1.readUnsignedInt();
         this.§@W§ = param1.readUnsignedInt();
         this.§=X§ = param1.readUnsignedInt();
         this.§"b§ = param1.readUnsignedShort();
         this.§<-§ = param1.readUnsignedShort();
      }
      
      protected function §!!'§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§6d§ == "utf-8")
         {
            this.§!!2§ = param1.readUTFBytes(this.§"b§);
         }
         else
         {
            this.§!!2§ = param1.readMultiByte(this.§"b§,this.§6d§);
         }
         var _loc2_:uint = this.§<-§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§!!2§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§-p§ = param1.readUnsignedInt();
               this.§[!$§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§;!C§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §@K§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§+!4§ === §@S§ && !this.§<O§)
         {
            if(§!+§ || §'c§)
            {
               param1.readBytes(this.§!m§,0,this.§@W§);
            }
            else
            {
               if(!this.§[!$§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§!m§.writeByte(120);
               _loc2_ = ~this.§+! § << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§!m§.writeByte(_loc2_);
               param1.readBytes(this.§!m§,2,this.§@W§);
               this.§!m§.position = this.§!m§.length;
               this.§!m§.writeUnsignedInt(this.§-p§);
            }
            this.§]$§ = true;
         }
         else
         {
            if(this.§+!4§ != §!7§)
            {
               throw new Error("Compression method " + this.§+!4§ + " is not supported.");
            }
            param1.readBytes(this.§!m§,0,this.§@W§);
            this.§]$§ = false;
         }
         this.§!m§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§]$§)
         {
            if(this.§!m§.length > 0)
            {
               this.§!m§.position = 0;
               this.§=X§ = this.§!m§.length;
               if(§'c§)
               {
                  this.§!m§.deflate();
                  this.§@W§ = this.§!m§.length;
               }
               else if(§!+§)
               {
                  this.§!m§.compress.apply(this.§!m§,["deflate"]);
                  this.§@W§ = this.§!m§.length;
               }
               else
               {
                  this.§!m§.compress();
                  this.§@W§ = this.§!m§.length - 6;
               }
               this.§!m§.position = 0;
               this.§]$§ = true;
            }
            else
            {
               this.§@W§ = 0;
               this.§=X§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§]$§ && this.§!m§.length > 0)
         {
            this.§!m§.position = 0;
            if(§'c§)
            {
               this.§!m§.inflate();
            }
            else if(§!+§)
            {
               this.§!m§.uncompress.apply(this.§!m§,["deflate"]);
            }
            else
            {
               this.§!m§.uncompress();
            }
            this.§!m§.position = 0;
            this.§]$§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§!!2§ + "\n  date:" + this.§super§ + "\n  sizeCompressed:" + this.§@W§ + "\n  sizeUncompressed:" + this.§=X§ + "\n  versionHost:" + this.§`,§ + "\n  versionNumber:" + this.§71§ + "\n  compressionMethod:" + this.§+!4§ + "\n  encrypted:" + this.§<O§ + "\n  hasDataDescriptor:" + this.§1V§ + "\n  hasCompressedPatchedData:" + this.§ i§ + "\n  filenameEncoding:" + this.§6d§ + "\n  crc32:" + this.§-!<§.toString(16) + "\n  adler32:" + this.§-p§.toString(16);
      }
   }
}

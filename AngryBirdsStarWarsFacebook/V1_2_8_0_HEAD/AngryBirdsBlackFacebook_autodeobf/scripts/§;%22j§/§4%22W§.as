package §;"j§
{
   import §,3§.§7§;
   import flash.utils.*;
   
   public class §4"W§
   {
      
      public static const §-Y§:int = 0;
      
      public static const §^!,§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §^!4§:int = 6;
      
      public static const §3"B§:int = 7;
      
      public static const §1"k§:int = 8;
      
      public static const §-!#§:int = 9;
      
      public static const §%#^§:int = 10;
      
      protected static var §&!P§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §7o§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §!",§:int = 0;
      
      protected var §,J§:String = "2.0";
      
      protected var §6!k§:int = 8;
      
      protected var §<"K§:Boolean = false;
      
      protected var §#!f§:int = -1;
      
      protected var §="7§:int = -1;
      
      protected var §]"I§:int = -1;
      
      protected var §?#X§:Boolean = false;
      
      protected var §^!8§:Boolean = false;
      
      protected var §3A§:Date;
      
      protected var §;U§:uint;
      
      protected var §@!o§:Boolean = false;
      
      protected var §5!k§:uint = 0;
      
      protected var §<#S§:uint = 0;
      
      protected var §-=§:String = "";
      
      protected var §4!k§:String;
      
      protected var §+"-§:Dictionary;
      
      protected var §=U§:String = "";
      
      protected var §3#"§:ByteArray;
      
      var §?!+§:uint;
      
      var §-"U§:uint = 0;
      
      var §`!+§:uint = 0;
      
      protected var §6"&§:Boolean = false;
      
      protected var §;L§:Function;
      
      public function §4"W§(param1:String = "utf-8")
      {
         this.§;L§ = this.§-!8§;
         super();
         this.§4!k§ = param1;
         this.§+"-§ = new Dictionary();
         this.§3#"§ = new ByteArray();
         this.§3#"§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get date() : Date
      {
         return this.§3A§;
      }
      
      public function set date(param1:Date) : void
      {
         this.§3A§ = param1 != null ? param1 : new Date();
      }
      
      public function get §1"n§() : String
      {
         return this.§-=§;
      }
      
      public function set §1"n§(param1:String) : void
      {
         this.§-=§ = param1;
      }
      
      function get §["@§() : Boolean
      {
         return this.§?#X§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§6"&§)
         {
            this.uncompress();
         }
         return this.§3#"§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§58§(param1);
      }
      
      public function §58§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§3#"§,0,param1.length);
            this.§?!+§ = §7§.§ u§(this.§3#"§);
            this.§@!o§ = false;
         }
         else
         {
            this.§3#"§.length = 0;
            this.§3#"§.position = 0;
            this.§6"&§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§`!+§ = this.§-"U§ = this.§3#"§.length;
         }
      }
      
      public function get §2b§() : String
      {
         return this.§,J§;
      }
      
      public function get §0h§() : uint
      {
         return this.§-"U§;
      }
      
      public function get §[&§() : uint
      {
         return this.§`!+§;
      }
      
      public function §7#E§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§6"&§)
         {
            this.uncompress();
         }
         this.§3#"§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§3#"§.readUTFBytes(this.§3#"§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§3#"§.readMultiByte(this.§3#"§.bytesAvailable,param2);
         }
         this.§3#"§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §-"D§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§3#"§.length = 0;
         this.§3#"§.position = 0;
         this.§6"&§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§3#"§.writeUTFBytes(param1);
            }
            else
            {
               this.§3#"§.writeMultiByte(param1,param2);
            }
            this.§?!+§ = §7§.§ u§(this.§3#"§);
            this.§@!o§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§`!+§ = this.§-"U§ = this.§3#"§.length;
         }
      }
      
      public function §?" §(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§[h§.§[!M§);
            param1.writeShort(this.§!",§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§[h§.§ #%§);
         }
         param1.writeShort(this.§!",§ << 8 | 20);
         param1.writeShort(this.§4!k§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§6"&§ ? int(§1"k§) : int(§-Y§));
         var _loc5_:Date = this.§3A§ != null ? this.§3A§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§?!+§);
         param1.writeUnsignedInt(this.§-"U§);
         param1.writeUnsignedInt(this.§`!+§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§4!k§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§-=§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§-=§,this.§4!k§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§+"-§)
         {
            if((_loc15_ = this.§+"-§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§@!o§)
            {
               if(_loc16_ = this.§6"&§)
               {
                  this.uncompress();
               }
               this.§;U§ = §7§.§="3§(this.§3#"§,0,this.§3#"§.length);
               this.§@!o§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§;U§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§=U§.length > 0)
         {
            if(this.§4!k§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§=U§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§=U§,this.§4!k§);
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
         if(!param3 && this.§3#"§.length > 0)
         {
            if(this.§6"&§)
            {
               if(§&!P§ || §7o§)
               {
                  _loc13_ = this.§3#"§.length;
                  param1.writeBytes(this.§3#"§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§3#"§.length - 6;
                  param1.writeBytes(this.§3#"§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§3#"§.length;
               param1.writeBytes(this.§3#"§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§;L§(param1))
         {
         }
         return this.§;L§ === this.§"!<§;
      }
      
      protected function §"!<§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §-!8§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§""m§(param1);
            if(this.§5!k§ + this.§<#S§ > 0)
            {
               this.§;L§ = this.§^#?§;
            }
            else
            {
               this.§;L§ = this.§+x§;
            }
            return true;
         }
         return false;
      }
      
      protected function §^#?§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§5!k§ + this.§<#S§)
         {
            this.§;"V§(param1);
            this.§;L§ = this.§+x§;
            return true;
         }
         return false;
      }
      
      protected function §+x§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§?#X§)
         {
            this.§;L§ = this.§"!<§;
            _loc2_ = false;
         }
         else if(this.§-"U§ == 0)
         {
            this.§;L§ = this.§"!<§;
         }
         else if(param1.bytesAvailable >= this.§-"U§)
         {
            this.§2!u§(param1);
            this.§;L§ = this.§"!<§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §""m§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§!",§ = _loc2_ >> 8;
         this.§,J§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§6!k§ = param1.readUnsignedShort();
         this.§<"K§ = (_loc3_ & 1) !== 0;
         this.§?#X§ = (_loc3_ & 8) !== 0;
         this.§^!8§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§4!k§ = "utf-8";
         }
         if(this.§6!k§ === §^!4§)
         {
            this.§#!f§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§="7§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§6!k§ === §1"k§)
         {
            this.§]"I§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§3A§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§?!+§ = param1.readUnsignedInt();
         this.§-"U§ = param1.readUnsignedInt();
         this.§`!+§ = param1.readUnsignedInt();
         this.§5!k§ = param1.readUnsignedShort();
         this.§<#S§ = param1.readUnsignedShort();
      }
      
      protected function §;"V§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§4!k§ == "utf-8")
         {
            this.§-=§ = param1.readUTFBytes(this.§5!k§);
         }
         else
         {
            this.§-=§ = param1.readMultiByte(this.§5!k§,this.§4!k§);
         }
         var _loc2_:uint = this.§<#S§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§-=§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§;U§ = param1.readUnsignedInt();
               this.§@!o§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§+"-§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §2!u§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§6!k§ === §1"k§ && !this.§<"K§)
         {
            if(§&!P§ || §7o§)
            {
               param1.readBytes(this.§3#"§,0,this.§-"U§);
            }
            else
            {
               if(!this.§@!o§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§3#"§.writeByte(120);
               _loc2_ = ~this.§]"I§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§3#"§.writeByte(_loc2_);
               param1.readBytes(this.§3#"§,2,this.§-"U§);
               this.§3#"§.position = this.§3#"§.length;
               this.§3#"§.writeUnsignedInt(this.§;U§);
            }
            this.§6"&§ = true;
         }
         else
         {
            if(this.§6!k§ != §-Y§)
            {
               throw new Error("Compression method " + this.§6!k§ + " is not supported.");
            }
            param1.readBytes(this.§3#"§,0,this.§-"U§);
            this.§6"&§ = false;
         }
         this.§3#"§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§6"&§)
         {
            if(this.§3#"§.length > 0)
            {
               this.§3#"§.position = 0;
               this.§`!+§ = this.§3#"§.length;
               if(§7o§)
               {
                  this.§3#"§.deflate();
                  this.§-"U§ = this.§3#"§.length;
               }
               else if(§&!P§)
               {
                  this.§3#"§.compress.apply(this.§3#"§,["deflate"]);
                  this.§-"U§ = this.§3#"§.length;
               }
               else
               {
                  this.§3#"§.compress();
                  this.§-"U§ = this.§3#"§.length - 6;
               }
               this.§3#"§.position = 0;
               this.§6"&§ = true;
            }
            else
            {
               this.§-"U§ = 0;
               this.§`!+§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§6"&§ && this.§3#"§.length > 0)
         {
            this.§3#"§.position = 0;
            if(§7o§)
            {
               this.§3#"§.inflate();
            }
            else if(§&!P§)
            {
               this.§3#"§.uncompress.apply(this.§3#"§,["deflate"]);
            }
            else
            {
               this.§3#"§.uncompress();
            }
            this.§3#"§.position = 0;
            this.§6"&§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§-=§ + "\n  date:" + this.§3A§ + "\n  sizeCompressed:" + this.§-"U§ + "\n  sizeUncompressed:" + this.§`!+§ + "\n  versionHost:" + this.§!",§ + "\n  versionNumber:" + this.§,J§ + "\n  compressionMethod:" + this.§6!k§ + "\n  encrypted:" + this.§<"K§ + "\n  hasDataDescriptor:" + this.§?#X§ + "\n  hasCompressedPatchedData:" + this.§^!8§ + "\n  filenameEncoding:" + this.§4!k§ + "\n  crc32:" + this.§?!+§.toString(16) + "\n  adler32:" + this.§;U§.toString(16);
      }
   }
}

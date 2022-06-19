package §0b§
{
   import §,=§.§<!U§;
   import flash.utils.*;
   
   public class §2!#§
   {
      
      public static const §7!2§:int = 0;
      
      public static const §;Q§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §-!K§:int = 6;
      
      public static const §?x§:int = 7;
      
      public static const §!+§:int = 8;
      
      public static const §9=§:int = 9;
      
      public static const §7k§:int = 10;
      
      protected static var §?y§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §,y§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §5!D§:int = 0;
      
      protected var §`W§:String = "2.0";
      
      protected var §97§:int = 8;
      
      protected var §6,§:Boolean = false;
      
      protected var §`I§:int = -1;
      
      protected var §0m§:int = -1;
      
      protected var §@!6§:int = -1;
      
      protected var §2!6§:Boolean = false;
      
      protected var §=!$§:Boolean = false;
      
      protected var §7!6§:Date;
      
      protected var §"!O§:uint;
      
      protected var §&s§:Boolean = false;
      
      protected var §^v§:uint = 0;
      
      protected var §&S§:uint = 0;
      
      protected var §?!]§:String = "";
      
      protected var §38§:String;
      
      protected var §?!O§:Dictionary;
      
      protected var §6R§:String = "";
      
      protected var §@!L§:ByteArray;
      
      var §]!P§:uint;
      
      var §3^§:uint = 0;
      
      var §>!2§:uint = 0;
      
      protected var §+7§:Boolean = false;
      
      protected var §[6§:Function;
      
      public function §2!#§(param1:String = "utf-8")
      {
         this.§[6§ = this.§<5§;
         super();
         this.§38§ = param1;
         this.§?!O§ = new Dictionary();
         this.§@!L§ = new ByteArray();
         this.§@!L§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §];§() : Date
      {
         return this.§7!6§;
      }
      
      public function set §];§(param1:Date) : void
      {
         this.§7!6§ = param1 != null ? param1 : new Date();
      }
      
      public function get §``§() : String
      {
         return this.§?!]§;
      }
      
      public function set §``§(param1:String) : void
      {
         this.§?!]§ = param1;
      }
      
      function get §-[§() : Boolean
      {
         return this.§2!6§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§+7§)
         {
            this.uncompress();
         }
         return this.§@!L§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§;!%§(param1);
      }
      
      public function §;!%§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§@!L§,0,param1.length);
            this.§]!P§ = §<!U§.§'d§(this.§@!L§);
            this.§&s§ = false;
         }
         else
         {
            this.§@!L§.length = 0;
            this.§@!L§.position = 0;
            this.§+7§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§>!2§ = this.§3^§ = this.§@!L§.length;
         }
      }
      
      public function get §62§() : String
      {
         return this.§`W§;
      }
      
      public function get §=!Z§() : uint
      {
         return this.§3^§;
      }
      
      public function get §3=§() : uint
      {
         return this.§>!2§;
      }
      
      public function §=n§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§+7§)
         {
            this.uncompress();
         }
         this.§@!L§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§@!L§.readUTFBytes(this.§@!L§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§@!L§.readMultiByte(this.§@!L§.bytesAvailable,param2);
         }
         this.§@!L§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §7s§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§@!L§.length = 0;
         this.§@!L§.position = 0;
         this.§+7§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§@!L§.writeUTFBytes(param1);
            }
            else
            {
               this.§@!L§.writeMultiByte(param1,param2);
            }
            this.§]!P§ = §<!U§.§'d§(this.§@!L§);
            this.§&s§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§>!2§ = this.§3^§ = this.§@!L§.length;
         }
      }
      
      public function §&!A§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§0!=§.§,9§);
            param1.writeShort(this.§5!D§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§0!=§.§8!V§);
         }
         param1.writeShort(this.§5!D§ << 8 | 20);
         param1.writeShort(this.§38§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§+7§ ? int(§!+§) : int(§7!2§));
         var _loc5_:Date = this.§7!6§ != null ? this.§7!6§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§]!P§);
         param1.writeUnsignedInt(this.§3^§);
         param1.writeUnsignedInt(this.§>!2§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§38§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§?!]§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§?!]§,this.§38§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§?!O§)
         {
            if((_loc15_ = this.§?!O§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§&s§)
            {
               if(_loc16_ = this.§+7§)
               {
                  this.uncompress();
               }
               this.§"!O§ = §<!U§.§'=§(this.§@!L§,0,this.§@!L§.length);
               this.§&s§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§"!O§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§6R§.length > 0)
         {
            if(this.§38§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§6R§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§6R§,this.§38§);
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
         if(!param3 && this.§@!L§.length > 0)
         {
            if(this.§+7§)
            {
               if(§?y§ || §,y§)
               {
                  _loc13_ = this.§@!L§.length;
                  param1.writeBytes(this.§@!L§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§@!L§.length - 6;
                  param1.writeBytes(this.§@!L§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§@!L§.length;
               param1.writeBytes(this.§@!L§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§[6§(param1))
         {
         }
         return this.§[6§ === this.§2<§;
      }
      
      protected function §2<§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §<5§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§]!E§(param1);
            if(this.§^v§ + this.§&S§ > 0)
            {
               this.§[6§ = this.§-<§;
            }
            else
            {
               this.§[6§ = this.§@5§;
            }
            return true;
         }
         return false;
      }
      
      protected function §-<§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§^v§ + this.§&S§)
         {
            this.§0W§(param1);
            this.§[6§ = this.§@5§;
            return true;
         }
         return false;
      }
      
      protected function §@5§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§2!6§)
         {
            this.§[6§ = this.§2<§;
            _loc2_ = false;
         }
         else if(this.§3^§ == 0)
         {
            this.§[6§ = this.§2<§;
         }
         else if(param1.bytesAvailable >= this.§3^§)
         {
            this.§'S§(param1);
            this.§[6§ = this.§2<§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §]!E§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§5!D§ = _loc2_ >> 8;
         this.§`W§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§97§ = param1.readUnsignedShort();
         this.§6,§ = (_loc3_ & 1) !== 0;
         this.§2!6§ = (_loc3_ & 8) !== 0;
         this.§=!$§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§38§ = "utf-8";
         }
         if(this.§97§ === §-!K§)
         {
            this.§`I§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§0m§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§97§ === §!+§)
         {
            this.§@!6§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§7!6§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§]!P§ = param1.readUnsignedInt();
         this.§3^§ = param1.readUnsignedInt();
         this.§>!2§ = param1.readUnsignedInt();
         this.§^v§ = param1.readUnsignedShort();
         this.§&S§ = param1.readUnsignedShort();
      }
      
      protected function §0W§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§38§ == "utf-8")
         {
            this.§?!]§ = param1.readUTFBytes(this.§^v§);
         }
         else
         {
            this.§?!]§ = param1.readMultiByte(this.§^v§,this.§38§);
         }
         var _loc2_:uint = this.§&S§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§?!]§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§"!O§ = param1.readUnsignedInt();
               this.§&s§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§?!O§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §'S§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§97§ === §!+§ && !this.§6,§)
         {
            if(§?y§ || §,y§)
            {
               param1.readBytes(this.§@!L§,0,this.§3^§);
            }
            else
            {
               if(!this.§&s§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§@!L§.writeByte(120);
               _loc2_ = ~this.§@!6§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§@!L§.writeByte(_loc2_);
               param1.readBytes(this.§@!L§,2,this.§3^§);
               this.§@!L§.position = this.§@!L§.length;
               this.§@!L§.writeUnsignedInt(this.§"!O§);
            }
            this.§+7§ = true;
         }
         else
         {
            if(this.§97§ != §7!2§)
            {
               throw new Error("Compression method " + this.§97§ + " is not supported.");
            }
            param1.readBytes(this.§@!L§,0,this.§3^§);
            this.§+7§ = false;
         }
         this.§@!L§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§+7§)
         {
            if(this.§@!L§.length > 0)
            {
               this.§@!L§.position = 0;
               this.§>!2§ = this.§@!L§.length;
               if(§,y§)
               {
                  this.§@!L§.deflate();
                  this.§3^§ = this.§@!L§.length;
               }
               else if(§?y§)
               {
                  this.§@!L§.compress.apply(this.§@!L§,["deflate"]);
                  this.§3^§ = this.§@!L§.length;
               }
               else
               {
                  this.§@!L§.compress();
                  this.§3^§ = this.§@!L§.length - 6;
               }
               this.§@!L§.position = 0;
               this.§+7§ = true;
            }
            else
            {
               this.§3^§ = 0;
               this.§>!2§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§+7§ && this.§@!L§.length > 0)
         {
            this.§@!L§.position = 0;
            if(§,y§)
            {
               this.§@!L§.inflate();
            }
            else if(§?y§)
            {
               this.§@!L§.uncompress.apply(this.§@!L§,["deflate"]);
            }
            else
            {
               this.§@!L§.uncompress();
            }
            this.§@!L§.position = 0;
            this.§+7§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§?!]§ + "\n  date:" + this.§7!6§ + "\n  sizeCompressed:" + this.§3^§ + "\n  sizeUncompressed:" + this.§>!2§ + "\n  versionHost:" + this.§5!D§ + "\n  versionNumber:" + this.§`W§ + "\n  compressionMethod:" + this.§97§ + "\n  encrypted:" + this.§6,§ + "\n  hasDataDescriptor:" + this.§2!6§ + "\n  hasCompressedPatchedData:" + this.§=!$§ + "\n  filenameEncoding:" + this.§38§ + "\n  crc32:" + this.§]!P§.toString(16) + "\n  adler32:" + this.§"!O§.toString(16);
      }
   }
}

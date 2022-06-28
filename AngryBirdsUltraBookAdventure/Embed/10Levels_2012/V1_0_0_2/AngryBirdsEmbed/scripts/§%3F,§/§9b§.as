package §?,§
{
   import §8f§.§"!+§;
   import flash.utils.*;
   
   public class §9b§
   {
      
      public static const §3!6§:int = 0;
      
      public static const §]!G§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §7!6§:int = 6;
      
      public static const §%S§:int = 7;
      
      public static const §%!0§:int = 8;
      
      public static const §3R§:int = 9;
      
      public static const §`B§:int = 10;
      
      protected static var §7T§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §1! §:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §[!+§:int = 0;
      
      protected var §>Y§:String = "2.0";
      
      protected var §1<§:int = 8;
      
      protected var §]D§:Boolean = false;
      
      protected var §@!B§:int = -1;
      
      protected var §[i§:int = -1;
      
      protected var §<O§:int = -1;
      
      protected var §;§:Boolean = false;
      
      protected var §-!5§:Boolean = false;
      
      protected var §0]§:Date;
      
      protected var §'$§:uint;
      
      protected var §+!2§:Boolean = false;
      
      protected var §>?§:uint = 0;
      
      protected var §<c§:uint = 0;
      
      protected var §"Y§:String = "";
      
      protected var §2D§:String;
      
      protected var §96§:Dictionary;
      
      protected var §<?§:String = "";
      
      protected var §]S§:ByteArray;
      
      var §4B§:uint;
      
      var §5c§:uint = 0;
      
      var §5^§:uint = 0;
      
      protected var §+<§:Boolean = false;
      
      protected var §[6§:Function;
      
      public function §9b§(param1:String = "utf-8")
      {
         this.§[6§ = this.§+F§;
         super();
         this.§2D§ = param1;
         this.§96§ = new Dictionary();
         this.§]S§ = new ByteArray();
         this.§]S§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §]G§() : Date
      {
         return this.§0]§;
      }
      
      public function set §]G§(param1:Date) : void
      {
         this.§0]§ = param1 != null ? param1 : new Date();
      }
      
      public function get §1§() : String
      {
         return this.§"Y§;
      }
      
      public function set §1§(param1:String) : void
      {
         this.§"Y§ = param1;
      }
      
      function get §3Q§() : Boolean
      {
         return this.§;§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§+<§)
         {
            this.uncompress();
         }
         return this.§]S§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§3I§(param1);
      }
      
      public function §3I§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§]S§,0,param1.length);
            this.§4B§ = §"!+§.§?3§(this.§]S§);
            this.§+!2§ = false;
         }
         else
         {
            this.§]S§.length = 0;
            this.§]S§.position = 0;
            this.§+<§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§5^§ = this.§5c§ = this.§]S§.length;
         }
      }
      
      public function get §#s§() : String
      {
         return this.§>Y§;
      }
      
      public function get §<!,§() : uint
      {
         return this.§5c§;
      }
      
      public function get §`!A§() : uint
      {
         return this.§5^§;
      }
      
      public function § V§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§+<§)
         {
            this.uncompress();
         }
         this.§]S§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§]S§.readUTFBytes(this.§]S§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§]S§.readMultiByte(this.§]S§.bytesAvailable,param2);
         }
         this.§]S§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §`8§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§]S§.length = 0;
         this.§]S§.position = 0;
         this.§+<§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§]S§.writeUTFBytes(param1);
            }
            else
            {
               this.§]S§.writeMultiByte(param1,param2);
            }
            this.§4B§ = §"!+§.§?3§(this.§]S§);
            this.§+!2§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§5^§ = this.§5c§ = this.§]S§.length;
         }
      }
      
      public function §!k§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§ d§.§^Y§);
            param1.writeShort(this.§[!+§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§ d§.§0c§);
         }
         param1.writeShort(this.§[!+§ << 8 | 20);
         param1.writeShort(this.§2D§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§+<§ ? int(§%!0§) : int(§3!6§));
         var _loc5_:Date = this.§0]§ != null ? this.§0]§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§4B§);
         param1.writeUnsignedInt(this.§5c§);
         param1.writeUnsignedInt(this.§5^§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§2D§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§"Y§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§"Y§,this.§2D§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§96§)
         {
            if((_loc15_ = this.§96§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§+!2§)
            {
               if(_loc16_ = this.§+<§)
               {
                  this.uncompress();
               }
               this.§'$§ = §"!+§.§'1§(this.§]S§,0,this.§]S§.length);
               this.§+!2§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§'$§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§<?§.length > 0)
         {
            if(this.§2D§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§<?§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§<?§,this.§2D§);
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
         if(!param3 && this.§]S§.length > 0)
         {
            if(this.§+<§)
            {
               if(§7T§ || §1! §)
               {
                  _loc13_ = this.§]S§.length;
                  param1.writeBytes(this.§]S§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§]S§.length - 6;
                  param1.writeBytes(this.§]S§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§]S§.length;
               param1.writeBytes(this.§]S§,0,_loc13_);
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
         return this.§[6§ === this.§&"§;
      }
      
      protected function §&"§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §+F§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§#!E§(param1);
            if(this.§>?§ + this.§<c§ > 0)
            {
               this.§[6§ = this.§'x§;
            }
            else
            {
               this.§[6§ = this.§08§;
            }
            return true;
         }
         return false;
      }
      
      protected function §'x§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§>?§ + this.§<c§)
         {
            this.§'%§(param1);
            this.§[6§ = this.§08§;
            return true;
         }
         return false;
      }
      
      protected function §08§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§;§)
         {
            this.§[6§ = this.§&"§;
            _loc2_ = false;
         }
         else if(this.§5c§ == 0)
         {
            this.§[6§ = this.§&"§;
         }
         else if(param1.bytesAvailable >= this.§5c§)
         {
            this.§%!;§(param1);
            this.§[6§ = this.§&"§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §#!E§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§[!+§ = _loc2_ >> 8;
         this.§>Y§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§1<§ = param1.readUnsignedShort();
         this.§]D§ = (_loc3_ & 1) !== 0;
         this.§;§ = (_loc3_ & 8) !== 0;
         this.§-!5§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§2D§ = "utf-8";
         }
         if(this.§1<§ === §7!6§)
         {
            this.§@!B§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§[i§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§1<§ === §%!0§)
         {
            this.§<O§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§0]§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§4B§ = param1.readUnsignedInt();
         this.§5c§ = param1.readUnsignedInt();
         this.§5^§ = param1.readUnsignedInt();
         this.§>?§ = param1.readUnsignedShort();
         this.§<c§ = param1.readUnsignedShort();
      }
      
      protected function §'%§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§2D§ == "utf-8")
         {
            this.§"Y§ = param1.readUTFBytes(this.§>?§);
         }
         else
         {
            this.§"Y§ = param1.readMultiByte(this.§>?§,this.§2D§);
         }
         var _loc2_:uint = this.§<c§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§"Y§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§'$§ = param1.readUnsignedInt();
               this.§+!2§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§96§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §%!;§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§1<§ === §%!0§ && !this.§]D§)
         {
            if(§7T§ || §1! §)
            {
               param1.readBytes(this.§]S§,0,this.§5c§);
            }
            else
            {
               if(!this.§+!2§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§]S§.writeByte(120);
               _loc2_ = ~this.§<O§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§]S§.writeByte(_loc2_);
               param1.readBytes(this.§]S§,2,this.§5c§);
               this.§]S§.position = this.§]S§.length;
               this.§]S§.writeUnsignedInt(this.§'$§);
            }
            this.§+<§ = true;
         }
         else
         {
            if(this.§1<§ != §3!6§)
            {
               throw new Error("Compression method " + this.§1<§ + " is not supported.");
            }
            param1.readBytes(this.§]S§,0,this.§5c§);
            this.§+<§ = false;
         }
         this.§]S§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§+<§)
         {
            if(this.§]S§.length > 0)
            {
               this.§]S§.position = 0;
               this.§5^§ = this.§]S§.length;
               if(§1! §)
               {
                  this.§]S§.deflate();
                  this.§5c§ = this.§]S§.length;
               }
               else if(§7T§)
               {
                  this.§]S§.compress.apply(this.§]S§,["deflate"]);
                  this.§5c§ = this.§]S§.length;
               }
               else
               {
                  this.§]S§.compress();
                  this.§5c§ = this.§]S§.length - 6;
               }
               this.§]S§.position = 0;
               this.§+<§ = true;
            }
            else
            {
               this.§5c§ = 0;
               this.§5^§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§+<§ && this.§]S§.length > 0)
         {
            this.§]S§.position = 0;
            if(§1! §)
            {
               this.§]S§.inflate();
            }
            else if(§7T§)
            {
               this.§]S§.uncompress.apply(this.§]S§,["deflate"]);
            }
            else
            {
               this.§]S§.uncompress();
            }
            this.§]S§.position = 0;
            this.§+<§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§"Y§ + "\n  date:" + this.§0]§ + "\n  sizeCompressed:" + this.§5c§ + "\n  sizeUncompressed:" + this.§5^§ + "\n  versionHost:" + this.§[!+§ + "\n  versionNumber:" + this.§>Y§ + "\n  compressionMethod:" + this.§1<§ + "\n  encrypted:" + this.§]D§ + "\n  hasDataDescriptor:" + this.§;§ + "\n  hasCompressedPatchedData:" + this.§-!5§ + "\n  filenameEncoding:" + this.§2D§ + "\n  crc32:" + this.§4B§.toString(16) + "\n  adler32:" + this.§'$§.toString(16);
      }
   }
}

package §2m§
{
   import §?!&§.§<!^§;
   import flash.utils.*;
   
   public class §,p§
   {
      
      public static const §?D§:int = 0;
      
      public static const §9F§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §=V§:int = 6;
      
      public static const §='§:int = 7;
      
      public static const §3U§:int = 8;
      
      public static const §4[§:int = 9;
      
      public static const § G§:int = 10;
      
      protected static var §!W§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §[S§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §^f§:int = 0;
      
      protected var §9&§:String = "2.0";
      
      protected var §0X§:int = 8;
      
      protected var §=!,§:Boolean = false;
      
      protected var §@,§:int = -1;
      
      protected var §!!Q§:int = -1;
      
      protected var §!!L§:int = -1;
      
      protected var §[!2§:Boolean = false;
      
      protected var §1,§:Boolean = false;
      
      protected var §=o§:Date;
      
      protected var §1R§:uint;
      
      protected var §&! §:Boolean = false;
      
      protected var §;!§:uint = 0;
      
      protected var § each§:uint = 0;
      
      protected var §!!G§:String = "";
      
      protected var §2&§:String;
      
      protected var §`!R§:Dictionary;
      
      protected var §6!5§:String = "";
      
      protected var §-L§:ByteArray;
      
      var §&R§:uint;
      
      var §^<§:uint = 0;
      
      var § ]§:uint = 0;
      
      protected var §%f§:Boolean = false;
      
      protected var §9!;§:Function;
      
      public function §,p§(param1:String = "utf-8")
      {
         this.§9!;§ = this.§-!1§;
         super();
         this.§2&§ = param1;
         this.§`!R§ = new Dictionary();
         this.§-L§ = new ByteArray();
         this.§-L§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §"!,§() : Date
      {
         return this.§=o§;
      }
      
      public function set §"!,§(param1:Date) : void
      {
         this.§=o§ = param1 != null ? param1 : new Date();
      }
      
      public function get §49§() : String
      {
         return this.§!!G§;
      }
      
      public function set §49§(param1:String) : void
      {
         this.§!!G§ = param1;
      }
      
      function get §[!1§() : Boolean
      {
         return this.§[!2§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§%f§)
         {
            this.uncompress();
         }
         return this.§-L§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§6j§(param1);
      }
      
      public function §6j§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§-L§,0,param1.length);
            this.§&R§ = §<!^§.§<w§(this.§-L§);
            this.§&! § = false;
         }
         else
         {
            this.§-L§.length = 0;
            this.§-L§.position = 0;
            this.§%f§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§ ]§ = this.§^<§ = this.§-L§.length;
         }
      }
      
      public function get §9t§() : String
      {
         return this.§9&§;
      }
      
      public function get §[_§() : uint
      {
         return this.§^<§;
      }
      
      public function get §8H§() : uint
      {
         return this.§ ]§;
      }
      
      public function §@K§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§%f§)
         {
            this.uncompress();
         }
         this.§-L§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§-L§.readUTFBytes(this.§-L§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§-L§.readMultiByte(this.§-L§.bytesAvailable,param2);
         }
         this.§-L§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §+!Q§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§-L§.length = 0;
         this.§-L§.position = 0;
         this.§%f§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§-L§.writeUTFBytes(param1);
            }
            else
            {
               this.§-L§.writeMultiByte(param1,param2);
            }
            this.§&R§ = §<!^§.§<w§(this.§-L§);
            this.§&! § = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§ ]§ = this.§^<§ = this.§-L§.length;
         }
      }
      
      public function §;!]§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§<7§.§ !9§);
            param1.writeShort(this.§^f§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§<7§.§1!O§);
         }
         param1.writeShort(this.§^f§ << 8 | 20);
         param1.writeShort(this.§2&§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§%f§ ? int(§3U§) : int(§?D§));
         var _loc5_:Date = this.§=o§ != null ? this.§=o§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§&R§);
         param1.writeUnsignedInt(this.§^<§);
         param1.writeUnsignedInt(this.§ ]§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§2&§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§!!G§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§!!G§,this.§2&§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§`!R§)
         {
            if((_loc15_ = this.§`!R§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§&! §)
            {
               if(_loc16_ = this.§%f§)
               {
                  this.uncompress();
               }
               this.§1R§ = §<!^§.§3b§(this.§-L§,0,this.§-L§.length);
               this.§&! § = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§1R§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§6!5§.length > 0)
         {
            if(this.§2&§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§6!5§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§6!5§,this.§2&§);
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
         if(!param3 && this.§-L§.length > 0)
         {
            if(this.§%f§)
            {
               if(§!W§ || §[S§)
               {
                  _loc13_ = this.§-L§.length;
                  param1.writeBytes(this.§-L§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§-L§.length - 6;
                  param1.writeBytes(this.§-L§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§-L§.length;
               param1.writeBytes(this.§-L§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§9!;§(param1))
         {
         }
         return this.§9!;§ === this.§+1§;
      }
      
      protected function §+1§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §-!1§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§5!Q§(param1);
            if(this.§;!§ + this.§ each§ > 0)
            {
               this.§9!;§ = this.§ !E§;
            }
            else
            {
               this.§9!;§ = this.§5j§;
            }
            return true;
         }
         return false;
      }
      
      protected function § !E§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§;!§ + this.§ each§)
         {
            this.§#s§(param1);
            this.§9!;§ = this.§5j§;
            return true;
         }
         return false;
      }
      
      protected function §5j§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§[!2§)
         {
            this.§9!;§ = this.§+1§;
            _loc2_ = false;
         }
         else if(this.§^<§ == 0)
         {
            this.§9!;§ = this.§+1§;
         }
         else if(param1.bytesAvailable >= this.§^<§)
         {
            this.§06§(param1);
            this.§9!;§ = this.§+1§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §5!Q§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§^f§ = _loc2_ >> 8;
         this.§9&§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§0X§ = param1.readUnsignedShort();
         this.§=!,§ = (_loc3_ & 1) !== 0;
         this.§[!2§ = (_loc3_ & 8) !== 0;
         this.§1,§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§2&§ = "utf-8";
         }
         if(this.§0X§ === §=V§)
         {
            this.§@,§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§!!Q§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§0X§ === §3U§)
         {
            this.§!!L§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§=o§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§&R§ = param1.readUnsignedInt();
         this.§^<§ = param1.readUnsignedInt();
         this.§ ]§ = param1.readUnsignedInt();
         this.§;!§ = param1.readUnsignedShort();
         this.§ each§ = param1.readUnsignedShort();
      }
      
      protected function §#s§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§2&§ == "utf-8")
         {
            this.§!!G§ = param1.readUTFBytes(this.§;!§);
         }
         else
         {
            this.§!!G§ = param1.readMultiByte(this.§;!§,this.§2&§);
         }
         var _loc2_:uint = this.§ each§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§!!G§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§1R§ = param1.readUnsignedInt();
               this.§&! § = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§`!R§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §06§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§0X§ === §3U§ && !this.§=!,§)
         {
            if(§!W§ || §[S§)
            {
               param1.readBytes(this.§-L§,0,this.§^<§);
            }
            else
            {
               if(!this.§&! §)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§-L§.writeByte(120);
               _loc2_ = ~this.§!!L§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§-L§.writeByte(_loc2_);
               param1.readBytes(this.§-L§,2,this.§^<§);
               this.§-L§.position = this.§-L§.length;
               this.§-L§.writeUnsignedInt(this.§1R§);
            }
            this.§%f§ = true;
         }
         else
         {
            if(this.§0X§ != §?D§)
            {
               throw new Error("Compression method " + this.§0X§ + " is not supported.");
            }
            param1.readBytes(this.§-L§,0,this.§^<§);
            this.§%f§ = false;
         }
         this.§-L§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§%f§)
         {
            if(this.§-L§.length > 0)
            {
               this.§-L§.position = 0;
               this.§ ]§ = this.§-L§.length;
               if(§[S§)
               {
                  this.§-L§.deflate();
                  this.§^<§ = this.§-L§.length;
               }
               else if(§!W§)
               {
                  this.§-L§.compress.apply(this.§-L§,["deflate"]);
                  this.§^<§ = this.§-L§.length;
               }
               else
               {
                  this.§-L§.compress();
                  this.§^<§ = this.§-L§.length - 6;
               }
               this.§-L§.position = 0;
               this.§%f§ = true;
            }
            else
            {
               this.§^<§ = 0;
               this.§ ]§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§%f§ && this.§-L§.length > 0)
         {
            this.§-L§.position = 0;
            if(§[S§)
            {
               this.§-L§.inflate();
            }
            else if(§!W§)
            {
               this.§-L§.uncompress.apply(this.§-L§,["deflate"]);
            }
            else
            {
               this.§-L§.uncompress();
            }
            this.§-L§.position = 0;
            this.§%f§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§!!G§ + "\n  date:" + this.§=o§ + "\n  sizeCompressed:" + this.§^<§ + "\n  sizeUncompressed:" + this.§ ]§ + "\n  versionHost:" + this.§^f§ + "\n  versionNumber:" + this.§9&§ + "\n  compressionMethod:" + this.§0X§ + "\n  encrypted:" + this.§=!,§ + "\n  hasDataDescriptor:" + this.§[!2§ + "\n  hasCompressedPatchedData:" + this.§1,§ + "\n  filenameEncoding:" + this.§2&§ + "\n  crc32:" + this.§&R§.toString(16) + "\n  adler32:" + this.§1R§.toString(16);
      }
   }
}

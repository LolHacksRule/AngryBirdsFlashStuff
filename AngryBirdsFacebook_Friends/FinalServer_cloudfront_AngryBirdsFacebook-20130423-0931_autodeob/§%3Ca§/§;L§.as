package §<a§
{
   import §<"=§.§+p§;
   import flash.utils.*;
   
   public class §;L§
   {
      
      public static const §9!p§:int = 0;
      
      public static const §7"Z§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §<"[§:int = 6;
      
      public static const §&]§:int = 7;
      
      public static const §4V§:int = 8;
      
      public static const §`!<§:int = 9;
      
      public static const §^!K§:int = 10;
      
      protected static var §[,§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §]!a§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §&!v§:int = 0;
      
      protected var §3"Y§:String = "2.0";
      
      protected var §2#§:int = 8;
      
      protected var §9"5§:Boolean = false;
      
      protected var §^!N§:int = -1;
      
      protected var §-!N§:int = -1;
      
      protected var §0"O§:int = -1;
      
      protected var §["3§:Boolean = false;
      
      protected var §]!;§:Boolean = false;
      
      protected var §""9§:Date;
      
      protected var §<!f§:uint;
      
      protected var native:Boolean = false;
      
      protected var §%",§:uint = 0;
      
      protected var §4Y§:uint = 0;
      
      protected var §[!`§:String = "";
      
      protected var §-!K§:String;
      
      protected var §?!+§:Dictionary;
      
      protected var §<!]§:String = "";
      
      protected var §0!X§:ByteArray;
      
      var §"!<§:uint;
      
      var §`e§:uint = 0;
      
      var §0"K§:uint = 0;
      
      protected var §;g§:Boolean = false;
      
      protected var §^4§:Function;
      
      public function §;L§(param1:String = "utf-8")
      {
         this.§^4§ = this.§9!@§;
         super();
         this.§-!K§ = param1;
         this.§?!+§ = new Dictionary();
         this.§0!X§ = new ByteArray();
         this.§0!X§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get § !_§() : Date
      {
         return this.§""9§;
      }
      
      public function set § !_§(param1:Date) : void
      {
         this.§""9§ = param1 != null ? param1 : new Date();
      }
      
      public function get §@"2§() : String
      {
         return this.§[!`§;
      }
      
      public function set §@"2§(param1:String) : void
      {
         this.§[!`§ = param1;
      }
      
      function get §,"9§() : Boolean
      {
         return this.§["3§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§;g§)
         {
            this.uncompress();
         }
         return this.§0!X§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§2!E§(param1);
      }
      
      public function §2!E§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§0!X§,0,param1.length);
            this.§"!<§ = §+p§.§<Q§(this.§0!X§);
            this.native = false;
         }
         else
         {
            this.§0!X§.length = 0;
            this.§0!X§.position = 0;
            this.§;g§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§0"K§ = this.§`e§ = this.§0!X§.length;
         }
      }
      
      public function get §5!P§() : String
      {
         return this.§3"Y§;
      }
      
      public function get §6"N§() : uint
      {
         return this.§`e§;
      }
      
      public function get §2";§() : uint
      {
         return this.§0"K§;
      }
      
      public function §["Z§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§;g§)
         {
            this.uncompress();
         }
         this.§0!X§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§0!X§.readUTFBytes(this.§0!X§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§0!X§.readMultiByte(this.§0!X§.bytesAvailable,param2);
         }
         this.§0!X§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §1!P§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§0!X§.length = 0;
         this.§0!X§.position = 0;
         this.§;g§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§0!X§.writeUTFBytes(param1);
            }
            else
            {
               this.§0!X§.writeMultiByte(param1,param2);
            }
            this.§"!<§ = §+p§.§<Q§(this.§0!X§);
            this.native = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§0"K§ = this.§`e§ = this.§0!X§.length;
         }
      }
      
      public function §9"K§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§]G§.§=!k§);
            param1.writeShort(this.§&!v§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§]G§.§;!,§);
         }
         param1.writeShort(this.§&!v§ << 8 | 20);
         param1.writeShort(this.§-!K§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§;g§ ? int(§4V§) : int(§9!p§));
         var _loc5_:Date = this.§""9§ != null ? this.§""9§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§"!<§);
         param1.writeUnsignedInt(this.§`e§);
         param1.writeUnsignedInt(this.§0"K§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§-!K§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§[!`§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§[!`§,this.§-!K§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§?!+§)
         {
            if((_loc15_ = this.§?!+§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.native)
            {
               if(_loc16_ = this.§;g§)
               {
                  this.uncompress();
               }
               this.§<!f§ = §+p§.§]T§(this.§0!X§,0,this.§0!X§.length);
               this.native = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§<!f§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§<!]§.length > 0)
         {
            if(this.§-!K§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§<!]§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§<!]§,this.§-!K§);
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
         if(!param3 && this.§0!X§.length > 0)
         {
            if(this.§;g§)
            {
               if(§[,§ || §]!a§)
               {
                  _loc13_ = this.§0!X§.length;
                  param1.writeBytes(this.§0!X§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§0!X§.length - 6;
                  param1.writeBytes(this.§0!X§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§0!X§.length;
               param1.writeBytes(this.§0!X§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§^4§(param1))
         {
         }
         return this.§^4§ === this.§2!T§;
      }
      
      protected function §2!T§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §9!@§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§&!j§(param1);
            if(this.§%",§ + this.§4Y§ > 0)
            {
               this.§^4§ = this.§8!j§;
            }
            else
            {
               this.§^4§ = this.§%'§;
            }
            return true;
         }
         return false;
      }
      
      protected function §8!j§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§%",§ + this.§4Y§)
         {
            this.§45§(param1);
            this.§^4§ = this.§%'§;
            return true;
         }
         return false;
      }
      
      protected function §%'§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§["3§)
         {
            this.§^4§ = this.§2!T§;
            _loc2_ = false;
         }
         else if(this.§`e§ == 0)
         {
            this.§^4§ = this.§2!T§;
         }
         else if(param1.bytesAvailable >= this.§`e§)
         {
            this.§4J§(param1);
            this.§^4§ = this.§2!T§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §&!j§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§&!v§ = _loc2_ >> 8;
         this.§3"Y§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§2#§ = param1.readUnsignedShort();
         this.§9"5§ = (_loc3_ & 1) !== 0;
         this.§["3§ = (_loc3_ & 8) !== 0;
         this.§]!;§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§-!K§ = "utf-8";
         }
         if(this.§2#§ === §<"[§)
         {
            this.§^!N§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§-!N§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§2#§ === §4V§)
         {
            this.§0"O§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§""9§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§"!<§ = param1.readUnsignedInt();
         this.§`e§ = param1.readUnsignedInt();
         this.§0"K§ = param1.readUnsignedInt();
         this.§%",§ = param1.readUnsignedShort();
         this.§4Y§ = param1.readUnsignedShort();
      }
      
      protected function §45§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§-!K§ == "utf-8")
         {
            this.§[!`§ = param1.readUTFBytes(this.§%",§);
         }
         else
         {
            this.§[!`§ = param1.readMultiByte(this.§%",§,this.§-!K§);
         }
         var _loc2_:uint = this.§4Y§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§[!`§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§<!f§ = param1.readUnsignedInt();
               this.native = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§?!+§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §4J§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§2#§ === §4V§ && !this.§9"5§)
         {
            if(§[,§ || §]!a§)
            {
               param1.readBytes(this.§0!X§,0,this.§`e§);
            }
            else
            {
               if(!this.native)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§0!X§.writeByte(120);
               _loc2_ = ~this.§0"O§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§0!X§.writeByte(_loc2_);
               param1.readBytes(this.§0!X§,2,this.§`e§);
               this.§0!X§.position = this.§0!X§.length;
               this.§0!X§.writeUnsignedInt(this.§<!f§);
            }
            this.§;g§ = true;
         }
         else
         {
            if(this.§2#§ != §9!p§)
            {
               throw new Error("Compression method " + this.§2#§ + " is not supported.");
            }
            param1.readBytes(this.§0!X§,0,this.§`e§);
            this.§;g§ = false;
         }
         this.§0!X§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§;g§)
         {
            if(this.§0!X§.length > 0)
            {
               this.§0!X§.position = 0;
               this.§0"K§ = this.§0!X§.length;
               if(§]!a§)
               {
                  this.§0!X§.deflate();
                  this.§`e§ = this.§0!X§.length;
               }
               else if(§[,§)
               {
                  this.§0!X§.compress.apply(this.§0!X§,["deflate"]);
                  this.§`e§ = this.§0!X§.length;
               }
               else
               {
                  this.§0!X§.compress();
                  this.§`e§ = this.§0!X§.length - 6;
               }
               this.§0!X§.position = 0;
               this.§;g§ = true;
            }
            else
            {
               this.§`e§ = 0;
               this.§0"K§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§;g§ && this.§0!X§.length > 0)
         {
            this.§0!X§.position = 0;
            if(§]!a§)
            {
               this.§0!X§.inflate();
            }
            else if(§[,§)
            {
               this.§0!X§.uncompress.apply(this.§0!X§,["deflate"]);
            }
            else
            {
               this.§0!X§.uncompress();
            }
            this.§0!X§.position = 0;
            this.§;g§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§[!`§ + "\n  date:" + this.§""9§ + "\n  sizeCompressed:" + this.§`e§ + "\n  sizeUncompressed:" + this.§0"K§ + "\n  versionHost:" + this.§&!v§ + "\n  versionNumber:" + this.§3"Y§ + "\n  compressionMethod:" + this.§2#§ + "\n  encrypted:" + this.§9"5§ + "\n  hasDataDescriptor:" + this.§["3§ + "\n  hasCompressedPatchedData:" + this.§]!;§ + "\n  filenameEncoding:" + this.§-!K§ + "\n  crc32:" + this.§"!<§.toString(16) + "\n  adler32:" + this.§<!f§.toString(16);
      }
   }
}

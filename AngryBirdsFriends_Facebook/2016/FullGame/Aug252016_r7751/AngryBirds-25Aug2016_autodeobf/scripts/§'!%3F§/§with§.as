package §'!?§
{
   import §!#+§.§&Y§;
   import flash.utils.*;
   
   public class §with§
   {
      
      public static const §?3§:int = 0;
      
      public static const §@&§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §-"H§:int = 6;
      
      public static const §'#<§:int = 7;
      
      public static const §8"Z§:int = 8;
      
      public static const §0"k§:int = 9;
      
      public static const §5#C§:int = 10;
      
      protected static var §?!$§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §-#D§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §2!'§:int = 0;
      
      protected var §>#q§:String = "2.0";
      
      protected var §%$5§:int = 8;
      
      protected var §6#K§:Boolean = false;
      
      protected var §,"N§:int = -1;
      
      protected var §@!j§:int = -1;
      
      protected var §<!G§:int = -1;
      
      protected var §8#z§:Boolean = false;
      
      protected var §4h§:Boolean = false;
      
      protected var §6!T§:Date;
      
      protected var §;#s§:uint;
      
      protected var §+#N§:Boolean = false;
      
      protected var §>#$§:uint = 0;
      
      protected var §%"p§:uint = 0;
      
      protected var §5#S§:String = "";
      
      protected var §[!W§:String;
      
      protected var §,Y§:Dictionary;
      
      protected var §<Q§:String = "";
      
      protected var §[a§:ByteArray;
      
      var §="L§:uint;
      
      var §1"D§:uint = 0;
      
      var §0p§:uint = 0;
      
      protected var §4"J§:Boolean = false;
      
      protected var §4#j§:Function;
      
      public function §with§(param1:String = "utf-8")
      {
         this.§4#j§ = this.§!#w§;
         super();
         this.§[!W§ = param1;
         this.§,Y§ = new Dictionary();
         this.§[a§ = new ByteArray();
         this.§[a§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get § G§() : Date
      {
         return this.§6!T§;
      }
      
      public function set § G§(param1:Date) : void
      {
         this.§6!T§ = param1 != null ? param1 : new Date();
      }
      
      public function get filename() : String
      {
         return this.§5#S§;
      }
      
      public function set filename(param1:String) : void
      {
         this.§5#S§ = param1;
      }
      
      function get §!#h§() : Boolean
      {
         return this.§8#z§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§4"J§)
         {
            this.uncompress();
         }
         return this.§[a§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§<!N§(param1);
      }
      
      public function §<!N§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§[a§,0,param1.length);
            this.§="L§ = §&Y§.§[!h§(this.§[a§);
            this.§+#N§ = false;
         }
         else
         {
            this.§[a§.length = 0;
            this.§[a§.position = 0;
            this.§4"J§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§0p§ = this.§1"D§ = this.§[a§.length;
         }
      }
      
      public function get §`"h§() : String
      {
         return this.§>#q§;
      }
      
      public function get §#t§() : uint
      {
         return this.§1"D§;
      }
      
      public function get §`&§() : uint
      {
         return this.§0p§;
      }
      
      public function §-!t§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§4"J§)
         {
            this.uncompress();
         }
         this.§[a§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§[a§.readUTFBytes(this.§[a§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§[a§.readMultiByte(this.§[a§.bytesAvailable,param2);
         }
         this.§[a§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §'`§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§[a§.length = 0;
         this.§[a§.position = 0;
         this.§4"J§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§[a§.writeUTFBytes(param1);
            }
            else
            {
               this.§[a§.writeMultiByte(param1,param2);
            }
            this.§="L§ = §&Y§.§[!h§(this.§[a§);
            this.§+#N§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§0p§ = this.§1"D§ = this.§[a§.length;
         }
      }
      
      public function §']§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§`!'§.§9!X§);
            param1.writeShort(this.§2!'§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§`!'§.§>#T§);
         }
         param1.writeShort(this.§2!'§ << 8 | 20);
         param1.writeShort(this.§[!W§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§4"J§ ? int(§8"Z§) : int(§?3§));
         var _loc5_:Date = this.§6!T§ != null ? this.§6!T§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§="L§);
         param1.writeUnsignedInt(this.§1"D§);
         param1.writeUnsignedInt(this.§0p§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§[!W§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§5#S§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§5#S§,this.§[!W§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§,Y§)
         {
            if((_loc15_ = this.§,Y§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§+#N§)
            {
               if(_loc16_ = this.§4"J§)
               {
                  this.uncompress();
               }
               this.§;#s§ = §&Y§.§7$1§(this.§[a§,0,this.§[a§.length);
               this.§+#N§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§;#s§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§<Q§.length > 0)
         {
            if(this.§[!W§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§<Q§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§<Q§,this.§[!W§);
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
         if(!param3 && this.§[a§.length > 0)
         {
            if(this.§4"J§)
            {
               if(§?!$§ || §-#D§)
               {
                  _loc13_ = this.§[a§.length;
                  param1.writeBytes(this.§[a§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§[a§.length - 6;
                  param1.writeBytes(this.§[a§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§[a§.length;
               param1.writeBytes(this.§[a§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§4#j§(param1))
         {
         }
         return this.§4#j§ === this.§-"?§;
      }
      
      protected function §-"?§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §!#w§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§-##§(param1);
            if(this.§>#$§ + this.§%"p§ > 0)
            {
               this.§4#j§ = this.§%"A§;
            }
            else
            {
               this.§4#j§ = this.§[#F§;
            }
            return true;
         }
         return false;
      }
      
      protected function §%"A§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§>#$§ + this.§%"p§)
         {
            this.§?"X§(param1);
            this.§4#j§ = this.§[#F§;
            return true;
         }
         return false;
      }
      
      protected function §[#F§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§8#z§)
         {
            this.§4#j§ = this.§-"?§;
            _loc2_ = false;
         }
         else if(this.§1"D§ == 0)
         {
            this.§4#j§ = this.§-"?§;
         }
         else if(param1.bytesAvailable >= this.§1"D§)
         {
            this.§=#l§(param1);
            this.§4#j§ = this.§-"?§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §-##§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§2!'§ = _loc2_ >> 8;
         this.§>#q§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§%$5§ = param1.readUnsignedShort();
         this.§6#K§ = (_loc3_ & 1) !== 0;
         this.§8#z§ = (_loc3_ & 8) !== 0;
         this.§4h§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§[!W§ = "utf-8";
         }
         if(this.§%$5§ === §-"H§)
         {
            this.§,"N§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§@!j§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§%$5§ === §8"Z§)
         {
            this.§<!G§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§6!T§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§="L§ = param1.readUnsignedInt();
         this.§1"D§ = param1.readUnsignedInt();
         this.§0p§ = param1.readUnsignedInt();
         this.§>#$§ = param1.readUnsignedShort();
         this.§%"p§ = param1.readUnsignedShort();
      }
      
      protected function §?"X§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§[!W§ == "utf-8")
         {
            this.§5#S§ = param1.readUTFBytes(this.§>#$§);
         }
         else
         {
            this.§5#S§ = param1.readMultiByte(this.§>#$§,this.§[!W§);
         }
         var _loc2_:uint = this.§%"p§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§5#S§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§;#s§ = param1.readUnsignedInt();
               this.§+#N§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§,Y§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §=#l§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§%$5§ === §8"Z§ && !this.§6#K§)
         {
            if(§?!$§ || §-#D§)
            {
               param1.readBytes(this.§[a§,0,this.§1"D§);
            }
            else
            {
               if(!this.§+#N§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§[a§.writeByte(120);
               _loc2_ = ~this.§<!G§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§[a§.writeByte(_loc2_);
               param1.readBytes(this.§[a§,2,this.§1"D§);
               this.§[a§.position = this.§[a§.length;
               this.§[a§.writeUnsignedInt(this.§;#s§);
            }
            this.§4"J§ = true;
         }
         else if(this.§%$5§ == §?3§)
         {
            param1.readBytes(this.§[a§,0,this.§1"D§);
            this.§4"J§ = false;
         }
         else
         {
            throw new Error("Compression method " + this.§%$5§ + " is not supported.");
         }
         this.§[a§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§4"J§)
         {
            if(this.§[a§.length > 0)
            {
               this.§[a§.position = 0;
               this.§0p§ = this.§[a§.length;
               if(§-#D§)
               {
                  this.§[a§.deflate();
                  this.§1"D§ = this.§[a§.length;
               }
               else if(§?!$§)
               {
                  this.§[a§.compress.apply(this.§[a§,["deflate"]);
                  this.§1"D§ = this.§[a§.length;
               }
               else
               {
                  this.§[a§.compress();
                  this.§1"D§ = this.§[a§.length - 6;
               }
               this.§[a§.position = 0;
               this.§4"J§ = true;
            }
            else
            {
               this.§1"D§ = 0;
               this.§0p§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§4"J§ && this.§[a§.length > 0)
         {
            this.§[a§.position = 0;
            if(§-#D§)
            {
               this.§[a§.inflate();
            }
            else if(§?!$§)
            {
               this.§[a§.uncompress.apply(this.§[a§,["deflate"]);
            }
            else
            {
               this.§[a§.uncompress();
            }
            this.§[a§.position = 0;
            this.§4"J§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§5#S§ + "\n  date:" + this.§6!T§ + "\n  sizeCompressed:" + this.§1"D§ + "\n  sizeUncompressed:" + this.§0p§ + "\n  versionHost:" + this.§2!'§ + "\n  versionNumber:" + this.§>#q§ + "\n  compressionMethod:" + this.§%$5§ + "\n  encrypted:" + this.§6#K§ + "\n  hasDataDescriptor:" + this.§8#z§ + "\n  hasCompressedPatchedData:" + this.§4h§ + "\n  filenameEncoding:" + this.§[!W§ + "\n  crc32:" + this.§="L§.toString(16) + "\n  adler32:" + this.§;#s§.toString(16);
      }
   }
}

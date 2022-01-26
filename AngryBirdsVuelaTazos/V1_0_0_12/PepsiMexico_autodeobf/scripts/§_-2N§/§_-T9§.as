package §_-2N§
{
   import §_-54§.§_-nM§;
   import flash.utils.*;
   
   public class §_-T9§
   {
      
      public static const §true §:int = 0;
      
      public static const §_-Da§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §_-Sz§:int = 6;
      
      public static const §_-Wr§:int = 7;
      
      public static const §_-Fp§:int = 8;
      
      public static const §_-Lh§:int = 9;
      
      public static const §_-U1§:int = 10;
      
      protected static var §_-gg§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §_-IL§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §_-Eo§:int = 0;
      
      protected var §_-s1§:String = "2.0";
      
      protected var §_-GX§:int = 8;
      
      protected var §_-uo§:Boolean = false;
      
      protected var §_-Jo§:int = -1;
      
      protected var §_-m§:int = -1;
      
      protected var §_-Ah§:int = -1;
      
      protected var §_-FW§:Boolean = false;
      
      protected var §_-Xo§:Boolean = false;
      
      protected var §_-k2§:Date;
      
      protected var §_-88§:uint;
      
      protected var §_-oU§:Boolean = false;
      
      protected var §_-e8§:uint = 0;
      
      protected var §_-xH§:uint = 0;
      
      protected var §_-JU§:String = "";
      
      protected var §_-BK§:String;
      
      protected var §_-Hj§:Dictionary;
      
      protected var §_-Tl§:String = "";
      
      protected var §_-H-§:ByteArray;
      
      var §_-2p§:uint;
      
      var §_-0D§:uint = 0;
      
      var §_-43§:uint = 0;
      
      protected var §_-0H§:Boolean = false;
      
      protected var §_-dc§:Function;
      
      public function §_-T9§(param1:String = "utf-8")
      {
         this.§_-dc§ = this.§_-mP§;
         super();
         this.§_-BK§ = param1;
         this.§_-Hj§ = new Dictionary();
         this.§_-H-§ = new ByteArray();
         this.§_-H-§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §_-Oq§() : Date
      {
         return this.§_-k2§;
      }
      
      public function set §_-Oq§(param1:Date) : void
      {
         this.§_-k2§ = param1 != null ? param1 : new Date();
      }
      
      public function get §_-7k§() : String
      {
         return this.§_-JU§;
      }
      
      public function set §_-7k§(param1:String) : void
      {
         this.§_-JU§ = param1;
      }
      
      function get §_-OI§() : Boolean
      {
         return this.§_-FW§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§_-0H§)
         {
            this.uncompress();
         }
         return this.§_-H-§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§_-Gu§(param1);
      }
      
      public function §_-Gu§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§_-H-§,0,param1.length);
            this.§_-2p§ = §_-nM§.§_-Nz§(this.§_-H-§);
            this.§_-oU§ = false;
         }
         else
         {
            this.§_-H-§.length = 0;
            this.§_-H-§.position = 0;
            this.§_-0H§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§_-43§ = this.§_-0D§ = this.§_-H-§.length;
         }
      }
      
      public function get §_-8p§() : String
      {
         return this.§_-s1§;
      }
      
      public function get §_-Fz§() : uint
      {
         return this.§_-0D§;
      }
      
      public function get §_-Pv§() : uint
      {
         return this.§_-43§;
      }
      
      public function §_-o7§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§_-0H§)
         {
            this.uncompress();
         }
         this.§_-H-§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§_-H-§.readUTFBytes(this.§_-H-§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§_-H-§.readMultiByte(this.§_-H-§.bytesAvailable,param2);
         }
         this.§_-H-§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §_-L1§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§_-H-§.length = 0;
         this.§_-H-§.position = 0;
         this.§_-0H§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§_-H-§.writeUTFBytes(param1);
            }
            else
            {
               this.§_-H-§.writeMultiByte(param1,param2);
            }
            this.§_-2p§ = §_-nM§.§_-Nz§(this.§_-H-§);
            this.§_-oU§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§_-43§ = this.§_-0D§ = this.§_-H-§.length;
         }
      }
      
      public function §_-79§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§_-5R§.§_-hs§);
            param1.writeShort(this.§_-Eo§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§_-5R§.§_-TZ§);
         }
         param1.writeShort(this.§_-Eo§ << 8 | 20);
         param1.writeShort(this.§_-BK§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§_-0H§ ? int(§_-Fp§) : int(§true §));
         var _loc5_:Date = this.§_-k2§ != null ? this.§_-k2§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§_-2p§);
         param1.writeUnsignedInt(this.§_-0D§);
         param1.writeUnsignedInt(this.§_-43§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§_-BK§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§_-JU§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§_-JU§,this.§_-BK§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§_-Hj§)
         {
            if((_loc15_ = this.§_-Hj§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§_-oU§)
            {
               if(_loc16_ = this.§_-0H§)
               {
                  this.uncompress();
               }
               this.§_-88§ = §_-nM§.§_-5p§(this.§_-H-§,0,this.§_-H-§.length);
               this.§_-oU§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§_-88§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§_-Tl§.length > 0)
         {
            if(this.§_-BK§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§_-Tl§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§_-Tl§,this.§_-BK§);
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
         if(!param3 && this.§_-H-§.length > 0)
         {
            if(this.§_-0H§)
            {
               if(§_-gg§ || §_-IL§)
               {
                  _loc13_ = this.§_-H-§.length;
                  param1.writeBytes(this.§_-H-§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§_-H-§.length - 6;
                  param1.writeBytes(this.§_-H-§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§_-H-§.length;
               param1.writeBytes(this.§_-H-§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§_-dc§(param1))
         {
         }
         return this.§_-dc§ === this.§_-vB§;
      }
      
      protected function §_-vB§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-mP§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§_-Fl§(param1);
            if(this.§_-e8§ + this.§_-xH§ > 0)
            {
               this.§_-dc§ = this.§_-31§;
            }
            else
            {
               this.§_-dc§ = this.§_-KA§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-31§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§_-e8§ + this.§_-xH§)
         {
            this.§_-2j§(param1);
            this.§_-dc§ = this.§_-KA§;
            return true;
         }
         return false;
      }
      
      protected function §_-KA§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§_-FW§)
         {
            this.§_-dc§ = this.§_-vB§;
            _loc2_ = false;
         }
         else if(this.§_-0D§ == 0)
         {
            this.§_-dc§ = this.§_-vB§;
         }
         else if(param1.bytesAvailable >= this.§_-0D§)
         {
            this.§_-vQ§(param1);
            this.§_-dc§ = this.§_-vB§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §_-Fl§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§_-Eo§ = _loc2_ >> 8;
         this.§_-s1§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§_-GX§ = param1.readUnsignedShort();
         this.§_-uo§ = (_loc3_ & 1) !== 0;
         this.§_-FW§ = (_loc3_ & 8) !== 0;
         this.§_-Xo§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§_-BK§ = "utf-8";
         }
         if(this.§_-GX§ === §_-Sz§)
         {
            this.§_-Jo§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§_-m§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§_-GX§ === §_-Fp§)
         {
            this.§_-Ah§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§_-k2§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§_-2p§ = param1.readUnsignedInt();
         this.§_-0D§ = param1.readUnsignedInt();
         this.§_-43§ = param1.readUnsignedInt();
         this.§_-e8§ = param1.readUnsignedShort();
         this.§_-xH§ = param1.readUnsignedShort();
      }
      
      protected function §_-2j§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§_-BK§ == "utf-8")
         {
            this.§_-JU§ = param1.readUTFBytes(this.§_-e8§);
         }
         else
         {
            this.§_-JU§ = param1.readMultiByte(this.§_-e8§,this.§_-BK§);
         }
         var _loc2_:uint = this.§_-xH§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§_-JU§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§_-88§ = param1.readUnsignedInt();
               this.§_-oU§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§_-Hj§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §_-vQ§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§_-GX§ === §_-Fp§ && !this.§_-uo§)
         {
            if(§_-gg§ || §_-IL§)
            {
               param1.readBytes(this.§_-H-§,0,this.§_-0D§);
            }
            else
            {
               if(!this.§_-oU§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§_-H-§.writeByte(120);
               _loc2_ = ~this.§_-Ah§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§_-H-§.writeByte(_loc2_);
               param1.readBytes(this.§_-H-§,2,this.§_-0D§);
               this.§_-H-§.position = this.§_-H-§.length;
               this.§_-H-§.writeUnsignedInt(this.§_-88§);
            }
            this.§_-0H§ = true;
         }
         else
         {
            if(this.§_-GX§ != §true §)
            {
               throw new Error("Compression method " + this.§_-GX§ + " is not supported.");
            }
            param1.readBytes(this.§_-H-§,0,this.§_-0D§);
            this.§_-0H§ = false;
         }
         this.§_-H-§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§_-0H§)
         {
            if(this.§_-H-§.length > 0)
            {
               this.§_-H-§.position = 0;
               this.§_-43§ = this.§_-H-§.length;
               if(§_-IL§)
               {
                  this.§_-H-§.deflate();
                  this.§_-0D§ = this.§_-H-§.length;
               }
               else if(§_-gg§)
               {
                  this.§_-H-§.compress.apply(this.§_-H-§,["deflate"]);
                  this.§_-0D§ = this.§_-H-§.length;
               }
               else
               {
                  this.§_-H-§.compress();
                  this.§_-0D§ = this.§_-H-§.length - 6;
               }
               this.§_-H-§.position = 0;
               this.§_-0H§ = true;
            }
            else
            {
               this.§_-0D§ = 0;
               this.§_-43§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§_-0H§ && this.§_-H-§.length > 0)
         {
            this.§_-H-§.position = 0;
            if(§_-IL§)
            {
               this.§_-H-§.inflate();
            }
            else if(§_-gg§)
            {
               this.§_-H-§.uncompress.apply(this.§_-H-§,["deflate"]);
            }
            else
            {
               this.§_-H-§.uncompress();
            }
            this.§_-H-§.position = 0;
            this.§_-0H§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§_-JU§ + "\n  date:" + this.§_-k2§ + "\n  sizeCompressed:" + this.§_-0D§ + "\n  sizeUncompressed:" + this.§_-43§ + "\n  versionHost:" + this.§_-Eo§ + "\n  versionNumber:" + this.§_-s1§ + "\n  compressionMethod:" + this.§_-GX§ + "\n  encrypted:" + this.§_-uo§ + "\n  hasDataDescriptor:" + this.§_-FW§ + "\n  hasCompressedPatchedData:" + this.§_-Xo§ + "\n  filenameEncoding:" + this.§_-BK§ + "\n  crc32:" + this.§_-2p§.toString(16) + "\n  adler32:" + this.§_-88§.toString(16);
      }
   }
}

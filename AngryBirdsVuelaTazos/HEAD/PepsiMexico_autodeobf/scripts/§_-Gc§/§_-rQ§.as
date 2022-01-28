package §_-Gc§
{
   import §_-0B§.§_-xe§;
   import flash.utils.*;
   
   public class §_-rQ§
   {
      
      public static const §_-Ru§:int = 0;
      
      public static const §_-Me§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §_-CC§:int = 6;
      
      public static const §_-N6§:int = 7;
      
      public static const §_-wm§:int = 8;
      
      public static const §_-G§:int = 9;
      
      public static const §_-Ri§:int = 10;
      
      protected static var §_-IC§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §_-Q3§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §_-9c§:int = 0;
      
      protected var §_-eq§:String = "2.0";
      
      protected var §_-hm§:int = 8;
      
      protected var §_-DS§:Boolean = false;
      
      protected var §_-j2§:int = -1;
      
      protected var §_-9R§:int = -1;
      
      protected var §_-kl§:int = -1;
      
      protected var §_-oF§:Boolean = false;
      
      protected var §_-oc§:Boolean = false;
      
      protected var §_-eO§:Date;
      
      protected var §_-fx§:uint;
      
      protected var §_-cu§:Boolean = false;
      
      protected var §_-4Z§:uint = 0;
      
      protected var §_-Oh§:uint = 0;
      
      protected var §_-Ul§:String = "";
      
      protected var §_-Hu§:String;
      
      protected var §_-KK§:Dictionary;
      
      protected var §_-8h§:String = "";
      
      protected var §_-BI§:ByteArray;
      
      var §_-BG§:uint;
      
      var §_-Yt§:uint = 0;
      
      var final:uint = 0;
      
      protected var §_-j-§:Boolean = false;
      
      protected var §_-X0§:Function;
      
      public function §_-rQ§(param1:String = "utf-8")
      {
         this.§_-X0§ = this.§_-sz§;
         super();
         this.§_-Hu§ = param1;
         this.§_-KK§ = new Dictionary();
         this.§_-BI§ = new ByteArray();
         this.§_-BI§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §_-Ki§() : Date
      {
         return this.§_-eO§;
      }
      
      public function set §_-Ki§(param1:Date) : void
      {
         this.§_-eO§ = param1 != null ? param1 : new Date();
      }
      
      public function get §_-7L§() : String
      {
         return this.§_-Ul§;
      }
      
      public function set §_-7L§(param1:String) : void
      {
         this.§_-Ul§ = param1;
      }
      
      function get §_-w§() : Boolean
      {
         return this.§_-oF§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§_-j-§)
         {
            this.uncompress();
         }
         return this.§_-BI§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§_-2n§(param1);
      }
      
      public function §_-2n§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§_-BI§,0,param1.length);
            this.§_-BG§ = §_-xe§.§_-w6§(this.§_-BI§);
            this.§_-cu§ = false;
         }
         else
         {
            this.§_-BI§.length = 0;
            this.§_-BI§.position = 0;
            this.§_-j-§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.final = this.§_-Yt§ = this.§_-BI§.length;
         }
      }
      
      public function get §_-QY§() : String
      {
         return this.§_-eq§;
      }
      
      public function get §_-Fj§() : uint
      {
         return this.§_-Yt§;
      }
      
      public function get §_-li§() : uint
      {
         return this.final;
      }
      
      public function §_-yW§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§_-j-§)
         {
            this.uncompress();
         }
         this.§_-BI§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§_-BI§.readUTFBytes(this.§_-BI§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§_-BI§.readMultiByte(this.§_-BI§.bytesAvailable,param2);
         }
         this.§_-BI§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §_-3K§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§_-BI§.length = 0;
         this.§_-BI§.position = 0;
         this.§_-j-§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§_-BI§.writeUTFBytes(param1);
            }
            else
            {
               this.§_-BI§.writeMultiByte(param1,param2);
            }
            this.§_-BG§ = §_-xe§.§_-w6§(this.§_-BI§);
            this.§_-cu§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.final = this.§_-Yt§ = this.§_-BI§.length;
         }
      }
      
      public function §_-nh§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§_-T4§.§_-fi§);
            param1.writeShort(this.§_-9c§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§_-T4§.§_-xJ§);
         }
         param1.writeShort(this.§_-9c§ << 8 | 20);
         param1.writeShort(this.§_-Hu§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§_-j-§ ? int(§_-wm§) : int(§_-Ru§));
         var _loc5_:Date = this.§_-eO§ != null ? this.§_-eO§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§_-BG§);
         param1.writeUnsignedInt(this.§_-Yt§);
         param1.writeUnsignedInt(this.final);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§_-Hu§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§_-Ul§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§_-Ul§,this.§_-Hu§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§_-KK§)
         {
            if((_loc15_ = this.§_-KK§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§_-cu§)
            {
               if(_loc16_ = this.§_-j-§)
               {
                  this.uncompress();
               }
               this.§_-fx§ = §_-xe§.§_-dW§(this.§_-BI§,0,this.§_-BI§.length);
               this.§_-cu§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§_-fx§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§_-8h§.length > 0)
         {
            if(this.§_-Hu§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§_-8h§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§_-8h§,this.§_-Hu§);
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
         if(!param3 && this.§_-BI§.length > 0)
         {
            if(this.§_-j-§)
            {
               if(§_-IC§ || §_-Q3§)
               {
                  _loc13_ = this.§_-BI§.length;
                  param1.writeBytes(this.§_-BI§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§_-BI§.length - 6;
                  param1.writeBytes(this.§_-BI§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§_-BI§.length;
               param1.writeBytes(this.§_-BI§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§_-X0§(param1))
         {
         }
         return this.§_-X0§ === this.§_-WY§;
      }
      
      protected function §_-WY§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-sz§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§_-Sy§(param1);
            if(this.§_-4Z§ + this.§_-Oh§ > 0)
            {
               this.§_-X0§ = this.§_-gX§;
            }
            else
            {
               this.§_-X0§ = this.§_-Jg§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-gX§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§_-4Z§ + this.§_-Oh§)
         {
            this.§_-ql§(param1);
            this.§_-X0§ = this.§_-Jg§;
            return true;
         }
         return false;
      }
      
      protected function §_-Jg§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§_-oF§)
         {
            this.§_-X0§ = this.§_-WY§;
            _loc2_ = false;
         }
         else if(this.§_-Yt§ == 0)
         {
            this.§_-X0§ = this.§_-WY§;
         }
         else if(param1.bytesAvailable >= this.§_-Yt§)
         {
            this.§_-fs§(param1);
            this.§_-X0§ = this.§_-WY§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §_-Sy§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§_-9c§ = _loc2_ >> 8;
         this.§_-eq§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§_-hm§ = param1.readUnsignedShort();
         this.§_-DS§ = (_loc3_ & 1) !== 0;
         this.§_-oF§ = (_loc3_ & 8) !== 0;
         this.§_-oc§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§_-Hu§ = "utf-8";
         }
         if(this.§_-hm§ === §_-CC§)
         {
            this.§_-j2§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§_-9R§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§_-hm§ === §_-wm§)
         {
            this.§_-kl§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§_-eO§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§_-BG§ = param1.readUnsignedInt();
         this.§_-Yt§ = param1.readUnsignedInt();
         this.final = param1.readUnsignedInt();
         this.§_-4Z§ = param1.readUnsignedShort();
         this.§_-Oh§ = param1.readUnsignedShort();
      }
      
      protected function §_-ql§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§_-Hu§ == "utf-8")
         {
            this.§_-Ul§ = param1.readUTFBytes(this.§_-4Z§);
         }
         else
         {
            this.§_-Ul§ = param1.readMultiByte(this.§_-4Z§,this.§_-Hu§);
         }
         var _loc2_:uint = this.§_-Oh§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§_-Ul§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§_-fx§ = param1.readUnsignedInt();
               this.§_-cu§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§_-KK§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §_-fs§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§_-hm§ === §_-wm§ && !this.§_-DS§)
         {
            if(§_-IC§ || §_-Q3§)
            {
               param1.readBytes(this.§_-BI§,0,this.§_-Yt§);
            }
            else
            {
               if(!this.§_-cu§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§_-BI§.writeByte(120);
               _loc2_ = ~this.§_-kl§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§_-BI§.writeByte(_loc2_);
               param1.readBytes(this.§_-BI§,2,this.§_-Yt§);
               this.§_-BI§.position = this.§_-BI§.length;
               this.§_-BI§.writeUnsignedInt(this.§_-fx§);
            }
            this.§_-j-§ = true;
         }
         else
         {
            if(this.§_-hm§ != §_-Ru§)
            {
               throw new Error("Compression method " + this.§_-hm§ + " is not supported.");
            }
            param1.readBytes(this.§_-BI§,0,this.§_-Yt§);
            this.§_-j-§ = false;
         }
         this.§_-BI§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§_-j-§)
         {
            if(this.§_-BI§.length > 0)
            {
               this.§_-BI§.position = 0;
               this.final = this.§_-BI§.length;
               if(§_-Q3§)
               {
                  this.§_-BI§.deflate();
                  this.§_-Yt§ = this.§_-BI§.length;
               }
               else if(§_-IC§)
               {
                  this.§_-BI§.compress.apply(this.§_-BI§,["deflate"]);
                  this.§_-Yt§ = this.§_-BI§.length;
               }
               else
               {
                  this.§_-BI§.compress();
                  this.§_-Yt§ = this.§_-BI§.length - 6;
               }
               this.§_-BI§.position = 0;
               this.§_-j-§ = true;
            }
            else
            {
               this.§_-Yt§ = 0;
               this.final = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§_-j-§ && this.§_-BI§.length > 0)
         {
            this.§_-BI§.position = 0;
            if(§_-Q3§)
            {
               this.§_-BI§.inflate();
            }
            else if(§_-IC§)
            {
               this.§_-BI§.uncompress.apply(this.§_-BI§,["deflate"]);
            }
            else
            {
               this.§_-BI§.uncompress();
            }
            this.§_-BI§.position = 0;
            this.§_-j-§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§_-Ul§ + "\n  date:" + this.§_-eO§ + "\n  sizeCompressed:" + this.§_-Yt§ + "\n  sizeUncompressed:" + this.final + "\n  versionHost:" + this.§_-9c§ + "\n  versionNumber:" + this.§_-eq§ + "\n  compressionMethod:" + this.§_-hm§ + "\n  encrypted:" + this.§_-DS§ + "\n  hasDataDescriptor:" + this.§_-oF§ + "\n  hasCompressedPatchedData:" + this.§_-oc§ + "\n  filenameEncoding:" + this.§_-Hu§ + "\n  crc32:" + this.§_-BG§.toString(16) + "\n  adler32:" + this.§_-fx§.toString(16);
      }
   }
}

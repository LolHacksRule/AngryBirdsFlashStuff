package §_-zg§
{
   import §_-m3§.§_-ae§;
   import flash.utils.*;
   
   public class §_-8u§
   {
      
      public static const §_-sX§:int = 0;
      
      public static const §_-d0§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §_-cL§:int = 6;
      
      public static const §_-Cw§:int = 7;
      
      public static const §_-qW§:int = 8;
      
      public static const §_-rO§:int = 9;
      
      public static const §_-JG§:int = 10;
      
      protected static var §_-0H§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §_-eh§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §_-wu§:int = 0;
      
      protected var §_-OX§:String = "2.0";
      
      protected var §_-Q-§:int = 8;
      
      protected var §_-S1§:Boolean = false;
      
      protected var §_-Q§:int = -1;
      
      protected var §_-t6§:int = -1;
      
      protected var §_-XI§:int = -1;
      
      protected var §_-OY§:Boolean = false;
      
      protected var §_-vr§:Boolean = false;
      
      protected var §_-E9§:Date;
      
      protected var §_-WX§:uint;
      
      protected var §_-Iu§:Boolean = false;
      
      protected var §_-SE§:uint = 0;
      
      protected var §_-U7§:uint = 0;
      
      protected var §_-Uk§:String = "";
      
      protected var §_-gW§:String;
      
      protected var §_-0-W§:Dictionary;
      
      protected var §_-S9§:String = "";
      
      protected var §_-dp§:ByteArray;
      
      var §_-MV§:uint;
      
      var §_-mh§:uint = 0;
      
      var §_-mg§:uint = 0;
      
      protected var §_-rd§:Boolean = false;
      
      protected var §_-WN§:Function;
      
      public function §_-8u§(param1:String = "utf-8")
      {
         this.§_-WN§ = this.§_-gS§;
         super();
         this.§_-gW§ = param1;
         this.§_-0-W§ = new Dictionary();
         this.§_-dp§ = new ByteArray();
         this.§_-dp§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §_-4f§() : Date
      {
         return this.§_-E9§;
      }
      
      public function set §_-4f§(param1:Date) : void
      {
         this.§_-E9§ = param1 != null ? param1 : new Date();
      }
      
      public function get §_-8c§() : String
      {
         return this.§_-Uk§;
      }
      
      public function set §_-8c§(param1:String) : void
      {
         this.§_-Uk§ = param1;
      }
      
      function get §_-OF§() : Boolean
      {
         return this.§_-OY§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§_-rd§)
         {
            this.uncompress();
         }
         return this.§_-dp§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§_-Qc§(param1);
      }
      
      public function §_-Qc§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§_-dp§,0,param1.length);
            this.§_-MV§ = §_-ae§.§_-l8§(this.§_-dp§);
            this.§_-Iu§ = false;
         }
         else
         {
            this.§_-dp§.length = 0;
            this.§_-dp§.position = 0;
            this.§_-rd§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§_-mg§ = this.§_-mh§ = this.§_-dp§.length;
         }
      }
      
      public function get §_-ZR§() : String
      {
         return this.§_-OX§;
      }
      
      public function get §_-dI§() : uint
      {
         return this.§_-mh§;
      }
      
      public function get §_-Up§() : uint
      {
         return this.§_-mg§;
      }
      
      public function §_-km§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§_-rd§)
         {
            this.uncompress();
         }
         this.§_-dp§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§_-dp§.readUTFBytes(this.§_-dp§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§_-dp§.readMultiByte(this.§_-dp§.bytesAvailable,param2);
         }
         this.§_-dp§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §_-NZ§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§_-dp§.length = 0;
         this.§_-dp§.position = 0;
         this.§_-rd§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§_-dp§.writeUTFBytes(param1);
            }
            else
            {
               this.§_-dp§.writeMultiByte(param1,param2);
            }
            this.§_-MV§ = §_-ae§.§_-l8§(this.§_-dp§);
            this.§_-Iu§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§_-mg§ = this.§_-mh§ = this.§_-dp§.length;
         }
      }
      
      public function include(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§_-nt§.§_-qy§);
            param1.writeShort(this.§_-wu§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§_-nt§.§_-iG§);
         }
         param1.writeShort(this.§_-wu§ << 8 | 20);
         param1.writeShort(this.§_-gW§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§_-rd§ ? int(§_-qW§) : int(§_-sX§));
         var _loc5_:Date = this.§_-E9§ != null ? this.§_-E9§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§_-MV§);
         param1.writeUnsignedInt(this.§_-mh§);
         param1.writeUnsignedInt(this.§_-mg§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§_-gW§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§_-Uk§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§_-Uk§,this.§_-gW§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§_-0-W§)
         {
            if((_loc15_ = this.§_-0-W§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§_-Iu§)
            {
               if(_loc16_ = this.§_-rd§)
               {
                  this.uncompress();
               }
               this.§_-WX§ = §_-ae§.§_-007§(this.§_-dp§,0,this.§_-dp§.length);
               this.§_-Iu§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§_-WX§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§_-S9§.length > 0)
         {
            if(this.§_-gW§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§_-S9§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§_-S9§,this.§_-gW§);
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
         if(!param3 && this.§_-dp§.length > 0)
         {
            if(this.§_-rd§)
            {
               if(§_-0H§ || §_-eh§)
               {
                  _loc13_ = this.§_-dp§.length;
                  param1.writeBytes(this.§_-dp§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§_-dp§.length - 6;
                  param1.writeBytes(this.§_-dp§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§_-dp§.length;
               param1.writeBytes(this.§_-dp§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§_-WN§(param1))
         {
         }
         return this.§_-WN§ === this.§_-lT§;
      }
      
      protected function §_-lT§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-gS§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§_-nq§(param1);
            if(this.§_-SE§ + this.§_-U7§ > 0)
            {
               this.§_-WN§ = this.§_-4a§;
            }
            else
            {
               this.§_-WN§ = this.§_-ss§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-4a§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§_-SE§ + this.§_-U7§)
         {
            this.§_-oz§(param1);
            this.§_-WN§ = this.§_-ss§;
            return true;
         }
         return false;
      }
      
      protected function §_-ss§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§_-OY§)
         {
            this.§_-WN§ = this.§_-lT§;
            _loc2_ = false;
         }
         else if(this.§_-mh§ == 0)
         {
            this.§_-WN§ = this.§_-lT§;
         }
         else if(param1.bytesAvailable >= this.§_-mh§)
         {
            this.§_-0-Y§(param1);
            this.§_-WN§ = this.§_-lT§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §_-nq§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§_-wu§ = _loc2_ >> 8;
         this.§_-OX§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§_-Q-§ = param1.readUnsignedShort();
         this.§_-S1§ = (_loc3_ & 1) !== 0;
         this.§_-OY§ = (_loc3_ & 8) !== 0;
         this.§_-vr§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§_-gW§ = "utf-8";
         }
         if(this.§_-Q-§ === §_-cL§)
         {
            this.§_-Q§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§_-t6§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§_-Q-§ === §_-qW§)
         {
            this.§_-XI§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§_-E9§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§_-MV§ = param1.readUnsignedInt();
         this.§_-mh§ = param1.readUnsignedInt();
         this.§_-mg§ = param1.readUnsignedInt();
         this.§_-SE§ = param1.readUnsignedShort();
         this.§_-U7§ = param1.readUnsignedShort();
      }
      
      protected function §_-oz§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§_-gW§ == "utf-8")
         {
            this.§_-Uk§ = param1.readUTFBytes(this.§_-SE§);
         }
         else
         {
            this.§_-Uk§ = param1.readMultiByte(this.§_-SE§,this.§_-gW§);
         }
         var _loc2_:uint = this.§_-U7§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§_-Uk§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§_-WX§ = param1.readUnsignedInt();
               this.§_-Iu§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§_-0-W§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §_-0-Y§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§_-Q-§ === §_-qW§ && !this.§_-S1§)
         {
            if(§_-0H§ || §_-eh§)
            {
               param1.readBytes(this.§_-dp§,0,this.§_-mh§);
            }
            else
            {
               if(!this.§_-Iu§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§_-dp§.writeByte(120);
               _loc2_ = ~this.§_-XI§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§_-dp§.writeByte(_loc2_);
               param1.readBytes(this.§_-dp§,2,this.§_-mh§);
               this.§_-dp§.position = this.§_-dp§.length;
               this.§_-dp§.writeUnsignedInt(this.§_-WX§);
            }
            this.§_-rd§ = true;
         }
         else
         {
            if(this.§_-Q-§ != §_-sX§)
            {
               throw new Error("Compression method " + this.§_-Q-§ + " is not supported.");
            }
            param1.readBytes(this.§_-dp§,0,this.§_-mh§);
            this.§_-rd§ = false;
         }
         this.§_-dp§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§_-rd§)
         {
            if(this.§_-dp§.length > 0)
            {
               this.§_-dp§.position = 0;
               this.§_-mg§ = this.§_-dp§.length;
               if(§_-eh§)
               {
                  this.§_-dp§.deflate();
                  this.§_-mh§ = this.§_-dp§.length;
               }
               else if(§_-0H§)
               {
                  this.§_-dp§.compress.apply(this.§_-dp§,["deflate"]);
                  this.§_-mh§ = this.§_-dp§.length;
               }
               else
               {
                  this.§_-dp§.compress();
                  this.§_-mh§ = this.§_-dp§.length - 6;
               }
               this.§_-dp§.position = 0;
               this.§_-rd§ = true;
            }
            else
            {
               this.§_-mh§ = 0;
               this.§_-mg§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§_-rd§ && this.§_-dp§.length > 0)
         {
            this.§_-dp§.position = 0;
            if(§_-eh§)
            {
               this.§_-dp§.inflate();
            }
            else if(§_-0H§)
            {
               this.§_-dp§.uncompress.apply(this.§_-dp§,["deflate"]);
            }
            else
            {
               this.§_-dp§.uncompress();
            }
            this.§_-dp§.position = 0;
            this.§_-rd§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§_-Uk§ + "\n  date:" + this.§_-E9§ + "\n  sizeCompressed:" + this.§_-mh§ + "\n  sizeUncompressed:" + this.§_-mg§ + "\n  versionHost:" + this.§_-wu§ + "\n  versionNumber:" + this.§_-OX§ + "\n  compressionMethod:" + this.§_-Q-§ + "\n  encrypted:" + this.§_-S1§ + "\n  hasDataDescriptor:" + this.§_-OY§ + "\n  hasCompressedPatchedData:" + this.§_-vr§ + "\n  filenameEncoding:" + this.§_-gW§ + "\n  crc32:" + this.§_-MV§.toString(16) + "\n  adler32:" + this.§_-WX§.toString(16);
      }
   }
}

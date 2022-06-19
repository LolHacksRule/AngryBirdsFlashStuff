package §_-j3§
{
   import §_-WD§.§_-lD§;
   import flash.utils.*;
   
   public class §_-Tg§
   {
      
      public static const §_-§:int = 0;
      
      public static const §_-a2§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §_-Vq§:int = 6;
      
      public static const §_-OF§:int = 7;
      
      public static const §_-pb§:int = 8;
      
      public static const §_-u§:int = 9;
      
      public static const §_-EW§:int = 10;
      
      protected static var §_-u1§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §_-3W§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §_-GX§:int = 0;
      
      protected var §_-Xv§:String = "2.0";
      
      protected var §_-bo§:int = 8;
      
      protected var §use §:Boolean = false;
      
      protected var §_-Rv§:int = -1;
      
      protected var §_-8i§:int = -1;
      
      protected var §_-p3§:int = -1;
      
      protected var §_-B6§:Boolean = false;
      
      protected var §_-TK§:Boolean = false;
      
      protected var §_-1V§:Date;
      
      protected var §_-Te§:uint;
      
      protected var §_-4L§:Boolean = false;
      
      protected var §_-i6§:uint = 0;
      
      protected var §_-sC§:uint = 0;
      
      protected var §_-wd§:String = "";
      
      protected var §_-lL§:String;
      
      protected var §_-Rn§:Dictionary;
      
      protected var §_-JX§:String = "";
      
      protected var §_-aV§:ByteArray;
      
      var §_-8C§:uint;
      
      var §_-u3§:uint = 0;
      
      var §_-sl§:uint = 0;
      
      protected var §_-8e§:Boolean = false;
      
      protected var §_-Yi§:Function;
      
      public function §_-Tg§(param1:String = "utf-8")
      {
         this.§_-Yi§ = this.§_-PA§;
         super();
         this.§_-lL§ = param1;
         this.§_-Rn§ = new Dictionary();
         this.§_-aV§ = new ByteArray();
         this.§_-aV§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §_-1F§() : Date
      {
         return this.§_-1V§;
      }
      
      public function set §_-1F§(param1:Date) : void
      {
         this.§_-1V§ = param1 != null ? param1 : new Date();
      }
      
      public function get §_-00P§() : String
      {
         return this.§_-wd§;
      }
      
      public function set §_-00P§(param1:String) : void
      {
         this.§_-wd§ = param1;
      }
      
      function get §_-nN§() : Boolean
      {
         return this.§_-B6§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§_-8e§)
         {
            this.uncompress();
         }
         return this.§_-aV§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§_-N-§(param1);
      }
      
      public function §_-N-§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§_-aV§,0,param1.length);
            this.§_-8C§ = §_-lD§.§_-z§(this.§_-aV§);
            this.§_-4L§ = false;
         }
         else
         {
            this.§_-aV§.length = 0;
            this.§_-aV§.position = 0;
            this.§_-8e§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§_-sl§ = this.§_-u3§ = this.§_-aV§.length;
         }
      }
      
      public function get §_-9L§() : String
      {
         return this.§_-Xv§;
      }
      
      public function get §_-fg§() : uint
      {
         return this.§_-u3§;
      }
      
      public function get §_-xe§() : uint
      {
         return this.§_-sl§;
      }
      
      public function §_-v4§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§_-8e§)
         {
            this.uncompress();
         }
         this.§_-aV§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§_-aV§.readUTFBytes(this.§_-aV§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§_-aV§.readMultiByte(this.§_-aV§.bytesAvailable,param2);
         }
         this.§_-aV§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §_-6x§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§_-aV§.length = 0;
         this.§_-aV§.position = 0;
         this.§_-8e§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§_-aV§.writeUTFBytes(param1);
            }
            else
            {
               this.§_-aV§.writeMultiByte(param1,param2);
            }
            this.§_-8C§ = §_-lD§.§_-z§(this.§_-aV§);
            this.§_-4L§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§_-sl§ = this.§_-u3§ = this.§_-aV§.length;
         }
      }
      
      public function §_-r4§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§_-IM§.§_-sx§);
            param1.writeShort(this.§_-GX§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§_-IM§.§_-S6§);
         }
         param1.writeShort(this.§_-GX§ << 8 | 20);
         param1.writeShort(this.§_-lL§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§_-8e§ ? int(§_-pb§) : int(§_-§));
         var _loc5_:Date = this.§_-1V§ != null ? this.§_-1V§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§_-8C§);
         param1.writeUnsignedInt(this.§_-u3§);
         param1.writeUnsignedInt(this.§_-sl§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§_-lL§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§_-wd§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§_-wd§,this.§_-lL§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§_-Rn§)
         {
            if((_loc15_ = this.§_-Rn§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§_-4L§)
            {
               if(_loc16_ = this.§_-8e§)
               {
                  this.uncompress();
               }
               this.§_-Te§ = §_-lD§.§_-re§(this.§_-aV§,0,this.§_-aV§.length);
               this.§_-4L§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§_-Te§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§_-JX§.length > 0)
         {
            if(this.§_-lL§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§_-JX§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§_-JX§,this.§_-lL§);
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
         if(!param3 && this.§_-aV§.length > 0)
         {
            if(this.§_-8e§)
            {
               if(§_-u1§ || §_-3W§)
               {
                  _loc13_ = this.§_-aV§.length;
                  param1.writeBytes(this.§_-aV§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§_-aV§.length - 6;
                  param1.writeBytes(this.§_-aV§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§_-aV§.length;
               param1.writeBytes(this.§_-aV§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§_-Yi§(param1))
         {
         }
         return this.§_-Yi§ === this.§_-xl§;
      }
      
      protected function §_-xl§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §_-PA§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§_-3j§(param1);
            if(this.§_-i6§ + this.§_-sC§ > 0)
            {
               this.§_-Yi§ = this.§_-yp§;
            }
            else
            {
               this.§_-Yi§ = this.§_-ND§;
            }
            return true;
         }
         return false;
      }
      
      protected function §_-yp§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§_-i6§ + this.§_-sC§)
         {
            this.§_-Vp§(param1);
            this.§_-Yi§ = this.§_-ND§;
            return true;
         }
         return false;
      }
      
      protected function §_-ND§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§_-B6§)
         {
            this.§_-Yi§ = this.§_-xl§;
            _loc2_ = false;
         }
         else if(this.§_-u3§ == 0)
         {
            this.§_-Yi§ = this.§_-xl§;
         }
         else if(param1.bytesAvailable >= this.§_-u3§)
         {
            this.§_-vi§(param1);
            this.§_-Yi§ = this.§_-xl§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §_-3j§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§_-GX§ = _loc2_ >> 8;
         this.§_-Xv§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§_-bo§ = param1.readUnsignedShort();
         this.§use § = (_loc3_ & 1) !== 0;
         this.§_-B6§ = (_loc3_ & 8) !== 0;
         this.§_-TK§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§_-lL§ = "utf-8";
         }
         if(this.§_-bo§ === §_-Vq§)
         {
            this.§_-Rv§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§_-8i§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§_-bo§ === §_-pb§)
         {
            this.§_-p3§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§_-1V§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§_-8C§ = param1.readUnsignedInt();
         this.§_-u3§ = param1.readUnsignedInt();
         this.§_-sl§ = param1.readUnsignedInt();
         this.§_-i6§ = param1.readUnsignedShort();
         this.§_-sC§ = param1.readUnsignedShort();
      }
      
      protected function §_-Vp§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§_-lL§ == "utf-8")
         {
            this.§_-wd§ = param1.readUTFBytes(this.§_-i6§);
         }
         else
         {
            this.§_-wd§ = param1.readMultiByte(this.§_-i6§,this.§_-lL§);
         }
         var _loc2_:uint = this.§_-sC§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§_-wd§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§_-Te§ = param1.readUnsignedInt();
               this.§_-4L§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§_-Rn§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §_-vi§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§_-bo§ === §_-pb§ && !this.§use §)
         {
            if(§_-u1§ || §_-3W§)
            {
               param1.readBytes(this.§_-aV§,0,this.§_-u3§);
            }
            else
            {
               if(!this.§_-4L§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§_-aV§.writeByte(120);
               _loc2_ = ~this.§_-p3§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§_-aV§.writeByte(_loc2_);
               param1.readBytes(this.§_-aV§,2,this.§_-u3§);
               this.§_-aV§.position = this.§_-aV§.length;
               this.§_-aV§.writeUnsignedInt(this.§_-Te§);
            }
            this.§_-8e§ = true;
         }
         else
         {
            if(this.§_-bo§ != §_-§)
            {
               throw new Error("Compression method " + this.§_-bo§ + " is not supported.");
            }
            param1.readBytes(this.§_-aV§,0,this.§_-u3§);
            this.§_-8e§ = false;
         }
         this.§_-aV§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§_-8e§)
         {
            if(this.§_-aV§.length > 0)
            {
               this.§_-aV§.position = 0;
               this.§_-sl§ = this.§_-aV§.length;
               if(§_-3W§)
               {
                  this.§_-aV§.deflate();
                  this.§_-u3§ = this.§_-aV§.length;
               }
               else if(§_-u1§)
               {
                  this.§_-aV§.compress.apply(this.§_-aV§,["deflate"]);
                  this.§_-u3§ = this.§_-aV§.length;
               }
               else
               {
                  this.§_-aV§.compress();
                  this.§_-u3§ = this.§_-aV§.length - 6;
               }
               this.§_-aV§.position = 0;
               this.§_-8e§ = true;
            }
            else
            {
               this.§_-u3§ = 0;
               this.§_-sl§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§_-8e§ && this.§_-aV§.length > 0)
         {
            this.§_-aV§.position = 0;
            if(§_-3W§)
            {
               this.§_-aV§.inflate();
            }
            else if(§_-u1§)
            {
               this.§_-aV§.uncompress.apply(this.§_-aV§,["deflate"]);
            }
            else
            {
               this.§_-aV§.uncompress();
            }
            this.§_-aV§.position = 0;
            this.§_-8e§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§_-wd§ + "\n  date:" + this.§_-1V§ + "\n  sizeCompressed:" + this.§_-u3§ + "\n  sizeUncompressed:" + this.§_-sl§ + "\n  versionHost:" + this.§_-GX§ + "\n  versionNumber:" + this.§_-Xv§ + "\n  compressionMethod:" + this.§_-bo§ + "\n  encrypted:" + this.§use § + "\n  hasDataDescriptor:" + this.§_-B6§ + "\n  hasCompressedPatchedData:" + this.§_-TK§ + "\n  filenameEncoding:" + this.§_-lL§ + "\n  crc32:" + this.§_-8C§.toString(16) + "\n  adler32:" + this.§_-Te§.toString(16);
      }
   }
}

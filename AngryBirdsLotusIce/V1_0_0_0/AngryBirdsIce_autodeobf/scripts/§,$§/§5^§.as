package §,$§
{
   import §?]§.§3!7§;
   import flash.utils.*;
   
   public class §5^§
   {
      
      public static const §%R§:int = 0;
      
      public static const §-[§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §use§:int = 6;
      
      public static const §&E§:int = 7;
      
      public static const §<%§:int = 8;
      
      public static const §3E§:int = 9;
      
      public static const §]Z§:int = 10;
      
      protected static var §^4§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §9!2§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §=!@§:int = 0;
      
      protected var §!8§:String = "2.0";
      
      protected var §32§:int = 8;
      
      protected var §+!G§:Boolean = false;
      
      protected var §4'§:int = -1;
      
      protected var §;T§:int = -1;
      
      protected var §4o§:int = -1;
      
      protected var §#,§:Boolean = false;
      
      protected var §]s§:Boolean = false;
      
      protected var §+!'§:Date;
      
      protected var §7S§:uint;
      
      protected var §9!?§:Boolean = false;
      
      protected var §0n§:uint = 0;
      
      protected var §;4§:uint = 0;
      
      protected var §6_§:String = "";
      
      protected var §+!%§:String;
      
      protected var §%!+§:Dictionary;
      
      protected var §0d§:String = "";
      
      protected var §!$§:ByteArray;
      
      var §;!6§:uint;
      
      var §#s§:uint = 0;
      
      var §^$§:uint = 0;
      
      protected var §"x§:Boolean = false;
      
      protected var §!L§:Function;
      
      public function §5^§(param1:String = "utf-8")
      {
         this.§!L§ = this.§"Y§;
         super();
         this.§+!%§ = param1;
         this.§%!+§ = new Dictionary();
         this.§!$§ = new ByteArray();
         this.§!$§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §[!-§() : Date
      {
         return this.§+!'§;
      }
      
      public function set §[!-§(param1:Date) : void
      {
         this.§+!'§ = param1 != null ? param1 : new Date();
      }
      
      public function get §[v§() : String
      {
         return this.§6_§;
      }
      
      public function set §[v§(param1:String) : void
      {
         this.§6_§ = param1;
      }
      
      function get §`[§() : Boolean
      {
         return this.§#,§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§"x§)
         {
            this.uncompress();
         }
         return this.§!$§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§4m§(param1);
      }
      
      public function §4m§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§!$§,0,param1.length);
            this.§;!6§ = §3!7§.§"B§(this.§!$§);
            this.§9!?§ = false;
         }
         else
         {
            this.§!$§.length = 0;
            this.§!$§.position = 0;
            this.§"x§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§^$§ = this.§#s§ = this.§!$§.length;
         }
      }
      
      public function get §&!C§() : String
      {
         return this.§!8§;
      }
      
      public function get §^f§() : uint
      {
         return this.§#s§;
      }
      
      public function get §&g§() : uint
      {
         return this.§^$§;
      }
      
      public function §#!,§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§"x§)
         {
            this.uncompress();
         }
         this.§!$§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§!$§.readUTFBytes(this.§!$§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§!$§.readMultiByte(this.§!$§.bytesAvailable,param2);
         }
         this.§!$§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §7! §(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§!$§.length = 0;
         this.§!$§.position = 0;
         this.§"x§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§!$§.writeUTFBytes(param1);
            }
            else
            {
               this.§!$§.writeMultiByte(param1,param2);
            }
            this.§;!6§ = §3!7§.§"B§(this.§!$§);
            this.§9!?§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§^$§ = this.§#s§ = this.§!$§.length;
         }
      }
      
      public function §&I§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§%=§.§]#§);
            param1.writeShort(this.§=!@§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§%=§.§^!3§);
         }
         param1.writeShort(this.§=!@§ << 8 | 20);
         param1.writeShort(this.§+!%§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§"x§ ? int(§<%§) : int(§%R§));
         var _loc5_:Date = this.§+!'§ != null ? this.§+!'§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§;!6§);
         param1.writeUnsignedInt(this.§#s§);
         param1.writeUnsignedInt(this.§^$§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§+!%§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§6_§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§6_§,this.§+!%§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§%!+§)
         {
            if((_loc15_ = this.§%!+§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§9!?§)
            {
               if(_loc16_ = this.§"x§)
               {
                  this.uncompress();
               }
               this.§7S§ = §3!7§.§[G§(this.§!$§,0,this.§!$§.length);
               this.§9!?§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§7S§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§0d§.length > 0)
         {
            if(this.§+!%§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§0d§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§0d§,this.§+!%§);
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
         if(!param3 && this.§!$§.length > 0)
         {
            if(this.§"x§)
            {
               if(§^4§ || §9!2§)
               {
                  _loc13_ = this.§!$§.length;
                  param1.writeBytes(this.§!$§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§!$§.length - 6;
                  param1.writeBytes(this.§!$§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§!$§.length;
               param1.writeBytes(this.§!$§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§!L§(param1))
         {
         }
         return this.§!L§ === this.§92§;
      }
      
      protected function §92§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §"Y§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§^!6§(param1);
            if(this.§0n§ + this.§;4§ > 0)
            {
               this.§!L§ = this.§=M§;
            }
            else
            {
               this.§!L§ = this.§default§;
            }
            return true;
         }
         return false;
      }
      
      protected function §=M§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§0n§ + this.§;4§)
         {
            this.§`Z§(param1);
            this.§!L§ = this.§default§;
            return true;
         }
         return false;
      }
      
      protected function §default§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§#,§)
         {
            this.§!L§ = this.§92§;
            _loc2_ = false;
         }
         else if(this.§#s§ == 0)
         {
            this.§!L§ = this.§92§;
         }
         else if(param1.bytesAvailable >= this.§#s§)
         {
            this.§<[§(param1);
            this.§!L§ = this.§92§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §^!6§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§=!@§ = _loc2_ >> 8;
         this.§!8§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§32§ = param1.readUnsignedShort();
         this.§+!G§ = (_loc3_ & 1) !== 0;
         this.§#,§ = (_loc3_ & 8) !== 0;
         this.§]s§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§+!%§ = "utf-8";
         }
         if(this.§32§ === §use§)
         {
            this.§4'§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§;T§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§32§ === §<%§)
         {
            this.§4o§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§+!'§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§;!6§ = param1.readUnsignedInt();
         this.§#s§ = param1.readUnsignedInt();
         this.§^$§ = param1.readUnsignedInt();
         this.§0n§ = param1.readUnsignedShort();
         this.§;4§ = param1.readUnsignedShort();
      }
      
      protected function §`Z§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§+!%§ == "utf-8")
         {
            this.§6_§ = param1.readUTFBytes(this.§0n§);
         }
         else
         {
            this.§6_§ = param1.readMultiByte(this.§0n§,this.§+!%§);
         }
         var _loc2_:uint = this.§;4§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§6_§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§7S§ = param1.readUnsignedInt();
               this.§9!?§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§%!+§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §<[§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§32§ === §<%§ && !this.§+!G§)
         {
            if(§^4§ || §9!2§)
            {
               param1.readBytes(this.§!$§,0,this.§#s§);
            }
            else
            {
               if(!this.§9!?§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§!$§.writeByte(120);
               _loc2_ = ~this.§4o§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§!$§.writeByte(_loc2_);
               param1.readBytes(this.§!$§,2,this.§#s§);
               this.§!$§.position = this.§!$§.length;
               this.§!$§.writeUnsignedInt(this.§7S§);
            }
            this.§"x§ = true;
         }
         else
         {
            if(this.§32§ != §%R§)
            {
               throw new Error("Compression method " + this.§32§ + " is not supported.");
            }
            param1.readBytes(this.§!$§,0,this.§#s§);
            this.§"x§ = false;
         }
         this.§!$§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§"x§)
         {
            if(this.§!$§.length > 0)
            {
               this.§!$§.position = 0;
               this.§^$§ = this.§!$§.length;
               if(§9!2§)
               {
                  this.§!$§.deflate();
                  this.§#s§ = this.§!$§.length;
               }
               else if(§^4§)
               {
                  this.§!$§.compress.apply(this.§!$§,["deflate"]);
                  this.§#s§ = this.§!$§.length;
               }
               else
               {
                  this.§!$§.compress();
                  this.§#s§ = this.§!$§.length - 6;
               }
               this.§!$§.position = 0;
               this.§"x§ = true;
            }
            else
            {
               this.§#s§ = 0;
               this.§^$§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§"x§ && this.§!$§.length > 0)
         {
            this.§!$§.position = 0;
            if(§9!2§)
            {
               this.§!$§.inflate();
            }
            else if(§^4§)
            {
               this.§!$§.uncompress.apply(this.§!$§,["deflate"]);
            }
            else
            {
               this.§!$§.uncompress();
            }
            this.§!$§.position = 0;
            this.§"x§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§6_§ + "\n  date:" + this.§+!'§ + "\n  sizeCompressed:" + this.§#s§ + "\n  sizeUncompressed:" + this.§^$§ + "\n  versionHost:" + this.§=!@§ + "\n  versionNumber:" + this.§!8§ + "\n  compressionMethod:" + this.§32§ + "\n  encrypted:" + this.§+!G§ + "\n  hasDataDescriptor:" + this.§#,§ + "\n  hasCompressedPatchedData:" + this.§]s§ + "\n  filenameEncoding:" + this.§+!%§ + "\n  crc32:" + this.§;!6§.toString(16) + "\n  adler32:" + this.§7S§.toString(16);
      }
   }
}

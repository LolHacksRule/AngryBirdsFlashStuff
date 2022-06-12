package §=v§
{
   import §-s§.§+!&§;
   import flash.utils.*;
   
   public class §`!'§
   {
      
      public static const §&"9§:int = 0;
      
      public static const §8!,§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §@q§:int = 6;
      
      public static const §3!x§:int = 7;
      
      public static const §4"#§:int = 8;
      
      public static const §,2§:int = 9;
      
      public static const §;!=§:int = 10;
      
      protected static var §&!P§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §9>§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §3!r§:int = 0;
      
      protected var §"!g§:String = "2.0";
      
      protected var §]+§:int = 8;
      
      protected var §9"H§:Boolean = false;
      
      protected var §^r§:int = -1;
      
      protected var §9!a§:int = -1;
      
      protected var §0!q§:int = -1;
      
      protected var § !3§:Boolean = false;
      
      protected var §0"+§:Boolean = false;
      
      protected var §+!a§:Date;
      
      protected var §6"C§:uint;
      
      protected var §0"6§:Boolean = false;
      
      protected var § !<§:uint = 0;
      
      protected var §0!'§:uint = 0;
      
      protected var §5!T§:String = "";
      
      protected var §1"K§:String;
      
      protected var §3!+§:Dictionary;
      
      protected var §;"3§:String = "";
      
      protected var §?!X§:ByteArray;
      
      var §4!s§:uint;
      
      var §7!7§:uint = 0;
      
      var §+M§:uint = 0;
      
      protected var §<!;§:Boolean = false;
      
      protected var §5I§:Function;
      
      public function §`!'§(param1:String = "utf-8")
      {
         this.§5I§ = this.§<'§;
         super();
         this.§1"K§ = param1;
         this.§3!+§ = new Dictionary();
         this.§?!X§ = new ByteArray();
         this.§?!X§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §=!E§() : Date
      {
         return this.§+!a§;
      }
      
      public function set §=!E§(param1:Date) : void
      {
         this.§+!a§ = param1 != null ? param1 : new Date();
      }
      
      public function get §%!V§() : String
      {
         return this.§5!T§;
      }
      
      public function set §%!V§(param1:String) : void
      {
         this.§5!T§ = param1;
      }
      
      function get §3"7§() : Boolean
      {
         return this.§ !3§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§<!;§)
         {
            this.uncompress();
         }
         return this.§?!X§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§4!t§(param1);
      }
      
      public function §4!t§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§?!X§,0,param1.length);
            this.§4!s§ = §+!&§.§6"#§(this.§?!X§);
            this.§0"6§ = false;
         }
         else
         {
            this.§?!X§.length = 0;
            this.§?!X§.position = 0;
            this.§<!;§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§+M§ = this.§7!7§ = this.§?!X§.length;
         }
      }
      
      public function get §%!`§() : String
      {
         return this.§"!g§;
      }
      
      public function get §&N§() : uint
      {
         return this.§7!7§;
      }
      
      public function get §,!C§() : uint
      {
         return this.§+M§;
      }
      
      public function §1"I§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§<!;§)
         {
            this.uncompress();
         }
         this.§?!X§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§?!X§.readUTFBytes(this.§?!X§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§?!X§.readMultiByte(this.§?!X§.bytesAvailable,param2);
         }
         this.§?!X§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §9!W§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§?!X§.length = 0;
         this.§?!X§.position = 0;
         this.§<!;§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§?!X§.writeUTFBytes(param1);
            }
            else
            {
               this.§?!X§.writeMultiByte(param1,param2);
            }
            this.§4!s§ = §+!&§.§6"#§(this.§?!X§);
            this.§0"6§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§+M§ = this.§7!7§ = this.§?!X§.length;
         }
      }
      
      public function §7!G§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§,=§.§[]§);
            param1.writeShort(this.§3!r§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§,=§.§"!0§);
         }
         param1.writeShort(this.§3!r§ << 8 | 20);
         param1.writeShort(this.§1"K§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§<!;§ ? int(§4"#§) : int(§&"9§));
         var _loc5_:Date = this.§+!a§ != null ? this.§+!a§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§4!s§);
         param1.writeUnsignedInt(this.§7!7§);
         param1.writeUnsignedInt(this.§+M§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§1"K§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§5!T§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§5!T§,this.§1"K§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§3!+§)
         {
            if((_loc15_ = this.§3!+§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§0"6§)
            {
               if(_loc16_ = this.§<!;§)
               {
                  this.uncompress();
               }
               this.§6"C§ = §+!&§.§9K§(this.§?!X§,0,this.§?!X§.length);
               this.§0"6§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§6"C§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§;"3§.length > 0)
         {
            if(this.§1"K§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§;"3§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§;"3§,this.§1"K§);
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
         if(!param3 && this.§?!X§.length > 0)
         {
            if(this.§<!;§)
            {
               if(§&!P§ || §9>§)
               {
                  _loc13_ = this.§?!X§.length;
                  param1.writeBytes(this.§?!X§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§?!X§.length - 6;
                  param1.writeBytes(this.§?!X§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§?!X§.length;
               param1.writeBytes(this.§?!X§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§5I§(param1))
         {
         }
         return this.§5I§ === this.§!"H§;
      }
      
      protected function §!"H§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §<'§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§<!N§(param1);
            if(this.§ !<§ + this.§0!'§ > 0)
            {
               this.§5I§ = this.§3f§;
            }
            else
            {
               this.§5I§ = this.§4z§;
            }
            return true;
         }
         return false;
      }
      
      protected function §3f§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§ !<§ + this.§0!'§)
         {
            this.§5Y§(param1);
            this.§5I§ = this.§4z§;
            return true;
         }
         return false;
      }
      
      protected function §4z§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§ !3§)
         {
            this.§5I§ = this.§!"H§;
            _loc2_ = false;
         }
         else if(this.§7!7§ == 0)
         {
            this.§5I§ = this.§!"H§;
         }
         else if(param1.bytesAvailable >= this.§7!7§)
         {
            this.§2>§(param1);
            this.§5I§ = this.§!"H§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §<!N§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§3!r§ = _loc2_ >> 8;
         this.§"!g§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§]+§ = param1.readUnsignedShort();
         this.§9"H§ = (_loc3_ & 1) !== 0;
         this.§ !3§ = (_loc3_ & 8) !== 0;
         this.§0"+§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§1"K§ = "utf-8";
         }
         if(this.§]+§ === §@q§)
         {
            this.§^r§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§9!a§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§]+§ === §4"#§)
         {
            this.§0!q§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§+!a§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§4!s§ = param1.readUnsignedInt();
         this.§7!7§ = param1.readUnsignedInt();
         this.§+M§ = param1.readUnsignedInt();
         this.§ !<§ = param1.readUnsignedShort();
         this.§0!'§ = param1.readUnsignedShort();
      }
      
      protected function §5Y§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§1"K§ == "utf-8")
         {
            this.§5!T§ = param1.readUTFBytes(this.§ !<§);
         }
         else
         {
            this.§5!T§ = param1.readMultiByte(this.§ !<§,this.§1"K§);
         }
         var _loc2_:uint = this.§0!'§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§5!T§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§6"C§ = param1.readUnsignedInt();
               this.§0"6§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§3!+§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §2>§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§]+§ === §4"#§ && !this.§9"H§)
         {
            if(§&!P§ || §9>§)
            {
               param1.readBytes(this.§?!X§,0,this.§7!7§);
            }
            else
            {
               if(!this.§0"6§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§?!X§.writeByte(120);
               _loc2_ = ~this.§0!q§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§?!X§.writeByte(_loc2_);
               param1.readBytes(this.§?!X§,2,this.§7!7§);
               this.§?!X§.position = this.§?!X§.length;
               this.§?!X§.writeUnsignedInt(this.§6"C§);
            }
            this.§<!;§ = true;
         }
         else
         {
            if(this.§]+§ != §&"9§)
            {
               throw new Error("Compression method " + this.§]+§ + " is not supported.");
            }
            param1.readBytes(this.§?!X§,0,this.§7!7§);
            this.§<!;§ = false;
         }
         this.§?!X§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§<!;§)
         {
            if(this.§?!X§.length > 0)
            {
               this.§?!X§.position = 0;
               this.§+M§ = this.§?!X§.length;
               if(§9>§)
               {
                  this.§?!X§.deflate();
                  this.§7!7§ = this.§?!X§.length;
               }
               else if(§&!P§)
               {
                  this.§?!X§.compress.apply(this.§?!X§,["deflate"]);
                  this.§7!7§ = this.§?!X§.length;
               }
               else
               {
                  this.§?!X§.compress();
                  this.§7!7§ = this.§?!X§.length - 6;
               }
               this.§?!X§.position = 0;
               this.§<!;§ = true;
            }
            else
            {
               this.§7!7§ = 0;
               this.§+M§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§<!;§ && this.§?!X§.length > 0)
         {
            this.§?!X§.position = 0;
            if(§9>§)
            {
               this.§?!X§.inflate();
            }
            else if(§&!P§)
            {
               this.§?!X§.uncompress.apply(this.§?!X§,["deflate"]);
            }
            else
            {
               this.§?!X§.uncompress();
            }
            this.§?!X§.position = 0;
            this.§<!;§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§5!T§ + "\n  date:" + this.§+!a§ + "\n  sizeCompressed:" + this.§7!7§ + "\n  sizeUncompressed:" + this.§+M§ + "\n  versionHost:" + this.§3!r§ + "\n  versionNumber:" + this.§"!g§ + "\n  compressionMethod:" + this.§]+§ + "\n  encrypted:" + this.§9"H§ + "\n  hasDataDescriptor:" + this.§ !3§ + "\n  hasCompressedPatchedData:" + this.§0"+§ + "\n  filenameEncoding:" + this.§1"K§ + "\n  crc32:" + this.§4!s§.toString(16) + "\n  adler32:" + this.§6"C§.toString(16);
      }
   }
}

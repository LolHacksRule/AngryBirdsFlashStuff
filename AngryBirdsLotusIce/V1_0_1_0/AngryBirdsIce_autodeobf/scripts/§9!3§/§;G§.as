package §9!3§
{
   import §2%§.§@Y§;
   import flash.utils.*;
   
   public class §;G§
   {
      
      public static const §^x§:int = 0;
      
      public static const §>!?§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §,!D§:int = 6;
      
      public static const §3i§:int = 7;
      
      public static const § var§:int = 8;
      
      public static const §-3§:int = 9;
      
      public static const §2d§:int = 10;
      
      protected static var §+!,§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §4D§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §]!@§:int = 0;
      
      protected var §?@§:String = "2.0";
      
      protected var §@c§:int = 8;
      
      protected var §'&§:Boolean = false;
      
      protected var §@a§:int = -1;
      
      protected var §1;§:int = -1;
      
      protected var §;`§:int = -1;
      
      protected var §`!D§:Boolean = false;
      
      protected var §`O§:Boolean = false;
      
      protected var §^F§:Date;
      
      protected var §2!3§:uint;
      
      protected var §@h§:Boolean = false;
      
      protected var §]x§:uint = 0;
      
      protected var §!S§:uint = 0;
      
      protected var §;T§:String = "";
      
      protected var §"i§:String;
      
      protected var §7,§:Dictionary;
      
      protected var §[!8§:String = "";
      
      protected var §]!0§:ByteArray;
      
      var §3!@§:uint;
      
      var §?!7§:uint = 0;
      
      var §5H§:uint = 0;
      
      protected var §?!<§:Boolean = false;
      
      protected var § N§:Function;
      
      public function §;G§(param1:String = "utf-8")
      {
         this.§ N§ = this.§7!C§;
         super();
         this.§"i§ = param1;
         this.§7,§ = new Dictionary();
         this.§]!0§ = new ByteArray();
         this.§]!0§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §=_§() : Date
      {
         return this.§^F§;
      }
      
      public function set §=_§(param1:Date) : void
      {
         this.§^F§ = param1 != null ? param1 : new Date();
      }
      
      public function get §;V§() : String
      {
         return this.§;T§;
      }
      
      public function set §;V§(param1:String) : void
      {
         this.§;T§ = param1;
      }
      
      function get §-!C§() : Boolean
      {
         return this.§`!D§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§?!<§)
         {
            this.uncompress();
         }
         return this.§]!0§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§?l§(param1);
      }
      
      public function §?l§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§]!0§,0,param1.length);
            this.§3!@§ = §@Y§.§>!C§(this.§]!0§);
            this.§@h§ = false;
         }
         else
         {
            this.§]!0§.length = 0;
            this.§]!0§.position = 0;
            this.§?!<§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§5H§ = this.§?!7§ = this.§]!0§.length;
         }
      }
      
      public function get §?F§() : String
      {
         return this.§?@§;
      }
      
      public function get §@§() : uint
      {
         return this.§?!7§;
      }
      
      public function get §]!D§() : uint
      {
         return this.§5H§;
      }
      
      public function §5r§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§?!<§)
         {
            this.uncompress();
         }
         this.§]!0§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§]!0§.readUTFBytes(this.§]!0§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§]!0§.readMultiByte(this.§]!0§.bytesAvailable,param2);
         }
         this.§]!0§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §;!#§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§]!0§.length = 0;
         this.§]!0§.position = 0;
         this.§?!<§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§]!0§.writeUTFBytes(param1);
            }
            else
            {
               this.§]!0§.writeMultiByte(param1,param2);
            }
            this.§3!@§ = §@Y§.§>!C§(this.§]!0§);
            this.§@h§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§5H§ = this.§?!7§ = this.§]!0§.length;
         }
      }
      
      public function §"`§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§=!6§.§=9§);
            param1.writeShort(this.§]!@§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§=!6§.§%c§);
         }
         param1.writeShort(this.§]!@§ << 8 | 20);
         param1.writeShort(this.§"i§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§?!<§ ? int(§ var§) : int(§^x§));
         var _loc5_:Date = this.§^F§ != null ? this.§^F§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§3!@§);
         param1.writeUnsignedInt(this.§?!7§);
         param1.writeUnsignedInt(this.§5H§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§"i§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§;T§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§;T§,this.§"i§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§7,§)
         {
            if((_loc15_ = this.§7,§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§@h§)
            {
               if(_loc16_ = this.§?!<§)
               {
                  this.uncompress();
               }
               this.§2!3§ = §@Y§.§,x§(this.§]!0§,0,this.§]!0§.length);
               this.§@h§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§2!3§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§[!8§.length > 0)
         {
            if(this.§"i§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§[!8§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§[!8§,this.§"i§);
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
         if(!param3 && this.§]!0§.length > 0)
         {
            if(this.§?!<§)
            {
               if(§+!,§ || §4D§)
               {
                  _loc13_ = this.§]!0§.length;
                  param1.writeBytes(this.§]!0§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§]!0§.length - 6;
                  param1.writeBytes(this.§]!0§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§]!0§.length;
               param1.writeBytes(this.§]!0§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§ N§(param1))
         {
         }
         return this.§ N§ === this.§9q§;
      }
      
      protected function §9q§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §7!C§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§[@§(param1);
            if(this.§]x§ + this.§!S§ > 0)
            {
               this.§ N§ = this.§?w§;
            }
            else
            {
               this.§ N§ = this.§?&§;
            }
            return true;
         }
         return false;
      }
      
      protected function §?w§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§]x§ + this.§!S§)
         {
            this.§@!#§(param1);
            this.§ N§ = this.§?&§;
            return true;
         }
         return false;
      }
      
      protected function §?&§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§`!D§)
         {
            this.§ N§ = this.§9q§;
            _loc2_ = false;
         }
         else if(this.§?!7§ == 0)
         {
            this.§ N§ = this.§9q§;
         }
         else if(param1.bytesAvailable >= this.§?!7§)
         {
            this.§,?§(param1);
            this.§ N§ = this.§9q§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §[@§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§]!@§ = _loc2_ >> 8;
         this.§?@§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§@c§ = param1.readUnsignedShort();
         this.§'&§ = (_loc3_ & 1) !== 0;
         this.§`!D§ = (_loc3_ & 8) !== 0;
         this.§`O§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§"i§ = "utf-8";
         }
         if(this.§@c§ === §,!D§)
         {
            this.§@a§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§1;§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§@c§ === § var§)
         {
            this.§;`§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§^F§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§3!@§ = param1.readUnsignedInt();
         this.§?!7§ = param1.readUnsignedInt();
         this.§5H§ = param1.readUnsignedInt();
         this.§]x§ = param1.readUnsignedShort();
         this.§!S§ = param1.readUnsignedShort();
      }
      
      protected function §@!#§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§"i§ == "utf-8")
         {
            this.§;T§ = param1.readUTFBytes(this.§]x§);
         }
         else
         {
            this.§;T§ = param1.readMultiByte(this.§]x§,this.§"i§);
         }
         var _loc2_:uint = this.§!S§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§;T§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§2!3§ = param1.readUnsignedInt();
               this.§@h§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§7,§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §,?§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§@c§ === § var§ && !this.§'&§)
         {
            if(§+!,§ || §4D§)
            {
               param1.readBytes(this.§]!0§,0,this.§?!7§);
            }
            else
            {
               if(!this.§@h§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§]!0§.writeByte(120);
               _loc2_ = ~this.§;`§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§]!0§.writeByte(_loc2_);
               param1.readBytes(this.§]!0§,2,this.§?!7§);
               this.§]!0§.position = this.§]!0§.length;
               this.§]!0§.writeUnsignedInt(this.§2!3§);
            }
            this.§?!<§ = true;
         }
         else
         {
            if(this.§@c§ != §^x§)
            {
               throw new Error("Compression method " + this.§@c§ + " is not supported.");
            }
            param1.readBytes(this.§]!0§,0,this.§?!7§);
            this.§?!<§ = false;
         }
         this.§]!0§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§?!<§)
         {
            if(this.§]!0§.length > 0)
            {
               this.§]!0§.position = 0;
               this.§5H§ = this.§]!0§.length;
               if(§4D§)
               {
                  this.§]!0§.deflate();
                  this.§?!7§ = this.§]!0§.length;
               }
               else if(§+!,§)
               {
                  this.§]!0§.compress.apply(this.§]!0§,["deflate"]);
                  this.§?!7§ = this.§]!0§.length;
               }
               else
               {
                  this.§]!0§.compress();
                  this.§?!7§ = this.§]!0§.length - 6;
               }
               this.§]!0§.position = 0;
               this.§?!<§ = true;
            }
            else
            {
               this.§?!7§ = 0;
               this.§5H§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§?!<§ && this.§]!0§.length > 0)
         {
            this.§]!0§.position = 0;
            if(§4D§)
            {
               this.§]!0§.inflate();
            }
            else if(§+!,§)
            {
               this.§]!0§.uncompress.apply(this.§]!0§,["deflate"]);
            }
            else
            {
               this.§]!0§.uncompress();
            }
            this.§]!0§.position = 0;
            this.§?!<§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§;T§ + "\n  date:" + this.§^F§ + "\n  sizeCompressed:" + this.§?!7§ + "\n  sizeUncompressed:" + this.§5H§ + "\n  versionHost:" + this.§]!@§ + "\n  versionNumber:" + this.§?@§ + "\n  compressionMethod:" + this.§@c§ + "\n  encrypted:" + this.§'&§ + "\n  hasDataDescriptor:" + this.§`!D§ + "\n  hasCompressedPatchedData:" + this.§`O§ + "\n  filenameEncoding:" + this.§"i§ + "\n  crc32:" + this.§3!@§.toString(16) + "\n  adler32:" + this.§2!3§.toString(16);
      }
   }
}

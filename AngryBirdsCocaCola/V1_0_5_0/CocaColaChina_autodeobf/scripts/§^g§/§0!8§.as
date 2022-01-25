package §^g§
{
   import §]u§.§-F§;
   import flash.utils.*;
   
   public class §0!8§
   {
      
      public static const §44§:int = 0;
      
      public static const §`!4§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §3e§:int = 6;
      
      public static const §=!3§:int = 7;
      
      public static const §"!@§:int = 8;
      
      public static const §7,§:int = 9;
      
      public static const §5!I§:int = 10;
      
      protected static var §;!c§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §]V§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §^!6§:int = 0;
      
      protected var §",§:String = "2.0";
      
      protected var §;§:int = 8;
      
      protected var §'!X§:Boolean = false;
      
      protected var §?!'§:int = -1;
      
      protected var §'!B§:int = -1;
      
      protected var §-b§:int = -1;
      
      protected var §>!X§:Boolean = false;
      
      protected var §?b§:Boolean = false;
      
      protected var §+!,§:Date;
      
      protected var §^!F§:uint;
      
      protected var §@X§:Boolean = false;
      
      protected var §8&§:uint = 0;
      
      protected var §[!a§:uint = 0;
      
      protected var §9N§:String = "";
      
      protected var §^1§:String;
      
      protected var § ![§:Dictionary;
      
      protected var §[f§:String = "";
      
      protected var §9m§:ByteArray;
      
      var §[!!§:uint;
      
      var §%!S§:uint = 0;
      
      var §^!K§:uint = 0;
      
      protected var §0$§:Boolean = false;
      
      protected var §2w§:Function;
      
      public function §0!8§(param1:String = "utf-8")
      {
         this.§2w§ = this.§1v§;
         super();
         this.§^1§ = param1;
         this.§ ![§ = new Dictionary();
         this.§9m§ = new ByteArray();
         this.§9m§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §#!3§() : Date
      {
         return this.§+!,§;
      }
      
      public function set §#!3§(param1:Date) : void
      {
         this.§+!,§ = param1 != null ? param1 : new Date();
      }
      
      public function get §^9§() : String
      {
         return this.§9N§;
      }
      
      public function set §^9§(param1:String) : void
      {
         this.§9N§ = param1;
      }
      
      function get §;!E§() : Boolean
      {
         return this.§>!X§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§0$§)
         {
            this.uncompress();
         }
         return this.§9m§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§ 4§(param1);
      }
      
      public function § 4§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§9m§,0,param1.length);
            this.§[!!§ = §-F§.§?L§(this.§9m§);
            this.§@X§ = false;
         }
         else
         {
            this.§9m§.length = 0;
            this.§9m§.position = 0;
            this.§0$§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§^!K§ = this.§%!S§ = this.§9m§.length;
         }
      }
      
      public function get §6k§() : String
      {
         return this.§",§;
      }
      
      public function get §0W§() : uint
      {
         return this.§%!S§;
      }
      
      public function get §`3§() : uint
      {
         return this.§^!K§;
      }
      
      public function §%=§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§0$§)
         {
            this.uncompress();
         }
         this.§9m§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§9m§.readUTFBytes(this.§9m§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§9m§.readMultiByte(this.§9m§.bytesAvailable,param2);
         }
         this.§9m§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §9x§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§9m§.length = 0;
         this.§9m§.position = 0;
         this.§0$§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§9m§.writeUTFBytes(param1);
            }
            else
            {
               this.§9m§.writeMultiByte(param1,param2);
            }
            this.§[!!§ = §-F§.§?L§(this.§9m§);
            this.§@X§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§^!K§ = this.§%!S§ = this.§9m§.length;
         }
      }
      
      public function §3Y§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§ 1§.§;=§);
            param1.writeShort(this.§^!6§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§ 1§.§+`§);
         }
         param1.writeShort(this.§^!6§ << 8 | 20);
         param1.writeShort(this.§^1§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§0$§ ? int(§"!@§) : int(§44§));
         var _loc5_:Date = this.§+!,§ != null ? this.§+!,§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§[!!§);
         param1.writeUnsignedInt(this.§%!S§);
         param1.writeUnsignedInt(this.§^!K§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§^1§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§9N§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§9N§,this.§^1§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§ ![§)
         {
            if((_loc15_ = this.§ ![§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§@X§)
            {
               if(_loc16_ = this.§0$§)
               {
                  this.uncompress();
               }
               this.§^!F§ = §-F§.§7e§(this.§9m§,0,this.§9m§.length);
               this.§@X§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§^!F§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§[f§.length > 0)
         {
            if(this.§^1§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§[f§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§[f§,this.§^1§);
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
         if(!param3 && this.§9m§.length > 0)
         {
            if(this.§0$§)
            {
               if(§;!c§ || §]V§)
               {
                  _loc13_ = this.§9m§.length;
                  param1.writeBytes(this.§9m§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§9m§.length - 6;
                  param1.writeBytes(this.§9m§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§9m§.length;
               param1.writeBytes(this.§9m§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§2w§(param1))
         {
         }
         return this.§2w§ === this.§,0§;
      }
      
      protected function §,0§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §1v§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§0!§(param1);
            if(this.§8&§ + this.§[!a§ > 0)
            {
               this.§2w§ = this.§1R§;
            }
            else
            {
               this.§2w§ = this.§%!J§;
            }
            return true;
         }
         return false;
      }
      
      protected function §1R§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§8&§ + this.§[!a§)
         {
            this.§<!`§(param1);
            this.§2w§ = this.§%!J§;
            return true;
         }
         return false;
      }
      
      protected function §%!J§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§>!X§)
         {
            this.§2w§ = this.§,0§;
            _loc2_ = false;
         }
         else if(this.§%!S§ == 0)
         {
            this.§2w§ = this.§,0§;
         }
         else if(param1.bytesAvailable >= this.§%!S§)
         {
            this.§35§(param1);
            this.§2w§ = this.§,0§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §0!§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§^!6§ = _loc2_ >> 8;
         this.§",§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§;§ = param1.readUnsignedShort();
         this.§'!X§ = (_loc3_ & 1) !== 0;
         this.§>!X§ = (_loc3_ & 8) !== 0;
         this.§?b§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§^1§ = "utf-8";
         }
         if(this.§;§ === §3e§)
         {
            this.§?!'§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§'!B§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§;§ === §"!@§)
         {
            this.§-b§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§+!,§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§[!!§ = param1.readUnsignedInt();
         this.§%!S§ = param1.readUnsignedInt();
         this.§^!K§ = param1.readUnsignedInt();
         this.§8&§ = param1.readUnsignedShort();
         this.§[!a§ = param1.readUnsignedShort();
      }
      
      protected function §<!`§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§^1§ == "utf-8")
         {
            this.§9N§ = param1.readUTFBytes(this.§8&§);
         }
         else
         {
            this.§9N§ = param1.readMultiByte(this.§8&§,this.§^1§);
         }
         var _loc2_:uint = this.§[!a§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§9N§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§^!F§ = param1.readUnsignedInt();
               this.§@X§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§ ![§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §35§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§;§ === §"!@§ && !this.§'!X§)
         {
            if(§;!c§ || §]V§)
            {
               param1.readBytes(this.§9m§,0,this.§%!S§);
            }
            else
            {
               if(!this.§@X§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§9m§.writeByte(120);
               _loc2_ = ~this.§-b§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§9m§.writeByte(_loc2_);
               param1.readBytes(this.§9m§,2,this.§%!S§);
               this.§9m§.position = this.§9m§.length;
               this.§9m§.writeUnsignedInt(this.§^!F§);
            }
            this.§0$§ = true;
         }
         else
         {
            if(this.§;§ != §44§)
            {
               throw new Error("Compression method " + this.§;§ + " is not supported.");
            }
            param1.readBytes(this.§9m§,0,this.§%!S§);
            this.§0$§ = false;
         }
         this.§9m§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§0$§)
         {
            if(this.§9m§.length > 0)
            {
               this.§9m§.position = 0;
               this.§^!K§ = this.§9m§.length;
               if(§]V§)
               {
                  this.§9m§.deflate();
                  this.§%!S§ = this.§9m§.length;
               }
               else if(§;!c§)
               {
                  this.§9m§.compress.apply(this.§9m§,["deflate"]);
                  this.§%!S§ = this.§9m§.length;
               }
               else
               {
                  this.§9m§.compress();
                  this.§%!S§ = this.§9m§.length - 6;
               }
               this.§9m§.position = 0;
               this.§0$§ = true;
            }
            else
            {
               this.§%!S§ = 0;
               this.§^!K§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§0$§ && this.§9m§.length > 0)
         {
            this.§9m§.position = 0;
            if(§]V§)
            {
               this.§9m§.inflate();
            }
            else if(§;!c§)
            {
               this.§9m§.uncompress.apply(this.§9m§,["deflate"]);
            }
            else
            {
               this.§9m§.uncompress();
            }
            this.§9m§.position = 0;
            this.§0$§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§9N§ + "\n  date:" + this.§+!,§ + "\n  sizeCompressed:" + this.§%!S§ + "\n  sizeUncompressed:" + this.§^!K§ + "\n  versionHost:" + this.§^!6§ + "\n  versionNumber:" + this.§",§ + "\n  compressionMethod:" + this.§;§ + "\n  encrypted:" + this.§'!X§ + "\n  hasDataDescriptor:" + this.§>!X§ + "\n  hasCompressedPatchedData:" + this.§?b§ + "\n  filenameEncoding:" + this.§^1§ + "\n  crc32:" + this.§[!!§.toString(16) + "\n  adler32:" + this.§^!F§.toString(16);
      }
   }
}

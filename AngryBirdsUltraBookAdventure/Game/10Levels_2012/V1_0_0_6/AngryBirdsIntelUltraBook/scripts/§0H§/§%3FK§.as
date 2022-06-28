package §0H§
{
   import §4!$§.§'!x§;
   import flash.utils.*;
   
   public class §?K§
   {
      
      public static const §`p§:int = 0;
      
      public static const §3C§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §9,§:int = 6;
      
      public static const §9J§:int = 7;
      
      public static const §#%§:int = 8;
      
      public static const §3!_§:int = 9;
      
      public static const §6!]§:int = 10;
      
      protected static var §[#§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §"J§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var § I§:int = 0;
      
      protected var §20§:String = "2.0";
      
      protected var §7!G§:int = 8;
      
      protected var § !t§:Boolean = false;
      
      protected var § `§:int = -1;
      
      protected var §^!b§:int = -1;
      
      protected var §?z§:int = -1;
      
      protected var §-!A§:Boolean = false;
      
      protected var §2!7§:Boolean = false;
      
      protected var §"@§:Date;
      
      protected var §?#§:uint;
      
      protected var §`n§:Boolean = false;
      
      protected var §>!@§:uint = 0;
      
      protected var §5!u§:uint = 0;
      
      protected var §'p§:String = "";
      
      protected var §1!B§:String;
      
      protected var §,n§:Dictionary;
      
      protected var §`!S§:String = "";
      
      protected var §0f§:ByteArray;
      
      var §5!1§:uint;
      
      var §1!3§:uint = 0;
      
      var §4B§:uint = 0;
      
      protected var §7s§:Boolean = false;
      
      protected var §@!R§:Function;
      
      public function §?K§(param1:String = "utf-8")
      {
         this.§@!R§ = this.§1!a§;
         super();
         this.§1!B§ = param1;
         this.§,n§ = new Dictionary();
         this.§0f§ = new ByteArray();
         this.§0f§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §^A§() : Date
      {
         return this.§"@§;
      }
      
      public function set §^A§(param1:Date) : void
      {
         this.§"@§ = param1 != null ? param1 : new Date();
      }
      
      public function get §-F§() : String
      {
         return this.§'p§;
      }
      
      public function set §-F§(param1:String) : void
      {
         this.§'p§ = param1;
      }
      
      function get §>!;§() : Boolean
      {
         return this.§-!A§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§7s§)
         {
            this.uncompress();
         }
         return this.§0f§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§1!0§(param1);
      }
      
      public function §1!0§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§0f§,0,param1.length);
            this.§5!1§ = §'!x§.§,!Y§(this.§0f§);
            this.§`n§ = false;
         }
         else
         {
            this.§0f§.length = 0;
            this.§0f§.position = 0;
            this.§7s§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§4B§ = this.§1!3§ = this.§0f§.length;
         }
      }
      
      public function get §4M§() : String
      {
         return this.§20§;
      }
      
      public function get §`!i§() : uint
      {
         return this.§1!3§;
      }
      
      public function get §?9§() : uint
      {
         return this.§4B§;
      }
      
      public function §'M§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§7s§)
         {
            this.uncompress();
         }
         this.§0f§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§0f§.readUTFBytes(this.§0f§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§0f§.readMultiByte(this.§0f§.bytesAvailable,param2);
         }
         this.§0f§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §'!C§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§0f§.length = 0;
         this.§0f§.position = 0;
         this.§7s§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§0f§.writeUTFBytes(param1);
            }
            else
            {
               this.§0f§.writeMultiByte(param1,param2);
            }
            this.§5!1§ = §'!x§.§,!Y§(this.§0f§);
            this.§`n§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§4B§ = this.§1!3§ = this.§0f§.length;
         }
      }
      
      public function §-!p§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§8h§.§+9§);
            param1.writeShort(this.§ I§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§8h§.§ R§);
         }
         param1.writeShort(this.§ I§ << 8 | 20);
         param1.writeShort(this.§1!B§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§7s§ ? int(§#%§) : int(§`p§));
         var _loc5_:Date = this.§"@§ != null ? this.§"@§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§5!1§);
         param1.writeUnsignedInt(this.§1!3§);
         param1.writeUnsignedInt(this.§4B§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§1!B§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§'p§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§'p§,this.§1!B§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§,n§)
         {
            if((_loc15_ = this.§,n§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§`n§)
            {
               if(_loc16_ = this.§7s§)
               {
                  this.uncompress();
               }
               this.§?#§ = §'!x§.§;m§(this.§0f§,0,this.§0f§.length);
               this.§`n§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§?#§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§`!S§.length > 0)
         {
            if(this.§1!B§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§`!S§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§`!S§,this.§1!B§);
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
         if(!param3 && this.§0f§.length > 0)
         {
            if(this.§7s§)
            {
               if(§[#§ || §"J§)
               {
                  _loc13_ = this.§0f§.length;
                  param1.writeBytes(this.§0f§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§0f§.length - 6;
                  param1.writeBytes(this.§0f§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§0f§.length;
               param1.writeBytes(this.§0f§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§@!R§(param1))
         {
         }
         return this.§@!R§ === this.§%W§;
      }
      
      protected function §%W§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §1!a§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§!f§(param1);
            if(this.§>!@§ + this.§5!u§ > 0)
            {
               this.§@!R§ = this.§6!-§;
            }
            else
            {
               this.§@!R§ = this.§0!K§;
            }
            return true;
         }
         return false;
      }
      
      protected function §6!-§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§>!@§ + this.§5!u§)
         {
            this.§,§(param1);
            this.§@!R§ = this.§0!K§;
            return true;
         }
         return false;
      }
      
      protected function §0!K§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§-!A§)
         {
            this.§@!R§ = this.§%W§;
            _loc2_ = false;
         }
         else if(this.§1!3§ == 0)
         {
            this.§@!R§ = this.§%W§;
         }
         else if(param1.bytesAvailable >= this.§1!3§)
         {
            this.§7f§(param1);
            this.§@!R§ = this.§%W§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §!f§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§ I§ = _loc2_ >> 8;
         this.§20§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§7!G§ = param1.readUnsignedShort();
         this.§ !t§ = (_loc3_ & 1) !== 0;
         this.§-!A§ = (_loc3_ & 8) !== 0;
         this.§2!7§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§1!B§ = "utf-8";
         }
         if(this.§7!G§ === §9,§)
         {
            this.§ `§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§^!b§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§7!G§ === §#%§)
         {
            this.§?z§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§"@§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§5!1§ = param1.readUnsignedInt();
         this.§1!3§ = param1.readUnsignedInt();
         this.§4B§ = param1.readUnsignedInt();
         this.§>!@§ = param1.readUnsignedShort();
         this.§5!u§ = param1.readUnsignedShort();
      }
      
      protected function §,§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§1!B§ == "utf-8")
         {
            this.§'p§ = param1.readUTFBytes(this.§>!@§);
         }
         else
         {
            this.§'p§ = param1.readMultiByte(this.§>!@§,this.§1!B§);
         }
         var _loc2_:uint = this.§5!u§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§'p§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§?#§ = param1.readUnsignedInt();
               this.§`n§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§,n§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §7f§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§7!G§ === §#%§ && !this.§ !t§)
         {
            if(§[#§ || §"J§)
            {
               param1.readBytes(this.§0f§,0,this.§1!3§);
            }
            else
            {
               if(!this.§`n§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§0f§.writeByte(120);
               _loc2_ = ~this.§?z§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§0f§.writeByte(_loc2_);
               param1.readBytes(this.§0f§,2,this.§1!3§);
               this.§0f§.position = this.§0f§.length;
               this.§0f§.writeUnsignedInt(this.§?#§);
            }
            this.§7s§ = true;
         }
         else
         {
            if(this.§7!G§ != §`p§)
            {
               throw new Error("Compression method " + this.§7!G§ + " is not supported.");
            }
            param1.readBytes(this.§0f§,0,this.§1!3§);
            this.§7s§ = false;
         }
         this.§0f§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§7s§)
         {
            if(this.§0f§.length > 0)
            {
               this.§0f§.position = 0;
               this.§4B§ = this.§0f§.length;
               if(§"J§)
               {
                  this.§0f§.deflate();
                  this.§1!3§ = this.§0f§.length;
               }
               else if(§[#§)
               {
                  this.§0f§.compress.apply(this.§0f§,["deflate"]);
                  this.§1!3§ = this.§0f§.length;
               }
               else
               {
                  this.§0f§.compress();
                  this.§1!3§ = this.§0f§.length - 6;
               }
               this.§0f§.position = 0;
               this.§7s§ = true;
            }
            else
            {
               this.§1!3§ = 0;
               this.§4B§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§7s§ && this.§0f§.length > 0)
         {
            this.§0f§.position = 0;
            if(§"J§)
            {
               this.§0f§.inflate();
            }
            else if(§[#§)
            {
               this.§0f§.uncompress.apply(this.§0f§,["deflate"]);
            }
            else
            {
               this.§0f§.uncompress();
            }
            this.§0f§.position = 0;
            this.§7s§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§'p§ + "\n  date:" + this.§"@§ + "\n  sizeCompressed:" + this.§1!3§ + "\n  sizeUncompressed:" + this.§4B§ + "\n  versionHost:" + this.§ I§ + "\n  versionNumber:" + this.§20§ + "\n  compressionMethod:" + this.§7!G§ + "\n  encrypted:" + this.§ !t§ + "\n  hasDataDescriptor:" + this.§-!A§ + "\n  hasCompressedPatchedData:" + this.§2!7§ + "\n  filenameEncoding:" + this.§1!B§ + "\n  crc32:" + this.§5!1§.toString(16) + "\n  adler32:" + this.§?#§.toString(16);
      }
   }
}

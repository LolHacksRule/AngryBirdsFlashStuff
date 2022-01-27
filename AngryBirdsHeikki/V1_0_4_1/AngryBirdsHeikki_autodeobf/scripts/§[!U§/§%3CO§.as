package §[!U§
{
   import §-6§.§2z§;
   import flash.utils.*;
   
   public class §<O§
   {
      
      public static const §?;§:int = 0;
      
      public static const §8!>§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §3!G§:int = 6;
      
      public static const §<f§:int = 7;
      
      public static const §<!K§:int = 8;
      
      public static const §6!;§:int = 9;
      
      public static const §--§:int = 10;
      
      protected static var §7!5§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §^w§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §2!;§:int = 0;
      
      protected var §6X§:String = "2.0";
      
      protected var §#X§:int = 8;
      
      protected var §6d§:Boolean = false;
      
      protected var §7!&§:int = -1;
      
      protected var §?Q§:int = -1;
      
      protected var §`!`§:int = -1;
      
      protected var §5!§:Boolean = false;
      
      protected var §[E§:Boolean = false;
      
      protected var §97§:Date;
      
      protected var §"?§:uint;
      
      protected var §8!$§:Boolean = false;
      
      protected var §7J§:uint = 0;
      
      protected var §@!T§:uint = 0;
      
      protected var §`s§:String = "";
      
      protected var §'!G§:String;
      
      protected var §2%§:Dictionary;
      
      protected var § L§:String = "";
      
      protected var §;9§:ByteArray;
      
      var §&[§:uint;
      
      var § !<§:uint = 0;
      
      var §`%§:uint = 0;
      
      protected var §>8§:Boolean = false;
      
      protected var §+0§:Function;
      
      public function §<O§(param1:String = "utf-8")
      {
         this.§+0§ = this.§5L§;
         super();
         this.§'!G§ = param1;
         this.§2%§ = new Dictionary();
         this.§;9§ = new ByteArray();
         this.§;9§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §]?§() : Date
      {
         return this.§97§;
      }
      
      public function set §]?§(param1:Date) : void
      {
         this.§97§ = param1 != null ? param1 : new Date();
      }
      
      public function get §"!N§() : String
      {
         return this.§`s§;
      }
      
      public function set §"!N§(param1:String) : void
      {
         this.§`s§ = param1;
      }
      
      function get §`!@§() : Boolean
      {
         return this.§5!§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§>8§)
         {
            this.uncompress();
         }
         return this.§;9§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§[w§(param1);
      }
      
      public function §[w§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§;9§,0,param1.length);
            this.§&[§ = §2z§.§9!§(this.§;9§);
            this.§8!$§ = false;
         }
         else
         {
            this.§;9§.length = 0;
            this.§;9§.position = 0;
            this.§>8§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§`%§ = this.§ !<§ = this.§;9§.length;
         }
      }
      
      public function get §>!8§() : String
      {
         return this.§6X§;
      }
      
      public function get §`;§() : uint
      {
         return this.§ !<§;
      }
      
      public function get §["§() : uint
      {
         return this.§`%§;
      }
      
      public function §"!Z§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§>8§)
         {
            this.uncompress();
         }
         this.§;9§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§;9§.readUTFBytes(this.§;9§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§;9§.readMultiByte(this.§;9§.bytesAvailable,param2);
         }
         this.§;9§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §,W§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§;9§.length = 0;
         this.§;9§.position = 0;
         this.§>8§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§;9§.writeUTFBytes(param1);
            }
            else
            {
               this.§;9§.writeMultiByte(param1,param2);
            }
            this.§&[§ = §2z§.§9!§(this.§;9§);
            this.§8!$§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§`%§ = this.§ !<§ = this.§;9§.length;
         }
      }
      
      public function §!0§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§?y§.§each §);
            param1.writeShort(this.§2!;§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§?y§.§8!C§);
         }
         param1.writeShort(this.§2!;§ << 8 | 20);
         param1.writeShort(this.§'!G§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§>8§ ? int(§<!K§) : int(§?;§));
         var _loc5_:Date = this.§97§ != null ? this.§97§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§&[§);
         param1.writeUnsignedInt(this.§ !<§);
         param1.writeUnsignedInt(this.§`%§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§'!G§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§`s§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§`s§,this.§'!G§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§2%§)
         {
            if((_loc15_ = this.§2%§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§8!$§)
            {
               if(_loc16_ = this.§>8§)
               {
                  this.uncompress();
               }
               this.§"?§ = §2z§.§@!$§(this.§;9§,0,this.§;9§.length);
               this.§8!$§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§"?§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§ L§.length > 0)
         {
            if(this.§'!G§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§ L§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§ L§,this.§'!G§);
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
         if(!param3 && this.§;9§.length > 0)
         {
            if(this.§>8§)
            {
               if(§7!5§ || §^w§)
               {
                  _loc13_ = this.§;9§.length;
                  param1.writeBytes(this.§;9§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§;9§.length - 6;
                  param1.writeBytes(this.§;9§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§;9§.length;
               param1.writeBytes(this.§;9§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§+0§(param1))
         {
         }
         return this.§+0§ === this.§+M§;
      }
      
      protected function §+M§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §5L§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§!R§(param1);
            if(this.§7J§ + this.§@!T§ > 0)
            {
               this.§+0§ = this.§%D§;
            }
            else
            {
               this.§+0§ = this.§08§;
            }
            return true;
         }
         return false;
      }
      
      protected function §%D§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§7J§ + this.§@!T§)
         {
            this.§0!I§(param1);
            this.§+0§ = this.§08§;
            return true;
         }
         return false;
      }
      
      protected function §08§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§5!§)
         {
            this.§+0§ = this.§+M§;
            _loc2_ = false;
         }
         else if(this.§ !<§ == 0)
         {
            this.§+0§ = this.§+M§;
         }
         else if(param1.bytesAvailable >= this.§ !<§)
         {
            this.§'!@§(param1);
            this.§+0§ = this.§+M§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §!R§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§2!;§ = _loc2_ >> 8;
         this.§6X§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§#X§ = param1.readUnsignedShort();
         this.§6d§ = (_loc3_ & 1) !== 0;
         this.§5!§ = (_loc3_ & 8) !== 0;
         this.§[E§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§'!G§ = "utf-8";
         }
         if(this.§#X§ === §3!G§)
         {
            this.§7!&§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§?Q§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§#X§ === §<!K§)
         {
            this.§`!`§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§97§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§&[§ = param1.readUnsignedInt();
         this.§ !<§ = param1.readUnsignedInt();
         this.§`%§ = param1.readUnsignedInt();
         this.§7J§ = param1.readUnsignedShort();
         this.§@!T§ = param1.readUnsignedShort();
      }
      
      protected function §0!I§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§'!G§ == "utf-8")
         {
            this.§`s§ = param1.readUTFBytes(this.§7J§);
         }
         else
         {
            this.§`s§ = param1.readMultiByte(this.§7J§,this.§'!G§);
         }
         var _loc2_:uint = this.§@!T§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§`s§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§"?§ = param1.readUnsignedInt();
               this.§8!$§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§2%§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §'!@§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§#X§ === §<!K§ && !this.§6d§)
         {
            if(§7!5§ || §^w§)
            {
               param1.readBytes(this.§;9§,0,this.§ !<§);
            }
            else
            {
               if(!this.§8!$§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§;9§.writeByte(120);
               _loc2_ = ~this.§`!`§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§;9§.writeByte(_loc2_);
               param1.readBytes(this.§;9§,2,this.§ !<§);
               this.§;9§.position = this.§;9§.length;
               this.§;9§.writeUnsignedInt(this.§"?§);
            }
            this.§>8§ = true;
         }
         else
         {
            if(this.§#X§ != §?;§)
            {
               throw new Error("Compression method " + this.§#X§ + " is not supported.");
            }
            param1.readBytes(this.§;9§,0,this.§ !<§);
            this.§>8§ = false;
         }
         this.§;9§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§>8§)
         {
            if(this.§;9§.length > 0)
            {
               this.§;9§.position = 0;
               this.§`%§ = this.§;9§.length;
               if(§^w§)
               {
                  this.§;9§.deflate();
                  this.§ !<§ = this.§;9§.length;
               }
               else if(§7!5§)
               {
                  this.§;9§.compress.apply(this.§;9§,["deflate"]);
                  this.§ !<§ = this.§;9§.length;
               }
               else
               {
                  this.§;9§.compress();
                  this.§ !<§ = this.§;9§.length - 6;
               }
               this.§;9§.position = 0;
               this.§>8§ = true;
            }
            else
            {
               this.§ !<§ = 0;
               this.§`%§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§>8§ && this.§;9§.length > 0)
         {
            this.§;9§.position = 0;
            if(§^w§)
            {
               this.§;9§.inflate();
            }
            else if(§7!5§)
            {
               this.§;9§.uncompress.apply(this.§;9§,["deflate"]);
            }
            else
            {
               this.§;9§.uncompress();
            }
            this.§;9§.position = 0;
            this.§>8§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§`s§ + "\n  date:" + this.§97§ + "\n  sizeCompressed:" + this.§ !<§ + "\n  sizeUncompressed:" + this.§`%§ + "\n  versionHost:" + this.§2!;§ + "\n  versionNumber:" + this.§6X§ + "\n  compressionMethod:" + this.§#X§ + "\n  encrypted:" + this.§6d§ + "\n  hasDataDescriptor:" + this.§5!§ + "\n  hasCompressedPatchedData:" + this.§[E§ + "\n  filenameEncoding:" + this.§'!G§ + "\n  crc32:" + this.§&[§.toString(16) + "\n  adler32:" + this.§"?§.toString(16);
      }
   }
}

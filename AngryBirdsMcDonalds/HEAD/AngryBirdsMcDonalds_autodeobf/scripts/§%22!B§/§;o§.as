package §"!B§
{
   import §#e§.§-<§;
   import flash.utils.*;
   
   public class §;o§
   {
      
      public static const §<D§:int = 0;
      
      public static const §]k§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §,h§:int = 6;
      
      public static const § !a§:int = 7;
      
      public static const §=8§:int = 8;
      
      public static const §1!k§:int = 9;
      
      public static const §#H§:int = 10;
      
      protected static var §&!d§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §9!$§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §<!;§:int = 0;
      
      protected var §<H§:String = "2.0";
      
      protected var §?R§:int = 8;
      
      protected var §,w§:Boolean = false;
      
      protected var §+!9§:int = -1;
      
      protected var §0!H§:int = -1;
      
      protected var §`Z§:int = -1;
      
      protected var §>N§:Boolean = false;
      
      protected var §3!I§:Boolean = false;
      
      protected var §[!C§:Date;
      
      protected var §<t§:uint;
      
      protected var § !!§:Boolean = false;
      
      protected var §?!e§:uint = 0;
      
      protected var §]c§:uint = 0;
      
      protected var §2`§:String = "";
      
      protected var §#6§:String;
      
      protected var §]X§:Dictionary;
      
      protected var §+V§:String = "";
      
      protected var §break§:ByteArray;
      
      var §]!5§:uint;
      
      var §9!'§:uint = 0;
      
      var §@o§:uint = 0;
      
      protected var §=r§:Boolean = false;
      
      protected var §;!j§:Function;
      
      public function §;o§(param1:String = "utf-8")
      {
         this.§;!j§ = this.§2]§;
         super();
         this.§#6§ = param1;
         this.§]X§ = new Dictionary();
         this.§break§ = new ByteArray();
         this.§break§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §0n§() : Date
      {
         return this.§[!C§;
      }
      
      public function set §0n§(param1:Date) : void
      {
         this.§[!C§ = param1 != null ? param1 : new Date();
      }
      
      public function get §#!G§() : String
      {
         return this.§2`§;
      }
      
      public function set §#!G§(param1:String) : void
      {
         this.§2`§ = param1;
      }
      
      function get §@c§() : Boolean
      {
         return this.§>N§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§=r§)
         {
            this.uncompress();
         }
         return this.§break§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§&b§(param1);
      }
      
      public function §&b§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§break§,0,param1.length);
            this.§]!5§ = §-<§.§`;§(this.§break§);
            this.§ !!§ = false;
         }
         else
         {
            this.§break§.length = 0;
            this.§break§.position = 0;
            this.§=r§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§@o§ = this.§9!'§ = this.§break§.length;
         }
      }
      
      public function get §-!C§() : String
      {
         return this.§<H§;
      }
      
      public function get §`!§() : uint
      {
         return this.§9!'§;
      }
      
      public function get §;!@§() : uint
      {
         return this.§@o§;
      }
      
      public function §-!Y§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§=r§)
         {
            this.uncompress();
         }
         this.§break§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§break§.readUTFBytes(this.§break§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§break§.readMultiByte(this.§break§.bytesAvailable,param2);
         }
         this.§break§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §1!^§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§break§.length = 0;
         this.§break§.position = 0;
         this.§=r§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§break§.writeUTFBytes(param1);
            }
            else
            {
               this.§break§.writeMultiByte(param1,param2);
            }
            this.§]!5§ = §-<§.§`;§(this.§break§);
            this.§ !!§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§@o§ = this.§9!'§ = this.§break§.length;
         }
      }
      
      public function §2u§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§&,§.§?F§);
            param1.writeShort(this.§<!;§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§&,§.§'!a§);
         }
         param1.writeShort(this.§<!;§ << 8 | 20);
         param1.writeShort(this.§#6§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§=r§ ? int(§=8§) : int(§<D§));
         var _loc5_:Date = this.§[!C§ != null ? this.§[!C§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§]!5§);
         param1.writeUnsignedInt(this.§9!'§);
         param1.writeUnsignedInt(this.§@o§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§#6§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§2`§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§2`§,this.§#6§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§]X§)
         {
            if((_loc15_ = this.§]X§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§ !!§)
            {
               if(_loc16_ = this.§=r§)
               {
                  this.uncompress();
               }
               this.§<t§ = §-<§.§3!g§(this.§break§,0,this.§break§.length);
               this.§ !!§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§<t§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§+V§.length > 0)
         {
            if(this.§#6§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§+V§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§+V§,this.§#6§);
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
         if(!param3 && this.§break§.length > 0)
         {
            if(this.§=r§)
            {
               if(§&!d§ || §9!$§)
               {
                  _loc13_ = this.§break§.length;
                  param1.writeBytes(this.§break§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§break§.length - 6;
                  param1.writeBytes(this.§break§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§break§.length;
               param1.writeBytes(this.§break§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§;!j§(param1))
         {
         }
         return this.§;!j§ === this.§?!>§;
      }
      
      protected function §?!>§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §2]§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§+v§(param1);
            if(this.§?!e§ + this.§]c§ > 0)
            {
               this.§;!j§ = this.§#>§;
            }
            else
            {
               this.§;!j§ = this.§^q§;
            }
            return true;
         }
         return false;
      }
      
      protected function §#>§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§?!e§ + this.§]c§)
         {
            this.§8!@§(param1);
            this.§;!j§ = this.§^q§;
            return true;
         }
         return false;
      }
      
      protected function §^q§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§>N§)
         {
            this.§;!j§ = this.§?!>§;
            _loc2_ = false;
         }
         else if(this.§9!'§ == 0)
         {
            this.§;!j§ = this.§?!>§;
         }
         else if(param1.bytesAvailable >= this.§9!'§)
         {
            this.§"z§(param1);
            this.§;!j§ = this.§?!>§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §+v§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§<!;§ = _loc2_ >> 8;
         this.§<H§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§?R§ = param1.readUnsignedShort();
         this.§,w§ = (_loc3_ & 1) !== 0;
         this.§>N§ = (_loc3_ & 8) !== 0;
         this.§3!I§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§#6§ = "utf-8";
         }
         if(this.§?R§ === §,h§)
         {
            this.§+!9§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§0!H§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§?R§ === §=8§)
         {
            this.§`Z§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§[!C§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§]!5§ = param1.readUnsignedInt();
         this.§9!'§ = param1.readUnsignedInt();
         this.§@o§ = param1.readUnsignedInt();
         this.§?!e§ = param1.readUnsignedShort();
         this.§]c§ = param1.readUnsignedShort();
      }
      
      protected function §8!@§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§#6§ == "utf-8")
         {
            this.§2`§ = param1.readUTFBytes(this.§?!e§);
         }
         else
         {
            this.§2`§ = param1.readMultiByte(this.§?!e§,this.§#6§);
         }
         var _loc2_:uint = this.§]c§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§2`§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§<t§ = param1.readUnsignedInt();
               this.§ !!§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§]X§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §"z§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§?R§ === §=8§ && !this.§,w§)
         {
            if(§&!d§ || §9!$§)
            {
               param1.readBytes(this.§break§,0,this.§9!'§);
            }
            else
            {
               if(!this.§ !!§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§break§.writeByte(120);
               _loc2_ = ~this.§`Z§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§break§.writeByte(_loc2_);
               param1.readBytes(this.§break§,2,this.§9!'§);
               this.§break§.position = this.§break§.length;
               this.§break§.writeUnsignedInt(this.§<t§);
            }
            this.§=r§ = true;
         }
         else
         {
            if(this.§?R§ != §<D§)
            {
               throw new Error("Compression method " + this.§?R§ + " is not supported.");
            }
            param1.readBytes(this.§break§,0,this.§9!'§);
            this.§=r§ = false;
         }
         this.§break§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§=r§)
         {
            if(this.§break§.length > 0)
            {
               this.§break§.position = 0;
               this.§@o§ = this.§break§.length;
               if(§9!$§)
               {
                  this.§break§.deflate();
                  this.§9!'§ = this.§break§.length;
               }
               else if(§&!d§)
               {
                  this.§break§.compress.apply(this.§break§,["deflate"]);
                  this.§9!'§ = this.§break§.length;
               }
               else
               {
                  this.§break§.compress();
                  this.§9!'§ = this.§break§.length - 6;
               }
               this.§break§.position = 0;
               this.§=r§ = true;
            }
            else
            {
               this.§9!'§ = 0;
               this.§@o§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§=r§ && this.§break§.length > 0)
         {
            this.§break§.position = 0;
            if(§9!$§)
            {
               this.§break§.inflate();
            }
            else if(§&!d§)
            {
               this.§break§.uncompress.apply(this.§break§,["deflate"]);
            }
            else
            {
               this.§break§.uncompress();
            }
            this.§break§.position = 0;
            this.§=r§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§2`§ + "\n  date:" + this.§[!C§ + "\n  sizeCompressed:" + this.§9!'§ + "\n  sizeUncompressed:" + this.§@o§ + "\n  versionHost:" + this.§<!;§ + "\n  versionNumber:" + this.§<H§ + "\n  compressionMethod:" + this.§?R§ + "\n  encrypted:" + this.§,w§ + "\n  hasDataDescriptor:" + this.§>N§ + "\n  hasCompressedPatchedData:" + this.§3!I§ + "\n  filenameEncoding:" + this.§#6§ + "\n  crc32:" + this.§]!5§.toString(16) + "\n  adler32:" + this.§<t§.toString(16);
      }
   }
}

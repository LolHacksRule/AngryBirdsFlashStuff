package §0!H§
{
   import §4!S§.§=P§;
   import flash.utils.*;
   
   public class §^!?§
   {
      
      public static const §1k§:int = 0;
      
      public static const §9m§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §^5§:int = 6;
      
      public static const §=!^§:int = 7;
      
      public static const §&A§:int = 8;
      
      public static const §?!F§:int = 9;
      
      public static const §<t§:int = 10;
      
      protected static var §0f§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §,R§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §?!@§:int = 0;
      
      protected var §0!Q§:String = "2.0";
      
      protected var §8t§:int = 8;
      
      protected var §1!Q§:Boolean = false;
      
      protected var §3!t§:int = -1;
      
      protected var §4!V§:int = -1;
      
      protected var §<!^§:int = -1;
      
      protected var §4!D§:Boolean = false;
      
      protected var § V§:Boolean = false;
      
      protected var §2y§:Date;
      
      protected var §^!t§:uint;
      
      protected var §1!>§:Boolean = false;
      
      protected var §%d§:uint = 0;
      
      protected var §[!B§:uint = 0;
      
      protected var §2!A§:String = "";
      
      protected var §!X§:String;
      
      protected var §?i§:Dictionary;
      
      protected var §3`§:String = "";
      
      protected var §'!U§:ByteArray;
      
      var §&c§:uint;
      
      var §0O§:uint = 0;
      
      var §5&§:uint = 0;
      
      protected var §7!&§:Boolean = false;
      
      protected var §&l§:Function;
      
      public function §^!?§(param1:String = "utf-8")
      {
         this.§&l§ = this.§;!D§;
         super();
         this.§!X§ = param1;
         this.§?i§ = new Dictionary();
         this.§'!U§ = new ByteArray();
         this.§'!U§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §?!U§() : Date
      {
         return this.§2y§;
      }
      
      public function set §?!U§(param1:Date) : void
      {
         this.§2y§ = param1 != null ? param1 : new Date();
      }
      
      public function get §1L§() : String
      {
         return this.§2!A§;
      }
      
      public function set §1L§(param1:String) : void
      {
         this.§2!A§ = param1;
      }
      
      function get § !9§() : Boolean
      {
         return this.§4!D§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§7!&§)
         {
            this.uncompress();
         }
         return this.§'!U§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§3+§(param1);
      }
      
      public function §3+§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§'!U§,0,param1.length);
            this.§&c§ = §=P§.§>K§(this.§'!U§);
            this.§1!>§ = false;
         }
         else
         {
            this.§'!U§.length = 0;
            this.§'!U§.position = 0;
            this.§7!&§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§5&§ = this.§0O§ = this.§'!U§.length;
         }
      }
      
      public function get §#v§() : String
      {
         return this.§0!Q§;
      }
      
      public function get §9!-§() : uint
      {
         return this.§0O§;
      }
      
      public function get §4!?§() : uint
      {
         return this.§5&§;
      }
      
      public function § !m§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§7!&§)
         {
            this.uncompress();
         }
         this.§'!U§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§'!U§.readUTFBytes(this.§'!U§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§'!U§.readMultiByte(this.§'!U§.bytesAvailable,param2);
         }
         this.§'!U§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §?M§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§'!U§.length = 0;
         this.§'!U§.position = 0;
         this.§7!&§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§'!U§.writeUTFBytes(param1);
            }
            else
            {
               this.§'!U§.writeMultiByte(param1,param2);
            }
            this.§&c§ = §=P§.§>K§(this.§'!U§);
            this.§1!>§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§5&§ = this.§0O§ = this.§'!U§.length;
         }
      }
      
      public function §'!9§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§1!y§.§2!X§);
            param1.writeShort(this.§?!@§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§1!y§.§]!r§);
         }
         param1.writeShort(this.§?!@§ << 8 | 20);
         param1.writeShort(this.§!X§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§7!&§ ? int(§&A§) : int(§1k§));
         var _loc5_:Date = this.§2y§ != null ? this.§2y§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§&c§);
         param1.writeUnsignedInt(this.§0O§);
         param1.writeUnsignedInt(this.§5&§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§!X§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§2!A§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§2!A§,this.§!X§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§?i§)
         {
            if((_loc15_ = this.§?i§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§1!>§)
            {
               if(_loc16_ = this.§7!&§)
               {
                  this.uncompress();
               }
               this.§^!t§ = §=P§.§]!a§(this.§'!U§,0,this.§'!U§.length);
               this.§1!>§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§^!t§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§3`§.length > 0)
         {
            if(this.§!X§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§3`§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§3`§,this.§!X§);
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
         if(!param3 && this.§'!U§.length > 0)
         {
            if(this.§7!&§)
            {
               if(§0f§ || §,R§)
               {
                  _loc13_ = this.§'!U§.length;
                  param1.writeBytes(this.§'!U§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§'!U§.length - 6;
                  param1.writeBytes(this.§'!U§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§'!U§.length;
               param1.writeBytes(this.§'!U§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§&l§(param1))
         {
         }
         return this.§&l§ === this.§9?§;
      }
      
      protected function §9?§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §;!D§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§9r§(param1);
            if(this.§%d§ + this.§[!B§ > 0)
            {
               this.§&l§ = this.§[[§;
            }
            else
            {
               this.§&l§ = this.§1!O§;
            }
            return true;
         }
         return false;
      }
      
      protected function §[[§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§%d§ + this.§[!B§)
         {
            this.§>!K§(param1);
            this.§&l§ = this.§1!O§;
            return true;
         }
         return false;
      }
      
      protected function §1!O§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§4!D§)
         {
            this.§&l§ = this.§9?§;
            _loc2_ = false;
         }
         else if(this.§0O§ == 0)
         {
            this.§&l§ = this.§9?§;
         }
         else if(param1.bytesAvailable >= this.§0O§)
         {
            this.§!! §(param1);
            this.§&l§ = this.§9?§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §9r§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§?!@§ = _loc2_ >> 8;
         this.§0!Q§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§8t§ = param1.readUnsignedShort();
         this.§1!Q§ = (_loc3_ & 1) !== 0;
         this.§4!D§ = (_loc3_ & 8) !== 0;
         this.§ V§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§!X§ = "utf-8";
         }
         if(this.§8t§ === §^5§)
         {
            this.§3!t§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§4!V§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§8t§ === §&A§)
         {
            this.§<!^§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§2y§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§&c§ = param1.readUnsignedInt();
         this.§0O§ = param1.readUnsignedInt();
         this.§5&§ = param1.readUnsignedInt();
         this.§%d§ = param1.readUnsignedShort();
         this.§[!B§ = param1.readUnsignedShort();
      }
      
      protected function §>!K§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§!X§ == "utf-8")
         {
            this.§2!A§ = param1.readUTFBytes(this.§%d§);
         }
         else
         {
            this.§2!A§ = param1.readMultiByte(this.§%d§,this.§!X§);
         }
         var _loc2_:uint = this.§[!B§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§2!A§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§^!t§ = param1.readUnsignedInt();
               this.§1!>§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§?i§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §!! §(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§8t§ === §&A§ && !this.§1!Q§)
         {
            if(§0f§ || §,R§)
            {
               param1.readBytes(this.§'!U§,0,this.§0O§);
            }
            else
            {
               if(!this.§1!>§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§'!U§.writeByte(120);
               _loc2_ = ~this.§<!^§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§'!U§.writeByte(_loc2_);
               param1.readBytes(this.§'!U§,2,this.§0O§);
               this.§'!U§.position = this.§'!U§.length;
               this.§'!U§.writeUnsignedInt(this.§^!t§);
            }
            this.§7!&§ = true;
         }
         else
         {
            if(this.§8t§ != §1k§)
            {
               throw new Error("Compression method " + this.§8t§ + " is not supported.");
            }
            param1.readBytes(this.§'!U§,0,this.§0O§);
            this.§7!&§ = false;
         }
         this.§'!U§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§7!&§)
         {
            if(this.§'!U§.length > 0)
            {
               this.§'!U§.position = 0;
               this.§5&§ = this.§'!U§.length;
               if(§,R§)
               {
                  this.§'!U§.deflate();
                  this.§0O§ = this.§'!U§.length;
               }
               else if(§0f§)
               {
                  this.§'!U§.compress.apply(this.§'!U§,["deflate"]);
                  this.§0O§ = this.§'!U§.length;
               }
               else
               {
                  this.§'!U§.compress();
                  this.§0O§ = this.§'!U§.length - 6;
               }
               this.§'!U§.position = 0;
               this.§7!&§ = true;
            }
            else
            {
               this.§0O§ = 0;
               this.§5&§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§7!&§ && this.§'!U§.length > 0)
         {
            this.§'!U§.position = 0;
            if(§,R§)
            {
               this.§'!U§.inflate();
            }
            else if(§0f§)
            {
               this.§'!U§.uncompress.apply(this.§'!U§,["deflate"]);
            }
            else
            {
               this.§'!U§.uncompress();
            }
            this.§'!U§.position = 0;
            this.§7!&§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§2!A§ + "\n  date:" + this.§2y§ + "\n  sizeCompressed:" + this.§0O§ + "\n  sizeUncompressed:" + this.§5&§ + "\n  versionHost:" + this.§?!@§ + "\n  versionNumber:" + this.§0!Q§ + "\n  compressionMethod:" + this.§8t§ + "\n  encrypted:" + this.§1!Q§ + "\n  hasDataDescriptor:" + this.§4!D§ + "\n  hasCompressedPatchedData:" + this.§ V§ + "\n  filenameEncoding:" + this.§!X§ + "\n  crc32:" + this.§&c§.toString(16) + "\n  adler32:" + this.§^!t§.toString(16);
      }
   }
}

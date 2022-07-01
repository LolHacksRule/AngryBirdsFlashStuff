package §8'§
{
   import §!!3§.§'!g§;
   import flash.utils.*;
   
   public class §]!"§
   {
      
      public static const §?z§:int = 0;
      
      public static const §&!%§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §,!D§:int = 6;
      
      public static const §%`§:int = 7;
      
      public static const §3!D§:int = 8;
      
      public static const §?!n§:int = 9;
      
      public static const §+!v§:int = 10;
      
      protected static var § var§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §`!u§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var § !X§:int = 0;
      
      protected var §;M§:String = "2.0";
      
      protected var §#1§:int = 8;
      
      protected var §%5§:Boolean = false;
      
      protected var §-s§:int = -1;
      
      protected var §7!K§:int = -1;
      
      protected var §#9§:int = -1;
      
      protected var §0!'§:Boolean = false;
      
      protected var §`!L§:Boolean = false;
      
      protected var §?-§:Date;
      
      protected var §=!,§:uint;
      
      protected var §4o§:Boolean = false;
      
      protected var §7j§:uint = 0;
      
      protected var §%!e§:uint = 0;
      
      protected var §#&§:String = "";
      
      protected var §&8§:String;
      
      protected var §3z§:Dictionary;
      
      protected var §&!V§:String = "";
      
      protected var §[C§:ByteArray;
      
      var §;! §:uint;
      
      var §>!Q§:uint = 0;
      
      var §3!m§:uint = 0;
      
      protected var §@!^§:Boolean = false;
      
      protected var §+!O§:Function;
      
      public function §]!"§(param1:String = "utf-8")
      {
         this.§+!O§ = this.§1"!§;
         super();
         this.§&8§ = param1;
         this.§3z§ = new Dictionary();
         this.§[C§ = new ByteArray();
         this.§[C§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §!!B§() : Date
      {
         return this.§?-§;
      }
      
      public function set §!!B§(param1:Date) : void
      {
         this.§?-§ = param1 != null ? param1 : new Date();
      }
      
      public function get §">§() : String
      {
         return this.§#&§;
      }
      
      public function set §">§(param1:String) : void
      {
         this.§#&§ = param1;
      }
      
      function get §#i§() : Boolean
      {
         return this.§0!'§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§@!^§)
         {
            this.uncompress();
         }
         return this.§[C§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§]!§(param1);
      }
      
      public function §]!§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§[C§,0,param1.length);
            this.§;! § = §'!g§.§%!q§(this.§[C§);
            this.§4o§ = false;
         }
         else
         {
            this.§[C§.length = 0;
            this.§[C§.position = 0;
            this.§@!^§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§3!m§ = this.§>!Q§ = this.§[C§.length;
         }
      }
      
      public function get §@!'§() : String
      {
         return this.§;M§;
      }
      
      public function get §@!m§() : uint
      {
         return this.§>!Q§;
      }
      
      public function get §=!!§() : uint
      {
         return this.§3!m§;
      }
      
      public function §4!>§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§@!^§)
         {
            this.uncompress();
         }
         this.§[C§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§[C§.readUTFBytes(this.§[C§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§[C§.readMultiByte(this.§[C§.bytesAvailable,param2);
         }
         this.§[C§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §"4§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§[C§.length = 0;
         this.§[C§.position = 0;
         this.§@!^§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§[C§.writeUTFBytes(param1);
            }
            else
            {
               this.§[C§.writeMultiByte(param1,param2);
            }
            this.§;! § = §'!g§.§%!q§(this.§[C§);
            this.§4o§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§3!m§ = this.§>!Q§ = this.§[C§.length;
         }
      }
      
      public function §^!;§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§@!e§.§9h§);
            param1.writeShort(this.§ !X§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§@!e§.§?W§);
         }
         param1.writeShort(this.§ !X§ << 8 | 20);
         param1.writeShort(this.§&8§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§@!^§ ? int(§3!D§) : int(§?z§));
         var _loc5_:Date = this.§?-§ != null ? this.§?-§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§;! §);
         param1.writeUnsignedInt(this.§>!Q§);
         param1.writeUnsignedInt(this.§3!m§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§&8§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§#&§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§#&§,this.§&8§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§3z§)
         {
            if((_loc15_ = this.§3z§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§4o§)
            {
               if(_loc16_ = this.§@!^§)
               {
                  this.uncompress();
               }
               this.§=!,§ = §'!g§.§&n§(this.§[C§,0,this.§[C§.length);
               this.§4o§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§=!,§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§&!V§.length > 0)
         {
            if(this.§&8§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§&!V§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§&!V§,this.§&8§);
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
         if(!param3 && this.§[C§.length > 0)
         {
            if(this.§@!^§)
            {
               if(§ var§ || §`!u§)
               {
                  _loc13_ = this.§[C§.length;
                  param1.writeBytes(this.§[C§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§[C§.length - 6;
                  param1.writeBytes(this.§[C§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§[C§.length;
               param1.writeBytes(this.§[C§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§+!O§(param1))
         {
         }
         return this.§+!O§ === this.§>!^§;
      }
      
      protected function §>!^§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §1"!§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§[4§(param1);
            if(this.§7j§ + this.§%!e§ > 0)
            {
               this.§+!O§ = this.§#"'§;
            }
            else
            {
               this.§+!O§ = this.§%e§;
            }
            return true;
         }
         return false;
      }
      
      protected function §#"'§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§7j§ + this.§%!e§)
         {
            this.§=!C§(param1);
            this.§+!O§ = this.§%e§;
            return true;
         }
         return false;
      }
      
      protected function §%e§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§0!'§)
         {
            this.§+!O§ = this.§>!^§;
            _loc2_ = false;
         }
         else if(this.§>!Q§ == 0)
         {
            this.§+!O§ = this.§>!^§;
         }
         else if(param1.bytesAvailable >= this.§>!Q§)
         {
            this.parseContent(param1);
            this.§+!O§ = this.§>!^§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §[4§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§ !X§ = _loc2_ >> 8;
         this.§;M§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§#1§ = param1.readUnsignedShort();
         this.§%5§ = (_loc3_ & 1) !== 0;
         this.§0!'§ = (_loc3_ & 8) !== 0;
         this.§`!L§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§&8§ = "utf-8";
         }
         if(this.§#1§ === §,!D§)
         {
            this.§-s§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§7!K§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§#1§ === §3!D§)
         {
            this.§#9§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§?-§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§;! § = param1.readUnsignedInt();
         this.§>!Q§ = param1.readUnsignedInt();
         this.§3!m§ = param1.readUnsignedInt();
         this.§7j§ = param1.readUnsignedShort();
         this.§%!e§ = param1.readUnsignedShort();
      }
      
      protected function §=!C§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§&8§ == "utf-8")
         {
            this.§#&§ = param1.readUTFBytes(this.§7j§);
         }
         else
         {
            this.§#&§ = param1.readMultiByte(this.§7j§,this.§&8§);
         }
         var _loc2_:uint = this.§%!e§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§#&§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§=!,§ = param1.readUnsignedInt();
               this.§4o§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§3z§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function parseContent(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§#1§ === §3!D§ && !this.§%5§)
         {
            if(§ var§ || §`!u§)
            {
               param1.readBytes(this.§[C§,0,this.§>!Q§);
            }
            else
            {
               if(!this.§4o§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§[C§.writeByte(120);
               _loc2_ = ~this.§#9§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§[C§.writeByte(_loc2_);
               param1.readBytes(this.§[C§,2,this.§>!Q§);
               this.§[C§.position = this.§[C§.length;
               this.§[C§.writeUnsignedInt(this.§=!,§);
            }
            this.§@!^§ = true;
         }
         else
         {
            if(this.§#1§ != §?z§)
            {
               throw new Error("Compression method " + this.§#1§ + " is not supported.");
            }
            param1.readBytes(this.§[C§,0,this.§>!Q§);
            this.§@!^§ = false;
         }
         this.§[C§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§@!^§)
         {
            if(this.§[C§.length > 0)
            {
               this.§[C§.position = 0;
               this.§3!m§ = this.§[C§.length;
               if(§`!u§)
               {
                  this.§[C§.deflate();
                  this.§>!Q§ = this.§[C§.length;
               }
               else if(§ var§)
               {
                  this.§[C§.compress.apply(this.§[C§,["deflate"]);
                  this.§>!Q§ = this.§[C§.length;
               }
               else
               {
                  this.§[C§.compress();
                  this.§>!Q§ = this.§[C§.length - 6;
               }
               this.§[C§.position = 0;
               this.§@!^§ = true;
            }
            else
            {
               this.§>!Q§ = 0;
               this.§3!m§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§@!^§ && this.§[C§.length > 0)
         {
            this.§[C§.position = 0;
            if(§`!u§)
            {
               this.§[C§.inflate();
            }
            else if(§ var§)
            {
               this.§[C§.uncompress.apply(this.§[C§,["deflate"]);
            }
            else
            {
               this.§[C§.uncompress();
            }
            this.§[C§.position = 0;
            this.§@!^§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§#&§ + "\n  date:" + this.§?-§ + "\n  sizeCompressed:" + this.§>!Q§ + "\n  sizeUncompressed:" + this.§3!m§ + "\n  versionHost:" + this.§ !X§ + "\n  versionNumber:" + this.§;M§ + "\n  compressionMethod:" + this.§#1§ + "\n  encrypted:" + this.§%5§ + "\n  hasDataDescriptor:" + this.§0!'§ + "\n  hasCompressedPatchedData:" + this.§`!L§ + "\n  filenameEncoding:" + this.§&8§ + "\n  crc32:" + this.§;! §.toString(16) + "\n  adler32:" + this.§=!,§.toString(16);
      }
   }
}

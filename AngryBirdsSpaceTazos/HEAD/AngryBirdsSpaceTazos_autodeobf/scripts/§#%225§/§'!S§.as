package §#"5§
{
   import § c§.§?"&§;
   import flash.utils.*;
   
   public class §'!S§
   {
      
      public static const §[d§:int = 0;
      
      public static const §88§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §7=§:int = 6;
      
      public static const §%o§:int = 7;
      
      public static const §^Z§:int = 8;
      
      public static const §5X§:int = 9;
      
      public static const §9!X§:int = 10;
      
      protected static var §do §:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §4!r§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §1k§:int = 0;
      
      protected var §2M§:String = "2.0";
      
      protected var §5L§:int = 8;
      
      protected var §@"3§:Boolean = false;
      
      protected var §>;§:int = -1;
      
      protected var § B§:int = -1;
      
      protected var §%]§:int = -1;
      
      protected var §%!R§:Boolean = false;
      
      protected var §6"@§:Boolean = false;
      
      protected var §5J§:Date;
      
      protected var §]e§:uint;
      
      protected var §`!u§:Boolean = false;
      
      protected var §47§:uint = 0;
      
      protected var §+!O§:uint = 0;
      
      protected var §"x§:String = "";
      
      protected var §?!E§:String;
      
      protected var §?!]§:Dictionary;
      
      protected var §@!D§:String = "";
      
      protected var §"!;§:ByteArray;
      
      var §%!u§:uint;
      
      var §7!K§:uint = 0;
      
      var §,g§:uint = 0;
      
      protected var § "1§:Boolean = false;
      
      protected var §<J§:Function;
      
      public function §'!S§(param1:String = "utf-8")
      {
         this.§<J§ = this.§9!Z§;
         super();
         this.§?!E§ = param1;
         this.§?!]§ = new Dictionary();
         this.§"!;§ = new ByteArray();
         this.§"!;§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get date() : Date
      {
         return this.§5J§;
      }
      
      public function set date(param1:Date) : void
      {
         this.§5J§ = param1 != null ? param1 : new Date();
      }
      
      public function get §&"§() : String
      {
         return this.§"x§;
      }
      
      public function set §&"§(param1:String) : void
      {
         this.§"x§ = param1;
      }
      
      function get §&!9§() : Boolean
      {
         return this.§%!R§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§ "1§)
         {
            this.uncompress();
         }
         return this.§"!;§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§]!h§(param1);
      }
      
      public function §]!h§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§"!;§,0,param1.length);
            this.§%!u§ = §?"&§.§'!y§(this.§"!;§);
            this.§`!u§ = false;
         }
         else
         {
            this.§"!;§.length = 0;
            this.§"!;§.position = 0;
            this.§ "1§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§,g§ = this.§7!K§ = this.§"!;§.length;
         }
      }
      
      public function get §%!_§() : String
      {
         return this.§2M§;
      }
      
      public function get §!!o§() : uint
      {
         return this.§7!K§;
      }
      
      public function get §@"4§() : uint
      {
         return this.§,g§;
      }
      
      public function §]!L§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§ "1§)
         {
            this.uncompress();
         }
         this.§"!;§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§"!;§.readUTFBytes(this.§"!;§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§"!;§.readMultiByte(this.§"!;§.bytesAvailable,param2);
         }
         this.§"!;§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §4!i§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§"!;§.length = 0;
         this.§"!;§.position = 0;
         this.§ "1§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§"!;§.writeUTFBytes(param1);
            }
            else
            {
               this.§"!;§.writeMultiByte(param1,param2);
            }
            this.§%!u§ = §?"&§.§'!y§(this.§"!;§);
            this.§`!u§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§,g§ = this.§7!K§ = this.§"!;§.length;
         }
      }
      
      public function §7!!§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§`c§.§=!V§);
            param1.writeShort(this.§1k§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§`c§.§,n§);
         }
         param1.writeShort(this.§1k§ << 8 | 20);
         param1.writeShort(this.§?!E§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§ "1§ ? int(§^Z§) : int(§[d§));
         var _loc5_:Date = this.§5J§ != null ? this.§5J§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§%!u§);
         param1.writeUnsignedInt(this.§7!K§);
         param1.writeUnsignedInt(this.§,g§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§?!E§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§"x§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§"x§,this.§?!E§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§?!]§)
         {
            if((_loc15_ = this.§?!]§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§`!u§)
            {
               if(_loc16_ = this.§ "1§)
               {
                  this.uncompress();
               }
               this.§]e§ = §?"&§.§,§(this.§"!;§,0,this.§"!;§.length);
               this.§`!u§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§]e§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§@!D§.length > 0)
         {
            if(this.§?!E§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§@!D§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§@!D§,this.§?!E§);
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
         if(!param3 && this.§"!;§.length > 0)
         {
            if(this.§ "1§)
            {
               if(§do § || §4!r§)
               {
                  _loc13_ = this.§"!;§.length;
                  param1.writeBytes(this.§"!;§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§"!;§.length - 6;
                  param1.writeBytes(this.§"!;§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§"!;§.length;
               param1.writeBytes(this.§"!;§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§<J§(param1))
         {
         }
         return this.§<J§ === this.§!t§;
      }
      
      protected function §!t§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §9!Z§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§+!"§(param1);
            if(this.§47§ + this.§+!O§ > 0)
            {
               this.§<J§ = this.§ !r§;
            }
            else
            {
               this.§<J§ = this.§6!f§;
            }
            return true;
         }
         return false;
      }
      
      protected function § !r§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§47§ + this.§+!O§)
         {
            this.§]!I§(param1);
            this.§<J§ = this.§6!f§;
            return true;
         }
         return false;
      }
      
      protected function §6!f§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§%!R§)
         {
            this.§<J§ = this.§!t§;
            _loc2_ = false;
         }
         else if(this.§7!K§ == 0)
         {
            this.§<J§ = this.§!t§;
         }
         else if(param1.bytesAvailable >= this.§7!K§)
         {
            this.§,![§(param1);
            this.§<J§ = this.§!t§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §+!"§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§1k§ = _loc2_ >> 8;
         this.§2M§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§5L§ = param1.readUnsignedShort();
         this.§@"3§ = (_loc3_ & 1) !== 0;
         this.§%!R§ = (_loc3_ & 8) !== 0;
         this.§6"@§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§?!E§ = "utf-8";
         }
         if(this.§5L§ === §7=§)
         {
            this.§>;§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§ B§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§5L§ === §^Z§)
         {
            this.§%]§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§5J§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§%!u§ = param1.readUnsignedInt();
         this.§7!K§ = param1.readUnsignedInt();
         this.§,g§ = param1.readUnsignedInt();
         this.§47§ = param1.readUnsignedShort();
         this.§+!O§ = param1.readUnsignedShort();
      }
      
      protected function §]!I§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§?!E§ == "utf-8")
         {
            this.§"x§ = param1.readUTFBytes(this.§47§);
         }
         else
         {
            this.§"x§ = param1.readMultiByte(this.§47§,this.§?!E§);
         }
         var _loc2_:uint = this.§+!O§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§"x§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§]e§ = param1.readUnsignedInt();
               this.§`!u§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§?!]§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §,![§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§5L§ === §^Z§ && !this.§@"3§)
         {
            if(§do § || §4!r§)
            {
               param1.readBytes(this.§"!;§,0,this.§7!K§);
            }
            else
            {
               if(!this.§`!u§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§"!;§.writeByte(120);
               _loc2_ = ~this.§%]§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§"!;§.writeByte(_loc2_);
               param1.readBytes(this.§"!;§,2,this.§7!K§);
               this.§"!;§.position = this.§"!;§.length;
               this.§"!;§.writeUnsignedInt(this.§]e§);
            }
            this.§ "1§ = true;
         }
         else
         {
            if(this.§5L§ != §[d§)
            {
               throw new Error("Compression method " + this.§5L§ + " is not supported.");
            }
            param1.readBytes(this.§"!;§,0,this.§7!K§);
            this.§ "1§ = false;
         }
         this.§"!;§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§ "1§)
         {
            if(this.§"!;§.length > 0)
            {
               this.§"!;§.position = 0;
               this.§,g§ = this.§"!;§.length;
               if(§4!r§)
               {
                  this.§"!;§.deflate();
                  this.§7!K§ = this.§"!;§.length;
               }
               else if(§do §)
               {
                  this.§"!;§.compress.apply(this.§"!;§,["deflate"]);
                  this.§7!K§ = this.§"!;§.length;
               }
               else
               {
                  this.§"!;§.compress();
                  this.§7!K§ = this.§"!;§.length - 6;
               }
               this.§"!;§.position = 0;
               this.§ "1§ = true;
            }
            else
            {
               this.§7!K§ = 0;
               this.§,g§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§ "1§ && this.§"!;§.length > 0)
         {
            this.§"!;§.position = 0;
            if(§4!r§)
            {
               this.§"!;§.inflate();
            }
            else if(§do §)
            {
               this.§"!;§.uncompress.apply(this.§"!;§,["deflate"]);
            }
            else
            {
               this.§"!;§.uncompress();
            }
            this.§"!;§.position = 0;
            this.§ "1§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§"x§ + "\n  date:" + this.§5J§ + "\n  sizeCompressed:" + this.§7!K§ + "\n  sizeUncompressed:" + this.§,g§ + "\n  versionHost:" + this.§1k§ + "\n  versionNumber:" + this.§2M§ + "\n  compressionMethod:" + this.§5L§ + "\n  encrypted:" + this.§@"3§ + "\n  hasDataDescriptor:" + this.§%!R§ + "\n  hasCompressedPatchedData:" + this.§6"@§ + "\n  filenameEncoding:" + this.§?!E§ + "\n  crc32:" + this.§%!u§.toString(16) + "\n  adler32:" + this.§]e§.toString(16);
      }
   }
}

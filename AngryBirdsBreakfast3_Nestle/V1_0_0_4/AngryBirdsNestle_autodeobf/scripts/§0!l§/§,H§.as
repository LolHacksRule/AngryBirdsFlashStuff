package §0!l§
{
   import §1E§.§ V§;
   import flash.utils.*;
   
   public class §,H§
   {
      
      public static const §?!3§:int = 0;
      
      public static const §9!0§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §7!§:int = 6;
      
      public static const §@"4§:int = 7;
      
      public static const §!!n§:int = 8;
      
      public static const §=M§:int = 9;
      
      public static const §?!b§:int = 10;
      
      protected static var §=!W§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §2t§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §4Y§:int = 0;
      
      protected var §=5§:String = "2.0";
      
      protected var §5E§:int = 8;
      
      protected var §"n§:Boolean = false;
      
      protected var §5=§:int = -1;
      
      protected var §%x§:int = -1;
      
      protected var §?p§:int = -1;
      
      protected var §9!q§:Boolean = false;
      
      protected var §#!w§:Boolean = false;
      
      protected var § !2§:Date;
      
      protected var §,b§:uint;
      
      protected var §`#§:Boolean = false;
      
      protected var §3!E§:uint = 0;
      
      protected var §'j§:uint = 0;
      
      protected var §!!_§:String = "";
      
      protected var §;6§:String;
      
      protected var §<!p§:Dictionary;
      
      protected var §;!;§:String = "";
      
      protected var §1!^§:ByteArray;
      
      var §9n§:uint;
      
      var §&?§:uint = 0;
      
      var §`!d§:uint = 0;
      
      protected var §+t§:Boolean = false;
      
      protected var §%W§:Function;
      
      public function §,H§(param1:String = "utf-8")
      {
         this.§%W§ = this.dynamic;
         super();
         this.§;6§ = param1;
         this.§<!p§ = new Dictionary();
         this.§1!^§ = new ByteArray();
         this.§1!^§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §'o§() : Date
      {
         return this.§ !2§;
      }
      
      public function set §'o§(param1:Date) : void
      {
         this.§ !2§ = param1 != null ? param1 : new Date();
      }
      
      public function get §!O§() : String
      {
         return this.§!!_§;
      }
      
      public function set §!O§(param1:String) : void
      {
         this.§!!_§ = param1;
      }
      
      function get §+!r§() : Boolean
      {
         return this.§9!q§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§+t§)
         {
            this.uncompress();
         }
         return this.§1!^§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§'!#§(param1);
      }
      
      public function §'!#§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§1!^§,0,param1.length);
            this.§9n§ = § V§.§-!&§(this.§1!^§);
            this.§`#§ = false;
         }
         else
         {
            this.§1!^§.length = 0;
            this.§1!^§.position = 0;
            this.§+t§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§`!d§ = this.§&?§ = this.§1!^§.length;
         }
      }
      
      public function get native() : String
      {
         return this.§=5§;
      }
      
      public function get §=u§() : uint
      {
         return this.§&?§;
      }
      
      public function get §<![§() : uint
      {
         return this.§`!d§;
      }
      
      public function §+!4§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§+t§)
         {
            this.uncompress();
         }
         this.§1!^§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§1!^§.readUTFBytes(this.§1!^§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§1!^§.readMultiByte(this.§1!^§.bytesAvailable,param2);
         }
         this.§1!^§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §>!p§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§1!^§.length = 0;
         this.§1!^§.position = 0;
         this.§+t§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§1!^§.writeUTFBytes(param1);
            }
            else
            {
               this.§1!^§.writeMultiByte(param1,param2);
            }
            this.§9n§ = § V§.§-!&§(this.§1!^§);
            this.§`#§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§`!d§ = this.§&?§ = this.§1!^§.length;
         }
      }
      
      public function § "-§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§3"§.§["2§);
            param1.writeShort(this.§4Y§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§3"§.§&'§);
         }
         param1.writeShort(this.§4Y§ << 8 | 20);
         param1.writeShort(this.§;6§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§+t§ ? int(§!!n§) : int(§?!3§));
         var _loc5_:Date = this.§ !2§ != null ? this.§ !2§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§9n§);
         param1.writeUnsignedInt(this.§&?§);
         param1.writeUnsignedInt(this.§`!d§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§;6§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§!!_§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§!!_§,this.§;6§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§<!p§)
         {
            if((_loc15_ = this.§<!p§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§`#§)
            {
               if(_loc16_ = this.§+t§)
               {
                  this.uncompress();
               }
               this.§,b§ = § V§.§'!=§(this.§1!^§,0,this.§1!^§.length);
               this.§`#§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§,b§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§;!;§.length > 0)
         {
            if(this.§;6§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§;!;§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§;!;§,this.§;6§);
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
         if(!param3 && this.§1!^§.length > 0)
         {
            if(this.§+t§)
            {
               if(§=!W§ || §2t§)
               {
                  _loc13_ = this.§1!^§.length;
                  param1.writeBytes(this.§1!^§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§1!^§.length - 6;
                  param1.writeBytes(this.§1!^§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§1!^§.length;
               param1.writeBytes(this.§1!^§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§%W§(param1))
         {
         }
         return this.§%W§ === this.§7!X§;
      }
      
      protected function §7!X§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function dynamic(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§8!Y§(param1);
            if(this.§3!E§ + this.§'j§ > 0)
            {
               this.§%W§ = this.§-O§;
            }
            else
            {
               this.§%W§ = this.§%!%§;
            }
            return true;
         }
         return false;
      }
      
      protected function §-O§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§3!E§ + this.§'j§)
         {
            this.§5!O§(param1);
            this.§%W§ = this.§%!%§;
            return true;
         }
         return false;
      }
      
      protected function §%!%§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§9!q§)
         {
            this.§%W§ = this.§7!X§;
            _loc2_ = false;
         }
         else if(this.§&?§ == 0)
         {
            this.§%W§ = this.§7!X§;
         }
         else if(param1.bytesAvailable >= this.§&?§)
         {
            this.parseContent(param1);
            this.§%W§ = this.§7!X§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §8!Y§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§4Y§ = _loc2_ >> 8;
         this.§=5§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§5E§ = param1.readUnsignedShort();
         this.§"n§ = (_loc3_ & 1) !== 0;
         this.§9!q§ = (_loc3_ & 8) !== 0;
         this.§#!w§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§;6§ = "utf-8";
         }
         if(this.§5E§ === §7!§)
         {
            this.§5=§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§%x§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§5E§ === §!!n§)
         {
            this.§?p§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§ !2§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§9n§ = param1.readUnsignedInt();
         this.§&?§ = param1.readUnsignedInt();
         this.§`!d§ = param1.readUnsignedInt();
         this.§3!E§ = param1.readUnsignedShort();
         this.§'j§ = param1.readUnsignedShort();
      }
      
      protected function §5!O§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§;6§ == "utf-8")
         {
            this.§!!_§ = param1.readUTFBytes(this.§3!E§);
         }
         else
         {
            this.§!!_§ = param1.readMultiByte(this.§3!E§,this.§;6§);
         }
         var _loc2_:uint = this.§'j§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§!!_§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§,b§ = param1.readUnsignedInt();
               this.§`#§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§<!p§[_loc3_] = _loc5_;
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
         if(this.§5E§ === §!!n§ && !this.§"n§)
         {
            if(§=!W§ || §2t§)
            {
               param1.readBytes(this.§1!^§,0,this.§&?§);
            }
            else
            {
               if(!this.§`#§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§1!^§.writeByte(120);
               _loc2_ = ~this.§?p§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§1!^§.writeByte(_loc2_);
               param1.readBytes(this.§1!^§,2,this.§&?§);
               this.§1!^§.position = this.§1!^§.length;
               this.§1!^§.writeUnsignedInt(this.§,b§);
            }
            this.§+t§ = true;
         }
         else
         {
            if(this.§5E§ != §?!3§)
            {
               throw new Error("Compression method " + this.§5E§ + " is not supported.");
            }
            param1.readBytes(this.§1!^§,0,this.§&?§);
            this.§+t§ = false;
         }
         this.§1!^§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§+t§)
         {
            if(this.§1!^§.length > 0)
            {
               this.§1!^§.position = 0;
               this.§`!d§ = this.§1!^§.length;
               if(§2t§)
               {
                  this.§1!^§.deflate();
                  this.§&?§ = this.§1!^§.length;
               }
               else if(§=!W§)
               {
                  this.§1!^§.compress.apply(this.§1!^§,["deflate"]);
                  this.§&?§ = this.§1!^§.length;
               }
               else
               {
                  this.§1!^§.compress();
                  this.§&?§ = this.§1!^§.length - 6;
               }
               this.§1!^§.position = 0;
               this.§+t§ = true;
            }
            else
            {
               this.§&?§ = 0;
               this.§`!d§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§+t§ && this.§1!^§.length > 0)
         {
            this.§1!^§.position = 0;
            if(§2t§)
            {
               this.§1!^§.inflate();
            }
            else if(§=!W§)
            {
               this.§1!^§.uncompress.apply(this.§1!^§,["deflate"]);
            }
            else
            {
               this.§1!^§.uncompress();
            }
            this.§1!^§.position = 0;
            this.§+t§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§!!_§ + "\n  date:" + this.§ !2§ + "\n  sizeCompressed:" + this.§&?§ + "\n  sizeUncompressed:" + this.§`!d§ + "\n  versionHost:" + this.§4Y§ + "\n  versionNumber:" + this.§=5§ + "\n  compressionMethod:" + this.§5E§ + "\n  encrypted:" + this.§"n§ + "\n  hasDataDescriptor:" + this.§9!q§ + "\n  hasCompressedPatchedData:" + this.§#!w§ + "\n  filenameEncoding:" + this.§;6§ + "\n  crc32:" + this.§9n§.toString(16) + "\n  adler32:" + this.§,b§.toString(16);
      }
   }
}

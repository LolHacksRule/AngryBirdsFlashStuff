package §#U§
{
   import §?x§.§'!X§;
   import flash.utils.*;
   
   public class § !`§
   {
      
      public static const §=F§:int = 0;
      
      public static const §;!R§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §79§:int = 6;
      
      public static const §`!=§:int = 7;
      
      public static const §=t§:int = 8;
      
      public static const §5!,§:int = 9;
      
      public static const §`!&§:int = 10;
      
      protected static var §;E§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §&!@§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §0G§:int = 0;
      
      protected var §[§:String = "2.0";
      
      protected var §`!I§:int = 8;
      
      protected var §`0§:Boolean = false;
      
      protected var §#!&§:int = -1;
      
      protected var §<!E§:int = -1;
      
      protected var §]>§:int = -1;
      
      protected var §+E§:Boolean = false;
      
      protected var §,e§:Boolean = false;
      
      protected var §1=§:Date;
      
      protected var §5!8§:uint;
      
      protected var §"!O§:Boolean = false;
      
      protected var §#!_§:uint = 0;
      
      protected var §'!K§:uint = 0;
      
      protected var §1!_§:String = "";
      
      protected var §3=§:String;
      
      protected var §=b§:Dictionary;
      
      protected var §6!O§:String = "";
      
      protected var §1!1§:ByteArray;
      
      var §?!F§:uint;
      
      var §1m§:uint = 0;
      
      var § 0§:uint = 0;
      
      protected var §^[§:Boolean = false;
      
      protected var §,P§:Function;
      
      public function § !`§(param1:String = "utf-8")
      {
         this.§,P§ = this.§#!4§;
         super();
         this.§3=§ = param1;
         this.§=b§ = new Dictionary();
         this.§1!1§ = new ByteArray();
         this.§1!1§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §4V§() : Date
      {
         return this.§1=§;
      }
      
      public function set §4V§(param1:Date) : void
      {
         this.§1=§ = param1 != null ? param1 : new Date();
      }
      
      public function get §;!F§() : String
      {
         return this.§1!_§;
      }
      
      public function set §;!F§(param1:String) : void
      {
         this.§1!_§ = param1;
      }
      
      function get §3!>§() : Boolean
      {
         return this.§+E§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§^[§)
         {
            this.uncompress();
         }
         return this.§1!1§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§-@§(param1);
      }
      
      public function §-@§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§1!1§,0,param1.length);
            this.§?!F§ = §'!X§.§%!>§(this.§1!1§);
            this.§"!O§ = false;
         }
         else
         {
            this.§1!1§.length = 0;
            this.§1!1§.position = 0;
            this.§^[§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§ 0§ = this.§1m§ = this.§1!1§.length;
         }
      }
      
      public function get §6+§() : String
      {
         return this.§[§;
      }
      
      public function get §@!<§() : uint
      {
         return this.§1m§;
      }
      
      public function get §!!U§() : uint
      {
         return this.§ 0§;
      }
      
      public function §`@§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§^[§)
         {
            this.uncompress();
         }
         this.§1!1§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§1!1§.readUTFBytes(this.§1!1§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§1!1§.readMultiByte(this.§1!1§.bytesAvailable,param2);
         }
         this.§1!1§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §<o§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§1!1§.length = 0;
         this.§1!1§.position = 0;
         this.§^[§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§1!1§.writeUTFBytes(param1);
            }
            else
            {
               this.§1!1§.writeMultiByte(param1,param2);
            }
            this.§?!F§ = §'!X§.§%!>§(this.§1!1§);
            this.§"!O§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§ 0§ = this.§1m§ = this.§1!1§.length;
         }
      }
      
      public function §use §(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§+!X§.§0X§);
            param1.writeShort(this.§0G§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§+!X§.§"<§);
         }
         param1.writeShort(this.§0G§ << 8 | 20);
         param1.writeShort(this.§3=§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§^[§ ? int(§=t§) : int(§=F§));
         var _loc5_:Date = this.§1=§ != null ? this.§1=§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§?!F§);
         param1.writeUnsignedInt(this.§1m§);
         param1.writeUnsignedInt(this.§ 0§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§3=§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§1!_§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§1!_§,this.§3=§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§=b§)
         {
            if((_loc15_ = this.§=b§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§"!O§)
            {
               if(_loc16_ = this.§^[§)
               {
                  this.uncompress();
               }
               this.§5!8§ = §'!X§.§%6§(this.§1!1§,0,this.§1!1§.length);
               this.§"!O§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§5!8§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§6!O§.length > 0)
         {
            if(this.§3=§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§6!O§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§6!O§,this.§3=§);
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
         if(!param3 && this.§1!1§.length > 0)
         {
            if(this.§^[§)
            {
               if(§;E§ || §&!@§)
               {
                  _loc13_ = this.§1!1§.length;
                  param1.writeBytes(this.§1!1§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§1!1§.length - 6;
                  param1.writeBytes(this.§1!1§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§1!1§.length;
               param1.writeBytes(this.§1!1§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§,P§(param1))
         {
         }
         return this.§,P§ === this.§56§;
      }
      
      protected function §56§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §#!4§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§?9§(param1);
            if(this.§#!_§ + this.§'!K§ > 0)
            {
               this.§,P§ = this.§1g§;
            }
            else
            {
               this.§,P§ = this.§&K§;
            }
            return true;
         }
         return false;
      }
      
      protected function §1g§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§#!_§ + this.§'!K§)
         {
            this.§;i§(param1);
            this.§,P§ = this.§&K§;
            return true;
         }
         return false;
      }
      
      protected function §&K§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§+E§)
         {
            this.§,P§ = this.§56§;
            _loc2_ = false;
         }
         else if(this.§1m§ == 0)
         {
            this.§,P§ = this.§56§;
         }
         else if(param1.bytesAvailable >= this.§1m§)
         {
            this.§1!^§(param1);
            this.§,P§ = this.§56§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §?9§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§0G§ = _loc2_ >> 8;
         this.§[§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§`!I§ = param1.readUnsignedShort();
         this.§`0§ = (_loc3_ & 1) !== 0;
         this.§+E§ = (_loc3_ & 8) !== 0;
         this.§,e§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§3=§ = "utf-8";
         }
         if(this.§`!I§ === §79§)
         {
            this.§#!&§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§<!E§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§`!I§ === §=t§)
         {
            this.§]>§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§1=§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§?!F§ = param1.readUnsignedInt();
         this.§1m§ = param1.readUnsignedInt();
         this.§ 0§ = param1.readUnsignedInt();
         this.§#!_§ = param1.readUnsignedShort();
         this.§'!K§ = param1.readUnsignedShort();
      }
      
      protected function §;i§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§3=§ == "utf-8")
         {
            this.§1!_§ = param1.readUTFBytes(this.§#!_§);
         }
         else
         {
            this.§1!_§ = param1.readMultiByte(this.§#!_§,this.§3=§);
         }
         var _loc2_:uint = this.§'!K§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§1!_§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§5!8§ = param1.readUnsignedInt();
               this.§"!O§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§=b§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §1!^§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§`!I§ === §=t§ && !this.§`0§)
         {
            if(§;E§ || §&!@§)
            {
               param1.readBytes(this.§1!1§,0,this.§1m§);
            }
            else
            {
               if(!this.§"!O§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§1!1§.writeByte(120);
               _loc2_ = ~this.§]>§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§1!1§.writeByte(_loc2_);
               param1.readBytes(this.§1!1§,2,this.§1m§);
               this.§1!1§.position = this.§1!1§.length;
               this.§1!1§.writeUnsignedInt(this.§5!8§);
            }
            this.§^[§ = true;
         }
         else
         {
            if(this.§`!I§ != §=F§)
            {
               throw new Error("Compression method " + this.§`!I§ + " is not supported.");
            }
            param1.readBytes(this.§1!1§,0,this.§1m§);
            this.§^[§ = false;
         }
         this.§1!1§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§^[§)
         {
            if(this.§1!1§.length > 0)
            {
               this.§1!1§.position = 0;
               this.§ 0§ = this.§1!1§.length;
               if(§&!@§)
               {
                  this.§1!1§.deflate();
                  this.§1m§ = this.§1!1§.length;
               }
               else if(§;E§)
               {
                  this.§1!1§.compress.apply(this.§1!1§,["deflate"]);
                  this.§1m§ = this.§1!1§.length;
               }
               else
               {
                  this.§1!1§.compress();
                  this.§1m§ = this.§1!1§.length - 6;
               }
               this.§1!1§.position = 0;
               this.§^[§ = true;
            }
            else
            {
               this.§1m§ = 0;
               this.§ 0§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§^[§ && this.§1!1§.length > 0)
         {
            this.§1!1§.position = 0;
            if(§&!@§)
            {
               this.§1!1§.inflate();
            }
            else if(§;E§)
            {
               this.§1!1§.uncompress.apply(this.§1!1§,["deflate"]);
            }
            else
            {
               this.§1!1§.uncompress();
            }
            this.§1!1§.position = 0;
            this.§^[§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§1!_§ + "\n  date:" + this.§1=§ + "\n  sizeCompressed:" + this.§1m§ + "\n  sizeUncompressed:" + this.§ 0§ + "\n  versionHost:" + this.§0G§ + "\n  versionNumber:" + this.§[§ + "\n  compressionMethod:" + this.§`!I§ + "\n  encrypted:" + this.§`0§ + "\n  hasDataDescriptor:" + this.§+E§ + "\n  hasCompressedPatchedData:" + this.§,e§ + "\n  filenameEncoding:" + this.§3=§ + "\n  crc32:" + this.§?!F§.toString(16) + "\n  adler32:" + this.§5!8§.toString(16);
      }
   }
}

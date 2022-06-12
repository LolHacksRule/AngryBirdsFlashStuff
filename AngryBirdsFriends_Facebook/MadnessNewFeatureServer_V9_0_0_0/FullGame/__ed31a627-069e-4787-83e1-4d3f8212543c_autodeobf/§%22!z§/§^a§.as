package §"!z§
{
   import §6i§.§1$#§;
   import flash.utils.*;
   
   public class §^a§
   {
      
      public static const §0!O§:int = 0;
      
      public static const §?!H§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §!#&§:int = 6;
      
      public static const §2#v§:int = 7;
      
      public static const §^!9§:int = 8;
      
      public static const §`"Z§:int = 9;
      
      public static const §4"x§:int = 10;
      
      protected static var §+$§:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").parameter.length() > 0;
      
      protected static var §^!G§:Boolean = describeType(ByteArray).factory.method.(@name == "inflate").length() > 0;
       
      
      protected var §]!H§:int = 0;
      
      protected var §#;§:String = "2.0";
      
      protected var §@!h§:int = 8;
      
      protected var §[$B§:Boolean = false;
      
      protected var §="2§:int = -1;
      
      protected var §%f§:int = -1;
      
      protected var §#"S§:int = -1;
      
      protected var §50§:Boolean = false;
      
      protected var §0!T§:Boolean = false;
      
      protected var §["c§:Date;
      
      protected var §#$!§:uint;
      
      protected var §@N§:Boolean = false;
      
      protected var §%"3§:uint = 0;
      
      protected var §#"[§:uint = 0;
      
      protected var §,"`§:String = "";
      
      protected var §?8§:String;
      
      protected var §9$+§:Dictionary;
      
      protected var §^Z§:String = "";
      
      protected var §?#]§:ByteArray;
      
      var §<"[§:uint;
      
      var §!#0§:uint = 0;
      
      var §5!l§:uint = 0;
      
      protected var §9!5§:Boolean = false;
      
      protected var §1!O§:Function;
      
      public function §^a§(param1:String = "utf-8")
      {
         this.§1!O§ = this.§%q§;
         super();
         this.§?8§ = param1;
         this.§9$+§ = new Dictionary();
         this.§?#]§ = new ByteArray();
         this.§?#]§.endian = Endian.BIG_ENDIAN;
      }
      
      public function get §-"x§() : Date
      {
         return this.§["c§;
      }
      
      public function set §-"x§(param1:Date) : void
      {
         this.§["c§ = param1 != null ? param1 : new Date();
      }
      
      public function get filename() : String
      {
         return this.§,"`§;
      }
      
      public function set filename(param1:String) : void
      {
         this.§,"`§ = param1;
      }
      
      function get §9$#§() : Boolean
      {
         return this.§50§;
      }
      
      public function get content() : ByteArray
      {
         if(this.§9!5§)
         {
            this.uncompress();
         }
         return this.§?#]§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         this.§]#U§(param1);
      }
      
      public function §]#U§(param1:ByteArray, param2:Boolean = true) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(this.§?#]§,0,param1.length);
            this.§<"[§ = §1$#§.§="K§(this.§?#]§);
            this.§@N§ = false;
         }
         else
         {
            this.§?#]§.length = 0;
            this.§?#]§.position = 0;
            this.§9!5§ = false;
         }
         if(param2)
         {
            this.compress();
         }
         else
         {
            this.§5!l§ = this.§!#0§ = this.§?#]§.length;
         }
      }
      
      public function get §6!X§() : String
      {
         return this.§#;§;
      }
      
      public function get §=!§() : uint
      {
         return this.§!#0§;
      }
      
      public function get §'#j§() : uint
      {
         return this.§5!l§;
      }
      
      public function §1$6§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:String = null;
         if(this.§9!5§)
         {
            this.uncompress();
         }
         this.§?#]§.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = this.§?#]§.readUTFBytes(this.§?#]§.bytesAvailable);
         }
         else
         {
            _loc3_ = this.§?#]§.readMultiByte(this.§?#]§.bytesAvailable,param2);
         }
         this.§?#]§.position = 0;
         if(param1)
         {
            this.compress();
         }
         return _loc3_;
      }
      
      public function §4""§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         this.§?#]§.length = 0;
         this.§?#]§.position = 0;
         this.§9!5§ = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               this.§?#]§.writeUTFBytes(param1);
            }
            else
            {
               this.§?#]§.writeMultiByte(param1,param2);
            }
            this.§<"[§ = §1$#§.§="K§(this.§?#]§);
            this.§@N§ = false;
         }
         if(param3)
         {
            this.compress();
         }
         else
         {
            this.§5!l§ = this.§!#0§ = this.§?#]§.length;
         }
      }
      
      public function §,$ §(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
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
            param1.writeUnsignedInt(§<!l§.§9#=§);
            param1.writeShort(this.§]!H§ << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(§<!l§.§;#M§);
         }
         param1.writeShort(this.§]!H§ << 8 | 20);
         param1.writeShort(this.§?8§ == "utf-8" ? 2048 : 0);
         param1.writeShort(!!this.§9!5§ ? int(§^!9§) : int(§0!O§));
         var _loc5_:Date = this.§["c§ != null ? this.§["c§ : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(this.§<"[§);
         param1.writeUnsignedInt(this.§!#0§);
         param1.writeUnsignedInt(this.§5!l§);
         var _loc8_:ByteArray;
         (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         if(this.§?8§ == "utf-8")
         {
            _loc8_.writeUTFBytes(this.§,"`§);
         }
         else
         {
            _loc8_.writeMultiByte(this.§,"`§,this.§?8§);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in this.§9$+§)
         {
            if((_loc15_ = this.§9$+§[_loc10_] as ByteArray) != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!this.§@N§)
            {
               if(_loc16_ = this.§9!5§)
               {
                  this.uncompress();
               }
               this.§#$!§ = §1$#§.§9$$§(this.§?#]§,0,this.§?#]§.length);
               this.§@N§ = true;
               if(_loc16_)
               {
                  this.compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(this.§#$!§);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && this.§^Z§.length > 0)
         {
            if(this.§?8§ == "utf-8")
            {
               _loc8_.writeUTFBytes(this.§^Z§);
            }
            else
            {
               _loc8_.writeMultiByte(this.§^Z§,this.§?8§);
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
         if(!param3 && this.§?#]§.length > 0)
         {
            if(this.§9!5§)
            {
               if(§+$§ || §^!G§)
               {
                  _loc13_ = this.§?#]§.length;
                  param1.writeBytes(this.§?#]§,0,_loc13_);
               }
               else
               {
                  _loc13_ = this.§?#]§.length - 6;
                  param1.writeBytes(this.§?#]§,2,_loc13_);
               }
            }
            else
            {
               _loc13_ = this.§?#]§.length;
               param1.writeBytes(this.§?#]§,0,_loc13_);
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
         while(param1.bytesAvailable && this.§1!O§(param1))
         {
         }
         return this.§1!O§ === this.§5#h§;
      }
      
      protected function §5#h§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §%q§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            this.§^v§(param1);
            if(this.§%"3§ + this.§#"[§ > 0)
            {
               this.§1!O§ = this.§#"+§;
            }
            else
            {
               this.§1!O§ = this.§ # §;
            }
            return true;
         }
         return false;
      }
      
      protected function §#"+§(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= this.§%"3§ + this.§#"[§)
         {
            this.§>"3§(param1);
            this.§1!O§ = this.§ # §;
            return true;
         }
         return false;
      }
      
      protected function § # §(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         if(this.§50§)
         {
            this.§1!O§ = this.§5#h§;
            _loc2_ = false;
         }
         else if(this.§!#0§ == 0)
         {
            this.§1!O§ = this.§5#h§;
         }
         else if(param1.bytesAvailable >= this.§!#0§)
         {
            this.§?E§(param1);
            this.§1!O§ = this.§5#h§;
         }
         else
         {
            _loc2_ = false;
         }
         return _loc2_;
      }
      
      protected function §^v§(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         this.§]!H§ = _loc2_ >> 8;
         this.§#;§ = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         this.§@!h§ = param1.readUnsignedShort();
         this.§[$B§ = (_loc3_ & 1) !== 0;
         this.§50§ = (_loc3_ & 8) !== 0;
         this.§0!T§ = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            this.§?8§ = "utf-8";
         }
         if(this.§@!h§ === §!#&§)
         {
            this.§="2§ = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            this.§%f§ = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(this.§@!h§ === §^!9§)
         {
            this.§#"S§ = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         this.§["c§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         this.§<"[§ = param1.readUnsignedInt();
         this.§!#0§ = param1.readUnsignedInt();
         this.§5!l§ = param1.readUnsignedInt();
         this.§%"3§ = param1.readUnsignedShort();
         this.§#"[§ = param1.readUnsignedShort();
      }
      
      protected function §>"3§(param1:IDataInput) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:ByteArray = null;
         if(this.§?8§ == "utf-8")
         {
            this.§,"`§ = param1.readUTFBytes(this.§%"3§);
         }
         else
         {
            this.§,"`§ = param1.readMultiByte(this.§%"3§,this.§?8§);
         }
         var _loc2_:uint = this.§#"[§;
         while(_loc2_ > 4)
         {
            _loc3_ = param1.readUnsignedShort();
            if((_loc4_ = param1.readUnsignedShort()) > _loc2_)
            {
               throw new Error("Parse error in file " + this.§,"`§ + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               this.§#$!§ = param1.readUnsignedInt();
               this.§@N§ = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               this.§9$+§[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      function §?E§(param1:IDataInput) : void
      {
         var _loc2_:uint = 0;
         if(this.§@!h§ === §^!9§ && !this.§[$B§)
         {
            if(§+$§ || §^!G§)
            {
               param1.readBytes(this.§?#]§,0,this.§!#0§);
            }
            else
            {
               if(!this.§@N§)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               this.§?#]§.writeByte(120);
               _loc2_ = ~this.§#"S§ << 6 & 192;
               _loc2_ += 31 - (120 << 8 | _loc2_) % 31;
               this.§?#]§.writeByte(_loc2_);
               param1.readBytes(this.§?#]§,2,this.§!#0§);
               this.§?#]§.position = this.§?#]§.length;
               this.§?#]§.writeUnsignedInt(this.§#$!§);
            }
            this.§9!5§ = true;
         }
         else
         {
            if(this.§@!h§ != §0!O§)
            {
               throw new Error("Compression method " + this.§@!h§ + " is not supported.");
            }
            param1.readBytes(this.§?#]§,0,this.§!#0§);
            this.§9!5§ = false;
         }
         this.§?#]§.position = 0;
      }
      
      protected function compress() : void
      {
         if(!this.§9!5§)
         {
            if(this.§?#]§.length > 0)
            {
               this.§?#]§.position = 0;
               this.§5!l§ = this.§?#]§.length;
               if(§^!G§)
               {
                  this.§?#]§.deflate();
                  this.§!#0§ = this.§?#]§.length;
               }
               else if(§+$§)
               {
                  this.§?#]§.compress.apply(this.§?#]§,["deflate"]);
                  this.§!#0§ = this.§?#]§.length;
               }
               else
               {
                  this.§?#]§.compress();
                  this.§!#0§ = this.§?#]§.length - 6;
               }
               this.§?#]§.position = 0;
               this.§9!5§ = true;
            }
            else
            {
               this.§!#0§ = 0;
               this.§5!l§ = 0;
            }
         }
      }
      
      protected function uncompress() : void
      {
         if(this.§9!5§ && this.§?#]§.length > 0)
         {
            this.§?#]§.position = 0;
            if(§^!G§)
            {
               this.§?#]§.inflate();
            }
            else if(§+$§)
            {
               this.§?#]§.uncompress.apply(this.§?#]§,["deflate"]);
            }
            else
            {
               this.§?#]§.uncompress();
            }
            this.§?#]§.position = 0;
            this.§9!5§ = false;
         }
      }
      
      public function toString() : String
      {
         return "[FZipFile]" + "\n  name:" + this.§,"`§ + "\n  date:" + this.§["c§ + "\n  sizeCompressed:" + this.§!#0§ + "\n  sizeUncompressed:" + this.§5!l§ + "\n  versionHost:" + this.§]!H§ + "\n  versionNumber:" + this.§#;§ + "\n  compressionMethod:" + this.§@!h§ + "\n  encrypted:" + this.§[$B§ + "\n  hasDataDescriptor:" + this.§50§ + "\n  hasCompressedPatchedData:" + this.§0!T§ + "\n  filenameEncoding:" + this.§?8§ + "\n  crc32:" + this.§<"[§.toString(16) + "\n  adler32:" + this.§#$!§.toString(16);
      }
   }
}

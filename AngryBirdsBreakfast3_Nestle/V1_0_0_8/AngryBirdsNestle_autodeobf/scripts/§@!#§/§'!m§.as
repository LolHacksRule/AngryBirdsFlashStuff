package §@!#§
{
   import §;4§.Base64;
   import §^!C§.§#!]§;
   import flash.utils.ByteArray;
   
   public class §'!m§
   {
      
      public static var §<!Q§:ByteArray;
       
      
      public function §'!m§()
      {
         super();
      }
      
      public static function §"y§(param1:String) : String
      {
         var _loc2_:Array = createBlocksFromString(param1);
         var _loc3_:ByteArray = §1"§(_loc2_);
         return §#!]§.§^!v§(_loc3_.readInt(),true) + §#!]§.§^!v§(_loc3_.readInt(),true) + §#!]§.§^!v§(_loc3_.readInt(),true) + §#!]§.§^!v§(_loc3_.readInt(),true) + §#!]§.§^!v§(_loc3_.readInt(),true);
      }
      
      public static function §7!W§(param1:ByteArray) : String
      {
         var _loc2_:Array = §'!m§.createBlocksFromByteArray(param1);
         var _loc3_:ByteArray = §1"§(_loc2_);
         return §#!]§.§^!v§(_loc3_.readInt(),true) + §#!]§.§^!v§(_loc3_.readInt(),true) + §#!]§.§^!v§(_loc3_.readInt(),true) + §#!]§.§^!v§(_loc3_.readInt(),true) + §#!]§.§^!v§(_loc3_.readInt(),true);
      }
      
      public static function §#!E§(param1:String) : String
      {
         var _loc6_:uint = 0;
         var _loc2_:Array = §'!m§.createBlocksFromString(param1);
         var _loc3_:ByteArray = §1"§(_loc2_);
         var _loc4_:String = "";
         _loc3_.position = 0;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.length)
         {
            _loc6_ = _loc3_.readUnsignedByte();
            _loc4_ += String.fromCharCode(_loc6_);
            _loc5_++;
         }
         return Base64.encode(_loc4_);
      }
      
      private static function §1"§(param1:Array) : ByteArray
      {
         var _loc9_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:* = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc2_:int = 1732584193;
         var _loc3_:int = 4023233417;
         var _loc4_:int = 2562383102;
         var _loc5_:int = 271733878;
         var _loc6_:int = 3285377520;
         var _loc7_:int = param1.length;
         var _loc8_:Array = new Array(80);
         var _loc10_:int = 0;
         while(_loc10_ < _loc7_)
         {
            _loc12_ = _loc2_;
            _loc13_ = _loc3_;
            _loc14_ = int(_loc4_);
            _loc15_ = _loc5_;
            _loc16_ = _loc6_;
            _loc17_ = 0;
            while(_loc17_ < 20)
            {
               if(_loc17_ < 16)
               {
                  _loc8_[_loc17_] = param1[_loc10_ + _loc17_];
               }
               else
               {
                  _loc9_ = _loc8_[_loc17_ - 3] ^ _loc8_[_loc17_ - 8] ^ _loc8_[_loc17_ - 14] ^ _loc8_[_loc17_ - 16];
                  _loc8_[_loc17_] = _loc9_ << 1 | _loc9_ >>> 31;
               }
               _loc9_ = int((_loc12_ << 5 | _loc12_ >>> 27) + (_loc13_ & _loc14_ | ~_loc13_ & _loc15_) + _loc16_ + int(_loc8_[_loc17_]) + 1518500249);
               _loc16_ = _loc15_;
               _loc15_ = _loc14_;
               _loc14_ = _loc13_ << 30 | _loc13_ >>> 2;
               _loc13_ = _loc12_;
               _loc12_ = _loc9_;
               _loc17_++;
            }
            while(_loc17_ < 40)
            {
               _loc9_ = _loc8_[_loc17_ - 3] ^ _loc8_[_loc17_ - 8] ^ _loc8_[_loc17_ - 14] ^ _loc8_[_loc17_ - 16];
               _loc8_[_loc17_] = _loc9_ << 1 | _loc9_ >>> 31;
               _loc9_ = int((_loc12_ << 5 | _loc12_ >>> 27) + (_loc13_ ^ _loc14_ ^ _loc15_) + _loc16_ + int(_loc8_[_loc17_]) + 1859775393);
               _loc16_ = _loc15_;
               _loc15_ = _loc14_;
               _loc14_ = _loc13_ << 30 | _loc13_ >>> 2;
               _loc13_ = _loc12_;
               _loc12_ = _loc9_;
               _loc17_++;
            }
            while(_loc17_ < 60)
            {
               _loc9_ = _loc8_[_loc17_ - 3] ^ _loc8_[_loc17_ - 8] ^ _loc8_[_loc17_ - 14] ^ _loc8_[_loc17_ - 16];
               _loc8_[_loc17_] = _loc9_ << 1 | _loc9_ >>> 31;
               _loc9_ = int((_loc12_ << 5 | _loc12_ >>> 27) + (_loc13_ & _loc14_ | _loc13_ & _loc15_ | _loc14_ & _loc15_) + _loc16_ + int(_loc8_[_loc17_]) + 2400959708);
               _loc16_ = _loc15_;
               _loc15_ = _loc14_;
               _loc14_ = _loc13_ << 30 | _loc13_ >>> 2;
               _loc13_ = _loc12_;
               _loc12_ = _loc9_;
               _loc17_++;
            }
            while(_loc17_ < 80)
            {
               _loc9_ = _loc8_[_loc17_ - 3] ^ _loc8_[_loc17_ - 8] ^ _loc8_[_loc17_ - 14] ^ _loc8_[_loc17_ - 16];
               _loc8_[_loc17_] = _loc9_ << 1 | _loc9_ >>> 31;
               _loc9_ = int((_loc12_ << 5 | _loc12_ >>> 27) + (_loc13_ ^ _loc14_ ^ _loc15_) + _loc16_ + int(_loc8_[_loc17_]) + 3395469782);
               _loc16_ = _loc15_;
               _loc15_ = _loc14_;
               _loc14_ = _loc13_ << 30 | _loc13_ >>> 2;
               _loc13_ = _loc12_;
               _loc12_ = _loc9_;
               _loc17_++;
            }
            _loc2_ += _loc12_;
            _loc3_ += _loc13_;
            _loc4_ += _loc14_;
            _loc5_ += _loc15_;
            _loc6_ += _loc16_;
            _loc10_ += 16;
         }
         var _loc11_:ByteArray;
         (_loc11_ = new ByteArray()).writeInt(_loc2_);
         _loc11_.writeInt(_loc3_);
         _loc11_.writeInt(_loc4_);
         _loc11_.writeInt(_loc5_);
         _loc11_.writeInt(_loc6_);
         _loc11_.position = 0;
         §<!Q§ = new ByteArray();
         §<!Q§.writeBytes(_loc11_);
         §<!Q§.position = 0;
         return _loc11_;
      }
      
      private static function createBlocksFromByteArray(param1:ByteArray) : Array
      {
         var _loc2_:int = param1.position;
         param1.position = 0;
         var _loc3_:Array = new Array();
         var _loc4_:int = param1.length * 8;
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_)
         {
            _loc3_[_loc6_ >> 5] |= (param1.readByte() & 255) << 24 - _loc6_ % 32;
            _loc6_ += 8;
         }
         _loc3_[_loc4_ >> 5] |= 128 << 24 - _loc4_ % 32;
         _loc3_[(_loc4_ + 64 >> 9 << 4) + 15] = _loc4_;
         param1.position = _loc2_;
         return _loc3_;
      }
      
      private static function createBlocksFromString(param1:String) : Array
      {
         var _loc2_:Array = new Array();
         var _loc3_:int = param1.length * 8;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc2_[_loc5_ >> 5] |= (param1.charCodeAt(_loc5_ / 8) & 255) << 24 - _loc5_ % 32;
            _loc5_ += 8;
         }
         _loc2_[_loc3_ >> 5] |= 128 << 24 - _loc3_ % 32;
         _loc2_[(_loc3_ + 64 >> 9 << 4) + 15] = _loc3_;
         return _loc2_;
      }
   }
}

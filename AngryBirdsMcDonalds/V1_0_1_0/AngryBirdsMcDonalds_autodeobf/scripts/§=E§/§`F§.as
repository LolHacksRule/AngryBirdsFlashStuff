package §=E§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §`F§
   {
      
      public static const §+^§:int = 4;
      
      public static const §1![§:int = 2;
      
      public static const §5C§:int = 3;
      
      public static const §>a§:int = 4;
      
      public static const §4j§:int = 0;
      
      public static const §'S§:int = 0;
      
      public static const §4P§:int = 0;
       
      
      private var §5m§:ByteArray;
      
      private var §0E§:Vector.<Number>;
      
      private var §;![§:Vector.<Number>;
      
      private var §7h§:Boolean;
      
      private var §"!l§:int;
      
      private var §;E§:Vector.<Number>;
      
      public function §`F§(param1:int, param2:Boolean = false)
      {
         this.§;E§ = new Vector.<Number>(12,true);
         super();
         this.§5m§ = new ByteArray();
         this.§5m§.endian = Endian.LITTLE_ENDIAN;
         this.§5m§.length = param1 * §1![§ * §>a§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §1![§)
         {
            this.§5m§.writeFloat(0);
            _loc3_++;
         }
         this.§0E§ = new Vector.<Number>(param1 * §+^§,true);
         this.§;![§ = new Vector.<Number>(param1 * §5C§,true);
         this.§7h§ = param2;
         this.§"!l§ = param1;
      }
      
      public function clone() : §`F§
      {
         var _loc1_:§`F§ = new §`F§(0,this.§7h§);
         _loc1_.§5m§.length = this.§5m§.length;
         _loc1_.§5m§.writeBytes(this.§5m§);
         _loc1_.§0E§ = this.§0E§.concat();
         _loc1_.§0E§.fixed = true;
         _loc1_.§;![§ = this.§;![§.concat();
         _loc1_.§;![§.fixed = true;
         _loc1_.§"!l§ = this.§"!l§;
         return _loc1_;
      }
      
      public function copyTo(param1:§`F§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§;![§;
         _loc6_ = this.§"!l§ * §5C§;
         _loc7_ = param2 * §5C§;
         if(param5)
         {
            param5.transformVectors(this.§;![§,this.§;E§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§;E§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§;![§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§5m§;
         _loc6_ = this.§"!l§ * §1![§ * §>a§;
         _loc7_ = param2 * §1![§ * §>a§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§5m§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§0E§;
            _loc6_ = this.§"!l§ * §+^§;
            _loc7_ = param2 * §+^§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§0E§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§"!l§)
               {
                  if(this.§7h§)
                  {
                     _loc13_ = this.§0E§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§0E§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§0E§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§0E§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§0E§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§0E§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§0E§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§`F§) : void
      {
         var _loc2_:int = this.§5m§.length;
         this.§5m§.length += param1.§5m§.length;
         this.§5m§.position = _loc2_;
         this.§5m§.writeBytes(param1.§5m§);
         this.§0E§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§0E§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§0E§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§0E§.fixed = true;
         this.§;![§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§;![§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§;![§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§;![§.fixed = true;
         this.§"!l§ += param1.§@!@§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §5C§;
         var _loc6_:*;
         this.§;![§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§;![§[_loc7_ = _loc5_++] = param3;
         this.§;![§[_loc5_] = param4;
      }
      
      public function §5!O§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §5C§;
         var _loc5_:*;
         this.§;![§[_loc5_ = _loc4_++] = param2;
         this.§;![§[_loc4_] = param3;
      }
      
      public function §6D§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §5C§;
         param2.x = this.§;![§[_loc3_++];
         param2.y = this.§;![§[_loc3_++];
         param2.z = this.§;![§[_loc3_];
      }
      
      public function §3!A§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§7h§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §0!0§.§3!0§(param2) * _loc4_;
         var _loc6_:Number = §0!0§.§%0§(param2) * _loc4_;
         var _loc7_:Number = §0!0§.§"!m§(param2) * _loc4_;
         this.§3!7§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §3!7§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §+^§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§0E§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§0E§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§0E§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§0E§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §5f§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §+^§;
         var _loc4_:*;
         this.§0E§[_loc4_ = _loc3_++] = this.§0E§[_loc4_] * param2;
         var _loc5_:*;
         this.§0E§[_loc5_ = _loc3_++] = this.§0E§[_loc5_] * param2;
         var _loc6_:*;
         this.§0E§[_loc6_ = _loc3_++] = this.§0E§[_loc6_] * param2;
         this.§0E§[_loc3_] *= param2;
      }
      
      public function §"f§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §+^§;
         var _loc3_:Number = !!this.§7h§ ? Number(this.§0E§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§0E§[_loc2_] * _loc3_;
         _loc5_ = this.§0E§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§0E§[_loc2_ + 2] * _loc3_;
         return §0!0§.§@T§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §,!X§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§7h§)
         {
            this.§3!A§(param1,this.§"f§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §+^§ + 3;
            this.§0E§[_loc3_] = param2;
         }
      }
      
      public function §-!-§(param1:int) : Number
      {
         var _loc2_:int = param1 * §+^§ + 3;
         return this.§0E§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §1![§;
         this.§5m§.position = _loc4_ * §>a§;
         this.§5m§.writeFloat(param2);
         this.§5m§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §1![§;
         this.§5m§.position = _loc3_ * §>a§;
         param2.x = this.§5m§.readFloat();
         param2.y = this.§5m§.readFloat();
      }
      
      public function §]U§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §5C§;
         var _loc6_:*;
         this.§;![§[_loc6_ = _loc5_++] = this.§;![§[_loc6_] + param2;
         var _loc7_:*;
         this.§;![§[_loc7_ = _loc5_++] = this.§;![§[_loc7_] + param3;
         this.§;![§[_loc5_] += param4;
      }
      
      public function override(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §5C§;
         this.§;E§[0] = this.§;![§[_loc3_];
         this.§;E§[1] = this.§;![§[_loc3_ + 1];
         this.§;E§[2] = this.§;![§[_loc3_ + 2];
         param2.transformVectors(this.§;E§,this.§;E§);
         this.§;![§[_loc3_] = this.§;E§[0];
         this.§;![§[_loc3_ + 1] = this.§;E§[1];
         this.§;![§[_loc3_ + 2] = this.§;E§[2];
      }
      
      public function §2"§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§7h§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §0!0§.§3!0§(param1) * _loc3_;
         var _loc5_:Number = §0!0§.§%0§(param1) * _loc3_;
         var _loc6_:Number = §0!0§.§"!m§(param1) * _loc3_;
         this.§3!7§(0,this.§"!l§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §>#§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §+^§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§0E§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§0E§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§0E§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§0E§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §=!m§(param1:int, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(param2 == 1)
         {
            return;
         }
         var _loc3_:int = param1 * §+^§;
         if(this.§7h§)
         {
            _loc4_ = this.§0E§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§0E§[_loc3_] *= _loc4_;
            this.§0E§[_loc3_ + 1] *= _loc4_;
            this.§0E§[_loc3_ + 2] *= _loc4_;
            this.§0E§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§0E§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§7h§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§"!l§ * §+^§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§-!-§(0);
               _loc6_ = !!this.§7h§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§5f§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§7h§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§7h§;
      }
      
      public function get §@!@§() : int
      {
         return this.§"!l§;
      }
      
      public function set §@!@§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §1![§ * §>a§ - this.§5m§.length;
         _loc4_ = this.§5m§.length;
         this.§5m§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§5m§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §>a§)
            {
               this.§5m§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§0E§.fixed = false;
         _loc2_ = param1 * §+^§ - this.§0E§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§0E§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§0E§.pop();
            _loc3_++;
         }
         this.§0E§.fixed = true;
         this.§;![§.fixed = false;
         _loc2_ = param1 * §5C§ - this.§;![§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§;![§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§;![§.pop();
            _loc3_++;
         }
         this.§;![§.fixed = true;
         this.§"!l§ = param1;
      }
      
      public function get §!4§() : ByteArray
      {
         this.§5m§.position = 0;
         return this.§5m§;
      }
      
      public function get §7!C§() : Vector.<Number>
      {
         return this.§0E§;
      }
      
      public function get §4!Y§() : Vector.<Number>
      {
         return this.§;![§;
      }
   }
}

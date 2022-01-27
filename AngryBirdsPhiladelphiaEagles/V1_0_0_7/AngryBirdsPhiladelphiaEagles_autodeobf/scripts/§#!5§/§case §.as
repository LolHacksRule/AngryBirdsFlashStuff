package §#!5§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §case §
   {
      
      public static const §5!>§:int = 4;
      
      public static const §+'§:int = 2;
      
      public static const §2f§:int = 3;
      
      public static const §%0§:int = 4;
      
      public static const §=N§:int = 0;
      
      public static const §6?§:int = 0;
      
      public static const §2V§:int = 0;
       
      
      private var §6n§:ByteArray;
      
      private var §<!F§:Vector.<Number>;
      
      private var §[9§:Vector.<Number>;
      
      private var §-!J§:Boolean;
      
      private var §=6§:int;
      
      private var §!!0§:Vector.<Number>;
      
      public function §case §(param1:int, param2:Boolean = false)
      {
         this.§!!0§ = new Vector.<Number>(12,true);
         super();
         this.§6n§ = new ByteArray();
         this.§6n§.endian = Endian.LITTLE_ENDIAN;
         this.§6n§.length = param1 * §+'§ * §%0§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §+'§)
         {
            this.§6n§.writeFloat(0);
            _loc3_++;
         }
         this.§<!F§ = new Vector.<Number>(param1 * §5!>§,true);
         this.§[9§ = new Vector.<Number>(param1 * §2f§,true);
         this.§-!J§ = param2;
         this.§=6§ = param1;
      }
      
      public function clone() : §case §
      {
         var _loc1_:§case § = new §case §(0,this.§-!J§);
         _loc1_.§6n§.length = this.§6n§.length;
         _loc1_.§6n§.writeBytes(this.§6n§);
         _loc1_.§<!F§ = this.§<!F§.concat();
         _loc1_.§<!F§.fixed = true;
         _loc1_.§[9§ = this.§[9§.concat();
         _loc1_.§[9§.fixed = true;
         _loc1_.§=6§ = this.§=6§;
         return _loc1_;
      }
      
      public function copyTo(param1:§case §, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§[9§;
         _loc6_ = this.§=6§ * §2f§;
         _loc7_ = param2 * §2f§;
         if(param5)
         {
            param5.transformVectors(this.§[9§,this.§!!0§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§!!0§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§[9§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§6n§;
         _loc6_ = this.§=6§ * §+'§ * §%0§;
         _loc7_ = param2 * §+'§ * §%0§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§6n§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§<!F§;
            _loc6_ = this.§=6§ * §5!>§;
            _loc7_ = param2 * §5!>§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§<!F§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§=6§)
               {
                  if(this.§-!J§)
                  {
                     _loc13_ = this.§<!F§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§<!F§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§<!F§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§<!F§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§<!F§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§<!F§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§<!F§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§case §) : void
      {
         var _loc2_:int = this.§6n§.length;
         this.§6n§.length += param1.§6n§.length;
         this.§6n§.position = _loc2_;
         this.§6n§.writeBytes(param1.§6n§);
         this.§<!F§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§<!F§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§<!F§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§<!F§.fixed = true;
         this.§[9§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§[9§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§[9§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§[9§.fixed = true;
         this.§=6§ += param1.§^q§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §2f§;
         var _loc6_:*;
         this.§[9§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§[9§[_loc7_ = _loc5_++] = param3;
         this.§[9§[_loc5_] = param4;
      }
      
      public function §6!L§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §2f§;
         var _loc5_:*;
         this.§[9§[_loc5_ = _loc4_++] = param2;
         this.§[9§[_loc4_] = param3;
      }
      
      public function §82§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §2f§;
         param2.x = this.§[9§[_loc3_++];
         param2.y = this.§[9§[_loc3_++];
         param2.z = this.§[9§[_loc3_];
      }
      
      public function §5Q§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§-!J§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §!B§.§"!@§(param2) * _loc4_;
         var _loc6_:Number = §!B§.§>!#§(param2) * _loc4_;
         var _loc7_:Number = §!B§.§=f§(param2) * _loc4_;
         this.§-6§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §-6§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §5!>§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§<!F§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§<!F§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§<!F§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§<!F§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §6!D§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §5!>§;
         var _loc4_:*;
         this.§<!F§[_loc4_ = _loc3_++] = this.§<!F§[_loc4_] * param2;
         var _loc5_:*;
         this.§<!F§[_loc5_ = _loc3_++] = this.§<!F§[_loc5_] * param2;
         var _loc6_:*;
         this.§<!F§[_loc6_ = _loc3_++] = this.§<!F§[_loc6_] * param2;
         this.§<!F§[_loc3_] *= param2;
      }
      
      public function §<Q§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §5!>§;
         var _loc3_:Number = !!this.§-!J§ ? Number(this.§<!F§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§<!F§[_loc2_] * _loc3_;
         _loc5_ = this.§<!F§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§<!F§[_loc2_ + 2] * _loc3_;
         return §!B§.§;'§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §7T§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§-!J§)
         {
            this.§5Q§(param1,this.§<Q§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §5!>§ + 3;
            this.§<!F§[_loc3_] = param2;
         }
      }
      
      public function §4@§(param1:int) : Number
      {
         var _loc2_:int = param1 * §5!>§ + 3;
         return this.§<!F§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §+'§;
         this.§6n§.position = _loc4_ * §%0§;
         this.§6n§.writeFloat(param2);
         this.§6n§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §+'§;
         this.§6n§.position = _loc3_ * §%0§;
         param2.x = this.§6n§.readFloat();
         param2.y = this.§6n§.readFloat();
      }
      
      public function §#Z§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §2f§;
         var _loc6_:*;
         this.§[9§[_loc6_ = _loc5_++] = this.§[9§[_loc6_] + param2;
         var _loc7_:*;
         this.§[9§[_loc7_ = _loc5_++] = this.§[9§[_loc7_] + param3;
         this.§[9§[_loc5_] += param4;
      }
      
      public function §"!A§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §2f§;
         this.§!!0§[0] = this.§[9§[_loc3_];
         this.§!!0§[1] = this.§[9§[_loc3_ + 1];
         this.§!!0§[2] = this.§[9§[_loc3_ + 2];
         param2.transformVectors(this.§!!0§,this.§!!0§);
         this.§[9§[_loc3_] = this.§!!0§[0];
         this.§[9§[_loc3_ + 1] = this.§!!0§[1];
         this.§[9§[_loc3_ + 2] = this.§!!0§[2];
      }
      
      public function §'!5§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§-!J§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §!B§.§"!@§(param1) * _loc3_;
         var _loc5_:Number = §!B§.§>!#§(param1) * _loc3_;
         var _loc6_:Number = §!B§.§=f§(param1) * _loc3_;
         this.§-6§(0,this.§=6§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §^%§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §5!>§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§<!F§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§<!F§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§<!F§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§<!F§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §^7§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §5!>§;
         if(this.§-!J§)
         {
            _loc4_ = this.§<!F§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§<!F§[_loc3_] *= _loc4_;
            this.§<!F§[_loc3_ + 1] *= _loc4_;
            this.§<!F§[_loc3_ + 2] *= _loc4_;
            this.§<!F§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§<!F§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§-!J§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§=6§ * §5!>§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§4@§(0);
               _loc6_ = !!this.§-!J§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§6!D§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§-!J§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§-!J§;
      }
      
      public function get §^q§() : int
      {
         return this.§=6§;
      }
      
      public function set §^q§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §+'§ * §%0§ - this.§6n§.length;
         _loc4_ = this.§6n§.length;
         this.§6n§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§6n§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §%0§)
            {
               this.§6n§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§<!F§.fixed = false;
         _loc2_ = param1 * §5!>§ - this.§<!F§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§<!F§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§<!F§.pop();
            _loc3_++;
         }
         this.§<!F§.fixed = true;
         this.§[9§.fixed = false;
         _loc2_ = param1 * §2f§ - this.§[9§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§[9§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§[9§.pop();
            _loc3_++;
         }
         this.§[9§.fixed = true;
         this.§=6§ = param1;
      }
      
      public function get §<Z§() : ByteArray
      {
         this.§6n§.position = 0;
         return this.§6n§;
      }
      
      public function get §]!2§() : Vector.<Number>
      {
         return this.§<!F§;
      }
      
      public function get §,!!§() : Vector.<Number>
      {
         return this.§[9§;
      }
   }
}

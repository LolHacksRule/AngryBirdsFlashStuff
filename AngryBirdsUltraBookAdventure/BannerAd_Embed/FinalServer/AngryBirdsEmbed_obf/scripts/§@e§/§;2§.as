package §@e§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §;2§
   {
      
      public static const §-Z§:int = 4;
      
      public static const §%]§:int = 2;
      
      public static const §%0§:int = 3;
      
      public static const §;;§:int = 4;
      
      public static const §-!8§:int = 0;
      
      public static const §>,§:int = 0;
      
      public static const § !<§:int = 0;
       
      
      private var §38§:ByteArray;
      
      private var §"L§:Vector.<Number>;
      
      private var §3H§:Vector.<Number>;
      
      private var §+!8§:Boolean;
      
      private var §2!2§:int;
      
      private var §%x§:Vector.<Number>;
      
      public function §;2§(param1:int, param2:Boolean = false)
      {
         this.§%x§ = new Vector.<Number>(12,true);
         super();
         this.§38§ = new ByteArray();
         this.§38§.endian = Endian.LITTLE_ENDIAN;
         this.§38§.length = param1 * §%]§ * §;;§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §%]§)
         {
            this.§38§.writeFloat(0);
            _loc3_++;
         }
         this.§"L§ = new Vector.<Number>(param1 * §-Z§,true);
         this.§3H§ = new Vector.<Number>(param1 * §%0§,true);
         this.§+!8§ = param2;
         this.§2!2§ = param1;
      }
      
      public function clone() : §;2§
      {
         var _loc1_:§;2§ = new §;2§(0,this.§+!8§);
         _loc1_.§38§.length = this.§38§.length;
         _loc1_.§38§.writeBytes(this.§38§);
         _loc1_.§"L§ = this.§"L§.concat();
         _loc1_.§"L§.fixed = true;
         _loc1_.§3H§ = this.§3H§.concat();
         _loc1_.§3H§.fixed = true;
         _loc1_.§2!2§ = this.§2!2§;
         return _loc1_;
      }
      
      public function copyTo(param1:§;2§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§3H§;
         _loc6_ = this.§2!2§ * §%0§;
         _loc7_ = param2 * §%0§;
         if(param5)
         {
            param5.transformVectors(this.§3H§,this.§%x§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§%x§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§3H§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§38§;
         _loc6_ = this.§2!2§ * §%]§ * §;;§;
         _loc7_ = param2 * §%]§ * §;;§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§38§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§"L§;
            _loc6_ = this.§2!2§ * §-Z§;
            _loc7_ = param2 * §-Z§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§"L§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§2!2§)
               {
                  if(this.§+!8§)
                  {
                     _loc13_ = this.§"L§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§"L§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§"L§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§"L§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§"L§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§"L§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§"L§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§;2§) : void
      {
         var _loc2_:int = this.§38§.length;
         this.§38§.length += param1.§38§.length;
         this.§38§.position = _loc2_;
         this.§38§.writeBytes(param1.§38§);
         this.§"L§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§"L§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§"L§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§"L§.fixed = true;
         this.§3H§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§3H§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§3H§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§3H§.fixed = true;
         this.§2!2§ += param1.§2!5§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §%0§;
         var _loc6_:*;
         this.§3H§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§3H§[_loc7_ = _loc5_++] = param3;
         this.§3H§[_loc5_] = param4;
      }
      
      public function §3!E§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §%0§;
         var _loc5_:*;
         this.§3H§[_loc5_ = _loc4_++] = param2;
         this.§3H§[_loc4_] = param3;
      }
      
      public function §`j§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §%0§;
         param2.x = this.§3H§[_loc3_++];
         param2.y = this.§3H§[_loc3_++];
         param2.z = this.§3H§[_loc3_];
      }
      
      public function §6!%§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§+!8§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §=!2§.§`_§(param2) * _loc4_;
         var _loc6_:Number = §=!2§.§"!5§(param2) * _loc4_;
         var _loc7_:Number = §=!2§.§+L§(param2) * _loc4_;
         this.§&a§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §&a§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §-Z§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§"L§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§"L§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§"L§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§"L§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §-B§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §-Z§;
         var _loc4_:*;
         this.§"L§[_loc4_ = _loc3_++] = this.§"L§[_loc4_] * param2;
         var _loc5_:*;
         this.§"L§[_loc5_ = _loc3_++] = this.§"L§[_loc5_] * param2;
         var _loc6_:*;
         this.§"L§[_loc6_ = _loc3_++] = this.§"L§[_loc6_] * param2;
         this.§"L§[_loc3_] *= param2;
      }
      
      public function §+!+§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §-Z§;
         var _loc3_:Number = !!this.§+!8§ ? Number(this.§"L§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§"L§[_loc2_] * _loc3_;
         _loc5_ = this.§"L§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§"L§[_loc2_ + 2] * _loc3_;
         return §=!2§.§&`§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §?n§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§+!8§)
         {
            this.§6!%§(param1,this.§+!+§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §-Z§ + 3;
            this.§"L§[_loc3_] = param2;
         }
      }
      
      public function §,!8§(param1:int) : Number
      {
         var _loc2_:int = param1 * §-Z§ + 3;
         return this.§"L§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §%]§;
         this.§38§.position = _loc4_ * §;;§;
         this.§38§.writeFloat(param2);
         this.§38§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §%]§;
         this.§38§.position = _loc3_ * §;;§;
         param2.x = this.§38§.readFloat();
         param2.y = this.§38§.readFloat();
      }
      
      public function §&!>§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §%0§;
         var _loc6_:*;
         this.§3H§[_loc6_ = _loc5_++] = this.§3H§[_loc6_] + param2;
         var _loc7_:*;
         this.§3H§[_loc7_ = _loc5_++] = this.§3H§[_loc7_] + param3;
         this.§3H§[_loc5_] += param4;
      }
      
      public function §-W§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §%0§;
         this.§%x§[0] = this.§3H§[_loc3_];
         this.§%x§[1] = this.§3H§[_loc3_ + 1];
         this.§%x§[2] = this.§3H§[_loc3_ + 2];
         param2.transformVectors(this.§%x§,this.§%x§);
         this.§3H§[_loc3_] = this.§%x§[0];
         this.§3H§[_loc3_ + 1] = this.§%x§[1];
         this.§3H§[_loc3_ + 2] = this.§%x§[2];
      }
      
      public function §,!#§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§+!8§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §=!2§.§`_§(param1) * _loc3_;
         var _loc5_:Number = §=!2§.§"!5§(param1) * _loc3_;
         var _loc6_:Number = §=!2§.§+L§(param1) * _loc3_;
         this.§&a§(0,this.§2!2§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §`!-§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §-Z§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§"L§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§"L§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§"L§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§"L§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §0!?§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §-Z§;
         if(this.§+!8§)
         {
            _loc4_ = this.§"L§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§"L§[_loc3_] *= _loc4_;
            this.§"L§[_loc3_ + 1] *= _loc4_;
            this.§"L§[_loc3_ + 2] *= _loc4_;
            this.§"L§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§"L§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§+!8§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§2!2§ * §-Z§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§,!8§(0);
               _loc6_ = !!this.§+!8§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§-B§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§+!8§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§+!8§;
      }
      
      public function get §2!5§() : int
      {
         return this.§2!2§;
      }
      
      public function set §2!5§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §%]§ * §;;§ - this.§38§.length;
         _loc4_ = this.§38§.length;
         this.§38§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§38§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §;;§)
            {
               this.§38§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§"L§.fixed = false;
         _loc2_ = param1 * §-Z§ - this.§"L§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§"L§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§"L§.pop();
            _loc3_++;
         }
         this.§"L§.fixed = true;
         this.§3H§.fixed = false;
         _loc2_ = param1 * §%0§ - this.§3H§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§3H§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§3H§.pop();
            _loc3_++;
         }
         this.§3H§.fixed = true;
         this.§2!2§ = param1;
      }
      
      public function get §&!#§() : ByteArray
      {
         this.§38§.position = 0;
         return this.§38§;
      }
      
      public function get §;!3§() : Vector.<Number>
      {
         return this.§"L§;
      }
      
      public function get §13§() : Vector.<Number>
      {
         return this.§3H§;
      }
   }
}

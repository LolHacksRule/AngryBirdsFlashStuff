package §5L§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §^!C§
   {
      
      public static const §5Q§:int = 4;
      
      public static const §"c§:int = 2;
      
      public static const §-L§:int = 3;
      
      public static const §8T§:int = 4;
      
      public static const §5q§:int = 0;
      
      public static const §;! §:int = 0;
      
      public static const §`T§:int = 0;
       
      
      private var §5Y§:ByteArray;
      
      private var §^!D§:Vector.<Number>;
      
      private var §2_§:Vector.<Number>;
      
      private var §true §:Boolean;
      
      private var §+l§:int;
      
      private var §'§:Vector.<Number>;
      
      public function §^!C§(param1:int, param2:Boolean = false)
      {
         this.§'§ = new Vector.<Number>(12,true);
         super();
         this.§5Y§ = new ByteArray();
         this.§5Y§.endian = Endian.LITTLE_ENDIAN;
         this.§5Y§.length = param1 * §"c§ * §8T§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §"c§)
         {
            this.§5Y§.writeFloat(0);
            _loc3_++;
         }
         this.§^!D§ = new Vector.<Number>(param1 * §5Q§,true);
         this.§2_§ = new Vector.<Number>(param1 * §-L§,true);
         this.§true § = param2;
         this.§+l§ = param1;
      }
      
      public function clone() : §^!C§
      {
         var _loc1_:§^!C§ = new §^!C§(0,this.§true §);
         _loc1_.§5Y§.length = this.§5Y§.length;
         _loc1_.§5Y§.writeBytes(this.§5Y§);
         _loc1_.§^!D§ = this.§^!D§.concat();
         _loc1_.§^!D§.fixed = true;
         _loc1_.§2_§ = this.§2_§.concat();
         _loc1_.§2_§.fixed = true;
         _loc1_.§+l§ = this.§+l§;
         return _loc1_;
      }
      
      public function copyTo(param1:§^!C§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§2_§;
         _loc6_ = this.§+l§ * §-L§;
         _loc7_ = param2 * §-L§;
         if(param5)
         {
            param5.transformVectors(this.§2_§,this.§'§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§'§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§2_§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§5Y§;
         _loc6_ = this.§+l§ * §"c§ * §8T§;
         _loc7_ = param2 * §"c§ * §8T§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§5Y§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§^!D§;
            _loc6_ = this.§+l§ * §5Q§;
            _loc7_ = param2 * §5Q§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§^!D§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§+l§)
               {
                  if(this.§true §)
                  {
                     _loc13_ = this.§^!D§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§^!D§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§^!D§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§^!D§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§^!D§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§^!D§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§^!D§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§^!C§) : void
      {
         var _loc2_:int = this.§5Y§.length;
         this.§5Y§.length += param1.§5Y§.length;
         this.§5Y§.position = _loc2_;
         this.§5Y§.writeBytes(param1.§5Y§);
         this.§^!D§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§^!D§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§^!D§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§^!D§.fixed = true;
         this.§2_§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§2_§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§2_§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§2_§.fixed = true;
         this.§+l§ += param1.§3>§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §-L§;
         var _loc6_:*;
         this.§2_§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§2_§[_loc7_ = _loc5_++] = param3;
         this.§2_§[_loc5_] = param4;
      }
      
      public function §?!E§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §-L§;
         var _loc5_:*;
         this.§2_§[_loc5_ = _loc4_++] = param2;
         this.§2_§[_loc4_] = param3;
      }
      
      public function §0,§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §-L§;
         param2.x = this.§2_§[_loc3_++];
         param2.y = this.§2_§[_loc3_++];
         param2.z = this.§2_§[_loc3_];
      }
      
      public function §^=§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§true § ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §8!8§.§1!@§(param2) * _loc4_;
         var _loc6_:Number = §8!8§.§;L§(param2) * _loc4_;
         var _loc7_:Number = §8!8§.§`!D§(param2) * _loc4_;
         this.§^R§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §^R§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §5Q§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§^!D§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§^!D§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§^!D§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§^!D§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §=w§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §5Q§;
         var _loc4_:*;
         this.§^!D§[_loc4_ = _loc3_++] = this.§^!D§[_loc4_] * param2;
         var _loc5_:*;
         this.§^!D§[_loc5_ = _loc3_++] = this.§^!D§[_loc5_] * param2;
         var _loc6_:*;
         this.§^!D§[_loc6_ = _loc3_++] = this.§^!D§[_loc6_] * param2;
         this.§^!D§[_loc3_] *= param2;
      }
      
      public function §9!3§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §5Q§;
         var _loc3_:Number = !!this.§true § ? Number(this.§^!D§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§^!D§[_loc2_] * _loc3_;
         _loc5_ = this.§^!D§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§^!D§[_loc2_ + 2] * _loc3_;
         return §8!8§.§[!B§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §7&§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§true §)
         {
            this.§^=§(param1,this.§9!3§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §5Q§ + 3;
            this.§^!D§[_loc3_] = param2;
         }
      }
      
      public function §^V§(param1:int) : Number
      {
         var _loc2_:int = param1 * §5Q§ + 3;
         return this.§^!D§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §"c§;
         this.§5Y§.position = _loc4_ * §8T§;
         this.§5Y§.writeFloat(param2);
         this.§5Y§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §"c§;
         this.§5Y§.position = _loc3_ * §8T§;
         param2.x = this.§5Y§.readFloat();
         param2.y = this.§5Y§.readFloat();
      }
      
      public function §!L§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §-L§;
         var _loc6_:*;
         this.§2_§[_loc6_ = _loc5_++] = this.§2_§[_loc6_] + param2;
         var _loc7_:*;
         this.§2_§[_loc7_ = _loc5_++] = this.§2_§[_loc7_] + param3;
         this.§2_§[_loc5_] += param4;
      }
      
      public function §6!^§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §-L§;
         this.§'§[0] = this.§2_§[_loc3_];
         this.§'§[1] = this.§2_§[_loc3_ + 1];
         this.§'§[2] = this.§2_§[_loc3_ + 2];
         param2.transformVectors(this.§'§,this.§'§);
         this.§2_§[_loc3_] = this.§'§[0];
         this.§2_§[_loc3_ + 1] = this.§'§[1];
         this.§2_§[_loc3_ + 2] = this.§'§[2];
      }
      
      public function §!K§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§true § ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §8!8§.§1!@§(param1) * _loc3_;
         var _loc5_:Number = §8!8§.§;L§(param1) * _loc3_;
         var _loc6_:Number = §8!8§.§`!D§(param1) * _loc3_;
         this.§^R§(0,this.§+l§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §']§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §5Q§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§^!D§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§^!D§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§^!D§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§^!D§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §5!D§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §5Q§;
         if(this.§true §)
         {
            _loc4_ = this.§^!D§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§^!D§[_loc3_] *= _loc4_;
            this.§^!D§[_loc3_ + 1] *= _loc4_;
            this.§^!D§[_loc3_ + 2] *= _loc4_;
            this.§^!D§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§^!D§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§true §)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§+l§ * §5Q§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§^V§(0);
               _loc6_ = !!this.§true § ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§=w§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§true § = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§true §;
      }
      
      public function get §3>§() : int
      {
         return this.§+l§;
      }
      
      public function set §3>§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §"c§ * §8T§ - this.§5Y§.length;
         _loc4_ = this.§5Y§.length;
         this.§5Y§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§5Y§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §8T§)
            {
               this.§5Y§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§^!D§.fixed = false;
         _loc2_ = param1 * §5Q§ - this.§^!D§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§^!D§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§^!D§.pop();
            _loc3_++;
         }
         this.§^!D§.fixed = true;
         this.§2_§.fixed = false;
         _loc2_ = param1 * §-L§ - this.§2_§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§2_§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§2_§.pop();
            _loc3_++;
         }
         this.§2_§.fixed = true;
         this.§+l§ = param1;
      }
      
      public function get final() : ByteArray
      {
         this.§5Y§.position = 0;
         return this.§5Y§;
      }
      
      public function get §'O§() : Vector.<Number>
      {
         return this.§^!D§;
      }
      
      public function get § Y§() : Vector.<Number>
      {
         return this.§2_§;
      }
   }
}

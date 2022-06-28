package §_-UD§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §_-9f§
   {
      
      public static const §_-vj§:int = 4;
      
      public static const §_-u7§:int = 2;
      
      public static const §_-3x§:int = 3;
      
      public static const §_-5V§:int = 4;
      
      public static const §_-gg§:int = 0;
      
      public static const §_-0CW§:int = 0;
      
      public static const §_-AV§:int = 0;
       
      
      private var §_-hm§:ByteArray;
      
      private var §_-lk§:Vector.<Number>;
      
      private var §_-09J§:Vector.<Number>;
      
      private var §_-XA§:Boolean;
      
      private var §_-fz§:int;
      
      private var §_-if§:Vector.<Number>;
      
      public function §_-9f§(param1:int, param2:Boolean = false)
      {
         this.§_-if§ = new Vector.<Number>(12,true);
         super();
         this.§_-hm§ = new ByteArray();
         this.§_-hm§.endian = Endian.LITTLE_ENDIAN;
         this.§_-hm§.length = param1 * §_-u7§ * §_-5V§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §_-u7§)
         {
            this.§_-hm§.writeFloat(0);
            _loc3_++;
         }
         this.§_-lk§ = new Vector.<Number>(param1 * §_-vj§,true);
         this.§_-09J§ = new Vector.<Number>(param1 * §_-3x§,true);
         this.§_-XA§ = param2;
         this.§_-fz§ = param1;
      }
      
      public function clone() : §_-9f§
      {
         var _loc1_:§_-9f§ = new §_-9f§(0,this.§_-XA§);
         _loc1_.§_-hm§.length = this.§_-hm§.length;
         _loc1_.§_-hm§.writeBytes(this.§_-hm§);
         _loc1_.§_-lk§ = this.§_-lk§.concat();
         _loc1_.§_-lk§.fixed = true;
         _loc1_.§_-09J§ = this.§_-09J§.concat();
         _loc1_.§_-09J§.fixed = true;
         _loc1_.§_-fz§ = this.§_-fz§;
         return _loc1_;
      }
      
      public function copyTo(param1:§_-9f§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§_-09J§;
         _loc6_ = this.§_-fz§ * §_-3x§;
         _loc7_ = param2 * §_-3x§;
         if(param5)
         {
            param5.transformVectors(this.§_-09J§,this.§_-if§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§_-if§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§_-09J§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§_-hm§;
         _loc6_ = this.§_-fz§ * §_-u7§ * §_-5V§;
         _loc7_ = param2 * §_-u7§ * §_-5V§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§_-hm§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§_-lk§;
            _loc6_ = this.§_-fz§ * §_-vj§;
            _loc7_ = param2 * §_-vj§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§_-lk§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§_-fz§)
               {
                  if(this.§_-XA§)
                  {
                     _loc13_ = this.§_-lk§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§_-lk§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§_-lk§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§_-lk§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§_-lk§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§_-lk§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§_-lk§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§_-9f§) : void
      {
         var _loc2_:int = this.§_-hm§.length;
         this.§_-hm§.length += param1.§_-hm§.length;
         this.§_-hm§.position = _loc2_;
         this.§_-hm§.writeBytes(param1.§_-hm§);
         this.§_-lk§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§_-lk§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§_-lk§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§_-lk§.fixed = true;
         this.§_-09J§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§_-09J§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§_-09J§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§_-09J§.fixed = true;
         this.§_-fz§ += param1.§_-Tz§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-3x§;
         var _loc6_:*;
         this.§_-09J§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§_-09J§[_loc7_ = _loc5_++] = param3;
         this.§_-09J§[_loc5_] = param4;
      }
      
      public function §_-0AQ§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §_-3x§;
         var _loc5_:*;
         this.§_-09J§[_loc5_ = _loc4_++] = param2;
         this.§_-09J§[_loc4_] = param3;
      }
      
      public function §_-03l§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §_-3x§;
         param2.x = this.§_-09J§[_loc3_++];
         param2.y = this.§_-09J§[_loc3_++];
         param2.z = this.§_-09J§[_loc3_];
      }
      
      public function §_-fh§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§_-XA§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §_-Jy§.§throw§(param2) * _loc4_;
         var _loc6_:Number = §_-Jy§.§_-OU§(param2) * _loc4_;
         var _loc7_:Number = §_-Jy§.§_-Gv§(param2) * _loc4_;
         this.§_-01e§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §_-01e§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §_-vj§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§_-lk§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§_-lk§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§_-lk§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§_-lk§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §_-Ig§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §_-vj§;
         var _loc4_:*;
         this.§_-lk§[_loc4_ = _loc3_++] = this.§_-lk§[_loc4_] * param2;
         var _loc5_:*;
         this.§_-lk§[_loc5_ = _loc3_++] = this.§_-lk§[_loc5_] * param2;
         var _loc6_:*;
         this.§_-lk§[_loc6_ = _loc3_++] = this.§_-lk§[_loc6_] * param2;
         this.§_-lk§[_loc3_] *= param2;
      }
      
      public function §_-01U§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §_-vj§;
         var _loc3_:Number = !!this.§_-XA§ ? Number(this.§_-lk§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§_-lk§[_loc2_] * _loc3_;
         _loc5_ = this.§_-lk§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§_-lk§[_loc2_ + 2] * _loc3_;
         return §_-Jy§.§_-Ub§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §_-it§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§_-XA§)
         {
            this.§_-fh§(param1,this.§_-01U§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §_-vj§ + 3;
            this.§_-lk§[_loc3_] = param2;
         }
      }
      
      public function §_-nB§(param1:int) : Number
      {
         var _loc2_:int = param1 * §_-vj§ + 3;
         return this.§_-lk§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §_-u7§;
         this.§_-hm§.position = _loc4_ * §_-5V§;
         this.§_-hm§.writeFloat(param2);
         this.§_-hm§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §_-u7§;
         this.§_-hm§.position = _loc3_ * §_-5V§;
         param2.x = this.§_-hm§.readFloat();
         param2.y = this.§_-hm§.readFloat();
      }
      
      public function §_-ZN§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-3x§;
         var _loc6_:*;
         this.§_-09J§[_loc6_ = _loc5_++] = this.§_-09J§[_loc6_] + param2;
         var _loc7_:*;
         this.§_-09J§[_loc7_ = _loc5_++] = this.§_-09J§[_loc7_] + param3;
         this.§_-09J§[_loc5_] += param4;
      }
      
      public function §_-0B0§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §_-3x§;
         this.§_-if§[0] = this.§_-09J§[_loc3_];
         this.§_-if§[1] = this.§_-09J§[_loc3_ + 1];
         this.§_-if§[2] = this.§_-09J§[_loc3_ + 2];
         param2.transformVectors(this.§_-if§,this.§_-if§);
         this.§_-09J§[_loc3_] = this.§_-if§[0];
         this.§_-09J§[_loc3_ + 1] = this.§_-if§[1];
         this.§_-09J§[_loc3_ + 2] = this.§_-if§[2];
      }
      
      public function §_-I9§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§_-XA§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §_-Jy§.§throw§(param1) * _loc3_;
         var _loc5_:Number = §_-Jy§.§_-OU§(param1) * _loc3_;
         var _loc6_:Number = §_-Jy§.§_-Gv§(param1) * _loc3_;
         this.§_-01e§(0,this.§_-fz§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §_-di§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §_-vj§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§_-lk§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§_-lk§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§_-lk§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§_-lk§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §_-0Be§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §_-vj§;
         if(this.§_-XA§)
         {
            _loc4_ = this.§_-lk§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§_-lk§[_loc3_] *= _loc4_;
            this.§_-lk§[_loc3_ + 1] *= _loc4_;
            this.§_-lk§[_loc3_ + 2] *= _loc4_;
            this.§_-lk§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§_-lk§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§_-XA§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§_-fz§ * §_-vj§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§_-nB§(0);
               _loc6_ = !!this.§_-XA§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§_-Ig§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§_-XA§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§_-XA§;
      }
      
      public function get §_-Tz§() : int
      {
         return this.§_-fz§;
      }
      
      public function set §_-Tz§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §_-u7§ * §_-5V§ - this.§_-hm§.length;
         _loc4_ = this.§_-hm§.length;
         this.§_-hm§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§_-hm§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §_-5V§)
            {
               this.§_-hm§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§_-lk§.fixed = false;
         _loc2_ = param1 * §_-vj§ - this.§_-lk§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§_-lk§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§_-lk§.pop();
            _loc3_++;
         }
         this.§_-lk§.fixed = true;
         this.§_-09J§.fixed = false;
         _loc2_ = param1 * §_-3x§ - this.§_-09J§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§_-09J§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§_-09J§.pop();
            _loc3_++;
         }
         this.§_-09J§.fixed = true;
         this.§_-fz§ = param1;
      }
      
      public function get §_-ho§() : ByteArray
      {
         this.§_-hm§.position = 0;
         return this.§_-hm§;
      }
      
      public function get §_-ge§() : Vector.<Number>
      {
         return this.§_-lk§;
      }
      
      public function get §_-y2§() : Vector.<Number>
      {
         return this.§_-09J§;
      }
   }
}

package §_-kC§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §_-DS§
   {
      
      public static const §_-GI§:int = 4;
      
      public static const §_-3v§:int = 2;
      
      public static const §_-ut§:int = 3;
      
      public static const §_-78§:int = 4;
      
      public static const §_-2k§:int = 0;
      
      public static const §_-T7§:int = 0;
      
      public static const §_-CF§:int = 0;
       
      
      private var §_-V§:ByteArray;
      
      private var §_-hk§:Vector.<Number>;
      
      private var §_-bL§:Vector.<Number>;
      
      private var §_-ra§:Boolean;
      
      private var §_-PT§:int;
      
      private var §_-NH§:Vector.<Number>;
      
      public function §_-DS§(param1:int, param2:Boolean = false)
      {
         this.§_-NH§ = new Vector.<Number>(12,true);
         super();
         this.§_-V§ = new ByteArray();
         this.§_-V§.endian = Endian.LITTLE_ENDIAN;
         this.§_-V§.length = param1 * §_-3v§ * §_-78§;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * §_-3v§)
         {
            this.§_-V§.writeFloat(0);
            _loc3_++;
         }
         this.§_-hk§ = new Vector.<Number>(param1 * §_-GI§,true);
         this.§_-bL§ = new Vector.<Number>(param1 * §_-ut§,true);
         this.§_-ra§ = param2;
         this.§_-PT§ = param1;
      }
      
      public function clone() : §_-DS§
      {
         var _loc1_:§_-DS§ = new §_-DS§(0,this.§_-ra§);
         _loc1_.§_-V§.length = this.§_-V§.length;
         _loc1_.§_-V§.writeBytes(this.§_-V§);
         _loc1_.§_-hk§ = this.§_-hk§.concat();
         _loc1_.§_-hk§.fixed = true;
         _loc1_.§_-bL§ = this.§_-bL§.concat();
         _loc1_.§_-bL§.fixed = true;
         _loc1_.§_-PT§ = this.§_-PT§;
         return _loc1_;
      }
      
      public function copyTo(param1:§_-DS§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§_-bL§;
         _loc6_ = this.§_-PT§ * §_-ut§;
         _loc7_ = param2 * §_-ut§;
         if(param5)
         {
            param5.transformVectors(this.§_-bL§,this.§_-NH§);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.§_-NH§[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.§_-bL§[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.§_-V§;
         _loc6_ = this.§_-PT§ * §_-3v§ * §_-78§;
         _loc7_ = param2 * §_-3v§ * §_-78§;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.§_-V§);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.§_-hk§;
            _loc6_ = this.§_-PT§ * §_-GI§;
            _loc7_ = param2 * §_-GI§;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.§_-hk§[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.§_-PT§)
               {
                  if(this.§_-ra§)
                  {
                     _loc13_ = this.§_-hk§[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.§_-hk§[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.§_-hk§[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.§_-hk§[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.§_-hk§[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.§_-hk§[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.§_-hk§[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:§_-DS§) : void
      {
         var _loc2_:int = this.§_-V§.length;
         this.§_-V§.length += param1.§_-V§.length;
         this.§_-V§.position = _loc2_;
         this.§_-V§.writeBytes(param1.§_-V§);
         this.§_-hk§.fixed = false;
         var _loc3_:Vector.<Number> = param1.§_-hk§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§_-hk§.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.§_-hk§.fixed = true;
         this.§_-bL§.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§_-bL§).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.§_-bL§.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.§_-bL§.fixed = true;
         this.§_-PT§ += param1.§_-AO§;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-ut§;
         var _loc6_:*;
         this.§_-bL§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§_-bL§[_loc7_ = _loc5_++] = param3;
         this.§_-bL§[_loc5_] = param4;
      }
      
      public function §_-HW§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §_-ut§;
         var _loc5_:*;
         this.§_-bL§[_loc5_ = _loc4_++] = param2;
         this.§_-bL§[_loc4_] = param3;
      }
      
      public function §_-6N§(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * §_-ut§;
         param2.x = this.§_-bL§[_loc3_++];
         param2.y = this.§_-bL§[_loc3_++];
         param2.z = this.§_-bL§[_loc3_];
      }
      
      public function §_-sT§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.§_-ra§ ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = §_-T9§.§_-GF§(param2) * _loc4_;
         var _loc6_:Number = §_-T9§.§_-4F§(param2) * _loc4_;
         var _loc7_:Number = §_-T9§.§_-Xm§(param2) * _loc4_;
         this.§_-Hw§(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function §_-Hw§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * §_-GI§;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.§_-hk§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§_-hk§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§_-hk§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§_-hk§[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function §_-XF§(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * §_-GI§;
         var _loc4_:*;
         this.§_-hk§[_loc4_ = _loc3_++] = this.§_-hk§[_loc4_] * param2;
         var _loc5_:*;
         this.§_-hk§[_loc5_ = _loc3_++] = this.§_-hk§[_loc5_] * param2;
         var _loc6_:*;
         this.§_-hk§[_loc6_ = _loc3_++] = this.§_-hk§[_loc6_] * param2;
         this.§_-hk§[_loc3_] *= param2;
      }
      
      public function §_-K0§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §_-GI§;
         var _loc3_:Number = !!this.§_-ra§ ? Number(this.§_-hk§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.§_-hk§[_loc2_] * _loc3_;
         _loc5_ = this.§_-hk§[_loc2_ + 1] * _loc3_;
         _loc6_ = this.§_-hk§[_loc2_ + 2] * _loc3_;
         return §_-T9§.§_-tn§(_loc4_,_loc5_,_loc6_);
      }
      
      public function §_-Hi§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.§_-ra§)
         {
            this.§_-sT§(param1,this.§_-K0§(param1),param2);
         }
         else
         {
            _loc3_ = param1 * §_-GI§ + 3;
            this.§_-hk§[_loc3_] = param2;
         }
      }
      
      public function §_-kE§(param1:int) : Number
      {
         var _loc2_:int = param1 * §_-GI§ + 3;
         return this.§_-hk§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §_-3v§;
         this.§_-V§.position = _loc4_ * §_-78§;
         this.§_-V§.writeFloat(param2);
         this.§_-V§.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §_-3v§;
         this.§_-V§.position = _loc3_ * §_-78§;
         param2.x = this.§_-V§.readFloat();
         param2.y = this.§_-V§.readFloat();
      }
      
      public function §_-Tx§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-ut§;
         var _loc6_:*;
         this.§_-bL§[_loc6_ = _loc5_++] = this.§_-bL§[_loc6_] + param2;
         var _loc7_:*;
         this.§_-bL§[_loc7_ = _loc5_++] = this.§_-bL§[_loc7_] + param3;
         this.§_-bL§[_loc5_] += param4;
      }
      
      public function §_-DZ§(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * §_-ut§;
         this.§_-NH§[0] = this.§_-bL§[_loc3_];
         this.§_-NH§[1] = this.§_-bL§[_loc3_ + 1];
         this.§_-NH§[2] = this.§_-bL§[_loc3_ + 2];
         param2.transformVectors(this.§_-NH§,this.§_-NH§);
         this.§_-bL§[_loc3_] = this.§_-NH§[0];
         this.§_-bL§[_loc3_ + 1] = this.§_-NH§[1];
         this.§_-bL§[_loc3_ + 2] = this.§_-NH§[2];
      }
      
      public function §_-43§(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.§_-ra§ ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = §_-T9§.§_-GF§(param1) * _loc3_;
         var _loc5_:Number = §_-T9§.§_-4F§(param1) * _loc3_;
         var _loc6_:Number = §_-T9§.§_-Xm§(param1) * _loc3_;
         this.§_-Hw§(0,this.§_-PT§,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function §_-no§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §_-GI§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§_-hk§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§_-hk§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§_-hk§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§_-hk§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §_-qq§(param1:int, param2:Number) : void
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
         var _loc3_:int = param1 * §_-GI§;
         if(this.§_-ra§)
         {
            _loc4_ = this.§_-hk§[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.§_-hk§[_loc3_] *= _loc4_;
            this.§_-hk§[_loc3_ + 1] *= _loc4_;
            this.§_-hk§[_loc3_ + 2] *= _loc4_;
            this.§_-hk§[_loc3_ + 3] = param2;
         }
         else
         {
            this.§_-hk§[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§_-ra§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§_-PT§ * §_-GI§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§_-kE§(0);
               _loc6_ = !!this.§_-ra§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.§_-XF§(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.§_-ra§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§_-ra§;
      }
      
      public function get §_-AO§() : int
      {
         return this.§_-PT§;
      }
      
      public function set §_-AO§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * §_-3v§ * §_-78§ - this.§_-V§.length;
         _loc4_ = this.§_-V§.length;
         this.§_-V§.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.§_-V§.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / §_-78§)
            {
               this.§_-V§.writeFloat(0);
               _loc3_++;
            }
         }
         this.§_-hk§.fixed = false;
         _loc2_ = param1 * §_-GI§ - this.§_-hk§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§_-hk§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§_-hk§.pop();
            _loc3_++;
         }
         this.§_-hk§.fixed = true;
         this.§_-bL§.fixed = false;
         _loc2_ = param1 * §_-ut§ - this.§_-bL§.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.§_-bL§.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.§_-bL§.pop();
            _loc3_++;
         }
         this.§_-bL§.fixed = true;
         this.§_-PT§ = param1;
      }
      
      public function get §_-IR§() : ByteArray
      {
         this.§_-V§.position = 0;
         return this.§_-V§;
      }
      
      public function get §_-TU§() : Vector.<Number>
      {
         return this.§_-hk§;
      }
      
      public function get §_-EV§() : Vector.<Number>
      {
         return this.§_-bL§;
      }
   }
}

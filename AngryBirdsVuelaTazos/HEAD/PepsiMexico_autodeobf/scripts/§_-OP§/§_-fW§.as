package §_-OP§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   
   public class §_-fW§
   {
      
      public static const §_-qY§:int = 6;
      
      public static const §_-Cf§:int = 3;
      
      public static const §_-Jx§:int = 0;
      
      public static const §_-Ef§:int = 0;
      
      public static const §_-JR§:int = 4;
       
      
      private var §_-HD§:Vector.<Number>;
      
      private var §_-Na§:Vector.<Number>;
      
      private var §_-jl§:int;
      
      private var §_-Qo§:int;
      
      private var §_-Yr§:Boolean;
      
      public function §_-fW§(param1:int, param2:Boolean = false)
      {
         super();
         this.§_-HD§ = new Vector.<Number>(param1 * §_-qY§,false);
         this.§_-Na§ = new Vector.<Number>(param1 * §_-Cf§,false);
         this.§_-Yr§ = param2;
      }
      
      public function reset() : void
      {
         this.§_-jl§ = 0;
         this.§_-Qo§ = 0;
         this.§_-Na§.fixed = false;
      }
      
      public function §_-yk§(param1:§_-fW§) : void
      {
         var _loc2_:Number = NaN;
         this.§_-HD§.fixed = false;
         for each(_loc2_ in param1.§_-HD§)
         {
            var _loc5_:*;
            this.§_-HD§[_loc5_ = this.§_-jl§++] = _loc2_;
         }
         this.§_-HD§.fixed = true;
         this.§_-Na§.fixed = false;
         for each(_loc2_ in param1.§_-Na§)
         {
            this.§_-Na§[_loc5_ = this.§_-Qo§++] = _loc2_;
         }
         this.§_-Na§.fixed = true;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-Cf§;
         this.§_-Na§[_loc5_] = param2;
         this.§_-Na§[_loc5_ + 1] = param3;
      }
      
      public function §_-q6§(param1:int) : Vector3D
      {
         var _loc2_:int = param1 * §_-Cf§;
         return new Vector3D(this.§_-Na§[_loc2_],this.§_-Na§[_loc2_ + 1],0);
      }
      
      public function setColor(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (!!this.§_-Yr§ ? param3 : 1) / 255;
         this.§_-tE§(this.§_-3Z§(param1) + §_-Ef§,§_-ig§.§_-xW§(param2) * _loc4_,§_-ig§.§_-D5§(param2) * _loc4_,§_-ig§.§_-IB§(param2) * _loc4_,param3);
      }
      
      public function §_-qG§(param1:int) : uint
      {
         var _loc2_:int = this.§_-3Z§(param1) + §_-Ef§;
         var _loc3_:Number = !!this.§_-Yr§ ? Number(this.§_-HD§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         var _loc4_:Number = this.§_-HD§[_loc2_] / _loc3_;
         var _loc5_:Number = this.§_-HD§[_loc2_ + 1] / _loc3_;
         var _loc6_:Number = this.§_-HD§[_loc2_ + 2] / _loc3_;
         return §_-ig§.§_-Vv§(_loc4_ * 255,_loc5_ * 255,_loc6_ * 255);
      }
      
      public function §_-fr§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-Yr§)
         {
            this.setColor(param1,this.§_-qG§(param1),param2);
         }
         else
         {
            _loc3_ = this.§_-3Z§(param1) + §_-Ef§ + 3;
            this.§_-HD§[_loc3_] = param2;
         }
      }
      
      public function §_-th§(param1:int) : Number
      {
         var _loc2_:int = this.§_-3Z§(param1) + §_-Ef§ + 3;
         return this.§_-HD§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-tE§(this.§_-3Z§(param1) + §_-JR§,param2,param3);
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:int = this.§_-3Z§(param1) + §_-JR§;
         return new Point(this.§_-HD§[_loc2_],this.§_-HD§[_loc2_ + 1]);
      }
      
      public function clone() : §_-fW§
      {
         var _loc1_:§_-fW§ = new §_-fW§(0,this.§_-Yr§);
         _loc1_.§_-HD§ = this.§_-HD§.concat();
         _loc1_.§_-HD§.fixed = true;
         _loc1_.§_-Na§ = this.§_-Na§.concat();
         _loc1_.§_-Na§.fixed = true;
         return _loc1_;
      }
      
      public function §_-Ou§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-Cf§;
         this.§_-Na§[_loc5_] += param2;
         this.§_-Na§[_loc5_ + 1] += param3;
      }
      
      public function §_-EJ§(param1:Matrix3D) : void
      {
         param1.transformVectors(this.§_-Na§,this.§_-Na§);
         this.§_-Na§.fixed = true;
      }
      
      public function §_-qs§(param1:int, param2:Matrix3D = null) : void
      {
         var _loc3_:Vector3D = null;
         var _loc4_:Vector3D = null;
         if(param2)
         {
            _loc3_ = this.§_-q6§(param1);
            _loc4_ = param2.transformVector(_loc3_);
            this.setPosition(param1,_loc4_.x,_loc4_.y,_loc4_.z);
         }
      }
      
      public function setUniformColor(param1:uint, param2:Number = 1.0) : void
      {
         this.§_-12§(0,this.§_-RN§,param1,param2);
      }
      
      public function §_-12§(param1:int, param2:int, param3:uint, param4:Number = 1.0) : void
      {
         var _loc6_:Number = §_-ig§.§_-xW§(param3) * 0.00392156862745098;
         var _loc7_:Number = §_-ig§.§_-D5§(param3) * 0.00392156862745098;
         var _loc8_:Number = §_-ig§.§_-IB§(param3) * 0.00392156862745098;
         var _loc9_:int = this.§_-3Z§(param1);
         var _loc10_:int = 0;
         while(_loc10_ < param2)
         {
            this.§_-tE§(_loc9_ + §_-Ef§,_loc6_,_loc7_,_loc8_,param4);
            _loc9_ += §_-qY§;
            _loc10_++;
         }
      }
      
      public function §_-M1§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc7_:int = this.§_-3Z§(param1);
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            this.§_-tE§(_loc7_ + §_-Ef§,param3,param4,param5,param6);
            _loc7_ += §_-qY§;
            _loc8_++;
         }
      }
      
      public function §_-c8§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-Yr§)
         {
            this.§_-fr§(param1,this.§_-th§(param1) * param2);
         }
         else
         {
            _loc3_ = this.§_-3Z§(param1) + §_-Ef§ + 3;
            this.§_-HD§[_loc3_] *= param2;
         }
      }
      
      private function §_-tE§(param1:int, ... rest) : void
      {
         var _loc3_:int = rest.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            this.§_-HD§[param1 + _loc4_] = rest[_loc4_];
            _loc4_++;
         }
      }
      
      private function §_-3Z§(param1:int) : int
      {
         return param1 * §_-qY§;
      }
      
      public function set premultipliedAlpha(param1:Boolean) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param1 == this.§_-Yr§)
         {
            return;
         }
         var _loc2_:int = this.§_-HD§.length;
         var _loc3_:int = §_-Ef§;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§_-HD§[_loc3_ + 3];
            _loc5_ = !!this.§_-Yr§ ? Number(_loc4_) : Number(1);
            _loc6_ = (!!param1 ? _loc4_ : 1) / _loc5_;
            if(_loc5_ != 0)
            {
               this.§_-HD§[_loc3_] *= _loc6_;
               this.§_-HD§[_loc3_ + 1] *= _loc6_;
               this.§_-HD§[_loc3_ + 2] *= _loc6_;
            }
            _loc3_ += §_-qY§;
         }
         this.§_-Yr§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§_-Yr§;
      }
      
      public function get §_-RN§() : int
      {
         return this.§_-HD§.length / §_-qY§;
      }
      
      public function get data() : Vector.<Number>
      {
         return this.§_-HD§;
      }
      
      public function get §_-7f§() : Vector.<Number>
      {
         return this.§_-Na§;
      }
   }
}

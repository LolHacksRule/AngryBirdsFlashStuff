package §_-CG§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   
   public class §_-gk§
   {
      
      public static const §_-aU§:int = 6;
      
      public static const §_-7-§:int = 3;
      
      public static const §_-bD§:int = 0;
      
      public static const §_-JD§:int = 0;
      
      public static const §_-am§:int = 4;
       
      
      private var §_-W6§:Vector.<Number>;
      
      private var §_-cP§:Vector.<Number>;
      
      private var §_-RF§:int;
      
      private var §_-0E§:int;
      
      private var §_-dx§:Boolean;
      
      public function §_-gk§(param1:int, param2:Boolean = false)
      {
         super();
         this.§_-W6§ = new Vector.<Number>(param1 * §_-aU§,false);
         this.§_-cP§ = new Vector.<Number>(param1 * §_-7-§,false);
         this.§_-dx§ = param2;
      }
      
      public function reset() : void
      {
         this.§_-RF§ = 0;
         this.§_-0E§ = 0;
         this.§_-cP§.fixed = false;
      }
      
      public function §_-5s§(param1:§_-gk§) : void
      {
         var _loc2_:Number = NaN;
         this.§_-W6§.fixed = false;
         for each(_loc2_ in param1.§_-W6§)
         {
            var _loc5_:*;
            this.§_-W6§[_loc5_ = this.§_-RF§++] = _loc2_;
         }
         this.§_-W6§.fixed = true;
         this.§_-cP§.fixed = false;
         for each(_loc2_ in param1.§_-cP§)
         {
            this.§_-cP§[_loc5_ = this.§_-0E§++] = _loc2_;
         }
         this.§_-cP§.fixed = true;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-7-§;
         this.§_-cP§[_loc5_] = param2;
         this.§_-cP§[_loc5_ + 1] = param3;
      }
      
      public function §_-qv§(param1:int) : Vector3D
      {
         var _loc2_:int = param1 * §_-7-§;
         return new Vector3D(this.§_-cP§[_loc2_],this.§_-cP§[_loc2_ + 1],0);
      }
      
      public function §_-9c§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         this.§_-Mg§(this.§_-Az§(param1) + §_-JD§,§_-66§.§_-Bg§(param2) * 0.00392156862745098,§_-66§.§_-zD§(param2) * 0.00392156862745098,§_-66§.§_-hS§(param2) * 0.00392156862745098,param3);
      }
      
      public function getColor(param1:int) : uint
      {
         var _loc2_:int = this.§_-Az§(param1) + §_-JD§;
         var _loc3_:Number = !!this.§_-dx§ ? Number(this.§_-W6§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         var _loc4_:Number = this.§_-W6§[_loc2_] / _loc3_;
         var _loc5_:Number = this.§_-W6§[_loc2_ + 1] / _loc3_;
         var _loc6_:Number = this.§_-W6§[_loc2_ + 2] / _loc3_;
         return §_-66§.§_-Xw§(_loc4_ * 255,_loc5_ * 255,_loc6_ * 255);
      }
      
      public function §_-7P§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-dx§)
         {
            this.§_-9c§(param1,this.getColor(param1),param2);
         }
         else
         {
            _loc3_ = this.§_-Az§(param1) + §_-JD§ + 3;
            this.§_-W6§[_loc3_] = param2;
         }
      }
      
      public function §_-QO§(param1:int) : Number
      {
         var _loc2_:int = this.§_-Az§(param1) + §_-JD§ + 3;
         return this.§_-W6§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-Mg§(this.§_-Az§(param1) + §_-am§,param2,param3);
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:int = this.§_-Az§(param1) + §_-am§;
         return new Point(this.§_-W6§[_loc2_],this.§_-W6§[_loc2_ + 1]);
      }
      
      public function clone() : §_-gk§
      {
         var _loc1_:§_-gk§ = new §_-gk§(0,this.§_-dx§);
         _loc1_.§_-W6§ = this.§_-W6§.concat();
         _loc1_.§_-W6§.fixed = true;
         _loc1_.§_-cP§ = this.§_-cP§.concat();
         _loc1_.§_-cP§.fixed = true;
         return _loc1_;
      }
      
      public function §_-tD§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-7-§;
         this.§_-cP§[_loc5_] += param2;
         this.§_-cP§[_loc5_ + 1] += param3;
      }
      
      public function §_-0u§(param1:Matrix3D) : void
      {
         param1.transformVectors(this.§_-cP§,this.§_-cP§);
         this.§_-cP§.fixed = true;
      }
      
      public function §_-e6§(param1:int, param2:Matrix3D = null) : void
      {
         var _loc3_:Vector3D = null;
         var _loc4_:Vector3D = null;
         if(param2)
         {
            _loc3_ = this.§_-qv§(param1);
            _loc4_ = param2.transformVector(_loc3_);
            this.setPosition(param1,_loc4_.x,_loc4_.y,_loc4_.z);
         }
      }
      
      public function setUniformColor(param1:uint, param2:Number = 1.0) : void
      {
         this.§_-XP§(0,this.§_-YV§,param1,param2);
      }
      
      public function §_-XP§(param1:int, param2:int, param3:uint, param4:Number = 1.0) : void
      {
         var _loc5_:Number = (!!this.§_-dx§ ? param4 : 1) / 255;
         var _loc6_:Number = §_-66§.§_-Bg§(param3) * _loc5_;
         var _loc7_:Number = §_-66§.§_-zD§(param3) * _loc5_;
         var _loc8_:Number = §_-66§.§_-hS§(param3) * _loc5_;
         var _loc9_:int = this.§_-Az§(param1);
         var _loc10_:int = 0;
         while(_loc10_ < param2)
         {
            this.§_-Mg§(_loc9_ + §_-JD§,_loc6_,_loc7_,_loc8_,param4);
            _loc9_ += §_-aU§;
            _loc10_++;
         }
      }
      
      public function §_-d§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-dx§)
         {
            this.§_-7P§(param1,this.§_-QO§(param1) * param2);
         }
         else
         {
            _loc3_ = this.§_-Az§(param1) + §_-JD§ + 3;
            this.§_-W6§[_loc3_] *= param2;
         }
      }
      
      private function §_-Mg§(param1:int, ... rest) : void
      {
         var _loc3_:int = rest.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            this.§_-W6§[param1 + _loc4_] = rest[_loc4_];
            _loc4_++;
         }
      }
      
      private function §_-Az§(param1:int) : int
      {
         return param1 * §_-aU§;
      }
      
      public function set premultipliedAlpha(param1:Boolean) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param1 == this.§_-dx§)
         {
            return;
         }
         var _loc2_:int = this.§_-W6§.length;
         var _loc3_:int = §_-JD§;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§_-W6§[_loc3_ + 3];
            _loc5_ = !!this.§_-dx§ ? Number(_loc4_) : Number(1);
            _loc6_ = (!!param1 ? _loc4_ : 1) / _loc5_;
            if(_loc5_ != 0)
            {
               this.§_-W6§[_loc3_] *= _loc6_;
               this.§_-W6§[_loc3_ + 1] *= _loc6_;
               this.§_-W6§[_loc3_ + 2] *= _loc6_;
            }
            _loc3_ += §_-aU§;
         }
         this.§_-dx§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§_-dx§;
      }
      
      public function get §_-YV§() : int
      {
         return this.§_-W6§.length / §_-aU§;
      }
      
      public function get data() : Vector.<Number>
      {
         return this.§_-W6§;
      }
      
      public function get §_-lC§() : Vector.<Number>
      {
         return this.§_-cP§;
      }
   }
}

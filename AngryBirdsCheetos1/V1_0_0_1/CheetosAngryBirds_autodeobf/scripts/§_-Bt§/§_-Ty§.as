package §_-Bt§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   
   public class §_-Ty§
   {
      
      public static const §_-1G§:int = 6;
      
      public static const §_-oB§:int = 3;
      
      public static const §_-iD§:int = 0;
      
      public static const §_-eN§:int = 0;
      
      public static const §_-dL§:int = 4;
       
      
      private var §_-K-§:Vector.<Number>;
      
      private var §_-0T§:Vector.<Number>;
      
      private var §_-6s§:int;
      
      private var §_-UJ§:int;
      
      private var §_-Wp§:Boolean;
      
      public function §_-Ty§(param1:int, param2:Boolean = false)
      {
         super();
         this.§_-K-§ = new Vector.<Number>(param1 * §_-1G§,false);
         this.§_-0T§ = new Vector.<Number>(param1 * §_-oB§,false);
         this.§_-Wp§ = param2;
      }
      
      public function reset() : void
      {
         this.§_-6s§ = 0;
         this.§_-UJ§ = 0;
         this.§_-0T§.fixed = false;
      }
      
      public function §_-ms§(param1:§_-Ty§) : void
      {
         var _loc2_:Number = NaN;
         this.§_-K-§.fixed = false;
         for each(_loc2_ in param1.§_-K-§)
         {
            var _loc5_:*;
            this.§_-K-§[_loc5_ = this.§_-6s§++] = _loc2_;
         }
         this.§_-K-§.fixed = true;
         this.§_-0T§.fixed = false;
         for each(_loc2_ in param1.§_-0T§)
         {
            this.§_-0T§[_loc5_ = this.§_-UJ§++] = _loc2_;
         }
         this.§_-0T§.fixed = true;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-oB§;
         this.§_-0T§[_loc5_] = param2;
         this.§_-0T§[_loc5_ + 1] = param3;
      }
      
      public function §_-r-§(param1:int) : Vector3D
      {
         var _loc2_:int = param1 * §_-oB§;
         return new Vector3D(this.§_-0T§[_loc2_],this.§_-0T§[_loc2_ + 1],0);
      }
      
      public function §_-iC§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (!!this.§_-Wp§ ? param3 : 1) / 255;
         this.§_-Fx§(this.§_-Lq§(param1) + §_-eN§,§_-Bu§.§_-ld§(param2) * _loc4_,§_-Bu§.§_-bt§(param2) * _loc4_,§_-Bu§.§_-YS§(param2) * _loc4_,param3);
      }
      
      public function §_-wq§(param1:int) : uint
      {
         var _loc2_:int = this.§_-Lq§(param1) + §_-eN§;
         var _loc3_:Number = !!this.§_-Wp§ ? Number(this.§_-K-§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         var _loc4_:Number = this.§_-K-§[_loc2_] / _loc3_;
         var _loc5_:Number = this.§_-K-§[_loc2_ + 1] / _loc3_;
         var _loc6_:Number = this.§_-K-§[_loc2_ + 2] / _loc3_;
         return §_-Bu§.§_-1h§(_loc4_ * 255,_loc5_ * 255,_loc6_ * 255);
      }
      
      public function §_-vP§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-Wp§)
         {
            this.§_-iC§(param1,this.§_-wq§(param1),param2);
         }
         else
         {
            _loc3_ = this.§_-Lq§(param1) + §_-eN§ + 3;
            this.§_-K-§[_loc3_] = param2;
         }
      }
      
      public function §_-6F§(param1:int) : Number
      {
         var _loc2_:int = this.§_-Lq§(param1) + §_-eN§ + 3;
         return this.§_-K-§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-Fx§(this.§_-Lq§(param1) + §_-dL§,param2,param3);
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:int = this.§_-Lq§(param1) + §_-dL§;
         return new Point(this.§_-K-§[_loc2_],this.§_-K-§[_loc2_ + 1]);
      }
      
      public function clone() : §_-Ty§
      {
         var _loc1_:§_-Ty§ = new §_-Ty§(0,this.§_-Wp§);
         _loc1_.§_-K-§ = this.§_-K-§.concat();
         _loc1_.§_-K-§.fixed = true;
         _loc1_.§_-0T§ = this.§_-0T§.concat();
         _loc1_.§_-0T§.fixed = true;
         return _loc1_;
      }
      
      public function §_-ja§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-oB§;
         this.§_-0T§[_loc5_] += param2;
         this.§_-0T§[_loc5_ + 1] += param3;
      }
      
      public function §_-fy§(param1:Matrix3D) : void
      {
         param1.transformVectors(this.§_-0T§,this.§_-0T§);
         this.§_-0T§.fixed = true;
      }
      
      public function §_-cO§(param1:int, param2:Matrix3D = null) : void
      {
         var _loc3_:Vector3D = null;
         var _loc4_:Vector3D = null;
         if(param2)
         {
            _loc3_ = this.§_-r-§(param1);
            _loc4_ = param2.transformVector(_loc3_);
            this.setPosition(param1,_loc4_.x,_loc4_.y,_loc4_.z);
         }
      }
      
      public function setUniformColor(param1:uint, param2:Number = 1.0) : void
      {
         this.§_-7-§(0,this.§_-1b§,param1,param2);
      }
      
      public function §_-7-§(param1:int, param2:int, param3:uint, param4:Number = 1.0) : void
      {
         var _loc5_:Number = 1 / 255;
         var _loc6_:Number = §_-Bu§.§_-ld§(param3) * _loc5_;
         var _loc7_:Number = §_-Bu§.§_-bt§(param3) * _loc5_;
         var _loc8_:Number = §_-Bu§.§_-YS§(param3) * _loc5_;
         var _loc9_:int = this.§_-Lq§(param1);
         var _loc10_:int = 0;
         while(_loc10_ < param2)
         {
            this.§_-Fx§(_loc9_ + §_-eN§,_loc6_,_loc7_,_loc8_,param4);
            _loc9_ += §_-1G§;
            _loc10_++;
         }
      }
      
      public function §_-NC§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc7_:int = this.§_-Lq§(param1);
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            this.§_-Fx§(_loc7_ + §_-eN§,param3,param4,param5,param6);
            _loc7_ += §_-1G§;
            _loc8_++;
         }
      }
      
      public function §_-X6§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-Wp§)
         {
            this.§_-vP§(param1,this.§_-6F§(param1) * param2);
         }
         else
         {
            _loc3_ = this.§_-Lq§(param1) + §_-eN§ + 3;
            this.§_-K-§[_loc3_] *= param2;
         }
      }
      
      private function §_-Fx§(param1:int, ... rest) : void
      {
         var _loc3_:int = rest.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            this.§_-K-§[param1 + _loc4_] = rest[_loc4_];
            _loc4_++;
         }
      }
      
      private function §_-Lq§(param1:int) : int
      {
         return param1 * §_-1G§;
      }
      
      public function set premultipliedAlpha(param1:Boolean) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param1 == this.§_-Wp§)
         {
            return;
         }
         var _loc2_:int = this.§_-K-§.length;
         var _loc3_:int = §_-eN§;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§_-K-§[_loc3_ + 3];
            _loc5_ = !!this.§_-Wp§ ? Number(_loc4_) : Number(1);
            _loc6_ = (!!param1 ? _loc4_ : 1) / _loc5_;
            if(_loc5_ != 0)
            {
               this.§_-K-§[_loc3_] *= _loc6_;
               this.§_-K-§[_loc3_ + 1] *= _loc6_;
               this.§_-K-§[_loc3_ + 2] *= _loc6_;
            }
            _loc3_ += §_-1G§;
         }
         this.§_-Wp§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§_-Wp§;
      }
      
      public function get §_-1b§() : int
      {
         return this.§_-K-§.length / §_-1G§;
      }
      
      public function get data() : Vector.<Number>
      {
         return this.§_-K-§;
      }
      
      public function get §_-n6§() : Vector.<Number>
      {
         return this.§_-0T§;
      }
   }
}

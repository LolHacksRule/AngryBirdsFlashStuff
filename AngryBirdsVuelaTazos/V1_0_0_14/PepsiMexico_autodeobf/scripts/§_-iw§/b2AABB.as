package §_-iw§
{
   import §_-4n§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §_-Cd§:b2Vec2;
      
      public var §_-sZ§:b2Vec2;
      
      public function b2AABB()
      {
         this.§_-Cd§ = new b2Vec2();
         this.§_-sZ§ = new b2Vec2();
         super();
      }
      
      public static function §_-8j§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§_-8j§(param1,param2);
         return _loc3_;
      }
      
      public function §_-KD§() : Boolean
      {
         var _loc1_:Number = this.§_-sZ§.x - this.§_-Cd§.x;
         var _loc2_:Number = this.§_-sZ§.y - this.§_-Cd§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§_-Cd§.§_-KD§() && this.§_-sZ§.§_-KD§());
      }
      
      public function §_-mb§() : b2Vec2
      {
         return new b2Vec2((this.§_-Cd§.x + this.§_-sZ§.x) / 2,(this.§_-Cd§.y + this.§_-sZ§.y) / 2);
      }
      
      public function §_-il§() : b2Vec2
      {
         return new b2Vec2((this.§_-sZ§.x - this.§_-Cd§.x) / 2,(this.§_-sZ§.y - this.§_-Cd§.y) / 2);
      }
      
      public function §_-Rl§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§_-Cd§.x <= param1.§_-Cd§.x;
         _loc2_ = _loc2_ && this.§_-Cd§.y <= param1.§_-Cd§.y;
         _loc2_ = _loc2_ && param1.§_-sZ§.x <= this.§_-sZ§.x;
         return Boolean(_loc2_ && param1.§_-sZ§.y <= this.§_-sZ§.y);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         var _loc11_:b2Vec2 = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc3_:Number = -Number.MAX_VALUE;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:Number = param2.p1.x;
         var _loc6_:Number = param2.p1.y;
         var _loc7_:Number = param2.p2.x - param2.p1.x;
         var _loc8_:Number = param2.p2.y - param2.p1.y;
         var _loc9_:Number = Math.abs(_loc7_);
         var _loc10_:Number = Math.abs(_loc8_);
         _loc11_ = param1.normal;
         if(_loc9_ < Number.MIN_VALUE)
         {
            if(_loc5_ < this.§_-Cd§.x || this.§_-sZ§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§_-Cd§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§_-sZ§.x - _loc5_) * _loc12_;
            _loc16_ = -1;
            if(_loc13_ > _loc14_)
            {
               _loc15_ = _loc13_;
               _loc13_ = _loc14_;
               _loc14_ = _loc15_;
               _loc16_ = 1;
            }
            if(_loc13_ > _loc3_)
            {
               _loc11_.x = _loc16_;
               _loc11_.y = 0;
               _loc3_ = _loc13_;
            }
            _loc4_ = Math.min(_loc4_,_loc14_);
            if(_loc3_ > _loc4_)
            {
               return false;
            }
         }
         if(_loc10_ < Number.MIN_VALUE)
         {
            if(_loc6_ < this.§_-Cd§.y || this.§_-sZ§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§_-Cd§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§_-sZ§.y - _loc6_) * _loc12_;
            _loc16_ = -1;
            if(_loc13_ > _loc14_)
            {
               _loc15_ = _loc13_;
               _loc13_ = _loc14_;
               _loc14_ = _loc15_;
               _loc16_ = 1;
            }
            if(_loc13_ > _loc3_)
            {
               _loc11_.y = _loc16_;
               _loc11_.x = 0;
               _loc3_ = _loc13_;
            }
            _loc4_ = Math.min(_loc4_,_loc14_);
            if(_loc3_ > _loc4_)
            {
               return false;
            }
         }
         param1.fraction = _loc3_;
         return true;
      }
      
      public function §_-va§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§_-Cd§.x - this.§_-sZ§.x;
         var _loc3_:Number = param1.§_-Cd§.y - this.§_-sZ§.y;
         var _loc4_:Number = this.§_-Cd§.x - param1.§_-sZ§.x;
         var _loc5_:Number = this.§_-Cd§.y - param1.§_-sZ§.y;
         if(_loc2_ > 0 || _loc3_ > 0)
         {
            return false;
         }
         if(_loc4_ > 0 || _loc5_ > 0)
         {
            return false;
         }
         return true;
      }
      
      public function §_-8j§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§_-Cd§.x = Math.min(param1.§_-Cd§.x,param2.§_-Cd§.x);
         this.§_-Cd§.y = Math.min(param1.§_-Cd§.y,param2.§_-Cd§.y);
         this.§_-sZ§.x = Math.max(param1.§_-sZ§.x,param2.§_-sZ§.x);
         this.§_-sZ§.y = Math.max(param1.§_-sZ§.y,param2.§_-sZ§.y);
      }
   }
}

package §_-Nw§
{
   import §_-9z§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §_-9P§:b2Vec2;
      
      public var §_-5c§:b2Vec2;
      
      public function b2AABB()
      {
         this.§_-9P§ = new b2Vec2();
         this.§_-5c§ = new b2Vec2();
         super();
      }
      
      public static function §_-ri§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§_-ri§(param1,param2);
         return _loc3_;
      }
      
      public function §_-Eq§() : Boolean
      {
         var _loc1_:Number = this.§_-5c§.x - this.§_-9P§.x;
         var _loc2_:Number = this.§_-5c§.y - this.§_-9P§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§_-9P§.§_-Eq§() && this.§_-5c§.§_-Eq§());
      }
      
      public function §_-3f§() : b2Vec2
      {
         return new b2Vec2((this.§_-9P§.x + this.§_-5c§.x) / 2,(this.§_-9P§.y + this.§_-5c§.y) / 2);
      }
      
      public function §_-Du§() : b2Vec2
      {
         return new b2Vec2((this.§_-5c§.x - this.§_-9P§.x) / 2,(this.§_-5c§.y - this.§_-9P§.y) / 2);
      }
      
      public function §_-Qx§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§_-9P§.x <= param1.§_-9P§.x;
         _loc2_ = _loc2_ && this.§_-9P§.y <= param1.§_-9P§.y;
         _loc2_ = _loc2_ && param1.§_-5c§.x <= this.§_-5c§.x;
         return Boolean(_loc2_ && param1.§_-5c§.y <= this.§_-5c§.y);
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
            if(_loc5_ < this.§_-9P§.x || this.§_-5c§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§_-9P§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§_-5c§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§_-9P§.y || this.§_-5c§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§_-9P§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§_-5c§.y - _loc6_) * _loc12_;
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
      
      public function §_-4S§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§_-9P§.x - this.§_-5c§.x;
         var _loc3_:Number = param1.§_-9P§.y - this.§_-5c§.y;
         var _loc4_:Number = this.§_-9P§.x - param1.§_-5c§.x;
         var _loc5_:Number = this.§_-9P§.y - param1.§_-5c§.y;
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
      
      public function §_-ri§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§_-9P§.x = Math.min(param1.§_-9P§.x,param2.§_-9P§.x);
         this.§_-9P§.y = Math.min(param1.§_-9P§.y,param2.§_-9P§.y);
         this.§_-5c§.x = Math.max(param1.§_-5c§.x,param2.§_-5c§.x);
         this.§_-5c§.y = Math.max(param1.§_-5c§.y,param2.§_-5c§.y);
      }
   }
}

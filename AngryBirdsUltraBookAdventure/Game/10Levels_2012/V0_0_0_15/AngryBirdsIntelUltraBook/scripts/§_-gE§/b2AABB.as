package §_-gE§
{
   import §_-Yp§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §_-Bv§:b2Vec2;
      
      public var §_-MB§:b2Vec2;
      
      public function b2AABB()
      {
         this.§_-Bv§ = new b2Vec2();
         this.§_-MB§ = new b2Vec2();
         super();
      }
      
      public static function §_-WW§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§_-WW§(param1,param2);
         return _loc3_;
      }
      
      public function §_-a8§() : Boolean
      {
         var _loc1_:Number = this.§_-MB§.x - this.§_-Bv§.x;
         var _loc2_:Number = this.§_-MB§.y - this.§_-Bv§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§_-Bv§.§_-a8§() && this.§_-MB§.§_-a8§());
      }
      
      public function §_-sF§() : b2Vec2
      {
         return new b2Vec2((this.§_-Bv§.x + this.§_-MB§.x) / 2,(this.§_-Bv§.y + this.§_-MB§.y) / 2);
      }
      
      public function §_-Uo§() : b2Vec2
      {
         return new b2Vec2((this.§_-MB§.x - this.§_-Bv§.x) / 2,(this.§_-MB§.y - this.§_-Bv§.y) / 2);
      }
      
      public function §_-PI§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§_-Bv§.x <= param1.§_-Bv§.x;
         _loc2_ = _loc2_ && this.§_-Bv§.y <= param1.§_-Bv§.y;
         _loc2_ = _loc2_ && param1.§_-MB§.x <= this.§_-MB§.x;
         return Boolean(_loc2_ && param1.§_-MB§.y <= this.§_-MB§.y);
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
            if(_loc5_ < this.§_-Bv§.x || this.§_-MB§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§_-Bv§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§_-MB§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§_-Bv§.y || this.§_-MB§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§_-Bv§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§_-MB§.y - _loc6_) * _loc12_;
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
      
      public function §_-Rd§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§_-Bv§.x - this.§_-MB§.x;
         var _loc3_:Number = param1.§_-Bv§.y - this.§_-MB§.y;
         var _loc4_:Number = this.§_-Bv§.x - param1.§_-MB§.x;
         var _loc5_:Number = this.§_-Bv§.y - param1.§_-MB§.y;
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
      
      public function §_-WW§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§_-Bv§.x = Math.min(param1.§_-Bv§.x,param2.§_-Bv§.x);
         this.§_-Bv§.y = Math.min(param1.§_-Bv§.y,param2.§_-Bv§.y);
         this.§_-MB§.x = Math.max(param1.§_-MB§.x,param2.§_-MB§.x);
         this.§_-MB§.y = Math.max(param1.§_-MB§.y,param2.§_-MB§.y);
      }
   }
}

package §_-qg§
{
   import §_-Ja§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §_-N-§:b2Vec2;
      
      public var §_-TE§:b2Vec2;
      
      public function b2AABB()
      {
         this.§_-N-§ = new b2Vec2();
         this.§_-TE§ = new b2Vec2();
         super();
      }
      
      public static function §_-ot§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§_-ot§(param1,param2);
         return _loc3_;
      }
      
      public function §_-yU§() : Boolean
      {
         var _loc1_:Number = this.§_-TE§.x - this.§_-N-§.x;
         var _loc2_:Number = this.§_-TE§.y - this.§_-N-§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§_-N-§.§_-yU§() && this.§_-TE§.§_-yU§());
      }
      
      public function §_-aW§() : b2Vec2
      {
         return new b2Vec2((this.§_-N-§.x + this.§_-TE§.x) / 2,(this.§_-N-§.y + this.§_-TE§.y) / 2);
      }
      
      public function §_-Dr§() : b2Vec2
      {
         return new b2Vec2((this.§_-TE§.x - this.§_-N-§.x) / 2,(this.§_-TE§.y - this.§_-N-§.y) / 2);
      }
      
      public function §_-r2§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§_-N-§.x <= param1.§_-N-§.x;
         _loc2_ = _loc2_ && this.§_-N-§.y <= param1.§_-N-§.y;
         _loc2_ = _loc2_ && param1.§_-TE§.x <= this.§_-TE§.x;
         return Boolean(_loc2_ && param1.§_-TE§.y <= this.§_-TE§.y);
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
            if(_loc5_ < this.§_-N-§.x || this.§_-TE§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§_-N-§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§_-TE§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§_-N-§.y || this.§_-TE§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§_-N-§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§_-TE§.y - _loc6_) * _loc12_;
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
      
      public function §_-pb§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§_-N-§.x - this.§_-TE§.x;
         var _loc3_:Number = param1.§_-N-§.y - this.§_-TE§.y;
         var _loc4_:Number = this.§_-N-§.x - param1.§_-TE§.x;
         var _loc5_:Number = this.§_-N-§.y - param1.§_-TE§.y;
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
      
      public function §_-ot§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§_-N-§.x = Math.min(param1.§_-N-§.x,param2.§_-N-§.x);
         this.§_-N-§.y = Math.min(param1.§_-N-§.y,param2.§_-N-§.y);
         this.§_-TE§.x = Math.max(param1.§_-TE§.x,param2.§_-TE§.x);
         this.§_-TE§.y = Math.max(param1.§_-TE§.y,param2.§_-TE§.y);
      }
   }
}

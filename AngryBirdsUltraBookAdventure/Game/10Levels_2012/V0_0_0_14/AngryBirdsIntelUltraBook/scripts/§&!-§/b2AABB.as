package §&!-§
{
   import §8>§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §]S§:b2Vec2;
      
      public var §-!o§:b2Vec2;
      
      public function b2AABB()
      {
         this.§]S§ = new b2Vec2();
         this.§-!o§ = new b2Vec2();
         super();
      }
      
      public static function §"!#§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§"!#§(param1,param2);
         return _loc3_;
      }
      
      public function §]d§() : Boolean
      {
         var _loc1_:Number = this.§-!o§.x - this.§]S§.x;
         var _loc2_:Number = this.§-!o§.y - this.§]S§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§]S§.§]d§() && this.§-!o§.§]d§());
      }
      
      public function §,§() : b2Vec2
      {
         return new b2Vec2((this.§]S§.x + this.§-!o§.x) / 2,(this.§]S§.y + this.§-!o§.y) / 2);
      }
      
      public function § ,§() : b2Vec2
      {
         return new b2Vec2((this.§-!o§.x - this.§]S§.x) / 2,(this.§-!o§.y - this.§]S§.y) / 2);
      }
      
      public function §#X§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§]S§.x <= param1.§]S§.x;
         _loc2_ = _loc2_ && this.§]S§.y <= param1.§]S§.y;
         _loc2_ = _loc2_ && param1.§-!o§.x <= this.§-!o§.x;
         return Boolean(_loc2_ && param1.§-!o§.y <= this.§-!o§.y);
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
            if(_loc5_ < this.§]S§.x || this.§-!o§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§]S§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§-!o§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§]S§.y || this.§-!o§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§]S§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§-!o§.y - _loc6_) * _loc12_;
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
      
      public function §'V§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§]S§.x - this.§-!o§.x;
         var _loc3_:Number = param1.§]S§.y - this.§-!o§.y;
         var _loc4_:Number = this.§]S§.x - param1.§-!o§.x;
         var _loc5_:Number = this.§]S§.y - param1.§-!o§.y;
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
      
      public function §"!#§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§]S§.x = Math.min(param1.§]S§.x,param2.§]S§.x);
         this.§]S§.y = Math.min(param1.§]S§.y,param2.§]S§.y);
         this.§-!o§.x = Math.max(param1.§-!o§.x,param2.§-!o§.x);
         this.§-!o§.y = Math.max(param1.§-!o§.y,param2.§-!o§.y);
      }
   }
}

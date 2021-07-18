package §'!;§
{
   import §<!B§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var § !d§:b2Vec2;
      
      public var §=!j§:b2Vec2;
      
      public function b2AABB()
      {
         this.§ !d§ = new b2Vec2();
         this.§=!j§ = new b2Vec2();
         super();
      }
      
      public static function §^!C§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§^!C§(param1,param2);
         return _loc3_;
      }
      
      public function §@Y§() : Boolean
      {
         var _loc1_:Number = this.§=!j§.x - this.§ !d§.x;
         var _loc2_:Number = this.§=!j§.y - this.§ !d§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§ !d§.§@Y§() && this.§=!j§.§@Y§());
      }
      
      public function §9Y§() : b2Vec2
      {
         return new b2Vec2((this.§ !d§.x + this.§=!j§.x) / 2,(this.§ !d§.y + this.§=!j§.y) / 2);
      }
      
      public function §]b§() : b2Vec2
      {
         return new b2Vec2((this.§=!j§.x - this.§ !d§.x) / 2,(this.§=!j§.y - this.§ !d§.y) / 2);
      }
      
      public function §'!q§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§ !d§.x <= param1.§ !d§.x;
         _loc2_ = _loc2_ && this.§ !d§.y <= param1.§ !d§.y;
         _loc2_ = _loc2_ && param1.§=!j§.x <= this.§=!j§.x;
         return Boolean(_loc2_ && param1.§=!j§.y <= this.§=!j§.y);
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
            if(_loc5_ < this.§ !d§.x || this.§=!j§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§ !d§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§=!j§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§ !d§.y || this.§=!j§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§ !d§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§=!j§.y - _loc6_) * _loc12_;
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
      
      public function §,!r§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§ !d§.x - this.§=!j§.x;
         var _loc3_:Number = param1.§ !d§.y - this.§=!j§.y;
         var _loc4_:Number = this.§ !d§.x - param1.§=!j§.x;
         var _loc5_:Number = this.§ !d§.y - param1.§=!j§.y;
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
      
      public function §^!C§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§ !d§.x = Math.min(param1.§ !d§.x,param2.§ !d§.x);
         this.§ !d§.y = Math.min(param1.§ !d§.y,param2.§ !d§.y);
         this.§=!j§.x = Math.max(param1.§=!j§.x,param2.§=!j§.x);
         this.§=!j§.y = Math.max(param1.§=!j§.y,param2.§=!j§.y);
      }
   }
}

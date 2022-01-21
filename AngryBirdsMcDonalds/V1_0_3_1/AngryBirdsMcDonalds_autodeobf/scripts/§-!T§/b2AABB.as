package §-!T§
{
   import §0,§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §3=§:b2Vec2;
      
      public var §5V§:b2Vec2;
      
      public function b2AABB()
      {
         this.§3=§ = new b2Vec2();
         this.§5V§ = new b2Vec2();
         super();
      }
      
      public static function §9c§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§9c§(param1,param2);
         return _loc3_;
      }
      
      public function §%!?§() : Boolean
      {
         var _loc1_:Number = this.§5V§.x - this.§3=§.x;
         var _loc2_:Number = this.§5V§.y - this.§3=§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§3=§.§%!?§() && this.§5V§.§%!?§());
      }
      
      public function §>N§() : b2Vec2
      {
         return new b2Vec2((this.§3=§.x + this.§5V§.x) / 2,(this.§3=§.y + this.§5V§.y) / 2);
      }
      
      public function §"!&§() : b2Vec2
      {
         return new b2Vec2((this.§5V§.x - this.§3=§.x) / 2,(this.§5V§.y - this.§3=§.y) / 2);
      }
      
      public function §`!X§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§3=§.x <= param1.§3=§.x;
         _loc2_ = _loc2_ && this.§3=§.y <= param1.§3=§.y;
         _loc2_ = _loc2_ && param1.§5V§.x <= this.§5V§.x;
         return Boolean(_loc2_ && param1.§5V§.y <= this.§5V§.y);
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
            if(_loc5_ < this.§3=§.x || this.§5V§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§3=§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§5V§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§3=§.y || this.§5V§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§3=§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§5V§.y - _loc6_) * _loc12_;
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
      
      public function §7q§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§3=§.x - this.§5V§.x;
         var _loc3_:Number = param1.§3=§.y - this.§5V§.y;
         var _loc4_:Number = this.§3=§.x - param1.§5V§.x;
         var _loc5_:Number = this.§3=§.y - param1.§5V§.y;
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
      
      public function §9c§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§3=§.x = Math.min(param1.§3=§.x,param2.§3=§.x);
         this.§3=§.y = Math.min(param1.§3=§.y,param2.§3=§.y);
         this.§5V§.x = Math.max(param1.§5V§.x,param2.§5V§.x);
         this.§5V§.y = Math.max(param1.§5V§.y,param2.§5V§.y);
      }
   }
}

package §1!1§
{
   import §?!h§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §=!8§:b2Vec2;
      
      public var §28§:b2Vec2;
      
      public function b2AABB()
      {
         this.§=!8§ = new b2Vec2();
         this.§28§ = new b2Vec2();
         super();
      }
      
      public static function §9!y§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§9!y§(param1,param2);
         return _loc3_;
      }
      
      public function §5,§() : Boolean
      {
         var _loc1_:Number = this.§28§.x - this.§=!8§.x;
         var _loc2_:Number = this.§28§.y - this.§=!8§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§=!8§.§5,§() && this.§28§.§5,§());
      }
      
      public function §7X§() : b2Vec2
      {
         return new b2Vec2((this.§=!8§.x + this.§28§.x) / 2,(this.§=!8§.y + this.§28§.y) / 2);
      }
      
      public function §2"1§() : b2Vec2
      {
         return new b2Vec2((this.§28§.x - this.§=!8§.x) / 2,(this.§28§.y - this.§=!8§.y) / 2);
      }
      
      public function §2p§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§=!8§.x <= param1.§=!8§.x;
         _loc2_ = _loc2_ && this.§=!8§.y <= param1.§=!8§.y;
         _loc2_ = _loc2_ && param1.§28§.x <= this.§28§.x;
         return Boolean(_loc2_ && param1.§28§.y <= this.§28§.y);
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
            if(_loc5_ < this.§=!8§.x || this.§28§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§=!8§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§28§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§=!8§.y || this.§28§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§=!8§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§28§.y - _loc6_) * _loc12_;
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
      
      public function §;!p§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§=!8§.x - this.§28§.x;
         var _loc3_:Number = param1.§=!8§.y - this.§28§.y;
         var _loc4_:Number = this.§=!8§.x - param1.§28§.x;
         var _loc5_:Number = this.§=!8§.y - param1.§28§.y;
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
      
      public function §9!y§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§=!8§.x = Math.min(param1.§=!8§.x,param2.§=!8§.x);
         this.§=!8§.y = Math.min(param1.§=!8§.y,param2.§=!8§.y);
         this.§28§.x = Math.max(param1.§28§.x,param2.§28§.x);
         this.§28§.y = Math.max(param1.§28§.y,param2.§28§.y);
      }
   }
}

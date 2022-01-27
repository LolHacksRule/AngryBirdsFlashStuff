package §>r§
{
   import §7"A§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §-"^§:b2Vec2;
      
      public var §%!n§:b2Vec2;
      
      public function b2AABB()
      {
         this.§-"^§ = new b2Vec2();
         this.§%!n§ = new b2Vec2();
         super();
      }
      
      public static function §5!^§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§5!^§(param1,param2);
         return _loc3_;
      }
      
      public function §[!X§() : Boolean
      {
         var _loc1_:Number = this.§%!n§.x - this.§-"^§.x;
         var _loc2_:Number = this.§%!n§.y - this.§-"^§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§-"^§.§[!X§() && this.§%!n§.§[!X§());
      }
      
      public function §3R§() : b2Vec2
      {
         return new b2Vec2((this.§-"^§.x + this.§%!n§.x) / 2,(this.§-"^§.y + this.§%!n§.y) / 2);
      }
      
      public function §4"`§() : b2Vec2
      {
         return new b2Vec2((this.§%!n§.x - this.§-"^§.x) / 2,(this.§%!n§.y - this.§-"^§.y) / 2);
      }
      
      public function §^!N§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§-"^§.x <= param1.§-"^§.x;
         _loc2_ = _loc2_ && this.§-"^§.y <= param1.§-"^§.y;
         _loc2_ = _loc2_ && param1.§%!n§.x <= this.§%!n§.x;
         return Boolean(_loc2_ && param1.§%!n§.y <= this.§%!n§.y);
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
            if(_loc5_ < this.§-"^§.x || this.§%!n§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§-"^§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§%!n§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§-"^§.y || this.§%!n§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§-"^§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§%!n§.y - _loc6_) * _loc12_;
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
      
      public function §+">§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§-"^§.x - this.§%!n§.x;
         var _loc3_:Number = param1.§-"^§.y - this.§%!n§.y;
         var _loc4_:Number = this.§-"^§.x - param1.§%!n§.x;
         var _loc5_:Number = this.§-"^§.y - param1.§%!n§.y;
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
      
      public function §5!^§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§-"^§.x = Math.min(param1.§-"^§.x,param2.§-"^§.x);
         this.§-"^§.y = Math.min(param1.§-"^§.y,param2.§-"^§.y);
         this.§%!n§.x = Math.max(param1.§%!n§.x,param2.§%!n§.x);
         this.§%!n§.y = Math.max(param1.§%!n§.y,param2.§%!n§.y);
      }
   }
}

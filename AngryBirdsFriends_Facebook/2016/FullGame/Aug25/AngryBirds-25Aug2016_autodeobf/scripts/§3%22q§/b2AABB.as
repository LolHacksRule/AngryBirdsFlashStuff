package §3"q§
{
   import §0m§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §6G§:b2Vec2;
      
      public var §%G§:b2Vec2;
      
      public function b2AABB()
      {
         this.§6G§ = new b2Vec2();
         this.§%G§ = new b2Vec2();
         super();
      }
      
      public static function §4x§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§4x§(param1,param2);
         return _loc3_;
      }
      
      public function §6!Y§() : Boolean
      {
         var _loc1_:Number = this.§%G§.x - this.§6G§.x;
         var _loc2_:Number = this.§%G§.y - this.§6G§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§6G§.§6!Y§() && this.§%G§.§6!Y§());
      }
      
      public function §+H§() : b2Vec2
      {
         return new b2Vec2((this.§6G§.x + this.§%G§.x) / 2,(this.§6G§.y + this.§%G§.y) / 2);
      }
      
      public function §5#_§() : b2Vec2
      {
         return new b2Vec2((this.§%G§.x - this.§6G§.x) / 2,(this.§%G§.y - this.§6G§.y) / 2);
      }
      
      public function §!#r§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§6G§.x <= param1.§6G§.x;
         _loc2_ = _loc2_ && this.§6G§.y <= param1.§6G§.y;
         _loc2_ = _loc2_ && param1.§%G§.x <= this.§%G§.x;
         return Boolean(_loc2_ && param1.§%G§.y <= this.§%G§.y);
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
            if(_loc5_ < this.§6G§.x || this.§%G§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§6G§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§%G§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§6G§.y || this.§%G§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§6G§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§%G§.y - _loc6_) * _loc12_;
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
      
      public function §4"t§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§6G§.x - this.§%G§.x;
         var _loc3_:Number = param1.§6G§.y - this.§%G§.y;
         var _loc4_:Number = this.§6G§.x - param1.§%G§.x;
         var _loc5_:Number = this.§6G§.y - param1.§%G§.y;
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
      
      public function §4x§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§6G§.x = Math.min(param1.§6G§.x,param2.§6G§.x);
         this.§6G§.y = Math.min(param1.§6G§.y,param2.§6G§.y);
         this.§%G§.x = Math.max(param1.§%G§.x,param2.§%G§.x);
         this.§%G§.y = Math.max(param1.§%G§.y,param2.§%G§.y);
      }
   }
}

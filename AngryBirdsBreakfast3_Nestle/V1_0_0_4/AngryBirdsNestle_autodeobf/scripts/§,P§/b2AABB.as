package §,P§
{
   import §-%§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §=V§:b2Vec2;
      
      public var §;!T§:b2Vec2;
      
      public function b2AABB()
      {
         this.§=V§ = new b2Vec2();
         this.§;!T§ = new b2Vec2();
         super();
      }
      
      public static function §,!c§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§,!c§(param1,param2);
         return _loc3_;
      }
      
      public function §4!A§() : Boolean
      {
         var _loc1_:Number = this.§;!T§.x - this.§=V§.x;
         var _loc2_:Number = this.§;!T§.y - this.§=V§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§=V§.§4!A§() && this.§;!T§.§4!A§());
      }
      
      public function §^!d§() : b2Vec2
      {
         return new b2Vec2((this.§=V§.x + this.§;!T§.x) / 2,(this.§=V§.y + this.§;!T§.y) / 2);
      }
      
      public function §@!h§() : b2Vec2
      {
         return new b2Vec2((this.§;!T§.x - this.§=V§.x) / 2,(this.§;!T§.y - this.§=V§.y) / 2);
      }
      
      public function §>!d§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§=V§.x <= param1.§=V§.x;
         _loc2_ = _loc2_ && this.§=V§.y <= param1.§=V§.y;
         _loc2_ = _loc2_ && param1.§;!T§.x <= this.§;!T§.x;
         return Boolean(_loc2_ && param1.§;!T§.y <= this.§;!T§.y);
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
            if(_loc5_ < this.§=V§.x || this.§;!T§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§=V§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§;!T§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§=V§.y || this.§;!T§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§=V§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§;!T§.y - _loc6_) * _loc12_;
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
      
      public function §1`§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§=V§.x - this.§;!T§.x;
         var _loc3_:Number = param1.§=V§.y - this.§;!T§.y;
         var _loc4_:Number = this.§=V§.x - param1.§;!T§.x;
         var _loc5_:Number = this.§=V§.y - param1.§;!T§.y;
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
      
      public function §,!c§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§=V§.x = Math.min(param1.§=V§.x,param2.§=V§.x);
         this.§=V§.y = Math.min(param1.§=V§.y,param2.§=V§.y);
         this.§;!T§.x = Math.max(param1.§;!T§.x,param2.§;!T§.x);
         this.§;!T§.y = Math.max(param1.§;!T§.y,param2.§;!T§.y);
      }
   }
}

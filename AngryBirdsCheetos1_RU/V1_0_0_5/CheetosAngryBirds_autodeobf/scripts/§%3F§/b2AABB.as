package §?§
{
   import §+,§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §]!@§:b2Vec2;
      
      public var §=H§:b2Vec2;
      
      public function b2AABB()
      {
         this.§]!@§ = new b2Vec2();
         this.§=H§ = new b2Vec2();
         super();
      }
      
      public static function §7!P§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§7!P§(param1,param2);
         return _loc3_;
      }
      
      public function §;e§() : Boolean
      {
         var _loc1_:Number = this.§=H§.x - this.§]!@§.x;
         var _loc2_:Number = this.§=H§.y - this.§]!@§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§]!@§.§;e§() && this.§=H§.§;e§());
      }
      
      public function §<!L§() : b2Vec2
      {
         return new b2Vec2((this.§]!@§.x + this.§=H§.x) / 2,(this.§]!@§.y + this.§=H§.y) / 2);
      }
      
      public function §&P§() : b2Vec2
      {
         return new b2Vec2((this.§=H§.x - this.§]!@§.x) / 2,(this.§=H§.y - this.§]!@§.y) / 2);
      }
      
      public function §8!L§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§]!@§.x <= param1.§]!@§.x;
         _loc2_ = _loc2_ && this.§]!@§.y <= param1.§]!@§.y;
         _loc2_ = _loc2_ && param1.§=H§.x <= this.§=H§.x;
         return Boolean(_loc2_ && param1.§=H§.y <= this.§=H§.y);
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
            if(_loc5_ < this.§]!@§.x || this.§=H§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§]!@§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§=H§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§]!@§.y || this.§=H§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§]!@§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§=H§.y - _loc6_) * _loc12_;
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
      
      public function §@!Z§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§]!@§.x - this.§=H§.x;
         var _loc3_:Number = param1.§]!@§.y - this.§=H§.y;
         var _loc4_:Number = this.§]!@§.x - param1.§=H§.x;
         var _loc5_:Number = this.§]!@§.y - param1.§=H§.y;
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
      
      public function §7!P§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§]!@§.x = Math.min(param1.§]!@§.x,param2.§]!@§.x);
         this.§]!@§.y = Math.min(param1.§]!@§.y,param2.§]!@§.y);
         this.§=H§.x = Math.max(param1.§=H§.x,param2.§=H§.x);
         this.§=H§.y = Math.max(param1.§=H§.y,param2.§=H§.y);
      }
   }
}

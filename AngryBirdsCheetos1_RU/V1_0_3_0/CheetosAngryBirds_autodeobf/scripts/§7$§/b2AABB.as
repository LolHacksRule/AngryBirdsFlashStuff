package §7$§
{
   import §[R§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var § !B§:b2Vec2;
      
      public var §>w§:b2Vec2;
      
      public function b2AABB()
      {
         this.§ !B§ = new b2Vec2();
         this.§>w§ = new b2Vec2();
         super();
      }
      
      public static function §^!H§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§^!H§(param1,param2);
         return _loc3_;
      }
      
      public function §3U§() : Boolean
      {
         var _loc1_:Number = this.§>w§.x - this.§ !B§.x;
         var _loc2_:Number = this.§>w§.y - this.§ !B§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§ !B§.§3U§() && this.§>w§.§3U§());
      }
      
      public function §`!R§() : b2Vec2
      {
         return new b2Vec2((this.§ !B§.x + this.§>w§.x) / 2,(this.§ !B§.y + this.§>w§.y) / 2);
      }
      
      public function §4!a§() : b2Vec2
      {
         return new b2Vec2((this.§>w§.x - this.§ !B§.x) / 2,(this.§>w§.y - this.§ !B§.y) / 2);
      }
      
      public function §=!'§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§ !B§.x <= param1.§ !B§.x;
         _loc2_ = _loc2_ && this.§ !B§.y <= param1.§ !B§.y;
         _loc2_ = _loc2_ && param1.§>w§.x <= this.§>w§.x;
         return Boolean(_loc2_ && param1.§>w§.y <= this.§>w§.y);
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
            if(_loc5_ < this.§ !B§.x || this.§>w§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§ !B§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§>w§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§ !B§.y || this.§>w§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§ !B§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§>w§.y - _loc6_) * _loc12_;
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
      
      public function §?U§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§ !B§.x - this.§>w§.x;
         var _loc3_:Number = param1.§ !B§.y - this.§>w§.y;
         var _loc4_:Number = this.§ !B§.x - param1.§>w§.x;
         var _loc5_:Number = this.§ !B§.y - param1.§>w§.y;
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
      
      public function §^!H§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§ !B§.x = Math.min(param1.§ !B§.x,param2.§ !B§.x);
         this.§ !B§.y = Math.min(param1.§ !B§.y,param2.§ !B§.y);
         this.§>w§.x = Math.max(param1.§>w§.x,param2.§>w§.x);
         this.§>w§.y = Math.max(param1.§>w§.y,param2.§>w§.y);
      }
   }
}

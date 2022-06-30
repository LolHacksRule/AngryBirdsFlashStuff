package §%]§
{
   import §,!3§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §'H§:b2Vec2;
      
      public var §@!X§:b2Vec2;
      
      public function b2AABB()
      {
         this.§'H§ = new b2Vec2();
         this.§@!X§ = new b2Vec2();
         super();
      }
      
      public static function §3z§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§3z§(param1,param2);
         return _loc3_;
      }
      
      public function §3!0§() : Boolean
      {
         var _loc1_:Number = this.§@!X§.x - this.§'H§.x;
         var _loc2_:Number = this.§@!X§.y - this.§'H§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§'H§.§3!0§() && this.§@!X§.§3!0§());
      }
      
      public function §;!X§() : b2Vec2
      {
         return new b2Vec2((this.§'H§.x + this.§@!X§.x) / 2,(this.§'H§.y + this.§@!X§.y) / 2);
      }
      
      public function §3W§() : b2Vec2
      {
         return new b2Vec2((this.§@!X§.x - this.§'H§.x) / 2,(this.§@!X§.y - this.§'H§.y) / 2);
      }
      
      public function §^!L§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§'H§.x <= param1.§'H§.x;
         _loc2_ = _loc2_ && this.§'H§.y <= param1.§'H§.y;
         _loc2_ = _loc2_ && param1.§@!X§.x <= this.§@!X§.x;
         return Boolean(_loc2_ && param1.§@!X§.y <= this.§@!X§.y);
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
            if(_loc5_ < this.§'H§.x || this.§@!X§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§'H§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§@!X§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§'H§.y || this.§@!X§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§'H§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§@!X§.y - _loc6_) * _loc12_;
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
      
      public function §#8§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§'H§.x - this.§@!X§.x;
         var _loc3_:Number = param1.§'H§.y - this.§@!X§.y;
         var _loc4_:Number = this.§'H§.x - param1.§@!X§.x;
         var _loc5_:Number = this.§'H§.y - param1.§@!X§.y;
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
      
      public function §3z§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§'H§.x = Math.min(param1.§'H§.x,param2.§'H§.x);
         this.§'H§.y = Math.min(param1.§'H§.y,param2.§'H§.y);
         this.§@!X§.x = Math.max(param1.§@!X§.x,param2.§@!X§.x);
         this.§@!X§.y = Math.max(param1.§@!X§.y,param2.§@!X§.y);
      }
   }
}

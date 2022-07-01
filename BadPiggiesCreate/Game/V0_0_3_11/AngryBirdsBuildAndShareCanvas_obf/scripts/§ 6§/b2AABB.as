package § 6§
{
   import §+L§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §2g§:b2Vec2;
      
      public var §3!P§:b2Vec2;
      
      public function b2AABB()
      {
         this.§2g§ = new b2Vec2();
         this.§3!P§ = new b2Vec2();
         super();
      }
      
      public static function §'!v§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§'!v§(param1,param2);
         return _loc3_;
      }
      
      public function §=!q§() : Boolean
      {
         var _loc1_:Number = this.§3!P§.x - this.§2g§.x;
         var _loc2_:Number = this.§3!P§.y - this.§2g§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§2g§.§=!q§() && this.§3!P§.§=!q§());
      }
      
      public function §,!$§() : b2Vec2
      {
         return new b2Vec2((this.§2g§.x + this.§3!P§.x) / 2,(this.§2g§.y + this.§3!P§.y) / 2);
      }
      
      public function §`!H§() : b2Vec2
      {
         return new b2Vec2((this.§3!P§.x - this.§2g§.x) / 2,(this.§3!P§.y - this.§2g§.y) / 2);
      }
      
      public function §+!`§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§2g§.x <= param1.§2g§.x;
         _loc2_ = _loc2_ && this.§2g§.y <= param1.§2g§.y;
         _loc2_ = _loc2_ && param1.§3!P§.x <= this.§3!P§.x;
         return Boolean(_loc2_ && param1.§3!P§.y <= this.§3!P§.y);
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
            if(_loc5_ < this.§2g§.x || this.§3!P§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§2g§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§3!P§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§2g§.y || this.§3!P§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§2g§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§3!P§.y - _loc6_) * _loc12_;
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
      
      public function §&!P§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§2g§.x - this.§3!P§.x;
         var _loc3_:Number = param1.§2g§.y - this.§3!P§.y;
         var _loc4_:Number = this.§2g§.x - param1.§3!P§.x;
         var _loc5_:Number = this.§2g§.y - param1.§3!P§.y;
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
      
      public function §'!v§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§2g§.x = Math.min(param1.§2g§.x,param2.§2g§.x);
         this.§2g§.y = Math.min(param1.§2g§.y,param2.§2g§.y);
         this.§3!P§.x = Math.max(param1.§3!P§.x,param2.§3!P§.x);
         this.§3!P§.y = Math.max(param1.§3!P§.y,param2.§3!P§.y);
      }
   }
}

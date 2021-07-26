package §,#E§
{
   import §04§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §##N§:b2Vec2;
      
      public var §#r§:b2Vec2;
      
      public function b2AABB()
      {
         this.§##N§ = new b2Vec2();
         this.§#r§ = new b2Vec2();
         super();
      }
      
      public static function §!!+§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§!!+§(param1,param2);
         return _loc3_;
      }
      
      public function §%!l§() : Boolean
      {
         var _loc1_:Number = this.§#r§.x - this.§##N§.x;
         var _loc2_:Number = this.§#r§.y - this.§##N§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§##N§.§%!l§() && this.§#r§.§%!l§());
      }
      
      public function §9!f§() : b2Vec2
      {
         return new b2Vec2((this.§##N§.x + this.§#r§.x) / 2,(this.§##N§.y + this.§#r§.y) / 2);
      }
      
      public function §2!1§() : b2Vec2
      {
         return new b2Vec2((this.§#r§.x - this.§##N§.x) / 2,(this.§#r§.y - this.§##N§.y) / 2);
      }
      
      public function §0;§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§##N§.x <= param1.§##N§.x;
         _loc2_ = _loc2_ && this.§##N§.y <= param1.§##N§.y;
         _loc2_ = _loc2_ && param1.§#r§.x <= this.§#r§.x;
         return Boolean(_loc2_ && param1.§#r§.y <= this.§#r§.y);
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
            if(_loc5_ < this.§##N§.x || this.§#r§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§##N§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§#r§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§##N§.y || this.§#r§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§##N§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§#r§.y - _loc6_) * _loc12_;
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
      
      public function §2#%§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§##N§.x - this.§#r§.x;
         var _loc3_:Number = param1.§##N§.y - this.§#r§.y;
         var _loc4_:Number = this.§##N§.x - param1.§#r§.x;
         var _loc5_:Number = this.§##N§.y - param1.§#r§.y;
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
      
      public function §!!+§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§##N§.x = Math.min(param1.§##N§.x,param2.§##N§.x);
         this.§##N§.y = Math.min(param1.§##N§.y,param2.§##N§.y);
         this.§#r§.x = Math.max(param1.§#r§.x,param2.§#r§.x);
         this.§#r§.y = Math.max(param1.§#r§.y,param2.§#r§.y);
      }
   }
}

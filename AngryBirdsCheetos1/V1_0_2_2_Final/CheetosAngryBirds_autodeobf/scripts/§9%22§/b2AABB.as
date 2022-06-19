package §9"§
{
   import §0!G§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §!!C§:b2Vec2;
      
      public var §<0§:b2Vec2;
      
      public function b2AABB()
      {
         this.§!!C§ = new b2Vec2();
         this.§<0§ = new b2Vec2();
         super();
      }
      
      public static function §8h§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§8h§(param1,param2);
         return _loc3_;
      }
      
      public function §6m§() : Boolean
      {
         var _loc1_:Number = this.§<0§.x - this.§!!C§.x;
         var _loc2_:Number = this.§<0§.y - this.§!!C§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§!!C§.§6m§() && this.§<0§.§6m§());
      }
      
      public function §2!A§() : b2Vec2
      {
         return new b2Vec2((this.§!!C§.x + this.§<0§.x) / 2,(this.§!!C§.y + this.§<0§.y) / 2);
      }
      
      public function §?a§() : b2Vec2
      {
         return new b2Vec2((this.§<0§.x - this.§!!C§.x) / 2,(this.§<0§.y - this.§!!C§.y) / 2);
      }
      
      public function §&!W§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§!!C§.x <= param1.§!!C§.x;
         _loc2_ = _loc2_ && this.§!!C§.y <= param1.§!!C§.y;
         _loc2_ = _loc2_ && param1.§<0§.x <= this.§<0§.x;
         return Boolean(_loc2_ && param1.§<0§.y <= this.§<0§.y);
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
            if(_loc5_ < this.§!!C§.x || this.§<0§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§!!C§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§<0§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§!!C§.y || this.§<0§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§!!C§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§<0§.y - _loc6_) * _loc12_;
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
      
      public function §[!K§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§!!C§.x - this.§<0§.x;
         var _loc3_:Number = param1.§!!C§.y - this.§<0§.y;
         var _loc4_:Number = this.§!!C§.x - param1.§<0§.x;
         var _loc5_:Number = this.§!!C§.y - param1.§<0§.y;
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
      
      public function §8h§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§!!C§.x = Math.min(param1.§!!C§.x,param2.§!!C§.x);
         this.§!!C§.y = Math.min(param1.§!!C§.y,param2.§!!C§.y);
         this.§<0§.x = Math.max(param1.§<0§.x,param2.§<0§.x);
         this.§<0§.y = Math.max(param1.§<0§.y,param2.§<0§.y);
      }
   }
}

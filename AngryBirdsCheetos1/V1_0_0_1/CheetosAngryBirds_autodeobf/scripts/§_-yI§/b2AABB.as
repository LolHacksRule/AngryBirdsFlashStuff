package §_-yI§
{
   import §_-cP§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §_-fA§:b2Vec2;
      
      public var §_-WM§:b2Vec2;
      
      public function b2AABB()
      {
         this.§_-fA§ = new b2Vec2();
         this.§_-WM§ = new b2Vec2();
         super();
      }
      
      public static function §_-m-§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§_-m-§(param1,param2);
         return _loc3_;
      }
      
      public function §_-Ir§() : Boolean
      {
         var _loc1_:Number = this.§_-WM§.x - this.§_-fA§.x;
         var _loc2_:Number = this.§_-WM§.y - this.§_-fA§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§_-fA§.§_-Ir§() && this.§_-WM§.§_-Ir§());
      }
      
      public function §_-fb§() : b2Vec2
      {
         return new b2Vec2((this.§_-fA§.x + this.§_-WM§.x) / 2,(this.§_-fA§.y + this.§_-WM§.y) / 2);
      }
      
      public function §_-yN§() : b2Vec2
      {
         return new b2Vec2((this.§_-WM§.x - this.§_-fA§.x) / 2,(this.§_-WM§.y - this.§_-fA§.y) / 2);
      }
      
      public function §_-7q§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§_-fA§.x <= param1.§_-fA§.x;
         _loc2_ = _loc2_ && this.§_-fA§.y <= param1.§_-fA§.y;
         _loc2_ = _loc2_ && param1.§_-WM§.x <= this.§_-WM§.x;
         return Boolean(_loc2_ && param1.§_-WM§.y <= this.§_-WM§.y);
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
            if(_loc5_ < this.§_-fA§.x || this.§_-WM§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§_-fA§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§_-WM§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§_-fA§.y || this.§_-WM§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§_-fA§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§_-WM§.y - _loc6_) * _loc12_;
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
      
      public function §_-wT§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§_-fA§.x - this.§_-WM§.x;
         var _loc3_:Number = param1.§_-fA§.y - this.§_-WM§.y;
         var _loc4_:Number = this.§_-fA§.x - param1.§_-WM§.x;
         var _loc5_:Number = this.§_-fA§.y - param1.§_-WM§.y;
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
      
      public function §_-m-§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§_-fA§.x = Math.min(param1.§_-fA§.x,param2.§_-fA§.x);
         this.§_-fA§.y = Math.min(param1.§_-fA§.y,param2.§_-fA§.y);
         this.§_-WM§.x = Math.max(param1.§_-WM§.x,param2.§_-WM§.x);
         this.§_-WM§.y = Math.max(param1.§_-WM§.y,param2.§_-WM§.y);
      }
   }
}

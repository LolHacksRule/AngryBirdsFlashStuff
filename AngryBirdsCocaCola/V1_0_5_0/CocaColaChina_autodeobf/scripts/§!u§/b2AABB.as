package §!u§
{
   import §;h§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §;s§:b2Vec2;
      
      public var §`!]§:b2Vec2;
      
      public function b2AABB()
      {
         this.§;s§ = new b2Vec2();
         this.§`!]§ = new b2Vec2();
         super();
      }
      
      public static function §?!P§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§?!P§(param1,param2);
         return _loc3_;
      }
      
      public function §2!C§() : Boolean
      {
         var _loc1_:Number = this.§`!]§.x - this.§;s§.x;
         var _loc2_:Number = this.§`!]§.y - this.§;s§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§;s§.§2!C§() && this.§`!]§.§2!C§());
      }
      
      public function §;k§() : b2Vec2
      {
         return new b2Vec2((this.§;s§.x + this.§`!]§.x) / 2,(this.§;s§.y + this.§`!]§.y) / 2);
      }
      
      public function §[t§() : b2Vec2
      {
         return new b2Vec2((this.§`!]§.x - this.§;s§.x) / 2,(this.§`!]§.y - this.§;s§.y) / 2);
      }
      
      public function §@>§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§;s§.x <= param1.§;s§.x;
         _loc2_ = _loc2_ && this.§;s§.y <= param1.§;s§.y;
         _loc2_ = _loc2_ && param1.§`!]§.x <= this.§`!]§.x;
         return Boolean(_loc2_ && param1.§`!]§.y <= this.§`!]§.y);
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
            if(_loc5_ < this.§;s§.x || this.§`!]§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§;s§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§`!]§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§;s§.y || this.§`!]§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§;s§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§`!]§.y - _loc6_) * _loc12_;
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
      
      public function §"!a§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§;s§.x - this.§`!]§.x;
         var _loc3_:Number = param1.§;s§.y - this.§`!]§.y;
         var _loc4_:Number = this.§;s§.x - param1.§`!]§.x;
         var _loc5_:Number = this.§;s§.y - param1.§`!]§.y;
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
      
      public function §?!P§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§;s§.x = Math.min(param1.§;s§.x,param2.§;s§.x);
         this.§;s§.y = Math.min(param1.§;s§.y,param2.§;s§.y);
         this.§`!]§.x = Math.max(param1.§`!]§.x,param2.§`!]§.x);
         this.§`!]§.y = Math.max(param1.§`!]§.y,param2.§`!]§.y);
      }
   }
}

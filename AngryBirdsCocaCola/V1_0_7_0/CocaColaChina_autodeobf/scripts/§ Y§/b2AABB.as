package § Y§
{
   import §<!8§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §'!K§:b2Vec2;
      
      public var §#W§:b2Vec2;
      
      public function b2AABB()
      {
         this.§'!K§ = new b2Vec2();
         this.§#W§ = new b2Vec2();
         super();
      }
      
      public static function §!!Y§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§!!Y§(param1,param2);
         return _loc3_;
      }
      
      public function §4K§() : Boolean
      {
         var _loc1_:Number = this.§#W§.x - this.§'!K§.x;
         var _loc2_:Number = this.§#W§.y - this.§'!K§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§'!K§.§4K§() && this.§#W§.§4K§());
      }
      
      public function §3!T§() : b2Vec2
      {
         return new b2Vec2((this.§'!K§.x + this.§#W§.x) / 2,(this.§'!K§.y + this.§#W§.y) / 2);
      }
      
      public function §=!,§() : b2Vec2
      {
         return new b2Vec2((this.§#W§.x - this.§'!K§.x) / 2,(this.§#W§.y - this.§'!K§.y) / 2);
      }
      
      public function §]a§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§'!K§.x <= param1.§'!K§.x;
         _loc2_ = _loc2_ && this.§'!K§.y <= param1.§'!K§.y;
         _loc2_ = _loc2_ && param1.§#W§.x <= this.§#W§.x;
         return Boolean(_loc2_ && param1.§#W§.y <= this.§#W§.y);
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
            if(_loc5_ < this.§'!K§.x || this.§#W§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§'!K§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§#W§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§'!K§.y || this.§#W§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§'!K§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§#W§.y - _loc6_) * _loc12_;
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
      
      public function §#!J§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§'!K§.x - this.§#W§.x;
         var _loc3_:Number = param1.§'!K§.y - this.§#W§.y;
         var _loc4_:Number = this.§'!K§.x - param1.§#W§.x;
         var _loc5_:Number = this.§'!K§.y - param1.§#W§.y;
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
      
      public function §!!Y§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§'!K§.x = Math.min(param1.§'!K§.x,param2.§'!K§.x);
         this.§'!K§.y = Math.min(param1.§'!K§.y,param2.§'!K§.y);
         this.§#W§.x = Math.max(param1.§#W§.x,param2.§#W§.x);
         this.§#W§.y = Math.max(param1.§#W§.y,param2.§#W§.y);
      }
   }
}

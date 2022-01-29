package §'"$§
{
   import § "%§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §]#b§:b2Vec2;
      
      public var §!O§:b2Vec2;
      
      public function b2AABB()
      {
         this.§]#b§ = new b2Vec2();
         this.§!O§ = new b2Vec2();
         super();
      }
      
      public static function §6"#§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§6"#§(param1,param2);
         return _loc3_;
      }
      
      public function §;#R§() : Boolean
      {
         var _loc1_:Number = this.§!O§.x - this.§]#b§.x;
         var _loc2_:Number = this.§!O§.y - this.§]#b§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§]#b§.§;#R§() && this.§!O§.§;#R§());
      }
      
      public function §<!N§() : b2Vec2
      {
         return new b2Vec2((this.§]#b§.x + this.§!O§.x) / 2,(this.§]#b§.y + this.§!O§.y) / 2);
      }
      
      public function §[!$§() : b2Vec2
      {
         return new b2Vec2((this.§!O§.x - this.§]#b§.x) / 2,(this.§!O§.y - this.§]#b§.y) / 2);
      }
      
      public function §1"l§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§]#b§.x <= param1.§]#b§.x;
         _loc2_ = _loc2_ && this.§]#b§.y <= param1.§]#b§.y;
         _loc2_ = _loc2_ && param1.§!O§.x <= this.§!O§.x;
         return Boolean(_loc2_ && param1.§!O§.y <= this.§!O§.y);
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
            if(_loc5_ < this.§]#b§.x || this.§!O§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§]#b§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§!O§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§]#b§.y || this.§!O§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§]#b§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§!O§.y - _loc6_) * _loc12_;
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
      
      public function §4"-§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§]#b§.x - this.§!O§.x;
         var _loc3_:Number = param1.§]#b§.y - this.§!O§.y;
         var _loc4_:Number = this.§]#b§.x - param1.§!O§.x;
         var _loc5_:Number = this.§]#b§.y - param1.§!O§.y;
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
      
      public function §6"#§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§]#b§.x = Math.min(param1.§]#b§.x,param2.§]#b§.x);
         this.§]#b§.y = Math.min(param1.§]#b§.y,param2.§]#b§.y);
         this.§!O§.x = Math.max(param1.§!O§.x,param2.§!O§.x);
         this.§!O§.y = Math.max(param1.§!O§.y,param2.§!O§.y);
      }
   }
}

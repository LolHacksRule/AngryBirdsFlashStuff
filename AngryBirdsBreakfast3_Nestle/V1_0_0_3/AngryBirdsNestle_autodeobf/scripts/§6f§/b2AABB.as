package §6f§
{
   import §,!k§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §-Z§:b2Vec2;
      
      public var §7^§:b2Vec2;
      
      public function b2AABB()
      {
         this.§-Z§ = new b2Vec2();
         this.§7^§ = new b2Vec2();
         super();
      }
      
      public static function §<I§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§<I§(param1,param2);
         return _loc3_;
      }
      
      public function §2?§() : Boolean
      {
         var _loc1_:Number = this.§7^§.x - this.§-Z§.x;
         var _loc2_:Number = this.§7^§.y - this.§-Z§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§-Z§.§2?§() && this.§7^§.§2?§());
      }
      
      public function §+!l§() : b2Vec2
      {
         return new b2Vec2((this.§-Z§.x + this.§7^§.x) / 2,(this.§-Z§.y + this.§7^§.y) / 2);
      }
      
      public function §2!T§() : b2Vec2
      {
         return new b2Vec2((this.§7^§.x - this.§-Z§.x) / 2,(this.§7^§.y - this.§-Z§.y) / 2);
      }
      
      public function §%!f§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§-Z§.x <= param1.§-Z§.x;
         _loc2_ = _loc2_ && this.§-Z§.y <= param1.§-Z§.y;
         _loc2_ = _loc2_ && param1.§7^§.x <= this.§7^§.x;
         return Boolean(_loc2_ && param1.§7^§.y <= this.§7^§.y);
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
            if(_loc5_ < this.§-Z§.x || this.§7^§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§-Z§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§7^§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§-Z§.y || this.§7^§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§-Z§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§7^§.y - _loc6_) * _loc12_;
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
      
      public function §;!s§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§-Z§.x - this.§7^§.x;
         var _loc3_:Number = param1.§-Z§.y - this.§7^§.y;
         var _loc4_:Number = this.§-Z§.x - param1.§7^§.x;
         var _loc5_:Number = this.§-Z§.y - param1.§7^§.y;
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
      
      public function §<I§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§-Z§.x = Math.min(param1.§-Z§.x,param2.§-Z§.x);
         this.§-Z§.y = Math.min(param1.§-Z§.y,param2.§-Z§.y);
         this.§7^§.x = Math.max(param1.§7^§.x,param2.§7^§.x);
         this.§7^§.y = Math.max(param1.§7^§.y,param2.§7^§.y);
      }
   }
}

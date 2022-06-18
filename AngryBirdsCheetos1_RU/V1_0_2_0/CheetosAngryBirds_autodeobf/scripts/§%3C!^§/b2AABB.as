package §<!^§
{
   import §&!+§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §5I§:b2Vec2;
      
      public var §9m§:b2Vec2;
      
      public function b2AABB()
      {
         this.§5I§ = new b2Vec2();
         this.§9m§ = new b2Vec2();
         super();
      }
      
      public static function §&-§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.§&-§(param1,param2);
         return _loc3_;
      }
      
      public function §0!B§() : Boolean
      {
         var _loc1_:Number = this.§9m§.x - this.§5I§.x;
         var _loc2_:Number = this.§9m§.y - this.§5I§.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.§5I§.§0!B§() && this.§9m§.§0!B§());
      }
      
      public function §8_§() : b2Vec2
      {
         return new b2Vec2((this.§5I§.x + this.§9m§.x) / 2,(this.§5I§.y + this.§9m§.y) / 2);
      }
      
      public function §4U§() : b2Vec2
      {
         return new b2Vec2((this.§9m§.x - this.§5I§.x) / 2,(this.§9m§.y - this.§5I§.y) / 2);
      }
      
      public function §3!Z§(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.§5I§.x <= param1.§5I§.x;
         _loc2_ = _loc2_ && this.§5I§.y <= param1.§5I§.y;
         _loc2_ = _loc2_ && param1.§9m§.x <= this.§9m§.x;
         return Boolean(_loc2_ && param1.§9m§.y <= this.§9m§.y);
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
            if(_loc5_ < this.§5I§.x || this.§9m§.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.§5I§.x - _loc5_) * _loc12_;
            _loc14_ = (this.§9m§.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.§5I§.y || this.§9m§.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.§5I§.y - _loc6_) * _loc12_;
            _loc14_ = (this.§9m§.y - _loc6_) * _loc12_;
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
      
      public function §]g§(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.§5I§.x - this.§9m§.x;
         var _loc3_:Number = param1.§5I§.y - this.§9m§.y;
         var _loc4_:Number = this.§5I§.x - param1.§9m§.x;
         var _loc5_:Number = this.§5I§.y - param1.§9m§.y;
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
      
      public function §&-§(param1:b2AABB, param2:b2AABB) : void
      {
         this.§5I§.x = Math.min(param1.§5I§.x,param2.§5I§.x);
         this.§5I§.y = Math.min(param1.§5I§.y,param2.§5I§.y);
         this.§9m§.x = Math.max(param1.§9m§.x,param2.§9m§.x);
         this.§9m§.y = Math.max(param1.§9m§.y,param2.§9m§.y);
      }
   }
}

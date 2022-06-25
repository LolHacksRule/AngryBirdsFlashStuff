package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var lowerBound:b2Vec2;
      
      public var upperBound:b2Vec2;
      
      public function b2AABB()
      {
         this.lowerBound = new b2Vec2();
         this.upperBound = new b2Vec2();
         super();
      }
      
      public static function Combine(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc3_:b2AABB = new b2AABB();
         _loc3_.Combine(param1,param2);
         return _loc3_;
      }
      
      public function IsValid() : Boolean
      {
         var _loc1_:Number = this.upperBound.x - this.lowerBound.x;
         var _loc2_:Number = this.upperBound.y - this.lowerBound.y;
         var _loc3_:Boolean = _loc1_ >= 0 && _loc2_ >= 0;
         return Boolean(_loc3_ && this.lowerBound.IsValid() && this.upperBound.IsValid());
      }
      
      public function GetCenter() : b2Vec2
      {
         return new b2Vec2((this.lowerBound.x + this.upperBound.x) / 2,(this.lowerBound.y + this.upperBound.y) / 2);
      }
      
      public function GetExtents() : b2Vec2
      {
         return new b2Vec2((this.upperBound.x - this.lowerBound.x) / 2,(this.upperBound.y - this.lowerBound.y) / 2);
      }
      
      public function Contains(param1:b2AABB) : Boolean
      {
         var _loc2_:Boolean = true;
         _loc2_ = _loc2_ && this.lowerBound.x <= param1.lowerBound.x;
         _loc2_ = _loc2_ && this.lowerBound.y <= param1.lowerBound.y;
         _loc2_ = _loc2_ && param1.upperBound.x <= this.upperBound.x;
         return Boolean(_loc2_ && param1.upperBound.y <= this.upperBound.y);
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
            if(_loc5_ < this.lowerBound.x || this.upperBound.x < _loc5_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc7_;
            _loc13_ = (this.lowerBound.x - _loc5_) * _loc12_;
            _loc14_ = (this.upperBound.x - _loc5_) * _loc12_;
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
            if(_loc6_ < this.lowerBound.y || this.upperBound.y < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc12_ = 1 / _loc8_;
            _loc13_ = (this.lowerBound.y - _loc6_) * _loc12_;
            _loc14_ = (this.upperBound.y - _loc6_) * _loc12_;
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
      
      public function TestOverlap(param1:b2AABB) : Boolean
      {
         var _loc2_:Number = param1.lowerBound.x - this.upperBound.x;
         var _loc3_:Number = param1.lowerBound.y - this.upperBound.y;
         var _loc4_:Number = this.lowerBound.x - param1.upperBound.x;
         var _loc5_:Number = this.lowerBound.y - param1.upperBound.y;
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
      
      public function Combine(param1:b2AABB, param2:b2AABB) : void
      {
         this.lowerBound.x = Math.min(param1.lowerBound.x,param2.lowerBound.x);
         this.lowerBound.y = Math.min(param1.lowerBound.y,param2.lowerBound.y);
         this.upperBound.x = Math.max(param1.upperBound.x,param2.upperBound.x);
         this.upperBound.y = Math.max(param1.upperBound.y,param2.upperBound.y);
      }
   }
}

package §2!Q§
{
   import §&!n§.b2AABB;
   import §&!n§.b2RayCastInput;
   import §&!n§.b2RayCastOutput;
   import §8,§.b2Settings;
   import §8,§.b2internal;
   import §9v§.b2Mat22;
   import §9v§.b2Math;
   import §9v§.b2Transform;
   import §9v§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §-!C§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         this.§-!C§ = new b2Vec2();
         super();
         §;M§ = b2internal::1"2;
         §&!o§ = param1;
      }
      
      override public function Copy() : b2Shape
      {
         var _loc1_:b2Shape = new b2CircleShape();
         _loc1_.Set(this);
         return _loc1_;
      }
      
      override public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         super.Set(param1);
         if(param1 is b2CircleShape)
         {
            _loc2_ = param1 as b2CircleShape;
            this.§-!C§.SetV(_loc2_.§-!C§);
         }
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc3_:b2Mat22 = param1.R;
         var _loc4_:Number = param1.position.x + (_loc3_.col1.x * this.§-!C§.x + _loc3_.col2.x * this.§-!C§.y);
         var _loc5_:Number = param1.position.y + (_loc3_.col1.y * this.§-!C§.x + _loc3_.col2.y * this.§-!C§.y);
         _loc4_ = param2.x - _loc4_;
         _loc5_ = param2.y - _loc5_;
         return _loc4_ * _loc4_ + _loc5_ * _loc5_ <= b2internal::&!o * b2internal::&!o;
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc8_:Number = NaN;
         var _loc4_:b2Mat22 = param3.R;
         var _loc5_:Number = param3.position.x + (_loc4_.col1.x * this.§-!C§.x + _loc4_.col2.x * this.§-!C§.y);
         var _loc6_:Number = param3.position.y + (_loc4_.col1.y * this.§-!C§.x + _loc4_.col2.y * this.§-!C§.y);
         var _loc7_:Number = param2.p1.x - _loc5_;
         _loc8_ = param2.p1.y - _loc6_;
         var _loc9_:Number = _loc7_ * _loc7_ + _loc8_ * _loc8_ - b2internal::&!o * b2internal::&!o;
         var _loc10_:Number = param2.p2.x - param2.p1.x;
         var _loc11_:Number = param2.p2.y - param2.p1.y;
         var _loc12_:Number = _loc7_ * _loc10_ + _loc8_ * _loc11_;
         var _loc13_:Number = _loc10_ * _loc10_ + _loc11_ * _loc11_;
         var _loc14_:Number;
         if((_loc14_ = _loc12_ * _loc12_ - _loc13_ * _loc9_) < 0 || _loc13_ < Number.MIN_VALUE)
         {
            return false;
         }
         var _loc15_:Number = -(_loc12_ + Math.sqrt(_loc14_));
         if(0 <= _loc15_ && _loc15_ <= param2.§'U§ * _loc13_)
         {
            _loc15_ /= _loc13_;
            param1.fraction = _loc15_;
            param1.normal.x = _loc7_ + _loc15_ * _loc10_;
            param1.normal.y = _loc8_ + _loc15_ * _loc11_;
            param1.normal.Normalize();
            return true;
         }
         return false;
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:Number = param2.position.x + (_loc3_.col1.x * this.§-!C§.x + _loc3_.col2.x * this.§-!C§.y);
         var _loc5_:Number = param2.position.y + (_loc3_.col1.y * this.§-!C§.x + _loc3_.col2.y * this.§-!C§.y);
         param1.§0!l§.Set(_loc4_ - b2internal::&!o,_loc5_ - b2internal::&!o);
         param1.§6E§.Set(_loc4_ + b2internal::&!o,_loc5_ + b2internal::&!o);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         param1.§ !v§ = param2 * b2Settings.b2_pi * b2internal::&!o * b2internal::&!o;
         param1.center.SetV(this.§-!C§);
         param1.I = param1.§ !v§ * (0.5 * b2internal::&!o * b2internal::&!o + (this.§-!C§.x * this.§-!C§.x + this.§-!C§.y * this.§-!C§.y));
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc9_:Number = NaN;
         var _loc5_:b2Vec2 = b2Math.§;!N§(param3,this.§-!C§);
         var _loc6_:Number;
         if((_loc6_ = -(b2Math.§%m§(param1,_loc5_) - param2)) < -b2internal::&!o + Number.MIN_VALUE)
         {
            return 0;
         }
         if(_loc6_ > b2internal::&!o)
         {
            param4.SetV(_loc5_);
            return Math.PI * b2internal::&!o * b2internal::&!o;
         }
         var _loc7_:Number = b2internal::&!o * b2internal::&!o;
         var _loc8_:Number = _loc6_ * _loc6_;
         _loc9_ = _loc7_ * (Math.asin(_loc6_ / b2internal::&!o) + Math.PI / 2) + _loc6_ * Math.sqrt(_loc7_ - _loc8_);
         var _loc10_:Number = -2 / 3 * Math.pow(_loc7_ - _loc8_,1.5) / _loc9_;
         param4.x = _loc5_.x + param1.x * _loc10_;
         param4.y = _loc5_.y + param1.y * _loc10_;
         return _loc9_;
      }
      
      public function §6=§() : b2Vec2
      {
         return this.§-!C§;
      }
      
      public function §%"%§(param1:b2Vec2) : void
      {
         this.§-!C§.SetV(param1);
      }
      
      public function § !]§() : Number
      {
         return b2internal::&!o;
      }
      
      public function §2!c§(param1:Number) : void
      {
         §&!o§ = param1;
      }
   }
}

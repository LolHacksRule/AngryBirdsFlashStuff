package §4!$§
{
   import §3"5§.b2AABB;
   import §3"5§.b2RayCastInput;
   import §3"5§.b2RayCastOutput;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Mat22;
   import §[R§.b2Math;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §&!i§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         this.§&!i§ = new b2Vec2();
         super();
         §%!9§ = b2internal::;!T;
         § "^§ = param1;
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
            this.§&!i§.SetV(_loc2_.§&!i§);
         }
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc3_:b2Mat22 = param1.R;
         var _loc4_:Number = param1.position.x + (_loc3_.col1.x * this.§&!i§.x + _loc3_.col2.x * this.§&!i§.y);
         var _loc5_:Number = param1.position.y + (_loc3_.col1.y * this.§&!i§.x + _loc3_.col2.y * this.§&!i§.y);
         _loc4_ = param2.x - _loc4_;
         _loc5_ = param2.y - _loc5_;
         return _loc4_ * _loc4_ + _loc5_ * _loc5_ <= b2internal:: "^ * b2internal:: "^;
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc8_:Number = NaN;
         var _loc4_:b2Mat22 = param3.R;
         var _loc5_:Number = param3.position.x + (_loc4_.col1.x * this.§&!i§.x + _loc4_.col2.x * this.§&!i§.y);
         var _loc6_:Number = param3.position.y + (_loc4_.col1.y * this.§&!i§.x + _loc4_.col2.y * this.§&!i§.y);
         var _loc7_:Number = param2.p1.x - _loc5_;
         _loc8_ = param2.p1.y - _loc6_;
         var _loc9_:Number = _loc7_ * _loc7_ + _loc8_ * _loc8_ - b2internal:: "^ * b2internal:: "^;
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
         if(0 <= _loc15_ && _loc15_ <= param2.§%#8§ * _loc13_)
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
         var _loc4_:Number = param2.position.x + (_loc3_.col1.x * this.§&!i§.x + _loc3_.col2.x * this.§&!i§.y);
         var _loc5_:Number = param2.position.y + (_loc3_.col1.y * this.§&!i§.x + _loc3_.col2.y * this.§&!i§.y);
         param1.§1!,§.Set(_loc4_ - b2internal:: "^,_loc5_ - b2internal:: "^);
         param1.§ D§.Set(_loc4_ + b2internal:: "^,_loc5_ + b2internal:: "^);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         param1.§5"Z§ = param2 * b2Settings.b2_pi * b2internal:: "^ * b2internal:: "^;
         param1.§+#K§.SetV(this.§&!i§);
         param1.I = param1.§5"Z§ * (0.5 * b2internal:: "^ * b2internal:: "^ + (this.§&!i§.x * this.§&!i§.x + this.§&!i§.y * this.§&!i§.y));
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc9_:Number = NaN;
         var _loc5_:b2Vec2 = b2Math.§""$§(param3,this.§&!i§);
         var _loc6_:Number;
         if((_loc6_ = -(b2Math.§+#>§(param1,_loc5_) - param2)) < -b2internal:: "^ + Number.MIN_VALUE)
         {
            return 0;
         }
         if(_loc6_ > b2internal:: "^)
         {
            param4.SetV(_loc5_);
            return Math.PI * b2internal:: "^ * b2internal:: "^;
         }
         var _loc7_:Number = b2internal:: "^ * b2internal:: "^;
         var _loc8_:Number = _loc6_ * _loc6_;
         _loc9_ = _loc7_ * (Math.asin(_loc6_ / b2internal:: "^) + Math.PI / 2) + _loc6_ * Math.sqrt(_loc7_ - _loc8_);
         var _loc10_:Number = -2 / 3 * Math.pow(_loc7_ - _loc8_,1.5) / _loc9_;
         param4.x = _loc5_.x + param1.x * _loc10_;
         param4.y = _loc5_.y + param1.y * _loc10_;
         return _loc9_;
      }
      
      public function §["s§() : b2Vec2
      {
         return this.§&!i§;
      }
      
      public function §[U§(param1:b2Vec2) : void
      {
         this.§&!i§.SetV(param1);
      }
      
      public function §[p§() : Number
      {
         return b2internal:: "^;
      }
      
      public function §>#X§(param1:Number) : void
      {
         § "^§ = param1;
      }
   }
}

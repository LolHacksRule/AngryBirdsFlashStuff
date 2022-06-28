package §#!"§
{
   import §&L§.b2Mat22;
   import §&L§.b2Math;
   import §&L§.b2Transform;
   import §&L§.b2Vec2;
   import §'s§.b2AABB;
   import §'s§.b2RayCastInput;
   import §'s§.b2RayCastOutput;
   import §+!,§.b2Settings;
   import §+!,§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §1!k§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         this.§1!k§ = new b2Vec2();
         super();
         §32§ = §!!W§;
         §5!`§ = param1;
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
            this.§1!k§.SetV(_loc2_.§1!k§);
         }
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc3_:b2Mat22 = param1.R;
         var _loc4_:Number = param1.position.x + (_loc3_.col1.x * this.§1!k§.x + _loc3_.col2.x * this.§1!k§.y);
         var _loc5_:Number = param1.position.y + (_loc3_.col1.y * this.§1!k§.x + _loc3_.col2.y * this.§1!k§.y);
         _loc4_ = param2.x - _loc4_;
         _loc5_ = param2.y - _loc5_;
         return _loc4_ * _loc4_ + _loc5_ * _loc5_ <= §5!`§ * §5!`§;
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc8_:Number = NaN;
         var _loc4_:b2Mat22 = param3.R;
         var _loc5_:Number = param3.position.x + (_loc4_.col1.x * this.§1!k§.x + _loc4_.col2.x * this.§1!k§.y);
         var _loc6_:Number = param3.position.y + (_loc4_.col1.y * this.§1!k§.x + _loc4_.col2.y * this.§1!k§.y);
         var _loc7_:Number = param2.p1.x - _loc5_;
         _loc8_ = param2.p1.y - _loc6_;
         var _loc9_:Number = _loc7_ * _loc7_ + _loc8_ * _loc8_ - §5!`§ * §5!`§;
         var _loc10_:Number = param2.p2.x - param2.p1.x;
         var _loc11_:Number = param2.p2.y - param2.p1.y;
         var _loc12_:Number = _loc7_ * _loc10_ + _loc8_ * _loc11_;
         var _loc13_:Number = _loc10_ * _loc10_ + _loc11_ * _loc11_;
         var _loc14_:Number = _loc12_ * _loc12_ - _loc13_ * _loc9_;
         if(_loc14_ < 0 || _loc13_ < Number.MIN_VALUE)
         {
            return false;
         }
         var _loc15_:Number = -(_loc12_ + Math.sqrt(_loc14_));
         if(0 <= _loc15_ && _loc15_ <= param2.§>x§ * _loc13_)
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
         var _loc4_:Number = param2.position.x + (_loc3_.col1.x * this.§1!k§.x + _loc3_.col2.x * this.§1!k§.y);
         var _loc5_:Number = param2.position.y + (_loc3_.col1.y * this.§1!k§.x + _loc3_.col2.y * this.§1!k§.y);
         param1.§^"§.Set(_loc4_ - §5!`§,_loc5_ - §5!`§);
         param1.§=!O§.Set(_loc4_ + §5!`§,_loc5_ + §5!`§);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         param1.§7_§ = param2 * b2Settings.b2_pi * §5!`§ * §5!`§;
         param1.§>r§.SetV(this.§1!k§);
         param1.§8D§ = param1.§7_§ * (0.5 * §5!`§ * §5!`§ + (this.§1!k§.x * this.§1!k§.x + this.§1!k§.y * this.§1!k§.y));
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc9_:Number = NaN;
         var _loc5_:b2Vec2 = b2Math.§?!L§(param3,this.§1!k§);
         var _loc6_:Number = -(b2Math.§2&§(param1,_loc5_) - param2);
         if(_loc6_ < -§5!`§ + Number.MIN_VALUE)
         {
            return 0;
         }
         if(_loc6_ > §5!`§)
         {
            param4.SetV(_loc5_);
            return Math.PI * §5!`§ * §5!`§;
         }
         var _loc7_:Number = §5!`§ * §5!`§;
         var _loc8_:Number = _loc6_ * _loc6_;
         _loc9_ = _loc7_ * (Math.asin(_loc6_ / §5!`§) + Math.PI / 2) + _loc6_ * Math.sqrt(_loc7_ - _loc8_);
         var _loc10_:Number = -2 / 3 * Math.pow(_loc7_ - _loc8_,1.5) / _loc9_;
         param4.x = _loc5_.x + param1.x * _loc10_;
         param4.y = _loc5_.y + param1.y * _loc10_;
         return _loc9_;
      }
      
      public function §@I§() : b2Vec2
      {
         return this.§1!k§;
      }
      
      public function §5!Z§(param1:b2Vec2) : void
      {
         this.§1!k§.SetV(param1);
      }
      
      public function §5!L§() : Number
      {
         return §5!`§;
      }
      
      public function §;B§(param1:Number) : void
      {
         §5!`§ = param1;
      }
   }
}

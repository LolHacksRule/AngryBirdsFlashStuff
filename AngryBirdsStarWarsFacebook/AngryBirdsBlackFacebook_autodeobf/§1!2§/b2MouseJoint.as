package §1!2§
{
   import §+#$§.b2Body;
   import §+#$§.b2TimeStep;
   import §5"i§.b2internal;
   import §[R§.b2Mat22;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §^"Q§:b2Vec2;
      
      private var §4![§:b2Vec2;
      
      private var §##,§:b2Vec2;
      
      private var §9#6§:b2Mat22;
      
      private var §3Y§:b2Vec2;
      
      private var §'"B§:Number;
      
      private var §&W§:Number;
      
      private var §?#=§:Number;
      
      private var §="T§:Number;
      
      private var §<!8§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§^"Q§ = new b2Vec2();
         this.§4![§ = new b2Vec2();
         this.§##,§ = new b2Vec2();
         this.§9#6§ = new b2Mat22();
         this.§3Y§ = new b2Vec2();
         super(param1);
         this.§4![§.SetV(param1.target);
         _loc2_ = this.§4![§.x - b2internal:: "z.m_xf.position.x;
         var _loc3_:Number = this.§4![§.y - b2internal:: "z.m_xf.position.y;
         _loc4_ = b2internal:: "z.m_xf.R;
         this.§^"Q§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§^"Q§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§'"B§ = param1.§8!i§;
         this.§##,§.§&"Q§();
         this.§&W§ = param1.§""u§;
         this.§?#=§ = param1.dampingRatio;
         this.§="T§ = 0;
         this.§<!8§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§4![§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: "z.GetWorldPoint(this.§^"Q§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§##,§.x,param1 * this.§##,§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §#!u§() : b2Vec2
      {
         return this.§4![§;
      }
      
      public function §"!J§(param1:b2Vec2) : void
      {
         if(b2internal:: "z.IsAwake() == false)
         {
            b2internal:: "z.SetAwake(true);
         }
         this.§4![§ = param1;
      }
      
      public function §1#2§() : Number
      {
         return this.§'"B§;
      }
      
      public function §#E§(param1:Number) : void
      {
         this.§'"B§ = param1;
      }
      
      public function §,!$§() : Number
      {
         return this.§&W§;
      }
      
      public function §,!m§(param1:Number) : void
      {
         this.§&W§ = param1;
      }
      
      public function §0!#§() : Number
      {
         return this.§?#=§;
      }
      
      public function §5"3§(param1:Number) : void
      {
         this.§?#=§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal:: "z;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§&W§;
         var _loc5_:Number = 2 * _loc3_ * this.§?#=§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§<!8§ = param1.§1!O§ * (_loc5_ + param1.§1!O§ * _loc6_);
         this.§<!8§ = this.§<!8§ != 0 ? Number(1 / this.§<!8§) : Number(0);
         this.§="T§ = param1.§1!O§ * _loc6_ * this.§<!8§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§^"Q§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§^"Q§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§3#>§;
         _loc12_ = _loc2_.§3"y§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.K.§&!c§(this.K1);
         this.K.§1"W§(this.K2);
         this.K.col1.x += this.§<!8§;
         this.K.col2.y += this.§<!8§;
         this.K.§^B§(this.§9#6§);
         this.§3Y§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§4![§.x;
         this.§3Y§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§4![§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§##,§.x *= param1.§8"]§;
         this.§##,§.y *= param1.§8"]§;
         _loc2_.§ #`§.x += _loc11_ * this.§##,§.x;
         _loc2_.§ #`§.y += _loc11_ * this.§##,§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§##,§.y - _loc9_ * this.§##,§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal:: "z;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§^"Q§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§^"Q§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§ #`§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§ #`§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§9#6§;
         _loc4_ = _loc8_ + this.§="T§ * this.§3Y§.x + this.§<!8§ * this.§##,§.x;
         _loc5_ = _loc9_ + this.§="T§ * this.§3Y§.y + this.§<!8§ * this.§##,§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§##,§.x;
         var _loc13_:Number = this.§##,§.y;
         this.§##,§.x += _loc10_;
         this.§##,§.y += _loc11_;
         var _loc14_:Number = param1.§1!O§ * this.§'"B§;
         if(this.§##,§.§1"t§() > _loc14_ * _loc14_)
         {
            this.§##,§.§?1§(_loc14_ / this.§##,§.Length());
         }
         _loc10_ = this.§##,§.x - _loc12_;
         _loc11_ = this.§##,§.y - _loc13_;
         _loc2_.§ #`§.x += _loc2_.§3#>§ * _loc10_;
         _loc2_.§ #`§.y += _loc2_.§3#>§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§3"y§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}

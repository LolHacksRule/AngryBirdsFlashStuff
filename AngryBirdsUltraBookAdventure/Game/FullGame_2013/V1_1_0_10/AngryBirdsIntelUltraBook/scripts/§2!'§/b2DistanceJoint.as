package §2!'§
{
   import §#I§.b2Body;
   import §#I§.b2TimeStep;
   import §&H§.b2Mat22;
   import §&H§.b2Math;
   import §&H§.b2Vec2;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §]G§:b2Vec2;
      
      private var §=§:Number;
      
      private var §#!d§:Number;
      
      private var §4z§:Number;
      
      private var §`a§:Number;
      
      private var §&""§:Number;
      
      private var §"X§:Number;
      
      private var §^!q§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§]G§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§'G§);
         this.m_localAnchor2.SetV(param1.§true§);
         this.§^!q§ = param1.length;
         this.§=§ = param1.§9!@§;
         this.§#!d§ = param1.§6V§;
         this.§&""§ = 0;
         this.§4z§ = 0;
         this.§`a§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::&A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4!d.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§&""§ * this.§]G§.x,param1 * this.§&""§ * this.§]G§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §,!H§() : Number
      {
         return this.§^!q§;
      }
      
      public function §2G§(param1:Number) : void
      {
         this.§^!q§ = param1;
      }
      
      public function §!K§() : Number
      {
         return this.§=§;
      }
      
      public function §3!D§(param1:Number) : void
      {
         this.§=§ = param1;
      }
      
      public function §?!Y§() : Number
      {
         return this.§#!d§;
      }
      
      public function §7!F§(param1:Number) : void
      {
         this.§#!d§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         _loc4_ = b2internal::&A;
         _loc5_ = b2internal::4!d;
         _loc2_ = _loc4_.m_xf.R;
         var _loc6_:Number = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
         _loc7_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
         _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         this.§]G§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§]G§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§]G§.x * this.§]G§.x + this.§]G§.y * this.§]G§.y)) > b2Settings.b2_linearSlop)
         {
            this.§]G§.§9""§(1 / _loc10_);
         }
         else
         {
            this.§]G§.§+J§();
         }
         var _loc11_:Number = _loc6_ * this.§]G§.y - _loc7_ * this.§]G§.x;
         var _loc12_:Number = _loc8_ * this.§]G§.y - _loc9_ * this.§]G§.x;
         var _loc13_:Number = _loc4_.§3!q§ + _loc4_.§2!1§ * _loc11_ * _loc11_ + _loc5_.§3!q§ + _loc5_.§2!1§ * _loc12_ * _loc12_;
         this.§"X§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§=§ > 0)
         {
            _loc14_ = _loc10_ - this.§^!q§;
            _loc15_ = 2 * Math.PI * this.§=§;
            _loc16_ = 2 * this.§"X§ * this.§#!d§ * _loc15_;
            _loc17_ = this.§"X§ * _loc15_ * _loc15_;
            this.§4z§ = param1.§?!C§ * (_loc16_ + param1.§?!C§ * _loc17_);
            this.§4z§ = this.§4z§ != 0 ? Number(1 / this.§4z§) : Number(0);
            this.§`a§ = _loc14_ * param1.§?!C§ * _loc17_ * this.§4z§;
            this.§"X§ = _loc13_ + this.§4z§;
            this.§"X§ = this.§"X§ != 0 ? Number(1 / this.§"X§) : Number(0);
         }
         if(param1.§9!w§)
         {
            this.§&""§ *= param1.§[!4§;
            _loc18_ = this.§&""§ * this.§]G§.x;
            _loc19_ = this.§&""§ * this.§]G§.y;
            _loc4_.§%!<§.x -= _loc4_.§3!q§ * _loc18_;
            _loc4_.§%!<§.y -= _loc4_.§3!q§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§2!1§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§%!<§.x += _loc5_.§3!q§ * _loc18_;
            _loc5_.§%!<§.y += _loc5_.§3!q§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§2!1§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§&""§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::&A;
         var _loc4_:b2Body = b2internal::4!d;
         _loc2_ = _loc3_.m_xf.R;
         var _loc5_:Number = this.m_localAnchor1.x - _loc3_.m_sweep.localCenter.x;
         var _loc6_:Number = this.m_localAnchor1.y - _loc3_.m_sweep.localCenter.y;
         var _loc7_:Number = _loc2_.col1.x * _loc5_ + _loc2_.col2.x * _loc6_;
         _loc6_ = _loc2_.col1.y * _loc5_ + _loc2_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc2_ = _loc4_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc4_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc4_.m_sweep.localCenter.y;
         _loc7_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         var _loc10_:Number = _loc3_.§%!<§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§%!<§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§%!<§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§%!<§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§]G§.x * (_loc12_ - _loc10_) + this.§]G§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§"X§ * (_loc14_ + this.§`a§ + this.§4z§ * this.§&""§);
         this.§&""§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§]G§.x;
         var _loc17_:Number = _loc15_ * this.§]G§.y;
         _loc3_.§%!<§.x -= _loc3_.§3!q§ * _loc16_;
         _loc3_.§%!<§.y -= _loc3_.§3!q§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§2!1§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§%!<§.x += _loc4_.§3!q§ * _loc16_;
         _loc4_.§%!<§.y += _loc4_.§3!q§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§2!1§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§=§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::&A;
         var _loc4_:b2Body = b2internal::4!d;
         _loc2_ = _loc3_.m_xf.R;
         var _loc5_:Number = this.m_localAnchor1.x - _loc3_.m_sweep.localCenter.x;
         var _loc6_:Number = this.m_localAnchor1.y - _loc3_.m_sweep.localCenter.y;
         var _loc7_:Number = _loc2_.col1.x * _loc5_ + _loc2_.col2.x * _loc6_;
         _loc6_ = _loc2_.col1.y * _loc5_ + _loc2_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc2_ = _loc4_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc4_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc4_.m_sweep.localCenter.y;
         _loc7_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         var _loc10_:Number = _loc4_.m_sweep.c.x + _loc8_ - _loc3_.m_sweep.c.x - _loc5_;
         var _loc11_:Number = _loc4_.m_sweep.c.y + _loc9_ - _loc3_.m_sweep.c.y - _loc6_;
         var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         _loc10_ /= _loc12_;
         _loc11_ /= _loc12_;
         var _loc13_:Number = _loc12_ - this.§^!q§;
         _loc13_ = b2Math.§?!?§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§"X§ * _loc13_;
         this.§]G§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§]G§.x;
         var _loc16_:Number = _loc14_ * this.§]G§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§3!q§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§3!q§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§2!1§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§3!q§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§3!q§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§2!1§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§@!1§();
         _loc4_.§@!1§();
         return b2Math.§0@§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}

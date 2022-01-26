package §9A§
{
   import §'!3§.b2Settings;
   import §'!3§.b2internal;
   import §3q§.b2Mat22;
   import §3q§.b2Math;
   import §3q§.b2Vec2;
   import §?0§.b2Body;
   import §?0§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §&!X§:b2Vec2;
      
      private var §'"§:Number;
      
      private var §]C§:Number;
      
      private var §!!L§:Number;
      
      private var §2g§:Number;
      
      private var §&S§:Number;
      
      private var §"n§:Number;
      
      private var §4s§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§&!X§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§`!X§);
         this.m_localAnchor2.SetV(param1.§+!,§);
         this.§4s§ = param1.length;
         this.§'"§ = param1.§60§;
         this.§]C§ = param1.§>F§;
         this.§&S§ = 0;
         this.§!!L§ = 0;
         this.§2g§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::try.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::-f.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§&S§ * this.§&!X§.x,param1 * this.§&S§ * this.§&!X§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §9U§() : Number
      {
         return this.§4s§;
      }
      
      public function §"!]§(param1:Number) : void
      {
         this.§4s§ = param1;
      }
      
      public function §<!H§() : Number
      {
         return this.§'"§;
      }
      
      public function §&!-§(param1:Number) : void
      {
         this.§'"§ = param1;
      }
      
      public function §4!3§() : Number
      {
         return this.§]C§;
      }
      
      public function §<<§(param1:Number) : void
      {
         this.§]C§ = param1;
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
         _loc4_ = b2internal::try;
         _loc5_ = b2internal::-f;
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
         this.§&!X§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§&!X§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§&!X§.x * this.§&!X§.x + this.§&!X§.y * this.§&!X§.y)) > b2Settings.b2_linearSlop)
         {
            this.§&!X§.§^B§(1 / _loc10_);
         }
         else
         {
            this.§&!X§.§<!5§();
         }
         var _loc11_:Number = _loc6_ * this.§&!X§.y - _loc7_ * this.§&!X§.x;
         var _loc12_:Number = _loc8_ * this.§&!X§.y - _loc9_ * this.§&!X§.x;
         var _loc13_:Number = _loc4_.§-q§ + _loc4_.§'a§ * _loc11_ * _loc11_ + _loc5_.§-q§ + _loc5_.§'a§ * _loc12_ * _loc12_;
         this.§"n§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§'"§ > 0)
         {
            _loc14_ = _loc10_ - this.§4s§;
            _loc15_ = 2 * Math.PI * this.§'"§;
            _loc16_ = 2 * this.§"n§ * this.§]C§ * _loc15_;
            _loc17_ = this.§"n§ * _loc15_ * _loc15_;
            this.§!!L§ = param1.§+!I§ * (_loc16_ + param1.§+!I§ * _loc17_);
            this.§!!L§ = this.§!!L§ != 0 ? Number(1 / this.§!!L§) : Number(0);
            this.§2g§ = _loc14_ * param1.§+!I§ * _loc17_ * this.§!!L§;
            this.§"n§ = _loc13_ + this.§!!L§;
            this.§"n§ = this.§"n§ != 0 ? Number(1 / this.§"n§) : Number(0);
         }
         if(param1.§4!D§)
         {
            this.§&S§ *= param1.§1a§;
            _loc18_ = this.§&S§ * this.§&!X§.x;
            _loc19_ = this.§&S§ * this.§&!X§.y;
            _loc4_.§2!G§.x -= _loc4_.§-q§ * _loc18_;
            _loc4_.§2!G§.y -= _loc4_.§-q§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§'a§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§2!G§.x += _loc5_.§-q§ * _loc18_;
            _loc5_.§2!G§.y += _loc5_.§-q§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§'a§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§&S§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::try;
         var _loc4_:b2Body = b2internal::-f;
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
         var _loc10_:Number = _loc3_.§2!G§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§2!G§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§2!G§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§2!G§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§&!X§.x * (_loc12_ - _loc10_) + this.§&!X§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§"n§ * (_loc14_ + this.§2g§ + this.§!!L§ * this.§&S§);
         this.§&S§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§&!X§.x;
         var _loc17_:Number = _loc15_ * this.§&!X§.y;
         _loc3_.§2!G§.x -= _loc3_.§-q§ * _loc16_;
         _loc3_.§2!G§.y -= _loc3_.§-q§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§'a§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§2!G§.x += _loc4_.§-q§ * _loc16_;
         _loc4_.§2!G§.y += _loc4_.§-q§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§'a§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§'"§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::try;
         var _loc4_:b2Body = b2internal::-f;
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
         var _loc13_:Number = _loc12_ - this.§4s§;
         _loc13_ = b2Math.§;f§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§"n§ * _loc13_;
         this.§&!X§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§&!X§.x;
         var _loc16_:Number = _loc14_ * this.§&!X§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§-q§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§-q§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§'a§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§-q§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§-q§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§'a§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§>W§();
         _loc4_.§>W§();
         return b2Math.§@6§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}

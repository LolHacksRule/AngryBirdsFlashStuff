package §^!2§
{
   import §!S§.b2Settings;
   import §!S§.b2internal;
   import §?!h§.b2Mat22;
   import §?!h§.b2Math;
   import §?!h§.b2Vec2;
   import §`]§.b2Body;
   import §`]§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §-!j§:b2Vec2;
      
      private var §]!A§:Number;
      
      private var § W§:Number;
      
      private var §9M§:Number;
      
      private var §6I§:Number;
      
      private var §3!%§:Number;
      
      private var §<!7§:Number;
      
      private var §^'§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§-!j§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§9"%§);
         this.m_localAnchor2.SetV(param1.§^j§);
         this.§^'§ = param1.length;
         this.§]!A§ = param1.§`!j§;
         this.§ W§ = param1.§#T§;
         this.§3!%§ = 0;
         this.§9M§ = 0;
         this.§6I§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::5'.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?!&.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§3!%§ * this.§-!j§.x,param1 * this.§3!%§ * this.§-!j§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §&'§() : Number
      {
         return this.§^'§;
      }
      
      public function §9]§(param1:Number) : void
      {
         this.§^'§ = param1;
      }
      
      public function §;"8§() : Number
      {
         return this.§]!A§;
      }
      
      public function §+"6§(param1:Number) : void
      {
         this.§]!A§ = param1;
      }
      
      public function §;a§() : Number
      {
         return this.§ W§;
      }
      
      public function §3!N§(param1:Number) : void
      {
         this.§ W§ = param1;
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
         _loc4_ = b2internal::5';
         _loc5_ = b2internal::?!&;
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
         this.§-!j§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§-!j§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§-!j§.x * this.§-!j§.x + this.§-!j§.y * this.§-!j§.y)) > b2Settings.b2_linearSlop)
         {
            this.§-!j§.§<!4§(1 / _loc10_);
         }
         else
         {
            this.§-!j§.§+Z§();
         }
         var _loc11_:Number = _loc6_ * this.§-!j§.y - _loc7_ * this.§-!j§.x;
         var _loc12_:Number = _loc8_ * this.§-!j§.y - _loc9_ * this.§-!j§.x;
         var _loc13_:Number = _loc4_.§+w§ + _loc4_.§-A§ * _loc11_ * _loc11_ + _loc5_.§+w§ + _loc5_.§-A§ * _loc12_ * _loc12_;
         this.§<!7§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§]!A§ > 0)
         {
            _loc14_ = _loc10_ - this.§^'§;
            _loc15_ = 2 * Math.PI * this.§]!A§;
            _loc16_ = 2 * this.§<!7§ * this.§ W§ * _loc15_;
            _loc17_ = this.§<!7§ * _loc15_ * _loc15_;
            this.§9M§ = param1.§7"2§ * (_loc16_ + param1.§7"2§ * _loc17_);
            this.§9M§ = this.§9M§ != 0 ? Number(1 / this.§9M§) : Number(0);
            this.§6I§ = _loc14_ * param1.§7"2§ * _loc17_ * this.§9M§;
            this.§<!7§ = _loc13_ + this.§9M§;
            this.§<!7§ = this.§<!7§ != 0 ? Number(1 / this.§<!7§) : Number(0);
         }
         if(param1.§@!-§)
         {
            this.§3!%§ *= param1.§]"5§;
            _loc18_ = this.§3!%§ * this.§-!j§.x;
            _loc19_ = this.§3!%§ * this.§-!j§.y;
            _loc4_.§#!S§.x -= _loc4_.§+w§ * _loc18_;
            _loc4_.§#!S§.y -= _loc4_.§+w§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§-A§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§#!S§.x += _loc5_.§+w§ * _loc18_;
            _loc5_.§#!S§.y += _loc5_.§+w§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§-A§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§3!%§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::5';
         var _loc4_:b2Body = b2internal::?!&;
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
         var _loc10_:Number = _loc3_.§#!S§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§#!S§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§#!S§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§#!S§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§-!j§.x * (_loc12_ - _loc10_) + this.§-!j§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§<!7§ * (_loc14_ + this.§6I§ + this.§9M§ * this.§3!%§);
         this.§3!%§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§-!j§.x;
         var _loc17_:Number = _loc15_ * this.§-!j§.y;
         _loc3_.§#!S§.x -= _loc3_.§+w§ * _loc16_;
         _loc3_.§#!S§.y -= _loc3_.§+w§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§-A§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§#!S§.x += _loc4_.§+w§ * _loc16_;
         _loc4_.§#!S§.y += _loc4_.§+w§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§-A§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§]!A§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::5';
         var _loc4_:b2Body = b2internal::?!&;
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
         var _loc13_:Number = _loc12_ - this.§^'§;
         _loc13_ = b2Math.§9!n§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§<!7§ * _loc13_;
         this.§-!j§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§-!j§.x;
         var _loc16_:Number = _loc14_ * this.§-!j§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§+w§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§+w§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§-A§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§+w§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§+w§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§-A§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§^&§();
         _loc4_.§^&§();
         return b2Math.§get §(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}

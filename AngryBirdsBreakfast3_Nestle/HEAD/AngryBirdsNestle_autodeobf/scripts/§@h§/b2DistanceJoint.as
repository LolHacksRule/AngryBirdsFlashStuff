package §@h§
{
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2TimeStep;
   import §@!E§.b2Mat22;
   import §@!E§.b2Math;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §84§:b2Vec2;
      
      private var §@@§:Number;
      
      private var §`!X§:Number;
      
      private var §]!7§:Number;
      
      private var §%E§:Number;
      
      private var §6!h§:Number;
      
      private var §'q§:Number;
      
      private var § !V§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§84§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§8D§);
         this.m_localAnchor2.SetV(param1.§@"$§);
         this.§ !V§ = param1.length;
         this.§@@§ = param1.§<!f§;
         this.§`!X§ = param1.dampingRatio;
         this.§6!h§ = 0;
         this.§]!7§ = 0;
         this.§%E§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!F.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[!n.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§6!h§ * this.§84§.x,param1 * this.§6!h§ * this.§84§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §>!3§() : Number
      {
         return this.§ !V§;
      }
      
      public function §;!8§(param1:Number) : void
      {
         this.§ !V§ = param1;
      }
      
      public function §@!9§() : Number
      {
         return this.§@@§;
      }
      
      public function §`!d§(param1:Number) : void
      {
         this.§@@§ = param1;
      }
      
      public function §@!#§() : Number
      {
         return this.§`!X§;
      }
      
      public function §@!6§(param1:Number) : void
      {
         this.§`!X§ = param1;
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
         _loc4_ = b2internal::9!F;
         _loc5_ = b2internal::[!n;
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
         this.§84§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§84§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§84§.x * this.§84§.x + this.§84§.y * this.§84§.y)) > b2Settings.b2_linearSlop)
         {
            this.§84§.§",§(1 / _loc10_);
         }
         else
         {
            this.§84§.§>![§();
         }
         var _loc11_:Number = _loc6_ * this.§84§.y - _loc7_ * this.§84§.x;
         var _loc12_:Number = _loc8_ * this.§84§.y - _loc9_ * this.§84§.x;
         var _loc13_:Number = _loc4_.§ c§ + _loc4_.§"k§ * _loc11_ * _loc11_ + _loc5_.§ c§ + _loc5_.§"k§ * _loc12_ * _loc12_;
         this.§'q§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§@@§ > 0)
         {
            _loc14_ = _loc10_ - this.§ !V§;
            _loc15_ = 2 * Math.PI * this.§@@§;
            _loc16_ = 2 * this.§'q§ * this.§`!X§ * _loc15_;
            _loc17_ = this.§'q§ * _loc15_ * _loc15_;
            this.§]!7§ = param1.§"!n§ * (_loc16_ + param1.§"!n§ * _loc17_);
            this.§]!7§ = this.§]!7§ != 0 ? Number(1 / this.§]!7§) : Number(0);
            this.§%E§ = _loc14_ * param1.§"!n§ * _loc17_ * this.§]!7§;
            this.§'q§ = _loc13_ + this.§]!7§;
            this.§'q§ = this.§'q§ != 0 ? Number(1 / this.§'q§) : Number(0);
         }
         if(param1.§-"'§)
         {
            this.§6!h§ *= param1.§`!s§;
            _loc18_ = this.§6!h§ * this.§84§.x;
            _loc19_ = this.§6!h§ * this.§84§.y;
            _loc4_.§;!A§.x -= _loc4_.§ c§ * _loc18_;
            _loc4_.§;!A§.y -= _loc4_.§ c§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§"k§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§;!A§.x += _loc5_.§ c§ * _loc18_;
            _loc5_.§;!A§.y += _loc5_.§ c§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§"k§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§6!h§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::9!F;
         var _loc4_:b2Body = b2internal::[!n;
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
         var _loc10_:Number = _loc3_.§;!A§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§;!A§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§;!A§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§;!A§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§84§.x * (_loc12_ - _loc10_) + this.§84§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§'q§ * (_loc14_ + this.§%E§ + this.§]!7§ * this.§6!h§);
         this.§6!h§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§84§.x;
         var _loc17_:Number = _loc15_ * this.§84§.y;
         _loc3_.§;!A§.x -= _loc3_.§ c§ * _loc16_;
         _loc3_.§;!A§.y -= _loc3_.§ c§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§"k§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§;!A§.x += _loc4_.§ c§ * _loc16_;
         _loc4_.§;!A§.y += _loc4_.§ c§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§"k§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§@@§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::9!F;
         var _loc4_:b2Body = b2internal::[!n;
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
         var _loc13_:Number = _loc12_ - this.§ !V§;
         _loc13_ = b2Math.§ !X§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§'q§ * _loc13_;
         this.§84§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§84§.x;
         var _loc16_:Number = _loc14_ * this.§84§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§ c§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§ c§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§"k§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§ c§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§ c§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§"k§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§+!X§();
         _loc4_.§+!X§();
         return b2Math.§71§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}

package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Mat22;
   import §<!a§.b2Math;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §&!+§:b2Vec2;
      
      private var §,L§:Number;
      
      private var §""=§:Number;
      
      private var §36§:Number;
      
      private var §&! §:Number;
      
      private var §5!i§:Number;
      
      private var §?j§:Number;
      
      private var §,!P§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§&!+§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§3!&§);
         this.m_localAnchor2.SetV(param1.§2!P§);
         this.§,!P§ = param1.length;
         this.§,L§ = param1.§@!8§;
         this.§""=§ = param1.§+!n§;
         this.§5!i§ = 0;
         this.§36§ = 0;
         this.§&! § = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+d.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!l.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§5!i§ * this.§&!+§.x,param1 * this.§5!i§ * this.§&!+§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §="5§() : Number
      {
         return this.§,!P§;
      }
      
      public function §=!n§(param1:Number) : void
      {
         this.§,!P§ = param1;
      }
      
      public function §!!u§() : Number
      {
         return this.§,L§;
      }
      
      public function §?!6§(param1:Number) : void
      {
         this.§,L§ = param1;
      }
      
      public function §#4§() : Number
      {
         return this.§""=§;
      }
      
      public function §>+§(param1:Number) : void
      {
         this.§""=§ = param1;
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
         _loc4_ = b2internal::+d;
         _loc5_ = b2internal::"!l;
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
         this.§&!+§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§&!+§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§&!+§.x * this.§&!+§.x + this.§&!+§.y * this.§&!+§.y)) > b2Settings.b2_linearSlop)
         {
            this.§&!+§.§7H§(1 / _loc10_);
         }
         else
         {
            this.§&!+§.§?b§();
         }
         var _loc11_:Number = _loc6_ * this.§&!+§.y - _loc7_ * this.§&!+§.x;
         var _loc12_:Number = _loc8_ * this.§&!+§.y - _loc9_ * this.§&!+§.x;
         var _loc13_:Number = _loc4_.§@"!§ + _loc4_.§=!N§ * _loc11_ * _loc11_ + _loc5_.§@"!§ + _loc5_.§=!N§ * _loc12_ * _loc12_;
         this.§?j§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§,L§ > 0)
         {
            _loc14_ = _loc10_ - this.§,!P§;
            _loc15_ = 2 * Math.PI * this.§,L§;
            _loc16_ = 2 * this.§?j§ * this.§""=§ * _loc15_;
            _loc17_ = this.§?j§ * _loc15_ * _loc15_;
            this.§36§ = param1.§@[§ * (_loc16_ + param1.§@[§ * _loc17_);
            this.§36§ = this.§36§ != 0 ? Number(1 / this.§36§) : Number(0);
            this.§&! § = _loc14_ * param1.§@[§ * _loc17_ * this.§36§;
            this.§?j§ = _loc13_ + this.§36§;
            this.§?j§ = this.§?j§ != 0 ? Number(1 / this.§?j§) : Number(0);
         }
         if(param1.§@!D§)
         {
            this.§5!i§ *= param1.§class§;
            _loc18_ = this.§5!i§ * this.§&!+§.x;
            _loc19_ = this.§5!i§ * this.§&!+§.y;
            _loc4_.§]!g§.x -= _loc4_.§@"!§ * _loc18_;
            _loc4_.§]!g§.y -= _loc4_.§@"!§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§=!N§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§]!g§.x += _loc5_.§@"!§ * _loc18_;
            _loc5_.§]!g§.y += _loc5_.§@"!§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§=!N§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§5!i§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::+d;
         var _loc4_:b2Body = b2internal::"!l;
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
         var _loc10_:Number = _loc3_.§]!g§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§]!g§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§]!g§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§]!g§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§&!+§.x * (_loc12_ - _loc10_) + this.§&!+§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§?j§ * (_loc14_ + this.§&! § + this.§36§ * this.§5!i§);
         this.§5!i§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§&!+§.x;
         var _loc17_:Number = _loc15_ * this.§&!+§.y;
         _loc3_.§]!g§.x -= _loc3_.§@"!§ * _loc16_;
         _loc3_.§]!g§.y -= _loc3_.§@"!§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§=!N§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§]!g§.x += _loc4_.§@"!§ * _loc16_;
         _loc4_.§]!g§.y += _loc4_.§@"!§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§=!N§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§,L§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::+d;
         var _loc4_:b2Body = b2internal::"!l;
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
         var _loc13_:Number = _loc12_ - this.§,!P§;
         _loc13_ = b2Math.§5" §(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§?j§ * _loc13_;
         this.§&!+§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§&!+§.x;
         var _loc16_:Number = _loc14_ * this.§&!+§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§@"!§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§@"!§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§=!N§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§@"!§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§@"!§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§=!N§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§=&§();
         _loc4_.§=&§();
         return b2Math.§1!`§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}

package §4"$§
{
   import §&!M§.b2Body;
   import §&!M§.b2TimeStep;
   import §3!t§.b2Mat22;
   import §3!t§.b2Math;
   import §3!t§.b2Vec2;
   import §6!`§.b2Settings;
   import §6!`§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §5R§:b2Vec2;
      
      private var §6" §:Number;
      
      private var §9!2§:Number;
      
      private var §?"6§:Number;
      
      private var §@;§:Number;
      
      private var §>&§:Number;
      
      private var §=!i§:Number;
      
      private var §&3§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§5R§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§ 3§);
         this.m_localAnchor2.SetV(param1.§ '§);
         this.§&3§ = param1.length;
         this.§6" § = param1.§&s§;
         this.§9!2§ = param1.§9!]§;
         this.§>&§ = 0;
         this.§?"6§ = 0;
         this.§@;§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::"!U.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::!!3.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§>&§ * this.§5R§.x,param1 * this.§>&§ * this.§5R§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §<!&§() : Number
      {
         return this.§&3§;
      }
      
      public function §]"4§(param1:Number) : void
      {
         this.§&3§ = param1;
      }
      
      public function §<-§() : Number
      {
         return this.§6" §;
      }
      
      public function §<_§(param1:Number) : void
      {
         this.§6" § = param1;
      }
      
      public function §`g§() : Number
      {
         return this.§9!2§;
      }
      
      public function § !V§(param1:Number) : void
      {
         this.§9!2§ = param1;
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
         _loc4_ = b2internal::"!U;
         _loc5_ = b2internal::!!3;
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
         this.§5R§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§5R§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§5R§.x * this.§5R§.x + this.§5R§.y * this.§5R§.y)) > b2Settings.b2_linearSlop)
         {
            this.§5R§.§%!?§(1 / _loc10_);
         }
         else
         {
            this.§5R§.§ 4§();
         }
         var _loc11_:Number = _loc6_ * this.§5R§.y - _loc7_ * this.§5R§.x;
         var _loc12_:Number = _loc8_ * this.§5R§.y - _loc9_ * this.§5R§.x;
         var _loc13_:Number = _loc4_.§+!O§ + _loc4_.§#f§ * _loc11_ * _loc11_ + _loc5_.§+!O§ + _loc5_.§#f§ * _loc12_ * _loc12_;
         this.§=!i§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§6" § > 0)
         {
            _loc14_ = _loc10_ - this.§&3§;
            _loc15_ = 2 * Math.PI * this.§6" §;
            _loc16_ = 2 * this.§=!i§ * this.§9!2§ * _loc15_;
            _loc17_ = this.§=!i§ * _loc15_ * _loc15_;
            this.§?"6§ = param1.§!"7§ * (_loc16_ + param1.§!"7§ * _loc17_);
            this.§?"6§ = this.§?"6§ != 0 ? Number(1 / this.§?"6§) : Number(0);
            this.§@;§ = _loc14_ * param1.§!"7§ * _loc17_ * this.§?"6§;
            this.§=!i§ = _loc13_ + this.§?"6§;
            this.§=!i§ = this.§=!i§ != 0 ? Number(1 / this.§=!i§) : Number(0);
         }
         if(param1.§50§)
         {
            this.§>&§ *= param1.§<!4§;
            _loc18_ = this.§>&§ * this.§5R§.x;
            _loc19_ = this.§>&§ * this.§5R§.y;
            _loc4_.§[!m§.x -= _loc4_.§+!O§ * _loc18_;
            _loc4_.§[!m§.y -= _loc4_.§+!O§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§#f§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§[!m§.x += _loc5_.§+!O§ * _loc18_;
            _loc5_.§[!m§.y += _loc5_.§+!O§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§#f§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§>&§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::"!U;
         var _loc4_:b2Body = b2internal::!!3;
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
         var _loc10_:Number = _loc3_.§[!m§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§[!m§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§[!m§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§[!m§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§5R§.x * (_loc12_ - _loc10_) + this.§5R§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§=!i§ * (_loc14_ + this.§@;§ + this.§?"6§ * this.§>&§);
         this.§>&§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§5R§.x;
         var _loc17_:Number = _loc15_ * this.§5R§.y;
         _loc3_.§[!m§.x -= _loc3_.§+!O§ * _loc16_;
         _loc3_.§[!m§.y -= _loc3_.§+!O§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§#f§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§[!m§.x += _loc4_.§+!O§ * _loc16_;
         _loc4_.§[!m§.y += _loc4_.§+!O§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§#f§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§6" § > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::"!U;
         var _loc4_:b2Body = b2internal::!!3;
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
         var _loc13_:Number = _loc12_ - this.§&3§;
         _loc13_ = b2Math.§4"?§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§=!i§ * _loc13_;
         this.§5R§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§5R§.x;
         var _loc16_:Number = _loc14_ * this.§5R§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§+!O§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§+!O§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§#f§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§+!O§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§+!O§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§#f§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§=!z§();
         _loc4_.§=!z§();
         return b2Math.§3!n§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}

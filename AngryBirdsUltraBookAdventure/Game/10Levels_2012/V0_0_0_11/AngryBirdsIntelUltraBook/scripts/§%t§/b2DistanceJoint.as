package §%t§
{
   import §&L§.b2Mat22;
   import §&L§.b2Math;
   import §&L§.b2Vec2;
   import §+!,§.b2Settings;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §&a§:b2Vec2;
      
      private var §7?§:Number;
      
      private var §=E§:Number;
      
      private var §;!V§:Number;
      
      private var §,D§:Number;
      
      private var §;!?§:Number;
      
      private var §&v§:Number;
      
      private var §8!R§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§&a§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§`!V§);
         this.m_localAnchor2.SetV(param1.§6$§);
         this.§8!R§ = param1.length;
         this.§7?§ = param1.§?!J§;
         this.§=E§ = param1.§9!7§;
         this.§;!?§ = 0;
         this.§;!V§ = 0;
         this.§,D§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §1!G§.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return §&!F§.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§;!?§ * this.§&a§.x,param1 * this.§;!?§ * this.§&a§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §8`§() : Number
      {
         return this.§8!R§;
      }
      
      public function §]A§(param1:Number) : void
      {
         this.§8!R§ = param1;
      }
      
      public function §4!g§() : Number
      {
         return this.§7?§;
      }
      
      public function §+![§(param1:Number) : void
      {
         this.§7?§ = param1;
      }
      
      public function §!!M§() : Number
      {
         return this.§=E§;
      }
      
      public function §85§(param1:Number) : void
      {
         this.§=E§ = param1;
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
         _loc4_ = §1!G§;
         _loc5_ = §&!F§;
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
         this.§&a§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§&a§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number = Math.sqrt(this.§&a§.x * this.§&a§.x + this.§&a§.y * this.§&a§.y);
         if(_loc10_ > b2Settings.b2_linearSlop)
         {
            this.§&a§.§%!U§(1 / _loc10_);
         }
         else
         {
            this.§&a§.§5b§();
         }
         var _loc11_:Number = _loc6_ * this.§&a§.y - _loc7_ * this.§&a§.x;
         var _loc12_:Number = _loc8_ * this.§&a§.y - _loc9_ * this.§&a§.x;
         var _loc13_:Number = _loc4_.§8[§ + _loc4_.§&f§ * _loc11_ * _loc11_ + _loc5_.§8[§ + _loc5_.§&f§ * _loc12_ * _loc12_;
         this.§&v§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§7?§ > 0)
         {
            _loc14_ = _loc10_ - this.§8!R§;
            _loc15_ = 2 * Math.PI * this.§7?§;
            _loc16_ = 2 * this.§&v§ * this.§=E§ * _loc15_;
            _loc17_ = this.§&v§ * _loc15_ * _loc15_;
            this.§;!V§ = param1.§`"§ * (_loc16_ + param1.§`"§ * _loc17_);
            this.§;!V§ = this.§;!V§ != 0 ? Number(1 / this.§;!V§) : Number(0);
            this.§,D§ = _loc14_ * param1.§`"§ * _loc17_ * this.§;!V§;
            this.§&v§ = _loc13_ + this.§;!V§;
            this.§&v§ = this.§&v§ != 0 ? Number(1 / this.§&v§) : Number(0);
         }
         if(param1.§5h§)
         {
            this.§;!?§ *= param1.§<!1§;
            _loc18_ = this.§;!?§ * this.§&a§.x;
            _loc19_ = this.§;!?§ * this.§&a§.y;
            _loc4_.§45§.x -= _loc4_.§8[§ * _loc18_;
            _loc4_.§45§.y -= _loc4_.§8[§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§&f§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§45§.x += _loc5_.§8[§ * _loc18_;
            _loc5_.§45§.y += _loc5_.§8[§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§&f§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§;!?§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = §1!G§;
         var _loc4_:b2Body = §&!F§;
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
         var _loc10_:Number = _loc3_.§45§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§45§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§45§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§45§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§&a§.x * (_loc12_ - _loc10_) + this.§&a§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§&v§ * (_loc14_ + this.§,D§ + this.§;!V§ * this.§;!?§);
         this.§;!?§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§&a§.x;
         var _loc17_:Number = _loc15_ * this.§&a§.y;
         _loc3_.§45§.x -= _loc3_.§8[§ * _loc16_;
         _loc3_.§45§.y -= _loc3_.§8[§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§&f§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§45§.x += _loc4_.§8[§ * _loc16_;
         _loc4_.§45§.y += _loc4_.§8[§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§&f§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§7?§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = §1!G§;
         var _loc4_:b2Body = §&!F§;
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
         var _loc13_:Number = _loc12_ - this.§8!R§;
         _loc13_ = b2Math.§[$§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§&v§ * _loc13_;
         this.§&a§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§&a§.x;
         var _loc16_:Number = _loc14_ * this.§&a§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§8[§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§8[§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§&f§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§8[§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§8[§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§&f§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§`!e§();
         _loc4_.§`!e§();
         return b2Math.§"b§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}

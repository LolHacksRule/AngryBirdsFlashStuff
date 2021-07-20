package §7!3§
{
   import §+d§.b2Body;
   import §+d§.b2TimeStep;
   import §6%§.b2Settings;
   import §6%§.b2internal;
   import §`!^§.b2Mat22;
   import §`!^§.b2Math;
   import §`!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §;'§:Number = 2;
       
      
      private var §+&§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §6§:Number;
      
      private var §?K§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var § ! §:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §[H§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §4!^§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.m_u1 = new b2Vec2();
         this.m_u2 = new b2Vec2();
         super(param1);
         this.§+&§ = b2internal::5!R.m_world.m_groundBody;
         this.m_groundAnchor1.x = param1.§5!Y§.x - this.§+&§.m_xf.position.x;
         this.m_groundAnchor1.y = param1.§5!Y§.y - this.§+&§.m_xf.position.y;
         this.m_groundAnchor2.x = param1.§3!B§.x - this.§+&§.m_xf.position.x;
         this.m_groundAnchor2.y = param1.§3!B§.y - this.§+&§.m_xf.position.y;
         this.m_localAnchor1.SetV(param1.§ 3§);
         this.m_localAnchor2.SetV(param1.§&!-§);
         this.§?K§ = param1.§+Z§;
         this.§6§ = param1.§@d§ + this.§?K§ * param1.§>6§;
         this.m_maxLength1 = b2Math.§[!0§(param1.§=2§,this.§6§ - this.§?K§ * b2internal::;');
         this.m_maxLength2 = b2Math.§[!0§(param1.§2!D§,(this.§6§ - b2internal::;') / this.§?K§);
         this.§[H§ = 0;
         this.m_limitImpulse1 = 0;
         this.m_limitImpulse2 = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::5!R.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::>D.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[H§ * this.m_u2.x,param1 * this.§[H§ * this.m_u2.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §,§() : b2Vec2
      {
         var _loc1_:b2Vec2 = this.§+&§.m_xf.position.Copy();
         _loc1_.§5>§(this.m_groundAnchor1);
         return _loc1_;
      }
      
      public function §7E§() : b2Vec2
      {
         var _loc1_:b2Vec2 = this.§+&§.m_xf.position.Copy();
         _loc1_.§5>§(this.m_groundAnchor2);
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc1_:b2Vec2 = b2internal::5!R.GetWorldPoint(this.m_localAnchor1);
         var _loc2_:Number = this.§+&§.m_xf.position.x + this.m_groundAnchor1.x;
         var _loc3_:Number = this.§+&§.m_xf.position.y + this.m_groundAnchor1.y;
         var _loc4_:Number = _loc1_.x - _loc2_;
         var _loc5_:Number = _loc1_.y - _loc3_;
         return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
      }
      
      public function GetLength2() : Number
      {
         var _loc1_:b2Vec2 = b2internal::>D.GetWorldPoint(this.m_localAnchor2);
         var _loc2_:Number = this.§+&§.m_xf.position.x + this.m_groundAnchor2.x;
         var _loc3_:Number = this.§+&§.m_xf.position.y + this.m_groundAnchor2.y;
         var _loc4_:Number = _loc1_.x - _loc2_;
         var _loc5_:Number = _loc1_.y - _loc3_;
         return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
      }
      
      public function §0!V§() : Number
      {
         return this.§?K§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc6_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         _loc2_ = b2internal::5!R;
         _loc3_ = b2internal::>D;
         _loc4_ = _loc2_.m_xf.R;
         var _loc5_:Number = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
         _loc6_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
         var _loc7_:Number = _loc4_.col1.x * _loc5_ + _loc4_.col2.x * _loc6_;
         _loc6_ = _loc4_.col1.y * _loc5_ + _loc4_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
         _loc7_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         var _loc10_:Number = _loc2_.m_sweep.c.x + _loc5_;
         var _loc11_:Number = _loc2_.m_sweep.c.y + _loc6_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc9_;
         var _loc14_:Number = this.§+&§.m_xf.position.x + this.m_groundAnchor1.x;
         var _loc15_:Number = this.§+&§.m_xf.position.y + this.m_groundAnchor1.y;
         var _loc16_:Number = this.§+&§.m_xf.position.x + this.m_groundAnchor2.x;
         var _loc17_:Number = this.§+&§.m_xf.position.y + this.m_groundAnchor2.y;
         this.m_u1.Set(_loc10_ - _loc14_,_loc11_ - _loc15_);
         this.m_u2.Set(_loc12_ - _loc16_,_loc13_ - _loc17_);
         var _loc18_:Number = this.m_u1.§=!G§();
         var _loc19_:Number = this.m_u2.§=!G§();
         if(_loc18_ > b2Settings.b2_linearSlop)
         {
            this.m_u1.§6Q§(1 / _loc18_);
         }
         else
         {
            this.m_u1.§8c§();
         }
         if(_loc19_ > b2Settings.b2_linearSlop)
         {
            this.m_u2.§6Q§(1 / _loc19_);
         }
         else
         {
            this.m_u2.§8c§();
         }
         var _loc20_:Number;
         if((_loc20_ = this.§6§ - _loc18_ - this.§?K§ * _loc19_) > 0)
         {
            this.§4!^§ = b2internal::2!h;
            this.§[H§ = 0;
         }
         else
         {
            this.§4!^§ = b2internal::^!_;
         }
         if(_loc18_ < this.m_maxLength1)
         {
            this.m_limitState1 = b2internal::2!h;
            this.m_limitImpulse1 = 0;
         }
         else
         {
            this.m_limitState1 = b2internal::^!_;
         }
         if(_loc19_ < this.m_maxLength2)
         {
            this.m_limitState2 = b2internal::2!h;
            this.m_limitImpulse2 = 0;
         }
         else
         {
            this.m_limitState2 = b2internal::^!_;
         }
         var _loc21_:Number = _loc5_ * this.m_u1.y - _loc6_ * this.m_u1.x;
         var _loc22_:Number = _loc8_ * this.m_u2.y - _loc9_ * this.m_u2.x;
         this.m_limitMass1 = _loc2_.§@h§ + _loc2_.§8t§ * _loc21_ * _loc21_;
         this.m_limitMass2 = _loc3_.§@h§ + _loc3_.§8t§ * _loc22_ * _loc22_;
         this.§ ! § = this.m_limitMass1 + this.§?K§ * this.§?K§ * this.m_limitMass2;
         this.m_limitMass1 = 1 / this.m_limitMass1;
         this.m_limitMass2 = 1 / this.m_limitMass2;
         this.§ ! § = 1 / this.§ ! §;
         if(param1.§`!;§)
         {
            this.§[H§ *= param1.§"§;
            this.m_limitImpulse1 *= param1.§"§;
            this.m_limitImpulse2 *= param1.§"§;
            _loc23_ = (-this.§[H§ - this.m_limitImpulse1) * this.m_u1.x;
            _loc24_ = (-this.§[H§ - this.m_limitImpulse1) * this.m_u1.y;
            _loc25_ = (-this.§?K§ * this.§[H§ - this.m_limitImpulse2) * this.m_u2.x;
            _loc26_ = (-this.§?K§ * this.§[H§ - this.m_limitImpulse2) * this.m_u2.y;
            _loc2_.§^!S§.x += _loc2_.§@h§ * _loc23_;
            _loc2_.§^!S§.y += _loc2_.§@h§ * _loc24_;
            _loc2_.m_angularVelocity += _loc2_.§8t§ * (_loc5_ * _loc24_ - _loc6_ * _loc23_);
            _loc3_.§^!S§.x += _loc3_.§@h§ * _loc25_;
            _loc3_.§^!S§.y += _loc3_.§@h§ * _loc26_;
            _loc3_.m_angularVelocity += _loc3_.§8t§ * (_loc8_ * _loc26_ - _loc9_ * _loc25_);
         }
         else
         {
            this.§[H§ = 0;
            this.m_limitImpulse1 = 0;
            this.m_limitImpulse2 = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc2_:b2Body = b2internal::5!R;
         var _loc3_:b2Body = b2internal::>D;
         _loc4_ = _loc2_.m_xf.R;
         var _loc5_:Number = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
         var _loc6_:Number = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
         var _loc7_:Number = _loc4_.col1.x * _loc5_ + _loc4_.col2.x * _loc6_;
         _loc6_ = _loc4_.col1.y * _loc5_ + _loc4_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
         _loc7_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         if(this.§4!^§ == b2internal::^!_)
         {
            _loc10_ = _loc2_.§^!S§.x + -_loc2_.m_angularVelocity * _loc6_;
            _loc11_ = _loc2_.§^!S§.y + _loc2_.m_angularVelocity * _loc5_;
            _loc12_ = _loc3_.§^!S§.x + -_loc3_.m_angularVelocity * _loc9_;
            _loc13_ = _loc3_.§^!S§.y + _loc3_.m_angularVelocity * _loc8_;
            _loc18_ = -(this.m_u1.x * _loc10_ + this.m_u1.y * _loc11_) - this.§?K§ * (this.m_u2.x * _loc12_ + this.m_u2.y * _loc13_);
            _loc19_ = this.§ ! § * -_loc18_;
            _loc20_ = this.§[H§;
            this.§[H§ = b2Math.§"F§(0,this.§[H§ + _loc19_);
            _loc14_ = -(_loc19_ = this.§[H§ - _loc20_) * this.m_u1.x;
            _loc15_ = -_loc19_ * this.m_u1.y;
            _loc16_ = -this.§?K§ * _loc19_ * this.m_u2.x;
            _loc17_ = -this.§?K§ * _loc19_ * this.m_u2.y;
            _loc2_.§^!S§.x += _loc2_.§@h§ * _loc14_;
            _loc2_.§^!S§.y += _loc2_.§@h§ * _loc15_;
            _loc2_.m_angularVelocity += _loc2_.§8t§ * (_loc5_ * _loc15_ - _loc6_ * _loc14_);
            _loc3_.§^!S§.x += _loc3_.§@h§ * _loc16_;
            _loc3_.§^!S§.y += _loc3_.§@h§ * _loc17_;
            _loc3_.m_angularVelocity += _loc3_.§8t§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
         }
         if(this.m_limitState1 == b2internal::^!_)
         {
            _loc10_ = _loc2_.§^!S§.x + -_loc2_.m_angularVelocity * _loc6_;
            _loc11_ = _loc2_.§^!S§.y + _loc2_.m_angularVelocity * _loc5_;
            _loc18_ = -(this.m_u1.x * _loc10_ + this.m_u1.y * _loc11_);
            _loc19_ = -this.m_limitMass1 * _loc18_;
            _loc20_ = this.m_limitImpulse1;
            this.m_limitImpulse1 = b2Math.§"F§(0,this.m_limitImpulse1 + _loc19_);
            _loc14_ = -(_loc19_ = this.m_limitImpulse1 - _loc20_) * this.m_u1.x;
            _loc15_ = -_loc19_ * this.m_u1.y;
            _loc2_.§^!S§.x += _loc2_.§@h§ * _loc14_;
            _loc2_.§^!S§.y += _loc2_.§@h§ * _loc15_;
            _loc2_.m_angularVelocity += _loc2_.§8t§ * (_loc5_ * _loc15_ - _loc6_ * _loc14_);
         }
         if(this.m_limitState2 == b2internal::^!_)
         {
            _loc12_ = _loc3_.§^!S§.x + -_loc3_.m_angularVelocity * _loc9_;
            _loc13_ = _loc3_.§^!S§.y + _loc3_.m_angularVelocity * _loc8_;
            _loc18_ = -(this.m_u2.x * _loc12_ + this.m_u2.y * _loc13_);
            _loc19_ = -this.m_limitMass2 * _loc18_;
            _loc20_ = this.m_limitImpulse2;
            this.m_limitImpulse2 = b2Math.§"F§(0,this.m_limitImpulse2 + _loc19_);
            _loc16_ = -(_loc19_ = this.m_limitImpulse2 - _loc20_) * this.m_u2.x;
            _loc17_ = -_loc19_ * this.m_u2.y;
            _loc3_.§^!S§.x += _loc3_.§@h§ * _loc16_;
            _loc3_.§^!S§.y += _loc3_.§@h§ * _loc17_;
            _loc3_.m_angularVelocity += _loc3_.§8t§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
         }
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc4_:b2Mat22 = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc2_:b2Body = b2internal::5!R;
         var _loc3_:b2Body = b2internal::>D;
         var _loc5_:Number = this.§+&§.m_xf.position.x + this.m_groundAnchor1.x;
         var _loc6_:Number = this.§+&§.m_xf.position.y + this.m_groundAnchor1.y;
         var _loc7_:Number = this.§+&§.m_xf.position.x + this.m_groundAnchor2.x;
         var _loc8_:Number = this.§+&§.m_xf.position.y + this.m_groundAnchor2.y;
         var _loc24_:Number = 0;
         if(this.§4!^§ == b2internal::^!_)
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc9_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc23_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc23_;
            _loc4_ = _loc3_.m_xf.R;
            _loc11_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc12_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc23_ = _loc4_.col1.x * _loc11_ + _loc4_.col2.x * _loc12_;
            _loc12_ = _loc4_.col1.y * _loc11_ + _loc4_.col2.y * _loc12_;
            _loc11_ = _loc23_;
            _loc13_ = _loc2_.m_sweep.c.x + _loc9_;
            _loc14_ = _loc2_.m_sweep.c.y + _loc10_;
            _loc15_ = _loc3_.m_sweep.c.x + _loc11_;
            _loc16_ = _loc3_.m_sweep.c.y + _loc12_;
            this.m_u1.Set(_loc13_ - _loc5_,_loc14_ - _loc6_);
            this.m_u2.Set(_loc15_ - _loc7_,_loc16_ - _loc8_);
            _loc17_ = this.m_u1.§=!G§();
            _loc18_ = this.m_u2.§=!G§();
            if(_loc17_ > b2Settings.b2_linearSlop)
            {
               this.m_u1.§6Q§(1 / _loc17_);
            }
            else
            {
               this.m_u1.§8c§();
            }
            if(_loc18_ > b2Settings.b2_linearSlop)
            {
               this.m_u2.§6Q§(1 / _loc18_);
            }
            else
            {
               this.m_u2.§8c§();
            }
            _loc19_ = this.§6§ - _loc17_ - this.§?K§ * _loc18_;
            _loc24_ = b2Math.§"F§(_loc24_,-_loc19_);
            _loc19_ = b2Math.§6m§(_loc19_ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
            _loc13_ = -(_loc20_ = -this.§ ! § * _loc19_) * this.m_u1.x;
            _loc14_ = -_loc20_ * this.m_u1.y;
            _loc15_ = -this.§?K§ * _loc20_ * this.m_u2.x;
            _loc16_ = -this.§?K§ * _loc20_ * this.m_u2.y;
            _loc2_.m_sweep.c.x += _loc2_.§@h§ * _loc13_;
            _loc2_.m_sweep.c.y += _loc2_.§@h§ * _loc14_;
            _loc2_.m_sweep.a += _loc2_.§8t§ * (_loc9_ * _loc14_ - _loc10_ * _loc13_);
            _loc3_.m_sweep.c.x += _loc3_.§@h§ * _loc15_;
            _loc3_.m_sweep.c.y += _loc3_.§@h§ * _loc16_;
            _loc3_.m_sweep.a += _loc3_.§8t§ * (_loc11_ * _loc16_ - _loc12_ * _loc15_);
            _loc2_.§%t§();
            _loc3_.§%t§();
         }
         if(this.m_limitState1 == b2internal::^!_)
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc9_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc23_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc23_;
            _loc13_ = _loc2_.m_sweep.c.x + _loc9_;
            _loc14_ = _loc2_.m_sweep.c.y + _loc10_;
            this.m_u1.Set(_loc13_ - _loc5_,_loc14_ - _loc6_);
            if((_loc17_ = this.m_u1.§=!G§()) > b2Settings.b2_linearSlop)
            {
               this.m_u1.x *= 1 / _loc17_;
               this.m_u1.y *= 1 / _loc17_;
            }
            else
            {
               this.m_u1.§8c§();
            }
            _loc19_ = this.m_maxLength1 - _loc17_;
            _loc24_ = b2Math.§"F§(_loc24_,-_loc19_);
            _loc19_ = b2Math.§6m§(_loc19_ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
            _loc13_ = -(_loc20_ = -this.m_limitMass1 * _loc19_) * this.m_u1.x;
            _loc14_ = -_loc20_ * this.m_u1.y;
            _loc2_.m_sweep.c.x += _loc2_.§@h§ * _loc13_;
            _loc2_.m_sweep.c.y += _loc2_.§@h§ * _loc14_;
            _loc2_.m_sweep.a += _loc2_.§8t§ * (_loc9_ * _loc14_ - _loc10_ * _loc13_);
            _loc2_.§%t§();
         }
         if(this.m_limitState2 == b2internal::^!_)
         {
            _loc4_ = _loc3_.m_xf.R;
            _loc11_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc12_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc23_ = _loc4_.col1.x * _loc11_ + _loc4_.col2.x * _loc12_;
            _loc12_ = _loc4_.col1.y * _loc11_ + _loc4_.col2.y * _loc12_;
            _loc11_ = _loc23_;
            _loc15_ = _loc3_.m_sweep.c.x + _loc11_;
            _loc16_ = _loc3_.m_sweep.c.y + _loc12_;
            this.m_u2.Set(_loc15_ - _loc7_,_loc16_ - _loc8_);
            if((_loc18_ = this.m_u2.§=!G§()) > b2Settings.b2_linearSlop)
            {
               this.m_u2.x *= 1 / _loc18_;
               this.m_u2.y *= 1 / _loc18_;
            }
            else
            {
               this.m_u2.§8c§();
            }
            _loc19_ = this.m_maxLength2 - _loc18_;
            _loc24_ = b2Math.§"F§(_loc24_,-_loc19_);
            _loc19_ = b2Math.§6m§(_loc19_ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
            _loc15_ = -(_loc20_ = -this.m_limitMass2 * _loc19_) * this.m_u2.x;
            _loc16_ = -_loc20_ * this.m_u2.y;
            _loc3_.m_sweep.c.x += _loc3_.§@h§ * _loc15_;
            _loc3_.m_sweep.c.y += _loc3_.§@h§ * _loc16_;
            _loc3_.m_sweep.a += _loc3_.§8t§ * (_loc11_ * _loc16_ - _loc12_ * _loc15_);
            _loc3_.§%t§();
         }
         return _loc24_ < b2Settings.b2_linearSlop;
      }
   }
}

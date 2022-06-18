package §5v§
{
   import §1#F§.b2Settings;
   import §1#F§.b2internal;
   import §3#h§.b2Body;
   import §3#h§.b2TimeStep;
   import §6!R§.b2Mat22;
   import §6!R§.b2Mat33;
   import §6!R§.b2Math;
   import §6!R§.b2Vec2;
   import §6!R§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §!$0§:b2Vec2 = new b2Vec2();
       
      
      private var §'^§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §!" §:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §]#N§:b2Vec3;
      
      private var §]0§:Number;
      
      private var §!#v§:b2Mat33;
      
      private var §2#9§:Number;
      
      private var §,%§:Boolean;
      
      private var §+";§:Number;
      
      private var §1#0§:Number;
      
      private var §>$,§:Boolean;
      
      private var §3"[§:Number;
      
      private var § #k§:Number;
      
      private var §]!Z§:Number;
      
      private var §1!-§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§'^§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§!" § = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§]#N§ = new b2Vec3();
         this.§!#v§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§"#b§);
         this.m_localAnchor2.SetV(param1.§[#b§);
         this.§3"[§ = param1.§6"h§;
         this.§]#N§.§%"N§();
         this.§]0§ = 0;
         this.§ #k§ = param1.§^!O§;
         this.§]!Z§ = param1.§^"v§;
         this.§+";§ = param1.§-#o§;
         this.§1#0§ = param1.motorSpeed;
         this.§>$,§ = param1.§0#[§;
         this.§,%§ = param1.§["y§;
         this.§1!-§ = b2internal::#"a;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal:: ?.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: #q.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§]#N§.x,param1 * this.§]#N§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§]#N§.z;
      }
      
      public function §<U§() : Number
      {
         return b2internal:: #q.m_sweep.a - b2internal:: ?.m_sweep.a - this.§3"[§;
      }
      
      public function §=#u§() : Number
      {
         return b2internal:: #q.m_angularVelocity - b2internal:: ?.m_angularVelocity;
      }
      
      public function §`#Q§() : Boolean
      {
         return this.§>$,§;
      }
      
      public function §?"k§(param1:Boolean) : void
      {
         this.§>$,§ = param1;
      }
      
      public function §&#M§() : Number
      {
         return this.§ #k§;
      }
      
      public function §,#9§() : Number
      {
         return this.§]!Z§;
      }
      
      public function §]#Z§(param1:Number, param2:Number) : void
      {
         this.§ #k§ = param1;
         this.§]!Z§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§,%§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal:: ?.SetAwake(true);
         b2internal:: #q.SetAwake(true);
         this.§,%§ = param1;
      }
      
      public function §6#"§(param1:Number) : void
      {
         b2internal:: ?.SetAwake(true);
         b2internal:: #q.SetAwake(true);
         this.§1#0§ = param1;
      }
      
      public function §`#l§() : Number
      {
         return this.§1#0§;
      }
      
      public function §7R§(param1:Number) : void
      {
         this.§+";§ = param1;
      }
      
      public function §4n§() : Number
      {
         return this.§+";§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         _loc2_ = b2internal:: ?;
         _loc3_ = b2internal:: #q;
         if(this.§,%§ || this.§>$,§)
         {
         }
         _loc4_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
         _loc7_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc6_ + _loc4_.col2.x * _loc7_;
         _loc7_ = _loc4_.col1.y * _loc6_ + _loc4_.col2.y * _loc7_;
         _loc6_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         var _loc10_:Number = _loc2_.§0#d§;
         var _loc11_:Number = _loc3_.§0#d§;
         var _loc12_:Number = _loc2_.§!!!§;
         var _loc13_:Number = _loc3_.§!!!§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§!#v§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§!#v§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§!#v§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§!#v§.col1.y = this.§!#v§.col2.x;
         this.§!#v§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§!#v§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§!#v§.col1.z = this.§!#v§.col3.x;
         this.§!#v§.col2.z = this.§!#v§.col3.y;
         this.§!#v§.col3.z = _loc12_ + _loc13_;
         this.§2#9§ = 1 / (_loc12_ + _loc13_);
         if(this.§,%§ == false || _loc14_)
         {
            this.§]0§ = 0;
         }
         if(this.§>$,§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§3"[§;
            if(b2Math.§##%§(this.§]!Z§ - this.§ #k§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§1!-§ = b2internal::+$3;
            }
            else if(_loc15_ <= this.§ #k§)
            {
               if(this.§1!-§ != b2internal::@$D)
               {
                  this.§]#N§.z = 0;
               }
               this.§1!-§ = b2internal::@$D;
            }
            else if(_loc15_ >= this.§]!Z§)
            {
               if(this.§1!-§ != b2internal::&!=)
               {
                  this.§]#N§.z = 0;
               }
               this.§1!-§ = b2internal::&!=;
            }
            else
            {
               this.§1!-§ = b2internal::#"a;
               this.§]#N§.z = 0;
            }
         }
         else
         {
            this.§1!-§ = b2internal::#"a;
         }
         if(param1.§+L§)
         {
            this.§]#N§.x *= param1.§1$5§;
            this.§]#N§.y *= param1.§1$5§;
            this.§]0§ *= param1.§1$5§;
            _loc16_ = this.§]#N§.x;
            _loc17_ = this.§]#N§.y;
            _loc2_.§=!c§.x -= _loc10_ * _loc16_;
            _loc2_.§=!c§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§]0§ + this.§]#N§.z);
            _loc3_.§=!c§.x += _loc11_ * _loc16_;
            _loc3_.§=!c§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§]0§ + this.§]#N§.z);
         }
         else
         {
            this.§]#N§.§%"N§();
            this.§]0§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc2_:b2Body = b2internal:: ?;
         var _loc3_:b2Body = b2internal:: #q;
         var _loc11_:b2Vec2 = _loc2_.§=!c§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§=!c§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§0#d§;
         var _loc16_:Number = _loc3_.§0#d§;
         var _loc17_:Number = _loc2_.§!!!§;
         var _loc18_:Number = _loc3_.§!!!§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§,%§ && this.§1!-§ != b2internal::+$3 && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§1#0§;
            _loc21_ = this.§2#9§ * -_loc20_;
            _loc22_ = this.§]0§;
            _loc23_ = param1.dt * this.§+";§;
            this.§]0§ = b2Math.§-$"§(this.§]0§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§]0§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§>$,§ && this.§1!-§ != b2internal::#"a && !_loc19_)
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_.m_xf.R;
            _loc9_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc24_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc25_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            _loc26_ = _loc14_ - _loc12_;
            this.§!#v§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§1!-§ == b2internal::+$3)
            {
               this.§]#N§.§?$6§(this.impulse3);
            }
            else if(this.§1!-§ == b2internal::@$D)
            {
               if(Number(this.§]#N§.z + this.impulse3.z) < 0)
               {
                  this.§!#v§.Solve22(this.§!" §,-_loc24_ + this.§]#N§.z * this.§!#v§.col3.x,-_loc25_ + this.§]#N§.z * this.§!#v§.col3.y);
                  this.impulse3.x = this.§!" §.x;
                  this.impulse3.y = this.§!" §.y;
                  this.impulse3.z = -this.§]#N§.z;
                  this.§]#N§.x += this.§!" §.x;
                  this.§]#N§.y += this.§!" §.y;
                  this.§]#N§.z = 0;
               }
               else
               {
                  this.§]#N§.x += this.impulse3.x;
                  this.§]#N§.y += this.impulse3.y;
                  this.§]#N§.z += this.impulse3.z;
               }
            }
            else if(this.§1!-§ == b2internal::&!=)
            {
               if(Number(this.§]#N§.z + this.impulse3.z) > 0)
               {
                  this.§!#v§.Solve22(this.§!" §,-_loc24_ + this.§]#N§.z * this.§!#v§.col3.x,-_loc25_ + this.§]#N§.z * this.§!#v§.col3.y);
                  this.impulse3.x = this.§!" §.x;
                  this.impulse3.y = this.§!" §.y;
                  this.impulse3.z = -this.§]#N§.z;
                  this.§]#N§.x += this.§!" §.x;
                  this.§]#N§.y += this.§!" §.y;
                  this.§]#N§.z = 0;
               }
               else
               {
                  this.§]#N§.x += this.impulse3.x;
                  this.§]#N§.y += this.impulse3.y;
                  this.§]#N§.z += this.impulse3.z;
               }
            }
            _loc11_.x -= _loc15_ * this.impulse3.x;
            _loc11_.y -= _loc15_ * this.impulse3.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse3.y - _loc8_ * this.impulse3.x + this.impulse3.z);
            _loc13_.x += _loc16_ * this.impulse3.x;
            _loc13_.y += _loc16_ * this.impulse3.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse3.y - _loc10_ * this.impulse3.x + this.impulse3.z);
         }
         else
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_.m_xf.R;
            _loc9_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc27_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc28_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            this.§!#v§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§]#N§.x += this.impulse2.x;
            this.§]#N§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§=!c§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§=!c§.SetV(_loc13_);
         _loc3_.m_angularVelocity = _loc14_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc5_:b2Body = b2internal:: ?;
         var _loc6_:b2Body = b2internal:: #q;
         var _loc7_:* = b2internal::4#P + b2internal::;#z == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§>$,§ && this.§1!-§ != b2internal::#"a && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§3"[§;
            _loc27_ = 0;
            if(this.§1!-§ == b2internal::+$3)
            {
               _loc3_ = b2Math.§-$"§(_loc26_ - this.§ #k§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§2#9§ * _loc3_;
               _loc8_ = b2Math.§##%§(_loc3_);
            }
            else if(this.§1!-§ == b2internal::@$D)
            {
               _loc3_ = _loc26_ - this.§ #k§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§-$"§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§2#9§ * _loc3_;
            }
            else if(this.§1!-§ == b2internal::&!=)
            {
               _loc3_ = _loc26_ - this.§]!Z§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§-$"§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§2#9§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§!!!§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§!!!§ * _loc27_;
            _loc5_.§[!C§();
            _loc6_.§[!C§();
         }
         _loc4_ = _loc5_.m_xf.R;
         var _loc13_:Number = this.m_localAnchor1.x - _loc5_.m_sweep.localCenter.x;
         var _loc14_:Number = this.m_localAnchor1.y - _loc5_.m_sweep.localCenter.y;
         _loc10_ = _loc4_.col1.x * _loc13_ + _loc4_.col2.x * _loc14_;
         _loc14_ = _loc4_.col1.y * _loc13_ + _loc4_.col2.y * _loc14_;
         _loc13_ = _loc10_;
         _loc4_ = _loc6_.m_xf.R;
         var _loc15_:Number = this.m_localAnchor2.x - _loc6_.m_sweep.localCenter.x;
         var _loc16_:Number = this.m_localAnchor2.y - _loc6_.m_sweep.localCenter.y;
         _loc10_ = _loc4_.col1.x * _loc15_ + _loc4_.col2.x * _loc16_;
         _loc16_ = _loc4_.col1.y * _loc15_ + _loc4_.col2.y * _loc16_;
         _loc15_ = _loc10_;
         var _loc17_:Number = _loc6_.m_sweep.c.x + _loc15_ - _loc5_.m_sweep.c.x - _loc13_;
         var _loc18_:Number = _loc6_.m_sweep.c.y + _loc16_ - _loc5_.m_sweep.c.y - _loc14_;
         var _loc19_:Number = _loc17_ * _loc17_ + _loc18_ * _loc18_;
         var _loc20_:Number;
         _loc9_ = _loc20_ = Math.sqrt(_loc19_);
         var _loc21_:Number = _loc5_.§0#d§;
         var _loc22_:Number = _loc6_.§0#d§;
         var _loc23_:Number = _loc5_.§!!!§;
         var _loc24_:Number = _loc6_.§!!!§;
         var _loc25_:Number = 10 * b2Settings.b2_linearSlop * 4;
         if(_loc19_ > _loc25_ * _loc25_)
         {
            Number(_loc17_ / _loc20_);
            Number(_loc18_ / _loc20_);
            _loc30_ = _loc21_ + _loc22_;
            _loc11_ = (_loc31_ = 1 / _loc30_) * -_loc17_;
            _loc12_ = _loc31_ * -_loc18_;
            _loc32_ = 0.5;
            _loc5_.m_sweep.c.x -= _loc32_ * _loc21_ * _loc11_;
            _loc5_.m_sweep.c.y -= _loc32_ * _loc21_ * _loc12_;
            _loc6_.m_sweep.c.x += _loc32_ * _loc22_ * _loc11_;
            _loc6_.m_sweep.c.y += _loc32_ * _loc22_ * _loc12_;
            _loc17_ = _loc6_.m_sweep.c.x + _loc15_ - _loc5_.m_sweep.c.x - _loc13_;
            _loc18_ = _loc6_.m_sweep.c.y + _loc16_ - _loc5_.m_sweep.c.y - _loc14_;
         }
         this.K1.col1.x = _loc21_ + _loc22_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc21_ + _loc22_;
         this.K2.col1.x = _loc23_ * _loc14_ * _loc14_;
         this.K2.col2.x = -_loc23_ * _loc13_ * _loc14_;
         this.K2.col1.y = -_loc23_ * _loc13_ * _loc14_;
         this.K2.col2.y = _loc23_ * _loc13_ * _loc13_;
         this.K3.col1.x = _loc24_ * _loc16_ * _loc16_;
         this.K3.col2.x = -_loc24_ * _loc15_ * _loc16_;
         this.K3.col1.y = -_loc24_ * _loc15_ * _loc16_;
         this.K3.col2.y = _loc24_ * _loc15_ * _loc15_;
         this.§'^§.§`!&§(this.K1);
         this.§'^§.§8#R§(this.K2);
         this.§'^§.§8#R§(this.K3);
         this.§'^§.§5R§(§!$0§,-_loc17_,-_loc18_);
         _loc11_ = §!$0§.x;
         _loc12_ = §!$0§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§0#d§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§0#d§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§!!!§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§0#d§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§0#d§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§!!!§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§[!C§();
         _loc6_.§[!C§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}

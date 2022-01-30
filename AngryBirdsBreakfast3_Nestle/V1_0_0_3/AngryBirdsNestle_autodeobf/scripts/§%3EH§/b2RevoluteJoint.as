package §>H§
{
   import § !%§.b2Settings;
   import § !%§.b2internal;
   import §,!k§.b2Mat22;
   import §,!k§.b2Mat33;
   import §,!k§.b2Math;
   import §,!k§.b2Vec2;
   import §,!k§.b2Vec3;
   import §;'§.b2Body;
   import §;'§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §2D§:b2Vec2 = new b2Vec2();
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §&!o§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §@_§:b2Vec3;
      
      private var §-!!§:Number;
      
      private var §]B§:b2Mat33;
      
      private var §@"2§:Number;
      
      private var §'=§:Boolean;
      
      private var §3!@§:Number;
      
      private var §!?§:Number;
      
      private var §8"3§:Boolean;
      
      private var §#T§:Number;
      
      private var §4!R§:Number;
      
      private var § !2§:Number;
      
      private var §-!9§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§&!o§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§@_§ = new b2Vec3();
         this.§]B§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§`!>§);
         this.m_localAnchor2.SetV(param1.§0l§);
         this.§#T§ = param1.§`!r§;
         this.§@_§.§2!n§();
         this.§-!!§ = 0;
         this.§4!R§ = param1.§8Q§;
         this.§ !2§ = param1.§!!O§;
         this.§3!@§ = param1.§9!X§;
         this.§!?§ = param1.motorSpeed;
         this.§8"3§ = param1.§^j§;
         this.§'=§ = param1.§,u§;
         this.§-!9§ = b2internal::@-;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!>.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: N.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§@_§.x,param1 * this.§@_§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§@_§.z;
      }
      
      public function §8!u§() : Number
      {
         return b2internal:: N.m_sweep.a - b2internal::9!>.m_sweep.a - this.§#T§;
      }
      
      public function §?c§() : Number
      {
         return b2internal:: N.m_angularVelocity - b2internal::9!>.m_angularVelocity;
      }
      
      public function §[h§() : Boolean
      {
         return this.§8"3§;
      }
      
      public function §="+§(param1:Boolean) : void
      {
         this.§8"3§ = param1;
      }
      
      public function §>w§() : Number
      {
         return this.§4!R§;
      }
      
      public function §"Y§() : Number
      {
         return this.§ !2§;
      }
      
      public function §^K§(param1:Number, param2:Number) : void
      {
         this.§4!R§ = param1;
         this.§ !2§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§'=§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::9!>.SetAwake(true);
         b2internal:: N.SetAwake(true);
         this.§'=§ = param1;
      }
      
      public function §9"2§(param1:Number) : void
      {
         b2internal::9!>.SetAwake(true);
         b2internal:: N.SetAwake(true);
         this.§!?§ = param1;
      }
      
      public function §9=§() : Number
      {
         return this.§!?§;
      }
      
      public function §4!T§(param1:Number) : void
      {
         this.§3!@§ = param1;
      }
      
      public function §6j§() : Number
      {
         return this.§3!@§;
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
         _loc2_ = b2internal::9!>;
         _loc3_ = b2internal:: N;
         if(this.§'=§ || this.§8"3§)
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
         var _loc10_:Number = _loc2_.§1!#§;
         var _loc11_:Number = _loc3_.§1!#§;
         var _loc12_:Number = _loc2_.§+%§;
         var _loc13_:Number = _loc3_.§+%§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§]B§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§]B§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§]B§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§]B§.col1.y = this.§]B§.col2.x;
         this.§]B§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§]B§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§]B§.col1.z = this.§]B§.col3.x;
         this.§]B§.col2.z = this.§]B§.col3.y;
         this.§]B§.col3.z = _loc12_ + _loc13_;
         this.§@"2§ = 1 / (_loc12_ + _loc13_);
         if(this.§'=§ == false || _loc14_)
         {
            this.§-!!§ = 0;
         }
         if(this.§8"3§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§#T§;
            if(b2Math.§-#§(this.§ !2§ - this.§4!R§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§-!9§ = b2internal::;j;
            }
            else if(_loc15_ <= this.§4!R§)
            {
               if(this.§-!9§ != b2internal::7g)
               {
                  this.§@_§.z = 0;
               }
               this.§-!9§ = b2internal::7g;
            }
            else if(_loc15_ >= this.§ !2§)
            {
               if(this.§-!9§ != b2internal::7Z)
               {
                  this.§@_§.z = 0;
               }
               this.§-!9§ = b2internal::7Z;
            }
            else
            {
               this.§-!9§ = b2internal::@-;
               this.§@_§.z = 0;
            }
         }
         else
         {
            this.§-!9§ = b2internal::@-;
         }
         if(param1.§0!_§)
         {
            this.§@_§.x *= param1.§#v§;
            this.§@_§.y *= param1.§#v§;
            this.§-!!§ *= param1.§#v§;
            _loc16_ = this.§@_§.x;
            _loc17_ = this.§@_§.y;
            _loc2_.§1N§.x -= _loc10_ * _loc16_;
            _loc2_.§1N§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§-!!§ + this.§@_§.z);
            _loc3_.§1N§.x += _loc11_ * _loc16_;
            _loc3_.§1N§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§-!!§ + this.§@_§.z);
         }
         else
         {
            this.§@_§.§2!n§();
            this.§-!!§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
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
         var _loc2_:b2Body = b2internal::9!>;
         var _loc3_:b2Body = b2internal:: N;
         var _loc11_:b2Vec2 = _loc2_.§1N§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§1N§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§1!#§;
         var _loc16_:Number = _loc3_.§1!#§;
         var _loc17_:Number = _loc2_.§+%§;
         var _loc18_:Number = _loc3_.§+%§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§'=§ && this.§-!9§ != b2internal::;j && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§!?§;
            _loc21_ = this.§@"2§ * -_loc20_;
            _loc22_ = this.§-!!§;
            _loc23_ = param1.§<"3§ * this.§3!@§;
            this.§-!!§ = b2Math.§[§(this.§-!!§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§-!!§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§8"3§ && this.§-!9§ != b2internal::@- && !_loc19_)
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
            this.§]B§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§-!9§ == b2internal::;j)
            {
               this.§@_§.§0<§(this.impulse3);
            }
            else if(this.§-!9§ == b2internal::7g)
            {
               if((_loc6_ = this.§@_§.z + this.impulse3.z) < 0)
               {
                  this.§]B§.Solve22(this.§&!o§,-_loc24_ + this.§@_§.z * this.§]B§.col3.x,-_loc25_ + this.§@_§.z * this.§]B§.col3.y);
                  this.impulse3.x = this.§&!o§.x;
                  this.impulse3.y = this.§&!o§.y;
                  this.impulse3.z = -this.§@_§.z;
                  this.§@_§.x += this.§&!o§.x;
                  this.§@_§.y += this.§&!o§.y;
                  this.§@_§.z = 0;
               }
               else
               {
                  this.§@_§.x += this.impulse3.x;
                  this.§@_§.y += this.impulse3.y;
                  this.§@_§.z += this.impulse3.z;
               }
            }
            else if(this.§-!9§ == b2internal::7Z)
            {
               if((_loc6_ = this.§@_§.z + this.impulse3.z) > 0)
               {
                  this.§]B§.Solve22(this.§&!o§,-_loc24_ + this.§@_§.z * this.§]B§.col3.x,-_loc25_ + this.§@_§.z * this.§]B§.col3.y);
                  this.impulse3.x = this.§&!o§.x;
                  this.impulse3.y = this.§&!o§.y;
                  this.impulse3.z = -this.§@_§.z;
                  this.§@_§.x += this.§&!o§.x;
                  this.§@_§.y += this.§&!o§.y;
                  this.§@_§.z = 0;
               }
               else
               {
                  this.§@_§.x += this.impulse3.x;
                  this.§@_§.y += this.impulse3.y;
                  this.§@_§.z += this.impulse3.z;
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
            this.§]B§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§@_§.x += this.impulse2.x;
            this.§@_§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§1N§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§1N§.SetV(_loc13_);
         _loc3_.m_angularVelocity = _loc14_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc5_:b2Body = b2internal::9!>;
         var _loc6_:b2Body = b2internal:: N;
         var _loc7_:* = b2internal::,G + b2internal::;i == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§8"3§ && this.§-!9§ != b2internal::@- && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§#T§;
            _loc27_ = 0;
            if(this.§-!9§ == b2internal::;j)
            {
               _loc3_ = b2Math.§[§(_loc26_ - this.§4!R§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§@"2§ * _loc3_;
               _loc8_ = b2Math.§-#§(_loc3_);
            }
            else if(this.§-!9§ == b2internal::7g)
            {
               _loc3_ = _loc26_ - this.§4!R§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§[§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§@"2§ * _loc3_;
            }
            else if(this.§-!9§ == b2internal::7Z)
            {
               _loc3_ = _loc26_ - this.§ !2§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§[§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§@"2§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§+%§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§+%§ * _loc27_;
            _loc5_.§@!5§();
            _loc6_.§@!5§();
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
         var _loc21_:Number = _loc5_.§1!#§;
         var _loc22_:Number = _loc6_.§1!#§;
         var _loc23_:Number = _loc5_.§+%§;
         var _loc24_:Number = _loc6_.§+%§;
         var _loc25_:Number = 10 * b2Settings.b2_linearSlop * 4;
         if(_loc19_ > _loc25_ * _loc25_)
         {
            _loc28_ = _loc17_ / _loc20_;
            _loc29_ = _loc18_ / _loc20_;
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
         this.K.§,&§(this.K1);
         this.K.§-!Z§(this.K2);
         this.K.§-!Z§(this.K3);
         this.K.§7&§(§2D§,-_loc17_,-_loc18_);
         _loc11_ = §2D§.x;
         _loc12_ = §2D§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§1!#§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§1!#§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§+%§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§1!#§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§1!#§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§+%§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§@!5§();
         _loc6_.§@!5§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}

package §;!#§
{
   import § o§.b2Body;
   import § o§.b2TimeStep;
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §6!H§.b2Mat22;
   import §6!H§.b2Mat33;
   import §6!H§.b2Math;
   import §6!H§.b2Vec2;
   import §6!H§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §for§:b2Vec2 = new b2Vec2();
       
      
      private var §-!5§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §`w§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §==§:b2Vec3;
      
      private var §+!$§:Number;
      
      private var §>§:b2Mat33;
      
      private var §>!§:Number;
      
      private var §2!c§:Boolean;
      
      private var §6!5§:Number;
      
      private var §`W§:Number;
      
      private var §3!e§:Boolean;
      
      private var §#!Z§:Number;
      
      private var §@!R§:Number;
      
      private var §!d§:Number;
      
      private var §,=§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§-!5§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§`w§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§==§ = new b2Vec3();
         this.§>§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§!!U§);
         this.m_localAnchor2.SetV(param1.§"!'§);
         this.§#!Z§ = param1.§49§;
         this.§==§.§7_§();
         this.§+!$§ = 0;
         this.§@!R§ = param1.§<!B§;
         this.§!d§ = param1.§=!9§;
         this.§6!5§ = param1.§[!+§;
         this.§`W§ = param1.motorSpeed;
         this.§3!e§ = param1.§ c§;
         this.§2!c§ = param1.§32§;
         this.§,=§ = b2internal::9!d;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::3D.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§==§.x,param1 * this.§==§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§==§.z;
      }
      
      public function §?!^§() : Number
      {
         return b2internal::3D.m_sweep.a - b2internal::6z.m_sweep.a - this.§#!Z§;
      }
      
      public function §,&§() : Number
      {
         return b2internal::3D.m_angularVelocity - b2internal::6z.m_angularVelocity;
      }
      
      public function §>!L§() : Boolean
      {
         return this.§3!e§;
      }
      
      public function §@>§(param1:Boolean) : void
      {
         this.§3!e§ = param1;
      }
      
      public function §+!I§() : Number
      {
         return this.§@!R§;
      }
      
      public function §`m§() : Number
      {
         return this.§!d§;
      }
      
      public function §64§(param1:Number, param2:Number) : void
      {
         this.§@!R§ = param1;
         this.§!d§ = param2;
      }
      
      public function §;!c§() : Boolean
      {
         b2internal::6z.SetAwake(true);
         b2internal::3D.SetAwake(true);
         return this.§2!c§;
      }
      
      public function §#<§(param1:Boolean) : void
      {
         this.§2!c§ = param1;
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         b2internal::6z.SetAwake(true);
         b2internal::3D.SetAwake(true);
         this.§`W§ = param1;
      }
      
      public function § U§() : Number
      {
         return this.§`W§;
      }
      
      public function §@K§(param1:Number) : void
      {
         this.§6!5§ = param1;
      }
      
      public function §]!V§() : Number
      {
         return this.§6!5§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         _loc2_ = b2internal::6z;
         _loc3_ = b2internal::3D;
         if(this.§2!c§ || this.§3!e§)
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
         var _loc10_:Number = _loc2_.§+5§;
         var _loc11_:Number = _loc3_.§+5§;
         var _loc12_:Number = _loc2_.§%L§;
         var _loc13_:Number = _loc3_.§%L§;
         this.§>§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§>§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§>§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§>§.col1.y = this.§>§.col2.x;
         this.§>§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§>§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§>§.col1.z = this.§>§.col3.x;
         this.§>§.col2.z = this.§>§.col3.y;
         this.§>§.col3.z = _loc12_ + _loc13_;
         this.§>!§ = 1 / (_loc12_ + _loc13_);
         if(this.§2!c§ == false)
         {
            this.§+!$§ = 0;
         }
         if(this.§3!e§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§#!Z§;
            if(b2Math.§1T§(this.§!d§ - this.§@!R§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§,=§ = b2internal::0!F;
            }
            else if(_loc14_ <= this.§@!R§)
            {
               if(this.§,=§ != b2internal::'M)
               {
                  this.§==§.z = 0;
               }
               this.§,=§ = b2internal::'M;
            }
            else if(_loc14_ >= this.§!d§)
            {
               if(this.§,=§ != b2internal::6!f)
               {
                  this.§==§.z = 0;
               }
               this.§,=§ = b2internal::6!f;
            }
            else
            {
               this.§,=§ = b2internal::9!d;
               this.§==§.z = 0;
            }
         }
         else
         {
            this.§,=§ = b2internal::9!d;
         }
         if(param1.§7!^§)
         {
            this.§==§.x *= param1.§,K§;
            this.§==§.y *= param1.§,K§;
            this.§+!$§ *= param1.§,K§;
            _loc15_ = this.§==§.x;
            _loc16_ = this.§==§.y;
            _loc2_.§2!@§.x -= _loc10_ * _loc15_;
            _loc2_.§2!@§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§+!$§ + this.§==§.z);
            _loc3_.§2!@§.x += _loc11_ * _loc15_;
            _loc3_.§2!@§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§+!$§ + this.§==§.z);
         }
         else
         {
            this.§==§.§7_§();
            this.§+!$§ = 0;
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
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc2_:b2Body = b2internal::6z;
         var _loc3_:b2Body = b2internal::3D;
         var _loc11_:b2Vec2 = _loc2_.§2!@§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§2!@§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§+5§;
         var _loc16_:Number = _loc3_.§+5§;
         var _loc17_:Number = _loc2_.§%L§;
         var _loc18_:Number = _loc3_.§%L§;
         if(this.§2!c§ && this.§,=§ != b2internal::0!F)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§`W§;
            _loc20_ = this.§>!§ * -_loc19_;
            _loc21_ = this.§+!$§;
            _loc22_ = param1.§1_§ * this.§6!5§;
            this.§+!$§ = b2Math.§9!%§(this.§+!$§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§+!$§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§3!e§ && this.§,=§ != b2internal::9!d)
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
            _loc23_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc24_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            _loc25_ = _loc14_ - _loc12_;
            this.§>§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§,=§ == b2internal::0!F)
            {
               this.§==§.§!!,§(this.impulse3);
            }
            else if(this.§,=§ == b2internal::'M)
            {
               if((_loc6_ = this.§==§.z + this.impulse3.z) < 0)
               {
                  this.§>§.Solve22(this.§`w§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§`w§.x;
                  this.impulse3.y = this.§`w§.y;
                  this.impulse3.z = -this.§==§.z;
                  this.§==§.x += this.§`w§.x;
                  this.§==§.y += this.§`w§.y;
                  this.§==§.z = 0;
               }
            }
            else if(this.§,=§ == b2internal::6!f)
            {
               if((_loc6_ = this.§==§.z + this.impulse3.z) > 0)
               {
                  this.§>§.Solve22(this.§`w§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§`w§.x;
                  this.impulse3.y = this.§`w§.y;
                  this.impulse3.z = -this.§==§.z;
                  this.§==§.x += this.§`w§.x;
                  this.§==§.y += this.§`w§.y;
                  this.§==§.z = 0;
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
            _loc26_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc27_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            this.§>§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§==§.x += this.impulse2.x;
            this.§==§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§2!@§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§2!@§.SetV(_loc13_);
         _loc3_.m_angularVelocity = _loc14_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc5_:b2Body = b2internal::6z;
         var _loc6_:b2Body = b2internal::3D;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§3!e§ && this.§,=§ != b2internal::9!d)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§#!Z§;
            _loc26_ = 0;
            if(this.§,=§ == b2internal::0!F)
            {
               _loc3_ = b2Math.§9!%§(_loc25_ - this.§@!R§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§>!§ * _loc3_;
               _loc7_ = b2Math.§1T§(_loc3_);
            }
            else if(this.§,=§ == b2internal::'M)
            {
               _loc3_ = _loc25_ - this.§@!R§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§9!%§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§>!§ * _loc3_;
            }
            else if(this.§,=§ == b2internal::6!f)
            {
               _loc3_ = _loc25_ - this.§!d§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§9!%§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§>!§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§%L§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§%L§ * _loc26_;
            _loc5_.§&I§();
            _loc6_.§&I§();
         }
         _loc4_ = _loc5_.m_xf.R;
         var _loc12_:Number = this.m_localAnchor1.x - _loc5_.m_sweep.localCenter.x;
         var _loc13_:Number = this.m_localAnchor1.y - _loc5_.m_sweep.localCenter.y;
         _loc9_ = _loc4_.col1.x * _loc12_ + _loc4_.col2.x * _loc13_;
         _loc13_ = _loc4_.col1.y * _loc12_ + _loc4_.col2.y * _loc13_;
         _loc12_ = _loc9_;
         _loc4_ = _loc6_.m_xf.R;
         var _loc14_:Number = this.m_localAnchor2.x - _loc6_.m_sweep.localCenter.x;
         var _loc15_:Number = this.m_localAnchor2.y - _loc6_.m_sweep.localCenter.y;
         _loc9_ = _loc4_.col1.x * _loc14_ + _loc4_.col2.x * _loc15_;
         _loc15_ = _loc4_.col1.y * _loc14_ + _loc4_.col2.y * _loc15_;
         _loc14_ = _loc9_;
         var _loc16_:Number = _loc6_.m_sweep.c.x + _loc14_ - _loc5_.m_sweep.c.x - _loc12_;
         var _loc17_:Number = _loc6_.m_sweep.c.y + _loc15_ - _loc5_.m_sweep.c.y - _loc13_;
         var _loc18_:Number = _loc16_ * _loc16_ + _loc17_ * _loc17_;
         var _loc19_:Number;
         _loc8_ = _loc19_ = Math.sqrt(_loc18_);
         var _loc20_:Number = _loc5_.§+5§;
         var _loc21_:Number = _loc6_.§+5§;
         var _loc22_:Number = _loc5_.§%L§;
         var _loc23_:Number = _loc6_.§%L§;
         var _loc24_:Number = 10 * b2Settings.b2_linearSlop;
         if(_loc18_ > _loc24_ * _loc24_)
         {
            _loc27_ = _loc16_ / _loc19_;
            _loc28_ = _loc17_ / _loc19_;
            _loc29_ = _loc20_ + _loc21_;
            _loc10_ = (_loc30_ = 1 / _loc29_) * -_loc16_;
            _loc11_ = _loc30_ * -_loc17_;
            _loc31_ = 0.5;
            _loc5_.m_sweep.c.x -= _loc31_ * _loc20_ * _loc10_;
            _loc5_.m_sweep.c.y -= _loc31_ * _loc20_ * _loc11_;
            _loc6_.m_sweep.c.x += _loc31_ * _loc21_ * _loc10_;
            _loc6_.m_sweep.c.y += _loc31_ * _loc21_ * _loc11_;
            _loc16_ = _loc6_.m_sweep.c.x + _loc14_ - _loc5_.m_sweep.c.x - _loc12_;
            _loc17_ = _loc6_.m_sweep.c.y + _loc15_ - _loc5_.m_sweep.c.y - _loc13_;
         }
         this.K1.col1.x = _loc20_ + _loc21_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc20_ + _loc21_;
         this.K2.col1.x = _loc22_ * _loc13_ * _loc13_;
         this.K2.col2.x = -_loc22_ * _loc12_ * _loc13_;
         this.K2.col1.y = -_loc22_ * _loc12_ * _loc13_;
         this.K2.col2.y = _loc22_ * _loc12_ * _loc12_;
         this.K3.col1.x = _loc23_ * _loc15_ * _loc15_;
         this.K3.col2.x = -_loc23_ * _loc14_ * _loc15_;
         this.K3.col1.y = -_loc23_ * _loc14_ * _loc15_;
         this.K3.col2.y = _loc23_ * _loc14_ * _loc14_;
         this.§-!5§.§^!X§(this.K1);
         this.§-!5§.§8`§(this.K2);
         this.§-!5§.§8`§(this.K3);
         this.§-!5§.§ §(§for§,-_loc16_,-_loc17_);
         _loc10_ = §for§.x;
         _loc11_ = §for§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§+5§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§+5§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§%L§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§+5§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§+5§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§%L§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§&I§();
         _loc6_.§&I§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}

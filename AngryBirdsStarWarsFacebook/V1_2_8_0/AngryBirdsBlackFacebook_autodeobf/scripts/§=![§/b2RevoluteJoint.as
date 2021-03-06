package §=![§
{
   import §7!I§.b2Settings;
   import §7!I§.b2internal;
   import §7"A§.b2Mat22;
   import §7"A§.b2Mat33;
   import §7"A§.b2Math;
   import §7"A§.b2Vec2;
   import §7"A§.b2Vec3;
   import §>"_§.b2Body;
   import §>"_§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §6" §:b2Vec2 = new b2Vec2();
       
      
      private var §2#§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §4`§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §8!t§:b2Vec3;
      
      private var §7'§:Number;
      
      private var §;,§:b2Mat33;
      
      private var §7!v§:Number;
      
      private var §&+§:Boolean;
      
      private var §-!Z§:Number;
      
      private var §@b§:Number;
      
      private var §,o§:Boolean;
      
      private var §>!e§:Number;
      
      private var §;F§:Number;
      
      private var §<!C§:Number;
      
      private var §]"g§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§2#§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§4`§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§8!t§ = new b2Vec3();
         this.§;,§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§?"y§);
         this.m_localAnchor2.SetV(param1.§0d§);
         this.§>!e§ = param1.§'T§;
         this.§8!t§.§6![§();
         this.§7'§ = 0;
         this.§;F§ = param1.§-!%§;
         this.§<!C§ = param1.§+k§;
         this.§-!Z§ = param1.§9#6§;
         this.§@b§ = param1.motorSpeed;
         this.§,o§ = param1.§@!I§;
         this.§&+§ = param1.§"!A§;
         this.§]"g§ = b2internal::+!L;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal:: ,.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?!p.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8!t§.x,param1 * this.§8!t§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§8!t§.z;
      }
      
      public function §'R§() : Number
      {
         return b2internal::?!p.m_sweep.a - b2internal:: ,.m_sweep.a - this.§>!e§;
      }
      
      public function §3"J§() : Number
      {
         return b2internal::?!p.m_angularVelocity - b2internal:: ,.m_angularVelocity;
      }
      
      public function §]#0§() : Boolean
      {
         return this.§,o§;
      }
      
      public function §]! §(param1:Boolean) : void
      {
         this.§,o§ = param1;
      }
      
      public function § e§() : Number
      {
         return this.§;F§;
      }
      
      public function §4!S§() : Number
      {
         return this.§<!C§;
      }
      
      public function §^"n§(param1:Number, param2:Number) : void
      {
         this.§;F§ = param1;
         this.§<!C§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§&+§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal:: ,.SetAwake(true);
         b2internal::?!p.SetAwake(true);
         this.§&+§ = param1;
      }
      
      public function §%!v§(param1:Number) : void
      {
         b2internal:: ,.SetAwake(true);
         b2internal::?!p.SetAwake(true);
         this.§@b§ = param1;
      }
      
      public function §null§() : Number
      {
         return this.§@b§;
      }
      
      public function §5$§(param1:Number) : void
      {
         this.§-!Z§ = param1;
      }
      
      public function §-!x§() : Number
      {
         return this.§-!Z§;
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
         _loc2_ = b2internal:: ,;
         _loc3_ = b2internal::?!p;
         if(this.§&+§ || this.§,o§)
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
         var _loc10_:Number = _loc2_.§ !o§;
         var _loc11_:Number = _loc3_.§ !o§;
         var _loc12_:Number = _loc2_.§&#+§;
         var _loc13_:Number = _loc3_.§&#+§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§;,§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§;,§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§;,§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§;,§.col1.y = this.§;,§.col2.x;
         this.§;,§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§;,§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§;,§.col1.z = this.§;,§.col3.x;
         this.§;,§.col2.z = this.§;,§.col3.y;
         this.§;,§.col3.z = _loc12_ + _loc13_;
         this.§7!v§ = 1 / (_loc12_ + _loc13_);
         if(this.§&+§ == false || _loc14_)
         {
            this.§7'§ = 0;
         }
         if(this.§,o§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§>!e§;
            if(b2Math.§>b§(this.§<!C§ - this.§;F§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§]"g§ = b2internal::8";
            }
            else if(_loc15_ <= this.§;F§)
            {
               if(this.§]"g§ != b2internal::["G)
               {
                  this.§8!t§.z = 0;
               }
               this.§]"g§ = b2internal::["G;
            }
            else if(_loc15_ >= this.§<!C§)
            {
               if(this.§]"g§ != b2internal::""Q)
               {
                  this.§8!t§.z = 0;
               }
               this.§]"g§ = b2internal::""Q;
            }
            else
            {
               this.§]"g§ = b2internal::+!L;
               this.§8!t§.z = 0;
            }
         }
         else
         {
            this.§]"g§ = b2internal::+!L;
         }
         if(param1.§?!'§)
         {
            this.§8!t§.x *= param1.§!"J§;
            this.§8!t§.y *= param1.§!"J§;
            this.§7'§ *= param1.§!"J§;
            _loc16_ = this.§8!t§.x;
            _loc17_ = this.§8!t§.y;
            _loc2_.§9"H§.x -= _loc10_ * _loc16_;
            _loc2_.§9"H§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§7'§ + this.§8!t§.z);
            _loc3_.§9"H§.x += _loc11_ * _loc16_;
            _loc3_.§9"H§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§7'§ + this.§8!t§.z);
         }
         else
         {
            this.§8!t§.§6![§();
            this.§7'§ = 0;
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
         var _loc2_:b2Body = b2internal:: ,;
         var _loc3_:b2Body = b2internal::?!p;
         var _loc11_:b2Vec2 = _loc2_.§9"H§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§9"H§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§ !o§;
         var _loc16_:Number = _loc3_.§ !o§;
         var _loc17_:Number = _loc2_.§&#+§;
         var _loc18_:Number = _loc3_.§&#+§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§&+§ && this.§]"g§ != b2internal::8" && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§@b§;
            _loc21_ = this.§7!v§ * -_loc20_;
            _loc22_ = this.§7'§;
            _loc23_ = param1.§-!@§ * this.§-!Z§;
            this.§7'§ = b2Math.§0!M§(this.§7'§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§7'§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§,o§ && this.§]"g§ != b2internal::+!L && !_loc19_)
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
            this.§;,§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§]"g§ == b2internal::8")
            {
               this.§8!t§.§4"5§(this.impulse3);
            }
            else if(this.§]"g§ == b2internal::["G)
            {
               if((_loc6_ = this.§8!t§.z + this.impulse3.z) < 0)
               {
                  this.§;,§.Solve22(this.§4`§,-_loc24_ + this.§8!t§.z * this.§;,§.col3.x,-_loc25_ + this.§8!t§.z * this.§;,§.col3.y);
                  this.impulse3.x = this.§4`§.x;
                  this.impulse3.y = this.§4`§.y;
                  this.impulse3.z = -this.§8!t§.z;
                  this.§8!t§.x += this.§4`§.x;
                  this.§8!t§.y += this.§4`§.y;
                  this.§8!t§.z = 0;
               }
               else
               {
                  this.§8!t§.x += this.impulse3.x;
                  this.§8!t§.y += this.impulse3.y;
                  this.§8!t§.z += this.impulse3.z;
               }
            }
            else if(this.§]"g§ == b2internal::""Q)
            {
               if((_loc6_ = this.§8!t§.z + this.impulse3.z) > 0)
               {
                  this.§;,§.Solve22(this.§4`§,-_loc24_ + this.§8!t§.z * this.§;,§.col3.x,-_loc25_ + this.§8!t§.z * this.§;,§.col3.y);
                  this.impulse3.x = this.§4`§.x;
                  this.impulse3.y = this.§4`§.y;
                  this.impulse3.z = -this.§8!t§.z;
                  this.§8!t§.x += this.§4`§.x;
                  this.§8!t§.y += this.§4`§.y;
                  this.§8!t§.z = 0;
               }
               else
               {
                  this.§8!t§.x += this.impulse3.x;
                  this.§8!t§.y += this.impulse3.y;
                  this.§8!t§.z += this.impulse3.z;
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
            this.§;,§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§8!t§.x += this.impulse2.x;
            this.§8!t§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§9"H§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§9"H§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal:: ,;
         var _loc6_:b2Body = b2internal::?!p;
         var _loc7_:* = b2internal::2!X + b2internal::[!] == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§,o§ && this.§]"g§ != b2internal::+!L && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§>!e§;
            _loc27_ = 0;
            if(this.§]"g§ == b2internal::8")
            {
               _loc3_ = b2Math.§0!M§(_loc26_ - this.§;F§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§7!v§ * _loc3_;
               _loc8_ = b2Math.§>b§(_loc3_);
            }
            else if(this.§]"g§ == b2internal::["G)
            {
               _loc3_ = _loc26_ - this.§;F§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§0!M§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§7!v§ * _loc3_;
            }
            else if(this.§]"g§ == b2internal::""Q)
            {
               _loc3_ = _loc26_ - this.§<!C§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§0!M§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§7!v§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§&#+§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§&#+§ * _loc27_;
            _loc5_.§&"]§();
            _loc6_.§&"]§();
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
         var _loc21_:Number = _loc5_.§ !o§;
         var _loc22_:Number = _loc6_.§ !o§;
         var _loc23_:Number = _loc5_.§&#+§;
         var _loc24_:Number = _loc6_.§&#+§;
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
         this.§2#§.§;!-§(this.K1);
         this.§2#§.§9!3§(this.K2);
         this.§2#§.§9!3§(this.K3);
         this.§2#§.§8_§(§6" §,-_loc17_,-_loc18_);
         _loc11_ = §6" §.x;
         _loc12_ = §6" §.y;
         _loc5_.m_sweep.c.x -= _loc5_.§ !o§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§ !o§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§&#+§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§ !o§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§ !o§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§&#+§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§&"]§();
         _loc6_.§&"]§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}

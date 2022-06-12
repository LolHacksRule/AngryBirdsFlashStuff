package §!t§
{
   import §8,§.b2Settings;
   import §8,§.b2internal;
   import §9v§.b2Mat22;
   import §9v§.b2Mat33;
   import §9v§.b2Math;
   import §9v§.b2Vec2;
   import §9v§.b2Vec3;
   import §?!E§.b2Body;
   import §?!E§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §?]§:b2Vec2 = new b2Vec2();
       
      
      private var §^!F§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §-!l§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §8j§:b2Vec3;
      
      private var §<!l§:Number;
      
      private var §>?§:b2Mat33;
      
      private var §'!§:Number;
      
      private var §;Y§:Boolean;
      
      private var §?"$§:Number;
      
      private var §<"1§:Number;
      
      private var §9!C§:Boolean;
      
      private var override:Number;
      
      private var §%!b§:Number;
      
      private var §^S§:Number;
      
      private var §3K§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§^!F§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§-!l§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§8j§ = new b2Vec3();
         this.§>?§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§ ;§);
         this.m_localAnchor2.SetV(param1.§8!Z§);
         this.override = param1.§#!8§;
         this.§8j§.§6V§();
         this.§<!l§ = 0;
         this.§%!b§ = param1.§ !H§;
         this.§^S§ = param1.§@!J§;
         this.§?"$§ = param1.§!""§;
         this.§<"1§ = param1.motorSpeed;
         this.§9!C§ = param1.§+!6§;
         this.§;Y§ = param1.§-! §;
         this.§3K§ = b2internal:: G;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::7-.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::]5.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8j§.x,param1 * this.§8j§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§8j§.z;
      }
      
      public function §%O§() : Number
      {
         return b2internal::]5.m_sweep.a - b2internal::7-.m_sweep.a - this.override;
      }
      
      public function §3!,§() : Number
      {
         return b2internal::]5.m_angularVelocity - b2internal::7-.m_angularVelocity;
      }
      
      public function §7!6§() : Boolean
      {
         return this.§9!C§;
      }
      
      public function §!!h§(param1:Boolean) : void
      {
         this.§9!C§ = param1;
      }
      
      public function §,!B§() : Number
      {
         return this.§%!b§;
      }
      
      public function §'!#§() : Number
      {
         return this.§^S§;
      }
      
      public function §'"&§(param1:Number, param2:Number) : void
      {
         this.§%!b§ = param1;
         this.§^S§ = param2;
      }
      
      public function §-!L§() : Boolean
      {
         b2internal::7-.SetAwake(true);
         b2internal::]5.SetAwake(true);
         return this.§;Y§;
      }
      
      public function §^k§(param1:Boolean) : void
      {
         this.§;Y§ = param1;
      }
      
      public function §1!`§(param1:Number) : void
      {
         b2internal::7-.SetAwake(true);
         b2internal::]5.SetAwake(true);
         this.§<"1§ = param1;
      }
      
      public function §'Y§() : Number
      {
         return this.§<"1§;
      }
      
      public function §,S§(param1:Number) : void
      {
         this.§?"$§ = param1;
      }
      
      public function §]"§() : Number
      {
         return this.§?"$§;
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
         _loc2_ = b2internal::7-;
         _loc3_ = b2internal::]5;
         if(this.§;Y§ || this.§9!C§)
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
         var _loc10_:Number = _loc2_.§-!P§;
         var _loc11_:Number = _loc3_.§-!P§;
         var _loc12_:Number = _loc2_.§;c§;
         var _loc13_:Number = _loc3_.§;c§;
         this.§>?§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§>?§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§>?§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§>?§.col1.y = this.§>?§.col2.x;
         this.§>?§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§>?§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§>?§.col1.z = this.§>?§.col3.x;
         this.§>?§.col2.z = this.§>?§.col3.y;
         this.§>?§.col3.z = _loc12_ + _loc13_;
         this.§'!§ = 1 / (_loc12_ + _loc13_);
         if(this.§;Y§ == false)
         {
            this.§<!l§ = 0;
         }
         if(this.§9!C§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.override;
            if(b2Math.§?!Y§(this.§^S§ - this.§%!b§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§3K§ = b2internal::"v;
            }
            else if(_loc14_ <= this.§%!b§)
            {
               if(this.§3K§ != b2internal::&"3)
               {
                  this.§8j§.z = 0;
               }
               this.§3K§ = b2internal::&"3;
            }
            else if(_loc14_ >= this.§^S§)
            {
               if(this.§3K§ != b2internal::]!c)
               {
                  this.§8j§.z = 0;
               }
               this.§3K§ = b2internal::]!c;
            }
            else
            {
               this.§3K§ = b2internal:: G;
               this.§8j§.z = 0;
            }
         }
         else
         {
            this.§3K§ = b2internal:: G;
         }
         if(param1.§&9§)
         {
            this.§8j§.x *= param1.§4!1§;
            this.§8j§.y *= param1.§4!1§;
            this.§<!l§ *= param1.§4!1§;
            _loc15_ = this.§8j§.x;
            _loc16_ = this.§8j§.y;
            _loc2_.§?!%§.x -= _loc10_ * _loc15_;
            _loc2_.§?!%§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§<!l§ + this.§8j§.z);
            _loc3_.§?!%§.x += _loc11_ * _loc15_;
            _loc3_.§?!%§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§<!l§ + this.§8j§.z);
         }
         else
         {
            this.§8j§.§6V§();
            this.§<!l§ = 0;
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
         var _loc2_:b2Body = b2internal::7-;
         var _loc3_:b2Body = b2internal::]5;
         var _loc11_:b2Vec2 = _loc2_.§?!%§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§?!%§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§-!P§;
         var _loc16_:Number = _loc3_.§-!P§;
         var _loc17_:Number = _loc2_.§;c§;
         var _loc18_:Number = _loc3_.§;c§;
         if(this.§;Y§ && this.§3K§ != b2internal::"v)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§<"1§;
            _loc20_ = this.§'!§ * -_loc19_;
            _loc21_ = this.§<!l§;
            _loc22_ = param1.§,!i§ * this.§?"$§;
            this.§<!l§ = b2Math.§"A§(this.§<!l§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§<!l§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§9!C§ && this.§3K§ != b2internal:: G)
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
            this.§>?§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§3K§ == b2internal::"v)
            {
               this.§8j§.native(this.impulse3);
            }
            else if(this.§3K§ == b2internal::&"3)
            {
               if((_loc6_ = this.§8j§.z + this.impulse3.z) < 0)
               {
                  this.§>?§.Solve22(this.§-!l§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§-!l§.x;
                  this.impulse3.y = this.§-!l§.y;
                  this.impulse3.z = -this.§8j§.z;
                  this.§8j§.x += this.§-!l§.x;
                  this.§8j§.y += this.§-!l§.y;
                  this.§8j§.z = 0;
               }
            }
            else if(this.§3K§ == b2internal::]!c)
            {
               if((_loc6_ = this.§8j§.z + this.impulse3.z) > 0)
               {
                  this.§>?§.Solve22(this.§-!l§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§-!l§.x;
                  this.impulse3.y = this.§-!l§.y;
                  this.impulse3.z = -this.§8j§.z;
                  this.§8j§.x += this.§-!l§.x;
                  this.§8j§.y += this.§-!l§.y;
                  this.§8j§.z = 0;
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
            this.§>?§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§8j§.x += this.impulse2.x;
            this.§8j§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§?!%§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§?!%§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::7-;
         var _loc6_:b2Body = b2internal::]5;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§9!C§ && this.§3K§ != b2internal:: G)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.override;
            _loc26_ = 0;
            if(this.§3K§ == b2internal::"v)
            {
               _loc3_ = b2Math.§"A§(_loc25_ - this.§%!b§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§'!§ * _loc3_;
               _loc7_ = b2Math.§?!Y§(_loc3_);
            }
            else if(this.§3K§ == b2internal::&"3)
            {
               _loc3_ = _loc25_ - this.§%!b§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§"A§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§'!§ * _loc3_;
            }
            else if(this.§3K§ == b2internal::]!c)
            {
               _loc3_ = _loc25_ - this.§^S§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§"A§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§'!§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§;c§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§;c§ * _loc26_;
            _loc5_.§]!k§();
            _loc6_.§]!k§();
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
         var _loc20_:Number = _loc5_.§-!P§;
         var _loc21_:Number = _loc6_.§-!P§;
         var _loc22_:Number = _loc5_.§;c§;
         var _loc23_:Number = _loc6_.§;c§;
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
         this.§^!F§.§1L§(this.K1);
         this.§^!F§.§=!4§(this.K2);
         this.§^!F§.§=!4§(this.K3);
         this.§^!F§.§=!3§(§?]§,-_loc16_,-_loc17_);
         _loc10_ = §?]§.x;
         _loc11_ = §?]§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§-!P§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§-!P§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§;c§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§-!P§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§-!P§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§;c§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§]!k§();
         _loc6_.§]!k§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}

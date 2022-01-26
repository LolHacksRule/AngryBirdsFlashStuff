package §,!8§
{
   import §&!B§.b2Mat22;
   import §&!B§.b2Mat33;
   import §&!B§.b2Math;
   import §&!B§.b2Vec2;
   import §&!B§.b2Vec3;
   import §[x§.b2Body;
   import §[x§.b2TimeStep;
   import §^<§.b2Settings;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §8!§:b2Vec2 = new b2Vec2();
       
      
      private var §5!`§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §8!,§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §]4§:b2Vec3;
      
      private var §]I§:Number;
      
      private var §;^§:b2Mat33;
      
      private var §9!+§:Number;
      
      private var §1!Y§:Boolean;
      
      private var §=!A§:Number;
      
      private var §16§:Number;
      
      private var §`9§:Boolean;
      
      private var §8>§:Number;
      
      private var §2!J§:Number;
      
      private var §;Z§:Number;
      
      private var §%?§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§5!`§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§8!,§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§]4§ = new b2Vec3();
         this.§;^§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§'s§);
         this.m_localAnchor2.SetV(param1.§5%§);
         this.§8>§ = param1.§-,§;
         this.§]4§.§,!3§();
         this.§]I§ = 0;
         this.§2!J§ = param1.§@!V§;
         this.§;Z§ = param1.§9!§;
         this.§=!A§ = param1.§9!J§;
         this.§16§ = param1.motorSpeed;
         this.§`9§ = param1.§!O§;
         this.§1!Y§ = param1.§3!@§;
         this.§%?§ = b2internal::@d;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::%!F.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?!S.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§]4§.x,param1 * this.§]4§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§]4§.z;
      }
      
      public function §;q§() : Number
      {
         return b2internal::?!S.m_sweep.a - b2internal::%!F.m_sweep.a - this.§8>§;
      }
      
      public function §<p§() : Number
      {
         return b2internal::?!S.m_angularVelocity - b2internal::%!F.m_angularVelocity;
      }
      
      public function §[E§() : Boolean
      {
         return this.§`9§;
      }
      
      public function §?1§(param1:Boolean) : void
      {
         this.§`9§ = param1;
      }
      
      public function §;!=§() : Number
      {
         return this.§2!J§;
      }
      
      public function §-!"§() : Number
      {
         return this.§;Z§;
      }
      
      public function §2Z§(param1:Number, param2:Number) : void
      {
         this.§2!J§ = param1;
         this.§;Z§ = param2;
      }
      
      public function §<w§() : Boolean
      {
         b2internal::%!F.SetAwake(true);
         b2internal::?!S.SetAwake(true);
         return this.§1!Y§;
      }
      
      public function §%!;§(param1:Boolean) : void
      {
         this.§1!Y§ = param1;
      }
      
      public function §'!E§(param1:Number) : void
      {
         b2internal::%!F.SetAwake(true);
         b2internal::?!S.SetAwake(true);
         this.§16§ = param1;
      }
      
      public function §+L§() : Number
      {
         return this.§16§;
      }
      
      public function §]&§(param1:Number) : void
      {
         this.§=!A§ = param1;
      }
      
      public function §3;§() : Number
      {
         return this.§=!A§;
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
         _loc2_ = b2internal::%!F;
         _loc3_ = b2internal::?!S;
         if(this.§1!Y§ || this.§`9§)
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
         var _loc10_:Number = _loc2_.§6I§;
         var _loc11_:Number = _loc3_.§6I§;
         var _loc12_:Number = _loc2_.§2!L§;
         var _loc13_:Number = _loc3_.§2!L§;
         this.§;^§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§;^§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§;^§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§;^§.col1.y = this.§;^§.col2.x;
         this.§;^§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§;^§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§;^§.col1.z = this.§;^§.col3.x;
         this.§;^§.col2.z = this.§;^§.col3.y;
         this.§;^§.col3.z = _loc12_ + _loc13_;
         this.§9!+§ = 1 / (_loc12_ + _loc13_);
         if(this.§1!Y§ == false)
         {
            this.§]I§ = 0;
         }
         if(this.§`9§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§8>§;
            if(b2Math.§<!,§(this.§;Z§ - this.§2!J§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§%?§ = b2internal::3^;
            }
            else if(_loc14_ <= this.§2!J§)
            {
               if(this.§%?§ != b2internal::1,)
               {
                  this.§]4§.z = 0;
               }
               this.§%?§ = b2internal::1,;
            }
            else if(_loc14_ >= this.§;Z§)
            {
               if(this.§%?§ != b2internal::"&)
               {
                  this.§]4§.z = 0;
               }
               this.§%?§ = b2internal::"&;
            }
            else
            {
               this.§%?§ = b2internal::@d;
               this.§]4§.z = 0;
            }
         }
         else
         {
            this.§%?§ = b2internal::@d;
         }
         if(param1.§3!-§)
         {
            this.§]4§.x *= param1.§4!G§;
            this.§]4§.y *= param1.§4!G§;
            this.§]I§ *= param1.§4!G§;
            _loc15_ = this.§]4§.x;
            _loc16_ = this.§]4§.y;
            _loc2_.§%q§.x -= _loc10_ * _loc15_;
            _loc2_.§%q§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§]I§ + this.§]4§.z);
            _loc3_.§%q§.x += _loc11_ * _loc15_;
            _loc3_.§%q§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§]I§ + this.§]4§.z);
         }
         else
         {
            this.§]4§.§,!3§();
            this.§]I§ = 0;
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
         var _loc2_:b2Body = b2internal::%!F;
         var _loc3_:b2Body = b2internal::?!S;
         var _loc11_:b2Vec2 = _loc2_.§%q§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§%q§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§6I§;
         var _loc16_:Number = _loc3_.§6I§;
         var _loc17_:Number = _loc2_.§2!L§;
         var _loc18_:Number = _loc3_.§2!L§;
         if(this.§1!Y§ && this.§%?§ != b2internal::3^)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§16§;
            _loc20_ = this.§9!+§ * -_loc19_;
            _loc21_ = this.§]I§;
            _loc22_ = param1.§>!!§ * this.§=!A§;
            this.§]I§ = b2Math.§,W§(this.§]I§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§]I§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§`9§ && this.§%?§ != b2internal::@d)
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
            this.§;^§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§%?§ == b2internal::3^)
            {
               this.§]4§.§!!X§(this.impulse3);
            }
            else if(this.§%?§ == b2internal::1,)
            {
               if((_loc6_ = this.§]4§.z + this.impulse3.z) < 0)
               {
                  this.§;^§.Solve22(this.§8!,§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§8!,§.x;
                  this.impulse3.y = this.§8!,§.y;
                  this.impulse3.z = -this.§]4§.z;
                  this.§]4§.x += this.§8!,§.x;
                  this.§]4§.y += this.§8!,§.y;
                  this.§]4§.z = 0;
               }
            }
            else if(this.§%?§ == b2internal::"&)
            {
               if((_loc6_ = this.§]4§.z + this.impulse3.z) > 0)
               {
                  this.§;^§.Solve22(this.§8!,§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§8!,§.x;
                  this.impulse3.y = this.§8!,§.y;
                  this.impulse3.z = -this.§]4§.z;
                  this.§]4§.x += this.§8!,§.x;
                  this.§]4§.y += this.§8!,§.y;
                  this.§]4§.z = 0;
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
            this.§;^§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§]4§.x += this.impulse2.x;
            this.§]4§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§%q§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§%q§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::%!F;
         var _loc6_:b2Body = b2internal::?!S;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§`9§ && this.§%?§ != b2internal::@d)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§8>§;
            _loc26_ = 0;
            if(this.§%?§ == b2internal::3^)
            {
               _loc3_ = b2Math.§,W§(_loc25_ - this.§2!J§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§9!+§ * _loc3_;
               _loc7_ = b2Math.§<!,§(_loc3_);
            }
            else if(this.§%?§ == b2internal::1,)
            {
               _loc3_ = _loc25_ - this.§2!J§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§,W§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§9!+§ * _loc3_;
            }
            else if(this.§%?§ == b2internal::"&)
            {
               _loc3_ = _loc25_ - this.§;Z§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§,W§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§9!+§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§2!L§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§2!L§ * _loc26_;
            _loc5_.§[B§();
            _loc6_.§[B§();
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
         var _loc20_:Number = _loc5_.§6I§;
         var _loc21_:Number = _loc6_.§6I§;
         var _loc22_:Number = _loc5_.§2!L§;
         var _loc23_:Number = _loc6_.§2!L§;
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
         this.§5!`§.§?`§(this.K1);
         this.§5!`§.§7Y§(this.K2);
         this.§5!`§.§7Y§(this.K3);
         this.§5!`§.§>M§(§8!§,-_loc16_,-_loc17_);
         _loc10_ = §8!§.x;
         _loc11_ = §8!§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§6I§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§6I§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§2!L§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§6I§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§6I§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§2!L§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§[B§();
         _loc6_.§[B§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}

package §&g§
{
   import § !k§.b2Body;
   import § !k§.b2TimeStep;
   import §!"8§.b2Mat22;
   import §!"8§.b2Mat33;
   import §!"8§.b2Math;
   import §!"8§.b2Vec2;
   import §!"8§.b2Vec3;
   import §in§.b2Settings;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §@"2§:b2Vec2 = new b2Vec2();
       
      
      private var §49§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §8"A§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §"!J§:b2Vec3;
      
      private var §@!k§:Number;
      
      private var §''§:b2Mat33;
      
      private var §&!W§:Number;
      
      private var § !d§:Boolean;
      
      private var §8!_§:Number;
      
      private var §@!v§:Number;
      
      private var § `§:Boolean;
      
      private var §5s§:Number;
      
      private var §^"§:Number;
      
      private var §0<§:Number;
      
      private var §,o§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§49§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§8"A§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§"!J§ = new b2Vec3();
         this.§''§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§'!v§);
         this.m_localAnchor2.SetV(param1.§?!m§);
         this.§5s§ = param1.§&!D§;
         this.§"!J§.§]!;§();
         this.§@!k§ = 0;
         this.§^"§ = param1.§@!N§;
         this.§0<§ = param1.§@_§;
         this.§8!_§ = param1.§%!Z§;
         this.§@!v§ = param1.motorSpeed;
         this.§ `§ = param1.§?!v§;
         this.§ !d§ = param1.§^"=§;
         this.§,o§ = b2internal::9!5;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::5!A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: k.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§"!J§.x,param1 * this.§"!J§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§"!J§.z;
      }
      
      public function §+">§() : Number
      {
         return b2internal:: k.m_sweep.a - b2internal::5!A.m_sweep.a - this.§5s§;
      }
      
      public function §1#§() : Number
      {
         return b2internal:: k.m_angularVelocity - b2internal::5!A.m_angularVelocity;
      }
      
      public function §+!'§() : Boolean
      {
         return this.§ `§;
      }
      
      public function § !D§(param1:Boolean) : void
      {
         this.§ `§ = param1;
      }
      
      public function §9=§() : Number
      {
         return this.§^"§;
      }
      
      public function §;"=§() : Number
      {
         return this.§0<§;
      }
      
      public function §4]§(param1:Number, param2:Number) : void
      {
         this.§^"§ = param1;
         this.§0<§ = param2;
      }
      
      public function §08§() : Boolean
      {
         b2internal::5!A.SetAwake(true);
         b2internal:: k.SetAwake(true);
         return this.§ !d§;
      }
      
      public function §'!3§(param1:Boolean) : void
      {
         this.§ !d§ = param1;
      }
      
      public function §1!?§(param1:Number) : void
      {
         b2internal::5!A.SetAwake(true);
         b2internal:: k.SetAwake(true);
         this.§@!v§ = param1;
      }
      
      public function §<7§() : Number
      {
         return this.§@!v§;
      }
      
      public function §^b§(param1:Number) : void
      {
         this.§8!_§ = param1;
      }
      
      public function §`!%§() : Number
      {
         return this.§8!_§;
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
         _loc2_ = b2internal::5!A;
         _loc3_ = b2internal:: k;
         if(this.§ !d§ || this.§ `§)
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
         var _loc10_:Number = _loc2_.§^1§;
         var _loc11_:Number = _loc3_.§^1§;
         var _loc12_:Number = _loc2_.§?y§;
         var _loc13_:Number = _loc3_.§?y§;
         this.§''§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§''§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§''§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§''§.col1.y = this.§''§.col2.x;
         this.§''§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§''§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§''§.col1.z = this.§''§.col3.x;
         this.§''§.col2.z = this.§''§.col3.y;
         this.§''§.col3.z = _loc12_ + _loc13_;
         this.§&!W§ = 1 / (_loc12_ + _loc13_);
         if(this.§ !d§ == false)
         {
            this.§@!k§ = 0;
         }
         if(this.§ `§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§5s§;
            if(b2Math.§'!I§(this.§0<§ - this.§^"§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§,o§ = b2internal::"!s;
            }
            else if(_loc14_ <= this.§^"§)
            {
               if(this.§,o§ != b2internal::>"%)
               {
                  this.§"!J§.z = 0;
               }
               this.§,o§ = b2internal::>"%;
            }
            else if(_loc14_ >= this.§0<§)
            {
               if(this.§,o§ != b2internal::0J)
               {
                  this.§"!J§.z = 0;
               }
               this.§,o§ = b2internal::0J;
            }
            else
            {
               this.§,o§ = b2internal::9!5;
               this.§"!J§.z = 0;
            }
         }
         else
         {
            this.§,o§ = b2internal::9!5;
         }
         if(param1.§+!D§)
         {
            this.§"!J§.x *= param1.§=G§;
            this.§"!J§.y *= param1.§=G§;
            this.§@!k§ *= param1.§=G§;
            _loc15_ = this.§"!J§.x;
            _loc16_ = this.§"!J§.y;
            _loc2_.§>! §.x -= _loc10_ * _loc15_;
            _loc2_.§>! §.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§@!k§ + this.§"!J§.z);
            _loc3_.§>! §.x += _loc11_ * _loc15_;
            _loc3_.§>! §.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§@!k§ + this.§"!J§.z);
         }
         else
         {
            this.§"!J§.§]!;§();
            this.§@!k§ = 0;
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
         var _loc2_:b2Body = b2internal::5!A;
         var _loc3_:b2Body = b2internal:: k;
         var _loc11_:b2Vec2 = _loc2_.§>! §;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§>! §;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§^1§;
         var _loc16_:Number = _loc3_.§^1§;
         var _loc17_:Number = _loc2_.§?y§;
         var _loc18_:Number = _loc3_.§?y§;
         if(this.§ !d§ && this.§,o§ != b2internal::"!s)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§@!v§;
            _loc20_ = this.§&!W§ * -_loc19_;
            _loc21_ = this.§@!k§;
            _loc22_ = param1.§7!x§ * this.§8!_§;
            this.§@!k§ = b2Math.§`!L§(this.§@!k§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§@!k§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§ `§ && this.§,o§ != b2internal::9!5)
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
            this.§''§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§,o§ == b2internal::"!s)
            {
               this.§"!J§.§>!?§(this.impulse3);
            }
            else if(this.§,o§ == b2internal::>"%)
            {
               if((_loc6_ = this.§"!J§.z + this.impulse3.z) < 0)
               {
                  this.§''§.Solve22(this.§8"A§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§8"A§.x;
                  this.impulse3.y = this.§8"A§.y;
                  this.impulse3.z = -this.§"!J§.z;
                  this.§"!J§.x += this.§8"A§.x;
                  this.§"!J§.y += this.§8"A§.y;
                  this.§"!J§.z = 0;
               }
            }
            else if(this.§,o§ == b2internal::0J)
            {
               if((_loc6_ = this.§"!J§.z + this.impulse3.z) > 0)
               {
                  this.§''§.Solve22(this.§8"A§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§8"A§.x;
                  this.impulse3.y = this.§8"A§.y;
                  this.impulse3.z = -this.§"!J§.z;
                  this.§"!J§.x += this.§8"A§.x;
                  this.§"!J§.y += this.§8"A§.y;
                  this.§"!J§.z = 0;
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
            this.§''§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§"!J§.x += this.impulse2.x;
            this.§"!J§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§>! §.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§>! §.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::5!A;
         var _loc6_:b2Body = b2internal:: k;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§ `§ && this.§,o§ != b2internal::9!5)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§5s§;
            _loc26_ = 0;
            if(this.§,o§ == b2internal::"!s)
            {
               _loc3_ = b2Math.§`!L§(_loc25_ - this.§^"§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§&!W§ * _loc3_;
               _loc7_ = b2Math.§'!I§(_loc3_);
            }
            else if(this.§,o§ == b2internal::>"%)
            {
               _loc3_ = _loc25_ - this.§^"§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§`!L§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§&!W§ * _loc3_;
            }
            else if(this.§,o§ == b2internal::0J)
            {
               _loc3_ = _loc25_ - this.§0<§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§`!L§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§&!W§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§?y§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§?y§ * _loc26_;
            _loc5_.§?=§();
            _loc6_.§?=§();
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
         var _loc20_:Number = _loc5_.§^1§;
         var _loc21_:Number = _loc6_.§^1§;
         var _loc22_:Number = _loc5_.§?y§;
         var _loc23_:Number = _loc6_.§?y§;
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
         this.§49§.§']§(this.K1);
         this.§49§.§,C§(this.K2);
         this.§49§.§,C§(this.K3);
         this.§49§.§?q§(§@"2§,-_loc16_,-_loc17_);
         _loc10_ = §@"2§.x;
         _loc11_ = §@"2§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§^1§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§^1§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§?y§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§^1§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§^1§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§?y§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§?=§();
         _loc6_.§?=§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}

package §^!2§
{
   import §!S§.b2Settings;
   import §!S§.b2internal;
   import §?!h§.b2Mat22;
   import §?!h§.b2Mat33;
   import §?!h§.b2Math;
   import §?!h§.b2Vec2;
   import §?!h§.b2Vec3;
   import §`]§.b2Body;
   import §`]§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §]!k§:b2Vec2 = new b2Vec2();
       
      
      private var §-h§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §;"0§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §3!%§:b2Vec3;
      
      private var §3§:Number;
      
      private var §<!7§:b2Mat33;
      
      private var §0,§:Number;
      
      private var §+'§:Boolean;
      
      private var §^"+§:Number;
      
      private var §-r§:Number;
      
      private var §9Z§:Boolean;
      
      private var §0!W§:Number;
      
      private var §7-§:Number;
      
      private var §2k§:Number;
      
      private var §77§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§-h§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§;"0§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§3!%§ = new b2Vec3();
         this.§<!7§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§9"%§);
         this.m_localAnchor2.SetV(param1.§^j§);
         this.§0!W§ = param1.§6!I§;
         this.§3!%§.§+Z§();
         this.§3§ = 0;
         this.§7-§ = param1.§@!m§;
         this.§2k§ = param1.§&I§;
         this.§^"+§ = param1.§^""§;
         this.§-r§ = param1.motorSpeed;
         this.§9Z§ = param1.§2!Z§;
         this.§+'§ = param1.§"z§;
         this.§77§ = b2internal::"S;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::5'.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?!&.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§3!%§.x,param1 * this.§3!%§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§3!%§.z;
      }
      
      public function §#4§() : Number
      {
         return b2internal::?!&.m_sweep.a - b2internal::5'.m_sweep.a - this.§0!W§;
      }
      
      public function §6"1§() : Number
      {
         return b2internal::?!&.m_angularVelocity - b2internal::5'.m_angularVelocity;
      }
      
      public function §7h§() : Boolean
      {
         return this.§9Z§;
      }
      
      public function §4T§(param1:Boolean) : void
      {
         this.§9Z§ = param1;
      }
      
      public function §5d§() : Number
      {
         return this.§7-§;
      }
      
      public function §"R§() : Number
      {
         return this.§2k§;
      }
      
      public function §8!R§(param1:Number, param2:Number) : void
      {
         this.§7-§ = param1;
         this.§2k§ = param2;
      }
      
      public function §1!t§() : Boolean
      {
         b2internal::5'.SetAwake(true);
         b2internal::?!&.SetAwake(true);
         return this.§+'§;
      }
      
      public function §6!g§(param1:Boolean) : void
      {
         this.§+'§ = param1;
      }
      
      public function §;d§(param1:Number) : void
      {
         b2internal::5'.SetAwake(true);
         b2internal::?!&.SetAwake(true);
         this.§-r§ = param1;
      }
      
      public function §'L§() : Number
      {
         return this.§-r§;
      }
      
      public function §<!k§(param1:Number) : void
      {
         this.§^"+§ = param1;
      }
      
      public function §?C§() : Number
      {
         return this.§^"+§;
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
         _loc2_ = b2internal::5';
         _loc3_ = b2internal::?!&;
         if(this.§+'§ || this.§9Z§)
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
         var _loc10_:Number = _loc2_.§+w§;
         var _loc11_:Number = _loc3_.§+w§;
         var _loc12_:Number = _loc2_.§-A§;
         var _loc13_:Number = _loc3_.§-A§;
         this.§<!7§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§<!7§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§<!7§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§<!7§.col1.y = this.§<!7§.col2.x;
         this.§<!7§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§<!7§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§<!7§.col1.z = this.§<!7§.col3.x;
         this.§<!7§.col2.z = this.§<!7§.col3.y;
         this.§<!7§.col3.z = _loc12_ + _loc13_;
         this.§0,§ = 1 / (_loc12_ + _loc13_);
         if(this.§+'§ == false)
         {
            this.§3§ = 0;
         }
         if(this.§9Z§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§0!W§;
            if(b2Math.§get §(this.§2k§ - this.§7-§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§77§ = b2internal::"!9;
            }
            else if(_loc14_ <= this.§7-§)
            {
               if(this.§77§ != b2internal::4d)
               {
                  this.§3!%§.z = 0;
               }
               this.§77§ = b2internal::4d;
            }
            else if(_loc14_ >= this.§2k§)
            {
               if(this.§77§ != b2internal::>!^)
               {
                  this.§3!%§.z = 0;
               }
               this.§77§ = b2internal::>!^;
            }
            else
            {
               this.§77§ = b2internal::"S;
               this.§3!%§.z = 0;
            }
         }
         else
         {
            this.§77§ = b2internal::"S;
         }
         if(param1.§@!-§)
         {
            this.§3!%§.x *= param1.§]"5§;
            this.§3!%§.y *= param1.§]"5§;
            this.§3§ *= param1.§]"5§;
            _loc15_ = this.§3!%§.x;
            _loc16_ = this.§3!%§.y;
            _loc2_.§#!S§.x -= _loc10_ * _loc15_;
            _loc2_.§#!S§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§3§ + this.§3!%§.z);
            _loc3_.§#!S§.x += _loc11_ * _loc15_;
            _loc3_.§#!S§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§3§ + this.§3!%§.z);
         }
         else
         {
            this.§3!%§.§+Z§();
            this.§3§ = 0;
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
         var _loc2_:b2Body = b2internal::5';
         var _loc3_:b2Body = b2internal::?!&;
         var _loc11_:b2Vec2 = _loc2_.§#!S§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§#!S§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§+w§;
         var _loc16_:Number = _loc3_.§+w§;
         var _loc17_:Number = _loc2_.§-A§;
         var _loc18_:Number = _loc3_.§-A§;
         if(this.§+'§ && this.§77§ != b2internal::"!9)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§-r§;
            _loc20_ = this.§0,§ * -_loc19_;
            _loc21_ = this.§3§;
            _loc22_ = param1.§7"2§ * this.§^"+§;
            this.§3§ = b2Math.§9!n§(this.§3§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§3§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§9Z§ && this.§77§ != b2internal::"S)
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
            this.§<!7§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§77§ == b2internal::"!9)
            {
               this.§3!%§.§'!K§(this.impulse3);
            }
            else if(this.§77§ == b2internal::4d)
            {
               if((_loc6_ = this.§3!%§.z + this.impulse3.z) < 0)
               {
                  this.§<!7§.Solve22(this.§;"0§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§;"0§.x;
                  this.impulse3.y = this.§;"0§.y;
                  this.impulse3.z = -this.§3!%§.z;
                  this.§3!%§.x += this.§;"0§.x;
                  this.§3!%§.y += this.§;"0§.y;
                  this.§3!%§.z = 0;
               }
            }
            else if(this.§77§ == b2internal::>!^)
            {
               if((_loc6_ = this.§3!%§.z + this.impulse3.z) > 0)
               {
                  this.§<!7§.Solve22(this.§;"0§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§;"0§.x;
                  this.impulse3.y = this.§;"0§.y;
                  this.impulse3.z = -this.§3!%§.z;
                  this.§3!%§.x += this.§;"0§.x;
                  this.§3!%§.y += this.§;"0§.y;
                  this.§3!%§.z = 0;
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
            this.§<!7§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§3!%§.x += this.impulse2.x;
            this.§3!%§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§#!S§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§#!S§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::5';
         var _loc6_:b2Body = b2internal::?!&;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§9Z§ && this.§77§ != b2internal::"S)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§0!W§;
            _loc26_ = 0;
            if(this.§77§ == b2internal::"!9)
            {
               _loc3_ = b2Math.§9!n§(_loc25_ - this.§7-§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§0,§ * _loc3_;
               _loc7_ = b2Math.§get §(_loc3_);
            }
            else if(this.§77§ == b2internal::4d)
            {
               _loc3_ = _loc25_ - this.§7-§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§9!n§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§0,§ * _loc3_;
            }
            else if(this.§77§ == b2internal::>!^)
            {
               _loc3_ = _loc25_ - this.§2k§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§9!n§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§0,§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§-A§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§-A§ * _loc26_;
            _loc5_.§^&§();
            _loc6_.§^&§();
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
         var _loc20_:Number = _loc5_.§+w§;
         var _loc21_:Number = _loc6_.§+w§;
         var _loc22_:Number = _loc5_.§-A§;
         var _loc23_:Number = _loc6_.§-A§;
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
         this.§-h§.§0!N§(this.K1);
         this.§-h§.§>""§(this.K2);
         this.§-h§.§>""§(this.K3);
         this.§-h§.§8",§(§]!k§,-_loc16_,-_loc17_);
         _loc10_ = §]!k§.x;
         _loc11_ = §]!k§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§+w§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§+w§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§-A§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§+w§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§+w§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§-A§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§^&§();
         _loc6_.§^&§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}

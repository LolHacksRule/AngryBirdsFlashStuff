package §!4§
{
   import §&x§.b2Body;
   import §&x§.b2TimeStep;
   import §0,§.b2Mat22;
   import §0,§.b2Mat33;
   import §0,§.b2Math;
   import §0,§.b2Vec2;
   import §0,§.b2Vec3;
   import §3o§.b2Settings;
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §92§:b2Vec2 = new b2Vec2();
       
      
      private var §3%§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §#V§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §8!§:b2Vec3;
      
      private var §?L§:Number;
      
      private var §+C§:b2Mat33;
      
      private var §5M§:Number;
      
      private var §1#§:Boolean;
      
      private var §3!4§:Number;
      
      private var §4!W§:Number;
      
      private var §9#§:Boolean;
      
      private var §"!7§:Number;
      
      private var §"!1§:Number;
      
      private var §-@§:Number;
      
      private var §%g§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§3%§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§#V§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§8!§ = new b2Vec3();
         this.§+C§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§3_§);
         this.m_localAnchor2.SetV(param1.§-<§);
         this.§"!7§ = param1.§57§;
         this.§8!§.§ !b§();
         this.§?L§ = 0;
         this.§"!1§ = param1.§ !9§;
         this.§-@§ = param1.§<6§;
         this.§3!4§ = param1.§ !m§;
         this.§4!W§ = param1.motorSpeed;
         this.§9#§ = param1.§'! §;
         this.§1#§ = param1.§'!+§;
         this.§%g§ = b2internal::1!`;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::=s.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8!§.x,param1 * this.§8!§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§8!§.z;
      }
      
      public function §`!E§() : Number
      {
         return b2internal::"!.m_sweep.a - b2internal::=s.m_sweep.a - this.§"!7§;
      }
      
      public function §1!F§() : Number
      {
         return b2internal::"!.m_angularVelocity - b2internal::=s.m_angularVelocity;
      }
      
      public function §4u§() : Boolean
      {
         return this.§9#§;
      }
      
      public function §,4§(param1:Boolean) : void
      {
         this.§9#§ = param1;
      }
      
      public function §?%§() : Number
      {
         return this.§"!1§;
      }
      
      public function §^H§() : Number
      {
         return this.§-@§;
      }
      
      public function §]!Z§(param1:Number, param2:Number) : void
      {
         this.§"!1§ = param1;
         this.§-@§ = param2;
      }
      
      public function §^!T§() : Boolean
      {
         b2internal::=s.SetAwake(true);
         b2internal::"!.SetAwake(true);
         return this.§1#§;
      }
      
      public function §<L§(param1:Boolean) : void
      {
         this.§1#§ = param1;
      }
      
      public function §5!+§(param1:Number) : void
      {
         b2internal::=s.SetAwake(true);
         b2internal::"!.SetAwake(true);
         this.§4!W§ = param1;
      }
      
      public function §6M§() : Number
      {
         return this.§4!W§;
      }
      
      public function §>7§(param1:Number) : void
      {
         this.§3!4§ = param1;
      }
      
      public function §^[§() : Number
      {
         return this.§3!4§;
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
         _loc2_ = b2internal::=s;
         _loc3_ = b2internal::"!;
         if(this.§1#§ || this.§9#§)
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
         var _loc10_:Number = _loc2_.§&l§;
         var _loc11_:Number = _loc3_.§&l§;
         var _loc12_:Number = _loc2_.§]!Q§;
         var _loc13_:Number = _loc3_.§]!Q§;
         this.§+C§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§+C§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§+C§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§+C§.col1.y = this.§+C§.col2.x;
         this.§+C§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§+C§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§+C§.col1.z = this.§+C§.col3.x;
         this.§+C§.col2.z = this.§+C§.col3.y;
         this.§+C§.col3.z = _loc12_ + _loc13_;
         this.§5M§ = 1 / (_loc12_ + _loc13_);
         if(this.§1#§ == false)
         {
            this.§?L§ = 0;
         }
         if(this.§9#§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§"!7§;
            if(b2Math.§`!9§(this.§-@§ - this.§"!1§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§%g§ = b2internal::<>;
            }
            else if(_loc14_ <= this.§"!1§)
            {
               if(this.§%g§ != b2internal::[!<)
               {
                  this.§8!§.z = 0;
               }
               this.§%g§ = b2internal::[!<;
            }
            else if(_loc14_ >= this.§-@§)
            {
               if(this.§%g§ != b2internal::6!B)
               {
                  this.§8!§.z = 0;
               }
               this.§%g§ = b2internal::6!B;
            }
            else
            {
               this.§%g§ = b2internal::1!`;
               this.§8!§.z = 0;
            }
         }
         else
         {
            this.§%g§ = b2internal::1!`;
         }
         if(param1.§8!&§)
         {
            this.§8!§.x *= param1.§,!m§;
            this.§8!§.y *= param1.§,!m§;
            this.§?L§ *= param1.§,!m§;
            _loc15_ = this.§8!§.x;
            _loc16_ = this.§8!§.y;
            _loc2_.§"M§.x -= _loc10_ * _loc15_;
            _loc2_.§"M§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§?L§ + this.§8!§.z);
            _loc3_.§"M§.x += _loc11_ * _loc15_;
            _loc3_.§"M§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§?L§ + this.§8!§.z);
         }
         else
         {
            this.§8!§.§ !b§();
            this.§?L§ = 0;
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
         var _loc2_:b2Body = b2internal::=s;
         var _loc3_:b2Body = b2internal::"!;
         var _loc11_:b2Vec2 = _loc2_.§"M§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§"M§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§&l§;
         var _loc16_:Number = _loc3_.§&l§;
         var _loc17_:Number = _loc2_.§]!Q§;
         var _loc18_:Number = _loc3_.§]!Q§;
         if(this.§1#§ && this.§%g§ != b2internal::<>)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§4!W§;
            _loc20_ = this.§5M§ * -_loc19_;
            _loc21_ = this.§?L§;
            _loc22_ = param1.§"!?§ * this.§3!4§;
            this.§?L§ = b2Math.§@!-§(this.§?L§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§?L§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§9#§ && this.§%g§ != b2internal::1!`)
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
            this.§+C§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§%g§ == b2internal::<>)
            {
               this.§8!§.§;3§(this.impulse3);
            }
            else if(this.§%g§ == b2internal::[!<)
            {
               if((_loc6_ = this.§8!§.z + this.impulse3.z) < 0)
               {
                  this.§+C§.Solve22(this.§#V§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§#V§.x;
                  this.impulse3.y = this.§#V§.y;
                  this.impulse3.z = -this.§8!§.z;
                  this.§8!§.x += this.§#V§.x;
                  this.§8!§.y += this.§#V§.y;
                  this.§8!§.z = 0;
               }
            }
            else if(this.§%g§ == b2internal::6!B)
            {
               if((_loc6_ = this.§8!§.z + this.impulse3.z) > 0)
               {
                  this.§+C§.Solve22(this.§#V§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§#V§.x;
                  this.impulse3.y = this.§#V§.y;
                  this.impulse3.z = -this.§8!§.z;
                  this.§8!§.x += this.§#V§.x;
                  this.§8!§.y += this.§#V§.y;
                  this.§8!§.z = 0;
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
            this.§+C§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§8!§.x += this.impulse2.x;
            this.§8!§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§"M§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§"M§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::=s;
         var _loc6_:b2Body = b2internal::"!;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§9#§ && this.§%g§ != b2internal::1!`)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§"!7§;
            _loc26_ = 0;
            if(this.§%g§ == b2internal::<>)
            {
               _loc3_ = b2Math.§@!-§(_loc25_ - this.§"!1§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§5M§ * _loc3_;
               _loc7_ = b2Math.§`!9§(_loc3_);
            }
            else if(this.§%g§ == b2internal::[!<)
            {
               _loc3_ = _loc25_ - this.§"!1§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§@!-§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§5M§ * _loc3_;
            }
            else if(this.§%g§ == b2internal::6!B)
            {
               _loc3_ = _loc25_ - this.§-@§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§@!-§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§5M§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§]!Q§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§]!Q§ * _loc26_;
            _loc5_.§4l§();
            _loc6_.§4l§();
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
         var _loc20_:Number = _loc5_.§&l§;
         var _loc21_:Number = _loc6_.§&l§;
         var _loc22_:Number = _loc5_.§]!Q§;
         var _loc23_:Number = _loc6_.§]!Q§;
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
         this.§3%§.§42§(this.K1);
         this.§3%§.§7s§(this.K2);
         this.§3%§.§7s§(this.K3);
         this.§3%§.§'s§(§92§,-_loc16_,-_loc17_);
         _loc10_ = §92§.x;
         _loc11_ = §92§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§&l§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§&l§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§]!Q§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§&l§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§&l§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§]!Q§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§4l§();
         _loc6_.§4l§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}

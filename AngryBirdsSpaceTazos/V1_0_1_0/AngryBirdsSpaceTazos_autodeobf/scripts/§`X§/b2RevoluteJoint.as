package §`X§
{
   import §'!&§.b2Body;
   import §'!&§.b2TimeStep;
   import §9t§.b2Mat22;
   import §9t§.b2Mat33;
   import §9t§.b2Math;
   import §9t§.b2Vec2;
   import §9t§.b2Vec3;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §9m§:b2Vec2 = new b2Vec2();
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §-!m§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §0"3§:b2Vec3;
      
      private var §9H§:Number;
      
      private var §""$§:b2Mat33;
      
      private var §!!#§:Number;
      
      private var §5!z§:Boolean;
      
      private var §4'§:Number;
      
      private var §7B§:Number;
      
      private var §]U§:Boolean;
      
      private var §&d§:Number;
      
      private var §6!a§:Number;
      
      private var §7!Z§:Number;
      
      private var §?§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§-!m§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§0"3§ = new b2Vec3();
         this.§""$§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§!8§);
         this.m_localAnchor2.SetV(param1.§@W§);
         this.§&d§ = param1.§+!L§;
         this.§0"3§.§@!d§();
         this.§9H§ = 0;
         this.§6!a§ = param1.§'!P§;
         this.§7!Z§ = param1.§ !n§;
         this.§4'§ = param1.§?u§;
         this.§7B§ = param1.motorSpeed;
         this.§]U§ = param1.§+"!§;
         this.§5!z§ = param1.§+!b§;
         this.§?§ = b2internal::[!_;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::<!1.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?H.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§0"3§.x,param1 * this.§0"3§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§0"3§.z;
      }
      
      public function §=E§() : Number
      {
         return b2internal::?H.m_sweep.a - b2internal::<!1.m_sweep.a - this.§&d§;
      }
      
      public function §1! §() : Number
      {
         return b2internal::?H.m_angularVelocity - b2internal::<!1.m_angularVelocity;
      }
      
      public function §5C§() : Boolean
      {
         return this.§]U§;
      }
      
      public function §;F§(param1:Boolean) : void
      {
         this.§]U§ = param1;
      }
      
      public function §8,§() : Number
      {
         return this.§6!a§;
      }
      
      public function §`";§() : Number
      {
         return this.§7!Z§;
      }
      
      public function §&!7§(param1:Number, param2:Number) : void
      {
         this.§6!a§ = param1;
         this.§7!Z§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§5!z§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::<!1.SetAwake(true);
         b2internal::?H.SetAwake(true);
         this.§5!z§ = param1;
      }
      
      public function §+K§(param1:Number) : void
      {
         b2internal::<!1.SetAwake(true);
         b2internal::?H.SetAwake(true);
         this.§7B§ = param1;
      }
      
      public function §2"5§() : Number
      {
         return this.§7B§;
      }
      
      public function §7!]§(param1:Number) : void
      {
         this.§4'§ = param1;
      }
      
      public function §5!p§() : Number
      {
         return this.§4'§;
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
         _loc2_ = b2internal::<!1;
         _loc3_ = b2internal::?H;
         if(this.§5!z§ || this.§]U§)
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
         var _loc10_:Number = _loc2_.§6!W§;
         var _loc11_:Number = _loc3_.§6!W§;
         var _loc12_:Number = _loc2_.§<!%§;
         var _loc13_:Number = _loc3_.§<!%§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§""$§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§""$§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§""$§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§""$§.col1.y = this.§""$§.col2.x;
         this.§""$§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§""$§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§""$§.col1.z = this.§""$§.col3.x;
         this.§""$§.col2.z = this.§""$§.col3.y;
         this.§""$§.col3.z = _loc12_ + _loc13_;
         this.§!!#§ = 1 / (_loc12_ + _loc13_);
         if(this.§5!z§ == false || _loc14_)
         {
            this.§9H§ = 0;
         }
         if(this.§]U§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§&d§;
            if(b2Math.§<D§(this.§7!Z§ - this.§6!a§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§?§ = b2internal::<4;
            }
            else if(_loc15_ <= this.§6!a§)
            {
               if(this.§?§ != b2internal::6!S)
               {
                  this.§0"3§.z = 0;
               }
               this.§?§ = b2internal::6!S;
            }
            else if(_loc15_ >= this.§7!Z§)
            {
               if(this.§?§ != b2internal::]!=)
               {
                  this.§0"3§.z = 0;
               }
               this.§?§ = b2internal::]!=;
            }
            else
            {
               this.§?§ = b2internal::[!_;
               this.§0"3§.z = 0;
            }
         }
         else
         {
            this.§?§ = b2internal::[!_;
         }
         if(param1.§`m§)
         {
            this.§0"3§.x *= param1.§-I§;
            this.§0"3§.y *= param1.§-I§;
            this.§9H§ *= param1.§-I§;
            _loc16_ = this.§0"3§.x;
            _loc17_ = this.§0"3§.y;
            _loc2_.§?o§.x -= _loc10_ * _loc16_;
            _loc2_.§?o§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§9H§ + this.§0"3§.z);
            _loc3_.§?o§.x += _loc11_ * _loc16_;
            _loc3_.§?o§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§9H§ + this.§0"3§.z);
         }
         else
         {
            this.§0"3§.§@!d§();
            this.§9H§ = 0;
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
         var _loc2_:b2Body = b2internal::<!1;
         var _loc3_:b2Body = b2internal::?H;
         var _loc11_:b2Vec2 = _loc2_.§?o§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§?o§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§6!W§;
         var _loc16_:Number = _loc3_.§6!W§;
         var _loc17_:Number = _loc2_.§<!%§;
         var _loc18_:Number = _loc3_.§<!%§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§5!z§ && this.§?§ != b2internal::<4 && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§7B§;
            _loc21_ = this.§!!#§ * -_loc20_;
            _loc22_ = this.§9H§;
            _loc23_ = param1.§2^§ * this.§4'§;
            this.§9H§ = b2Math.§`J§(this.§9H§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§9H§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§]U§ && this.§?§ != b2internal::[!_ && !_loc19_)
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
            this.§""$§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§?§ == b2internal::<4)
            {
               this.§0"3§.§]!H§(this.impulse3);
            }
            else if(this.§?§ == b2internal::6!S)
            {
               if((_loc6_ = this.§0"3§.z + this.impulse3.z) < 0)
               {
                  this.§""$§.Solve22(this.§-!m§,-_loc24_ + this.§0"3§.z * this.§""$§.col3.x,-_loc25_ + this.§0"3§.z * this.§""$§.col3.y);
                  this.impulse3.x = this.§-!m§.x;
                  this.impulse3.y = this.§-!m§.y;
                  this.impulse3.z = -this.§0"3§.z;
                  this.§0"3§.x += this.§-!m§.x;
                  this.§0"3§.y += this.§-!m§.y;
                  this.§0"3§.z = 0;
               }
               else
               {
                  this.§0"3§.x += this.impulse3.x;
                  this.§0"3§.y += this.impulse3.y;
                  this.§0"3§.z += this.impulse3.z;
               }
            }
            else if(this.§?§ == b2internal::]!=)
            {
               if((_loc6_ = this.§0"3§.z + this.impulse3.z) > 0)
               {
                  this.§""$§.Solve22(this.§-!m§,-_loc24_ + this.§0"3§.z * this.§""$§.col3.x,-_loc25_ + this.§0"3§.z * this.§""$§.col3.y);
                  this.impulse3.x = this.§-!m§.x;
                  this.impulse3.y = this.§-!m§.y;
                  this.impulse3.z = -this.§0"3§.z;
                  this.§0"3§.x += this.§-!m§.x;
                  this.§0"3§.y += this.§-!m§.y;
                  this.§0"3§.z = 0;
               }
               else
               {
                  this.§0"3§.x += this.impulse3.x;
                  this.§0"3§.y += this.impulse3.y;
                  this.§0"3§.z += this.impulse3.z;
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
            this.§""$§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§0"3§.x += this.impulse2.x;
            this.§0"3§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§?o§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§?o§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::<!1;
         var _loc6_:b2Body = b2internal::?H;
         var _loc7_:* = b2internal::-!J + b2internal::6"2 == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§]U§ && this.§?§ != b2internal::[!_ && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§&d§;
            _loc27_ = 0;
            if(this.§?§ == b2internal::<4)
            {
               _loc3_ = b2Math.§`J§(_loc26_ - this.§6!a§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§!!#§ * _loc3_;
               _loc8_ = b2Math.§<D§(_loc3_);
            }
            else if(this.§?§ == b2internal::6!S)
            {
               _loc3_ = _loc26_ - this.§6!a§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§`J§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§!!#§ * _loc3_;
            }
            else if(this.§?§ == b2internal::]!=)
            {
               _loc3_ = _loc26_ - this.§7!Z§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§`J§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§!!#§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§<!%§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§<!%§ * _loc27_;
            _loc5_.§6!+§();
            _loc6_.§6!+§();
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
         var _loc21_:Number = _loc5_.§6!W§;
         var _loc22_:Number = _loc6_.§6!W§;
         var _loc23_:Number = _loc5_.§<!%§;
         var _loc24_:Number = _loc6_.§<!%§;
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
         this.K.§?"4§(this.K1);
         this.K.§@3§(this.K2);
         this.K.§@3§(this.K3);
         this.K.§3!N§(§9m§,-_loc17_,-_loc18_);
         _loc11_ = §9m§.x;
         _loc12_ = §9m§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§6!W§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§6!W§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§<!%§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§6!W§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§6!W§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§<!%§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§6!+§();
         _loc6_.§6!+§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}

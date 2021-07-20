package §7!3§
{
   import §+d§.b2Body;
   import §+d§.b2TimeStep;
   import §6%§.b2Settings;
   import §6%§.b2internal;
   import §`!^§.b2Mat22;
   import §`!^§.b2Mat33;
   import §`!^§.b2Math;
   import §`!^§.b2Vec2;
   import §`!^§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §7!+§:b2Vec2 = new b2Vec2();
       
      
      private var §,x§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §<!d§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §[H§:b2Vec3;
      
      private var §@"§:Number;
      
      private var §3!@§:b2Mat33;
      
      private var §0`§:Number;
      
      private var § !K§:Boolean;
      
      private var §%!Z§:Number;
      
      private var §#d§:Number;
      
      private var §]<§:Boolean;
      
      private var §3#§:Number;
      
      private var §%r§:Number;
      
      private var §9!g§:Number;
      
      private var §2!a§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§,x§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§<!d§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§[H§ = new b2Vec3();
         this.§3!@§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§ 3§);
         this.m_localAnchor2.SetV(param1.§&!-§);
         this.§3#§ = param1.§]]§;
         this.§[H§.§8c§();
         this.§@"§ = 0;
         this.§%r§ = param1.§82§;
         this.§9!g§ = param1.§@!D§;
         this.§%!Z§ = param1.§ i§;
         this.§#d§ = param1.motorSpeed;
         this.§]<§ = param1.§5;§;
         this.§ !K§ = param1.§`[§;
         this.§2!a§ = b2internal::2!h;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::5!R.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::>D.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[H§.x,param1 * this.§[H§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§[H§.z;
      }
      
      public function §>j§() : Number
      {
         return b2internal::>D.m_sweep.a - b2internal::5!R.m_sweep.a - this.§3#§;
      }
      
      public function §?!6§() : Number
      {
         return b2internal::>D.m_angularVelocity - b2internal::5!R.m_angularVelocity;
      }
      
      public function §!!c§() : Boolean
      {
         return this.§]<§;
      }
      
      public function §-g§(param1:Boolean) : void
      {
         this.§]<§ = param1;
      }
      
      public function §3A§() : Number
      {
         return this.§%r§;
      }
      
      public function §?!T§() : Number
      {
         return this.§9!g§;
      }
      
      public function §+!$§(param1:Number, param2:Number) : void
      {
         this.§%r§ = param1;
         this.§9!g§ = param2;
      }
      
      public function §null§() : Boolean
      {
         b2internal::5!R.SetAwake(true);
         b2internal::>D.SetAwake(true);
         return this.§ !K§;
      }
      
      public function §7]§(param1:Boolean) : void
      {
         this.§ !K§ = param1;
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         b2internal::5!R.SetAwake(true);
         b2internal::>D.SetAwake(true);
         this.§#d§ = param1;
      }
      
      public function §?I§() : Number
      {
         return this.§#d§;
      }
      
      public function §,O§(param1:Number) : void
      {
         this.§%!Z§ = param1;
      }
      
      public function §`!&§() : Number
      {
         return this.§%!Z§;
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
         _loc2_ = b2internal::5!R;
         _loc3_ = b2internal::>D;
         if(this.§ !K§ || this.§]<§)
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
         var _loc10_:Number = _loc2_.§@h§;
         var _loc11_:Number = _loc3_.§@h§;
         var _loc12_:Number = _loc2_.§8t§;
         var _loc13_:Number = _loc3_.§8t§;
         this.§3!@§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§3!@§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§3!@§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§3!@§.col1.y = this.§3!@§.col2.x;
         this.§3!@§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§3!@§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§3!@§.col1.z = this.§3!@§.col3.x;
         this.§3!@§.col2.z = this.§3!@§.col3.y;
         this.§3!@§.col3.z = _loc12_ + _loc13_;
         this.§0`§ = 1 / (_loc12_ + _loc13_);
         if(this.§ !K§ == false)
         {
            this.§@"§ = 0;
         }
         if(this.§]<§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§3#§;
            if(b2Math.§6!L§(this.§9!g§ - this.§%r§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§2!a§ = b2internal::55;
            }
            else if(_loc14_ <= this.§%r§)
            {
               if(this.§2!a§ != b2internal::4;)
               {
                  this.§[H§.z = 0;
               }
               this.§2!a§ = b2internal::4;;
            }
            else if(_loc14_ >= this.§9!g§)
            {
               if(this.§2!a§ != b2internal::^!_)
               {
                  this.§[H§.z = 0;
               }
               this.§2!a§ = b2internal::^!_;
            }
            else
            {
               this.§2!a§ = b2internal::2!h;
               this.§[H§.z = 0;
            }
         }
         else
         {
            this.§2!a§ = b2internal::2!h;
         }
         if(param1.§`!;§)
         {
            this.§[H§.x *= param1.§"§;
            this.§[H§.y *= param1.§"§;
            this.§@"§ *= param1.§"§;
            _loc15_ = this.§[H§.x;
            _loc16_ = this.§[H§.y;
            _loc2_.§^!S§.x -= _loc10_ * _loc15_;
            _loc2_.§^!S§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§@"§ + this.§[H§.z);
            _loc3_.§^!S§.x += _loc11_ * _loc15_;
            _loc3_.§^!S§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§@"§ + this.§[H§.z);
         }
         else
         {
            this.§[H§.§8c§();
            this.§@"§ = 0;
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
         var _loc2_:b2Body = b2internal::5!R;
         var _loc3_:b2Body = b2internal::>D;
         var _loc11_:b2Vec2 = _loc2_.§^!S§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§^!S§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§@h§;
         var _loc16_:Number = _loc3_.§@h§;
         var _loc17_:Number = _loc2_.§8t§;
         var _loc18_:Number = _loc3_.§8t§;
         if(this.§ !K§ && this.§2!a§ != b2internal::55)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§#d§;
            _loc20_ = this.§0`§ * -_loc19_;
            _loc21_ = this.§@"§;
            _loc22_ = param1.§,>§ * this.§%!Z§;
            this.§@"§ = b2Math.§6m§(this.§@"§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§@"§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§]<§ && this.§2!a§ != b2internal::2!h)
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
            this.§3!@§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§2!a§ == b2internal::55)
            {
               this.§[H§.§5>§(this.impulse3);
            }
            else if(this.§2!a§ == b2internal::4;)
            {
               if((_loc6_ = this.§[H§.z + this.impulse3.z) < 0)
               {
                  this.§3!@§.Solve22(this.§<!d§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§<!d§.x;
                  this.impulse3.y = this.§<!d§.y;
                  this.impulse3.z = -this.§[H§.z;
                  this.§[H§.x += this.§<!d§.x;
                  this.§[H§.y += this.§<!d§.y;
                  this.§[H§.z = 0;
               }
            }
            else if(this.§2!a§ == b2internal::^!_)
            {
               if((_loc6_ = this.§[H§.z + this.impulse3.z) > 0)
               {
                  this.§3!@§.Solve22(this.§<!d§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§<!d§.x;
                  this.impulse3.y = this.§<!d§.y;
                  this.impulse3.z = -this.§[H§.z;
                  this.§[H§.x += this.§<!d§.x;
                  this.§[H§.y += this.§<!d§.y;
                  this.§[H§.z = 0;
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
            this.§3!@§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§[H§.x += this.impulse2.x;
            this.§[H§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§^!S§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§^!S§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::5!R;
         var _loc6_:b2Body = b2internal::>D;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§]<§ && this.§2!a§ != b2internal::2!h)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§3#§;
            _loc26_ = 0;
            if(this.§2!a§ == b2internal::55)
            {
               _loc3_ = b2Math.§6m§(_loc25_ - this.§%r§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§0`§ * _loc3_;
               _loc7_ = b2Math.§6!L§(_loc3_);
            }
            else if(this.§2!a§ == b2internal::4;)
            {
               _loc3_ = _loc25_ - this.§%r§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§6m§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§0`§ * _loc3_;
            }
            else if(this.§2!a§ == b2internal::^!_)
            {
               _loc3_ = _loc25_ - this.§9!g§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§6m§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§0`§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§8t§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§8t§ * _loc26_;
            _loc5_.§%t§();
            _loc6_.§%t§();
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
         var _loc20_:Number = _loc5_.§@h§;
         var _loc21_:Number = _loc6_.§@h§;
         var _loc22_:Number = _loc5_.§8t§;
         var _loc23_:Number = _loc6_.§8t§;
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
         this.§,x§.§5u§(this.K1);
         this.§,x§.§?-§(this.K2);
         this.§,x§.§?-§(this.K3);
         this.§,x§.§&! §(§7!+§,-_loc16_,-_loc17_);
         _loc10_ = §7!+§.x;
         _loc11_ = §7!+§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§@h§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§@h§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§8t§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§@h§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§@h§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§8t§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§%t§();
         _loc6_.§%t§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}

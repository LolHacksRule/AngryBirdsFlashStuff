package §,H§
{
   import §'I§.b2Settings;
   import §'I§.b2internal;
   import §9!Z§.b2Body;
   import §9!Z§.b2TimeStep;
   import §?"'§.b2Mat22;
   import §?"'§.b2Mat33;
   import §?"'§.b2Math;
   import §?"'§.b2Vec2;
   import §?"'§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §6,§:b2Vec2 = new b2Vec2();
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var § e§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §9!z§:b2Vec3;
      
      private var §!<§:Number;
      
      private var §<Q§:b2Mat33;
      
      private var §9!t§:Number;
      
      private var §>!J§:Boolean;
      
      private var §%!R§:Number;
      
      private var § 6§:Number;
      
      private var §0Y§:Boolean;
      
      private var §#U§:Number;
      
      private var §null§:Number;
      
      private var §'!3§:Number;
      
      private var §'!m§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§ e§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§9!z§ = new b2Vec3();
         this.§<Q§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§'&§);
         this.m_localAnchor2.SetV(param1.§%"0§);
         this.§#U§ = param1.§=0§;
         this.§9!z§.§6!c§();
         this.§!<§ = 0;
         this.§null§ = param1.§1!]§;
         this.§'!3§ = param1.§^p§;
         this.§%!R§ = param1.§#3§;
         this.§ 6§ = param1.motorSpeed;
         this.§0Y§ = param1.§?r§;
         this.§>!J§ = param1.§<D§;
         this.§'!m§ = b2internal::6"%;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3v.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;Q.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§9!z§.x,param1 * this.§9!z§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§9!z§.z;
      }
      
      public function §=!;§() : Number
      {
         return b2internal::;Q.m_sweep.a - b2internal::3v.m_sweep.a - this.§#U§;
      }
      
      public function §0>§() : Number
      {
         return b2internal::;Q.m_angularVelocity - b2internal::3v.m_angularVelocity;
      }
      
      public function §0!V§() : Boolean
      {
         return this.§0Y§;
      }
      
      public function §!W§(param1:Boolean) : void
      {
         this.§0Y§ = param1;
      }
      
      public function §;V§() : Number
      {
         return this.§null§;
      }
      
      public function §1"3§() : Number
      {
         return this.§'!3§;
      }
      
      public function §%!>§(param1:Number, param2:Number) : void
      {
         this.§null§ = param1;
         this.§'!3§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§>!J§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::3v.SetAwake(true);
         b2internal::;Q.SetAwake(true);
         this.§>!J§ = param1;
      }
      
      public function §;o§(param1:Number) : void
      {
         b2internal::3v.SetAwake(true);
         b2internal::;Q.SetAwake(true);
         this.§ 6§ = param1;
      }
      
      public function §,!s§() : Number
      {
         return this.§ 6§;
      }
      
      public function §5!>§(param1:Number) : void
      {
         this.§%!R§ = param1;
      }
      
      public function §;!x§() : Number
      {
         return this.§%!R§;
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
         _loc2_ = b2internal::3v;
         _loc3_ = b2internal::;Q;
         if(this.§>!J§ || this.§0Y§)
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
         var _loc10_:Number = _loc2_.§;!R§;
         var _loc11_:Number = _loc3_.§;!R§;
         var _loc12_:Number = _loc2_.§1!k§;
         var _loc13_:Number = _loc3_.§1!k§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§<Q§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§<Q§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§<Q§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§<Q§.col1.y = this.§<Q§.col2.x;
         this.§<Q§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§<Q§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§<Q§.col1.z = this.§<Q§.col3.x;
         this.§<Q§.col2.z = this.§<Q§.col3.y;
         this.§<Q§.col3.z = _loc12_ + _loc13_;
         this.§9!t§ = 1 / (_loc12_ + _loc13_);
         if(this.§>!J§ == false || _loc14_)
         {
            this.§!<§ = 0;
         }
         if(this.§0Y§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§#U§;
            if(b2Math.§<#§(this.§'!3§ - this.§null§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§'!m§ = b2internal::8!4;
            }
            else if(_loc15_ <= this.§null§)
            {
               if(this.§'!m§ != b2internal::44)
               {
                  this.§9!z§.z = 0;
               }
               this.§'!m§ = b2internal::44;
            }
            else if(_loc15_ >= this.§'!3§)
            {
               if(this.§'!m§ != b2internal::<B)
               {
                  this.§9!z§.z = 0;
               }
               this.§'!m§ = b2internal::<B;
            }
            else
            {
               this.§'!m§ = b2internal::6"%;
               this.§9!z§.z = 0;
            }
         }
         else
         {
            this.§'!m§ = b2internal::6"%;
         }
         if(param1.§#=§)
         {
            this.§9!z§.x *= param1.§6!'§;
            this.§9!z§.y *= param1.§6!'§;
            this.§!<§ *= param1.§6!'§;
            _loc16_ = this.§9!z§.x;
            _loc17_ = this.§9!z§.y;
            _loc2_.§ Y§.x -= _loc10_ * _loc16_;
            _loc2_.§ Y§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§!<§ + this.§9!z§.z);
            _loc3_.§ Y§.x += _loc11_ * _loc16_;
            _loc3_.§ Y§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§!<§ + this.§9!z§.z);
         }
         else
         {
            this.§9!z§.§6!c§();
            this.§!<§ = 0;
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
         var _loc2_:b2Body = b2internal::3v;
         var _loc3_:b2Body = b2internal::;Q;
         var _loc11_:b2Vec2 = _loc2_.§ Y§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§ Y§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§;!R§;
         var _loc16_:Number = _loc3_.§;!R§;
         var _loc17_:Number = _loc2_.§1!k§;
         var _loc18_:Number = _loc3_.§1!k§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§>!J§ && this.§'!m§ != b2internal::8!4 && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§ 6§;
            _loc21_ = this.§9!t§ * -_loc20_;
            _loc22_ = this.§!<§;
            _loc23_ = param1.§>!`§ * this.§%!R§;
            this.§!<§ = b2Math.§8M§(this.§!<§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§!<§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§0Y§ && this.§'!m§ != b2internal::6"% && !_loc19_)
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
            this.§<Q§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§'!m§ == b2internal::8!4)
            {
               this.§9!z§.§package§(this.impulse3);
            }
            else if(this.§'!m§ == b2internal::44)
            {
               if((_loc6_ = this.§9!z§.z + this.impulse3.z) < 0)
               {
                  this.§<Q§.Solve22(this.§ e§,-_loc24_ + this.§9!z§.z * this.§<Q§.col3.x,-_loc25_ + this.§9!z§.z * this.§<Q§.col3.y);
                  this.impulse3.x = this.§ e§.x;
                  this.impulse3.y = this.§ e§.y;
                  this.impulse3.z = -this.§9!z§.z;
                  this.§9!z§.x += this.§ e§.x;
                  this.§9!z§.y += this.§ e§.y;
                  this.§9!z§.z = 0;
               }
               else
               {
                  this.§9!z§.x += this.impulse3.x;
                  this.§9!z§.y += this.impulse3.y;
                  this.§9!z§.z += this.impulse3.z;
               }
            }
            else if(this.§'!m§ == b2internal::<B)
            {
               if((_loc6_ = this.§9!z§.z + this.impulse3.z) > 0)
               {
                  this.§<Q§.Solve22(this.§ e§,-_loc24_ + this.§9!z§.z * this.§<Q§.col3.x,-_loc25_ + this.§9!z§.z * this.§<Q§.col3.y);
                  this.impulse3.x = this.§ e§.x;
                  this.impulse3.y = this.§ e§.y;
                  this.impulse3.z = -this.§9!z§.z;
                  this.§9!z§.x += this.§ e§.x;
                  this.§9!z§.y += this.§ e§.y;
                  this.§9!z§.z = 0;
               }
               else
               {
                  this.§9!z§.x += this.impulse3.x;
                  this.§9!z§.y += this.impulse3.y;
                  this.§9!z§.z += this.impulse3.z;
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
            this.§<Q§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§9!z§.x += this.impulse2.x;
            this.§9!z§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§ Y§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§ Y§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::3v;
         var _loc6_:b2Body = b2internal::;Q;
         var _loc7_:* = b2internal::4!A + b2internal::+!_ == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§0Y§ && this.§'!m§ != b2internal::6"% && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§#U§;
            _loc27_ = 0;
            if(this.§'!m§ == b2internal::8!4)
            {
               _loc3_ = b2Math.§8M§(_loc26_ - this.§null§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§9!t§ * _loc3_;
               _loc8_ = b2Math.§<#§(_loc3_);
            }
            else if(this.§'!m§ == b2internal::44)
            {
               _loc3_ = _loc26_ - this.§null§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§8M§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§9!t§ * _loc3_;
            }
            else if(this.§'!m§ == b2internal::<B)
            {
               _loc3_ = _loc26_ - this.§'!3§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§8M§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§9!t§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§1!k§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§1!k§ * _loc27_;
            _loc5_.§>#§();
            _loc6_.§>#§();
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
         var _loc21_:Number = _loc5_.§;!R§;
         var _loc22_:Number = _loc6_.§;!R§;
         var _loc23_:Number = _loc5_.§1!k§;
         var _loc24_:Number = _loc6_.§1!k§;
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
         this.K.§7!O§(this.K1);
         this.K.§@!O§(this.K2);
         this.K.§@!O§(this.K3);
         this.K.§=L§(§6,§,-_loc17_,-_loc18_);
         _loc11_ = §6,§.x;
         _loc12_ = §6,§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§;!R§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§;!R§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§1!k§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§;!R§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§;!R§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§1!k§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§>#§();
         _loc6_.§>#§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}

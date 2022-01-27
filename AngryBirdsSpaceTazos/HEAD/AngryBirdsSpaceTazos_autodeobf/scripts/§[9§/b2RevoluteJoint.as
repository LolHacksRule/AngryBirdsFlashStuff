package §[9§
{
   import §'!a§.b2Settings;
   import §'!a§.b2internal;
   import §6!n§.b2Mat22;
   import §6!n§.b2Mat33;
   import §6!n§.b2Math;
   import §6!n§.b2Vec2;
   import §6!n§.b2Vec3;
   import §9!K§.b2Body;
   import §9!K§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §8s§:b2Vec2 = new b2Vec2();
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §>0§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §^i§:b2Vec3;
      
      private var §9,§:Number;
      
      private var §7g§:b2Mat33;
      
      private var §]c§:Number;
      
      private var §3"-§:Boolean;
      
      private var §<!U§:Number;
      
      private var §2!q§:Number;
      
      private var §]!D§:Boolean;
      
      private var §7!v§:Number;
      
      private var §!!@§:Number;
      
      private var §5!e§:Number;
      
      private var §`R§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§>0§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§^i§ = new b2Vec3();
         this.§7g§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§8U§);
         this.m_localAnchor2.SetV(param1.§#i§);
         this.§7!v§ = param1.§%"E§;
         this.§^i§.§58§();
         this.§9,§ = 0;
         this.§!!@§ = param1.§@"A§;
         this.§5!e§ = param1.§'!T§;
         this.§<!U§ = param1.§=H§;
         this.§2!q§ = param1.motorSpeed;
         this.§]!D§ = param1.§#!Q§;
         this.§3"-§ = param1.§`!3§;
         this.§`R§ = b2internal::?!k;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::[F.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::,!Q.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§^i§.x,param1 * this.§^i§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§^i§.z;
      }
      
      public function § !'§() : Number
      {
         return b2internal::,!Q.m_sweep.a - b2internal::[F.m_sweep.a - this.§7!v§;
      }
      
      public function §3!X§() : Number
      {
         return b2internal::,!Q.m_angularVelocity - b2internal::[F.m_angularVelocity;
      }
      
      public function §7"0§() : Boolean
      {
         return this.§]!D§;
      }
      
      public function §4!_§(param1:Boolean) : void
      {
         this.§]!D§ = param1;
      }
      
      public function §5"+§() : Number
      {
         return this.§!!@§;
      }
      
      public function §5!H§() : Number
      {
         return this.§5!e§;
      }
      
      public function §>I§(param1:Number, param2:Number) : void
      {
         this.§!!@§ = param1;
         this.§5!e§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§3"-§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::[F.SetAwake(true);
         b2internal::,!Q.SetAwake(true);
         this.§3"-§ = param1;
      }
      
      public function §1"#§(param1:Number) : void
      {
         b2internal::[F.SetAwake(true);
         b2internal::,!Q.SetAwake(true);
         this.§2!q§ = param1;
      }
      
      public function §?!7§() : Number
      {
         return this.§2!q§;
      }
      
      public function §9!O§(param1:Number) : void
      {
         this.§<!U§ = param1;
      }
      
      public function §`!B§() : Number
      {
         return this.§<!U§;
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
         _loc2_ = b2internal::[F;
         _loc3_ = b2internal::,!Q;
         if(this.§3"-§ || this.§]!D§)
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
         var _loc10_:Number = _loc2_.§var §;
         var _loc11_:Number = _loc3_.§var §;
         var _loc12_:Number = _loc2_.§,"!§;
         var _loc13_:Number = _loc3_.§,"!§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§7g§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§7g§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§7g§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§7g§.col1.y = this.§7g§.col2.x;
         this.§7g§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§7g§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§7g§.col1.z = this.§7g§.col3.x;
         this.§7g§.col2.z = this.§7g§.col3.y;
         this.§7g§.col3.z = _loc12_ + _loc13_;
         this.§]c§ = 1 / (_loc12_ + _loc13_);
         if(this.§3"-§ == false || _loc14_)
         {
            this.§9,§ = 0;
         }
         if(this.§]!D§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§7!v§;
            if(b2Math.§<W§(this.§5!e§ - this.§!!@§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§`R§ = b2internal::^!K;
            }
            else if(_loc15_ <= this.§!!@§)
            {
               if(this.§`R§ != b2internal::#!j)
               {
                  this.§^i§.z = 0;
               }
               this.§`R§ = b2internal::#!j;
            }
            else if(_loc15_ >= this.§5!e§)
            {
               if(this.§`R§ != b2internal::2J)
               {
                  this.§^i§.z = 0;
               }
               this.§`R§ = b2internal::2J;
            }
            else
            {
               this.§`R§ = b2internal::?!k;
               this.§^i§.z = 0;
            }
         }
         else
         {
            this.§`R§ = b2internal::?!k;
         }
         if(param1.§'!t§)
         {
            this.§^i§.x *= param1.§?!$§;
            this.§^i§.y *= param1.§?!$§;
            this.§9,§ *= param1.§?!$§;
            _loc16_ = this.§^i§.x;
            _loc17_ = this.§^i§.y;
            _loc2_.§9e§.x -= _loc10_ * _loc16_;
            _loc2_.§9e§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§9,§ + this.§^i§.z);
            _loc3_.§9e§.x += _loc11_ * _loc16_;
            _loc3_.§9e§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§9,§ + this.§^i§.z);
         }
         else
         {
            this.§^i§.§58§();
            this.§9,§ = 0;
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
         var _loc2_:b2Body = b2internal::[F;
         var _loc3_:b2Body = b2internal::,!Q;
         var _loc11_:b2Vec2 = _loc2_.§9e§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§9e§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§var §;
         var _loc16_:Number = _loc3_.§var §;
         var _loc17_:Number = _loc2_.§,"!§;
         var _loc18_:Number = _loc3_.§,"!§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§3"-§ && this.§`R§ != b2internal::^!K && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§2!q§;
            _loc21_ = this.§]c§ * -_loc20_;
            _loc22_ = this.§9,§;
            _loc23_ = param1.§;@§ * this.§<!U§;
            this.§9,§ = b2Math.§5!^§(this.§9,§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§9,§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§]!D§ && this.§`R§ != b2internal::?!k && !_loc19_)
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
            this.§7g§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§`R§ == b2internal::^!K)
            {
               this.§^i§.§=4§(this.impulse3);
            }
            else if(this.§`R§ == b2internal::#!j)
            {
               if((_loc6_ = this.§^i§.z + this.impulse3.z) < 0)
               {
                  this.§7g§.Solve22(this.§>0§,-_loc24_ + this.§^i§.z * this.§7g§.col3.x,-_loc25_ + this.§^i§.z * this.§7g§.col3.y);
                  this.impulse3.x = this.§>0§.x;
                  this.impulse3.y = this.§>0§.y;
                  this.impulse3.z = -this.§^i§.z;
                  this.§^i§.x += this.§>0§.x;
                  this.§^i§.y += this.§>0§.y;
                  this.§^i§.z = 0;
               }
               else
               {
                  this.§^i§.x += this.impulse3.x;
                  this.§^i§.y += this.impulse3.y;
                  this.§^i§.z += this.impulse3.z;
               }
            }
            else if(this.§`R§ == b2internal::2J)
            {
               if((_loc6_ = this.§^i§.z + this.impulse3.z) > 0)
               {
                  this.§7g§.Solve22(this.§>0§,-_loc24_ + this.§^i§.z * this.§7g§.col3.x,-_loc25_ + this.§^i§.z * this.§7g§.col3.y);
                  this.impulse3.x = this.§>0§.x;
                  this.impulse3.y = this.§>0§.y;
                  this.impulse3.z = -this.§^i§.z;
                  this.§^i§.x += this.§>0§.x;
                  this.§^i§.y += this.§>0§.y;
                  this.§^i§.z = 0;
               }
               else
               {
                  this.§^i§.x += this.impulse3.x;
                  this.§^i§.y += this.impulse3.y;
                  this.§^i§.z += this.impulse3.z;
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
            this.§7g§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§^i§.x += this.impulse2.x;
            this.§^i§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§9e§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§9e§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::[F;
         var _loc6_:b2Body = b2internal::,!Q;
         var _loc7_:* = b2internal::-^ + b2internal::&"7 == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§]!D§ && this.§`R§ != b2internal::?!k && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§7!v§;
            _loc27_ = 0;
            if(this.§`R§ == b2internal::^!K)
            {
               _loc3_ = b2Math.§5!^§(_loc26_ - this.§!!@§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§]c§ * _loc3_;
               _loc8_ = b2Math.§<W§(_loc3_);
            }
            else if(this.§`R§ == b2internal::#!j)
            {
               _loc3_ = _loc26_ - this.§!!@§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§5!^§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§]c§ * _loc3_;
            }
            else if(this.§`R§ == b2internal::2J)
            {
               _loc3_ = _loc26_ - this.§5!e§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§5!^§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§]c§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§,"!§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§,"!§ * _loc27_;
            _loc5_.§>!b§();
            _loc6_.§>!b§();
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
         var _loc21_:Number = _loc5_.§var §;
         var _loc22_:Number = _loc6_.§var §;
         var _loc23_:Number = _loc5_.§,"!§;
         var _loc24_:Number = _loc6_.§,"!§;
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
         this.K.§1!G§(this.K1);
         this.K.§;!d§(this.K2);
         this.K.§;!d§(this.K3);
         this.K.§;#§(§8s§,-_loc17_,-_loc18_);
         _loc11_ = §8s§.x;
         _loc12_ = §8s§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§var § * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§var § * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§,"!§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§var § * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§var § * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§,"!§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§>!b§();
         _loc6_.§>!b§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}

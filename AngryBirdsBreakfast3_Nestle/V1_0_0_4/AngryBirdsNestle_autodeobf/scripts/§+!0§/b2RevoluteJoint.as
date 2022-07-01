package §+!0§
{
   import §-%§.b2Mat22;
   import §-%§.b2Mat33;
   import §-%§.b2Math;
   import §-%§.b2Vec2;
   import §-%§.b2Vec3;
   import §9"5§.b2Body;
   import §9"5§.b2TimeStep;
   import §>!R§.b2Settings;
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §>=§:b2Vec2 = new b2Vec2();
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §8U§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §[!a§:b2Vec3;
      
      private var §>!8§:Number;
      
      private var §1i§:b2Mat33;
      
      private var §?o§:Number;
      
      private var §@",§:Boolean;
      
      private var §46§:Number;
      
      private var §^!Z§:Number;
      
      private var §3!,§:Boolean;
      
      private var §@'§:Number;
      
      private var §0!T§:Number;
      
      private var §4D§:Number;
      
      private var §@!,§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§8U§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§[!a§ = new b2Vec3();
         this.§1i§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§1"&§);
         this.m_localAnchor2.SetV(param1.§-m§);
         this.§@'§ = param1.§]!i§;
         this.§[!a§.§'p§();
         this.§>!8§ = 0;
         this.§0!T§ = param1.§[1§;
         this.§4D§ = param1.§76§;
         this.§46§ = param1.§8z§;
         this.§^!Z§ = param1.motorSpeed;
         this.§3!,§ = param1.§1[§;
         this.§@",§ = param1.§!!Q§;
         this.§@!,§ = b2internal::!_;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9t.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::6=.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[!a§.x,param1 * this.§[!a§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§[!a§.z;
      }
      
      public function §`m§() : Number
      {
         return b2internal::6=.m_sweep.a - b2internal::9t.m_sweep.a - this.§@'§;
      }
      
      public function §!!+§() : Number
      {
         return b2internal::6=.m_angularVelocity - b2internal::9t.m_angularVelocity;
      }
      
      public function §`?§() : Boolean
      {
         return this.§3!,§;
      }
      
      public function §<@§(param1:Boolean) : void
      {
         this.§3!,§ = param1;
      }
      
      public function §"!v§() : Number
      {
         return this.§0!T§;
      }
      
      public function §;!a§() : Number
      {
         return this.§4D§;
      }
      
      public function § $§(param1:Number, param2:Number) : void
      {
         this.§0!T§ = param1;
         this.§4D§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§@",§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::9t.SetAwake(true);
         b2internal::6=.SetAwake(true);
         this.§@",§ = param1;
      }
      
      public function §^!Q§(param1:Number) : void
      {
         b2internal::9t.SetAwake(true);
         b2internal::6=.SetAwake(true);
         this.§^!Z§ = param1;
      }
      
      public function §7"'§() : Number
      {
         return this.§^!Z§;
      }
      
      public function §;v§(param1:Number) : void
      {
         this.§46§ = param1;
      }
      
      public function §=!j§() : Number
      {
         return this.§46§;
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
         _loc2_ = b2internal::9t;
         _loc3_ = b2internal::6=;
         if(this.§@",§ || this.§3!,§)
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
         var _loc10_:Number = _loc2_.§^!u§;
         var _loc11_:Number = _loc3_.§^!u§;
         var _loc12_:Number = _loc2_.§;!A§;
         var _loc13_:Number = _loc3_.§;!A§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§1i§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§1i§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§1i§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§1i§.col1.y = this.§1i§.col2.x;
         this.§1i§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§1i§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§1i§.col1.z = this.§1i§.col3.x;
         this.§1i§.col2.z = this.§1i§.col3.y;
         this.§1i§.col3.z = _loc12_ + _loc13_;
         this.§?o§ = 1 / (_loc12_ + _loc13_);
         if(this.§@",§ == false || _loc14_)
         {
            this.§>!8§ = 0;
         }
         if(this.§3!,§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§@'§;
            if(b2Math.§-Z§(this.§4D§ - this.§0!T§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§@!,§ = b2internal::," ;
            }
            else if(_loc15_ <= this.§0!T§)
            {
               if(this.§@!,§ != b2internal::<E)
               {
                  this.§[!a§.z = 0;
               }
               this.§@!,§ = b2internal::<E;
            }
            else if(_loc15_ >= this.§4D§)
            {
               if(this.§@!,§ != b2internal::&!;)
               {
                  this.§[!a§.z = 0;
               }
               this.§@!,§ = b2internal::&!;;
            }
            else
            {
               this.§@!,§ = b2internal::!_;
               this.§[!a§.z = 0;
            }
         }
         else
         {
            this.§@!,§ = b2internal::!_;
         }
         if(param1.§3!`§)
         {
            this.§[!a§.x *= param1.§%!k§;
            this.§[!a§.y *= param1.§%!k§;
            this.§>!8§ *= param1.§%!k§;
            _loc16_ = this.§[!a§.x;
            _loc17_ = this.§[!a§.y;
            _loc2_.§]!1§.x -= _loc10_ * _loc16_;
            _loc2_.§]!1§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§>!8§ + this.§[!a§.z);
            _loc3_.§]!1§.x += _loc11_ * _loc16_;
            _loc3_.§]!1§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§>!8§ + this.§[!a§.z);
         }
         else
         {
            this.§[!a§.§'p§();
            this.§>!8§ = 0;
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
         var _loc2_:b2Body = b2internal::9t;
         var _loc3_:b2Body = b2internal::6=;
         var _loc11_:b2Vec2 = _loc2_.§]!1§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§]!1§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§^!u§;
         var _loc16_:Number = _loc3_.§^!u§;
         var _loc17_:Number = _loc2_.§;!A§;
         var _loc18_:Number = _loc3_.§;!A§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§@",§ && this.§@!,§ != b2internal::,"  && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§^!Z§;
            _loc21_ = this.§?o§ * -_loc20_;
            _loc22_ = this.§>!8§;
            _loc23_ = param1.§ !&§ * this.§46§;
            this.§>!8§ = b2Math.§!P§(this.§>!8§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§>!8§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§3!,§ && this.§@!,§ != b2internal::!_ && !_loc19_)
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
            this.§1i§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§@!,§ == b2internal::," )
            {
               this.§[!a§.§%!d§(this.impulse3);
            }
            else if(this.§@!,§ == b2internal::<E)
            {
               if((_loc6_ = this.§[!a§.z + this.impulse3.z) < 0)
               {
                  this.§1i§.Solve22(this.§8U§,-_loc24_ + this.§[!a§.z * this.§1i§.col3.x,-_loc25_ + this.§[!a§.z * this.§1i§.col3.y);
                  this.impulse3.x = this.§8U§.x;
                  this.impulse3.y = this.§8U§.y;
                  this.impulse3.z = -this.§[!a§.z;
                  this.§[!a§.x += this.§8U§.x;
                  this.§[!a§.y += this.§8U§.y;
                  this.§[!a§.z = 0;
               }
               else
               {
                  this.§[!a§.x += this.impulse3.x;
                  this.§[!a§.y += this.impulse3.y;
                  this.§[!a§.z += this.impulse3.z;
               }
            }
            else if(this.§@!,§ == b2internal::&!;)
            {
               if((_loc6_ = this.§[!a§.z + this.impulse3.z) > 0)
               {
                  this.§1i§.Solve22(this.§8U§,-_loc24_ + this.§[!a§.z * this.§1i§.col3.x,-_loc25_ + this.§[!a§.z * this.§1i§.col3.y);
                  this.impulse3.x = this.§8U§.x;
                  this.impulse3.y = this.§8U§.y;
                  this.impulse3.z = -this.§[!a§.z;
                  this.§[!a§.x += this.§8U§.x;
                  this.§[!a§.y += this.§8U§.y;
                  this.§[!a§.z = 0;
               }
               else
               {
                  this.§[!a§.x += this.impulse3.x;
                  this.§[!a§.y += this.impulse3.y;
                  this.§[!a§.z += this.impulse3.z;
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
            this.§1i§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§[!a§.x += this.impulse2.x;
            this.§[!a§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§]!1§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§]!1§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::9t;
         var _loc6_:b2Body = b2internal::6=;
         var _loc7_:* = b2internal:: !K + b2internal::^!z == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§3!,§ && this.§@!,§ != b2internal::!_ && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§@'§;
            _loc27_ = 0;
            if(this.§@!,§ == b2internal::," )
            {
               _loc3_ = b2Math.§!P§(_loc26_ - this.§0!T§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§?o§ * _loc3_;
               _loc8_ = b2Math.§-Z§(_loc3_);
            }
            else if(this.§@!,§ == b2internal::<E)
            {
               _loc3_ = _loc26_ - this.§0!T§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§!P§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§?o§ * _loc3_;
            }
            else if(this.§@!,§ == b2internal::&!;)
            {
               _loc3_ = _loc26_ - this.§4D§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§!P§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§?o§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§;!A§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§;!A§ * _loc27_;
            _loc5_.§53§();
            _loc6_.§53§();
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
         var _loc21_:Number = _loc5_.§^!u§;
         var _loc22_:Number = _loc6_.§^!u§;
         var _loc23_:Number = _loc5_.§;!A§;
         var _loc24_:Number = _loc6_.§;!A§;
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
         this.K.§+M§(this.K1);
         this.K.§@m§(this.K2);
         this.K.§@m§(this.K3);
         this.K.§]!3§(§>=§,-_loc17_,-_loc18_);
         _loc11_ = §>=§.x;
         _loc12_ = §>=§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§^!u§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§^!u§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§;!A§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§^!u§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§^!u§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§;!A§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§53§();
         _loc6_.§53§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}

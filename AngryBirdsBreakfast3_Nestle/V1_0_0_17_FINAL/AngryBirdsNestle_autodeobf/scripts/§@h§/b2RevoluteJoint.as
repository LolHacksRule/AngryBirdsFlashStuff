package §@h§
{
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2TimeStep;
   import §@!E§.b2Mat22;
   import §@!E§.b2Mat33;
   import §@!E§.b2Math;
   import §@!E§.b2Vec2;
   import §@!E§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §7!p§:b2Vec2 = new b2Vec2();
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §5!2§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §6!h§:b2Vec3;
      
      private var §8!`§:Number;
      
      private var §'q§:b2Mat33;
      
      private var §=!l§:Number;
      
      private var §"Z§:Boolean;
      
      private var §4"&§:Number;
      
      private var §%! §:Number;
      
      private var §2!%§:Boolean;
      
      private var §<!S§:Number;
      
      private var §=!m§:Number;
      
      private var §#! §:Number;
      
      private var §@'§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§5!2§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§6!h§ = new b2Vec3();
         this.§'q§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§8D§);
         this.m_localAnchor2.SetV(param1.§@"$§);
         this.§<!S§ = param1.§7!L§;
         this.§6!h§.§>![§();
         this.§8!`§ = 0;
         this.§=!m§ = param1.§3!i§;
         this.§#! § = param1.§^!t§;
         this.§4"&§ = param1.§"7§;
         this.§%! § = param1.motorSpeed;
         this.§2!%§ = param1.§05§;
         this.§"Z§ = param1.§9!g§;
         this.§@'§ = b2internal::-G;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!F.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[!n.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§6!h§.x,param1 * this.§6!h§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§6!h§.z;
      }
      
      public function §"!4§() : Number
      {
         return b2internal::[!n.m_sweep.a - b2internal::9!F.m_sweep.a - this.§<!S§;
      }
      
      public function §,!&§() : Number
      {
         return b2internal::[!n.m_angularVelocity - b2internal::9!F.m_angularVelocity;
      }
      
      public function §"!&§() : Boolean
      {
         return this.§2!%§;
      }
      
      public function §&"8§(param1:Boolean) : void
      {
         this.§2!%§ = param1;
      }
      
      public function §[!>§() : Number
      {
         return this.§=!m§;
      }
      
      public function §0`§() : Number
      {
         return this.§#! §;
      }
      
      public function §=W§(param1:Number, param2:Number) : void
      {
         this.§=!m§ = param1;
         this.§#! § = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§"Z§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::9!F.SetAwake(true);
         b2internal::[!n.SetAwake(true);
         this.§"Z§ = param1;
      }
      
      public function §2",§(param1:Number) : void
      {
         b2internal::9!F.SetAwake(true);
         b2internal::[!n.SetAwake(true);
         this.§%! § = param1;
      }
      
      public function §>g§() : Number
      {
         return this.§%! §;
      }
      
      public function §;4§(param1:Number) : void
      {
         this.§4"&§ = param1;
      }
      
      public function §7c§() : Number
      {
         return this.§4"&§;
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
         _loc2_ = b2internal::9!F;
         _loc3_ = b2internal::[!n;
         if(this.§"Z§ || this.§2!%§)
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
         var _loc10_:Number = _loc2_.§ c§;
         var _loc11_:Number = _loc3_.§ c§;
         var _loc12_:Number = _loc2_.§"k§;
         var _loc13_:Number = _loc3_.§"k§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§'q§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§'q§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§'q§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§'q§.col1.y = this.§'q§.col2.x;
         this.§'q§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§'q§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§'q§.col1.z = this.§'q§.col3.x;
         this.§'q§.col2.z = this.§'q§.col3.y;
         this.§'q§.col3.z = _loc12_ + _loc13_;
         this.§=!l§ = 1 / (_loc12_ + _loc13_);
         if(this.§"Z§ == false || _loc14_)
         {
            this.§8!`§ = 0;
         }
         if(this.§2!%§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§<!S§;
            if(b2Math.§71§(this.§#! § - this.§=!m§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§@'§ = b2internal::!!?;
            }
            else if(_loc15_ <= this.§=!m§)
            {
               if(this.§@'§ != b2internal::-!V)
               {
                  this.§6!h§.z = 0;
               }
               this.§@'§ = b2internal::-!V;
            }
            else if(_loc15_ >= this.§#! §)
            {
               if(this.§@'§ != b2internal::8!p)
               {
                  this.§6!h§.z = 0;
               }
               this.§@'§ = b2internal::8!p;
            }
            else
            {
               this.§@'§ = b2internal::-G;
               this.§6!h§.z = 0;
            }
         }
         else
         {
            this.§@'§ = b2internal::-G;
         }
         if(param1.§-"'§)
         {
            this.§6!h§.x *= param1.§`!s§;
            this.§6!h§.y *= param1.§`!s§;
            this.§8!`§ *= param1.§`!s§;
            _loc16_ = this.§6!h§.x;
            _loc17_ = this.§6!h§.y;
            _loc2_.§;!A§.x -= _loc10_ * _loc16_;
            _loc2_.§;!A§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§8!`§ + this.§6!h§.z);
            _loc3_.§;!A§.x += _loc11_ * _loc16_;
            _loc3_.§;!A§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§8!`§ + this.§6!h§.z);
         }
         else
         {
            this.§6!h§.§>![§();
            this.§8!`§ = 0;
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
         var _loc2_:b2Body = b2internal::9!F;
         var _loc3_:b2Body = b2internal::[!n;
         var _loc11_:b2Vec2 = _loc2_.§;!A§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§;!A§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§ c§;
         var _loc16_:Number = _loc3_.§ c§;
         var _loc17_:Number = _loc2_.§"k§;
         var _loc18_:Number = _loc3_.§"k§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§"Z§ && this.§@'§ != b2internal::!!? && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§%! §;
            _loc21_ = this.§=!l§ * -_loc20_;
            _loc22_ = this.§8!`§;
            _loc23_ = param1.§"!n§ * this.§4"&§;
            this.§8!`§ = b2Math.§ !X§(this.§8!`§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§8!`§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§2!%§ && this.§@'§ != b2internal::-G && !_loc19_)
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
            this.§'q§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§@'§ == b2internal::!!?)
            {
               this.§6!h§.§?4§(this.impulse3);
            }
            else if(this.§@'§ == b2internal::-!V)
            {
               if((_loc6_ = this.§6!h§.z + this.impulse3.z) < 0)
               {
                  this.§'q§.Solve22(this.§5!2§,-_loc24_ + this.§6!h§.z * this.§'q§.col3.x,-_loc25_ + this.§6!h§.z * this.§'q§.col3.y);
                  this.impulse3.x = this.§5!2§.x;
                  this.impulse3.y = this.§5!2§.y;
                  this.impulse3.z = -this.§6!h§.z;
                  this.§6!h§.x += this.§5!2§.x;
                  this.§6!h§.y += this.§5!2§.y;
                  this.§6!h§.z = 0;
               }
               else
               {
                  this.§6!h§.x += this.impulse3.x;
                  this.§6!h§.y += this.impulse3.y;
                  this.§6!h§.z += this.impulse3.z;
               }
            }
            else if(this.§@'§ == b2internal::8!p)
            {
               if((_loc6_ = this.§6!h§.z + this.impulse3.z) > 0)
               {
                  this.§'q§.Solve22(this.§5!2§,-_loc24_ + this.§6!h§.z * this.§'q§.col3.x,-_loc25_ + this.§6!h§.z * this.§'q§.col3.y);
                  this.impulse3.x = this.§5!2§.x;
                  this.impulse3.y = this.§5!2§.y;
                  this.impulse3.z = -this.§6!h§.z;
                  this.§6!h§.x += this.§5!2§.x;
                  this.§6!h§.y += this.§5!2§.y;
                  this.§6!h§.z = 0;
               }
               else
               {
                  this.§6!h§.x += this.impulse3.x;
                  this.§6!h§.y += this.impulse3.y;
                  this.§6!h§.z += this.impulse3.z;
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
            this.§'q§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§6!h§.x += this.impulse2.x;
            this.§6!h§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§;!A§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§;!A§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::9!F;
         var _loc6_:b2Body = b2internal::[!n;
         var _loc7_:* = b2internal::;N + b2internal::'Q == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§2!%§ && this.§@'§ != b2internal::-G && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§<!S§;
            _loc27_ = 0;
            if(this.§@'§ == b2internal::!!?)
            {
               _loc3_ = b2Math.§ !X§(_loc26_ - this.§=!m§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§=!l§ * _loc3_;
               _loc8_ = b2Math.§71§(_loc3_);
            }
            else if(this.§@'§ == b2internal::-!V)
            {
               _loc3_ = _loc26_ - this.§=!m§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§ !X§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§=!l§ * _loc3_;
            }
            else if(this.§@'§ == b2internal::8!p)
            {
               _loc3_ = _loc26_ - this.§#! §;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§ !X§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§=!l§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§"k§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§"k§ * _loc27_;
            _loc5_.§+!X§();
            _loc6_.§+!X§();
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
         var _loc21_:Number = _loc5_.§ c§;
         var _loc22_:Number = _loc6_.§ c§;
         var _loc23_:Number = _loc5_.§"k§;
         var _loc24_:Number = _loc6_.§"k§;
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
         this.K.§8!y§(this.K1);
         this.K.§1E§(this.K2);
         this.K.§1E§(this.K3);
         this.K.§`"5§(§7!p§,-_loc17_,-_loc18_);
         _loc11_ = §7!p§.x;
         _loc12_ = §7!p§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§ c§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§ c§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§"k§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§ c§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§ c§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§"k§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§+!X§();
         _loc6_.§+!X§();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}

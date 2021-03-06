package §8<§
{
   import §#,§.b2Settings;
   import §#,§.b2internal;
   import §4]§.b2Body;
   import §4]§.b2TimeStep;
   import §[R§.b2Mat22;
   import §[R§.b2Mat33;
   import §[R§.b2Math;
   import §[R§.b2Vec2;
   import §[R§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §'!,§:b2Vec2 = new b2Vec2();
       
      
      private var §]0§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §7!E§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §8q§:b2Vec3;
      
      private var §-!>§:Number;
      
      private var §7![§:b2Mat33;
      
      private var §-x§:Number;
      
      private var §1!]§:Boolean;
      
      private var §@!Z§:Number;
      
      private var §1+§:Number;
      
      private var §&!N§:Boolean;
      
      private var native:Number;
      
      private var §6_§:Number;
      
      private var §=<§:Number;
      
      private var §]V§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§]0§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§7!E§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§8q§ = new b2Vec3();
         this.§7![§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§;!,§);
         this.m_localAnchor2.SetV(param1.§const§);
         this.native = param1.§ 7§;
         this.§8q§.§0&§();
         this.§-!>§ = 0;
         this.§6_§ = param1.§[5§;
         this.§=<§ = param1.§5!D§;
         this.§@!Z§ = param1.§4!Y§;
         this.§1+§ = param1.motorSpeed;
         this.§&!N§ = param1.§21§;
         this.§1!]§ = param1.§ '§;
         this.§]V§ = b2internal::,!5;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::!!_.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;<.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8q§.x,param1 * this.§8q§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§8q§.z;
      }
      
      public function §0X§() : Number
      {
         return b2internal::;<.m_sweep.a - b2internal::!!_.m_sweep.a - this.native;
      }
      
      public function §0l§() : Number
      {
         return b2internal::;<.m_angularVelocity - b2internal::!!_.m_angularVelocity;
      }
      
      public function §2C§() : Boolean
      {
         return this.§&!N§;
      }
      
      public function §5!Y§(param1:Boolean) : void
      {
         this.§&!N§ = param1;
      }
      
      public function §#n§() : Number
      {
         return this.§6_§;
      }
      
      public function §9[§() : Number
      {
         return this.§=<§;
      }
      
      public function §?w§(param1:Number, param2:Number) : void
      {
         this.§6_§ = param1;
         this.§=<§ = param2;
      }
      
      public function §43§() : Boolean
      {
         b2internal::!!_.SetAwake(true);
         b2internal::;<.SetAwake(true);
         return this.§1!]§;
      }
      
      public function §-!T§(param1:Boolean) : void
      {
         this.§1!]§ = param1;
      }
      
      public function §9d§(param1:Number) : void
      {
         b2internal::!!_.SetAwake(true);
         b2internal::;<.SetAwake(true);
         this.§1+§ = param1;
      }
      
      public function §0!E§() : Number
      {
         return this.§1+§;
      }
      
      public function §<! §(param1:Number) : void
      {
         this.§@!Z§ = param1;
      }
      
      public function §57§() : Number
      {
         return this.§@!Z§;
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
         _loc2_ = b2internal::!!_;
         _loc3_ = b2internal::;<;
         if(this.§1!]§ || this.§&!N§)
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
         var _loc10_:Number = _loc2_.§1c§;
         var _loc11_:Number = _loc3_.§1c§;
         var _loc12_:Number = _loc2_.§1!`§;
         var _loc13_:Number = _loc3_.§1!`§;
         this.§7![§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§7![§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§7![§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§7![§.col1.y = this.§7![§.col2.x;
         this.§7![§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§7![§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§7![§.col1.z = this.§7![§.col3.x;
         this.§7![§.col2.z = this.§7![§.col3.y;
         this.§7![§.col3.z = _loc12_ + _loc13_;
         this.§-x§ = 1 / (_loc12_ + _loc13_);
         if(this.§1!]§ == false)
         {
            this.§-!>§ = 0;
         }
         if(this.§&!N§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.native;
            if(b2Math.§,!!§(this.§=<§ - this.§6_§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§]V§ = b2internal::74;
            }
            else if(_loc14_ <= this.§6_§)
            {
               if(this.§]V§ != b2internal::=l)
               {
                  this.§8q§.z = 0;
               }
               this.§]V§ = b2internal::=l;
            }
            else if(_loc14_ >= this.§=<§)
            {
               if(this.§]V§ != b2internal::+[)
               {
                  this.§8q§.z = 0;
               }
               this.§]V§ = b2internal::+[;
            }
            else
            {
               this.§]V§ = b2internal::,!5;
               this.§8q§.z = 0;
            }
         }
         else
         {
            this.§]V§ = b2internal::,!5;
         }
         if(param1.§!4§)
         {
            this.§8q§.x *= param1.§5!-§;
            this.§8q§.y *= param1.§5!-§;
            this.§-!>§ *= param1.§5!-§;
            _loc15_ = this.§8q§.x;
            _loc16_ = this.§8q§.y;
            _loc2_.§;!8§.x -= _loc10_ * _loc15_;
            _loc2_.§;!8§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§-!>§ + this.§8q§.z);
            _loc3_.§;!8§.x += _loc11_ * _loc15_;
            _loc3_.§;!8§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§-!>§ + this.§8q§.z);
         }
         else
         {
            this.§8q§.§0&§();
            this.§-!>§ = 0;
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
         var _loc2_:b2Body = b2internal::!!_;
         var _loc3_:b2Body = b2internal::;<;
         var _loc11_:b2Vec2 = _loc2_.§;!8§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§;!8§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§1c§;
         var _loc16_:Number = _loc3_.§1c§;
         var _loc17_:Number = _loc2_.§1!`§;
         var _loc18_:Number = _loc3_.§1!`§;
         if(this.§1!]§ && this.§]V§ != b2internal::74)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§1+§;
            _loc20_ = this.§-x§ * -_loc19_;
            _loc21_ = this.§-!>§;
            _loc22_ = param1.§=&§ * this.§@!Z§;
            this.§-!>§ = b2Math.§'U§(this.§-!>§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§-!>§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§&!N§ && this.§]V§ != b2internal::,!5)
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
            this.§7![§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§]V§ == b2internal::74)
            {
               this.§8q§.§<!`§(this.impulse3);
            }
            else if(this.§]V§ == b2internal::=l)
            {
               if((_loc6_ = this.§8q§.z + this.impulse3.z) < 0)
               {
                  this.§7![§.Solve22(this.§7!E§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§7!E§.x;
                  this.impulse3.y = this.§7!E§.y;
                  this.impulse3.z = -this.§8q§.z;
                  this.§8q§.x += this.§7!E§.x;
                  this.§8q§.y += this.§7!E§.y;
                  this.§8q§.z = 0;
               }
            }
            else if(this.§]V§ == b2internal::+[)
            {
               if((_loc6_ = this.§8q§.z + this.impulse3.z) > 0)
               {
                  this.§7![§.Solve22(this.§7!E§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§7!E§.x;
                  this.impulse3.y = this.§7!E§.y;
                  this.impulse3.z = -this.§8q§.z;
                  this.§8q§.x += this.§7!E§.x;
                  this.§8q§.y += this.§7!E§.y;
                  this.§8q§.z = 0;
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
            this.§7![§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§8q§.x += this.impulse2.x;
            this.§8q§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§;!8§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§;!8§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::!!_;
         var _loc6_:b2Body = b2internal::;<;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§&!N§ && this.§]V§ != b2internal::,!5)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.native;
            _loc26_ = 0;
            if(this.§]V§ == b2internal::74)
            {
               _loc3_ = b2Math.§'U§(_loc25_ - this.§6_§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§-x§ * _loc3_;
               _loc7_ = b2Math.§,!!§(_loc3_);
            }
            else if(this.§]V§ == b2internal::=l)
            {
               _loc3_ = _loc25_ - this.§6_§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§'U§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§-x§ * _loc3_;
            }
            else if(this.§]V§ == b2internal::+[)
            {
               _loc3_ = _loc25_ - this.§=<§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§'U§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§-x§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§1!`§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§1!`§ * _loc26_;
            _loc5_.§-#§();
            _loc6_.§-#§();
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
         var _loc20_:Number = _loc5_.§1c§;
         var _loc21_:Number = _loc6_.§1c§;
         var _loc22_:Number = _loc5_.§1!`§;
         var _loc23_:Number = _loc6_.§1!`§;
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
         this.§]0§.§,i§(this.K1);
         this.§]0§.§4u§(this.K2);
         this.§]0§.§4u§(this.K3);
         this.§]0§.§4!Z§(§'!,§,-_loc16_,-_loc17_);
         _loc10_ = §'!,§.x;
         _loc11_ = §'!,§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§1c§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§1c§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§1!`§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§1c§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§1c§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§1!`§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§-#§();
         _loc6_.§-#§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}

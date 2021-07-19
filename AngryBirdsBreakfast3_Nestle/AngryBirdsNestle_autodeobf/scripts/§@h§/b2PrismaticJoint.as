package §@h§
{
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2TimeStep;
   import §@!E§.b2Mat22;
   import §@!E§.b2Mat33;
   import §@!E§.b2Math;
   import §@!E§.b2Transform;
   import §@!E§.b2Vec2;
   import §@!E§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §9"5§:b2Vec2;
      
      private var §&!6§:b2Vec2;
      
      private var §?"-§:Number;
      
      private var §0E§:b2Vec2;
      
      private var §-D§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var § U§:b2Mat33;
      
      private var §6!h§:b2Vec3;
      
      private var §=!l§:Number;
      
      private var §8!`§:Number;
      
      private var §>!Z§:Number;
      
      private var §`"$§:Number;
      
      private var §4"$§:Number;
      
      private var §%! §:Number;
      
      private var §2!%§:Boolean;
      
      private var §"Z§:Boolean;
      
      private var §@'§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§9"5§ = new b2Vec2();
         this.§&!6§ = new b2Vec2();
         this.§0E§ = new b2Vec2();
         this.§-D§ = new b2Vec2();
         this.§ U§ = new b2Mat33();
         this.§6!h§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§8D§);
         this.m_localAnchor2.SetV(param1.§@"$§);
         this.§9"5§.SetV(param1.§2"#§);
         this.§&!6§.x = -this.§9"5§.y;
         this.§&!6§.y = this.§9"5§.x;
         this.§?"-§ = param1.§7!L§;
         this.§6!h§.§>![§();
         this.§=!l§ = 0;
         this.§8!`§ = 0;
         this.§>!Z§ = param1.§;!W§;
         this.§`"$§ = param1.§2!$§;
         this.§4"$§ = param1.§;d§;
         this.§%! § = param1.motorSpeed;
         this.§2!%§ = param1.§05§;
         this.§"Z§ = param1.§9!g§;
         this.§@'§ = b2internal::-G;
         this.§0E§.§>![§();
         this.§-D§.§>![§();
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
         return new b2Vec2(param1 * (this.§6!h§.x * this.§-D§.x + (this.§8!`§ + this.§6!h§.z) * this.§0E§.x),param1 * (this.§6!h§.x * this.§-D§.y + (this.§8!`§ + this.§6!h§.z) * this.§0E§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§6!h§.y;
      }
      
      public function §%!-§() : Number
      {
         var _loc1_:b2Body = b2internal::9!F;
         var _loc2_:b2Body = b2internal::[!n;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§>!O§(this.§9"5§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §,!&§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::9!F;
         var _loc2_:b2Body = b2internal::[!n;
         _loc3_ = _loc1_.m_xf.R;
         var _loc4_:Number = this.m_localAnchor1.x - _loc1_.m_sweep.localCenter.x;
         var _loc5_:Number = this.m_localAnchor1.y - _loc1_.m_sweep.localCenter.y;
         var _loc6_:Number = _loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_;
         _loc5_ = _loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_;
         _loc4_ = _loc6_;
         _loc3_ = _loc2_.m_xf.R;
         var _loc7_:Number = this.m_localAnchor2.x - _loc2_.m_sweep.localCenter.x;
         var _loc8_:Number = this.m_localAnchor2.y - _loc2_.m_sweep.localCenter.y;
         _loc6_ = _loc3_.col1.x * _loc7_ + _loc3_.col2.x * _loc8_;
         _loc8_ = _loc3_.col1.y * _loc7_ + _loc3_.col2.y * _loc8_;
         _loc7_ = _loc6_;
         var _loc9_:Number = _loc1_.m_sweep.c.x + _loc4_;
         var _loc10_:Number = _loc1_.m_sweep.c.y + _loc5_;
         var _loc11_:Number = _loc2_.m_sweep.c.x + _loc7_;
         var _loc12_:Number = _loc2_.m_sweep.c.y + _loc8_;
         var _loc13_:Number = _loc11_ - _loc9_;
         var _loc14_:Number = _loc12_ - _loc10_;
         var _loc15_:b2Vec2 = _loc1_.§>!O§(this.§9"5§);
         var _loc16_:b2Vec2 = _loc1_.§;!A§;
         var _loc17_:b2Vec2 = _loc2_.§;!A§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §"!&§() : Boolean
      {
         return this.§2!%§;
      }
      
      public function §&"8§(param1:Boolean) : void
      {
         b2internal::9!F.SetAwake(true);
         b2internal::[!n.SetAwake(true);
         this.§2!%§ = param1;
      }
      
      public function §[!>§() : Number
      {
         return this.§>!Z§;
      }
      
      public function §0`§() : Number
      {
         return this.§`"$§;
      }
      
      public function §=W§(param1:Number, param2:Number) : void
      {
         b2internal::9!F.SetAwake(true);
         b2internal::[!n.SetAwake(true);
         this.§>!Z§ = param1;
         this.§`"$§ = param2;
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
      
      public function §&!q§(param1:Number) : void
      {
         b2internal::9!F.SetAwake(true);
         b2internal::[!n.SetAwake(true);
         this.§4"$§ = param1;
      }
      
      public function §5%§() : Number
      {
         return this.§8!`§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc2_:b2Body = b2internal::9!F;
         var _loc3_:b2Body = b2internal::[!n;
         b2internal::9T.SetV(_loc2_.§6_§());
         b2internal::6!8.SetV(_loc3_.§6_§());
         var _loc6_:b2Transform = _loc2_.§%X§();
         var _loc7_:b2Transform = _loc3_.§%X§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::9T.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::9T.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::6!8.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::6!8.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §^i§ = _loc2_.§ c§;
         §5b§ = _loc3_.§ c§;
         §;N§ = _loc2_.§"k§;
         §'Q§ = _loc3_.§"k§;
         this.§0E§.SetV(b2Math.§-!u§(_loc6_.R,this.§9"5§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§0E§.y - (_loc13_ + _loc9_) * this.§0E§.x;
         this.m_a2 = _loc10_ * this.§0E§.y - _loc11_ * this.§0E§.x;
         this.§=!l§ = b2internal::^i + b2internal::5b + b2internal::;N * this.m_a1 * this.m_a1 + b2internal::'Q * this.m_a2 * this.m_a2;
         if(this.§=!l§ > Number.MIN_VALUE)
         {
            this.§=!l§ = 1 / this.§=!l§;
         }
         this.§-D§.SetV(b2Math.§-!u§(_loc6_.R,this.§&!6§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§-D§.y - (_loc13_ + _loc9_) * this.§-D§.x;
         this.m_s2 = _loc10_ * this.§-D§.y - _loc11_ * this.§-D§.x;
         var _loc14_:Number = b2internal::^i;
         var _loc15_:Number = b2internal::5b;
         var _loc16_:Number = b2internal::;N;
         var _loc17_:Number = b2internal::'Q;
         this.§ U§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§ U§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§ U§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§ U§.col2.x = this.§ U§.col1.y;
         if(_loc16_ + _loc17_ != 0)
         {
            this.§ U§.col2.y = _loc16_ + _loc17_;
         }
         else
         {
            this.§ U§.col2.y = 1;
         }
         this.§ U§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§ U§.col3.x = this.§ U§.col1.z;
         this.§ U§.col3.y = this.§ U§.col2.z;
         this.§ U§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§2!%§)
         {
            _loc18_ = this.§0E§.x * _loc12_ + this.§0E§.y * _loc13_;
            if(b2Math.§71§(this.§`"$§ - this.§>!Z§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§@'§ = b2internal::!!?;
            }
            else if(_loc18_ <= this.§>!Z§)
            {
               if(this.§@'§ != b2internal::-!V)
               {
                  this.§@'§ = b2internal::-!V;
                  this.§6!h§.z = 0;
               }
            }
            else if(_loc18_ >= this.§`"$§)
            {
               if(this.§@'§ != b2internal::8!p)
               {
                  this.§@'§ = b2internal::8!p;
                  this.§6!h§.z = 0;
               }
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
            this.§6!h§.z = 0;
         }
         if(this.§"Z§ == false)
         {
            this.§8!`§ = 0;
         }
         if(param1.§-"'§)
         {
            this.§6!h§.x *= param1.§`!s§;
            this.§6!h§.y *= param1.§`!s§;
            this.§8!`§ *= param1.§`!s§;
            _loc19_ = this.§6!h§.x * this.§-D§.x + (this.§8!`§ + this.§6!h§.z) * this.§0E§.x;
            _loc20_ = this.§6!h§.x * this.§-D§.y + (this.§8!`§ + this.§6!h§.z) * this.§0E§.y;
            _loc21_ = this.§6!h§.x * this.m_s1 + this.§6!h§.y + (this.§8!`§ + this.§6!h§.z) * this.m_a1;
            _loc22_ = this.§6!h§.x * this.m_s2 + this.§6!h§.y + (this.§8!`§ + this.§6!h§.z) * this.m_a2;
            _loc2_.§;!A§.x -= b2internal::^i * _loc19_;
            _loc2_.§;!A§.y -= b2internal::^i * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::;N * _loc21_;
            _loc3_.§;!A§.x += b2internal::5b * _loc19_;
            _loc3_.§;!A§.y += b2internal::5b * _loc20_;
            _loc3_.m_angularVelocity += b2internal::'Q * _loc22_;
         }
         else
         {
            this.§6!h§.§>![§();
            this.§8!`§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:b2Vec3 = null;
         var _loc20_:b2Vec3 = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc2_:b2Body = b2internal::9!F;
         var _loc3_:b2Body = b2internal::[!n;
         var _loc4_:b2Vec2 = _loc2_.§;!A§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§;!A§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§"Z§ && this.§@'§ != b2internal::!!?)
         {
            _loc14_ = this.§0E§.x * (_loc6_.x - _loc4_.x) + this.§0E§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§=!l§ * (this.§%! § - _loc14_);
            _loc16_ = this.§8!`§;
            _loc17_ = param1.§"!n§ * this.§4"$§;
            this.§8!`§ = b2Math.§ !X§(this.§8!`§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§8!`§ - _loc16_) * this.§0E§.x;
            _loc9_ = _loc15_ * this.§0E§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::^i * _loc8_;
            _loc4_.y -= b2internal::^i * _loc9_;
            _loc5_ -= b2internal::;N * _loc10_;
            _loc6_.x += b2internal::5b * _loc8_;
            _loc6_.y += b2internal::5b * _loc9_;
            _loc7_ += b2internal::'Q * _loc11_;
         }
         var _loc12_:Number = this.§-D§.x * (_loc6_.x - _loc4_.x) + this.§-D§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§2!%§ && this.§@'§ != b2internal::-G)
         {
            _loc18_ = this.§0E§.x * (_loc6_.x - _loc4_.x) + this.§0E§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§6!h§.Copy();
            _loc20_ = this.§ U§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§6!h§.§?4§(_loc20_);
            if(this.§@'§ == b2internal::-!V)
            {
               this.§6!h§.z = b2Math.§1r§(this.§6!h§.z,0);
            }
            else if(this.§@'§ == b2internal::8!p)
            {
               this.§6!h§.z = b2Math.§5!!§(this.§6!h§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§6!h§.z - _loc19_.z) * this.§ U§.col3.x;
            _loc22_ = -_loc13_ - (this.§6!h§.z - _loc19_.z) * this.§ U§.col3.y;
            _loc23_ = this.§ U§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§6!h§.x = _loc23_.x;
            this.§6!h§.y = _loc23_.y;
            _loc20_.x = this.§6!h§.x - _loc19_.x;
            _loc20_.y = this.§6!h§.y - _loc19_.y;
            _loc20_.z = this.§6!h§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§-D§.x + _loc20_.z * this.§0E§.x;
            _loc9_ = _loc20_.x * this.§-D§.y + _loc20_.z * this.§0E§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::^i * _loc8_;
            _loc4_.y -= b2internal::^i * _loc9_;
            _loc5_ -= b2internal::;N * _loc10_;
            _loc6_.x += b2internal::5b * _loc8_;
            _loc6_.y += b2internal::5b * _loc9_;
            _loc7_ += b2internal::'Q * _loc11_;
         }
         else
         {
            _loc24_ = this.§ U§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§6!h§.x += _loc24_.x;
            this.§6!h§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§-D§.x;
            _loc9_ = _loc24_.x * this.§-D§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::^i * _loc8_;
            _loc4_.y -= b2internal::^i * _loc9_;
            _loc5_ -= b2internal::;N * _loc10_;
            _loc6_.x += b2internal::5b * _loc8_;
            _loc6_.y += b2internal::5b * _loc9_;
            _loc7_ += b2internal::'Q * _loc11_;
         }
         _loc2_.§;!A§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§;!A§.SetV(_loc6_);
         _loc3_.m_angularVelocity = _loc7_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:b2Vec2 = null;
         var _loc4_:b2Body = b2internal::9!F;
         var _loc5_:b2Body = b2internal::[!n;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§7!q§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§7!q§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::9T.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::9T.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::6!8.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::6!8.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§2!%§)
         {
            this.§0E§ = b2Math.§-!u§(_loc20_,this.§9"5§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§0E§.y - (_loc27_ + _loc23_) * this.§0E§.x;
            this.m_a2 = _loc24_ * this.§0E§.y - _loc25_ * this.§0E§.x;
            _loc35_ = this.§0E§.x * _loc26_ + this.§0E§.y * _loc27_;
            if(b2Math.§71§(this.§`"$§ - this.§>!Z§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§ !X§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§71§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§>!Z§)
            {
               _loc19_ = b2Math.§ !X§(_loc35_ - this.§>!Z§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§>!Z§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§`"$§)
            {
               _loc19_ = b2Math.§ !X§(_loc35_ - this.§`"$§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§`"$§;
               _loc18_ = true;
            }
         }
         this.§-D§ = b2Math.§-!u§(_loc20_,this.§&!6§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§-D§.y - (_loc27_ + _loc23_) * this.§-D§.x;
         this.m_s2 = _loc24_ * this.§-D§.y - _loc25_ * this.§-D§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§-D§.x * _loc26_ + this.§-D§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§?"-§;
         _loc16_ = b2Math.§1r§(_loc16_,b2Math.§71§(_loc29_));
         _loc17_ = b2Math.§71§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::^i;
            _loc13_ = b2internal::5b;
            _loc14_ = b2internal::;N;
            _loc15_ = b2internal::'Q;
            this.§ U§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§ U§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§ U§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§ U§.col2.x = this.§ U§.col1.y;
            if(_loc14_ + _loc15_ != 0)
            {
               this.§ U§.col2.y = _loc14_ + _loc15_;
            }
            else
            {
               this.§ U§.col2.y = 1;
            }
            this.§ U§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§ U§.col3.x = this.§ U§.col1.z;
            this.§ U§.col3.y = this.§ U§.col2.z;
            this.§ U§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§ U§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::^i;
            _loc13_ = b2internal::5b;
            _loc14_ = b2internal::;N;
            _loc15_ = b2internal::'Q;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            if((_loc38_ = _loc14_ + _loc15_) == 0)
            {
               _loc38_ = 1;
            }
            this.§ U§.col1.Set(_loc36_,_loc37_,0);
            this.§ U§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§ U§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§-D§.x + _loc28_.z * this.§0E§.x;
         var _loc32_:Number = _loc28_.x * this.§-D§.y + _loc28_.z * this.§0E§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::^i * _loc31_;
         _loc6_.y -= b2internal::^i * _loc32_;
         _loc7_ -= b2internal::;N * _loc33_;
         _loc8_.x += b2internal::5b * _loc31_;
         _loc8_.y += b2internal::5b * _loc32_;
         _loc9_ += b2internal::'Q * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§+!X§();
         _loc5_.§+!X§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

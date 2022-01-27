package §+D§
{
   import §#!X§.b2Body;
   import §#!X§.b2TimeStep;
   import §&!S§.b2Mat22;
   import §&!S§.b2Mat33;
   import §&!S§.b2Math;
   import §&!S§.b2Transform;
   import §&!S§.b2Vec2;
   import §&!S§.b2Vec3;
   import §@!@§.b2Settings;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §9C§:b2Vec2;
      
      private var §3""§:b2Vec2;
      
      private var § !;§:Number;
      
      private var §8!_§:b2Vec2;
      
      private var §7"-§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §]!R§:b2Mat33;
      
      private var §!=§:b2Vec3;
      
      private var §,K§:Number;
      
      private var §#"H§:Number;
      
      private var §6k§:Number;
      
      private var §9!9§:Number;
      
      private var §'!a§:Number;
      
      private var §'L§:Number;
      
      private var §3p§:Boolean;
      
      private var §#I§:Boolean;
      
      private var get:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§9C§ = new b2Vec2();
         this.§3""§ = new b2Vec2();
         this.§8!_§ = new b2Vec2();
         this.§7"-§ = new b2Vec2();
         this.§]!R§ = new b2Mat33();
         this.§!=§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§&9§);
         this.m_localAnchor2.SetV(param1.§^"<§);
         this.§9C§.SetV(param1.§8!Z§);
         this.§3""§.x = -this.§9C§.y;
         this.§3""§.y = this.§9C§.x;
         this.§ !;§ = param1.§ "5§;
         this.§!=§.§ "2§();
         this.§,K§ = 0;
         this.§#"H§ = 0;
         this.§6k§ = param1.§42§;
         this.§9!9§ = param1.§"!2§;
         this.§'!a§ = param1.§!#§;
         this.§'L§ = param1.motorSpeed;
         this.§3p§ = param1.§>6§;
         this.§#I§ = param1.§%]§;
         this.get = b2internal::%!";
         this.§8!_§.§ "2§();
         this.§7"-§.§ "2§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::]X.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::9!W.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§!=§.x * this.§7"-§.x + (this.§#"H§ + this.§!=§.z) * this.§8!_§.x),param1 * (this.§!=§.x * this.§7"-§.y + (this.§#"H§ + this.§!=§.z) * this.§8!_§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§!=§.y;
      }
      
      public function §[!=§() : Number
      {
         var _loc1_:b2Body = b2internal::]X;
         var _loc2_:b2Body = b2internal::9!W;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§>!%§(this.§9C§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §7!j§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::]X;
         var _loc2_:b2Body = b2internal::9!W;
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
         var _loc15_:b2Vec2 = _loc1_.§>!%§(this.§9C§);
         var _loc16_:b2Vec2 = _loc1_.§>w§;
         var _loc17_:b2Vec2 = _loc2_.§>w§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §>!K§() : Boolean
      {
         return this.§3p§;
      }
      
      public function §3!&§(param1:Boolean) : void
      {
         b2internal::]X.SetAwake(true);
         b2internal::9!W.SetAwake(true);
         this.§3p§ = param1;
      }
      
      public function §0"!§() : Number
      {
         return this.§6k§;
      }
      
      public function §%!8§() : Number
      {
         return this.§9!9§;
      }
      
      public function §@z§(param1:Number, param2:Number) : void
      {
         b2internal::]X.SetAwake(true);
         b2internal::9!W.SetAwake(true);
         this.§6k§ = param1;
         this.§9!9§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§#I§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::]X.SetAwake(true);
         b2internal::9!W.SetAwake(true);
         this.§#I§ = param1;
      }
      
      public function § ]§(param1:Number) : void
      {
         b2internal::]X.SetAwake(true);
         b2internal::9!W.SetAwake(true);
         this.§'L§ = param1;
      }
      
      public function §@"E§() : Number
      {
         return this.§'L§;
      }
      
      public function §?+§(param1:Number) : void
      {
         b2internal::]X.SetAwake(true);
         b2internal::9!W.SetAwake(true);
         this.§'!a§ = param1;
      }
      
      public function §">§() : Number
      {
         return this.§#"H§;
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
         var _loc2_:b2Body = b2internal::]X;
         var _loc3_:b2Body = b2internal::9!W;
         b2internal::=k.SetV(_loc2_.§ `§());
         b2internal::[!I.SetV(_loc3_.§ `§());
         var _loc6_:b2Transform = _loc2_.§+!T§();
         var _loc7_:b2Transform = _loc3_.§+!T§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::=k.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::=k.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::[!I.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::[!I.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         § v§ = _loc2_.§]!T§;
         §<"<§ = _loc3_.§]!T§;
         §6!M§ = _loc2_.§@#§;
         §^!M§ = _loc3_.§@#§;
         this.§8!_§.SetV(b2Math.§%r§(_loc6_.R,this.§9C§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§8!_§.y - (_loc13_ + _loc9_) * this.§8!_§.x;
         this.m_a2 = _loc10_ * this.§8!_§.y - _loc11_ * this.§8!_§.x;
         this.§,K§ = b2internal:: v + b2internal::<"< + b2internal::6!M * this.m_a1 * this.m_a1 + b2internal::^!M * this.m_a2 * this.m_a2;
         if(this.§,K§ > Number.MIN_VALUE)
         {
            this.§,K§ = 1 / this.§,K§;
         }
         this.§7"-§.SetV(b2Math.§%r§(_loc6_.R,this.§3""§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§7"-§.y - (_loc13_ + _loc9_) * this.§7"-§.x;
         this.m_s2 = _loc10_ * this.§7"-§.y - _loc11_ * this.§7"-§.x;
         var _loc14_:Number = b2internal:: v;
         var _loc15_:Number = b2internal::<"<;
         var _loc16_:Number = b2internal::6!M;
         var _loc17_:Number = b2internal::^!M;
         this.§]!R§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§]!R§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§]!R§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§]!R§.col2.x = this.§]!R§.col1.y;
         if(_loc16_ + _loc17_ != 0)
         {
            this.§]!R§.col2.y = _loc16_ + _loc17_;
         }
         else
         {
            this.§]!R§.col2.y = 1;
         }
         this.§]!R§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§]!R§.col3.x = this.§]!R§.col1.z;
         this.§]!R§.col3.y = this.§]!R§.col2.z;
         this.§]!R§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§3p§)
         {
            _loc18_ = this.§8!_§.x * _loc12_ + this.§8!_§.y * _loc13_;
            if(b2Math.§12§(this.§9!9§ - this.§6k§) < 2 * b2Settings.b2_linearSlop)
            {
               this.get = b2internal::!!_;
            }
            else if(_loc18_ <= this.§6k§)
            {
               if(this.get != b2internal::1!s)
               {
                  this.get = b2internal::1!s;
                  this.§!=§.z = 0;
               }
            }
            else if(_loc18_ >= this.§9!9§)
            {
               if(this.get != b2internal::^!n)
               {
                  this.get = b2internal::^!n;
                  this.§!=§.z = 0;
               }
            }
            else
            {
               this.get = b2internal::%!";
               this.§!=§.z = 0;
            }
         }
         else
         {
            this.get = b2internal::%!";
            this.§!=§.z = 0;
         }
         if(this.§#I§ == false)
         {
            this.§#"H§ = 0;
         }
         if(param1.§3!2§)
         {
            this.§!=§.x *= param1.§2!H§;
            this.§!=§.y *= param1.§2!H§;
            this.§#"H§ *= param1.§2!H§;
            _loc19_ = this.§!=§.x * this.§7"-§.x + (this.§#"H§ + this.§!=§.z) * this.§8!_§.x;
            _loc20_ = this.§!=§.x * this.§7"-§.y + (this.§#"H§ + this.§!=§.z) * this.§8!_§.y;
            _loc21_ = this.§!=§.x * this.m_s1 + this.§!=§.y + (this.§#"H§ + this.§!=§.z) * this.m_a1;
            _loc22_ = this.§!=§.x * this.m_s2 + this.§!=§.y + (this.§#"H§ + this.§!=§.z) * this.m_a2;
            _loc2_.§>w§.x -= b2internal:: v * _loc19_;
            _loc2_.§>w§.y -= b2internal:: v * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::6!M * _loc21_;
            _loc3_.§>w§.x += b2internal::<"< * _loc19_;
            _loc3_.§>w§.y += b2internal::<"< * _loc20_;
            _loc3_.m_angularVelocity += b2internal::^!M * _loc22_;
         }
         else
         {
            this.§!=§.§ "2§();
            this.§#"H§ = 0;
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
         var _loc2_:b2Body = b2internal::]X;
         var _loc3_:b2Body = b2internal::9!W;
         var _loc4_:b2Vec2 = _loc2_.§>w§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§>w§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§#I§ && this.get != b2internal::!!_)
         {
            _loc14_ = this.§8!_§.x * (_loc6_.x - _loc4_.x) + this.§8!_§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§,K§ * (this.§'L§ - _loc14_);
            _loc16_ = this.§#"H§;
            _loc17_ = param1.§`"%§ * this.§'!a§;
            this.§#"H§ = b2Math.§>G§(this.§#"H§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§#"H§ - _loc16_) * this.§8!_§.x;
            _loc9_ = _loc15_ * this.§8!_§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal:: v * _loc8_;
            _loc4_.y -= b2internal:: v * _loc9_;
            _loc5_ -= b2internal::6!M * _loc10_;
            _loc6_.x += b2internal::<"< * _loc8_;
            _loc6_.y += b2internal::<"< * _loc9_;
            _loc7_ += b2internal::^!M * _loc11_;
         }
         var _loc12_:Number = this.§7"-§.x * (_loc6_.x - _loc4_.x) + this.§7"-§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§3p§ && this.get != b2internal::%!")
         {
            _loc18_ = this.§8!_§.x * (_loc6_.x - _loc4_.x) + this.§8!_§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§!=§.Copy();
            _loc20_ = this.§]!R§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§!=§.§7-§(_loc20_);
            if(this.get == b2internal::1!s)
            {
               this.§!=§.z = b2Math.§!!e§(this.§!=§.z,0);
            }
            else if(this.get == b2internal::^!n)
            {
               this.§!=§.z = b2Math.§'a§(this.§!=§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§!=§.z - _loc19_.z) * this.§]!R§.col3.x;
            _loc22_ = -_loc13_ - (this.§!=§.z - _loc19_.z) * this.§]!R§.col3.y;
            _loc23_ = this.§]!R§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§!=§.x = _loc23_.x;
            this.§!=§.y = _loc23_.y;
            _loc20_.x = this.§!=§.x - _loc19_.x;
            _loc20_.y = this.§!=§.y - _loc19_.y;
            _loc20_.z = this.§!=§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§7"-§.x + _loc20_.z * this.§8!_§.x;
            _loc9_ = _loc20_.x * this.§7"-§.y + _loc20_.z * this.§8!_§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal:: v * _loc8_;
            _loc4_.y -= b2internal:: v * _loc9_;
            _loc5_ -= b2internal::6!M * _loc10_;
            _loc6_.x += b2internal::<"< * _loc8_;
            _loc6_.y += b2internal::<"< * _loc9_;
            _loc7_ += b2internal::^!M * _loc11_;
         }
         else
         {
            _loc24_ = this.§]!R§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§!=§.x += _loc24_.x;
            this.§!=§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§7"-§.x;
            _loc9_ = _loc24_.x * this.§7"-§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal:: v * _loc8_;
            _loc4_.y -= b2internal:: v * _loc9_;
            _loc5_ -= b2internal::6!M * _loc10_;
            _loc6_.x += b2internal::<"< * _loc8_;
            _loc6_.y += b2internal::<"< * _loc9_;
            _loc7_ += b2internal::^!M * _loc11_;
         }
         _loc2_.§>w§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§>w§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::]X;
         var _loc5_:b2Body = b2internal::9!W;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§8c§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§8c§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::=k.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::=k.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::[!I.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::[!I.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§3p§)
         {
            this.§8!_§ = b2Math.§%r§(_loc20_,this.§9C§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§8!_§.y - (_loc27_ + _loc23_) * this.§8!_§.x;
            this.m_a2 = _loc24_ * this.§8!_§.y - _loc25_ * this.§8!_§.x;
            _loc35_ = this.§8!_§.x * _loc26_ + this.§8!_§.y * _loc27_;
            if(b2Math.§12§(this.§9!9§ - this.§6k§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§>G§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§12§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§6k§)
            {
               _loc19_ = b2Math.§>G§(_loc35_ - this.§6k§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§6k§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§9!9§)
            {
               _loc19_ = b2Math.§>G§(_loc35_ - this.§9!9§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§9!9§;
               _loc18_ = true;
            }
         }
         this.§7"-§ = b2Math.§%r§(_loc20_,this.§3""§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§7"-§.y - (_loc27_ + _loc23_) * this.§7"-§.x;
         this.m_s2 = _loc24_ * this.§7"-§.y - _loc25_ * this.§7"-§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§7"-§.x * _loc26_ + this.§7"-§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§ !;§;
         _loc16_ = b2Math.§!!e§(_loc16_,b2Math.§12§(_loc29_));
         _loc17_ = b2Math.§12§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal:: v;
            _loc13_ = b2internal::<"<;
            _loc14_ = b2internal::6!M;
            _loc15_ = b2internal::^!M;
            this.§]!R§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§]!R§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§]!R§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§]!R§.col2.x = this.§]!R§.col1.y;
            if(_loc14_ + _loc15_ != 0)
            {
               this.§]!R§.col2.y = _loc14_ + _loc15_;
            }
            else
            {
               this.§]!R§.col2.y = 1;
            }
            this.§]!R§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§]!R§.col3.x = this.§]!R§.col1.z;
            this.§]!R§.col3.y = this.§]!R§.col2.z;
            this.§]!R§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§]!R§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal:: v;
            _loc13_ = b2internal::<"<;
            _loc14_ = b2internal::6!M;
            _loc15_ = b2internal::^!M;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            if((_loc38_ = _loc14_ + _loc15_) == 0)
            {
               _loc38_ = 1;
            }
            this.§]!R§.col1.Set(_loc36_,_loc37_,0);
            this.§]!R§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§]!R§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§7"-§.x + _loc28_.z * this.§8!_§.x;
         var _loc32_:Number = _loc28_.x * this.§7"-§.y + _loc28_.z * this.§8!_§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal:: v * _loc31_;
         _loc6_.y -= b2internal:: v * _loc32_;
         _loc7_ -= b2internal::6!M * _loc33_;
         _loc8_.x += b2internal::<"< * _loc31_;
         _loc8_.y += b2internal::<"< * _loc32_;
         _loc9_ += b2internal::^!M * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§;!E§();
         _loc5_.§;!E§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

package §4!J§
{
   import §6V§.b2Mat22;
   import §6V§.b2Mat33;
   import §6V§.b2Math;
   import §6V§.b2Transform;
   import §6V§.b2Vec2;
   import §6V§.b2Vec3;
   import §<!L§.b2Body;
   import §<!L§.b2TimeStep;
   import §[!$§.b2Settings;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var § !%§:b2Vec2;
      
      private var §%O§:b2Vec2;
      
      private var §%l§:Number;
      
      private var §?!c§:b2Vec2;
      
      private var §+N§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §8!R§:b2Mat33;
      
      private var §5!M§:b2Vec3;
      
      private var §4A§:Number;
      
      private var §2!N§:Number;
      
      private var §]l§:Number;
      
      private var §set §:Number;
      
      private var §9f§:Number;
      
      private var §0!§:Number;
      
      private var §;P§:Boolean;
      
      private var §0!M§:Boolean;
      
      private var §[J§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§ !%§ = new b2Vec2();
         this.§%O§ = new b2Vec2();
         this.§?!c§ = new b2Vec2();
         this.§+N§ = new b2Vec2();
         this.§8!R§ = new b2Mat33();
         this.§5!M§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§;8§);
         this.m_localAnchor2.SetV(param1.§;!c§);
         this.§ !%§.SetV(param1.§,d§);
         this.§%O§.x = -this.§ !%§.y;
         this.§%O§.y = this.§ !%§.x;
         this.§%l§ = param1.§2Y§;
         this.§5!M§.§;@§();
         this.§4A§ = 0;
         this.§2!N§ = 0;
         this.§]l§ = param1.§=!4§;
         this.§set § = param1.§8!G§;
         this.§9f§ = param1.§5M§;
         this.§0!§ = param1.motorSpeed;
         this.§;P§ = param1.§7!6§;
         this.§0!M§ = param1.§&2§;
         this.§[J§ = b2internal::throw;
         this.§?!c§.§;@§();
         this.§+N§.§;@§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!_.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::&! .GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§5!M§.x * this.§+N§.x + (this.§2!N§ + this.§5!M§.z) * this.§?!c§.x),param1 * (this.§5!M§.x * this.§+N§.y + (this.§2!N§ + this.§5!M§.z) * this.§?!c§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§5!M§.y;
      }
      
      public function §@&§() : Number
      {
         var _loc1_:b2Body = b2internal::9!_;
         var _loc2_:b2Body = b2internal::&! ;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§default§(this.§ !%§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §>E§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::9!_;
         var _loc2_:b2Body = b2internal::&! ;
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
         var _loc15_:b2Vec2 = _loc1_.§default§(this.§ !%§);
         var _loc16_:b2Vec2 = _loc1_.§1!K§;
         var _loc17_:b2Vec2 = _loc2_.§1!K§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §87§() : Boolean
      {
         return this.§;P§;
      }
      
      public function §0+§(param1:Boolean) : void
      {
         b2internal::9!_.SetAwake(true);
         b2internal::&! .SetAwake(true);
         this.§;P§ = param1;
      }
      
      public function final() : Number
      {
         return this.§]l§;
      }
      
      public function §1!M§() : Number
      {
         return this.§set §;
      }
      
      public function §-!Y§(param1:Number, param2:Number) : void
      {
         b2internal::9!_.SetAwake(true);
         b2internal::&! .SetAwake(true);
         this.§]l§ = param1;
         this.§set § = param2;
      }
      
      public function §-X§() : Boolean
      {
         return this.§0!M§;
      }
      
      public function §0!]§(param1:Boolean) : void
      {
         b2internal::9!_.SetAwake(true);
         b2internal::&! .SetAwake(true);
         this.§0!M§ = param1;
      }
      
      public function §9U§(param1:Number) : void
      {
         b2internal::9!_.SetAwake(true);
         b2internal::&! .SetAwake(true);
         this.§0!§ = param1;
      }
      
      public function §+s§() : Number
      {
         return this.§0!§;
      }
      
      public function §@!>§(param1:Number) : void
      {
         b2internal::9!_.SetAwake(true);
         b2internal::&! .SetAwake(true);
         this.§9f§ = param1;
      }
      
      public function §`!A§() : Number
      {
         return this.§2!N§;
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
         var _loc2_:b2Body = b2internal::9!_;
         var _loc3_:b2Body = b2internal::&! ;
         b2internal::%!A.SetV(_loc2_.§&!`§());
         b2internal::3!e.SetV(_loc3_.§&!`§());
         var _loc6_:b2Transform = _loc2_.§`!E§();
         var _loc7_:b2Transform = _loc3_.§`!E§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::%!A.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::%!A.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::3!e.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::3!e.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §2X§ = _loc2_.§;z§;
         §-S§ = _loc3_.§;z§;
         §0H§ = _loc2_.§?C§;
         §?'§ = _loc3_.§?C§;
         this.§?!c§.SetV(b2Math.§#t§(_loc6_.R,this.§ !%§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§?!c§.y - (_loc13_ + _loc9_) * this.§?!c§.x;
         this.m_a2 = _loc10_ * this.§?!c§.y - _loc11_ * this.§?!c§.x;
         this.§4A§ = b2internal::2X + b2internal::-S + b2internal::0H * this.m_a1 * this.m_a1 + b2internal::?' * this.m_a2 * this.m_a2;
         if(this.§4A§ > Number.MIN_VALUE)
         {
            this.§4A§ = 1 / this.§4A§;
         }
         this.§+N§.SetV(b2Math.§#t§(_loc6_.R,this.§%O§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§+N§.y - (_loc13_ + _loc9_) * this.§+N§.x;
         this.m_s2 = _loc10_ * this.§+N§.y - _loc11_ * this.§+N§.x;
         var _loc14_:Number = b2internal::2X;
         var _loc15_:Number = b2internal::-S;
         var _loc16_:Number = b2internal::0H;
         var _loc17_:Number = b2internal::?';
         this.§8!R§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§8!R§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§8!R§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§8!R§.col2.x = this.§8!R§.col1.y;
         this.§8!R§.col2.y = _loc16_ + _loc17_;
         this.§8!R§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§8!R§.col3.x = this.§8!R§.col1.z;
         this.§8!R§.col3.y = this.§8!R§.col2.z;
         this.§8!R§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§;P§)
         {
            _loc18_ = this.§?!c§.x * _loc12_ + this.§?!c§.y * _loc13_;
            if(b2Math.§]+§(this.§set § - this.§]l§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§[J§ = b2internal::-!=;
            }
            else if(_loc18_ <= this.§]l§)
            {
               if(this.§[J§ != b2internal::"!Y)
               {
                  this.§[J§ = b2internal::"!Y;
                  this.§5!M§.z = 0;
               }
            }
            else if(_loc18_ >= this.§set §)
            {
               if(this.§[J§ != b2internal::^!T)
               {
                  this.§[J§ = b2internal::^!T;
                  this.§5!M§.z = 0;
               }
            }
            else
            {
               this.§[J§ = b2internal::throw;
               this.§5!M§.z = 0;
            }
         }
         else
         {
            this.§[J§ = b2internal::throw;
         }
         if(this.§0!M§ == false)
         {
            this.§2!N§ = 0;
         }
         if(param1.§9w§)
         {
            this.§5!M§.x *= param1.§7!<§;
            this.§5!M§.y *= param1.§7!<§;
            this.§2!N§ *= param1.§7!<§;
            _loc19_ = this.§5!M§.x * this.§+N§.x + (this.§2!N§ + this.§5!M§.z) * this.§?!c§.x;
            _loc20_ = this.§5!M§.x * this.§+N§.y + (this.§2!N§ + this.§5!M§.z) * this.§?!c§.y;
            _loc21_ = this.§5!M§.x * this.m_s1 + this.§5!M§.y + (this.§2!N§ + this.§5!M§.z) * this.m_a1;
            _loc22_ = this.§5!M§.x * this.m_s2 + this.§5!M§.y + (this.§2!N§ + this.§5!M§.z) * this.m_a2;
            _loc2_.§1!K§.x -= b2internal::2X * _loc19_;
            _loc2_.§1!K§.y -= b2internal::2X * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::0H * _loc21_;
            _loc3_.§1!K§.x += b2internal::-S * _loc19_;
            _loc3_.§1!K§.y += b2internal::-S * _loc20_;
            _loc3_.m_angularVelocity += b2internal::?' * _loc22_;
         }
         else
         {
            this.§5!M§.§;@§();
            this.§2!N§ = 0;
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
         var _loc2_:b2Body = b2internal::9!_;
         var _loc3_:b2Body = b2internal::&! ;
         var _loc4_:b2Vec2 = _loc2_.§1!K§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§1!K§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§0!M§ && this.§[J§ != b2internal::-!=)
         {
            _loc14_ = this.§?!c§.x * (_loc6_.x - _loc4_.x) + this.§?!c§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§4A§ * (this.§0!§ - _loc14_);
            _loc16_ = this.§2!N§;
            _loc17_ = param1.§?!§ * this.§9f§;
            this.§2!N§ = b2Math.§^7§(this.§2!N§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§2!N§ - _loc16_) * this.§?!c§.x;
            _loc9_ = _loc15_ * this.§?!c§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::2X * _loc8_;
            _loc4_.y -= b2internal::2X * _loc9_;
            _loc5_ -= b2internal::0H * _loc10_;
            _loc6_.x += b2internal::-S * _loc8_;
            _loc6_.y += b2internal::-S * _loc9_;
            _loc7_ += b2internal::?' * _loc11_;
         }
         var _loc12_:Number = this.§+N§.x * (_loc6_.x - _loc4_.x) + this.§+N§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§;P§ && this.§[J§ != b2internal::throw)
         {
            _loc18_ = this.§?!c§.x * (_loc6_.x - _loc4_.x) + this.§?!c§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§5!M§.Copy();
            _loc20_ = this.§8!R§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§5!M§.§!'§(_loc20_);
            if(this.§[J§ == b2internal::"!Y)
            {
               this.§5!M§.z = b2Math.§3U§(this.§5!M§.z,0);
            }
            else if(this.§[J§ == b2internal::^!T)
            {
               this.§5!M§.z = b2Math.§]!e§(this.§5!M§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§5!M§.z - _loc19_.z) * this.§8!R§.col3.x;
            _loc22_ = -_loc13_ - (this.§5!M§.z - _loc19_.z) * this.§8!R§.col3.y;
            _loc23_ = this.§8!R§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§5!M§.x = _loc23_.x;
            this.§5!M§.y = _loc23_.y;
            _loc20_.x = this.§5!M§.x - _loc19_.x;
            _loc20_.y = this.§5!M§.y - _loc19_.y;
            _loc20_.z = this.§5!M§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§+N§.x + _loc20_.z * this.§?!c§.x;
            _loc9_ = _loc20_.x * this.§+N§.y + _loc20_.z * this.§?!c§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::2X * _loc8_;
            _loc4_.y -= b2internal::2X * _loc9_;
            _loc5_ -= b2internal::0H * _loc10_;
            _loc6_.x += b2internal::-S * _loc8_;
            _loc6_.y += b2internal::-S * _loc9_;
            _loc7_ += b2internal::?' * _loc11_;
         }
         else
         {
            _loc24_ = this.§8!R§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§5!M§.x += _loc24_.x;
            this.§5!M§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§+N§.x;
            _loc9_ = _loc24_.x * this.§+N§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::2X * _loc8_;
            _loc4_.y -= b2internal::2X * _loc9_;
            _loc5_ -= b2internal::0H * _loc10_;
            _loc6_.x += b2internal::-S * _loc8_;
            _loc6_.y += b2internal::-S * _loc9_;
            _loc7_ += b2internal::?' * _loc11_;
         }
         _loc2_.§1!K§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§1!K§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::9!_;
         var _loc5_:b2Body = b2internal::&! ;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§"d§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§"d§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::%!A.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::%!A.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::3!e.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::3!e.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§;P§)
         {
            this.§?!c§ = b2Math.§#t§(_loc20_,this.§ !%§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§?!c§.y - (_loc27_ + _loc23_) * this.§?!c§.x;
            this.m_a2 = _loc24_ * this.§?!c§.y - _loc25_ * this.§?!c§.x;
            _loc35_ = this.§?!c§.x * _loc26_ + this.§?!c§.y * _loc27_;
            if(b2Math.§]+§(this.§set § - this.§]l§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§^7§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§]+§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§]l§)
            {
               _loc19_ = b2Math.§^7§(_loc35_ - this.§]l§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§]l§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§set §)
            {
               _loc19_ = b2Math.§^7§(_loc35_ - this.§set § + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§set §;
               _loc18_ = true;
            }
         }
         this.§+N§ = b2Math.§#t§(_loc20_,this.§%O§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§+N§.y - (_loc27_ + _loc23_) * this.§+N§.x;
         this.m_s2 = _loc24_ * this.§+N§.y - _loc25_ * this.§+N§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§+N§.x * _loc26_ + this.§+N§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§%l§;
         _loc16_ = b2Math.§3U§(_loc16_,b2Math.§]+§(_loc29_));
         _loc17_ = b2Math.§]+§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::2X;
            _loc13_ = b2internal::-S;
            _loc14_ = b2internal::0H;
            _loc15_ = b2internal::?';
            this.§8!R§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§8!R§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§8!R§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§8!R§.col2.x = this.§8!R§.col1.y;
            this.§8!R§.col2.y = _loc14_ + _loc15_;
            this.§8!R§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§8!R§.col3.x = this.§8!R§.col1.z;
            this.§8!R§.col3.y = this.§8!R§.col2.z;
            this.§8!R§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§8!R§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::2X;
            _loc13_ = b2internal::-S;
            _loc14_ = b2internal::0H;
            _loc15_ = b2internal::?';
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§8!R§.col1.Set(_loc36_,_loc37_,0);
            this.§8!R§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§8!R§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§+N§.x + _loc28_.z * this.§?!c§.x;
         var _loc32_:Number = _loc28_.x * this.§+N§.y + _loc28_.z * this.§?!c§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::2X * _loc31_;
         _loc6_.y -= b2internal::2X * _loc32_;
         _loc7_ -= b2internal::0H * _loc33_;
         _loc8_.x += b2internal::-S * _loc31_;
         _loc8_.y += b2internal::-S * _loc32_;
         _loc9_ += b2internal::?' * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§>u§();
         _loc5_.§>u§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

package §+!0§
{
   import §-%§.b2Mat22;
   import §-%§.b2Mat33;
   import §-%§.b2Math;
   import §-%§.b2Transform;
   import §-%§.b2Vec2;
   import §-%§.b2Vec3;
   import §9"5§.b2Body;
   import §9"5§.b2TimeStep;
   import §>!R§.b2Settings;
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §8!6§:b2Vec2;
      
      private var §#u§:b2Vec2;
      
      private var §2!!§:Number;
      
      private var §,4§:b2Vec2;
      
      private var §+w§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §0!b§:b2Mat33;
      
      private var §[!a§:b2Vec3;
      
      private var §?o§:Number;
      
      private var §>!8§:Number;
      
      private var § w§:Number;
      
      private var §+",§:Number;
      
      private var §'"%§:Number;
      
      private var §^!Z§:Number;
      
      private var §3!,§:Boolean;
      
      private var §@",§:Boolean;
      
      private var §@!,§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§8!6§ = new b2Vec2();
         this.§#u§ = new b2Vec2();
         this.§,4§ = new b2Vec2();
         this.§+w§ = new b2Vec2();
         this.§0!b§ = new b2Mat33();
         this.§[!a§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§1"&§);
         this.m_localAnchor2.SetV(param1.§-m§);
         this.§8!6§.SetV(param1.§,!`§);
         this.§#u§.x = -this.§8!6§.y;
         this.§#u§.y = this.§8!6§.x;
         this.§2!!§ = param1.§]!i§;
         this.§[!a§.§'p§();
         this.§?o§ = 0;
         this.§>!8§ = 0;
         this.§ w§ = param1.§35§;
         this.§+",§ = param1.§8;§;
         this.§'"%§ = param1.§;9§;
         this.§^!Z§ = param1.motorSpeed;
         this.§3!,§ = param1.§1[§;
         this.§@",§ = param1.§!!Q§;
         this.§@!,§ = b2internal::!_;
         this.§,4§.§'p§();
         this.§+w§.§'p§();
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
         return new b2Vec2(param1 * (this.§[!a§.x * this.§+w§.x + (this.§>!8§ + this.§[!a§.z) * this.§,4§.x),param1 * (this.§[!a§.x * this.§+w§.y + (this.§>!8§ + this.§[!a§.z) * this.§,4§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§[!a§.y;
      }
      
      public function §7m§() : Number
      {
         var _loc1_:b2Body = b2internal::9t;
         var _loc2_:b2Body = b2internal::6=;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§#!J§(this.§8!6§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §!!+§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::9t;
         var _loc2_:b2Body = b2internal::6=;
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
         var _loc15_:b2Vec2 = _loc1_.§#!J§(this.§8!6§);
         var _loc16_:b2Vec2 = _loc1_.§]!1§;
         var _loc17_:b2Vec2 = _loc2_.§]!1§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §`?§() : Boolean
      {
         return this.§3!,§;
      }
      
      public function §<@§(param1:Boolean) : void
      {
         b2internal::9t.SetAwake(true);
         b2internal::6=.SetAwake(true);
         this.§3!,§ = param1;
      }
      
      public function §"!v§() : Number
      {
         return this.§ w§;
      }
      
      public function §;!a§() : Number
      {
         return this.§+",§;
      }
      
      public function § $§(param1:Number, param2:Number) : void
      {
         b2internal::9t.SetAwake(true);
         b2internal::6=.SetAwake(true);
         this.§ w§ = param1;
         this.§+",§ = param2;
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
      
      public function §!J§(param1:Number) : void
      {
         b2internal::9t.SetAwake(true);
         b2internal::6=.SetAwake(true);
         this.§'"%§ = param1;
      }
      
      public function §7!P§() : Number
      {
         return this.§>!8§;
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
         var _loc2_:b2Body = b2internal::9t;
         var _loc3_:b2Body = b2internal::6=;
         b2internal::!!&.SetV(_loc2_.§-[§());
         b2internal::>r.SetV(_loc3_.§-[§());
         var _loc6_:b2Transform = _loc2_.§,!h§();
         var _loc7_:b2Transform = _loc3_.§,!h§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::!!&.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::!!&.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::>r.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::>r.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §88§ = _loc2_.§^!u§;
         §2!"§ = _loc3_.§^!u§;
         § !K§ = _loc2_.§;!A§;
         §^!z§ = _loc3_.§;!A§;
         this.§,4§.SetV(b2Math.§?U§(_loc6_.R,this.§8!6§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§,4§.y - (_loc13_ + _loc9_) * this.§,4§.x;
         this.m_a2 = _loc10_ * this.§,4§.y - _loc11_ * this.§,4§.x;
         this.§?o§ = b2internal::88 + b2internal::2!" + b2internal:: !K * this.m_a1 * this.m_a1 + b2internal::^!z * this.m_a2 * this.m_a2;
         if(this.§?o§ > Number.MIN_VALUE)
         {
            this.§?o§ = 1 / this.§?o§;
         }
         this.§+w§.SetV(b2Math.§?U§(_loc6_.R,this.§#u§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§+w§.y - (_loc13_ + _loc9_) * this.§+w§.x;
         this.m_s2 = _loc10_ * this.§+w§.y - _loc11_ * this.§+w§.x;
         var _loc14_:Number = b2internal::88;
         var _loc15_:Number = b2internal::2!";
         var _loc16_:Number = b2internal:: !K;
         var _loc17_:Number = b2internal::^!z;
         this.§0!b§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§0!b§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§0!b§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§0!b§.col2.x = this.§0!b§.col1.y;
         if(_loc16_ + _loc17_ != 0)
         {
            this.§0!b§.col2.y = _loc16_ + _loc17_;
         }
         else
         {
            this.§0!b§.col2.y = 1;
         }
         this.§0!b§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§0!b§.col3.x = this.§0!b§.col1.z;
         this.§0!b§.col3.y = this.§0!b§.col2.z;
         this.§0!b§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§3!,§)
         {
            _loc18_ = this.§,4§.x * _loc12_ + this.§,4§.y * _loc13_;
            if(b2Math.§-Z§(this.§+",§ - this.§ w§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§@!,§ = b2internal::," ;
            }
            else if(_loc18_ <= this.§ w§)
            {
               if(this.§@!,§ != b2internal::<E)
               {
                  this.§@!,§ = b2internal::<E;
                  this.§[!a§.z = 0;
               }
            }
            else if(_loc18_ >= this.§+",§)
            {
               if(this.§@!,§ != b2internal::&!;)
               {
                  this.§@!,§ = b2internal::&!;;
                  this.§[!a§.z = 0;
               }
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
            this.§[!a§.z = 0;
         }
         if(this.§@",§ == false)
         {
            this.§>!8§ = 0;
         }
         if(param1.§3!`§)
         {
            this.§[!a§.x *= param1.§%!k§;
            this.§[!a§.y *= param1.§%!k§;
            this.§>!8§ *= param1.§%!k§;
            _loc19_ = this.§[!a§.x * this.§+w§.x + (this.§>!8§ + this.§[!a§.z) * this.§,4§.x;
            _loc20_ = this.§[!a§.x * this.§+w§.y + (this.§>!8§ + this.§[!a§.z) * this.§,4§.y;
            _loc21_ = this.§[!a§.x * this.m_s1 + this.§[!a§.y + (this.§>!8§ + this.§[!a§.z) * this.m_a1;
            _loc22_ = this.§[!a§.x * this.m_s2 + this.§[!a§.y + (this.§>!8§ + this.§[!a§.z) * this.m_a2;
            _loc2_.§]!1§.x -= b2internal::88 * _loc19_;
            _loc2_.§]!1§.y -= b2internal::88 * _loc20_;
            _loc2_.m_angularVelocity -= b2internal:: !K * _loc21_;
            _loc3_.§]!1§.x += b2internal::2!" * _loc19_;
            _loc3_.§]!1§.y += b2internal::2!" * _loc20_;
            _loc3_.m_angularVelocity += b2internal::^!z * _loc22_;
         }
         else
         {
            this.§[!a§.§'p§();
            this.§>!8§ = 0;
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
         var _loc2_:b2Body = b2internal::9t;
         var _loc3_:b2Body = b2internal::6=;
         var _loc4_:b2Vec2 = _loc2_.§]!1§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§]!1§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§@",§ && this.§@!,§ != b2internal::," )
         {
            _loc14_ = this.§,4§.x * (_loc6_.x - _loc4_.x) + this.§,4§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§?o§ * (this.§^!Z§ - _loc14_);
            _loc16_ = this.§>!8§;
            _loc17_ = param1.§ !&§ * this.§'"%§;
            this.§>!8§ = b2Math.§!P§(this.§>!8§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§>!8§ - _loc16_) * this.§,4§.x;
            _loc9_ = _loc15_ * this.§,4§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::88 * _loc8_;
            _loc4_.y -= b2internal::88 * _loc9_;
            _loc5_ -= b2internal:: !K * _loc10_;
            _loc6_.x += b2internal::2!" * _loc8_;
            _loc6_.y += b2internal::2!" * _loc9_;
            _loc7_ += b2internal::^!z * _loc11_;
         }
         var _loc12_:Number = this.§+w§.x * (_loc6_.x - _loc4_.x) + this.§+w§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§3!,§ && this.§@!,§ != b2internal::!_)
         {
            _loc18_ = this.§,4§.x * (_loc6_.x - _loc4_.x) + this.§,4§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§[!a§.Copy();
            _loc20_ = this.§0!b§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§[!a§.§%!d§(_loc20_);
            if(this.§@!,§ == b2internal::<E)
            {
               this.§[!a§.z = b2Math.§=Q§(this.§[!a§.z,0);
            }
            else if(this.§@!,§ == b2internal::&!;)
            {
               this.§[!a§.z = b2Math.§2!I§(this.§[!a§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§[!a§.z - _loc19_.z) * this.§0!b§.col3.x;
            _loc22_ = -_loc13_ - (this.§[!a§.z - _loc19_.z) * this.§0!b§.col3.y;
            _loc23_ = this.§0!b§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§[!a§.x = _loc23_.x;
            this.§[!a§.y = _loc23_.y;
            _loc20_.x = this.§[!a§.x - _loc19_.x;
            _loc20_.y = this.§[!a§.y - _loc19_.y;
            _loc20_.z = this.§[!a§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§+w§.x + _loc20_.z * this.§,4§.x;
            _loc9_ = _loc20_.x * this.§+w§.y + _loc20_.z * this.§,4§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::88 * _loc8_;
            _loc4_.y -= b2internal::88 * _loc9_;
            _loc5_ -= b2internal:: !K * _loc10_;
            _loc6_.x += b2internal::2!" * _loc8_;
            _loc6_.y += b2internal::2!" * _loc9_;
            _loc7_ += b2internal::^!z * _loc11_;
         }
         else
         {
            _loc24_ = this.§0!b§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§[!a§.x += _loc24_.x;
            this.§[!a§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§+w§.x;
            _loc9_ = _loc24_.x * this.§+w§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::88 * _loc8_;
            _loc4_.y -= b2internal::88 * _loc9_;
            _loc5_ -= b2internal:: !K * _loc10_;
            _loc6_.x += b2internal::2!" * _loc8_;
            _loc6_.y += b2internal::2!" * _loc9_;
            _loc7_ += b2internal::^!z * _loc11_;
         }
         _loc2_.§]!1§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§]!1§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::9t;
         var _loc5_:b2Body = b2internal::6=;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§9!T§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§9!T§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::!!&.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::!!&.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::>r.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::>r.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§3!,§)
         {
            this.§,4§ = b2Math.§?U§(_loc20_,this.§8!6§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§,4§.y - (_loc27_ + _loc23_) * this.§,4§.x;
            this.m_a2 = _loc24_ * this.§,4§.y - _loc25_ * this.§,4§.x;
            _loc35_ = this.§,4§.x * _loc26_ + this.§,4§.y * _loc27_;
            if(b2Math.§-Z§(this.§+",§ - this.§ w§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§!P§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§-Z§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§ w§)
            {
               _loc19_ = b2Math.§!P§(_loc35_ - this.§ w§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§ w§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§+",§)
            {
               _loc19_ = b2Math.§!P§(_loc35_ - this.§+",§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§+",§;
               _loc18_ = true;
            }
         }
         this.§+w§ = b2Math.§?U§(_loc20_,this.§#u§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§+w§.y - (_loc27_ + _loc23_) * this.§+w§.x;
         this.m_s2 = _loc24_ * this.§+w§.y - _loc25_ * this.§+w§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§+w§.x * _loc26_ + this.§+w§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§2!!§;
         _loc16_ = b2Math.§=Q§(_loc16_,b2Math.§-Z§(_loc29_));
         _loc17_ = b2Math.§-Z§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::88;
            _loc13_ = b2internal::2!";
            _loc14_ = b2internal:: !K;
            _loc15_ = b2internal::^!z;
            this.§0!b§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§0!b§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§0!b§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§0!b§.col2.x = this.§0!b§.col1.y;
            if(_loc14_ + _loc15_ != 0)
            {
               this.§0!b§.col2.y = _loc14_ + _loc15_;
            }
            else
            {
               this.§0!b§.col2.y = 1;
            }
            this.§0!b§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§0!b§.col3.x = this.§0!b§.col1.z;
            this.§0!b§.col3.y = this.§0!b§.col2.z;
            this.§0!b§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§0!b§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::88;
            _loc13_ = b2internal::2!";
            _loc14_ = b2internal:: !K;
            _loc15_ = b2internal::^!z;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            if((_loc38_ = _loc14_ + _loc15_) == 0)
            {
               _loc38_ = 1;
            }
            this.§0!b§.col1.Set(_loc36_,_loc37_,0);
            this.§0!b§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§0!b§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§+w§.x + _loc28_.z * this.§,4§.x;
         var _loc32_:Number = _loc28_.x * this.§+w§.y + _loc28_.z * this.§,4§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::88 * _loc31_;
         _loc6_.y -= b2internal::88 * _loc32_;
         _loc7_ -= b2internal:: !K * _loc33_;
         _loc8_.x += b2internal::2!" * _loc31_;
         _loc8_.y += b2internal::2!" * _loc32_;
         _loc9_ += b2internal::^!z * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§53§();
         _loc5_.§53§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

package §%t§
{
   import §&L§.b2Mat22;
   import §&L§.b2Mat33;
   import §&L§.b2Math;
   import §&L§.b2Transform;
   import §&L§.b2Vec2;
   import §&L§.b2Vec3;
   import §+!,§.b2Settings;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §3a§:b2Vec2;
      
      private var §8!g§:b2Vec2;
      
      private var §!L§:Number;
      
      private var §[N§:b2Vec2;
      
      private var §3t§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §5Y§:b2Mat33;
      
      private var §;!?§:b2Vec3;
      
      private var §!!^§:Number;
      
      private var §&4§:Number;
      
      private var §'!X§:Number;
      
      private var §#!O§:Number;
      
      private var §@0§:Number;
      
      private var §;G§:Number;
      
      private var §]p§:Boolean;
      
      private var §&!b§:Boolean;
      
      private var §@!O§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§3a§ = new b2Vec2();
         this.§8!g§ = new b2Vec2();
         this.§[N§ = new b2Vec2();
         this.§3t§ = new b2Vec2();
         this.§5Y§ = new b2Mat33();
         this.§;!?§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§`!V§);
         this.m_localAnchor2.SetV(param1.§6$§);
         this.§3a§.SetV(param1.§"$§);
         this.§8!g§.x = -this.§3a§.y;
         this.§8!g§.y = this.§3a§.x;
         this.§!L§ = param1.§]!4§;
         this.§;!?§.§5b§();
         this.§!!^§ = 0;
         this.§&4§ = 0;
         this.§'!X§ = param1.§8!`§;
         this.§#!O§ = param1.§?7§;
         this.§@0§ = param1.§;!9§;
         this.§;G§ = param1.motorSpeed;
         this.§]p§ = param1.§?P§;
         this.§&!b§ = param1.§"!<§;
         this.§@!O§ = §15§;
         this.§[N§.§5b§();
         this.§3t§.§5b§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §1!G§.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return §&!F§.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§;!?§.x * this.§3t§.x + (this.§&4§ + this.§;!?§.z) * this.§[N§.x),param1 * (this.§;!?§.x * this.§3t§.y + (this.§&4§ + this.§;!?§.z) * this.§[N§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§;!?§.y;
      }
      
      public function §02§() : Number
      {
         var _loc1_:b2Body = §1!G§;
         var _loc2_:b2Body = §&!F§;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2 = _loc2_.GetWorldPoint(this.m_localAnchor2);
         var _loc6_:Number = _loc5_.x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2 = _loc1_.§6y§(this.§3a§);
         return Number(_loc8_.x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §50§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = §1!G§;
         var _loc2_:b2Body = §&!F§;
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
         var _loc15_:b2Vec2 = _loc1_.§6y§(this.§3a§);
         var _loc16_:b2Vec2 = _loc1_.§45§;
         var _loc17_:b2Vec2 = _loc2_.§45§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function § ,§() : Boolean
      {
         return this.§]p§;
      }
      
      public function §>!d§(param1:Boolean) : void
      {
         §1!G§.SetAwake(true);
         §&!F§.SetAwake(true);
         this.§]p§ = param1;
      }
      
      public function §[1§() : Number
      {
         return this.§'!X§;
      }
      
      public function §2T§() : Number
      {
         return this.§#!O§;
      }
      
      public function §^!+§(param1:Number, param2:Number) : void
      {
         §1!G§.SetAwake(true);
         §&!F§.SetAwake(true);
         this.§'!X§ = param1;
         this.§#!O§ = param2;
      }
      
      public function §1!7§() : Boolean
      {
         return this.§&!b§;
      }
      
      public function §2!T§(param1:Boolean) : void
      {
         §1!G§.SetAwake(true);
         §&!F§.SetAwake(true);
         this.§&!b§ = param1;
      }
      
      public function §+!e§(param1:Number) : void
      {
         §1!G§.SetAwake(true);
         §&!F§.SetAwake(true);
         this.§;G§ = param1;
      }
      
      public function §?!&§() : Number
      {
         return this.§;G§;
      }
      
      public function §7S§(param1:Number) : void
      {
         §1!G§.SetAwake(true);
         §&!F§.SetAwake(true);
         this.§@0§ = param1;
      }
      
      public function §7!j§() : Number
      {
         return this.§&4§;
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
         var _loc2_:b2Body = §1!G§;
         var _loc3_:b2Body = §&!F§;
         §,! §.SetV(_loc2_.§>!4§());
         §&l§.SetV(_loc3_.§>!4§());
         var _loc6_:b2Transform = _loc2_.§%!B§();
         var _loc7_:b2Transform = _loc3_.§%!B§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - §,! §.x;
         var _loc9_:Number = this.m_localAnchor1.y - §,! §.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - §&l§.x;
         var _loc11_:Number = this.m_localAnchor2.y - §&l§.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §%]§ = _loc2_.§8[§;
         §1!-§ = _loc3_.§8[§;
         §?!N§ = _loc2_.§&f§;
         §2<§ = _loc3_.§&f§;
         this.§[N§.SetV(b2Math.§2!b§(_loc6_.R,this.§3a§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§[N§.y - (_loc13_ + _loc9_) * this.§[N§.x;
         this.m_a2 = _loc10_ * this.§[N§.y - _loc11_ * this.§[N§.x;
         this.§!!^§ = §%]§ + §1!-§ + §?!N§ * this.m_a1 * this.m_a1 + §2<§ * this.m_a2 * this.m_a2;
         if(this.§!!^§ > Number.MIN_VALUE)
         {
            this.§!!^§ = 1 / this.§!!^§;
         }
         this.§3t§.SetV(b2Math.§2!b§(_loc6_.R,this.§8!g§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§3t§.y - (_loc13_ + _loc9_) * this.§3t§.x;
         this.m_s2 = _loc10_ * this.§3t§.y - _loc11_ * this.§3t§.x;
         var _loc14_:Number = §%]§;
         var _loc15_:Number = §1!-§;
         var _loc16_:Number = §?!N§;
         var _loc17_:Number = §2<§;
         this.§5Y§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§5Y§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§5Y§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§5Y§.col2.x = this.§5Y§.col1.y;
         this.§5Y§.col2.y = _loc16_ + _loc17_;
         this.§5Y§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§5Y§.col3.x = this.§5Y§.col1.z;
         this.§5Y§.col3.y = this.§5Y§.col2.z;
         this.§5Y§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§]p§)
         {
            _loc18_ = this.§[N§.x * _loc12_ + this.§[N§.y * _loc13_;
            if(b2Math.§"b§(this.§#!O§ - this.§'!X§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§@!O§ = §!!4§;
            }
            else if(_loc18_ <= this.§'!X§)
            {
               if(this.§@!O§ != §6!!§)
               {
                  this.§@!O§ = §6!!§;
                  this.§;!?§.z = 0;
               }
            }
            else if(_loc18_ >= this.§#!O§)
            {
               if(this.§@!O§ != §0!&§)
               {
                  this.§@!O§ = §0!&§;
                  this.§;!?§.z = 0;
               }
            }
            else
            {
               this.§@!O§ = §15§;
               this.§;!?§.z = 0;
            }
         }
         else
         {
            this.§@!O§ = §15§;
         }
         if(this.§&!b§ == false)
         {
            this.§&4§ = 0;
         }
         if(param1.§5h§)
         {
            this.§;!?§.x *= param1.§<!1§;
            this.§;!?§.y *= param1.§<!1§;
            this.§&4§ *= param1.§<!1§;
            _loc19_ = this.§;!?§.x * this.§3t§.x + (this.§&4§ + this.§;!?§.z) * this.§[N§.x;
            _loc20_ = this.§;!?§.x * this.§3t§.y + (this.§&4§ + this.§;!?§.z) * this.§[N§.y;
            _loc21_ = this.§;!?§.x * this.m_s1 + this.§;!?§.y + (this.§&4§ + this.§;!?§.z) * this.m_a1;
            _loc22_ = this.§;!?§.x * this.m_s2 + this.§;!?§.y + (this.§&4§ + this.§;!?§.z) * this.m_a2;
            _loc2_.§45§.x -= §%]§ * _loc19_;
            _loc2_.§45§.y -= §%]§ * _loc20_;
            _loc2_.m_angularVelocity -= §?!N§ * _loc21_;
            _loc3_.§45§.x += §1!-§ * _loc19_;
            _loc3_.§45§.y += §1!-§ * _loc20_;
            _loc3_.m_angularVelocity += §2<§ * _loc22_;
         }
         else
         {
            this.§;!?§.§5b§();
            this.§&4§ = 0;
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
         var _loc2_:b2Body = §1!G§;
         var _loc3_:b2Body = §&!F§;
         var _loc4_:b2Vec2 = _loc2_.§45§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§45§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§&!b§ && this.§@!O§ != §!!4§)
         {
            _loc14_ = this.§[N§.x * (_loc6_.x - _loc4_.x) + this.§[N§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§!!^§ * (this.§;G§ - _loc14_);
            _loc16_ = this.§&4§;
            _loc17_ = param1.§`"§ * this.§@0§;
            this.§&4§ = b2Math.§[$§(this.§&4§ + _loc15_,-_loc17_,_loc17_);
            _loc15_ = this.§&4§ - _loc16_;
            _loc8_ = _loc15_ * this.§[N§.x;
            _loc9_ = _loc15_ * this.§[N§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= §%]§ * _loc8_;
            _loc4_.y -= §%]§ * _loc9_;
            _loc5_ -= §?!N§ * _loc10_;
            _loc6_.x += §1!-§ * _loc8_;
            _loc6_.y += §1!-§ * _loc9_;
            _loc7_ += §2<§ * _loc11_;
         }
         var _loc12_:Number = this.§3t§.x * (_loc6_.x - _loc4_.x) + this.§3t§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§]p§ && this.§@!O§ != §15§)
         {
            _loc18_ = this.§[N§.x * (_loc6_.x - _loc4_.x) + this.§[N§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§;!?§.Copy();
            _loc20_ = this.§5Y§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§;!?§.§4!0§(_loc20_);
            if(this.§@!O§ == §6!!§)
            {
               this.§;!?§.z = b2Math.§<p§(this.§;!?§.z,0);
            }
            else if(this.§@!O§ == §0!&§)
            {
               this.§;!?§.z = b2Math.§ if§(this.§;!?§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§;!?§.z - _loc19_.z) * this.§5Y§.col3.x;
            _loc22_ = -_loc13_ - (this.§;!?§.z - _loc19_.z) * this.§5Y§.col3.y;
            _loc23_ = this.§5Y§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§;!?§.x = _loc23_.x;
            this.§;!?§.y = _loc23_.y;
            _loc20_.x = this.§;!?§.x - _loc19_.x;
            _loc20_.y = this.§;!?§.y - _loc19_.y;
            _loc20_.z = this.§;!?§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§3t§.x + _loc20_.z * this.§[N§.x;
            _loc9_ = _loc20_.x * this.§3t§.y + _loc20_.z * this.§[N§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= §%]§ * _loc8_;
            _loc4_.y -= §%]§ * _loc9_;
            _loc5_ -= §?!N§ * _loc10_;
            _loc6_.x += §1!-§ * _loc8_;
            _loc6_.y += §1!-§ * _loc9_;
            _loc7_ += §2<§ * _loc11_;
         }
         else
         {
            _loc24_ = this.§5Y§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§;!?§.x += _loc24_.x;
            this.§;!?§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§3t§.x;
            _loc9_ = _loc24_.x * this.§3t§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= §%]§ * _loc8_;
            _loc4_.y -= §%]§ * _loc9_;
            _loc5_ -= §?!N§ * _loc10_;
            _loc6_.x += §1!-§ * _loc8_;
            _loc6_.y += §1!-§ * _loc9_;
            _loc7_ += §2<§ * _loc11_;
         }
         _loc2_.§45§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§45§.SetV(_loc6_);
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
         var _loc4_:b2Body = §1!G§;
         var _loc5_:b2Body = §&!F§;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§3!H§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§3!H§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - §,! §.x;
         var _loc23_:Number = this.m_localAnchor1.y - §,! §.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - §&l§.x;
         var _loc25_:Number = this.m_localAnchor2.y - §&l§.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§]p§)
         {
            this.§[N§ = b2Math.§2!b§(_loc20_,this.§3a§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§[N§.y - (_loc27_ + _loc23_) * this.§[N§.x;
            this.m_a2 = _loc24_ * this.§[N§.y - _loc25_ * this.§[N§.x;
            _loc35_ = this.§[N§.x * _loc26_ + this.§[N§.y * _loc27_;
            if(b2Math.§"b§(this.§#!O§ - this.§'!X§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§[$§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§"b§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§'!X§)
            {
               _loc19_ = b2Math.§[$§(_loc35_ - this.§'!X§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§'!X§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§#!O§)
            {
               _loc19_ = b2Math.§[$§(_loc35_ - this.§#!O§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§#!O§;
               _loc18_ = true;
            }
         }
         this.§3t§ = b2Math.§2!b§(_loc20_,this.§8!g§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§3t§.y - (_loc27_ + _loc23_) * this.§3t§.x;
         this.m_s2 = _loc24_ * this.§3t§.y - _loc25_ * this.§3t§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§3t§.x * _loc26_ + this.§3t§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§!L§;
         _loc16_ = b2Math.§<p§(_loc16_,b2Math.§"b§(_loc29_));
         _loc17_ = b2Math.§"b§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = §%]§;
            _loc13_ = §1!-§;
            _loc14_ = §?!N§;
            _loc15_ = §2<§;
            this.§5Y§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§5Y§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§5Y§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§5Y§.col2.x = this.§5Y§.col1.y;
            this.§5Y§.col2.y = _loc14_ + _loc15_;
            this.§5Y§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§5Y§.col3.x = this.§5Y§.col1.z;
            this.§5Y§.col3.y = this.§5Y§.col2.z;
            this.§5Y§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§5Y§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = §%]§;
            _loc13_ = §1!-§;
            _loc14_ = §?!N§;
            _loc15_ = §2<§;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§5Y§.col1.Set(_loc36_,_loc37_,0);
            this.§5Y§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§5Y§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§3t§.x + _loc28_.z * this.§[N§.x;
         var _loc32_:Number = _loc28_.x * this.§3t§.y + _loc28_.z * this.§[N§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= §%]§ * _loc31_;
         _loc6_.y -= §%]§ * _loc32_;
         _loc7_ -= §?!N§ * _loc33_;
         _loc8_.x += §1!-§ * _loc31_;
         _loc8_.y += §1!-§ * _loc32_;
         _loc9_ += §2<§ * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§`!e§();
         _loc5_.§`!e§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

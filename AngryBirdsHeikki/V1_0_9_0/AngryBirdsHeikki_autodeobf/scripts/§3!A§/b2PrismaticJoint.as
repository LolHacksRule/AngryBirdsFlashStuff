package §3!A§
{
   import § !_§.b2Mat22;
   import § !_§.b2Mat33;
   import § !_§.b2Math;
   import § !_§.b2Transform;
   import § !_§.b2Vec2;
   import § !_§.b2Vec3;
   import §+&§.b2Settings;
   import §+&§.b2internal;
   import §^!Z§.b2Body;
   import §^!Z§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §<=§:b2Vec2;
      
      private var §8!4§:b2Vec2;
      
      private var §&§:Number;
      
      private var §8u§:b2Vec2;
      
      private var §2!§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §1!c§:b2Mat33;
      
      private var §#I§:b2Vec3;
      
      private var §?!W§:Number;
      
      private var §+!_§:Number;
      
      private var §-s§:Number;
      
      private var §0!S§:Number;
      
      private var §1!J§:Number;
      
      private var §`$§:Number;
      
      private var §`x§:Boolean;
      
      private var §]m§:Boolean;
      
      private var § %§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§<=§ = new b2Vec2();
         this.§8!4§ = new b2Vec2();
         this.§8u§ = new b2Vec2();
         this.§2!§ = new b2Vec2();
         this.§1!c§ = new b2Mat33();
         this.§#I§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§?&§);
         this.m_localAnchor2.SetV(param1.§4t§);
         this.§<=§.SetV(param1.§7!a§);
         this.§8!4§.x = -this.§<=§.y;
         this.§8!4§.y = this.§<=§.x;
         this.§&§ = param1.§9N§;
         this.§#I§.§>!T§();
         this.§?!W§ = 0;
         this.§+!_§ = 0;
         this.§-s§ = param1.§#!0§;
         this.§0!S§ = param1.§5f§;
         this.§1!J§ = param1.§!k§;
         this.§`$§ = param1.motorSpeed;
         this.§`x§ = param1.§1!<§;
         this.§]m§ = param1.§6!O§;
         this.§ %§ = b2internal::9Z;
         this.§8u§.§>!T§();
         this.§2!§.§>!T§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::,".GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::,g.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§#I§.x * this.§2!§.x + (this.§+!_§ + this.§#I§.z) * this.§8u§.x),param1 * (this.§#I§.x * this.§2!§.y + (this.§+!_§ + this.§#I§.z) * this.§8u§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§#I§.y;
      }
      
      public function §#y§() : Number
      {
         var _loc1_:b2Body = b2internal::,";
         var _loc2_:b2Body = b2internal::,g;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§<!d§(this.§<=§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §5!M§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::,";
         var _loc2_:b2Body = b2internal::,g;
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
         var _loc15_:b2Vec2 = _loc1_.§<!d§(this.§<=§);
         var _loc16_:b2Vec2 = _loc1_.§@!1§;
         var _loc17_:b2Vec2 = _loc2_.§@!1§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §<x§() : Boolean
      {
         return this.§`x§;
      }
      
      public function §]!Z§(param1:Boolean) : void
      {
         b2internal::,".SetAwake(true);
         b2internal::,g.SetAwake(true);
         this.§`x§ = param1;
      }
      
      public function §"!A§() : Number
      {
         return this.§-s§;
      }
      
      public function §>7§() : Number
      {
         return this.§0!S§;
      }
      
      public function §9U§(param1:Number, param2:Number) : void
      {
         b2internal::,".SetAwake(true);
         b2internal::,g.SetAwake(true);
         this.§-s§ = param1;
         this.§0!S§ = param2;
      }
      
      public function § !Z§() : Boolean
      {
         return this.§]m§;
      }
      
      public function §&!R§(param1:Boolean) : void
      {
         b2internal::,".SetAwake(true);
         b2internal::,g.SetAwake(true);
         this.§]m§ = param1;
      }
      
      public function §3!V§(param1:Number) : void
      {
         b2internal::,".SetAwake(true);
         b2internal::,g.SetAwake(true);
         this.§`$§ = param1;
      }
      
      public function §-x§() : Number
      {
         return this.§`$§;
      }
      
      public function §0!D§(param1:Number) : void
      {
         b2internal::,".SetAwake(true);
         b2internal::,g.SetAwake(true);
         this.§1!J§ = param1;
      }
      
      public function §%_§() : Number
      {
         return this.§+!_§;
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
         var _loc2_:b2Body = b2internal::,";
         var _loc3_:b2Body = b2internal::,g;
         b2internal::,7.SetV(_loc2_.§=k§());
         b2internal::2G.SetV(_loc3_.§=k§());
         var _loc6_:b2Transform = _loc2_.§<!2§();
         var _loc7_:b2Transform = _loc3_.§<!2§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::,7.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::,7.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::2G.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::2G.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §04§ = _loc2_.§1!+§;
         §'2§ = _loc3_.§1!+§;
         §+!J§ = _loc2_.§-!f§;
         §"d§ = _loc3_.§-!f§;
         this.§8u§.SetV(b2Math.§"!a§(_loc6_.R,this.§<=§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§8u§.y - (_loc13_ + _loc9_) * this.§8u§.x;
         this.m_a2 = _loc10_ * this.§8u§.y - _loc11_ * this.§8u§.x;
         this.§?!W§ = b2internal::04 + b2internal::'2 + b2internal::+!J * this.m_a1 * this.m_a1 + b2internal::"d * this.m_a2 * this.m_a2;
         if(this.§?!W§ > Number.MIN_VALUE)
         {
            this.§?!W§ = 1 / this.§?!W§;
         }
         this.§2!§.SetV(b2Math.§"!a§(_loc6_.R,this.§8!4§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§2!§.y - (_loc13_ + _loc9_) * this.§2!§.x;
         this.m_s2 = _loc10_ * this.§2!§.y - _loc11_ * this.§2!§.x;
         var _loc14_:Number = b2internal::04;
         var _loc15_:Number = b2internal::'2;
         var _loc16_:Number = b2internal::+!J;
         var _loc17_:Number = b2internal::"d;
         this.§1!c§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§1!c§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§1!c§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§1!c§.col2.x = this.§1!c§.col1.y;
         this.§1!c§.col2.y = _loc16_ + _loc17_;
         this.§1!c§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§1!c§.col3.x = this.§1!c§.col1.z;
         this.§1!c§.col3.y = this.§1!c§.col2.z;
         this.§1!c§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§`x§)
         {
            _loc18_ = this.§8u§.x * _loc12_ + this.§8u§.y * _loc13_;
            if(b2Math.§=!1§(this.§0!S§ - this.§-s§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§ %§ = b2internal::1!G;
            }
            else if(_loc18_ <= this.§-s§)
            {
               if(this.§ %§ != b2internal::%!P)
               {
                  this.§ %§ = b2internal::%!P;
                  this.§#I§.z = 0;
               }
            }
            else if(_loc18_ >= this.§0!S§)
            {
               if(this.§ %§ != b2internal::7L)
               {
                  this.§ %§ = b2internal::7L;
                  this.§#I§.z = 0;
               }
            }
            else
            {
               this.§ %§ = b2internal::9Z;
               this.§#I§.z = 0;
            }
         }
         else
         {
            this.§ %§ = b2internal::9Z;
         }
         if(this.§]m§ == false)
         {
            this.§+!_§ = 0;
         }
         if(param1.§9!N§)
         {
            this.§#I§.x *= param1.§>x§;
            this.§#I§.y *= param1.§>x§;
            this.§+!_§ *= param1.§>x§;
            _loc19_ = this.§#I§.x * this.§2!§.x + (this.§+!_§ + this.§#I§.z) * this.§8u§.x;
            _loc20_ = this.§#I§.x * this.§2!§.y + (this.§+!_§ + this.§#I§.z) * this.§8u§.y;
            _loc21_ = this.§#I§.x * this.m_s1 + this.§#I§.y + (this.§+!_§ + this.§#I§.z) * this.m_a1;
            _loc22_ = this.§#I§.x * this.m_s2 + this.§#I§.y + (this.§+!_§ + this.§#I§.z) * this.m_a2;
            _loc2_.§@!1§.x -= b2internal::04 * _loc19_;
            _loc2_.§@!1§.y -= b2internal::04 * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::+!J * _loc21_;
            _loc3_.§@!1§.x += b2internal::'2 * _loc19_;
            _loc3_.§@!1§.y += b2internal::'2 * _loc20_;
            _loc3_.m_angularVelocity += b2internal::"d * _loc22_;
         }
         else
         {
            this.§#I§.§>!T§();
            this.§+!_§ = 0;
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
         var _loc2_:b2Body = b2internal::,";
         var _loc3_:b2Body = b2internal::,g;
         var _loc4_:b2Vec2 = _loc2_.§@!1§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§@!1§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§]m§ && this.§ %§ != b2internal::1!G)
         {
            _loc14_ = this.§8u§.x * (_loc6_.x - _loc4_.x) + this.§8u§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§?!W§ * (this.§`$§ - _loc14_);
            _loc16_ = this.§+!_§;
            _loc17_ = param1.§]!"§ * this.§1!J§;
            this.§+!_§ = b2Math.§-F§(this.§+!_§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§+!_§ - _loc16_) * this.§8u§.x;
            _loc9_ = _loc15_ * this.§8u§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::04 * _loc8_;
            _loc4_.y -= b2internal::04 * _loc9_;
            _loc5_ -= b2internal::+!J * _loc10_;
            _loc6_.x += b2internal::'2 * _loc8_;
            _loc6_.y += b2internal::'2 * _loc9_;
            _loc7_ += b2internal::"d * _loc11_;
         }
         var _loc12_:Number = this.§2!§.x * (_loc6_.x - _loc4_.x) + this.§2!§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§`x§ && this.§ %§ != b2internal::9Z)
         {
            _loc18_ = this.§8u§.x * (_loc6_.x - _loc4_.x) + this.§8u§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§#I§.Copy();
            _loc20_ = this.§1!c§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§#I§.§'5§(_loc20_);
            if(this.§ %§ == b2internal::%!P)
            {
               this.§#I§.z = b2Math.§,!>§(this.§#I§.z,0);
            }
            else if(this.§ %§ == b2internal::7L)
            {
               this.§#I§.z = b2Math.§;Q§(this.§#I§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§#I§.z - _loc19_.z) * this.§1!c§.col3.x;
            _loc22_ = -_loc13_ - (this.§#I§.z - _loc19_.z) * this.§1!c§.col3.y;
            _loc23_ = this.§1!c§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§#I§.x = _loc23_.x;
            this.§#I§.y = _loc23_.y;
            _loc20_.x = this.§#I§.x - _loc19_.x;
            _loc20_.y = this.§#I§.y - _loc19_.y;
            _loc20_.z = this.§#I§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§2!§.x + _loc20_.z * this.§8u§.x;
            _loc9_ = _loc20_.x * this.§2!§.y + _loc20_.z * this.§8u§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::04 * _loc8_;
            _loc4_.y -= b2internal::04 * _loc9_;
            _loc5_ -= b2internal::+!J * _loc10_;
            _loc6_.x += b2internal::'2 * _loc8_;
            _loc6_.y += b2internal::'2 * _loc9_;
            _loc7_ += b2internal::"d * _loc11_;
         }
         else
         {
            _loc24_ = this.§1!c§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§#I§.x += _loc24_.x;
            this.§#I§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§2!§.x;
            _loc9_ = _loc24_.x * this.§2!§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::04 * _loc8_;
            _loc4_.y -= b2internal::04 * _loc9_;
            _loc5_ -= b2internal::+!J * _loc10_;
            _loc6_.x += b2internal::'2 * _loc8_;
            _loc6_.y += b2internal::'2 * _loc9_;
            _loc7_ += b2internal::"d * _loc11_;
         }
         _loc2_.§@!1§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§@!1§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::,";
         var _loc5_:b2Body = b2internal::,g;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§<l§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§<l§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::,7.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::,7.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::2G.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::2G.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§`x§)
         {
            this.§8u§ = b2Math.§"!a§(_loc20_,this.§<=§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§8u§.y - (_loc27_ + _loc23_) * this.§8u§.x;
            this.m_a2 = _loc24_ * this.§8u§.y - _loc25_ * this.§8u§.x;
            _loc35_ = this.§8u§.x * _loc26_ + this.§8u§.y * _loc27_;
            if(b2Math.§=!1§(this.§0!S§ - this.§-s§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§-F§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§=!1§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§-s§)
            {
               _loc19_ = b2Math.§-F§(_loc35_ - this.§-s§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§-s§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§0!S§)
            {
               _loc19_ = b2Math.§-F§(_loc35_ - this.§0!S§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§0!S§;
               _loc18_ = true;
            }
         }
         this.§2!§ = b2Math.§"!a§(_loc20_,this.§8!4§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§2!§.y - (_loc27_ + _loc23_) * this.§2!§.x;
         this.m_s2 = _loc24_ * this.§2!§.y - _loc25_ * this.§2!§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§2!§.x * _loc26_ + this.§2!§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§&§;
         _loc16_ = b2Math.§,!>§(_loc16_,b2Math.§=!1§(_loc29_));
         _loc17_ = b2Math.§=!1§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::04;
            _loc13_ = b2internal::'2;
            _loc14_ = b2internal::+!J;
            _loc15_ = b2internal::"d;
            this.§1!c§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§1!c§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§1!c§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§1!c§.col2.x = this.§1!c§.col1.y;
            this.§1!c§.col2.y = _loc14_ + _loc15_;
            this.§1!c§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§1!c§.col3.x = this.§1!c§.col1.z;
            this.§1!c§.col3.y = this.§1!c§.col2.z;
            this.§1!c§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§1!c§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::04;
            _loc13_ = b2internal::'2;
            _loc14_ = b2internal::+!J;
            _loc15_ = b2internal::"d;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§1!c§.col1.Set(_loc36_,_loc37_,0);
            this.§1!c§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§1!c§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§2!§.x + _loc28_.z * this.§8u§.x;
         var _loc32_:Number = _loc28_.x * this.§2!§.y + _loc28_.z * this.§8u§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::04 * _loc31_;
         _loc6_.y -= b2internal::04 * _loc32_;
         _loc7_ -= b2internal::+!J * _loc33_;
         _loc8_.x += b2internal::'2 * _loc31_;
         _loc8_.y += b2internal::'2 * _loc32_;
         _loc9_ += b2internal::"d * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§1&§();
         _loc5_.§1&§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

package §&g§
{
   import § !k§.b2Body;
   import § !k§.b2TimeStep;
   import §!"8§.b2Mat22;
   import §!"8§.b2Mat33;
   import §!"8§.b2Math;
   import §!"8§.b2Transform;
   import §!"8§.b2Vec2;
   import §!"8§.b2Vec3;
   import §in§.b2Settings;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §`7§:b2Vec2;
      
      private var §46§:b2Vec2;
      
      private var §-c§:Number;
      
      private var §1"<§:b2Vec2;
      
      private var §-!y§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §>?§:b2Mat33;
      
      private var §"!J§:b2Vec3;
      
      private var §&!W§:Number;
      
      private var §@!k§:Number;
      
      private var §#2§:Number;
      
      private var §&!P§:Number;
      
      private var §+!%§:Number;
      
      private var §@!v§:Number;
      
      private var § `§:Boolean;
      
      private var § !d§:Boolean;
      
      private var §,o§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§`7§ = new b2Vec2();
         this.§46§ = new b2Vec2();
         this.§1"<§ = new b2Vec2();
         this.§-!y§ = new b2Vec2();
         this.§>?§ = new b2Mat33();
         this.§"!J§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§'!v§);
         this.m_localAnchor2.SetV(param1.§?!m§);
         this.§`7§.SetV(param1.§8!W§);
         this.§46§.x = -this.§`7§.y;
         this.§46§.y = this.§`7§.x;
         this.§-c§ = param1.§&!D§;
         this.§"!J§.§]!;§();
         this.§&!W§ = 0;
         this.§@!k§ = 0;
         this.§#2§ = param1.§4!R§;
         this.§&!P§ = param1.§%!&§;
         this.§+!%§ = param1.§;X§;
         this.§@!v§ = param1.motorSpeed;
         this.§ `§ = param1.§?!v§;
         this.§ !d§ = param1.§^"=§;
         this.§,o§ = b2internal::9!5;
         this.§1"<§.§]!;§();
         this.§-!y§.§]!;§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::5!A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: k.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§"!J§.x * this.§-!y§.x + (this.§@!k§ + this.§"!J§.z) * this.§1"<§.x),param1 * (this.§"!J§.x * this.§-!y§.y + (this.§@!k§ + this.§"!J§.z) * this.§1"<§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§"!J§.y;
      }
      
      public function §1"9§() : Number
      {
         var _loc1_:b2Body = b2internal::5!A;
         var _loc2_:b2Body = b2internal:: k;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§#F§(this.§`7§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §1#§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::5!A;
         var _loc2_:b2Body = b2internal:: k;
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
         var _loc15_:b2Vec2 = _loc1_.§#F§(this.§`7§);
         var _loc16_:b2Vec2 = _loc1_.§>! §;
         var _loc17_:b2Vec2 = _loc2_.§>! §;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §+!'§() : Boolean
      {
         return this.§ `§;
      }
      
      public function § !D§(param1:Boolean) : void
      {
         b2internal::5!A.SetAwake(true);
         b2internal:: k.SetAwake(true);
         this.§ `§ = param1;
      }
      
      public function §9=§() : Number
      {
         return this.§#2§;
      }
      
      public function §;"=§() : Number
      {
         return this.§&!P§;
      }
      
      public function §4]§(param1:Number, param2:Number) : void
      {
         b2internal::5!A.SetAwake(true);
         b2internal:: k.SetAwake(true);
         this.§#2§ = param1;
         this.§&!P§ = param2;
      }
      
      public function §08§() : Boolean
      {
         return this.§ !d§;
      }
      
      public function §'!3§(param1:Boolean) : void
      {
         b2internal::5!A.SetAwake(true);
         b2internal:: k.SetAwake(true);
         this.§ !d§ = param1;
      }
      
      public function §1!?§(param1:Number) : void
      {
         b2internal::5!A.SetAwake(true);
         b2internal:: k.SetAwake(true);
         this.§@!v§ = param1;
      }
      
      public function §<7§() : Number
      {
         return this.§@!v§;
      }
      
      public function §`!+§(param1:Number) : void
      {
         b2internal::5!A.SetAwake(true);
         b2internal:: k.SetAwake(true);
         this.§+!%§ = param1;
      }
      
      public function §8!b§() : Number
      {
         return this.§@!k§;
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
         var _loc2_:b2Body = b2internal::5!A;
         var _loc3_:b2Body = b2internal:: k;
         b2internal::&!O.SetV(_loc2_.§-!;§());
         b2internal::;!0.SetV(_loc3_.§-!;§());
         var _loc6_:b2Transform = _loc2_.§[H§();
         var _loc7_:b2Transform = _loc3_.§[H§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::&!O.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::&!O.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::;!0.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::;!0.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §>k§ = _loc2_.§^1§;
         § =§ = _loc3_.§^1§;
         §!0§ = _loc2_.§?y§;
         §'s§ = _loc3_.§?y§;
         this.§1"<§.SetV(b2Math.§#-§(_loc6_.R,this.§`7§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§1"<§.y - (_loc13_ + _loc9_) * this.§1"<§.x;
         this.m_a2 = _loc10_ * this.§1"<§.y - _loc11_ * this.§1"<§.x;
         this.§&!W§ = b2internal::>k + b2internal:: = + b2internal::!0 * this.m_a1 * this.m_a1 + b2internal::'s * this.m_a2 * this.m_a2;
         if(this.§&!W§ > Number.MIN_VALUE)
         {
            this.§&!W§ = 1 / this.§&!W§;
         }
         this.§-!y§.SetV(b2Math.§#-§(_loc6_.R,this.§46§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§-!y§.y - (_loc13_ + _loc9_) * this.§-!y§.x;
         this.m_s2 = _loc10_ * this.§-!y§.y - _loc11_ * this.§-!y§.x;
         var _loc14_:Number = b2internal::>k;
         var _loc15_:Number = b2internal:: =;
         var _loc16_:Number = b2internal::!0;
         var _loc17_:Number = b2internal::'s;
         this.§>?§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§>?§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§>?§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§>?§.col2.x = this.§>?§.col1.y;
         this.§>?§.col2.y = _loc16_ + _loc17_;
         this.§>?§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§>?§.col3.x = this.§>?§.col1.z;
         this.§>?§.col3.y = this.§>?§.col2.z;
         this.§>?§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§ `§)
         {
            _loc18_ = this.§1"<§.x * _loc12_ + this.§1"<§.y * _loc13_;
            if(b2Math.§'!I§(this.§&!P§ - this.§#2§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§,o§ = b2internal::"!s;
            }
            else if(_loc18_ <= this.§#2§)
            {
               if(this.§,o§ != b2internal::>"%)
               {
                  this.§,o§ = b2internal::>"%;
                  this.§"!J§.z = 0;
               }
            }
            else if(_loc18_ >= this.§&!P§)
            {
               if(this.§,o§ != b2internal::0J)
               {
                  this.§,o§ = b2internal::0J;
                  this.§"!J§.z = 0;
               }
            }
            else
            {
               this.§,o§ = b2internal::9!5;
               this.§"!J§.z = 0;
            }
         }
         else
         {
            this.§,o§ = b2internal::9!5;
         }
         if(this.§ !d§ == false)
         {
            this.§@!k§ = 0;
         }
         if(param1.§+!D§)
         {
            this.§"!J§.x *= param1.§=G§;
            this.§"!J§.y *= param1.§=G§;
            this.§@!k§ *= param1.§=G§;
            _loc19_ = this.§"!J§.x * this.§-!y§.x + (this.§@!k§ + this.§"!J§.z) * this.§1"<§.x;
            _loc20_ = this.§"!J§.x * this.§-!y§.y + (this.§@!k§ + this.§"!J§.z) * this.§1"<§.y;
            _loc21_ = this.§"!J§.x * this.m_s1 + this.§"!J§.y + (this.§@!k§ + this.§"!J§.z) * this.m_a1;
            _loc22_ = this.§"!J§.x * this.m_s2 + this.§"!J§.y + (this.§@!k§ + this.§"!J§.z) * this.m_a2;
            _loc2_.§>! §.x -= b2internal::>k * _loc19_;
            _loc2_.§>! §.y -= b2internal::>k * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::!0 * _loc21_;
            _loc3_.§>! §.x += b2internal:: = * _loc19_;
            _loc3_.§>! §.y += b2internal:: = * _loc20_;
            _loc3_.m_angularVelocity += b2internal::'s * _loc22_;
         }
         else
         {
            this.§"!J§.§]!;§();
            this.§@!k§ = 0;
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
         var _loc2_:b2Body = b2internal::5!A;
         var _loc3_:b2Body = b2internal:: k;
         var _loc4_:b2Vec2 = _loc2_.§>! §;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§>! §;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§ !d§ && this.§,o§ != b2internal::"!s)
         {
            _loc14_ = this.§1"<§.x * (_loc6_.x - _loc4_.x) + this.§1"<§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§&!W§ * (this.§@!v§ - _loc14_);
            _loc16_ = this.§@!k§;
            _loc17_ = param1.§7!x§ * this.§+!%§;
            this.§@!k§ = b2Math.§`!L§(this.§@!k§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§@!k§ - _loc16_) * this.§1"<§.x;
            _loc9_ = _loc15_ * this.§1"<§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::>k * _loc8_;
            _loc4_.y -= b2internal::>k * _loc9_;
            _loc5_ -= b2internal::!0 * _loc10_;
            _loc6_.x += b2internal:: = * _loc8_;
            _loc6_.y += b2internal:: = * _loc9_;
            _loc7_ += b2internal::'s * _loc11_;
         }
         var _loc12_:Number = this.§-!y§.x * (_loc6_.x - _loc4_.x) + this.§-!y§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§ `§ && this.§,o§ != b2internal::9!5)
         {
            _loc18_ = this.§1"<§.x * (_loc6_.x - _loc4_.x) + this.§1"<§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§"!J§.Copy();
            _loc20_ = this.§>?§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§"!J§.§>!?§(_loc20_);
            if(this.§,o§ == b2internal::>"%)
            {
               this.§"!J§.z = b2Math.§&z§(this.§"!J§.z,0);
            }
            else if(this.§,o§ == b2internal::0J)
            {
               this.§"!J§.z = b2Math.§6J§(this.§"!J§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§"!J§.z - _loc19_.z) * this.§>?§.col3.x;
            _loc22_ = -_loc13_ - (this.§"!J§.z - _loc19_.z) * this.§>?§.col3.y;
            _loc23_ = this.§>?§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§"!J§.x = _loc23_.x;
            this.§"!J§.y = _loc23_.y;
            _loc20_.x = this.§"!J§.x - _loc19_.x;
            _loc20_.y = this.§"!J§.y - _loc19_.y;
            _loc20_.z = this.§"!J§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§-!y§.x + _loc20_.z * this.§1"<§.x;
            _loc9_ = _loc20_.x * this.§-!y§.y + _loc20_.z * this.§1"<§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::>k * _loc8_;
            _loc4_.y -= b2internal::>k * _loc9_;
            _loc5_ -= b2internal::!0 * _loc10_;
            _loc6_.x += b2internal:: = * _loc8_;
            _loc6_.y += b2internal:: = * _loc9_;
            _loc7_ += b2internal::'s * _loc11_;
         }
         else
         {
            _loc24_ = this.§>?§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§"!J§.x += _loc24_.x;
            this.§"!J§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§-!y§.x;
            _loc9_ = _loc24_.x * this.§-!y§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::>k * _loc8_;
            _loc4_.y -= b2internal::>k * _loc9_;
            _loc5_ -= b2internal::!0 * _loc10_;
            _loc6_.x += b2internal:: = * _loc8_;
            _loc6_.y += b2internal:: = * _loc9_;
            _loc7_ += b2internal::'s * _loc11_;
         }
         _loc2_.§>! §.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§>! §.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::5!A;
         var _loc5_:b2Body = b2internal:: k;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§>!O§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§>!O§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::&!O.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::&!O.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::;!0.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::;!0.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§ `§)
         {
            this.§1"<§ = b2Math.§#-§(_loc20_,this.§`7§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§1"<§.y - (_loc27_ + _loc23_) * this.§1"<§.x;
            this.m_a2 = _loc24_ * this.§1"<§.y - _loc25_ * this.§1"<§.x;
            _loc35_ = this.§1"<§.x * _loc26_ + this.§1"<§.y * _loc27_;
            if(b2Math.§'!I§(this.§&!P§ - this.§#2§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§`!L§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§'!I§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§#2§)
            {
               _loc19_ = b2Math.§`!L§(_loc35_ - this.§#2§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§#2§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§&!P§)
            {
               _loc19_ = b2Math.§`!L§(_loc35_ - this.§&!P§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§&!P§;
               _loc18_ = true;
            }
         }
         this.§-!y§ = b2Math.§#-§(_loc20_,this.§46§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§-!y§.y - (_loc27_ + _loc23_) * this.§-!y§.x;
         this.m_s2 = _loc24_ * this.§-!y§.y - _loc25_ * this.§-!y§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§-!y§.x * _loc26_ + this.§-!y§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§-c§;
         _loc16_ = b2Math.§&z§(_loc16_,b2Math.§'!I§(_loc29_));
         _loc17_ = b2Math.§'!I§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::>k;
            _loc13_ = b2internal:: =;
            _loc14_ = b2internal::!0;
            _loc15_ = b2internal::'s;
            this.§>?§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§>?§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§>?§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§>?§.col2.x = this.§>?§.col1.y;
            this.§>?§.col2.y = _loc14_ + _loc15_;
            this.§>?§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§>?§.col3.x = this.§>?§.col1.z;
            this.§>?§.col3.y = this.§>?§.col2.z;
            this.§>?§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§>?§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::>k;
            _loc13_ = b2internal:: =;
            _loc14_ = b2internal::!0;
            _loc15_ = b2internal::'s;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§>?§.col1.Set(_loc36_,_loc37_,0);
            this.§>?§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§>?§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§-!y§.x + _loc28_.z * this.§1"<§.x;
         var _loc32_:Number = _loc28_.x * this.§-!y§.y + _loc28_.z * this.§1"<§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::>k * _loc31_;
         _loc6_.y -= b2internal::>k * _loc32_;
         _loc7_ -= b2internal::!0 * _loc33_;
         _loc8_.x += b2internal:: = * _loc31_;
         _loc8_.y += b2internal:: = * _loc32_;
         _loc9_ += b2internal::'s * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§?=§();
         _loc5_.§?=§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

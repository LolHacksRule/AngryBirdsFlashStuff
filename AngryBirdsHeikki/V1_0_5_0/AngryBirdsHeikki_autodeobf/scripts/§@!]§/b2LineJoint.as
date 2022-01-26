package §@!]§
{
   import §,!3§.b2Mat22;
   import §,!3§.b2Math;
   import §,!3§.b2Transform;
   import §,!3§.b2Vec2;
   import §3'§.b2Settings;
   import §3'§.b2internal;
   import §?!F§.b2Body;
   import §?!F§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var § H§:b2Vec2;
      
      private var §9L§:b2Vec2;
      
      private var §+!%§:b2Vec2;
      
      private var §9!?§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §4Y§:b2Mat22;
      
      private var §9y§:b2Vec2;
      
      private var §"7§:Number;
      
      private var §3?§:Number;
      
      private var §6d§:Number;
      
      private var §>t§:Number;
      
      private var §+!S§:Number;
      
      private var §2%§:Number;
      
      private var §29§:Boolean;
      
      private var §<Y§:Boolean;
      
      private var §[-§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§ H§ = new b2Vec2();
         this.§9L§ = new b2Vec2();
         this.§+!%§ = new b2Vec2();
         this.§9!?§ = new b2Vec2();
         this.§4Y§ = new b2Mat22();
         this.§9y§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§&!0§);
         this.m_localAnchor2.SetV(param1.§,%§);
         this.§ H§.SetV(param1.§@F§);
         this.§9L§.x = -this.§ H§.y;
         this.§9L§.y = this.§ H§.x;
         this.§9y§.§#!d§();
         this.§"7§ = 0;
         this.§3?§ = 0;
         this.§6d§ = param1.§!s§;
         this.§>t§ = param1.§7h§;
         this.§+!S§ = param1.§7![§;
         this.§2%§ = param1.motorSpeed;
         this.§29§ = param1.§8!&§;
         this.§<Y§ = param1.§`!Y§;
         this.§[-§ = b2internal::]W;
         this.§+!%§.§#!d§();
         this.§9!?§.§#!d§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::]!O.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!=.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§9y§.x * this.§9!?§.x + (this.§3?§ + this.§9y§.y) * this.§+!%§.x),param1 * (this.§9y§.x * this.§9!?§.y + (this.§3?§ + this.§9y§.y) * this.§+!%§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§9y§.y;
      }
      
      public function §-c§() : Number
      {
         var _loc1_:b2Body = b2internal::]!O;
         var _loc2_:b2Body = b2internal::2!=;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§=S§(this.§ H§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §<+§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::]!O;
         var _loc2_:b2Body = b2internal::2!=;
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
         var _loc15_:b2Vec2 = _loc1_.§=S§(this.§ H§);
         var _loc16_:b2Vec2 = _loc1_.§#A§;
         var _loc17_:b2Vec2 = _loc2_.§#A§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function § !'§() : Boolean
      {
         return this.§29§;
      }
      
      public function §6m§(param1:Boolean) : void
      {
         b2internal::]!O.SetAwake(true);
         b2internal::2!=.SetAwake(true);
         this.§29§ = param1;
      }
      
      public function §!e§() : Number
      {
         return this.§6d§;
      }
      
      public function §<!K§() : Number
      {
         return this.§>t§;
      }
      
      public function §`$§(param1:Number, param2:Number) : void
      {
         b2internal::]!O.SetAwake(true);
         b2internal::2!=.SetAwake(true);
         this.§6d§ = param1;
         this.§>t§ = param2;
      }
      
      public function §8A§() : Boolean
      {
         return this.§<Y§;
      }
      
      public function §60§(param1:Boolean) : void
      {
         b2internal::]!O.SetAwake(true);
         b2internal::2!=.SetAwake(true);
         this.§<Y§ = param1;
      }
      
      public function §0U§(param1:Number) : void
      {
         b2internal::]!O.SetAwake(true);
         b2internal::2!=.SetAwake(true);
         this.§2%§ = param1;
      }
      
      public function §3R§() : Number
      {
         return this.§2%§;
      }
      
      public function §^a§(param1:Number) : void
      {
         b2internal::]!O.SetAwake(true);
         b2internal::2!=.SetAwake(true);
         this.§+!S§ = param1;
      }
      
      public function §0<§() : Number
      {
         return this.§+!S§;
      }
      
      public function §+!P§() : Number
      {
         return this.§3?§;
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
         var _loc2_:b2Body = b2internal::]!O;
         var _loc3_:b2Body = b2internal::2!=;
         b2internal::3!$.SetV(_loc2_.§7!A§());
         b2internal::"D.SetV(_loc3_.§7!A§());
         var _loc6_:b2Transform = _loc2_.§50§();
         var _loc7_:b2Transform = _loc3_.§50§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::3!$.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::3!$.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::"D.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::"D.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §,o§ = _loc2_.§;!E§;
         §4!I§ = _loc3_.§;!E§;
         §#e§ = _loc2_.§8z§;
         §9!&§ = _loc3_.§8z§;
         this.§+!%§.SetV(b2Math.§8]§(_loc6_.R,this.§ H§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§+!%§.y - (_loc13_ + _loc9_) * this.§+!%§.x;
         this.m_a2 = _loc10_ * this.§+!%§.y - _loc11_ * this.§+!%§.x;
         this.§"7§ = b2internal::,o + b2internal::4!I + b2internal::#e * this.m_a1 * this.m_a1 + b2internal::9!& * this.m_a2 * this.m_a2;
         this.§"7§ = this.§"7§ > Number.MIN_VALUE ? Number(1 / this.§"7§) : Number(0);
         this.§9!?§.SetV(b2Math.§8]§(_loc6_.R,this.§9L§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§9!?§.y - (_loc13_ + _loc9_) * this.§9!?§.x;
         this.m_s2 = _loc10_ * this.§9!?§.y - _loc11_ * this.§9!?§.x;
         var _loc14_:Number = b2internal::,o;
         var _loc15_:Number = b2internal::4!I;
         var _loc16_:Number = b2internal::#e;
         var _loc17_:Number = b2internal::9!&;
         this.§4Y§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§4Y§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§4Y§.col2.x = this.§4Y§.col1.y;
         this.§4Y§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§29§)
         {
            _loc18_ = this.§+!%§.x * _loc12_ + this.§+!%§.y * _loc13_;
            if(b2Math.§?A§(this.§>t§ - this.§6d§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§[-§ = b2internal::?&;
            }
            else if(_loc18_ <= this.§6d§)
            {
               if(this.§[-§ != b2internal::;!=)
               {
                  this.§[-§ = b2internal::;!=;
                  this.§9y§.y = 0;
               }
            }
            else if(_loc18_ >= this.§>t§)
            {
               if(this.§[-§ != b2internal::[z)
               {
                  this.§[-§ = b2internal::[z;
                  this.§9y§.y = 0;
               }
            }
            else
            {
               this.§[-§ = b2internal::]W;
               this.§9y§.y = 0;
            }
         }
         else
         {
            this.§[-§ = b2internal::]W;
         }
         if(this.§<Y§ == false)
         {
            this.§3?§ = 0;
         }
         if(param1.§3+§)
         {
            this.§9y§.x *= param1.§%"§;
            this.§9y§.y *= param1.§%"§;
            this.§3?§ *= param1.§%"§;
            _loc19_ = this.§9y§.x * this.§9!?§.x + (this.§3?§ + this.§9y§.y) * this.§+!%§.x;
            _loc20_ = this.§9y§.x * this.§9!?§.y + (this.§3?§ + this.§9y§.y) * this.§+!%§.y;
            _loc21_ = this.§9y§.x * this.m_s1 + (this.§3?§ + this.§9y§.y) * this.m_a1;
            _loc22_ = this.§9y§.x * this.m_s2 + (this.§3?§ + this.§9y§.y) * this.m_a2;
            _loc2_.§#A§.x -= b2internal::,o * _loc19_;
            _loc2_.§#A§.y -= b2internal::,o * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::#e * _loc21_;
            _loc3_.§#A§.x += b2internal::4!I * _loc19_;
            _loc3_.§#A§.y += b2internal::4!I * _loc20_;
            _loc3_.m_angularVelocity += b2internal::9!& * _loc22_;
         }
         else
         {
            this.§9y§.§#!d§();
            this.§3?§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:b2Vec2 = null;
         var _loc19_:b2Vec2 = null;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc2_:b2Body = b2internal::]!O;
         var _loc3_:b2Body = b2internal::2!=;
         var _loc4_:b2Vec2 = _loc2_.§#A§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§#A§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§<Y§ && this.§[-§ != b2internal::?&)
         {
            _loc13_ = this.§+!%§.x * (_loc6_.x - _loc4_.x) + this.§+!%§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§"7§ * (this.§2%§ - _loc13_);
            _loc15_ = this.§3?§;
            _loc16_ = param1.§3v§ * this.§+!S§;
            this.§3?§ = b2Math.§8![§(this.§3?§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§3?§ - _loc15_) * this.§+!%§.x;
            _loc9_ = _loc14_ * this.§+!%§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::,o * _loc8_;
            _loc4_.y -= b2internal::,o * _loc9_;
            _loc5_ -= b2internal::#e * _loc10_;
            _loc6_.x += b2internal::4!I * _loc8_;
            _loc6_.y += b2internal::4!I * _loc9_;
            _loc7_ += b2internal::9!& * _loc11_;
         }
         var _loc12_:Number = this.§9!?§.x * (_loc6_.x - _loc4_.x) + this.§9!?§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§29§ && this.§[-§ != b2internal::]W)
         {
            _loc17_ = this.§+!%§.x * (_loc6_.x - _loc4_.x) + this.§+!%§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§9y§.Copy();
            _loc19_ = this.§4Y§.§]!H§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§9y§.§03§(_loc19_);
            if(this.§[-§ == b2internal::;!=)
            {
               this.§9y§.y = b2Math.§#!0§(this.§9y§.y,0);
            }
            else if(this.§[-§ == b2internal::[z)
            {
               this.§9y§.y = b2Math.§3d§(this.§9y§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§9y§.y - _loc18_.y) * this.§4Y§.col2.x;
            if(this.§4Y§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§4Y§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§9y§.x = _loc21_;
            _loc19_.x = this.§9y§.x - _loc18_.x;
            _loc19_.y = this.§9y§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§9!?§.x + _loc19_.y * this.§+!%§.x;
            _loc9_ = _loc19_.x * this.§9!?§.y + _loc19_.y * this.§+!%§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::,o * _loc8_;
            _loc4_.y -= b2internal::,o * _loc9_;
            _loc5_ -= b2internal::#e * _loc10_;
            _loc6_.x += b2internal::4!I * _loc8_;
            _loc6_.y += b2internal::4!I * _loc9_;
            _loc7_ += b2internal::9!& * _loc11_;
         }
         else
         {
            if(this.§4Y§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§4Y§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§9y§.x += _loc22_;
            _loc8_ = _loc22_ * this.§9!?§.x;
            _loc9_ = _loc22_ * this.§9!?§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::,o * _loc8_;
            _loc4_.y -= b2internal::,o * _loc9_;
            _loc5_ -= b2internal::#e * _loc10_;
            _loc6_.x += b2internal::4!I * _loc8_;
            _loc6_.y += b2internal::4!I * _loc9_;
            _loc7_ += b2internal::9!& * _loc11_;
         }
         _loc2_.§#A§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§#A§.SetV(_loc6_);
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
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc4_:b2Body = b2internal::]!O;
         var _loc5_:b2Body = b2internal::2!=;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§53§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§53§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::3!$.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::3!$.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::"D.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::"D.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§29§)
         {
            this.§+!%§ = b2Math.§8]§(_loc20_,this.§ H§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§+!%§.y - (_loc27_ + _loc23_) * this.§+!%§.x;
            this.m_a2 = _loc24_ * this.§+!%§.y - _loc25_ * this.§+!%§.x;
            _loc34_ = this.§+!%§.x * _loc26_ + this.§+!%§.y * _loc27_;
            if(b2Math.§?A§(this.§>t§ - this.§6d§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§8![§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§?A§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§6d§)
            {
               _loc19_ = b2Math.§8![§(_loc34_ - this.§6d§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§6d§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§>t§)
            {
               _loc19_ = b2Math.§8![§(_loc34_ - this.§>t§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§>t§;
               _loc18_ = true;
            }
         }
         this.§9!?§ = b2Math.§8]§(_loc20_,this.§9L§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§9!?§.y - (_loc27_ + _loc23_) * this.§9!?§.x;
         this.m_s2 = _loc24_ * this.§9!?§.y - _loc25_ * this.§9!?§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§9!?§.x * _loc26_ + this.§9!?§.y * _loc27_;
         _loc16_ = b2Math.§#!0§(_loc16_,b2Math.§?A§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::,o;
            _loc13_ = b2internal::4!I;
            _loc14_ = b2internal::#e;
            _loc15_ = b2internal::9!&;
            this.§4Y§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§4Y§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§4Y§.col2.x = this.§4Y§.col1.y;
            this.§4Y§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§4Y§.§]!H§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::,o;
            _loc13_ = b2internal::4!I;
            _loc14_ = b2internal::#e;
            _loc15_ = b2internal::9!&;
            if((_loc35_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2) != 0)
            {
               _loc36_ = -_loc29_ / _loc35_;
            }
            else
            {
               _loc36_ = 0;
            }
            _loc28_.x = _loc36_;
            _loc28_.y = 0;
         }
         var _loc30_:Number = _loc28_.x * this.§9!?§.x + _loc28_.y * this.§+!%§.x;
         var _loc31_:Number = _loc28_.x * this.§9!?§.y + _loc28_.y * this.§+!%§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::,o * _loc30_;
         _loc6_.y -= b2internal::,o * _loc31_;
         _loc7_ -= b2internal::#e * _loc32_;
         _loc8_.x += b2internal::4!I * _loc30_;
         _loc8_.y += b2internal::4!I * _loc31_;
         _loc9_ += b2internal::9!& * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§+?§();
         _loc5_.§+?§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

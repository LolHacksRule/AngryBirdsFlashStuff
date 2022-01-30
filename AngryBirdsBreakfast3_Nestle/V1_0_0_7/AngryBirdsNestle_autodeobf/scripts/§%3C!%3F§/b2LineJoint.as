package §<!?§
{
   import §!r§.b2Settings;
   import §!r§.b2internal;
   import §-!2§.b2Mat22;
   import §-!2§.b2Math;
   import §-!2§.b2Transform;
   import §-!2§.b2Vec2;
   import §0!j§.b2Body;
   import §0!j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §2"%§:b2Vec2;
      
      private var §1"4§:b2Vec2;
      
      private var §+!V§:b2Vec2;
      
      private var §!"2§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var § !V§:b2Mat22;
      
      private var §1E§:b2Vec2;
      
      private var §"P§:Number;
      
      private var §7l§:Number;
      
      private var §[5§:Number;
      
      private var § P§:Number;
      
      private var §#!j§:Number;
      
      private var §4-§:Number;
      
      private var §9!y§:Boolean;
      
      private var §^!m§:Boolean;
      
      private var §@x§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§2"%§ = new b2Vec2();
         this.§1"4§ = new b2Vec2();
         this.§+!V§ = new b2Vec2();
         this.§!"2§ = new b2Vec2();
         this.§ !V§ = new b2Mat22();
         this.§1E§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§'!]§);
         this.m_localAnchor2.SetV(param1.§@!p§);
         this.§2"%§.SetV(param1.§6r§);
         this.§1"4§.x = -this.§2"%§.y;
         this.§1"4§.y = this.§2"%§.x;
         this.§1E§.§`5§();
         this.§"P§ = 0;
         this.§7l§ = 0;
         this.§[5§ = param1.§?A§;
         this.§ P§ = param1.§3!4§;
         this.§#!j§ = param1.§ !T§;
         this.§4-§ = param1.motorSpeed;
         this.§9!y§ = param1.§?!t§;
         this.§^!m§ = param1.§>!e§;
         this.§@x§ = b2internal::4E;
         this.§+!V§.§`5§();
         this.§!"2§.§`5§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::"n.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::]!0.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§1E§.x * this.§!"2§.x + (this.§7l§ + this.§1E§.y) * this.§+!V§.x),param1 * (this.§1E§.x * this.§!"2§.y + (this.§7l§ + this.§1E§.y) * this.§+!V§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§1E§.y;
      }
      
      public function §&"2§() : Number
      {
         var _loc1_:b2Body = b2internal::"n;
         var _loc2_:b2Body = b2internal::]!0;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§9!A§(this.§2"%§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §9J§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::"n;
         var _loc2_:b2Body = b2internal::]!0;
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
         var _loc15_:b2Vec2 = _loc1_.§9!A§(this.§2"%§);
         var _loc16_:b2Vec2 = _loc1_.§3N§;
         var _loc17_:b2Vec2 = _loc2_.§3N§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §<f§() : Boolean
      {
         return this.§9!y§;
      }
      
      public function §]!1§(param1:Boolean) : void
      {
         b2internal::"n.SetAwake(true);
         b2internal::]!0.SetAwake(true);
         this.§9!y§ = param1;
      }
      
      public function §'",§() : Number
      {
         return this.§[5§;
      }
      
      public function §?d§() : Number
      {
         return this.§ P§;
      }
      
      public function §]!5§(param1:Number, param2:Number) : void
      {
         b2internal::"n.SetAwake(true);
         b2internal::]!0.SetAwake(true);
         this.§[5§ = param1;
         this.§ P§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§^!m§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::"n.SetAwake(true);
         b2internal::]!0.SetAwake(true);
         this.§^!m§ = param1;
      }
      
      public function §4u§(param1:Number) : void
      {
         b2internal::"n.SetAwake(true);
         b2internal::]!0.SetAwake(true);
         this.§4-§ = param1;
      }
      
      public function §6_§() : Number
      {
         return this.§4-§;
      }
      
      public function §^!'§(param1:Number) : void
      {
         b2internal::"n.SetAwake(true);
         b2internal::]!0.SetAwake(true);
         this.§#!j§ = param1;
      }
      
      public function §?!4§() : Number
      {
         return this.§#!j§;
      }
      
      public function §?!9§() : Number
      {
         return this.§7l§;
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
         var _loc2_:b2Body = b2internal::"n;
         var _loc3_:b2Body = b2internal::]!0;
         b2internal::`!T.SetV(_loc2_.§3!y§());
         b2internal::]I.SetV(_loc3_.§3!y§());
         var _loc6_:b2Transform = _loc2_.§;b§();
         var _loc7_:b2Transform = _loc3_.§;b§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::`!T.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::`!T.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::]I.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::]I.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §"!=§ = _loc2_.§2![§;
         §0!-§ = _loc3_.§2![§;
         §"!9§ = _loc2_.§2s§;
         §8!L§ = _loc3_.§2s§;
         this.§+!V§.SetV(b2Math.§]!%§(_loc6_.R,this.§2"%§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§+!V§.y - (_loc13_ + _loc9_) * this.§+!V§.x;
         this.m_a2 = _loc10_ * this.§+!V§.y - _loc11_ * this.§+!V§.x;
         this.§"P§ = b2internal::"!= + b2internal::0!- + b2internal::"!9 * this.m_a1 * this.m_a1 + b2internal::8!L * this.m_a2 * this.m_a2;
         this.§"P§ = this.§"P§ > Number.MIN_VALUE ? Number(1 / this.§"P§) : Number(0);
         this.§!"2§.SetV(b2Math.§]!%§(_loc6_.R,this.§1"4§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§!"2§.y - (_loc13_ + _loc9_) * this.§!"2§.x;
         this.m_s2 = _loc10_ * this.§!"2§.y - _loc11_ * this.§!"2§.x;
         var _loc14_:Number = b2internal::"!=;
         var _loc15_:Number = b2internal::0!-;
         var _loc16_:Number = b2internal::"!9;
         var _loc17_:Number = b2internal::8!L;
         this.§ !V§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§ !V§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§ !V§.col2.x = this.§ !V§.col1.y;
         this.§ !V§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§9!y§)
         {
            _loc18_ = this.§+!V§.x * _loc12_ + this.§+!V§.y * _loc13_;
            if(b2Math.§!!<§(this.§ P§ - this.§[5§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§@x§ = b2internal::7!;;
            }
            else if(_loc18_ <= this.§[5§)
            {
               if(this.§@x§ != b2internal::<!L)
               {
                  this.§@x§ = b2internal::<!L;
                  this.§1E§.y = 0;
               }
            }
            else if(_loc18_ >= this.§ P§)
            {
               if(this.§@x§ != b2internal::9!`)
               {
                  this.§@x§ = b2internal::9!`;
                  this.§1E§.y = 0;
               }
            }
            else
            {
               this.§@x§ = b2internal::4E;
               this.§1E§.y = 0;
            }
         }
         else
         {
            this.§@x§ = b2internal::4E;
         }
         if(this.§^!m§ == false)
         {
            this.§7l§ = 0;
         }
         if(param1.§'!t§)
         {
            this.§1E§.x *= param1.§1!m§;
            this.§1E§.y *= param1.§1!m§;
            this.§7l§ *= param1.§1!m§;
            _loc19_ = this.§1E§.x * this.§!"2§.x + (this.§7l§ + this.§1E§.y) * this.§+!V§.x;
            _loc20_ = this.§1E§.x * this.§!"2§.y + (this.§7l§ + this.§1E§.y) * this.§+!V§.y;
            _loc21_ = this.§1E§.x * this.m_s1 + (this.§7l§ + this.§1E§.y) * this.m_a1;
            _loc22_ = this.§1E§.x * this.m_s2 + (this.§7l§ + this.§1E§.y) * this.m_a2;
            _loc2_.§3N§.x -= b2internal::"!= * _loc19_;
            _loc2_.§3N§.y -= b2internal::"!= * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::"!9 * _loc21_;
            _loc3_.§3N§.x += b2internal::0!- * _loc19_;
            _loc3_.§3N§.y += b2internal::0!- * _loc20_;
            _loc3_.m_angularVelocity += b2internal::8!L * _loc22_;
         }
         else
         {
            this.§1E§.§`5§();
            this.§7l§ = 0;
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
         var _loc2_:b2Body = b2internal::"n;
         var _loc3_:b2Body = b2internal::]!0;
         var _loc4_:b2Vec2 = _loc2_.§3N§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§3N§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§^!m§ && this.§@x§ != b2internal::7!;)
         {
            _loc13_ = this.§+!V§.x * (_loc6_.x - _loc4_.x) + this.§+!V§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§"P§ * (this.§4-§ - _loc13_);
            _loc15_ = this.§7l§;
            _loc16_ = param1.§&c§ * this.§#!j§;
            this.§7l§ = b2Math.§+u§(this.§7l§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§7l§ - _loc15_) * this.§+!V§.x;
            _loc9_ = _loc14_ * this.§+!V§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::"!= * _loc8_;
            _loc4_.y -= b2internal::"!= * _loc9_;
            _loc5_ -= b2internal::"!9 * _loc10_;
            _loc6_.x += b2internal::0!- * _loc8_;
            _loc6_.y += b2internal::0!- * _loc9_;
            _loc7_ += b2internal::8!L * _loc11_;
         }
         var _loc12_:Number = this.§!"2§.x * (_loc6_.x - _loc4_.x) + this.§!"2§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§9!y§ && this.§@x§ != b2internal::4E)
         {
            _loc17_ = this.§+!V§.x * (_loc6_.x - _loc4_.x) + this.§+!V§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§1E§.Copy();
            _loc19_ = this.§ !V§.§9!§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§1E§.§3!j§(_loc19_);
            if(this.§@x§ == b2internal::<!L)
            {
               this.§1E§.y = b2Math.§&<§(this.§1E§.y,0);
            }
            else if(this.§@x§ == b2internal::9!`)
            {
               this.§1E§.y = b2Math.§2a§(this.§1E§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§1E§.y - _loc18_.y) * this.§ !V§.col2.x;
            if(this.§ !V§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§ !V§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§1E§.x = _loc21_;
            _loc19_.x = this.§1E§.x - _loc18_.x;
            _loc19_.y = this.§1E§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§!"2§.x + _loc19_.y * this.§+!V§.x;
            _loc9_ = _loc19_.x * this.§!"2§.y + _loc19_.y * this.§+!V§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::"!= * _loc8_;
            _loc4_.y -= b2internal::"!= * _loc9_;
            _loc5_ -= b2internal::"!9 * _loc10_;
            _loc6_.x += b2internal::0!- * _loc8_;
            _loc6_.y += b2internal::0!- * _loc9_;
            _loc7_ += b2internal::8!L * _loc11_;
         }
         else
         {
            if(this.§ !V§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§ !V§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§1E§.x += _loc22_;
            _loc8_ = _loc22_ * this.§!"2§.x;
            _loc9_ = _loc22_ * this.§!"2§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::"!= * _loc8_;
            _loc4_.y -= b2internal::"!= * _loc9_;
            _loc5_ -= b2internal::"!9 * _loc10_;
            _loc6_.x += b2internal::0!- * _loc8_;
            _loc6_.y += b2internal::0!- * _loc9_;
            _loc7_ += b2internal::8!L * _loc11_;
         }
         _loc2_.§3N§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§3N§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::"n;
         var _loc5_:b2Body = b2internal::]!0;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§?!X§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§?!X§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::`!T.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::`!T.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::]I.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::]I.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§9!y§)
         {
            this.§+!V§ = b2Math.§]!%§(_loc20_,this.§2"%§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§+!V§.y - (_loc27_ + _loc23_) * this.§+!V§.x;
            this.m_a2 = _loc24_ * this.§+!V§.y - _loc25_ * this.§+!V§.x;
            _loc34_ = this.§+!V§.x * _loc26_ + this.§+!V§.y * _loc27_;
            if(b2Math.§!!<§(this.§ P§ - this.§[5§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§+u§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§!!<§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§[5§)
            {
               _loc19_ = b2Math.§+u§(_loc34_ - this.§[5§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§[5§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§ P§)
            {
               _loc19_ = b2Math.§+u§(_loc34_ - this.§ P§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§ P§;
               _loc18_ = true;
            }
         }
         this.§!"2§ = b2Math.§]!%§(_loc20_,this.§1"4§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§!"2§.y - (_loc27_ + _loc23_) * this.§!"2§.x;
         this.m_s2 = _loc24_ * this.§!"2§.y - _loc25_ * this.§!"2§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§!"2§.x * _loc26_ + this.§!"2§.y * _loc27_;
         _loc16_ = b2Math.§&<§(_loc16_,b2Math.§!!<§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::"!=;
            _loc13_ = b2internal::0!-;
            _loc14_ = b2internal::"!9;
            _loc15_ = b2internal::8!L;
            this.§ !V§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§ !V§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§ !V§.col2.x = this.§ !V§.col1.y;
            this.§ !V§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§ !V§.§9!§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::"!=;
            _loc13_ = b2internal::0!-;
            _loc14_ = b2internal::"!9;
            _loc15_ = b2internal::8!L;
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
         var _loc30_:Number = _loc28_.x * this.§!"2§.x + _loc28_.y * this.§+!V§.x;
         var _loc31_:Number = _loc28_.x * this.§!"2§.y + _loc28_.y * this.§+!V§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::"!= * _loc30_;
         _loc6_.y -= b2internal::"!= * _loc31_;
         _loc7_ -= b2internal::"!9 * _loc32_;
         _loc8_.x += b2internal::0!- * _loc30_;
         _loc8_.y += b2internal::0!- * _loc31_;
         _loc9_ += b2internal::8!L * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§+!8§();
         _loc5_.§+!8§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

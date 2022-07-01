package §,H§
{
   import §'I§.b2Settings;
   import §'I§.b2internal;
   import §9!Z§.b2Body;
   import §9!Z§.b2TimeStep;
   import §?"'§.b2Mat22;
   import §?"'§.b2Math;
   import §?"'§.b2Transform;
   import §?"'§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §7!t§:b2Vec2;
      
      private var §6!]§:b2Vec2;
      
      private var §7!;§:b2Vec2;
      
      private var §%"4§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §#![§:b2Mat22;
      
      private var §9!z§:b2Vec2;
      
      private var §9!t§:Number;
      
      private var §!<§:Number;
      
      private var §^+§:Number;
      
      private var § !9§:Number;
      
      private var §]&§:Number;
      
      private var § 6§:Number;
      
      private var §0Y§:Boolean;
      
      private var §>!J§:Boolean;
      
      private var §'!m§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§7!t§ = new b2Vec2();
         this.§6!]§ = new b2Vec2();
         this.§7!;§ = new b2Vec2();
         this.§%"4§ = new b2Vec2();
         this.§#![§ = new b2Mat22();
         this.§9!z§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§'&§);
         this.m_localAnchor2.SetV(param1.§%"0§);
         this.§7!t§.SetV(param1.§@!&§);
         this.§6!]§.x = -this.§7!t§.y;
         this.§6!]§.y = this.§7!t§.x;
         this.§9!z§.§6!c§();
         this.§9!t§ = 0;
         this.§!<§ = 0;
         this.§^+§ = param1.§6"5§;
         this.§ !9§ = param1.§=" §;
         this.§]&§ = param1.§7"!§;
         this.§ 6§ = param1.motorSpeed;
         this.§0Y§ = param1.§?r§;
         this.§>!J§ = param1.§<D§;
         this.§'!m§ = b2internal::6"%;
         this.§7!;§.§6!c§();
         this.§%"4§.§6!c§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3v.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;Q.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§9!z§.x * this.§%"4§.x + (this.§!<§ + this.§9!z§.y) * this.§7!;§.x),param1 * (this.§9!z§.x * this.§%"4§.y + (this.§!<§ + this.§9!z§.y) * this.§7!;§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§9!z§.y;
      }
      
      public function §"!@§() : Number
      {
         var _loc1_:b2Body = b2internal::3v;
         var _loc2_:b2Body = b2internal::;Q;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§ use§(this.§7!t§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §0>§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::3v;
         var _loc2_:b2Body = b2internal::;Q;
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
         var _loc15_:b2Vec2 = _loc1_.§ use§(this.§7!t§);
         var _loc16_:b2Vec2 = _loc1_.§ Y§;
         var _loc17_:b2Vec2 = _loc2_.§ Y§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §0!V§() : Boolean
      {
         return this.§0Y§;
      }
      
      public function §!W§(param1:Boolean) : void
      {
         b2internal::3v.SetAwake(true);
         b2internal::;Q.SetAwake(true);
         this.§0Y§ = param1;
      }
      
      public function §;V§() : Number
      {
         return this.§^+§;
      }
      
      public function §1"3§() : Number
      {
         return this.§ !9§;
      }
      
      public function §%!>§(param1:Number, param2:Number) : void
      {
         b2internal::3v.SetAwake(true);
         b2internal::;Q.SetAwake(true);
         this.§^+§ = param1;
         this.§ !9§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§>!J§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::3v.SetAwake(true);
         b2internal::;Q.SetAwake(true);
         this.§>!J§ = param1;
      }
      
      public function §;o§(param1:Number) : void
      {
         b2internal::3v.SetAwake(true);
         b2internal::;Q.SetAwake(true);
         this.§ 6§ = param1;
      }
      
      public function §,!s§() : Number
      {
         return this.§ 6§;
      }
      
      public function §#I§(param1:Number) : void
      {
         b2internal::3v.SetAwake(true);
         b2internal::;Q.SetAwake(true);
         this.§]&§ = param1;
      }
      
      public function §4!]§() : Number
      {
         return this.§]&§;
      }
      
      public function §?!f§() : Number
      {
         return this.§!<§;
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
         var _loc2_:b2Body = b2internal::3v;
         var _loc3_:b2Body = b2internal::;Q;
         b2internal::?!I.SetV(_loc2_.§%=§());
         b2internal::+!l.SetV(_loc3_.§%=§());
         var _loc6_:b2Transform = _loc2_.§0!z§();
         var _loc7_:b2Transform = _loc3_.§0!z§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::?!I.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::?!I.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::+!l.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::+!l.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §%"+§ = _loc2_.§;!R§;
         §9!j§ = _loc3_.§;!R§;
         §4!A§ = _loc2_.§1!k§;
         §+!_§ = _loc3_.§1!k§;
         this.§7!;§.SetV(b2Math.§2&§(_loc6_.R,this.§7!t§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§7!;§.y - (_loc13_ + _loc9_) * this.§7!;§.x;
         this.m_a2 = _loc10_ * this.§7!;§.y - _loc11_ * this.§7!;§.x;
         this.§9!t§ = b2internal::%"+ + b2internal::9!j + b2internal::4!A * this.m_a1 * this.m_a1 + b2internal::+!_ * this.m_a2 * this.m_a2;
         this.§9!t§ = this.§9!t§ > Number.MIN_VALUE ? Number(1 / this.§9!t§) : Number(0);
         this.§%"4§.SetV(b2Math.§2&§(_loc6_.R,this.§6!]§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§%"4§.y - (_loc13_ + _loc9_) * this.§%"4§.x;
         this.m_s2 = _loc10_ * this.§%"4§.y - _loc11_ * this.§%"4§.x;
         var _loc14_:Number = b2internal::%"+;
         var _loc15_:Number = b2internal::9!j;
         var _loc16_:Number = b2internal::4!A;
         var _loc17_:Number = b2internal::+!_;
         this.§#![§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§#![§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§#![§.col2.x = this.§#![§.col1.y;
         this.§#![§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§0Y§)
         {
            _loc18_ = this.§7!;§.x * _loc12_ + this.§7!;§.y * _loc13_;
            if(b2Math.§<#§(this.§ !9§ - this.§^+§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§'!m§ = b2internal::8!4;
            }
            else if(_loc18_ <= this.§^+§)
            {
               if(this.§'!m§ != b2internal::44)
               {
                  this.§'!m§ = b2internal::44;
                  this.§9!z§.y = 0;
               }
            }
            else if(_loc18_ >= this.§ !9§)
            {
               if(this.§'!m§ != b2internal::<B)
               {
                  this.§'!m§ = b2internal::<B;
                  this.§9!z§.y = 0;
               }
            }
            else
            {
               this.§'!m§ = b2internal::6"%;
               this.§9!z§.y = 0;
            }
         }
         else
         {
            this.§'!m§ = b2internal::6"%;
         }
         if(this.§>!J§ == false)
         {
            this.§!<§ = 0;
         }
         if(param1.§#=§)
         {
            this.§9!z§.x *= param1.§6!'§;
            this.§9!z§.y *= param1.§6!'§;
            this.§!<§ *= param1.§6!'§;
            _loc19_ = this.§9!z§.x * this.§%"4§.x + (this.§!<§ + this.§9!z§.y) * this.§7!;§.x;
            _loc20_ = this.§9!z§.x * this.§%"4§.y + (this.§!<§ + this.§9!z§.y) * this.§7!;§.y;
            _loc21_ = this.§9!z§.x * this.m_s1 + (this.§!<§ + this.§9!z§.y) * this.m_a1;
            _loc22_ = this.§9!z§.x * this.m_s2 + (this.§!<§ + this.§9!z§.y) * this.m_a2;
            _loc2_.§ Y§.x -= b2internal::%"+ * _loc19_;
            _loc2_.§ Y§.y -= b2internal::%"+ * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::4!A * _loc21_;
            _loc3_.§ Y§.x += b2internal::9!j * _loc19_;
            _loc3_.§ Y§.y += b2internal::9!j * _loc20_;
            _loc3_.m_angularVelocity += b2internal::+!_ * _loc22_;
         }
         else
         {
            this.§9!z§.§6!c§();
            this.§!<§ = 0;
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
         var _loc2_:b2Body = b2internal::3v;
         var _loc3_:b2Body = b2internal::;Q;
         var _loc4_:b2Vec2 = _loc2_.§ Y§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§ Y§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§>!J§ && this.§'!m§ != b2internal::8!4)
         {
            _loc13_ = this.§7!;§.x * (_loc6_.x - _loc4_.x) + this.§7!;§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§9!t§ * (this.§ 6§ - _loc13_);
            _loc15_ = this.§!<§;
            _loc16_ = param1.§>!`§ * this.§]&§;
            this.§!<§ = b2Math.§8M§(this.§!<§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§!<§ - _loc15_) * this.§7!;§.x;
            _loc9_ = _loc14_ * this.§7!;§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::%"+ * _loc8_;
            _loc4_.y -= b2internal::%"+ * _loc9_;
            _loc5_ -= b2internal::4!A * _loc10_;
            _loc6_.x += b2internal::9!j * _loc8_;
            _loc6_.y += b2internal::9!j * _loc9_;
            _loc7_ += b2internal::+!_ * _loc11_;
         }
         var _loc12_:Number = this.§%"4§.x * (_loc6_.x - _loc4_.x) + this.§%"4§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§0Y§ && this.§'!m§ != b2internal::6"%)
         {
            _loc17_ = this.§7!;§.x * (_loc6_.x - _loc4_.x) + this.§7!;§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§9!z§.Copy();
            _loc19_ = this.§#![§.§=L§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§9!z§.§package§(_loc19_);
            if(this.§'!m§ == b2internal::44)
            {
               this.§9!z§.y = b2Math.§[k§(this.§9!z§.y,0);
            }
            else if(this.§'!m§ == b2internal::<B)
            {
               this.§9!z§.y = b2Math.§?P§(this.§9!z§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§9!z§.y - _loc18_.y) * this.§#![§.col2.x;
            if(this.§#![§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§#![§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§9!z§.x = _loc21_;
            _loc19_.x = this.§9!z§.x - _loc18_.x;
            _loc19_.y = this.§9!z§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§%"4§.x + _loc19_.y * this.§7!;§.x;
            _loc9_ = _loc19_.x * this.§%"4§.y + _loc19_.y * this.§7!;§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::%"+ * _loc8_;
            _loc4_.y -= b2internal::%"+ * _loc9_;
            _loc5_ -= b2internal::4!A * _loc10_;
            _loc6_.x += b2internal::9!j * _loc8_;
            _loc6_.y += b2internal::9!j * _loc9_;
            _loc7_ += b2internal::+!_ * _loc11_;
         }
         else
         {
            if(this.§#![§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§#![§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§9!z§.x += _loc22_;
            _loc8_ = _loc22_ * this.§%"4§.x;
            _loc9_ = _loc22_ * this.§%"4§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::%"+ * _loc8_;
            _loc4_.y -= b2internal::%"+ * _loc9_;
            _loc5_ -= b2internal::4!A * _loc10_;
            _loc6_.x += b2internal::9!j * _loc8_;
            _loc6_.y += b2internal::9!j * _loc9_;
            _loc7_ += b2internal::+!_ * _loc11_;
         }
         _loc2_.§ Y§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§ Y§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::3v;
         var _loc5_:b2Body = b2internal::;Q;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§!`§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§!`§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::?!I.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::?!I.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::+!l.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::+!l.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§0Y§)
         {
            this.§7!;§ = b2Math.§2&§(_loc20_,this.§7!t§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§7!;§.y - (_loc27_ + _loc23_) * this.§7!;§.x;
            this.m_a2 = _loc24_ * this.§7!;§.y - _loc25_ * this.§7!;§.x;
            _loc34_ = this.§7!;§.x * _loc26_ + this.§7!;§.y * _loc27_;
            if(b2Math.§<#§(this.§ !9§ - this.§^+§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§8M§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§<#§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§^+§)
            {
               _loc19_ = b2Math.§8M§(_loc34_ - this.§^+§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§^+§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§ !9§)
            {
               _loc19_ = b2Math.§8M§(_loc34_ - this.§ !9§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§ !9§;
               _loc18_ = true;
            }
         }
         this.§%"4§ = b2Math.§2&§(_loc20_,this.§6!]§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§%"4§.y - (_loc27_ + _loc23_) * this.§%"4§.x;
         this.m_s2 = _loc24_ * this.§%"4§.y - _loc25_ * this.§%"4§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§%"4§.x * _loc26_ + this.§%"4§.y * _loc27_;
         _loc16_ = b2Math.§[k§(_loc16_,b2Math.§<#§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::%"+;
            _loc13_ = b2internal::9!j;
            _loc14_ = b2internal::4!A;
            _loc15_ = b2internal::+!_;
            this.§#![§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§#![§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§#![§.col2.x = this.§#![§.col1.y;
            this.§#![§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§#![§.§=L§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::%"+;
            _loc13_ = b2internal::9!j;
            _loc14_ = b2internal::4!A;
            _loc15_ = b2internal::+!_;
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
         var _loc30_:Number = _loc28_.x * this.§%"4§.x + _loc28_.y * this.§7!;§.x;
         var _loc31_:Number = _loc28_.x * this.§%"4§.y + _loc28_.y * this.§7!;§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::%"+ * _loc30_;
         _loc6_.y -= b2internal::%"+ * _loc31_;
         _loc7_ -= b2internal::4!A * _loc32_;
         _loc8_.x += b2internal::9!j * _loc30_;
         _loc8_.y += b2internal::9!j * _loc31_;
         _loc9_ += b2internal::+!_ * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§>#§();
         _loc5_.§>#§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

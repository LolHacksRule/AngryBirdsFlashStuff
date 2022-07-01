package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Mat22;
   import §<!a§.b2Math;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §01§:b2Vec2;
      
      private var §<"+§:b2Vec2;
      
      private var §+u§:b2Vec2;
      
      private var §4!-§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §<"6§:b2Mat22;
      
      private var §5!i§:b2Vec2;
      
      private var §>E§:Number;
      
      private var §`t§:Number;
      
      private var §""@§:Number;
      
      private var §=" §:Number;
      
      private var §<6§:Number;
      
      private var §?!,§:Number;
      
      private var §!!$§:Boolean;
      
      private var § !P§:Boolean;
      
      private var §<!3§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§01§ = new b2Vec2();
         this.§<"+§ = new b2Vec2();
         this.§+u§ = new b2Vec2();
         this.§4!-§ = new b2Vec2();
         this.§<"6§ = new b2Mat22();
         this.§5!i§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§3!&§);
         this.m_localAnchor2.SetV(param1.§2!P§);
         this.§01§.SetV(param1.§>!'§);
         this.§<"+§.x = -this.§01§.y;
         this.§<"+§.y = this.§01§.x;
         this.§5!i§.§?b§();
         this.§>E§ = 0;
         this.§`t§ = 0;
         this.§""@§ = param1.§?"'§;
         this.§=" § = param1.§-!§;
         this.§<6§ = param1.§<!S§;
         this.§?!,§ = param1.motorSpeed;
         this.§!!$§ = param1.§2<§;
         this.§ !P§ = param1.§#a§;
         this.§<!3§ = b2internal::^#;
         this.§+u§.§?b§();
         this.§4!-§.§?b§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+d.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!l.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§5!i§.x * this.§4!-§.x + (this.§`t§ + this.§5!i§.y) * this.§+u§.x),param1 * (this.§5!i§.x * this.§4!-§.y + (this.§`t§ + this.§5!i§.y) * this.§+u§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§5!i§.y;
      }
      
      public function §>!b§() : Number
      {
         var _loc1_:b2Body = b2internal::+d;
         var _loc2_:b2Body = b2internal::"!l;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§!!7§(this.§01§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §&!8§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::+d;
         var _loc2_:b2Body = b2internal::"!l;
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
         var _loc15_:b2Vec2 = _loc1_.§!!7§(this.§01§);
         var _loc16_:b2Vec2 = _loc1_.§]!g§;
         var _loc17_:b2Vec2 = _loc2_.§]!g§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §`J§() : Boolean
      {
         return this.§!!$§;
      }
      
      public function §+K§(param1:Boolean) : void
      {
         b2internal::+d.SetAwake(true);
         b2internal::"!l.SetAwake(true);
         this.§!!$§ = param1;
      }
      
      public function §2z§() : Number
      {
         return this.§""@§;
      }
      
      public function §5!V§() : Number
      {
         return this.§=" §;
      }
      
      public function §7!&§(param1:Number, param2:Number) : void
      {
         b2internal::+d.SetAwake(true);
         b2internal::"!l.SetAwake(true);
         this.§""@§ = param1;
         this.§=" § = param2;
      }
      
      public function §%!o§() : Boolean
      {
         return this.§ !P§;
      }
      
      public function §`l§(param1:Boolean) : void
      {
         b2internal::+d.SetAwake(true);
         b2internal::"!l.SetAwake(true);
         this.§ !P§ = param1;
      }
      
      public function §97§(param1:Number) : void
      {
         b2internal::+d.SetAwake(true);
         b2internal::"!l.SetAwake(true);
         this.§?!,§ = param1;
      }
      
      public function §,;§() : Number
      {
         return this.§?!,§;
      }
      
      public function §%M§(param1:Number) : void
      {
         b2internal::+d.SetAwake(true);
         b2internal::"!l.SetAwake(true);
         this.§<6§ = param1;
      }
      
      public function §]R§() : Number
      {
         return this.§<6§;
      }
      
      public function §1"4§() : Number
      {
         return this.§`t§;
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
         var _loc2_:b2Body = b2internal::+d;
         var _loc3_:b2Body = b2internal::"!l;
         b2internal::6!+.SetV(_loc2_.§2!%§());
         b2internal::"O.SetV(_loc3_.§2!%§());
         var _loc6_:b2Transform = _loc2_.§60§();
         var _loc7_:b2Transform = _loc3_.§60§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::6!+.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::6!+.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::"O.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::"O.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §+!7§ = _loc2_.§@"!§;
         § !b§ = _loc3_.§@"!§;
         §8"#§ = _loc2_.§=!N§;
         § true§ = _loc3_.§=!N§;
         this.§+u§.SetV(b2Math.§<!G§(_loc6_.R,this.§01§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§+u§.y - (_loc13_ + _loc9_) * this.§+u§.x;
         this.m_a2 = _loc10_ * this.§+u§.y - _loc11_ * this.§+u§.x;
         this.§>E§ = b2internal::+!7 + b2internal:: !b + b2internal::8"# * this.m_a1 * this.m_a1 + b2internal:: true * this.m_a2 * this.m_a2;
         this.§>E§ = this.§>E§ > Number.MIN_VALUE ? Number(1 / this.§>E§) : Number(0);
         this.§4!-§.SetV(b2Math.§<!G§(_loc6_.R,this.§<"+§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§4!-§.y - (_loc13_ + _loc9_) * this.§4!-§.x;
         this.m_s2 = _loc10_ * this.§4!-§.y - _loc11_ * this.§4!-§.x;
         var _loc14_:Number = b2internal::+!7;
         var _loc15_:Number = b2internal:: !b;
         var _loc16_:Number = b2internal::8"#;
         var _loc17_:Number = b2internal:: true;
         this.§<"6§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§<"6§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§<"6§.col2.x = this.§<"6§.col1.y;
         this.§<"6§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§!!$§)
         {
            _loc18_ = this.§+u§.x * _loc12_ + this.§+u§.y * _loc13_;
            if(b2Math.§1!`§(this.§=" § - this.§""@§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§<!3§ = b2internal::8"7;
            }
            else if(_loc18_ <= this.§""@§)
            {
               if(this.§<!3§ != b2internal::@)
               {
                  this.§<!3§ = b2internal::@;
                  this.§5!i§.y = 0;
               }
            }
            else if(_loc18_ >= this.§=" §)
            {
               if(this.§<!3§ != b2internal::!"7)
               {
                  this.§<!3§ = b2internal::!"7;
                  this.§5!i§.y = 0;
               }
            }
            else
            {
               this.§<!3§ = b2internal::^#;
               this.§5!i§.y = 0;
            }
         }
         else
         {
            this.§<!3§ = b2internal::^#;
         }
         if(this.§ !P§ == false)
         {
            this.§`t§ = 0;
         }
         if(param1.§@!D§)
         {
            this.§5!i§.x *= param1.§class§;
            this.§5!i§.y *= param1.§class§;
            this.§`t§ *= param1.§class§;
            _loc19_ = this.§5!i§.x * this.§4!-§.x + (this.§`t§ + this.§5!i§.y) * this.§+u§.x;
            _loc20_ = this.§5!i§.x * this.§4!-§.y + (this.§`t§ + this.§5!i§.y) * this.§+u§.y;
            _loc21_ = this.§5!i§.x * this.m_s1 + (this.§`t§ + this.§5!i§.y) * this.m_a1;
            _loc22_ = this.§5!i§.x * this.m_s2 + (this.§`t§ + this.§5!i§.y) * this.m_a2;
            _loc2_.§]!g§.x -= b2internal::+!7 * _loc19_;
            _loc2_.§]!g§.y -= b2internal::+!7 * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::8"# * _loc21_;
            _loc3_.§]!g§.x += b2internal:: !b * _loc19_;
            _loc3_.§]!g§.y += b2internal:: !b * _loc20_;
            _loc3_.m_angularVelocity += b2internal:: true * _loc22_;
         }
         else
         {
            this.§5!i§.§?b§();
            this.§`t§ = 0;
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
         var _loc2_:b2Body = b2internal::+d;
         var _loc3_:b2Body = b2internal::"!l;
         var _loc4_:b2Vec2 = _loc2_.§]!g§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§]!g§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§ !P§ && this.§<!3§ != b2internal::8"7)
         {
            _loc13_ = this.§+u§.x * (_loc6_.x - _loc4_.x) + this.§+u§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§>E§ * (this.§?!,§ - _loc13_);
            _loc15_ = this.§`t§;
            _loc16_ = param1.§@[§ * this.§<6§;
            this.§`t§ = b2Math.§5" §(this.§`t§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§`t§ - _loc15_) * this.§+u§.x;
            _loc9_ = _loc14_ * this.§+u§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::+!7 * _loc8_;
            _loc4_.y -= b2internal::+!7 * _loc9_;
            _loc5_ -= b2internal::8"# * _loc10_;
            _loc6_.x += b2internal:: !b * _loc8_;
            _loc6_.y += b2internal:: !b * _loc9_;
            _loc7_ += b2internal:: true * _loc11_;
         }
         var _loc12_:Number = this.§4!-§.x * (_loc6_.x - _loc4_.x) + this.§4!-§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§!!$§ && this.§<!3§ != b2internal::^#)
         {
            _loc17_ = this.§+u§.x * (_loc6_.x - _loc4_.x) + this.§+u§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§5!i§.Copy();
            _loc19_ = this.§<"6§.§1!R§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§5!i§.§<!n§(_loc19_);
            if(this.§<!3§ == b2internal::@)
            {
               this.§5!i§.y = b2Math.§8!c§(this.§5!i§.y,0);
            }
            else if(this.§<!3§ == b2internal::!"7)
            {
               this.§5!i§.y = b2Math.§+"1§(this.§5!i§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§5!i§.y - _loc18_.y) * this.§<"6§.col2.x;
            if(this.§<"6§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§<"6§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§5!i§.x = _loc21_;
            _loc19_.x = this.§5!i§.x - _loc18_.x;
            _loc19_.y = this.§5!i§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§4!-§.x + _loc19_.y * this.§+u§.x;
            _loc9_ = _loc19_.x * this.§4!-§.y + _loc19_.y * this.§+u§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::+!7 * _loc8_;
            _loc4_.y -= b2internal::+!7 * _loc9_;
            _loc5_ -= b2internal::8"# * _loc10_;
            _loc6_.x += b2internal:: !b * _loc8_;
            _loc6_.y += b2internal:: !b * _loc9_;
            _loc7_ += b2internal:: true * _loc11_;
         }
         else
         {
            if(this.§<"6§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§<"6§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§5!i§.x += _loc22_;
            _loc8_ = _loc22_ * this.§4!-§.x;
            _loc9_ = _loc22_ * this.§4!-§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::+!7 * _loc8_;
            _loc4_.y -= b2internal::+!7 * _loc9_;
            _loc5_ -= b2internal::8"# * _loc10_;
            _loc6_.x += b2internal:: !b * _loc8_;
            _loc6_.y += b2internal:: !b * _loc9_;
            _loc7_ += b2internal:: true * _loc11_;
         }
         _loc2_.§]!g§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§]!g§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::+d;
         var _loc5_:b2Body = b2internal::"!l;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§^!§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§^!§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::6!+.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::6!+.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::"O.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::"O.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§!!$§)
         {
            this.§+u§ = b2Math.§<!G§(_loc20_,this.§01§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§+u§.y - (_loc27_ + _loc23_) * this.§+u§.x;
            this.m_a2 = _loc24_ * this.§+u§.y - _loc25_ * this.§+u§.x;
            _loc34_ = this.§+u§.x * _loc26_ + this.§+u§.y * _loc27_;
            if(b2Math.§1!`§(this.§=" § - this.§""@§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§5" §(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§1!`§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§""@§)
            {
               _loc19_ = b2Math.§5" §(_loc34_ - this.§""@§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§""@§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§=" §)
            {
               _loc19_ = b2Math.§5" §(_loc34_ - this.§=" § + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§=" §;
               _loc18_ = true;
            }
         }
         this.§4!-§ = b2Math.§<!G§(_loc20_,this.§<"+§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§4!-§.y - (_loc27_ + _loc23_) * this.§4!-§.x;
         this.m_s2 = _loc24_ * this.§4!-§.y - _loc25_ * this.§4!-§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§4!-§.x * _loc26_ + this.§4!-§.y * _loc27_;
         _loc16_ = b2Math.§8!c§(_loc16_,b2Math.§1!`§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::+!7;
            _loc13_ = b2internal:: !b;
            _loc14_ = b2internal::8"#;
            _loc15_ = b2internal:: true;
            this.§<"6§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§<"6§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§<"6§.col2.x = this.§<"6§.col1.y;
            this.§<"6§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§<"6§.§1!R§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::+!7;
            _loc13_ = b2internal:: !b;
            _loc14_ = b2internal::8"#;
            _loc15_ = b2internal:: true;
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
         var _loc30_:Number = _loc28_.x * this.§4!-§.x + _loc28_.y * this.§+u§.x;
         var _loc31_:Number = _loc28_.x * this.§4!-§.y + _loc28_.y * this.§+u§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::+!7 * _loc30_;
         _loc6_.y -= b2internal::+!7 * _loc31_;
         _loc7_ -= b2internal::8"# * _loc32_;
         _loc8_.x += b2internal:: !b * _loc30_;
         _loc8_.y += b2internal:: !b * _loc31_;
         _loc9_ += b2internal:: true * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§=&§();
         _loc5_.§=&§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

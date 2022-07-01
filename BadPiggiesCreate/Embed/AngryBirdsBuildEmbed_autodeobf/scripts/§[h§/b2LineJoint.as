package §[h§
{
   import § !t§.b2Body;
   import § !t§.b2TimeStep;
   import §<!B§.b2Mat22;
   import §<!B§.b2Math;
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §5T§:b2Vec2;
      
      private var §?!o§:b2Vec2;
      
      private var §;9§:b2Vec2;
      
      private var §&!a§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var § !`§:b2Mat22;
      
      private var §7!a§:b2Vec2;
      
      private var §-!!§:Number;
      
      private var §0,§:Number;
      
      private var §0C§:Number;
      
      private var §%X§:Number;
      
      private var §6@§:Number;
      
      private var §4%§:Number;
      
      private var §&-§:Boolean;
      
      private var §7#§:Boolean;
      
      private var §]!C§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§5T§ = new b2Vec2();
         this.§?!o§ = new b2Vec2();
         this.§;9§ = new b2Vec2();
         this.§&!a§ = new b2Vec2();
         this.§ !`§ = new b2Mat22();
         this.§7!a§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§;!1§);
         this.m_localAnchor2.SetV(param1.§%?§);
         this.§5T§.SetV(param1.§<E§);
         this.§?!o§.x = -this.§5T§.y;
         this.§?!o§.y = this.§5T§.x;
         this.§7!a§.§22§();
         this.§-!!§ = 0;
         this.§0,§ = 0;
         this.§0C§ = param1.§7=§;
         this.§%X§ = param1.§2!q§;
         this.§6@§ = param1.§=!G§;
         this.§4%§ = param1.motorSpeed;
         this.§&-§ = param1.§'!v§;
         this.§7#§ = param1.§3!J§;
         this.§]!C§ = b2internal::2!v;
         this.§;9§.§22§();
         this.§&!a§.§22§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2+.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4P.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§7!a§.x * this.§&!a§.x + (this.§0,§ + this.§7!a§.y) * this.§;9§.x),param1 * (this.§7!a§.x * this.§&!a§.y + (this.§0,§ + this.§7!a§.y) * this.§;9§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§7!a§.y;
      }
      
      public function §"!5§() : Number
      {
         var _loc1_:b2Body = b2internal::2+;
         var _loc2_:b2Body = b2internal::4P;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§=d§(this.§5T§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §%9§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::2+;
         var _loc2_:b2Body = b2internal::4P;
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
         var _loc15_:b2Vec2 = _loc1_.§=d§(this.§5T§);
         var _loc16_:b2Vec2 = _loc1_.§<&§;
         var _loc17_:b2Vec2 = _loc2_.§<&§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §[M§() : Boolean
      {
         return this.§&-§;
      }
      
      public function §&O§(param1:Boolean) : void
      {
         b2internal::2+.SetAwake(true);
         b2internal::4P.SetAwake(true);
         this.§&-§ = param1;
      }
      
      public function §7!%§() : Number
      {
         return this.§0C§;
      }
      
      public function §"B§() : Number
      {
         return this.§%X§;
      }
      
      public function §0S§(param1:Number, param2:Number) : void
      {
         b2internal::2+.SetAwake(true);
         b2internal::4P.SetAwake(true);
         this.§0C§ = param1;
         this.§%X§ = param2;
      }
      
      public function §1!'§() : Boolean
      {
         return this.§7#§;
      }
      
      public function §4!Y§(param1:Boolean) : void
      {
         b2internal::2+.SetAwake(true);
         b2internal::4P.SetAwake(true);
         this.§7#§ = param1;
      }
      
      public function §-0§(param1:Number) : void
      {
         b2internal::2+.SetAwake(true);
         b2internal::4P.SetAwake(true);
         this.§4%§ = param1;
      }
      
      public function §1B§() : Number
      {
         return this.§4%§;
      }
      
      public function §"]§(param1:Number) : void
      {
         b2internal::2+.SetAwake(true);
         b2internal::4P.SetAwake(true);
         this.§6@§ = param1;
      }
      
      public function §]0§() : Number
      {
         return this.§6@§;
      }
      
      public function §5%§() : Number
      {
         return this.§0,§;
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
         var _loc2_:b2Body = b2internal::2+;
         var _loc3_:b2Body = b2internal::4P;
         b2internal::^!Y.SetV(_loc2_.§>G§());
         b2internal::6!k.SetV(_loc3_.§>G§());
         var _loc6_:b2Transform = _loc2_.§>!H§();
         var _loc7_:b2Transform = _loc3_.§>!H§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::^!Y.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::^!Y.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::6!k.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::6!k.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §3T§ = _loc2_.§7!?§;
         §`y§ = _loc3_.§7!?§;
         §@!=§ = _loc2_.§`d§;
         §'o§ = _loc3_.§`d§;
         this.§;9§.SetV(b2Math.§`!"§(_loc6_.R,this.§5T§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§;9§.y - (_loc13_ + _loc9_) * this.§;9§.x;
         this.m_a2 = _loc10_ * this.§;9§.y - _loc11_ * this.§;9§.x;
         this.§-!!§ = b2internal::3T + b2internal::`y + b2internal::@!= * this.m_a1 * this.m_a1 + b2internal::'o * this.m_a2 * this.m_a2;
         this.§-!!§ = this.§-!!§ > Number.MIN_VALUE ? Number(1 / this.§-!!§) : Number(0);
         this.§&!a§.SetV(b2Math.§`!"§(_loc6_.R,this.§?!o§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§&!a§.y - (_loc13_ + _loc9_) * this.§&!a§.x;
         this.m_s2 = _loc10_ * this.§&!a§.y - _loc11_ * this.§&!a§.x;
         var _loc14_:Number = b2internal::3T;
         var _loc15_:Number = b2internal::`y;
         var _loc16_:Number = b2internal::@!=;
         var _loc17_:Number = b2internal::'o;
         this.§ !`§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§ !`§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§ !`§.col2.x = this.§ !`§.col1.y;
         this.§ !`§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§&-§)
         {
            _loc18_ = this.§;9§.x * _loc12_ + this.§;9§.y * _loc13_;
            if(b2Math.§?!3§(this.§%X§ - this.§0C§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§]!C§ = b2internal::+!5;
            }
            else if(_loc18_ <= this.§0C§)
            {
               if(this.§]!C§ != b2internal::,!')
               {
                  this.§]!C§ = b2internal::,!';
                  this.§7!a§.y = 0;
               }
            }
            else if(_loc18_ >= this.§%X§)
            {
               if(this.§]!C§ != b2internal::86)
               {
                  this.§]!C§ = b2internal::86;
                  this.§7!a§.y = 0;
               }
            }
            else
            {
               this.§]!C§ = b2internal::2!v;
               this.§7!a§.y = 0;
            }
         }
         else
         {
            this.§]!C§ = b2internal::2!v;
         }
         if(this.§7#§ == false)
         {
            this.§0,§ = 0;
         }
         if(param1.§ !K§)
         {
            this.§7!a§.x *= param1.§5!;§;
            this.§7!a§.y *= param1.§5!;§;
            this.§0,§ *= param1.§5!;§;
            _loc19_ = this.§7!a§.x * this.§&!a§.x + (this.§0,§ + this.§7!a§.y) * this.§;9§.x;
            _loc20_ = this.§7!a§.x * this.§&!a§.y + (this.§0,§ + this.§7!a§.y) * this.§;9§.y;
            _loc21_ = this.§7!a§.x * this.m_s1 + (this.§0,§ + this.§7!a§.y) * this.m_a1;
            _loc22_ = this.§7!a§.x * this.m_s2 + (this.§0,§ + this.§7!a§.y) * this.m_a2;
            _loc2_.§<&§.x -= b2internal::3T * _loc19_;
            _loc2_.§<&§.y -= b2internal::3T * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::@!= * _loc21_;
            _loc3_.§<&§.x += b2internal::`y * _loc19_;
            _loc3_.§<&§.y += b2internal::`y * _loc20_;
            _loc3_.m_angularVelocity += b2internal::'o * _loc22_;
         }
         else
         {
            this.§7!a§.§22§();
            this.§0,§ = 0;
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
         var _loc2_:b2Body = b2internal::2+;
         var _loc3_:b2Body = b2internal::4P;
         var _loc4_:b2Vec2 = _loc2_.§<&§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§<&§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§7#§ && this.§]!C§ != b2internal::+!5)
         {
            _loc13_ = this.§;9§.x * (_loc6_.x - _loc4_.x) + this.§;9§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§-!!§ * (this.§4%§ - _loc13_);
            _loc15_ = this.§0,§;
            _loc16_ = param1.§>N§ * this.§6@§;
            this.§0,§ = b2Math.§%!j§(this.§0,§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§0,§ - _loc15_) * this.§;9§.x;
            _loc9_ = _loc14_ * this.§;9§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::3T * _loc8_;
            _loc4_.y -= b2internal::3T * _loc9_;
            _loc5_ -= b2internal::@!= * _loc10_;
            _loc6_.x += b2internal::`y * _loc8_;
            _loc6_.y += b2internal::`y * _loc9_;
            _loc7_ += b2internal::'o * _loc11_;
         }
         var _loc12_:Number = this.§&!a§.x * (_loc6_.x - _loc4_.x) + this.§&!a§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§&-§ && this.§]!C§ != b2internal::2!v)
         {
            _loc17_ = this.§;9§.x * (_loc6_.x - _loc4_.x) + this.§;9§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§7!a§.Copy();
            _loc19_ = this.§ !`§.static(new b2Vec2(),-_loc12_,-_loc17_);
            this.§7!a§.§!a§(_loc19_);
            if(this.§]!C§ == b2internal::,!')
            {
               this.§7!a§.y = b2Math.§,!a§(this.§7!a§.y,0);
            }
            else if(this.§]!C§ == b2internal::86)
            {
               this.§7!a§.y = b2Math.§5!>§(this.§7!a§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§7!a§.y - _loc18_.y) * this.§ !`§.col2.x;
            if(this.§ !`§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§ !`§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§7!a§.x = _loc21_;
            _loc19_.x = this.§7!a§.x - _loc18_.x;
            _loc19_.y = this.§7!a§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§&!a§.x + _loc19_.y * this.§;9§.x;
            _loc9_ = _loc19_.x * this.§&!a§.y + _loc19_.y * this.§;9§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::3T * _loc8_;
            _loc4_.y -= b2internal::3T * _loc9_;
            _loc5_ -= b2internal::@!= * _loc10_;
            _loc6_.x += b2internal::`y * _loc8_;
            _loc6_.y += b2internal::`y * _loc9_;
            _loc7_ += b2internal::'o * _loc11_;
         }
         else
         {
            if(this.§ !`§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§ !`§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§7!a§.x += _loc22_;
            _loc8_ = _loc22_ * this.§&!a§.x;
            _loc9_ = _loc22_ * this.§&!a§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::3T * _loc8_;
            _loc4_.y -= b2internal::3T * _loc9_;
            _loc5_ -= b2internal::@!= * _loc10_;
            _loc6_.x += b2internal::`y * _loc8_;
            _loc6_.y += b2internal::`y * _loc9_;
            _loc7_ += b2internal::'o * _loc11_;
         }
         _loc2_.§<&§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§<&§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::2+;
         var _loc5_:b2Body = b2internal::4P;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§"!S§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§"!S§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::^!Y.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::^!Y.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::6!k.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::6!k.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§&-§)
         {
            this.§;9§ = b2Math.§`!"§(_loc20_,this.§5T§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§;9§.y - (_loc27_ + _loc23_) * this.§;9§.x;
            this.m_a2 = _loc24_ * this.§;9§.y - _loc25_ * this.§;9§.x;
            _loc34_ = this.§;9§.x * _loc26_ + this.§;9§.y * _loc27_;
            if(b2Math.§?!3§(this.§%X§ - this.§0C§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§%!j§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§?!3§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§0C§)
            {
               _loc19_ = b2Math.§%!j§(_loc34_ - this.§0C§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§0C§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§%X§)
            {
               _loc19_ = b2Math.§%!j§(_loc34_ - this.§%X§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§%X§;
               _loc18_ = true;
            }
         }
         this.§&!a§ = b2Math.§`!"§(_loc20_,this.§?!o§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§&!a§.y - (_loc27_ + _loc23_) * this.§&!a§.x;
         this.m_s2 = _loc24_ * this.§&!a§.y - _loc25_ * this.§&!a§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§&!a§.x * _loc26_ + this.§&!a§.y * _loc27_;
         _loc16_ = b2Math.§,!a§(_loc16_,b2Math.§?!3§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::3T;
            _loc13_ = b2internal::`y;
            _loc14_ = b2internal::@!=;
            _loc15_ = b2internal::'o;
            this.§ !`§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§ !`§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§ !`§.col2.x = this.§ !`§.col1.y;
            this.§ !`§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§ !`§.static(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::3T;
            _loc13_ = b2internal::`y;
            _loc14_ = b2internal::@!=;
            _loc15_ = b2internal::'o;
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
         var _loc30_:Number = _loc28_.x * this.§&!a§.x + _loc28_.y * this.§;9§.x;
         var _loc31_:Number = _loc28_.x * this.§&!a§.y + _loc28_.y * this.§;9§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::3T * _loc30_;
         _loc6_.y -= b2internal::3T * _loc31_;
         _loc7_ -= b2internal::@!= * _loc32_;
         _loc8_.x += b2internal::`y * _loc30_;
         _loc8_.y += b2internal::`y * _loc31_;
         _loc9_ += b2internal::'o * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§<=§();
         _loc5_.§<=§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

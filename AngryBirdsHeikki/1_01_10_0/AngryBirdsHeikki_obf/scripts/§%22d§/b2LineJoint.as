package §"d§
{
   import §3!R§.b2Body;
   import §3!R§.b2TimeStep;
   import §6A§.b2Mat22;
   import §6A§.b2Math;
   import §6A§.b2Transform;
   import §6A§.b2Vec2;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §>!@§:b2Vec2;
      
      private var §%u§:b2Vec2;
      
      private var §0G§:b2Vec2;
      
      private var §9N§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §,W§:b2Mat22;
      
      private var §12§:b2Vec2;
      
      private var §!b§:Number;
      
      private var §!!X§:Number;
      
      private var §;!`§:Number;
      
      private var §6;§:Number;
      
      private var §=&§:Number;
      
      private var §?T§:Number;
      
      private var §?!c§:Boolean;
      
      private var §6!P§:Boolean;
      
      private var §"B§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§>!@§ = new b2Vec2();
         this.§%u§ = new b2Vec2();
         this.§0G§ = new b2Vec2();
         this.§9N§ = new b2Vec2();
         this.§,W§ = new b2Mat22();
         this.§12§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§@b§);
         this.m_localAnchor2.SetV(param1.§=i§);
         this.§>!@§.SetV(param1.§^>§);
         this.§%u§.x = -this.§>!@§.y;
         this.§%u§.y = this.§>!@§.x;
         this.§12§.§^!,§();
         this.§!b§ = 0;
         this.§!!X§ = 0;
         this.§;!`§ = param1.§<T§;
         this.§6;§ = param1.§[g§;
         this.§=&§ = param1.include;
         this.§?T§ = param1.motorSpeed;
         this.§?!c§ = param1.§3L§;
         this.§6!P§ = param1.§;`§;
         this.§"B§ = b2internal::7t;
         this.§0G§.§^!,§();
         this.§9N§.§^!,§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!`.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§12§.x * this.§9N§.x + (this.§!!X§ + this.§12§.y) * this.§0G§.x),param1 * (this.§12§.x * this.§9N§.y + (this.§!!X§ + this.§12§.y) * this.§0G§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§12§.y;
      }
      
      public function §%!]§() : Number
      {
         var _loc1_:b2Body = b2internal::#A;
         var _loc2_:b2Body = b2internal::2!`;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§7c§(this.§>!@§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §?!D§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::#A;
         var _loc2_:b2Body = b2internal::2!`;
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
         var _loc15_:b2Vec2 = _loc1_.§7c§(this.§>!@§);
         var _loc16_:b2Vec2 = _loc1_.§@S§;
         var _loc17_:b2Vec2 = _loc2_.§@S§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function § p§() : Boolean
      {
         return this.§?!c§;
      }
      
      public function §3<§(param1:Boolean) : void
      {
         b2internal::#A.SetAwake(true);
         b2internal::2!`.SetAwake(true);
         this.§?!c§ = param1;
      }
      
      public function §6-§() : Number
      {
         return this.§;!`§;
      }
      
      public function §41§() : Number
      {
         return this.§6;§;
      }
      
      public function §+!T§(param1:Number, param2:Number) : void
      {
         b2internal::#A.SetAwake(true);
         b2internal::2!`.SetAwake(true);
         this.§;!`§ = param1;
         this.§6;§ = param2;
      }
      
      public function §@7§() : Boolean
      {
         return this.§6!P§;
      }
      
      public function §1!'§(param1:Boolean) : void
      {
         b2internal::#A.SetAwake(true);
         b2internal::2!`.SetAwake(true);
         this.§6!P§ = param1;
      }
      
      public function §2!K§(param1:Number) : void
      {
         b2internal::#A.SetAwake(true);
         b2internal::2!`.SetAwake(true);
         this.§?T§ = param1;
      }
      
      public function §^!f§() : Number
      {
         return this.§?T§;
      }
      
      public function §;!e§(param1:Number) : void
      {
         b2internal::#A.SetAwake(true);
         b2internal::2!`.SetAwake(true);
         this.§=&§ = param1;
      }
      
      public function §08§() : Number
      {
         return this.§=&§;
      }
      
      public function §>v§() : Number
      {
         return this.§!!X§;
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
         var _loc2_:b2Body = b2internal::#A;
         var _loc3_:b2Body = b2internal::2!`;
         b2internal::+B.SetV(_loc2_.§?N§());
         b2internal::0t.SetV(_loc3_.§?N§());
         var _loc6_:b2Transform = _loc2_.§6V§();
         var _loc7_:b2Transform = _loc3_.§6V§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::+B.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::+B.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::0t.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::0t.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §5!H§ = _loc2_.§",§;
         §^I§ = _loc3_.§",§;
         §?Y§ = _loc2_.§-2§;
         §9H§ = _loc3_.§-2§;
         this.§0G§.SetV(b2Math.§ !$§(_loc6_.R,this.§>!@§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§0G§.y - (_loc13_ + _loc9_) * this.§0G§.x;
         this.m_a2 = _loc10_ * this.§0G§.y - _loc11_ * this.§0G§.x;
         this.§!b§ = b2internal::5!H + b2internal::^I + b2internal::?Y * this.m_a1 * this.m_a1 + b2internal::9H * this.m_a2 * this.m_a2;
         this.§!b§ = this.§!b§ > Number.MIN_VALUE ? Number(1 / this.§!b§) : Number(0);
         this.§9N§.SetV(b2Math.§ !$§(_loc6_.R,this.§%u§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§9N§.y - (_loc13_ + _loc9_) * this.§9N§.x;
         this.m_s2 = _loc10_ * this.§9N§.y - _loc11_ * this.§9N§.x;
         var _loc14_:Number = b2internal::5!H;
         var _loc15_:Number = b2internal::^I;
         var _loc16_:Number = b2internal::?Y;
         var _loc17_:Number = b2internal::9H;
         this.§,W§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§,W§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§,W§.col2.x = this.§,W§.col1.y;
         this.§,W§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§?!c§)
         {
            _loc18_ = this.§0G§.x * _loc12_ + this.§0G§.y * _loc13_;
            if(b2Math.§!V§(this.§6;§ - this.§;!`§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§"B§ = b2internal::]!A;
            }
            else if(_loc18_ <= this.§;!`§)
            {
               if(this.§"B§ != b2internal::-z)
               {
                  this.§"B§ = b2internal::-z;
                  this.§12§.y = 0;
               }
            }
            else if(_loc18_ >= this.§6;§)
            {
               if(this.§"B§ != b2internal::&!U)
               {
                  this.§"B§ = b2internal::&!U;
                  this.§12§.y = 0;
               }
            }
            else
            {
               this.§"B§ = b2internal::7t;
               this.§12§.y = 0;
            }
         }
         else
         {
            this.§"B§ = b2internal::7t;
         }
         if(this.§6!P§ == false)
         {
            this.§!!X§ = 0;
         }
         if(param1.§?S§)
         {
            this.§12§.x *= param1.§const§;
            this.§12§.y *= param1.§const§;
            this.§!!X§ *= param1.§const§;
            _loc19_ = this.§12§.x * this.§9N§.x + (this.§!!X§ + this.§12§.y) * this.§0G§.x;
            _loc20_ = this.§12§.x * this.§9N§.y + (this.§!!X§ + this.§12§.y) * this.§0G§.y;
            _loc21_ = this.§12§.x * this.m_s1 + (this.§!!X§ + this.§12§.y) * this.m_a1;
            _loc22_ = this.§12§.x * this.m_s2 + (this.§!!X§ + this.§12§.y) * this.m_a2;
            _loc2_.§@S§.x -= b2internal::5!H * _loc19_;
            _loc2_.§@S§.y -= b2internal::5!H * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::?Y * _loc21_;
            _loc3_.§@S§.x += b2internal::^I * _loc19_;
            _loc3_.§@S§.y += b2internal::^I * _loc20_;
            _loc3_.m_angularVelocity += b2internal::9H * _loc22_;
         }
         else
         {
            this.§12§.§^!,§();
            this.§!!X§ = 0;
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
         var _loc2_:b2Body = b2internal::#A;
         var _loc3_:b2Body = b2internal::2!`;
         var _loc4_:b2Vec2 = _loc2_.§@S§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§@S§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§6!P§ && this.§"B§ != b2internal::]!A)
         {
            _loc13_ = this.§0G§.x * (_loc6_.x - _loc4_.x) + this.§0G§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§!b§ * (this.§?T§ - _loc13_);
            _loc15_ = this.§!!X§;
            _loc16_ = param1.§?u§ * this.§=&§;
            this.§!!X§ = b2Math.§>I§(this.§!!X§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§!!X§ - _loc15_) * this.§0G§.x;
            _loc9_ = _loc14_ * this.§0G§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::5!H * _loc8_;
            _loc4_.y -= b2internal::5!H * _loc9_;
            _loc5_ -= b2internal::?Y * _loc10_;
            _loc6_.x += b2internal::^I * _loc8_;
            _loc6_.y += b2internal::^I * _loc9_;
            _loc7_ += b2internal::9H * _loc11_;
         }
         var _loc12_:Number = this.§9N§.x * (_loc6_.x - _loc4_.x) + this.§9N§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§?!c§ && this.§"B§ != b2internal::7t)
         {
            _loc17_ = this.§0G§.x * (_loc6_.x - _loc4_.x) + this.§0G§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§12§.Copy();
            _loc19_ = this.§,W§.§]!G§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§12§.§ v§(_loc19_);
            if(this.§"B§ == b2internal::-z)
            {
               this.§12§.y = b2Math.§9![§(this.§12§.y,0);
            }
            else if(this.§"B§ == b2internal::&!U)
            {
               this.§12§.y = b2Math.§ d§(this.§12§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§12§.y - _loc18_.y) * this.§,W§.col2.x;
            if(this.§,W§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§,W§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§12§.x = _loc21_;
            _loc19_.x = this.§12§.x - _loc18_.x;
            _loc19_.y = this.§12§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§9N§.x + _loc19_.y * this.§0G§.x;
            _loc9_ = _loc19_.x * this.§9N§.y + _loc19_.y * this.§0G§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::5!H * _loc8_;
            _loc4_.y -= b2internal::5!H * _loc9_;
            _loc5_ -= b2internal::?Y * _loc10_;
            _loc6_.x += b2internal::^I * _loc8_;
            _loc6_.y += b2internal::^I * _loc9_;
            _loc7_ += b2internal::9H * _loc11_;
         }
         else
         {
            if(this.§,W§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§,W§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§12§.x += _loc22_;
            _loc8_ = _loc22_ * this.§9N§.x;
            _loc9_ = _loc22_ * this.§9N§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::5!H * _loc8_;
            _loc4_.y -= b2internal::5!H * _loc9_;
            _loc5_ -= b2internal::?Y * _loc10_;
            _loc6_.x += b2internal::^I * _loc8_;
            _loc6_.y += b2internal::^I * _loc9_;
            _loc7_ += b2internal::9H * _loc11_;
         }
         _loc2_.§@S§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§@S§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::#A;
         var _loc5_:b2Body = b2internal::2!`;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§>G§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§>G§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::+B.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::+B.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::0t.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::0t.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§?!c§)
         {
            this.§0G§ = b2Math.§ !$§(_loc20_,this.§>!@§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§0G§.y - (_loc27_ + _loc23_) * this.§0G§.x;
            this.m_a2 = _loc24_ * this.§0G§.y - _loc25_ * this.§0G§.x;
            _loc34_ = this.§0G§.x * _loc26_ + this.§0G§.y * _loc27_;
            if(b2Math.§!V§(this.§6;§ - this.§;!`§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§>I§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§!V§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§;!`§)
            {
               _loc19_ = b2Math.§>I§(_loc34_ - this.§;!`§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§;!`§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§6;§)
            {
               _loc19_ = b2Math.§>I§(_loc34_ - this.§6;§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§6;§;
               _loc18_ = true;
            }
         }
         this.§9N§ = b2Math.§ !$§(_loc20_,this.§%u§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§9N§.y - (_loc27_ + _loc23_) * this.§9N§.x;
         this.m_s2 = _loc24_ * this.§9N§.y - _loc25_ * this.§9N§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§9N§.x * _loc26_ + this.§9N§.y * _loc27_;
         _loc16_ = b2Math.§9![§(_loc16_,b2Math.§!V§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::5!H;
            _loc13_ = b2internal::^I;
            _loc14_ = b2internal::?Y;
            _loc15_ = b2internal::9H;
            this.§,W§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§,W§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§,W§.col2.x = this.§,W§.col1.y;
            this.§,W§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§,W§.§]!G§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::5!H;
            _loc13_ = b2internal::^I;
            _loc14_ = b2internal::?Y;
            _loc15_ = b2internal::9H;
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
         var _loc30_:Number = _loc28_.x * this.§9N§.x + _loc28_.y * this.§0G§.x;
         var _loc31_:Number = _loc28_.x * this.§9N§.y + _loc28_.y * this.§0G§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::5!H * _loc30_;
         _loc6_.y -= b2internal::5!H * _loc31_;
         _loc7_ -= b2internal::?Y * _loc32_;
         _loc8_.x += b2internal::^I * _loc30_;
         _loc8_.y += b2internal::^I * _loc31_;
         _loc9_ += b2internal::9H * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§-W§();
         _loc5_.§-W§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

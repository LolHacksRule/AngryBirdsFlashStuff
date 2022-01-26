package §=!P§
{
   import §4! §.b2Settings;
   import §4! §.b2internal;
   import §9t§.b2Body;
   import §9t§.b2TimeStep;
   import §^q§.b2Mat22;
   import §^q§.b2Math;
   import §^q§.b2Transform;
   import §^q§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §^%§:b2Vec2;
      
      private var § !T§:b2Vec2;
      
      private var §#§:b2Vec2;
      
      private var §+!&§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §<! §:b2Mat22;
      
      private var §8!R§:b2Vec2;
      
      private var §;!&§:Number;
      
      private var §6!`§:Number;
      
      private var §'%§:Number;
      
      private var §'J§:Number;
      
      private var §8!4§:Number;
      
      private var §9F§:Number;
      
      private var § g§:Boolean;
      
      private var §@g§:Boolean;
      
      private var §^V§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§^%§ = new b2Vec2();
         this.§ !T§ = new b2Vec2();
         this.§#§ = new b2Vec2();
         this.§+!&§ = new b2Vec2();
         this.§<! § = new b2Mat22();
         this.§8!R§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§;I§);
         this.m_localAnchor2.SetV(param1.§-!&§);
         this.§^%§.SetV(param1.§]2§);
         this.§ !T§.x = -this.§^%§.y;
         this.§ !T§.y = this.§^%§.x;
         this.§8!R§.§0q§();
         this.§;!&§ = 0;
         this.§6!`§ = 0;
         this.§'%§ = param1.§ 0§;
         this.§'J§ = param1.§%,§;
         this.§8!4§ = param1.§7[§;
         this.§9F§ = param1.motorSpeed;
         this.§ g§ = param1.§'!`§;
         this.§@g§ = param1.§@<§;
         this.§^V§ = b2internal::@+;
         this.§#§.§0q§();
         this.§+!&§.§0q§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::&!?.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::!!c.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§8!R§.x * this.§+!&§.x + (this.§6!`§ + this.§8!R§.y) * this.§#§.x),param1 * (this.§8!R§.x * this.§+!&§.y + (this.§6!`§ + this.§8!R§.y) * this.§#§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§8!R§.y;
      }
      
      public function §[,§() : Number
      {
         var _loc1_:b2Body = b2internal::&!?;
         var _loc2_:b2Body = b2internal::!!c;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§0!G§(this.§^%§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §&!A§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::&!?;
         var _loc2_:b2Body = b2internal::!!c;
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
         var _loc15_:b2Vec2 = _loc1_.§0!G§(this.§^%§);
         var _loc16_:b2Vec2 = _loc1_.§"!N§;
         var _loc17_:b2Vec2 = _loc2_.§"!N§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §?T§() : Boolean
      {
         return this.§ g§;
      }
      
      public function §if §(param1:Boolean) : void
      {
         b2internal::&!?.SetAwake(true);
         b2internal::!!c.SetAwake(true);
         this.§ g§ = param1;
      }
      
      public function § C§() : Number
      {
         return this.§'%§;
      }
      
      public function §]G§() : Number
      {
         return this.§'J§;
      }
      
      public function §%O§(param1:Number, param2:Number) : void
      {
         b2internal::&!?.SetAwake(true);
         b2internal::!!c.SetAwake(true);
         this.§'%§ = param1;
         this.§'J§ = param2;
      }
      
      public function §!6§() : Boolean
      {
         return this.§@g§;
      }
      
      public function §>!=§(param1:Boolean) : void
      {
         b2internal::&!?.SetAwake(true);
         b2internal::!!c.SetAwake(true);
         this.§@g§ = param1;
      }
      
      public function §==§(param1:Number) : void
      {
         b2internal::&!?.SetAwake(true);
         b2internal::!!c.SetAwake(true);
         this.§9F§ = param1;
      }
      
      public function §2!V§() : Number
      {
         return this.§9F§;
      }
      
      public function §;![§(param1:Number) : void
      {
         b2internal::&!?.SetAwake(true);
         b2internal::!!c.SetAwake(true);
         this.§8!4§ = param1;
      }
      
      public function §<Y§() : Number
      {
         return this.§8!4§;
      }
      
      public function §,!L§() : Number
      {
         return this.§6!`§;
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
         var _loc2_:b2Body = b2internal::&!?;
         var _loc3_:b2Body = b2internal::!!c;
         b2internal::]!".SetV(_loc2_.§-q§());
         b2internal::6!X.SetV(_loc3_.§-q§());
         var _loc6_:b2Transform = _loc2_.§%!c§();
         var _loc7_:b2Transform = _loc3_.§%!c§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::]!".x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::]!".y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::6!X.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::6!X.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §,N§ = _loc2_.§5Z§;
         §!7§ = _loc3_.§5Z§;
         §5;§ = _loc2_.§[S§;
         §6$§ = _loc3_.§[S§;
         this.§#§.SetV(b2Math.§!X§(_loc6_.R,this.§^%§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§#§.y - (_loc13_ + _loc9_) * this.§#§.x;
         this.m_a2 = _loc10_ * this.§#§.y - _loc11_ * this.§#§.x;
         this.§;!&§ = b2internal::,N + b2internal::!7 + b2internal::5; * this.m_a1 * this.m_a1 + b2internal::6$ * this.m_a2 * this.m_a2;
         this.§;!&§ = this.§;!&§ > Number.MIN_VALUE ? Number(1 / this.§;!&§) : Number(0);
         this.§+!&§.SetV(b2Math.§!X§(_loc6_.R,this.§ !T§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§+!&§.y - (_loc13_ + _loc9_) * this.§+!&§.x;
         this.m_s2 = _loc10_ * this.§+!&§.y - _loc11_ * this.§+!&§.x;
         var _loc14_:Number = b2internal::,N;
         var _loc15_:Number = b2internal::!7;
         var _loc16_:Number = b2internal::5;;
         var _loc17_:Number = b2internal::6$;
         this.§<! §.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§<! §.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§<! §.col2.x = this.§<! §.col1.y;
         this.§<! §.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§ g§)
         {
            _loc18_ = this.§#§.x * _loc12_ + this.§#§.y * _loc13_;
            if(b2Math.§"§(this.§'J§ - this.§'%§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§^V§ = b2internal::&9;
            }
            else if(_loc18_ <= this.§'%§)
            {
               if(this.§^V§ != b2internal:: %)
               {
                  this.§^V§ = b2internal:: %;
                  this.§8!R§.y = 0;
               }
            }
            else if(_loc18_ >= this.§'J§)
            {
               if(this.§^V§ != b2internal::-I)
               {
                  this.§^V§ = b2internal::-I;
                  this.§8!R§.y = 0;
               }
            }
            else
            {
               this.§^V§ = b2internal::@+;
               this.§8!R§.y = 0;
            }
         }
         else
         {
            this.§^V§ = b2internal::@+;
         }
         if(this.§@g§ == false)
         {
            this.§6!`§ = 0;
         }
         if(param1.§3!S§)
         {
            this.§8!R§.x *= param1.§8B§;
            this.§8!R§.y *= param1.§8B§;
            this.§6!`§ *= param1.§8B§;
            _loc19_ = this.§8!R§.x * this.§+!&§.x + (this.§6!`§ + this.§8!R§.y) * this.§#§.x;
            _loc20_ = this.§8!R§.x * this.§+!&§.y + (this.§6!`§ + this.§8!R§.y) * this.§#§.y;
            _loc21_ = this.§8!R§.x * this.m_s1 + (this.§6!`§ + this.§8!R§.y) * this.m_a1;
            _loc22_ = this.§8!R§.x * this.m_s2 + (this.§6!`§ + this.§8!R§.y) * this.m_a2;
            _loc2_.§"!N§.x -= b2internal::,N * _loc19_;
            _loc2_.§"!N§.y -= b2internal::,N * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::5; * _loc21_;
            _loc3_.§"!N§.x += b2internal::!7 * _loc19_;
            _loc3_.§"!N§.y += b2internal::!7 * _loc20_;
            _loc3_.m_angularVelocity += b2internal::6$ * _loc22_;
         }
         else
         {
            this.§8!R§.§0q§();
            this.§6!`§ = 0;
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
         var _loc2_:b2Body = b2internal::&!?;
         var _loc3_:b2Body = b2internal::!!c;
         var _loc4_:b2Vec2 = _loc2_.§"!N§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§"!N§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§@g§ && this.§^V§ != b2internal::&9)
         {
            _loc13_ = this.§#§.x * (_loc6_.x - _loc4_.x) + this.§#§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§;!&§ * (this.§9F§ - _loc13_);
            _loc15_ = this.§6!`§;
            _loc16_ = param1.§7!H§ * this.§8!4§;
            this.§6!`§ = b2Math.§in§(this.§6!`§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§6!`§ - _loc15_) * this.§#§.x;
            _loc9_ = _loc14_ * this.§#§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::,N * _loc8_;
            _loc4_.y -= b2internal::,N * _loc9_;
            _loc5_ -= b2internal::5; * _loc10_;
            _loc6_.x += b2internal::!7 * _loc8_;
            _loc6_.y += b2internal::!7 * _loc9_;
            _loc7_ += b2internal::6$ * _loc11_;
         }
         var _loc12_:Number = this.§+!&§.x * (_loc6_.x - _loc4_.x) + this.§+!&§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§ g§ && this.§^V§ != b2internal::@+)
         {
            _loc17_ = this.§#§.x * (_loc6_.x - _loc4_.x) + this.§#§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§8!R§.Copy();
            _loc19_ = this.§<! §.§#p§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§8!R§.§9&§(_loc19_);
            if(this.§^V§ == b2internal:: %)
            {
               this.§8!R§.y = b2Math.§`a§(this.§8!R§.y,0);
            }
            else if(this.§^V§ == b2internal::-I)
            {
               this.§8!R§.y = b2Math.§33§(this.§8!R§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§8!R§.y - _loc18_.y) * this.§<! §.col2.x;
            if(this.§<! §.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§<! §.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§8!R§.x = _loc21_;
            _loc19_.x = this.§8!R§.x - _loc18_.x;
            _loc19_.y = this.§8!R§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§+!&§.x + _loc19_.y * this.§#§.x;
            _loc9_ = _loc19_.x * this.§+!&§.y + _loc19_.y * this.§#§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::,N * _loc8_;
            _loc4_.y -= b2internal::,N * _loc9_;
            _loc5_ -= b2internal::5; * _loc10_;
            _loc6_.x += b2internal::!7 * _loc8_;
            _loc6_.y += b2internal::!7 * _loc9_;
            _loc7_ += b2internal::6$ * _loc11_;
         }
         else
         {
            if(this.§<! §.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§<! §.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§8!R§.x += _loc22_;
            _loc8_ = _loc22_ * this.§+!&§.x;
            _loc9_ = _loc22_ * this.§+!&§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::,N * _loc8_;
            _loc4_.y -= b2internal::,N * _loc9_;
            _loc5_ -= b2internal::5; * _loc10_;
            _loc6_.x += b2internal::!7 * _loc8_;
            _loc6_.y += b2internal::!7 * _loc9_;
            _loc7_ += b2internal::6$ * _loc11_;
         }
         _loc2_.§"!N§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§"!N§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::&!?;
         var _loc5_:b2Body = b2internal::!!c;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§'o§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§'o§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::]!".x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::]!".y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::6!X.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::6!X.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§ g§)
         {
            this.§#§ = b2Math.§!X§(_loc20_,this.§^%§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§#§.y - (_loc27_ + _loc23_) * this.§#§.x;
            this.m_a2 = _loc24_ * this.§#§.y - _loc25_ * this.§#§.x;
            _loc34_ = this.§#§.x * _loc26_ + this.§#§.y * _loc27_;
            if(b2Math.§"§(this.§'J§ - this.§'%§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§in§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§"§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§'%§)
            {
               _loc19_ = b2Math.§in§(_loc34_ - this.§'%§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§'%§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§'J§)
            {
               _loc19_ = b2Math.§in§(_loc34_ - this.§'J§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§'J§;
               _loc18_ = true;
            }
         }
         this.§+!&§ = b2Math.§!X§(_loc20_,this.§ !T§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§+!&§.y - (_loc27_ + _loc23_) * this.§+!&§.x;
         this.m_s2 = _loc24_ * this.§+!&§.y - _loc25_ * this.§+!&§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§+!&§.x * _loc26_ + this.§+!&§.y * _loc27_;
         _loc16_ = b2Math.§`a§(_loc16_,b2Math.§"§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::,N;
            _loc13_ = b2internal::!7;
            _loc14_ = b2internal::5;;
            _loc15_ = b2internal::6$;
            this.§<! §.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§<! §.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§<! §.col2.x = this.§<! §.col1.y;
            this.§<! §.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§<! §.§#p§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::,N;
            _loc13_ = b2internal::!7;
            _loc14_ = b2internal::5;;
            _loc15_ = b2internal::6$;
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
         var _loc30_:Number = _loc28_.x * this.§+!&§.x + _loc28_.y * this.§#§.x;
         var _loc31_:Number = _loc28_.x * this.§+!&§.y + _loc28_.y * this.§#§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::,N * _loc30_;
         _loc6_.y -= b2internal::,N * _loc31_;
         _loc7_ -= b2internal::5; * _loc32_;
         _loc8_.x += b2internal::!7 * _loc30_;
         _loc8_.y += b2internal::!7 * _loc31_;
         _loc9_ += b2internal::6$ * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§`%§();
         _loc5_.§`%§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

package §[!8§
{
   import §0!G§.b2Mat22;
   import §0!G§.b2Math;
   import §0!G§.b2Transform;
   import §0!G§.b2Vec2;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   import §`j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §7!"§:b2Vec2;
      
      private var §4!8§:b2Vec2;
      
      private var §"Z§:b2Vec2;
      
      private var §#9§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §]2§:b2Mat22;
      
      private var § !6§:b2Vec2;
      
      private var §4v§:Number;
      
      private var §]!]§:Number;
      
      private var §@!C§:Number;
      
      private var §=!C§:Number;
      
      private var §"`§:Number;
      
      private var §'!E§:Number;
      
      private var §?;§:Boolean;
      
      private var §`a§:Boolean;
      
      private var §,4§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§7!"§ = new b2Vec2();
         this.§4!8§ = new b2Vec2();
         this.§"Z§ = new b2Vec2();
         this.§#9§ = new b2Vec2();
         this.§]2§ = new b2Mat22();
         this.§ !6§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§;9§);
         this.m_localAnchor2.SetV(param1.§-y§);
         this.§7!"§.SetV(param1.§0v§);
         this.§4!8§.x = -this.§7!"§.y;
         this.§4!8§.y = this.§7!"§.x;
         this.§ !6§.§3a§();
         this.§4v§ = 0;
         this.§]!]§ = 0;
         this.§@!C§ = param1.§[F§;
         this.§=!C§ = param1.§>Z§;
         this.§"`§ = param1.§>!Y§;
         this.§'!E§ = param1.motorSpeed;
         this.§?;§ = param1.§1&§;
         this.§`a§ = param1.§^=§;
         this.§,4§ = b2internal::%W;
         this.§"Z§.§3a§();
         this.§#9§.§3a§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::`p.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%^.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§ !6§.x * this.§#9§.x + (this.§]!]§ + this.§ !6§.y) * this.§"Z§.x),param1 * (this.§ !6§.x * this.§#9§.y + (this.§]!]§ + this.§ !6§.y) * this.§"Z§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§ !6§.y;
      }
      
      public function §,1§() : Number
      {
         var _loc1_:b2Body = b2internal::`p;
         var _loc2_:b2Body = b2internal::%^;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§!!%§(this.§7!"§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §<P§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::`p;
         var _loc2_:b2Body = b2internal::%^;
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
         var _loc15_:b2Vec2 = _loc1_.§!!%§(this.§7!"§);
         var _loc16_:b2Vec2 = _loc1_.§,?§;
         var _loc17_:b2Vec2 = _loc2_.§,?§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §&&§() : Boolean
      {
         return this.§?;§;
      }
      
      public function §=<§(param1:Boolean) : void
      {
         b2internal::`p.SetAwake(true);
         b2internal::%^.SetAwake(true);
         this.§?;§ = param1;
      }
      
      public function §!!E§() : Number
      {
         return this.§@!C§;
      }
      
      public function §@U§() : Number
      {
         return this.§=!C§;
      }
      
      public function §6!L§(param1:Number, param2:Number) : void
      {
         b2internal::`p.SetAwake(true);
         b2internal::%^.SetAwake(true);
         this.§@!C§ = param1;
         this.§=!C§ = param2;
      }
      
      public function §!o§() : Boolean
      {
         return this.§`a§;
      }
      
      public function §?!2§(param1:Boolean) : void
      {
         b2internal::`p.SetAwake(true);
         b2internal::%^.SetAwake(true);
         this.§`a§ = param1;
      }
      
      public function §;X§(param1:Number) : void
      {
         b2internal::`p.SetAwake(true);
         b2internal::%^.SetAwake(true);
         this.§'!E§ = param1;
      }
      
      public function §class§() : Number
      {
         return this.§'!E§;
      }
      
      public function §8,§(param1:Number) : void
      {
         b2internal::`p.SetAwake(true);
         b2internal::%^.SetAwake(true);
         this.§"`§ = param1;
      }
      
      public function §9!C§() : Number
      {
         return this.§"`§;
      }
      
      public function §#!?§() : Number
      {
         return this.§]!]§;
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
         var _loc2_:b2Body = b2internal::`p;
         var _loc3_:b2Body = b2internal::%^;
         b2internal::=a.SetV(_loc2_.§8c§());
         b2internal::3D.SetV(_loc3_.§8c§());
         var _loc6_:b2Transform = _loc2_.§4!P§();
         var _loc7_:b2Transform = _loc3_.§4!P§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::=a.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::=a.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::3D.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::3D.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §3#§ = _loc2_.§#!D§;
         §=!X§ = _loc3_.§#!D§;
         §&!P§ = _loc2_.§?8§;
         § a§ = _loc3_.§?8§;
         this.§"Z§.SetV(b2Math.§2!3§(_loc6_.R,this.§7!"§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§"Z§.y - (_loc13_ + _loc9_) * this.§"Z§.x;
         this.m_a2 = _loc10_ * this.§"Z§.y - _loc11_ * this.§"Z§.x;
         this.§4v§ = b2internal::3# + b2internal::=!X + b2internal::&!P * this.m_a1 * this.m_a1 + b2internal:: a * this.m_a2 * this.m_a2;
         this.§4v§ = this.§4v§ > Number.MIN_VALUE ? Number(1 / this.§4v§) : Number(0);
         this.§#9§.SetV(b2Math.§2!3§(_loc6_.R,this.§4!8§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§#9§.y - (_loc13_ + _loc9_) * this.§#9§.x;
         this.m_s2 = _loc10_ * this.§#9§.y - _loc11_ * this.§#9§.x;
         var _loc14_:Number = b2internal::3#;
         var _loc15_:Number = b2internal::=!X;
         var _loc16_:Number = b2internal::&!P;
         var _loc17_:Number = b2internal:: a;
         this.§]2§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§]2§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§]2§.col2.x = this.§]2§.col1.y;
         this.§]2§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§?;§)
         {
            _loc18_ = this.§"Z§.x * _loc12_ + this.§"Z§.y * _loc13_;
            if(b2Math.§8M§(this.§=!C§ - this.§@!C§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§,4§ = b2internal::7^;
            }
            else if(_loc18_ <= this.§@!C§)
            {
               if(this.§,4§ != b2internal::%! )
               {
                  this.§,4§ = b2internal::%! ;
                  this.§ !6§.y = 0;
               }
            }
            else if(_loc18_ >= this.§=!C§)
            {
               if(this.§,4§ != b2internal::+!E)
               {
                  this.§,4§ = b2internal::+!E;
                  this.§ !6§.y = 0;
               }
            }
            else
            {
               this.§,4§ = b2internal::%W;
               this.§ !6§.y = 0;
            }
         }
         else
         {
            this.§,4§ = b2internal::%W;
         }
         if(this.§`a§ == false)
         {
            this.§]!]§ = 0;
         }
         if(param1.§5!N§)
         {
            this.§ !6§.x *= param1.§7!M§;
            this.§ !6§.y *= param1.§7!M§;
            this.§]!]§ *= param1.§7!M§;
            _loc19_ = this.§ !6§.x * this.§#9§.x + (this.§]!]§ + this.§ !6§.y) * this.§"Z§.x;
            _loc20_ = this.§ !6§.x * this.§#9§.y + (this.§]!]§ + this.§ !6§.y) * this.§"Z§.y;
            _loc21_ = this.§ !6§.x * this.m_s1 + (this.§]!]§ + this.§ !6§.y) * this.m_a1;
            _loc22_ = this.§ !6§.x * this.m_s2 + (this.§]!]§ + this.§ !6§.y) * this.m_a2;
            _loc2_.§,?§.x -= b2internal::3# * _loc19_;
            _loc2_.§,?§.y -= b2internal::3# * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::&!P * _loc21_;
            _loc3_.§,?§.x += b2internal::=!X * _loc19_;
            _loc3_.§,?§.y += b2internal::=!X * _loc20_;
            _loc3_.m_angularVelocity += b2internal:: a * _loc22_;
         }
         else
         {
            this.§ !6§.§3a§();
            this.§]!]§ = 0;
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
         var _loc2_:b2Body = b2internal::`p;
         var _loc3_:b2Body = b2internal::%^;
         var _loc4_:b2Vec2 = _loc2_.§,?§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§,?§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§`a§ && this.§,4§ != b2internal::7^)
         {
            _loc13_ = this.§"Z§.x * (_loc6_.x - _loc4_.x) + this.§"Z§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§4v§ * (this.§'!E§ - _loc13_);
            _loc15_ = this.§]!]§;
            _loc16_ = param1.§7!?§ * this.§"`§;
            this.§]!]§ = b2Math.§-!1§(this.§]!]§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§]!]§ - _loc15_) * this.§"Z§.x;
            _loc9_ = _loc14_ * this.§"Z§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::3# * _loc8_;
            _loc4_.y -= b2internal::3# * _loc9_;
            _loc5_ -= b2internal::&!P * _loc10_;
            _loc6_.x += b2internal::=!X * _loc8_;
            _loc6_.y += b2internal::=!X * _loc9_;
            _loc7_ += b2internal:: a * _loc11_;
         }
         var _loc12_:Number = this.§#9§.x * (_loc6_.x - _loc4_.x) + this.§#9§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§?;§ && this.§,4§ != b2internal::%W)
         {
            _loc17_ = this.§"Z§.x * (_loc6_.x - _loc4_.x) + this.§"Z§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§ !6§.Copy();
            _loc19_ = this.§]2§.§9G§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§ !6§.§-i§(_loc19_);
            if(this.§,4§ == b2internal::%! )
            {
               this.§ !6§.y = b2Math.§>e§(this.§ !6§.y,0);
            }
            else if(this.§,4§ == b2internal::+!E)
            {
               this.§ !6§.y = b2Math.§[S§(this.§ !6§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§ !6§.y - _loc18_.y) * this.§]2§.col2.x;
            if(this.§]2§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§]2§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§ !6§.x = _loc21_;
            _loc19_.x = this.§ !6§.x - _loc18_.x;
            _loc19_.y = this.§ !6§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§#9§.x + _loc19_.y * this.§"Z§.x;
            _loc9_ = _loc19_.x * this.§#9§.y + _loc19_.y * this.§"Z§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::3# * _loc8_;
            _loc4_.y -= b2internal::3# * _loc9_;
            _loc5_ -= b2internal::&!P * _loc10_;
            _loc6_.x += b2internal::=!X * _loc8_;
            _loc6_.y += b2internal::=!X * _loc9_;
            _loc7_ += b2internal:: a * _loc11_;
         }
         else
         {
            if(this.§]2§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§]2§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§ !6§.x += _loc22_;
            _loc8_ = _loc22_ * this.§#9§.x;
            _loc9_ = _loc22_ * this.§#9§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::3# * _loc8_;
            _loc4_.y -= b2internal::3# * _loc9_;
            _loc5_ -= b2internal::&!P * _loc10_;
            _loc6_.x += b2internal::=!X * _loc8_;
            _loc6_.y += b2internal::=!X * _loc9_;
            _loc7_ += b2internal:: a * _loc11_;
         }
         _loc2_.§,?§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§,?§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::`p;
         var _loc5_:b2Body = b2internal::%^;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§&V§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§&V§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::=a.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::=a.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::3D.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::3D.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§?;§)
         {
            this.§"Z§ = b2Math.§2!3§(_loc20_,this.§7!"§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§"Z§.y - (_loc27_ + _loc23_) * this.§"Z§.x;
            this.m_a2 = _loc24_ * this.§"Z§.y - _loc25_ * this.§"Z§.x;
            _loc34_ = this.§"Z§.x * _loc26_ + this.§"Z§.y * _loc27_;
            if(b2Math.§8M§(this.§=!C§ - this.§@!C§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§-!1§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§8M§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§@!C§)
            {
               _loc19_ = b2Math.§-!1§(_loc34_ - this.§@!C§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§@!C§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§=!C§)
            {
               _loc19_ = b2Math.§-!1§(_loc34_ - this.§=!C§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§=!C§;
               _loc18_ = true;
            }
         }
         this.§#9§ = b2Math.§2!3§(_loc20_,this.§4!8§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§#9§.y - (_loc27_ + _loc23_) * this.§#9§.x;
         this.m_s2 = _loc24_ * this.§#9§.y - _loc25_ * this.§#9§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§#9§.x * _loc26_ + this.§#9§.y * _loc27_;
         _loc16_ = b2Math.§>e§(_loc16_,b2Math.§8M§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::3#;
            _loc13_ = b2internal::=!X;
            _loc14_ = b2internal::&!P;
            _loc15_ = b2internal:: a;
            this.§]2§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§]2§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§]2§.col2.x = this.§]2§.col1.y;
            this.§]2§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§]2§.§9G§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::3#;
            _loc13_ = b2internal::=!X;
            _loc14_ = b2internal::&!P;
            _loc15_ = b2internal:: a;
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
         var _loc30_:Number = _loc28_.x * this.§#9§.x + _loc28_.y * this.§"Z§.x;
         var _loc31_:Number = _loc28_.x * this.§#9§.y + _loc28_.y * this.§"Z§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::3# * _loc30_;
         _loc6_.y -= b2internal::3# * _loc31_;
         _loc7_ -= b2internal::&!P * _loc32_;
         _loc8_.x += b2internal::=!X * _loc30_;
         _loc8_.y += b2internal::=!X * _loc31_;
         _loc9_ += b2internal:: a * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§=!Y§();
         _loc5_.§=!Y§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

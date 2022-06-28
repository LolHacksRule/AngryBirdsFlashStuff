package §5!_§
{
   import §1%§.b2Body;
   import §1%§.b2TimeStep;
   import §8!H§.b2Settings;
   import §8!H§.b2internal;
   import §?!&§.b2Mat22;
   import §?!&§.b2Math;
   import §?!&§.b2Transform;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §!!D§:b2Vec2;
      
      private var §!"§:b2Vec2;
      
      private var §"x§:b2Vec2;
      
      private var §1+§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §'!g§:b2Mat22;
      
      private var §>!C§:b2Vec2;
      
      private var §8!B§:Number;
      
      private var §<D§:Number;
      
      private var § !S§:Number;
      
      private var §3!b§:Number;
      
      private var §^W§:Number;
      
      private var §+V§:Number;
      
      private var §+`§:Boolean;
      
      private var §4z§:Boolean;
      
      private var §;,§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§!!D§ = new b2Vec2();
         this.§!"§ = new b2Vec2();
         this.§"x§ = new b2Vec2();
         this.§1+§ = new b2Vec2();
         this.§'!g§ = new b2Mat22();
         this.§>!C§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§'!<§);
         this.m_localAnchor2.SetV(param1.§1!0§);
         this.§!!D§.SetV(param1.§<!Y§);
         this.§!"§.x = -this.§!!D§.y;
         this.§!"§.y = this.§!!D§.x;
         this.§>!C§.§@l§();
         this.§8!B§ = 0;
         this.§<D§ = 0;
         this.§ !S§ = param1.§1!D§;
         this.§3!b§ = param1.§#g§;
         this.§^W§ = param1.§#M§;
         this.§+V§ = param1.motorSpeed;
         this.§+`§ = param1.§!X§;
         this.§4z§ = param1.§0e§;
         this.§;,§ = §1P§;
         this.§"x§.§@l§();
         this.§1+§.§@l§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §,^§.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return § X§.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§>!C§.x * this.§1+§.x + (this.§<D§ + this.§>!C§.y) * this.§"x§.x),param1 * (this.§>!C§.x * this.§1+§.y + (this.§<D§ + this.§>!C§.y) * this.§"x§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§>!C§.y;
      }
      
      public function §>t§() : Number
      {
         var _loc1_:b2Body = §,^§;
         var _loc2_:b2Body = § X§;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2 = _loc2_.GetWorldPoint(this.m_localAnchor2);
         var _loc6_:Number = _loc5_.x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2 = _loc1_.§]!-§(this.§!!D§);
         return Number(_loc8_.x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §4!=§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = §,^§;
         var _loc2_:b2Body = § X§;
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
         var _loc15_:b2Vec2 = _loc1_.§]!-§(this.§!!D§);
         var _loc16_:b2Vec2 = _loc1_.§69§;
         var _loc17_:b2Vec2 = _loc2_.§69§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §!!N§() : Boolean
      {
         return this.§+`§;
      }
      
      public function §5P§(param1:Boolean) : void
      {
         §,^§.SetAwake(true);
         § X§.SetAwake(true);
         this.§+`§ = param1;
      }
      
      public function § 1§() : Number
      {
         return this.§ !S§;
      }
      
      public function §#c§() : Number
      {
         return this.§3!b§;
      }
      
      public function §`k§(param1:Number, param2:Number) : void
      {
         §,^§.SetAwake(true);
         § X§.SetAwake(true);
         this.§ !S§ = param1;
         this.§3!b§ = param2;
      }
      
      public function §2,§() : Boolean
      {
         return this.§4z§;
      }
      
      public function §@-§(param1:Boolean) : void
      {
         §,^§.SetAwake(true);
         § X§.SetAwake(true);
         this.§4z§ = param1;
      }
      
      public function §39§(param1:Number) : void
      {
         §,^§.SetAwake(true);
         § X§.SetAwake(true);
         this.§+V§ = param1;
      }
      
      public function §3!g§() : Number
      {
         return this.§+V§;
      }
      
      public function §"!g§(param1:Number) : void
      {
         §,^§.SetAwake(true);
         § X§.SetAwake(true);
         this.§^W§ = param1;
      }
      
      public function §+z§() : Number
      {
         return this.§^W§;
      }
      
      public function §%e§() : Number
      {
         return this.§<D§;
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
         var _loc2_:b2Body = §,^§;
         var _loc3_:b2Body = § X§;
         §8'§.SetV(_loc2_.§;]§());
         §<!;§.SetV(_loc3_.§;]§());
         var _loc6_:b2Transform = _loc2_.§?Q§();
         var _loc7_:b2Transform = _loc3_.§?Q§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - §8'§.x;
         var _loc9_:Number = this.m_localAnchor1.y - §8'§.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - §<!;§.x;
         var _loc11_:Number = this.m_localAnchor2.y - §<!;§.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §+!b§ = _loc2_.§4s§;
         §%!]§ = _loc3_.§4s§;
         §[!3§ = _loc2_.§[!F§;
         §[S§ = _loc3_.§[!F§;
         this.§"x§.SetV(b2Math.§>8§(_loc6_.R,this.§!!D§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§"x§.y - (_loc13_ + _loc9_) * this.§"x§.x;
         this.m_a2 = _loc10_ * this.§"x§.y - _loc11_ * this.§"x§.x;
         this.§8!B§ = §+!b§ + §%!]§ + §[!3§ * this.m_a1 * this.m_a1 + §[S§ * this.m_a2 * this.m_a2;
         this.§8!B§ = this.§8!B§ > Number.MIN_VALUE ? Number(1 / this.§8!B§) : Number(0);
         this.§1+§.SetV(b2Math.§>8§(_loc6_.R,this.§!"§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§1+§.y - (_loc13_ + _loc9_) * this.§1+§.x;
         this.m_s2 = _loc10_ * this.§1+§.y - _loc11_ * this.§1+§.x;
         var _loc14_:Number = §+!b§;
         var _loc15_:Number = §%!]§;
         var _loc16_:Number = §[!3§;
         var _loc17_:Number = §[S§;
         this.§'!g§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§'!g§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§'!g§.col2.x = this.§'!g§.col1.y;
         this.§'!g§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§+`§)
         {
            _loc18_ = this.§"x§.x * _loc12_ + this.§"x§.y * _loc13_;
            if(b2Math.§'!8§(this.§3!b§ - this.§ !S§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§;,§ = §>!2§;
            }
            else if(_loc18_ <= this.§ !S§)
            {
               if(this.§;,§ != §1!>§)
               {
                  this.§;,§ = §1!>§;
                  this.§>!C§.y = 0;
               }
            }
            else if(_loc18_ >= this.§3!b§)
            {
               if(this.§;,§ != §5'§)
               {
                  this.§;,§ = §5'§;
                  this.§>!C§.y = 0;
               }
            }
            else
            {
               this.§;,§ = §1P§;
               this.§>!C§.y = 0;
            }
         }
         else
         {
            this.§;,§ = §1P§;
         }
         if(this.§4z§ == false)
         {
            this.§<D§ = 0;
         }
         if(param1.§3!=§)
         {
            this.§>!C§.x *= param1.§&l§;
            this.§>!C§.y *= param1.§&l§;
            this.§<D§ *= param1.§&l§;
            _loc19_ = this.§>!C§.x * this.§1+§.x + (this.§<D§ + this.§>!C§.y) * this.§"x§.x;
            _loc20_ = this.§>!C§.x * this.§1+§.y + (this.§<D§ + this.§>!C§.y) * this.§"x§.y;
            _loc21_ = this.§>!C§.x * this.m_s1 + (this.§<D§ + this.§>!C§.y) * this.m_a1;
            _loc22_ = this.§>!C§.x * this.m_s2 + (this.§<D§ + this.§>!C§.y) * this.m_a2;
            _loc2_.§69§.x -= §+!b§ * _loc19_;
            _loc2_.§69§.y -= §+!b§ * _loc20_;
            _loc2_.m_angularVelocity -= §[!3§ * _loc21_;
            _loc3_.§69§.x += §%!]§ * _loc19_;
            _loc3_.§69§.y += §%!]§ * _loc20_;
            _loc3_.m_angularVelocity += §[S§ * _loc22_;
         }
         else
         {
            this.§>!C§.§@l§();
            this.§<D§ = 0;
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
         var _loc2_:b2Body = §,^§;
         var _loc3_:b2Body = § X§;
         var _loc4_:b2Vec2 = _loc2_.§69§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§69§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§4z§ && this.§;,§ != §>!2§)
         {
            _loc13_ = this.§"x§.x * (_loc6_.x - _loc4_.x) + this.§"x§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§8!B§ * (this.§+V§ - _loc13_);
            _loc15_ = this.§<D§;
            _loc16_ = param1.§?!>§ * this.§^W§;
            this.§<D§ = b2Math.§"J§(this.§<D§ + _loc14_,-_loc16_,_loc16_);
            _loc14_ = this.§<D§ - _loc15_;
            _loc8_ = _loc14_ * this.§"x§.x;
            _loc9_ = _loc14_ * this.§"x§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= §+!b§ * _loc8_;
            _loc4_.y -= §+!b§ * _loc9_;
            _loc5_ -= §[!3§ * _loc10_;
            _loc6_.x += §%!]§ * _loc8_;
            _loc6_.y += §%!]§ * _loc9_;
            _loc7_ += §[S§ * _loc11_;
         }
         var _loc12_:Number = this.§1+§.x * (_loc6_.x - _loc4_.x) + this.§1+§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§+`§ && this.§;,§ != §1P§)
         {
            _loc17_ = this.§"x§.x * (_loc6_.x - _loc4_.x) + this.§"x§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§>!C§.Copy();
            _loc19_ = this.§'!g§.§ M§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§>!C§.§1"§(_loc19_);
            if(this.§;,§ == §1!>§)
            {
               this.§>!C§.y = b2Math.§,C§(this.§>!C§.y,0);
            }
            else if(this.§;,§ == §5'§)
            {
               this.§>!C§.y = b2Math.§3G§(this.§>!C§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§>!C§.y - _loc18_.y) * this.§'!g§.col2.x;
            if(this.§'!g§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§'!g§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§>!C§.x = _loc21_;
            _loc19_.x = this.§>!C§.x - _loc18_.x;
            _loc19_.y = this.§>!C§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§1+§.x + _loc19_.y * this.§"x§.x;
            _loc9_ = _loc19_.x * this.§1+§.y + _loc19_.y * this.§"x§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= §+!b§ * _loc8_;
            _loc4_.y -= §+!b§ * _loc9_;
            _loc5_ -= §[!3§ * _loc10_;
            _loc6_.x += §%!]§ * _loc8_;
            _loc6_.y += §%!]§ * _loc9_;
            _loc7_ += §[S§ * _loc11_;
         }
         else
         {
            if(this.§'!g§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§'!g§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§>!C§.x += _loc22_;
            _loc8_ = _loc22_ * this.§1+§.x;
            _loc9_ = _loc22_ * this.§1+§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= §+!b§ * _loc8_;
            _loc4_.y -= §+!b§ * _loc9_;
            _loc5_ -= §[!3§ * _loc10_;
            _loc6_.x += §%!]§ * _loc8_;
            _loc6_.y += §%!]§ * _loc9_;
            _loc7_ += §[S§ * _loc11_;
         }
         _loc2_.§69§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§69§.SetV(_loc6_);
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
         var _loc4_:b2Body = §,^§;
         var _loc5_:b2Body = § X§;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§=&§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§=&§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - §8'§.x;
         var _loc23_:Number = this.m_localAnchor1.y - §8'§.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - §<!;§.x;
         var _loc25_:Number = this.m_localAnchor2.y - §<!;§.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§+`§)
         {
            this.§"x§ = b2Math.§>8§(_loc20_,this.§!!D§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§"x§.y - (_loc27_ + _loc23_) * this.§"x§.x;
            this.m_a2 = _loc24_ * this.§"x§.y - _loc25_ * this.§"x§.x;
            _loc34_ = this.§"x§.x * _loc26_ + this.§"x§.y * _loc27_;
            if(b2Math.§'!8§(this.§3!b§ - this.§ !S§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§"J§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§'!8§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§ !S§)
            {
               _loc19_ = b2Math.§"J§(_loc34_ - this.§ !S§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§ !S§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§3!b§)
            {
               _loc19_ = b2Math.§"J§(_loc34_ - this.§3!b§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§3!b§;
               _loc18_ = true;
            }
         }
         this.§1+§ = b2Math.§>8§(_loc20_,this.§!"§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§1+§.y - (_loc27_ + _loc23_) * this.§1+§.x;
         this.m_s2 = _loc24_ * this.§1+§.y - _loc25_ * this.§1+§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§1+§.x * _loc26_ + this.§1+§.y * _loc27_;
         _loc16_ = b2Math.§,C§(_loc16_,b2Math.§'!8§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = §+!b§;
            _loc13_ = §%!]§;
            _loc14_ = §[!3§;
            _loc15_ = §[S§;
            this.§'!g§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§'!g§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§'!g§.col2.x = this.§'!g§.col1.y;
            this.§'!g§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§'!g§.§ M§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = §+!b§;
            _loc13_ = §%!]§;
            _loc14_ = §[!3§;
            _loc15_ = §[S§;
            _loc35_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            if(_loc35_ != 0)
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
         var _loc30_:Number = _loc28_.x * this.§1+§.x + _loc28_.y * this.§"x§.x;
         var _loc31_:Number = _loc28_.x * this.§1+§.y + _loc28_.y * this.§"x§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= §+!b§ * _loc30_;
         _loc6_.y -= §+!b§ * _loc31_;
         _loc7_ -= §[!3§ * _loc32_;
         _loc8_.x += §%!]§ * _loc30_;
         _loc8_.y += §%!]§ * _loc31_;
         _loc9_ += §[S§ * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§`! §();
         _loc5_.§`! §();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

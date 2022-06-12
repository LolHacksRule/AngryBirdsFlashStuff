package §^%§
{
   import §1!z§.b2Mat22;
   import §1!z§.b2Mat33;
   import §1!z§.b2Math;
   import §1!z§.b2Transform;
   import §1!z§.b2Vec2;
   import §1!z§.b2Vec3;
   import §7!q§.b2Body;
   import §7!q§.b2TimeStep;
   import §[M§.b2Settings;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §&!A§:b2Vec2;
      
      private var §#l§:b2Vec2;
      
      private var §"!i§:Number;
      
      private var §0"8§:b2Vec2;
      
      private var §>!f§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §<!M§:b2Mat33;
      
      private var §^!@§:b2Vec3;
      
      private var §<F§:Number;
      
      private var §9!n§:Number;
      
      private var §`U§:Number;
      
      private var §"!$§:Number;
      
      private var §?<§:Number;
      
      private var §4=§:Number;
      
      private var §#!1§:Boolean;
      
      private var §&!;§:Boolean;
      
      private var §&!u§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§&!A§ = new b2Vec2();
         this.§#l§ = new b2Vec2();
         this.§0"8§ = new b2Vec2();
         this.§>!f§ = new b2Vec2();
         this.§<!M§ = new b2Mat33();
         this.§^!@§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§98§);
         this.m_localAnchor2.SetV(param1.§?m§);
         this.§&!A§.SetV(param1.§'!q§);
         this.§#l§.x = -this.§&!A§.y;
         this.§#l§.y = this.§&!A§.x;
         this.§"!i§ = param1.§""4§;
         this.§^!@§.§4e§();
         this.§<F§ = 0;
         this.§9!n§ = 0;
         this.§`U§ = param1.§ +§;
         this.§"!$§ = param1.§@0§;
         this.§?<§ = param1.§[!<§;
         this.§4=§ = param1.motorSpeed;
         this.§#!1§ = param1.§;5§;
         this.§&!;§ = param1.§>!g§;
         this.§&!u§ = b2internal::;k;
         this.§0"8§.§4e§();
         this.§>!f§.§4e§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!B.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;!=.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§^!@§.x * this.§>!f§.x + (this.§9!n§ + this.§^!@§.z) * this.§0"8§.x),param1 * (this.§^!@§.x * this.§>!f§.y + (this.§9!n§ + this.§^!@§.z) * this.§0"8§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§^!@§.y;
      }
      
      public function §4y§() : Number
      {
         var _loc1_:b2Body = b2internal::9!B;
         var _loc2_:b2Body = b2internal::;!=;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§4"#§(this.§&!A§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §=!C§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::9!B;
         var _loc2_:b2Body = b2internal::;!=;
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
         var _loc15_:b2Vec2 = _loc1_.§4"#§(this.§&!A§);
         var _loc16_:b2Vec2 = _loc1_.§4X§;
         var _loc17_:b2Vec2 = _loc2_.§4X§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §&C§() : Boolean
      {
         return this.§#!1§;
      }
      
      public function §&,§(param1:Boolean) : void
      {
         b2internal::9!B.SetAwake(true);
         b2internal::;!=.SetAwake(true);
         this.§#!1§ = param1;
      }
      
      public function §,§() : Number
      {
         return this.§`U§;
      }
      
      public function §7@§() : Number
      {
         return this.§"!$§;
      }
      
      public function §=E§(param1:Number, param2:Number) : void
      {
         b2internal::9!B.SetAwake(true);
         b2internal::;!=.SetAwake(true);
         this.§`U§ = param1;
         this.§"!$§ = param2;
      }
      
      public function §#!`§() : Boolean
      {
         return this.§&!;§;
      }
      
      public function §10§(param1:Boolean) : void
      {
         b2internal::9!B.SetAwake(true);
         b2internal::;!=.SetAwake(true);
         this.§&!;§ = param1;
      }
      
      public function §,"%§(param1:Number) : void
      {
         b2internal::9!B.SetAwake(true);
         b2internal::;!=.SetAwake(true);
         this.§4=§ = param1;
      }
      
      public function §?n§() : Number
      {
         return this.§4=§;
      }
      
      public function §4!J§(param1:Number) : void
      {
         b2internal::9!B.SetAwake(true);
         b2internal::;!=.SetAwake(true);
         this.§?<§ = param1;
      }
      
      public function §3R§() : Number
      {
         return this.§9!n§;
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
         var _loc2_:b2Body = b2internal::9!B;
         var _loc3_:b2Body = b2internal::;!=;
         b2internal::3!R.SetV(_loc2_.§<!q§());
         b2internal::9!.SetV(_loc3_.§<!q§());
         var _loc6_:b2Transform = _loc2_.§4!f§();
         var _loc7_:b2Transform = _loc3_.§4!f§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::3!R.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::3!R.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::9!.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::9!.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §'!v§ = _loc2_.§"!O§;
         §!!=§ = _loc3_.§"!O§;
         §0o§ = _loc2_.§6""§;
         §2!u§ = _loc3_.§6""§;
         this.§0"8§.SetV(b2Math.§%!T§(_loc6_.R,this.§&!A§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§0"8§.y - (_loc13_ + _loc9_) * this.§0"8§.x;
         this.m_a2 = _loc10_ * this.§0"8§.y - _loc11_ * this.§0"8§.x;
         this.§<F§ = b2internal::'!v + b2internal::!!= + b2internal::0o * this.m_a1 * this.m_a1 + b2internal::2!u * this.m_a2 * this.m_a2;
         if(this.§<F§ > Number.MIN_VALUE)
         {
            this.§<F§ = 1 / this.§<F§;
         }
         this.§>!f§.SetV(b2Math.§%!T§(_loc6_.R,this.§#l§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§>!f§.y - (_loc13_ + _loc9_) * this.§>!f§.x;
         this.m_s2 = _loc10_ * this.§>!f§.y - _loc11_ * this.§>!f§.x;
         var _loc14_:Number = b2internal::'!v;
         var _loc15_:Number = b2internal::!!=;
         var _loc16_:Number = b2internal::0o;
         var _loc17_:Number = b2internal::2!u;
         this.§<!M§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§<!M§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§<!M§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§<!M§.col2.x = this.§<!M§.col1.y;
         this.§<!M§.col2.y = _loc16_ + _loc17_;
         this.§<!M§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§<!M§.col3.x = this.§<!M§.col1.z;
         this.§<!M§.col3.y = this.§<!M§.col2.z;
         this.§<!M§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§#!1§)
         {
            _loc18_ = this.§0"8§.x * _loc12_ + this.§0"8§.y * _loc13_;
            if(b2Math.§'!2§(this.§"!$§ - this.§`U§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§&!u§ = b2internal::0F;
            }
            else if(_loc18_ <= this.§`U§)
            {
               if(this.§&!u§ != b2internal::+!c)
               {
                  this.§&!u§ = b2internal::+!c;
                  this.§^!@§.z = 0;
               }
            }
            else if(_loc18_ >= this.§"!$§)
            {
               if(this.§&!u§ != b2internal::<!3)
               {
                  this.§&!u§ = b2internal::<!3;
                  this.§^!@§.z = 0;
               }
            }
            else
            {
               this.§&!u§ = b2internal::;k;
               this.§^!@§.z = 0;
            }
         }
         else
         {
            this.§&!u§ = b2internal::;k;
         }
         if(this.§&!;§ == false)
         {
            this.§9!n§ = 0;
         }
         if(param1.§1!$§)
         {
            this.§^!@§.x *= param1.§`T§;
            this.§^!@§.y *= param1.§`T§;
            this.§9!n§ *= param1.§`T§;
            _loc19_ = this.§^!@§.x * this.§>!f§.x + (this.§9!n§ + this.§^!@§.z) * this.§0"8§.x;
            _loc20_ = this.§^!@§.x * this.§>!f§.y + (this.§9!n§ + this.§^!@§.z) * this.§0"8§.y;
            _loc21_ = this.§^!@§.x * this.m_s1 + this.§^!@§.y + (this.§9!n§ + this.§^!@§.z) * this.m_a1;
            _loc22_ = this.§^!@§.x * this.m_s2 + this.§^!@§.y + (this.§9!n§ + this.§^!@§.z) * this.m_a2;
            _loc2_.§4X§.x -= b2internal::'!v * _loc19_;
            _loc2_.§4X§.y -= b2internal::'!v * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::0o * _loc21_;
            _loc3_.§4X§.x += b2internal::!!= * _loc19_;
            _loc3_.§4X§.y += b2internal::!!= * _loc20_;
            _loc3_.m_angularVelocity += b2internal::2!u * _loc22_;
         }
         else
         {
            this.§^!@§.§4e§();
            this.§9!n§ = 0;
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
         var _loc2_:b2Body = b2internal::9!B;
         var _loc3_:b2Body = b2internal::;!=;
         var _loc4_:b2Vec2 = _loc2_.§4X§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§4X§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§&!;§ && this.§&!u§ != b2internal::0F)
         {
            _loc14_ = this.§0"8§.x * (_loc6_.x - _loc4_.x) + this.§0"8§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§<F§ * (this.§4=§ - _loc14_);
            _loc16_ = this.§9!n§;
            _loc17_ = param1.§<e§ * this.§?<§;
            this.§9!n§ = b2Math.§`"?§(this.§9!n§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§9!n§ - _loc16_) * this.§0"8§.x;
            _loc9_ = _loc15_ * this.§0"8§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::'!v * _loc8_;
            _loc4_.y -= b2internal::'!v * _loc9_;
            _loc5_ -= b2internal::0o * _loc10_;
            _loc6_.x += b2internal::!!= * _loc8_;
            _loc6_.y += b2internal::!!= * _loc9_;
            _loc7_ += b2internal::2!u * _loc11_;
         }
         var _loc12_:Number = this.§>!f§.x * (_loc6_.x - _loc4_.x) + this.§>!f§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§#!1§ && this.§&!u§ != b2internal::;k)
         {
            _loc18_ = this.§0"8§.x * (_loc6_.x - _loc4_.x) + this.§0"8§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§^!@§.Copy();
            _loc20_ = this.§<!M§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§^!@§.§4![§(_loc20_);
            if(this.§&!u§ == b2internal::+!c)
            {
               this.§^!@§.z = b2Math.§9!o§(this.§^!@§.z,0);
            }
            else if(this.§&!u§ == b2internal::<!3)
            {
               this.§^!@§.z = b2Math.§7!-§(this.§^!@§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§^!@§.z - _loc19_.z) * this.§<!M§.col3.x;
            _loc22_ = -_loc13_ - (this.§^!@§.z - _loc19_.z) * this.§<!M§.col3.y;
            _loc23_ = this.§<!M§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§^!@§.x = _loc23_.x;
            this.§^!@§.y = _loc23_.y;
            _loc20_.x = this.§^!@§.x - _loc19_.x;
            _loc20_.y = this.§^!@§.y - _loc19_.y;
            _loc20_.z = this.§^!@§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§>!f§.x + _loc20_.z * this.§0"8§.x;
            _loc9_ = _loc20_.x * this.§>!f§.y + _loc20_.z * this.§0"8§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::'!v * _loc8_;
            _loc4_.y -= b2internal::'!v * _loc9_;
            _loc5_ -= b2internal::0o * _loc10_;
            _loc6_.x += b2internal::!!= * _loc8_;
            _loc6_.y += b2internal::!!= * _loc9_;
            _loc7_ += b2internal::2!u * _loc11_;
         }
         else
         {
            _loc24_ = this.§<!M§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§^!@§.x += _loc24_.x;
            this.§^!@§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§>!f§.x;
            _loc9_ = _loc24_.x * this.§>!f§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::'!v * _loc8_;
            _loc4_.y -= b2internal::'!v * _loc9_;
            _loc5_ -= b2internal::0o * _loc10_;
            _loc6_.x += b2internal::!!= * _loc8_;
            _loc6_.y += b2internal::!!= * _loc9_;
            _loc7_ += b2internal::2!u * _loc11_;
         }
         _loc2_.§4X§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§4X§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::9!B;
         var _loc5_:b2Body = b2internal::;!=;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§&!K§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§&!K§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::3!R.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::3!R.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::9!.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::9!.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§#!1§)
         {
            this.§0"8§ = b2Math.§%!T§(_loc20_,this.§&!A§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§0"8§.y - (_loc27_ + _loc23_) * this.§0"8§.x;
            this.m_a2 = _loc24_ * this.§0"8§.y - _loc25_ * this.§0"8§.x;
            _loc35_ = this.§0"8§.x * _loc26_ + this.§0"8§.y * _loc27_;
            if(b2Math.§'!2§(this.§"!$§ - this.§`U§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§`"?§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§'!2§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§`U§)
            {
               _loc19_ = b2Math.§`"?§(_loc35_ - this.§`U§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§`U§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§"!$§)
            {
               _loc19_ = b2Math.§`"?§(_loc35_ - this.§"!$§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§"!$§;
               _loc18_ = true;
            }
         }
         this.§>!f§ = b2Math.§%!T§(_loc20_,this.§#l§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§>!f§.y - (_loc27_ + _loc23_) * this.§>!f§.x;
         this.m_s2 = _loc24_ * this.§>!f§.y - _loc25_ * this.§>!f§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§>!f§.x * _loc26_ + this.§>!f§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§"!i§;
         _loc16_ = b2Math.§9!o§(_loc16_,b2Math.§'!2§(_loc29_));
         _loc17_ = b2Math.§'!2§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::'!v;
            _loc13_ = b2internal::!!=;
            _loc14_ = b2internal::0o;
            _loc15_ = b2internal::2!u;
            this.§<!M§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§<!M§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§<!M§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§<!M§.col2.x = this.§<!M§.col1.y;
            this.§<!M§.col2.y = _loc14_ + _loc15_;
            this.§<!M§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§<!M§.col3.x = this.§<!M§.col1.z;
            this.§<!M§.col3.y = this.§<!M§.col2.z;
            this.§<!M§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§<!M§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::'!v;
            _loc13_ = b2internal::!!=;
            _loc14_ = b2internal::0o;
            _loc15_ = b2internal::2!u;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§<!M§.col1.Set(_loc36_,_loc37_,0);
            this.§<!M§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§<!M§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§>!f§.x + _loc28_.z * this.§0"8§.x;
         var _loc32_:Number = _loc28_.x * this.§>!f§.y + _loc28_.z * this.§0"8§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::'!v * _loc31_;
         _loc6_.y -= b2internal::'!v * _loc32_;
         _loc7_ -= b2internal::0o * _loc33_;
         _loc8_.x += b2internal::!!= * _loc31_;
         _loc8_.y += b2internal::!!= * _loc32_;
         _loc9_ += b2internal::2!u * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§<!S§();
         _loc5_.§<!S§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

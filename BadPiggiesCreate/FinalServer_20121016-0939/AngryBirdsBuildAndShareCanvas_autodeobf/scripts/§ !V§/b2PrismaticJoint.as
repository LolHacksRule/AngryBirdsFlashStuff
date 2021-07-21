package § !V§
{
   import §+S§.b2Body;
   import §+S§.b2TimeStep;
   import §2"=§.b2Mat22;
   import §2"=§.b2Mat33;
   import §2"=§.b2Math;
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §2"=§.b2Vec3;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §@!r§:b2Vec2;
      
      private var §;!Y§:b2Vec2;
      
      private var §1![§:Number;
      
      private var §2d§:b2Vec2;
      
      private var §6!V§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §,"0§:b2Mat33;
      
      private var §?;§:b2Vec3;
      
      private var §+!§:Number;
      
      private var §;!T§:Number;
      
      private var §`!v§:Number;
      
      private var §78§:Number;
      
      private var §&5§:Number;
      
      private var §3u§:Number;
      
      private var §!k§:Boolean;
      
      private var §"%§:Boolean;
      
      private var §'T§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§@!r§ = new b2Vec2();
         this.§;!Y§ = new b2Vec2();
         this.§2d§ = new b2Vec2();
         this.§6!V§ = new b2Vec2();
         this.§,"0§ = new b2Mat33();
         this.§?;§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§!2§);
         this.m_localAnchor2.SetV(param1.§ !c§);
         this.§@!r§.SetV(param1.§#"$§);
         this.§;!Y§.x = -this.§@!r§.y;
         this.§;!Y§.y = this.§@!r§.x;
         this.§1![§ = param1.§+!H§;
         this.§?;§.§@!s§();
         this.§+!§ = 0;
         this.§;!T§ = 0;
         this.§`!v§ = param1.§32§;
         this.§78§ = param1.§[!8§;
         this.§&5§ = param1.§&E§;
         this.§3u§ = param1.motorSpeed;
         this.§!k§ = param1.§4!E§;
         this.§"%§ = param1.§7!S§;
         this.§'T§ = b2internal::@g;
         this.§2d§.§@!s§();
         this.§6!V§.§@!s§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::0"7.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: `.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§?;§.x * this.§6!V§.x + (this.§;!T§ + this.§?;§.z) * this.§2d§.x),param1 * (this.§?;§.x * this.§6!V§.y + (this.§;!T§ + this.§?;§.z) * this.§2d§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§?;§.y;
      }
      
      public function §9[§() : Number
      {
         var _loc1_:b2Body = b2internal::0"7;
         var _loc2_:b2Body = b2internal:: `;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§<!v§(this.§@!r§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §%l§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::0"7;
         var _loc2_:b2Body = b2internal:: `;
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
         var _loc15_:b2Vec2 = _loc1_.§<!v§(this.§@!r§);
         var _loc16_:b2Vec2 = _loc1_.§,b§;
         var _loc17_:b2Vec2 = _loc2_.§,b§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §%!a§() : Boolean
      {
         return this.§!k§;
      }
      
      public function §9H§(param1:Boolean) : void
      {
         b2internal::0"7.SetAwake(true);
         b2internal:: `.SetAwake(true);
         this.§!k§ = param1;
      }
      
      public function §4!Z§() : Number
      {
         return this.§`!v§;
      }
      
      public function §5!9§() : Number
      {
         return this.§78§;
      }
      
      public function §<4§(param1:Number, param2:Number) : void
      {
         b2internal::0"7.SetAwake(true);
         b2internal:: `.SetAwake(true);
         this.§`!v§ = param1;
         this.§78§ = param2;
      }
      
      public function §;_§() : Boolean
      {
         return this.§"%§;
      }
      
      public function §]v§(param1:Boolean) : void
      {
         b2internal::0"7.SetAwake(true);
         b2internal:: `.SetAwake(true);
         this.§"%§ = param1;
      }
      
      public function §^x§(param1:Number) : void
      {
         b2internal::0"7.SetAwake(true);
         b2internal:: `.SetAwake(true);
         this.§3u§ = param1;
      }
      
      public function §7U§() : Number
      {
         return this.§3u§;
      }
      
      public function §1!1§(param1:Number) : void
      {
         b2internal::0"7.SetAwake(true);
         b2internal:: `.SetAwake(true);
         this.§&5§ = param1;
      }
      
      public function §#!8§() : Number
      {
         return this.§;!T§;
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
         var _loc2_:b2Body = b2internal::0"7;
         var _loc3_:b2Body = b2internal:: `;
         b2internal::91.SetV(_loc2_.§,!z§());
         b2internal::6"+.SetV(_loc3_.§,!z§());
         var _loc6_:b2Transform = _loc2_.§?^§();
         var _loc7_:b2Transform = _loc3_.§?^§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::91.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::91.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::6"+.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::6"+.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §`!a§ = _loc2_.§;k§;
         §'!z§ = _loc3_.§;k§;
         §;u§ = _loc2_.§6x§;
         §1!Y§ = _loc3_.§6x§;
         this.§2d§.SetV(b2Math.§0b§(_loc6_.R,this.§@!r§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§2d§.y - (_loc13_ + _loc9_) * this.§2d§.x;
         this.m_a2 = _loc10_ * this.§2d§.y - _loc11_ * this.§2d§.x;
         this.§+!§ = b2internal::`!a + b2internal::'!z + b2internal::;u * this.m_a1 * this.m_a1 + b2internal::1!Y * this.m_a2 * this.m_a2;
         if(this.§+!§ > Number.MIN_VALUE)
         {
            this.§+!§ = 1 / this.§+!§;
         }
         this.§6!V§.SetV(b2Math.§0b§(_loc6_.R,this.§;!Y§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§6!V§.y - (_loc13_ + _loc9_) * this.§6!V§.x;
         this.m_s2 = _loc10_ * this.§6!V§.y - _loc11_ * this.§6!V§.x;
         var _loc14_:Number = b2internal::`!a;
         var _loc15_:Number = b2internal::'!z;
         var _loc16_:Number = b2internal::;u;
         var _loc17_:Number = b2internal::1!Y;
         this.§,"0§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§,"0§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§,"0§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§,"0§.col2.x = this.§,"0§.col1.y;
         this.§,"0§.col2.y = _loc16_ + _loc17_;
         this.§,"0§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§,"0§.col3.x = this.§,"0§.col1.z;
         this.§,"0§.col3.y = this.§,"0§.col2.z;
         this.§,"0§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§!k§)
         {
            _loc18_ = this.§2d§.x * _loc12_ + this.§2d§.y * _loc13_;
            if(b2Math.§`U§(this.§78§ - this.§`!v§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§'T§ = b2internal::@!5;
            }
            else if(_loc18_ <= this.§`!v§)
            {
               if(this.§'T§ != b2internal::2!J)
               {
                  this.§'T§ = b2internal::2!J;
                  this.§?;§.z = 0;
               }
            }
            else if(_loc18_ >= this.§78§)
            {
               if(this.§'T§ != b2internal::^"<)
               {
                  this.§'T§ = b2internal::^"<;
                  this.§?;§.z = 0;
               }
            }
            else
            {
               this.§'T§ = b2internal::@g;
               this.§?;§.z = 0;
            }
         }
         else
         {
            this.§'T§ = b2internal::@g;
         }
         if(this.§"%§ == false)
         {
            this.§;!T§ = 0;
         }
         if(param1.§1!w§)
         {
            this.§?;§.x *= param1.§<3§;
            this.§?;§.y *= param1.§<3§;
            this.§;!T§ *= param1.§<3§;
            _loc19_ = this.§?;§.x * this.§6!V§.x + (this.§;!T§ + this.§?;§.z) * this.§2d§.x;
            _loc20_ = this.§?;§.x * this.§6!V§.y + (this.§;!T§ + this.§?;§.z) * this.§2d§.y;
            _loc21_ = this.§?;§.x * this.m_s1 + this.§?;§.y + (this.§;!T§ + this.§?;§.z) * this.m_a1;
            _loc22_ = this.§?;§.x * this.m_s2 + this.§?;§.y + (this.§;!T§ + this.§?;§.z) * this.m_a2;
            _loc2_.§,b§.x -= b2internal::`!a * _loc19_;
            _loc2_.§,b§.y -= b2internal::`!a * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::;u * _loc21_;
            _loc3_.§,b§.x += b2internal::'!z * _loc19_;
            _loc3_.§,b§.y += b2internal::'!z * _loc20_;
            _loc3_.m_angularVelocity += b2internal::1!Y * _loc22_;
         }
         else
         {
            this.§?;§.§@!s§();
            this.§;!T§ = 0;
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
         var _loc2_:b2Body = b2internal::0"7;
         var _loc3_:b2Body = b2internal:: `;
         var _loc4_:b2Vec2 = _loc2_.§,b§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§,b§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§"%§ && this.§'T§ != b2internal::@!5)
         {
            _loc14_ = this.§2d§.x * (_loc6_.x - _loc4_.x) + this.§2d§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§+!§ * (this.§3u§ - _loc14_);
            _loc16_ = this.§;!T§;
            _loc17_ = param1.§+z§ * this.§&5§;
            this.§;!T§ = b2Math.§&>§(this.§;!T§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§;!T§ - _loc16_) * this.§2d§.x;
            _loc9_ = _loc15_ * this.§2d§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::`!a * _loc8_;
            _loc4_.y -= b2internal::`!a * _loc9_;
            _loc5_ -= b2internal::;u * _loc10_;
            _loc6_.x += b2internal::'!z * _loc8_;
            _loc6_.y += b2internal::'!z * _loc9_;
            _loc7_ += b2internal::1!Y * _loc11_;
         }
         var _loc12_:Number = this.§6!V§.x * (_loc6_.x - _loc4_.x) + this.§6!V§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§!k§ && this.§'T§ != b2internal::@g)
         {
            _loc18_ = this.§2d§.x * (_loc6_.x - _loc4_.x) + this.§2d§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§?;§.Copy();
            _loc20_ = this.§,"0§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§?;§.§1v§(_loc20_);
            if(this.§'T§ == b2internal::2!J)
            {
               this.§?;§.z = b2Math.§6§(this.§?;§.z,0);
            }
            else if(this.§'T§ == b2internal::^"<)
            {
               this.§?;§.z = b2Math.§8L§(this.§?;§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§?;§.z - _loc19_.z) * this.§,"0§.col3.x;
            _loc22_ = -_loc13_ - (this.§?;§.z - _loc19_.z) * this.§,"0§.col3.y;
            _loc23_ = this.§,"0§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§?;§.x = _loc23_.x;
            this.§?;§.y = _loc23_.y;
            _loc20_.x = this.§?;§.x - _loc19_.x;
            _loc20_.y = this.§?;§.y - _loc19_.y;
            _loc20_.z = this.§?;§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§6!V§.x + _loc20_.z * this.§2d§.x;
            _loc9_ = _loc20_.x * this.§6!V§.y + _loc20_.z * this.§2d§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::`!a * _loc8_;
            _loc4_.y -= b2internal::`!a * _loc9_;
            _loc5_ -= b2internal::;u * _loc10_;
            _loc6_.x += b2internal::'!z * _loc8_;
            _loc6_.y += b2internal::'!z * _loc9_;
            _loc7_ += b2internal::1!Y * _loc11_;
         }
         else
         {
            _loc24_ = this.§,"0§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§?;§.x += _loc24_.x;
            this.§?;§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§6!V§.x;
            _loc9_ = _loc24_.x * this.§6!V§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::`!a * _loc8_;
            _loc4_.y -= b2internal::`!a * _loc9_;
            _loc5_ -= b2internal::;u * _loc10_;
            _loc6_.x += b2internal::'!z * _loc8_;
            _loc6_.y += b2internal::'!z * _loc9_;
            _loc7_ += b2internal::1!Y * _loc11_;
         }
         _loc2_.§,b§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§,b§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::0"7;
         var _loc5_:b2Body = b2internal:: `;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§??§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§??§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::91.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::91.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::6"+.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::6"+.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§!k§)
         {
            this.§2d§ = b2Math.§0b§(_loc20_,this.§@!r§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§2d§.y - (_loc27_ + _loc23_) * this.§2d§.x;
            this.m_a2 = _loc24_ * this.§2d§.y - _loc25_ * this.§2d§.x;
            _loc35_ = this.§2d§.x * _loc26_ + this.§2d§.y * _loc27_;
            if(b2Math.§`U§(this.§78§ - this.§`!v§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§&>§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§`U§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§`!v§)
            {
               _loc19_ = b2Math.§&>§(_loc35_ - this.§`!v§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§`!v§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§78§)
            {
               _loc19_ = b2Math.§&>§(_loc35_ - this.§78§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§78§;
               _loc18_ = true;
            }
         }
         this.§6!V§ = b2Math.§0b§(_loc20_,this.§;!Y§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§6!V§.y - (_loc27_ + _loc23_) * this.§6!V§.x;
         this.m_s2 = _loc24_ * this.§6!V§.y - _loc25_ * this.§6!V§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§6!V§.x * _loc26_ + this.§6!V§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§1![§;
         _loc16_ = b2Math.§6§(_loc16_,b2Math.§`U§(_loc29_));
         _loc17_ = b2Math.§`U§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::`!a;
            _loc13_ = b2internal::'!z;
            _loc14_ = b2internal::;u;
            _loc15_ = b2internal::1!Y;
            this.§,"0§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§,"0§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§,"0§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§,"0§.col2.x = this.§,"0§.col1.y;
            this.§,"0§.col2.y = _loc14_ + _loc15_;
            this.§,"0§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§,"0§.col3.x = this.§,"0§.col1.z;
            this.§,"0§.col3.y = this.§,"0§.col2.z;
            this.§,"0§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§,"0§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::`!a;
            _loc13_ = b2internal::'!z;
            _loc14_ = b2internal::;u;
            _loc15_ = b2internal::1!Y;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§,"0§.col1.Set(_loc36_,_loc37_,0);
            this.§,"0§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§,"0§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§6!V§.x + _loc28_.z * this.§2d§.x;
         var _loc32_:Number = _loc28_.x * this.§6!V§.y + _loc28_.z * this.§2d§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::`!a * _loc31_;
         _loc6_.y -= b2internal::`!a * _loc32_;
         _loc7_ -= b2internal::;u * _loc33_;
         _loc8_.x += b2internal::'!z * _loc31_;
         _loc8_.y += b2internal::'!z * _loc32_;
         _loc9_ += b2internal::1!Y * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§#!k§();
         _loc5_.§#!k§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

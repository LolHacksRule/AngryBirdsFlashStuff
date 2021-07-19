package §;!#§
{
   import § o§.b2Body;
   import § o§.b2TimeStep;
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §6!H§.b2Mat22;
   import §6!H§.b2Mat33;
   import §6!H§.b2Math;
   import §6!H§.b2Transform;
   import §6!H§.b2Vec2;
   import §6!H§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var § do§:b2Vec2;
      
      private var §@!a§:b2Vec2;
      
      private var §0r§:Number;
      
      private var §2d§:b2Vec2;
      
      private var §%!&§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §5!R§:b2Mat33;
      
      private var §==§:b2Vec3;
      
      private var §>!§:Number;
      
      private var §+!$§:Number;
      
      private var §1c§:Number;
      
      private var §,I§:Number;
      
      private var §99§:Number;
      
      private var §`W§:Number;
      
      private var §3!e§:Boolean;
      
      private var §2!c§:Boolean;
      
      private var §,=§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§ do§ = new b2Vec2();
         this.§@!a§ = new b2Vec2();
         this.§2d§ = new b2Vec2();
         this.§%!&§ = new b2Vec2();
         this.§5!R§ = new b2Mat33();
         this.§==§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§!!U§);
         this.m_localAnchor2.SetV(param1.§"!'§);
         this.§ do§.SetV(param1.§=L§);
         this.§@!a§.x = -this.§ do§.y;
         this.§@!a§.y = this.§ do§.x;
         this.§0r§ = param1.§49§;
         this.§==§.§7_§();
         this.§>!§ = 0;
         this.§+!$§ = 0;
         this.§1c§ = param1.§&#§;
         this.§,I§ = param1.§7o§;
         this.§99§ = param1.§&j§;
         this.§`W§ = param1.motorSpeed;
         this.§3!e§ = param1.§ c§;
         this.§2!c§ = param1.§32§;
         this.§,=§ = b2internal::9!d;
         this.§2d§.§7_§();
         this.§%!&§.§7_§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::3D.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§==§.x * this.§%!&§.x + (this.§+!$§ + this.§==§.z) * this.§2d§.x),param1 * (this.§==§.x * this.§%!&§.y + (this.§+!$§ + this.§==§.z) * this.§2d§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§==§.y;
      }
      
      public function § !Q§() : Number
      {
         var _loc1_:b2Body = b2internal::6z;
         var _loc2_:b2Body = b2internal::3D;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§?!4§(this.§ do§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §,&§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::6z;
         var _loc2_:b2Body = b2internal::3D;
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
         var _loc15_:b2Vec2 = _loc1_.§?!4§(this.§ do§);
         var _loc16_:b2Vec2 = _loc1_.§2!@§;
         var _loc17_:b2Vec2 = _loc2_.§2!@§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §>!L§() : Boolean
      {
         return this.§3!e§;
      }
      
      public function §@>§(param1:Boolean) : void
      {
         b2internal::6z.SetAwake(true);
         b2internal::3D.SetAwake(true);
         this.§3!e§ = param1;
      }
      
      public function §+!I§() : Number
      {
         return this.§1c§;
      }
      
      public function §`m§() : Number
      {
         return this.§,I§;
      }
      
      public function §64§(param1:Number, param2:Number) : void
      {
         b2internal::6z.SetAwake(true);
         b2internal::3D.SetAwake(true);
         this.§1c§ = param1;
         this.§,I§ = param2;
      }
      
      public function §;!c§() : Boolean
      {
         return this.§2!c§;
      }
      
      public function §#<§(param1:Boolean) : void
      {
         b2internal::6z.SetAwake(true);
         b2internal::3D.SetAwake(true);
         this.§2!c§ = param1;
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         b2internal::6z.SetAwake(true);
         b2internal::3D.SetAwake(true);
         this.§`W§ = param1;
      }
      
      public function § U§() : Number
      {
         return this.§`W§;
      }
      
      public function §1!h§(param1:Number) : void
      {
         b2internal::6z.SetAwake(true);
         b2internal::3D.SetAwake(true);
         this.§99§ = param1;
      }
      
      public function §>4§() : Number
      {
         return this.§+!$§;
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
         var _loc2_:b2Body = b2internal::6z;
         var _loc3_:b2Body = b2internal::3D;
         b2internal::4r.SetV(_loc2_.§<O§());
         b2internal::9!h.SetV(_loc3_.§<O§());
         var _loc6_:b2Transform = _loc2_.§2!i§();
         var _loc7_:b2Transform = _loc3_.§2!i§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::4r.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::4r.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::9!h.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::9!h.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §"d§ = _loc2_.§+5§;
         §1!§ = _loc3_.§+5§;
         §^l§ = _loc2_.§%L§;
         §4!3§ = _loc3_.§%L§;
         this.§2d§.SetV(b2Math.§&W§(_loc6_.R,this.§ do§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§2d§.y - (_loc13_ + _loc9_) * this.§2d§.x;
         this.m_a2 = _loc10_ * this.§2d§.y - _loc11_ * this.§2d§.x;
         this.§>!§ = b2internal::"d + b2internal::1! + b2internal::^l * this.m_a1 * this.m_a1 + b2internal::4!3 * this.m_a2 * this.m_a2;
         if(this.§>!§ > Number.MIN_VALUE)
         {
            this.§>!§ = 1 / this.§>!§;
         }
         this.§%!&§.SetV(b2Math.§&W§(_loc6_.R,this.§@!a§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§%!&§.y - (_loc13_ + _loc9_) * this.§%!&§.x;
         this.m_s2 = _loc10_ * this.§%!&§.y - _loc11_ * this.§%!&§.x;
         var _loc14_:Number = b2internal::"d;
         var _loc15_:Number = b2internal::1!;
         var _loc16_:Number = b2internal::^l;
         var _loc17_:Number = b2internal::4!3;
         this.§5!R§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§5!R§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§5!R§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§5!R§.col2.x = this.§5!R§.col1.y;
         this.§5!R§.col2.y = _loc16_ + _loc17_;
         this.§5!R§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§5!R§.col3.x = this.§5!R§.col1.z;
         this.§5!R§.col3.y = this.§5!R§.col2.z;
         this.§5!R§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§3!e§)
         {
            _loc18_ = this.§2d§.x * _loc12_ + this.§2d§.y * _loc13_;
            if(b2Math.§1T§(this.§,I§ - this.§1c§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§,=§ = b2internal::0!F;
            }
            else if(_loc18_ <= this.§1c§)
            {
               if(this.§,=§ != b2internal::'M)
               {
                  this.§,=§ = b2internal::'M;
                  this.§==§.z = 0;
               }
            }
            else if(_loc18_ >= this.§,I§)
            {
               if(this.§,=§ != b2internal::6!f)
               {
                  this.§,=§ = b2internal::6!f;
                  this.§==§.z = 0;
               }
            }
            else
            {
               this.§,=§ = b2internal::9!d;
               this.§==§.z = 0;
            }
         }
         else
         {
            this.§,=§ = b2internal::9!d;
         }
         if(this.§2!c§ == false)
         {
            this.§+!$§ = 0;
         }
         if(param1.§7!^§)
         {
            this.§==§.x *= param1.§,K§;
            this.§==§.y *= param1.§,K§;
            this.§+!$§ *= param1.§,K§;
            _loc19_ = this.§==§.x * this.§%!&§.x + (this.§+!$§ + this.§==§.z) * this.§2d§.x;
            _loc20_ = this.§==§.x * this.§%!&§.y + (this.§+!$§ + this.§==§.z) * this.§2d§.y;
            _loc21_ = this.§==§.x * this.m_s1 + this.§==§.y + (this.§+!$§ + this.§==§.z) * this.m_a1;
            _loc22_ = this.§==§.x * this.m_s2 + this.§==§.y + (this.§+!$§ + this.§==§.z) * this.m_a2;
            _loc2_.§2!@§.x -= b2internal::"d * _loc19_;
            _loc2_.§2!@§.y -= b2internal::"d * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::^l * _loc21_;
            _loc3_.§2!@§.x += b2internal::1! * _loc19_;
            _loc3_.§2!@§.y += b2internal::1! * _loc20_;
            _loc3_.m_angularVelocity += b2internal::4!3 * _loc22_;
         }
         else
         {
            this.§==§.§7_§();
            this.§+!$§ = 0;
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
         var _loc2_:b2Body = b2internal::6z;
         var _loc3_:b2Body = b2internal::3D;
         var _loc4_:b2Vec2 = _loc2_.§2!@§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§2!@§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§2!c§ && this.§,=§ != b2internal::0!F)
         {
            _loc14_ = this.§2d§.x * (_loc6_.x - _loc4_.x) + this.§2d§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§>!§ * (this.§`W§ - _loc14_);
            _loc16_ = this.§+!$§;
            _loc17_ = param1.§1_§ * this.§99§;
            this.§+!$§ = b2Math.§9!%§(this.§+!$§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§+!$§ - _loc16_) * this.§2d§.x;
            _loc9_ = _loc15_ * this.§2d§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::"d * _loc8_;
            _loc4_.y -= b2internal::"d * _loc9_;
            _loc5_ -= b2internal::^l * _loc10_;
            _loc6_.x += b2internal::1! * _loc8_;
            _loc6_.y += b2internal::1! * _loc9_;
            _loc7_ += b2internal::4!3 * _loc11_;
         }
         var _loc12_:Number = this.§%!&§.x * (_loc6_.x - _loc4_.x) + this.§%!&§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§3!e§ && this.§,=§ != b2internal::9!d)
         {
            _loc18_ = this.§2d§.x * (_loc6_.x - _loc4_.x) + this.§2d§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§==§.Copy();
            _loc20_ = this.§5!R§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§==§.§!!,§(_loc20_);
            if(this.§,=§ == b2internal::'M)
            {
               this.§==§.z = b2Math.§@e§(this.§==§.z,0);
            }
            else if(this.§,=§ == b2internal::6!f)
            {
               this.§==§.z = b2Math.§?I§(this.§==§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§==§.z - _loc19_.z) * this.§5!R§.col3.x;
            _loc22_ = -_loc13_ - (this.§==§.z - _loc19_.z) * this.§5!R§.col3.y;
            _loc23_ = this.§5!R§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§==§.x = _loc23_.x;
            this.§==§.y = _loc23_.y;
            _loc20_.x = this.§==§.x - _loc19_.x;
            _loc20_.y = this.§==§.y - _loc19_.y;
            _loc20_.z = this.§==§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§%!&§.x + _loc20_.z * this.§2d§.x;
            _loc9_ = _loc20_.x * this.§%!&§.y + _loc20_.z * this.§2d§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::"d * _loc8_;
            _loc4_.y -= b2internal::"d * _loc9_;
            _loc5_ -= b2internal::^l * _loc10_;
            _loc6_.x += b2internal::1! * _loc8_;
            _loc6_.y += b2internal::1! * _loc9_;
            _loc7_ += b2internal::4!3 * _loc11_;
         }
         else
         {
            _loc24_ = this.§5!R§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§==§.x += _loc24_.x;
            this.§==§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§%!&§.x;
            _loc9_ = _loc24_.x * this.§%!&§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::"d * _loc8_;
            _loc4_.y -= b2internal::"d * _loc9_;
            _loc5_ -= b2internal::^l * _loc10_;
            _loc6_.x += b2internal::1! * _loc8_;
            _loc6_.y += b2internal::1! * _loc9_;
            _loc7_ += b2internal::4!3 * _loc11_;
         }
         _loc2_.§2!@§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§2!@§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::6z;
         var _loc5_:b2Body = b2internal::3D;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§=+§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§=+§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::4r.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::4r.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::9!h.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::9!h.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§3!e§)
         {
            this.§2d§ = b2Math.§&W§(_loc20_,this.§ do§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§2d§.y - (_loc27_ + _loc23_) * this.§2d§.x;
            this.m_a2 = _loc24_ * this.§2d§.y - _loc25_ * this.§2d§.x;
            _loc35_ = this.§2d§.x * _loc26_ + this.§2d§.y * _loc27_;
            if(b2Math.§1T§(this.§,I§ - this.§1c§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§9!%§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§1T§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§1c§)
            {
               _loc19_ = b2Math.§9!%§(_loc35_ - this.§1c§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§1c§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§,I§)
            {
               _loc19_ = b2Math.§9!%§(_loc35_ - this.§,I§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§,I§;
               _loc18_ = true;
            }
         }
         this.§%!&§ = b2Math.§&W§(_loc20_,this.§@!a§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§%!&§.y - (_loc27_ + _loc23_) * this.§%!&§.x;
         this.m_s2 = _loc24_ * this.§%!&§.y - _loc25_ * this.§%!&§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§%!&§.x * _loc26_ + this.§%!&§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§0r§;
         _loc16_ = b2Math.§@e§(_loc16_,b2Math.§1T§(_loc29_));
         _loc17_ = b2Math.§1T§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::"d;
            _loc13_ = b2internal::1!;
            _loc14_ = b2internal::^l;
            _loc15_ = b2internal::4!3;
            this.§5!R§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§5!R§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§5!R§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§5!R§.col2.x = this.§5!R§.col1.y;
            this.§5!R§.col2.y = _loc14_ + _loc15_;
            this.§5!R§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§5!R§.col3.x = this.§5!R§.col1.z;
            this.§5!R§.col3.y = this.§5!R§.col2.z;
            this.§5!R§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§5!R§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::"d;
            _loc13_ = b2internal::1!;
            _loc14_ = b2internal::^l;
            _loc15_ = b2internal::4!3;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§5!R§.col1.Set(_loc36_,_loc37_,0);
            this.§5!R§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§5!R§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§%!&§.x + _loc28_.z * this.§2d§.x;
         var _loc32_:Number = _loc28_.x * this.§%!&§.y + _loc28_.z * this.§2d§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::"d * _loc31_;
         _loc6_.y -= b2internal::"d * _loc32_;
         _loc7_ -= b2internal::^l * _loc33_;
         _loc8_.x += b2internal::1! * _loc31_;
         _loc8_.y += b2internal::1! * _loc32_;
         _loc9_ += b2internal::4!3 * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§&I§();
         _loc5_.§&I§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

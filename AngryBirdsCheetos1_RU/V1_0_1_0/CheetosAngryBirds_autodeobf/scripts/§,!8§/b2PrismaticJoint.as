package §,!8§
{
   import §&!B§.b2Mat22;
   import §&!B§.b2Mat33;
   import §&!B§.b2Math;
   import §&!B§.b2Transform;
   import §&!B§.b2Vec2;
   import §&!B§.b2Vec3;
   import §[x§.b2Body;
   import §[x§.b2TimeStep;
   import §^<§.b2Settings;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §0!A§:b2Vec2;
      
      private var §'!L§:b2Vec2;
      
      private var §4<§:Number;
      
      private var §6!5§:b2Vec2;
      
      private var §,![§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §`!V§:b2Mat33;
      
      private var §]4§:b2Vec3;
      
      private var §9!+§:Number;
      
      private var §]I§:Number;
      
      private var §%l§:Number;
      
      private var §,b§:Number;
      
      private var §-%§:Number;
      
      private var §16§:Number;
      
      private var §`9§:Boolean;
      
      private var §1!Y§:Boolean;
      
      private var §%?§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§0!A§ = new b2Vec2();
         this.§'!L§ = new b2Vec2();
         this.§6!5§ = new b2Vec2();
         this.§,![§ = new b2Vec2();
         this.§`!V§ = new b2Mat33();
         this.§]4§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§'s§);
         this.m_localAnchor2.SetV(param1.§5%§);
         this.§0!A§.SetV(param1.§`!>§);
         this.§'!L§.x = -this.§0!A§.y;
         this.§'!L§.y = this.§0!A§.x;
         this.§4<§ = param1.§-,§;
         this.§]4§.§,!3§();
         this.§9!+§ = 0;
         this.§]I§ = 0;
         this.§%l§ = param1.§'A§;
         this.§,b§ = param1.§>!M§;
         this.§-%§ = param1.§0d§;
         this.§16§ = param1.motorSpeed;
         this.§`9§ = param1.§!O§;
         this.§1!Y§ = param1.§3!@§;
         this.§%?§ = b2internal::@d;
         this.§6!5§.§,!3§();
         this.§,![§.§,!3§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::%!F.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?!S.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§]4§.x * this.§,![§.x + (this.§]I§ + this.§]4§.z) * this.§6!5§.x),param1 * (this.§]4§.x * this.§,![§.y + (this.§]I§ + this.§]4§.z) * this.§6!5§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§]4§.y;
      }
      
      public function §6L§() : Number
      {
         var _loc1_:b2Body = b2internal::%!F;
         var _loc2_:b2Body = b2internal::?!S;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§+_§(this.§0!A§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §<p§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::%!F;
         var _loc2_:b2Body = b2internal::?!S;
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
         var _loc15_:b2Vec2 = _loc1_.§+_§(this.§0!A§);
         var _loc16_:b2Vec2 = _loc1_.§%q§;
         var _loc17_:b2Vec2 = _loc2_.§%q§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §[E§() : Boolean
      {
         return this.§`9§;
      }
      
      public function §?1§(param1:Boolean) : void
      {
         b2internal::%!F.SetAwake(true);
         b2internal::?!S.SetAwake(true);
         this.§`9§ = param1;
      }
      
      public function §;!=§() : Number
      {
         return this.§%l§;
      }
      
      public function §-!"§() : Number
      {
         return this.§,b§;
      }
      
      public function §2Z§(param1:Number, param2:Number) : void
      {
         b2internal::%!F.SetAwake(true);
         b2internal::?!S.SetAwake(true);
         this.§%l§ = param1;
         this.§,b§ = param2;
      }
      
      public function §<w§() : Boolean
      {
         return this.§1!Y§;
      }
      
      public function §%!;§(param1:Boolean) : void
      {
         b2internal::%!F.SetAwake(true);
         b2internal::?!S.SetAwake(true);
         this.§1!Y§ = param1;
      }
      
      public function §'!E§(param1:Number) : void
      {
         b2internal::%!F.SetAwake(true);
         b2internal::?!S.SetAwake(true);
         this.§16§ = param1;
      }
      
      public function §+L§() : Number
      {
         return this.§16§;
      }
      
      public function §+G§(param1:Number) : void
      {
         b2internal::%!F.SetAwake(true);
         b2internal::?!S.SetAwake(true);
         this.§-%§ = param1;
      }
      
      public function §`a§() : Number
      {
         return this.§]I§;
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
         var _loc2_:b2Body = b2internal::%!F;
         var _loc3_:b2Body = b2internal::?!S;
         b2internal::%s.SetV(_loc2_.§]O§());
         b2internal::8N.SetV(_loc3_.§]O§());
         var _loc6_:b2Transform = _loc2_.§4g§();
         var _loc7_:b2Transform = _loc3_.§4g§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::%s.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::%s.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::8N.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::8N.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §9"§ = _loc2_.§6I§;
         § !W§ = _loc3_.§6I§;
         §0;§ = _loc2_.§2!L§;
         §+!B§ = _loc3_.§2!L§;
         this.§6!5§.SetV(b2Math.§7U§(_loc6_.R,this.§0!A§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§6!5§.y - (_loc13_ + _loc9_) * this.§6!5§.x;
         this.m_a2 = _loc10_ * this.§6!5§.y - _loc11_ * this.§6!5§.x;
         this.§9!+§ = b2internal::9" + b2internal:: !W + b2internal::0; * this.m_a1 * this.m_a1 + b2internal::+!B * this.m_a2 * this.m_a2;
         if(this.§9!+§ > Number.MIN_VALUE)
         {
            this.§9!+§ = 1 / this.§9!+§;
         }
         this.§,![§.SetV(b2Math.§7U§(_loc6_.R,this.§'!L§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§,![§.y - (_loc13_ + _loc9_) * this.§,![§.x;
         this.m_s2 = _loc10_ * this.§,![§.y - _loc11_ * this.§,![§.x;
         var _loc14_:Number = b2internal::9";
         var _loc15_:Number = b2internal:: !W;
         var _loc16_:Number = b2internal::0;;
         var _loc17_:Number = b2internal::+!B;
         this.§`!V§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§`!V§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§`!V§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§`!V§.col2.x = this.§`!V§.col1.y;
         this.§`!V§.col2.y = _loc16_ + _loc17_;
         this.§`!V§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§`!V§.col3.x = this.§`!V§.col1.z;
         this.§`!V§.col3.y = this.§`!V§.col2.z;
         this.§`!V§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§`9§)
         {
            _loc18_ = this.§6!5§.x * _loc12_ + this.§6!5§.y * _loc13_;
            if(b2Math.§<!,§(this.§,b§ - this.§%l§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§%?§ = b2internal::3^;
            }
            else if(_loc18_ <= this.§%l§)
            {
               if(this.§%?§ != b2internal::1,)
               {
                  this.§%?§ = b2internal::1,;
                  this.§]4§.z = 0;
               }
            }
            else if(_loc18_ >= this.§,b§)
            {
               if(this.§%?§ != b2internal::"&)
               {
                  this.§%?§ = b2internal::"&;
                  this.§]4§.z = 0;
               }
            }
            else
            {
               this.§%?§ = b2internal::@d;
               this.§]4§.z = 0;
            }
         }
         else
         {
            this.§%?§ = b2internal::@d;
         }
         if(this.§1!Y§ == false)
         {
            this.§]I§ = 0;
         }
         if(param1.§3!-§)
         {
            this.§]4§.x *= param1.§4!G§;
            this.§]4§.y *= param1.§4!G§;
            this.§]I§ *= param1.§4!G§;
            _loc19_ = this.§]4§.x * this.§,![§.x + (this.§]I§ + this.§]4§.z) * this.§6!5§.x;
            _loc20_ = this.§]4§.x * this.§,![§.y + (this.§]I§ + this.§]4§.z) * this.§6!5§.y;
            _loc21_ = this.§]4§.x * this.m_s1 + this.§]4§.y + (this.§]I§ + this.§]4§.z) * this.m_a1;
            _loc22_ = this.§]4§.x * this.m_s2 + this.§]4§.y + (this.§]I§ + this.§]4§.z) * this.m_a2;
            _loc2_.§%q§.x -= b2internal::9" * _loc19_;
            _loc2_.§%q§.y -= b2internal::9" * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::0; * _loc21_;
            _loc3_.§%q§.x += b2internal:: !W * _loc19_;
            _loc3_.§%q§.y += b2internal:: !W * _loc20_;
            _loc3_.m_angularVelocity += b2internal::+!B * _loc22_;
         }
         else
         {
            this.§]4§.§,!3§();
            this.§]I§ = 0;
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
         var _loc2_:b2Body = b2internal::%!F;
         var _loc3_:b2Body = b2internal::?!S;
         var _loc4_:b2Vec2 = _loc2_.§%q§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§%q§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§1!Y§ && this.§%?§ != b2internal::3^)
         {
            _loc14_ = this.§6!5§.x * (_loc6_.x - _loc4_.x) + this.§6!5§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§9!+§ * (this.§16§ - _loc14_);
            _loc16_ = this.§]I§;
            _loc17_ = param1.§>!!§ * this.§-%§;
            this.§]I§ = b2Math.§,W§(this.§]I§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§]I§ - _loc16_) * this.§6!5§.x;
            _loc9_ = _loc15_ * this.§6!5§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::9" * _loc8_;
            _loc4_.y -= b2internal::9" * _loc9_;
            _loc5_ -= b2internal::0; * _loc10_;
            _loc6_.x += b2internal:: !W * _loc8_;
            _loc6_.y += b2internal:: !W * _loc9_;
            _loc7_ += b2internal::+!B * _loc11_;
         }
         var _loc12_:Number = this.§,![§.x * (_loc6_.x - _loc4_.x) + this.§,![§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§`9§ && this.§%?§ != b2internal::@d)
         {
            _loc18_ = this.§6!5§.x * (_loc6_.x - _loc4_.x) + this.§6!5§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§]4§.Copy();
            _loc20_ = this.§`!V§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§]4§.§!!X§(_loc20_);
            if(this.§%?§ == b2internal::1,)
            {
               this.§]4§.z = b2Math.§,L§(this.§]4§.z,0);
            }
            else if(this.§%?§ == b2internal::"&)
            {
               this.§]4§.z = b2Math.§=#§(this.§]4§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§]4§.z - _loc19_.z) * this.§`!V§.col3.x;
            _loc22_ = -_loc13_ - (this.§]4§.z - _loc19_.z) * this.§`!V§.col3.y;
            _loc23_ = this.§`!V§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§]4§.x = _loc23_.x;
            this.§]4§.y = _loc23_.y;
            _loc20_.x = this.§]4§.x - _loc19_.x;
            _loc20_.y = this.§]4§.y - _loc19_.y;
            _loc20_.z = this.§]4§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§,![§.x + _loc20_.z * this.§6!5§.x;
            _loc9_ = _loc20_.x * this.§,![§.y + _loc20_.z * this.§6!5§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::9" * _loc8_;
            _loc4_.y -= b2internal::9" * _loc9_;
            _loc5_ -= b2internal::0; * _loc10_;
            _loc6_.x += b2internal:: !W * _loc8_;
            _loc6_.y += b2internal:: !W * _loc9_;
            _loc7_ += b2internal::+!B * _loc11_;
         }
         else
         {
            _loc24_ = this.§`!V§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§]4§.x += _loc24_.x;
            this.§]4§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§,![§.x;
            _loc9_ = _loc24_.x * this.§,![§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::9" * _loc8_;
            _loc4_.y -= b2internal::9" * _loc9_;
            _loc5_ -= b2internal::0; * _loc10_;
            _loc6_.x += b2internal:: !W * _loc8_;
            _loc6_.y += b2internal:: !W * _loc9_;
            _loc7_ += b2internal::+!B * _loc11_;
         }
         _loc2_.§%q§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§%q§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::%!F;
         var _loc5_:b2Body = b2internal::?!S;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§[A§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§[A§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::%s.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::%s.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::8N.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::8N.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§`9§)
         {
            this.§6!5§ = b2Math.§7U§(_loc20_,this.§0!A§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§6!5§.y - (_loc27_ + _loc23_) * this.§6!5§.x;
            this.m_a2 = _loc24_ * this.§6!5§.y - _loc25_ * this.§6!5§.x;
            _loc35_ = this.§6!5§.x * _loc26_ + this.§6!5§.y * _loc27_;
            if(b2Math.§<!,§(this.§,b§ - this.§%l§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§,W§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§<!,§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§%l§)
            {
               _loc19_ = b2Math.§,W§(_loc35_ - this.§%l§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§%l§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§,b§)
            {
               _loc19_ = b2Math.§,W§(_loc35_ - this.§,b§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§,b§;
               _loc18_ = true;
            }
         }
         this.§,![§ = b2Math.§7U§(_loc20_,this.§'!L§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§,![§.y - (_loc27_ + _loc23_) * this.§,![§.x;
         this.m_s2 = _loc24_ * this.§,![§.y - _loc25_ * this.§,![§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§,![§.x * _loc26_ + this.§,![§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§4<§;
         _loc16_ = b2Math.§,L§(_loc16_,b2Math.§<!,§(_loc29_));
         _loc17_ = b2Math.§<!,§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::9";
            _loc13_ = b2internal:: !W;
            _loc14_ = b2internal::0;;
            _loc15_ = b2internal::+!B;
            this.§`!V§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§`!V§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§`!V§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§`!V§.col2.x = this.§`!V§.col1.y;
            this.§`!V§.col2.y = _loc14_ + _loc15_;
            this.§`!V§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§`!V§.col3.x = this.§`!V§.col1.z;
            this.§`!V§.col3.y = this.§`!V§.col2.z;
            this.§`!V§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§`!V§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::9";
            _loc13_ = b2internal:: !W;
            _loc14_ = b2internal::0;;
            _loc15_ = b2internal::+!B;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§`!V§.col1.Set(_loc36_,_loc37_,0);
            this.§`!V§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§`!V§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§,![§.x + _loc28_.z * this.§6!5§.x;
         var _loc32_:Number = _loc28_.x * this.§,![§.y + _loc28_.z * this.§6!5§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::9" * _loc31_;
         _loc6_.y -= b2internal::9" * _loc32_;
         _loc7_ -= b2internal::0; * _loc33_;
         _loc8_.x += b2internal:: !W * _loc31_;
         _loc8_.y += b2internal:: !W * _loc32_;
         _loc9_ += b2internal::+!B * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§[B§();
         _loc5_.§[B§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

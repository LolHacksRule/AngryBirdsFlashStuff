package §8!k§
{
   import §-!G§.b2Mat22;
   import §-!G§.b2Mat33;
   import §-!G§.b2Math;
   import §-!G§.b2Transform;
   import §-!G§.b2Vec2;
   import §-!G§.b2Vec3;
   import §7"'§.b2Settings;
   import §7"'§.b2internal;
   import §=9§.b2Body;
   import §=9§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §]B§:b2Vec2;
      
      private var §'!n§:b2Vec2;
      
      private var §;I§:Number;
      
      private var §?"5§:b2Vec2;
      
      private var §9j§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §4!#§:b2Mat33;
      
      private var §8!u§:b2Vec3;
      
      private var § t§:Number;
      
      private var §1!O§:Number;
      
      private var §;!=§:Number;
      
      private var §,"§:Number;
      
      private var §=!q§:Number;
      
      private var §[$§:Number;
      
      private var §&p§:Boolean;
      
      private var §8!_§:Boolean;
      
      private var §"!7§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§]B§ = new b2Vec2();
         this.§'!n§ = new b2Vec2();
         this.§?"5§ = new b2Vec2();
         this.§9j§ = new b2Vec2();
         this.§4!#§ = new b2Mat33();
         this.§8!u§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§"!O§);
         this.m_localAnchor2.SetV(param1.§ W§);
         this.§]B§.SetV(param1.§2X§);
         this.§'!n§.x = -this.§]B§.y;
         this.§'!n§.y = this.§]B§.x;
         this.§;I§ = param1.§;!w§;
         this.§8!u§.§7!@§();
         this.§ t§ = 0;
         this.§1!O§ = 0;
         this.§;!=§ = param1.§8!f§;
         this.§,"§ = param1.§""6§;
         this.§=!q§ = param1.§'!I§;
         this.§[$§ = param1.motorSpeed;
         this.§&p§ = param1.§=!4§;
         this.§8!_§ = param1.§[!b§;
         this.§"!7§ = b2internal::'W;
         this.§?"5§.§7!@§();
         this.§9j§.§7!@§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#U.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::&W.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§8!u§.x * this.§9j§.x + (this.§1!O§ + this.§8!u§.z) * this.§?"5§.x),param1 * (this.§8!u§.x * this.§9j§.y + (this.§1!O§ + this.§8!u§.z) * this.§?"5§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§8!u§.y;
      }
      
      public function §;E§() : Number
      {
         var _loc1_:b2Body = b2internal::#U;
         var _loc2_:b2Body = b2internal::&W;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§9!X§(this.§]B§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §8"-§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::#U;
         var _loc2_:b2Body = b2internal::&W;
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
         var _loc15_:b2Vec2 = _loc1_.§9!X§(this.§]B§);
         var _loc16_:b2Vec2 = _loc1_.§?!@§;
         var _loc17_:b2Vec2 = _loc2_.§?!@§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §"u§() : Boolean
      {
         return this.§&p§;
      }
      
      public function §4i§(param1:Boolean) : void
      {
         b2internal::#U.SetAwake(true);
         b2internal::&W.SetAwake(true);
         this.§&p§ = param1;
      }
      
      public function §6S§() : Number
      {
         return this.§;!=§;
      }
      
      public function § M§() : Number
      {
         return this.§,"§;
      }
      
      public function §!!4§(param1:Number, param2:Number) : void
      {
         b2internal::#U.SetAwake(true);
         b2internal::&W.SetAwake(true);
         this.§;!=§ = param1;
         this.§,"§ = param2;
      }
      
      public function §<"7§() : Boolean
      {
         return this.§8!_§;
      }
      
      public function §5!b§(param1:Boolean) : void
      {
         b2internal::#U.SetAwake(true);
         b2internal::&W.SetAwake(true);
         this.§8!_§ = param1;
      }
      
      public function §&!9§(param1:Number) : void
      {
         b2internal::#U.SetAwake(true);
         b2internal::&W.SetAwake(true);
         this.§[$§ = param1;
      }
      
      public function §,c§() : Number
      {
         return this.§[$§;
      }
      
      public function §#"%§(param1:Number) : void
      {
         b2internal::#U.SetAwake(true);
         b2internal::&W.SetAwake(true);
         this.§=!q§ = param1;
      }
      
      public function §>%§() : Number
      {
         return this.§1!O§;
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
         var _loc2_:b2Body = b2internal::#U;
         var _loc3_:b2Body = b2internal::&W;
         b2internal::6!U.SetV(_loc2_.§3!Z§());
         b2internal::=d.SetV(_loc3_.§3!Z§());
         var _loc6_:b2Transform = _loc2_.§5G§();
         var _loc7_:b2Transform = _loc3_.§5G§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::6!U.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::6!U.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::=d.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::=d.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §4!l§ = _loc2_.§@"!§;
         §7!k§ = _loc3_.§@"!§;
         §=+§ = _loc2_.§!!o§;
         §;!N§ = _loc3_.§!!o§;
         this.§?"5§.SetV(b2Math.§6B§(_loc6_.R,this.§]B§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§?"5§.y - (_loc13_ + _loc9_) * this.§?"5§.x;
         this.m_a2 = _loc10_ * this.§?"5§.y - _loc11_ * this.§?"5§.x;
         this.§ t§ = b2internal::4!l + b2internal::7!k + b2internal::=+ * this.m_a1 * this.m_a1 + b2internal::;!N * this.m_a2 * this.m_a2;
         if(this.§ t§ > Number.MIN_VALUE)
         {
            this.§ t§ = 1 / this.§ t§;
         }
         this.§9j§.SetV(b2Math.§6B§(_loc6_.R,this.§'!n§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§9j§.y - (_loc13_ + _loc9_) * this.§9j§.x;
         this.m_s2 = _loc10_ * this.§9j§.y - _loc11_ * this.§9j§.x;
         var _loc14_:Number = b2internal::4!l;
         var _loc15_:Number = b2internal::7!k;
         var _loc16_:Number = b2internal::=+;
         var _loc17_:Number = b2internal::;!N;
         this.§4!#§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§4!#§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§4!#§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§4!#§.col2.x = this.§4!#§.col1.y;
         this.§4!#§.col2.y = _loc16_ + _loc17_;
         this.§4!#§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§4!#§.col3.x = this.§4!#§.col1.z;
         this.§4!#§.col3.y = this.§4!#§.col2.z;
         this.§4!#§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§&p§)
         {
            _loc18_ = this.§?"5§.x * _loc12_ + this.§?"5§.y * _loc13_;
            if(b2Math.§`8§(this.§,"§ - this.§;!=§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§"!7§ = b2internal::-"';
            }
            else if(_loc18_ <= this.§;!=§)
            {
               if(this.§"!7§ != b2internal::-!B)
               {
                  this.§"!7§ = b2internal::-!B;
                  this.§8!u§.z = 0;
               }
            }
            else if(_loc18_ >= this.§,"§)
            {
               if(this.§"!7§ != b2internal::<2)
               {
                  this.§"!7§ = b2internal::<2;
                  this.§8!u§.z = 0;
               }
            }
            else
            {
               this.§"!7§ = b2internal::'W;
               this.§8!u§.z = 0;
            }
         }
         else
         {
            this.§"!7§ = b2internal::'W;
         }
         if(this.§8!_§ == false)
         {
            this.§1!O§ = 0;
         }
         if(param1.§2!z§)
         {
            this.§8!u§.x *= param1.§>!i§;
            this.§8!u§.y *= param1.§>!i§;
            this.§1!O§ *= param1.§>!i§;
            _loc19_ = this.§8!u§.x * this.§9j§.x + (this.§1!O§ + this.§8!u§.z) * this.§?"5§.x;
            _loc20_ = this.§8!u§.x * this.§9j§.y + (this.§1!O§ + this.§8!u§.z) * this.§?"5§.y;
            _loc21_ = this.§8!u§.x * this.m_s1 + this.§8!u§.y + (this.§1!O§ + this.§8!u§.z) * this.m_a1;
            _loc22_ = this.§8!u§.x * this.m_s2 + this.§8!u§.y + (this.§1!O§ + this.§8!u§.z) * this.m_a2;
            _loc2_.§?!@§.x -= b2internal::4!l * _loc19_;
            _loc2_.§?!@§.y -= b2internal::4!l * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::=+ * _loc21_;
            _loc3_.§?!@§.x += b2internal::7!k * _loc19_;
            _loc3_.§?!@§.y += b2internal::7!k * _loc20_;
            _loc3_.m_angularVelocity += b2internal::;!N * _loc22_;
         }
         else
         {
            this.§8!u§.§7!@§();
            this.§1!O§ = 0;
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
         var _loc2_:b2Body = b2internal::#U;
         var _loc3_:b2Body = b2internal::&W;
         var _loc4_:b2Vec2 = _loc2_.§?!@§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§?!@§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§8!_§ && this.§"!7§ != b2internal::-"')
         {
            _loc14_ = this.§?"5§.x * (_loc6_.x - _loc4_.x) + this.§?"5§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§ t§ * (this.§[$§ - _loc14_);
            _loc16_ = this.§1!O§;
            _loc17_ = param1.§@w§ * this.§=!q§;
            this.§1!O§ = b2Math.§<C§(this.§1!O§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§1!O§ - _loc16_) * this.§?"5§.x;
            _loc9_ = _loc15_ * this.§?"5§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::4!l * _loc8_;
            _loc4_.y -= b2internal::4!l * _loc9_;
            _loc5_ -= b2internal::=+ * _loc10_;
            _loc6_.x += b2internal::7!k * _loc8_;
            _loc6_.y += b2internal::7!k * _loc9_;
            _loc7_ += b2internal::;!N * _loc11_;
         }
         var _loc12_:Number = this.§9j§.x * (_loc6_.x - _loc4_.x) + this.§9j§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§&p§ && this.§"!7§ != b2internal::'W)
         {
            _loc18_ = this.§?"5§.x * (_loc6_.x - _loc4_.x) + this.§?"5§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§8!u§.Copy();
            _loc20_ = this.§4!#§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§8!u§.§,!m§(_loc20_);
            if(this.§"!7§ == b2internal::-!B)
            {
               this.§8!u§.z = b2Math.§;]§(this.§8!u§.z,0);
            }
            else if(this.§"!7§ == b2internal::<2)
            {
               this.§8!u§.z = b2Math.§!"9§(this.§8!u§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§8!u§.z - _loc19_.z) * this.§4!#§.col3.x;
            _loc22_ = -_loc13_ - (this.§8!u§.z - _loc19_.z) * this.§4!#§.col3.y;
            _loc23_ = this.§4!#§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§8!u§.x = _loc23_.x;
            this.§8!u§.y = _loc23_.y;
            _loc20_.x = this.§8!u§.x - _loc19_.x;
            _loc20_.y = this.§8!u§.y - _loc19_.y;
            _loc20_.z = this.§8!u§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§9j§.x + _loc20_.z * this.§?"5§.x;
            _loc9_ = _loc20_.x * this.§9j§.y + _loc20_.z * this.§?"5§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::4!l * _loc8_;
            _loc4_.y -= b2internal::4!l * _loc9_;
            _loc5_ -= b2internal::=+ * _loc10_;
            _loc6_.x += b2internal::7!k * _loc8_;
            _loc6_.y += b2internal::7!k * _loc9_;
            _loc7_ += b2internal::;!N * _loc11_;
         }
         else
         {
            _loc24_ = this.§4!#§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§8!u§.x += _loc24_.x;
            this.§8!u§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§9j§.x;
            _loc9_ = _loc24_.x * this.§9j§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::4!l * _loc8_;
            _loc4_.y -= b2internal::4!l * _loc9_;
            _loc5_ -= b2internal::=+ * _loc10_;
            _loc6_.x += b2internal::7!k * _loc8_;
            _loc6_.y += b2internal::7!k * _loc9_;
            _loc7_ += b2internal::;!N * _loc11_;
         }
         _loc2_.§?!@§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§?!@§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::#U;
         var _loc5_:b2Body = b2internal::&W;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§<!a§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§<!a§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::6!U.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::6!U.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::=d.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::=d.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§&p§)
         {
            this.§?"5§ = b2Math.§6B§(_loc20_,this.§]B§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§?"5§.y - (_loc27_ + _loc23_) * this.§?"5§.x;
            this.m_a2 = _loc24_ * this.§?"5§.y - _loc25_ * this.§?"5§.x;
            _loc35_ = this.§?"5§.x * _loc26_ + this.§?"5§.y * _loc27_;
            if(b2Math.§`8§(this.§,"§ - this.§;!=§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§<C§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§`8§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§;!=§)
            {
               _loc19_ = b2Math.§<C§(_loc35_ - this.§;!=§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§;!=§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§,"§)
            {
               _loc19_ = b2Math.§<C§(_loc35_ - this.§,"§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§,"§;
               _loc18_ = true;
            }
         }
         this.§9j§ = b2Math.§6B§(_loc20_,this.§'!n§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§9j§.y - (_loc27_ + _loc23_) * this.§9j§.x;
         this.m_s2 = _loc24_ * this.§9j§.y - _loc25_ * this.§9j§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§9j§.x * _loc26_ + this.§9j§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§;I§;
         _loc16_ = b2Math.§;]§(_loc16_,b2Math.§`8§(_loc29_));
         _loc17_ = b2Math.§`8§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::4!l;
            _loc13_ = b2internal::7!k;
            _loc14_ = b2internal::=+;
            _loc15_ = b2internal::;!N;
            this.§4!#§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§4!#§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§4!#§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§4!#§.col2.x = this.§4!#§.col1.y;
            this.§4!#§.col2.y = _loc14_ + _loc15_;
            this.§4!#§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§4!#§.col3.x = this.§4!#§.col1.z;
            this.§4!#§.col3.y = this.§4!#§.col2.z;
            this.§4!#§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§4!#§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::4!l;
            _loc13_ = b2internal::7!k;
            _loc14_ = b2internal::=+;
            _loc15_ = b2internal::;!N;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§4!#§.col1.Set(_loc36_,_loc37_,0);
            this.§4!#§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§4!#§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§9j§.x + _loc28_.z * this.§?"5§.x;
         var _loc32_:Number = _loc28_.x * this.§9j§.y + _loc28_.z * this.§?"5§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::4!l * _loc31_;
         _loc6_.y -= b2internal::4!l * _loc32_;
         _loc7_ -= b2internal::=+ * _loc33_;
         _loc8_.x += b2internal::7!k * _loc31_;
         _loc8_.y += b2internal::7!k * _loc32_;
         _loc9_ += b2internal::;!N * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§+"+§();
         _loc5_.§+"+§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}

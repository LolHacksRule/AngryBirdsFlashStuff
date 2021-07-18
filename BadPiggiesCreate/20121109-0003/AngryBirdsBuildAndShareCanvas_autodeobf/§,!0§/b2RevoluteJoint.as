package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Mat22;
   import §<!a§.b2Mat33;
   import §<!a§.b2Math;
   import §<!a§.b2Vec2;
   import §<!a§.b2Vec3;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §+T§:b2Vec2 = new b2Vec2();
       
      
      private var §>!H§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §7g§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §5!i§:b2Vec3;
      
      private var §`t§:Number;
      
      private var §?j§:b2Mat33;
      
      private var §>E§:Number;
      
      private var § !P§:Boolean;
      
      private var §`!A§:Number;
      
      private var §?!,§:Number;
      
      private var §!!$§:Boolean;
      
      private var §"e§:Number;
      
      private var §@k§:Number;
      
      private var §>!8§:Number;
      
      private var §<!3§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§>!H§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§7g§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§5!i§ = new b2Vec3();
         this.§?j§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§3!&§);
         this.m_localAnchor2.SetV(param1.§2!P§);
         this.§"e§ = param1.§ "2§;
         this.§5!i§.§?b§();
         this.§`t§ = 0;
         this.§@k§ = param1.§9"!§;
         this.§>!8§ = param1.§ !A§;
         this.§`!A§ = param1.§@!U§;
         this.§?!,§ = param1.motorSpeed;
         this.§!!$§ = param1.§2<§;
         this.§ !P§ = param1.§#a§;
         this.§<!3§ = b2internal::^#;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+d.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!l.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§5!i§.x,param1 * this.§5!i§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§5!i§.z;
      }
      
      public function §7i§() : Number
      {
         return b2internal::"!l.m_sweep.a - b2internal::+d.m_sweep.a - this.§"e§;
      }
      
      public function §&!8§() : Number
      {
         return b2internal::"!l.m_angularVelocity - b2internal::+d.m_angularVelocity;
      }
      
      public function §`J§() : Boolean
      {
         return this.§!!$§;
      }
      
      public function §+K§(param1:Boolean) : void
      {
         this.§!!$§ = param1;
      }
      
      public function §2z§() : Number
      {
         return this.§@k§;
      }
      
      public function §5!V§() : Number
      {
         return this.§>!8§;
      }
      
      public function §7!&§(param1:Number, param2:Number) : void
      {
         this.§@k§ = param1;
         this.§>!8§ = param2;
      }
      
      public function §%!o§() : Boolean
      {
         b2internal::+d.SetAwake(true);
         b2internal::"!l.SetAwake(true);
         return this.§ !P§;
      }
      
      public function §`l§(param1:Boolean) : void
      {
         this.§ !P§ = param1;
      }
      
      public function §97§(param1:Number) : void
      {
         b2internal::+d.SetAwake(true);
         b2internal::"!l.SetAwake(true);
         this.§?!,§ = param1;
      }
      
      public function §,;§() : Number
      {
         return this.§?!,§;
      }
      
      public function §!"1§(param1:Number) : void
      {
         this.§`!A§ = param1;
      }
      
      public function §<S§() : Number
      {
         return this.§`!A§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         _loc2_ = b2internal::+d;
         _loc3_ = b2internal::"!l;
         if(this.§ !P§ || this.§!!$§)
         {
         }
         _loc4_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
         _loc7_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc6_ + _loc4_.col2.x * _loc7_;
         _loc7_ = _loc4_.col1.y * _loc6_ + _loc4_.col2.y * _loc7_;
         _loc6_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         var _loc10_:Number = _loc2_.§@"!§;
         var _loc11_:Number = _loc3_.§@"!§;
         var _loc12_:Number = _loc2_.§=!N§;
         var _loc13_:Number = _loc3_.§=!N§;
         this.§?j§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§?j§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§?j§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§?j§.col1.y = this.§?j§.col2.x;
         this.§?j§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§?j§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§?j§.col1.z = this.§?j§.col3.x;
         this.§?j§.col2.z = this.§?j§.col3.y;
         this.§?j§.col3.z = _loc12_ + _loc13_;
         this.§>E§ = 1 / (_loc12_ + _loc13_);
         if(this.§ !P§ == false)
         {
            this.§`t§ = 0;
         }
         if(this.§!!$§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§"e§;
            if(b2Math.§1!`§(this.§>!8§ - this.§@k§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§<!3§ = b2internal::8"7;
            }
            else if(_loc14_ <= this.§@k§)
            {
               if(this.§<!3§ != b2internal::@)
               {
                  this.§5!i§.z = 0;
               }
               this.§<!3§ = b2internal::@;
            }
            else if(_loc14_ >= this.§>!8§)
            {
               if(this.§<!3§ != b2internal::!"7)
               {
                  this.§5!i§.z = 0;
               }
               this.§<!3§ = b2internal::!"7;
            }
            else
            {
               this.§<!3§ = b2internal::^#;
               this.§5!i§.z = 0;
            }
         }
         else
         {
            this.§<!3§ = b2internal::^#;
         }
         if(param1.§@!D§)
         {
            this.§5!i§.x *= param1.§class§;
            this.§5!i§.y *= param1.§class§;
            this.§`t§ *= param1.§class§;
            _loc15_ = this.§5!i§.x;
            _loc16_ = this.§5!i§.y;
            _loc2_.§]!g§.x -= _loc10_ * _loc15_;
            _loc2_.§]!g§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§`t§ + this.§5!i§.z);
            _loc3_.§]!g§.x += _loc11_ * _loc15_;
            _loc3_.§]!g§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§`t§ + this.§5!i§.z);
         }
         else
         {
            this.§5!i§.§?b§();
            this.§`t§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc2_:b2Body = b2internal::+d;
         var _loc3_:b2Body = b2internal::"!l;
         var _loc11_:b2Vec2 = _loc2_.§]!g§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§]!g§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§@"!§;
         var _loc16_:Number = _loc3_.§@"!§;
         var _loc17_:Number = _loc2_.§=!N§;
         var _loc18_:Number = _loc3_.§=!N§;
         if(this.§ !P§ && this.§<!3§ != b2internal::8"7)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§?!,§;
            _loc20_ = this.§>E§ * -_loc19_;
            _loc21_ = this.§`t§;
            _loc22_ = param1.§@[§ * this.§`!A§;
            this.§`t§ = b2Math.§5" §(this.§`t§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§`t§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§!!$§ && this.§<!3§ != b2internal::^#)
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_.m_xf.R;
            _loc9_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc23_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc24_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            _loc25_ = _loc14_ - _loc12_;
            this.§?j§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§<!3§ == b2internal::8"7)
            {
               this.§5!i§.§<!n§(this.impulse3);
            }
            else if(this.§<!3§ == b2internal::@)
            {
               if((_loc6_ = this.§5!i§.z + this.impulse3.z) < 0)
               {
                  this.§?j§.Solve22(this.§7g§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§7g§.x;
                  this.impulse3.y = this.§7g§.y;
                  this.impulse3.z = -this.§5!i§.z;
                  this.§5!i§.x += this.§7g§.x;
                  this.§5!i§.y += this.§7g§.y;
                  this.§5!i§.z = 0;
               }
            }
            else if(this.§<!3§ == b2internal::!"7)
            {
               if((_loc6_ = this.§5!i§.z + this.impulse3.z) > 0)
               {
                  this.§?j§.Solve22(this.§7g§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§7g§.x;
                  this.impulse3.y = this.§7g§.y;
                  this.impulse3.z = -this.§5!i§.z;
                  this.§5!i§.x += this.§7g§.x;
                  this.§5!i§.y += this.§7g§.y;
                  this.§5!i§.z = 0;
               }
            }
            _loc11_.x -= _loc15_ * this.impulse3.x;
            _loc11_.y -= _loc15_ * this.impulse3.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse3.y - _loc8_ * this.impulse3.x + this.impulse3.z);
            _loc13_.x += _loc16_ * this.impulse3.x;
            _loc13_.y += _loc16_ * this.impulse3.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse3.y - _loc10_ * this.impulse3.x + this.impulse3.z);
         }
         else
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_.m_xf.R;
            _loc9_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc26_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc27_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            this.§?j§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§5!i§.x += this.impulse2.x;
            this.§5!i§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§]!g§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§]!g§.SetV(_loc13_);
         _loc3_.m_angularVelocity = _loc14_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc5_:b2Body = b2internal::+d;
         var _loc6_:b2Body = b2internal::"!l;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§!!$§ && this.§<!3§ != b2internal::^#)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§"e§;
            _loc26_ = 0;
            if(this.§<!3§ == b2internal::8"7)
            {
               _loc3_ = b2Math.§5" §(_loc25_ - this.§@k§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§>E§ * _loc3_;
               _loc7_ = b2Math.§1!`§(_loc3_);
            }
            else if(this.§<!3§ == b2internal::@)
            {
               _loc3_ = _loc25_ - this.§@k§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§5" §(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§>E§ * _loc3_;
            }
            else if(this.§<!3§ == b2internal::!"7)
            {
               _loc3_ = _loc25_ - this.§>!8§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§5" §(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§>E§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§=!N§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§=!N§ * _loc26_;
            _loc5_.§=&§();
            _loc6_.§=&§();
         }
         _loc4_ = _loc5_.m_xf.R;
         var _loc12_:Number = this.m_localAnchor1.x - _loc5_.m_sweep.localCenter.x;
         var _loc13_:Number = this.m_localAnchor1.y - _loc5_.m_sweep.localCenter.y;
         _loc9_ = _loc4_.col1.x * _loc12_ + _loc4_.col2.x * _loc13_;
         _loc13_ = _loc4_.col1.y * _loc12_ + _loc4_.col2.y * _loc13_;
         _loc12_ = _loc9_;
         _loc4_ = _loc6_.m_xf.R;
         var _loc14_:Number = this.m_localAnchor2.x - _loc6_.m_sweep.localCenter.x;
         var _loc15_:Number = this.m_localAnchor2.y - _loc6_.m_sweep.localCenter.y;
         _loc9_ = _loc4_.col1.x * _loc14_ + _loc4_.col2.x * _loc15_;
         _loc15_ = _loc4_.col1.y * _loc14_ + _loc4_.col2.y * _loc15_;
         _loc14_ = _loc9_;
         var _loc16_:Number = _loc6_.m_sweep.c.x + _loc14_ - _loc5_.m_sweep.c.x - _loc12_;
         var _loc17_:Number = _loc6_.m_sweep.c.y + _loc15_ - _loc5_.m_sweep.c.y - _loc13_;
         var _loc18_:Number = _loc16_ * _loc16_ + _loc17_ * _loc17_;
         var _loc19_:Number;
         _loc8_ = _loc19_ = Math.sqrt(_loc18_);
         var _loc20_:Number = _loc5_.§@"!§;
         var _loc21_:Number = _loc6_.§@"!§;
         var _loc22_:Number = _loc5_.§=!N§;
         var _loc23_:Number = _loc6_.§=!N§;
         var _loc24_:Number = 10 * b2Settings.b2_linearSlop;
         if(_loc18_ > _loc24_ * _loc24_)
         {
            _loc27_ = _loc16_ / _loc19_;
            _loc28_ = _loc17_ / _loc19_;
            _loc29_ = _loc20_ + _loc21_;
            _loc10_ = (_loc30_ = 1 / _loc29_) * -_loc16_;
            _loc11_ = _loc30_ * -_loc17_;
            _loc31_ = 0.5;
            _loc5_.m_sweep.c.x -= _loc31_ * _loc20_ * _loc10_;
            _loc5_.m_sweep.c.y -= _loc31_ * _loc20_ * _loc11_;
            _loc6_.m_sweep.c.x += _loc31_ * _loc21_ * _loc10_;
            _loc6_.m_sweep.c.y += _loc31_ * _loc21_ * _loc11_;
            _loc16_ = _loc6_.m_sweep.c.x + _loc14_ - _loc5_.m_sweep.c.x - _loc12_;
            _loc17_ = _loc6_.m_sweep.c.y + _loc15_ - _loc5_.m_sweep.c.y - _loc13_;
         }
         this.K1.col1.x = _loc20_ + _loc21_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc20_ + _loc21_;
         this.K2.col1.x = _loc22_ * _loc13_ * _loc13_;
         this.K2.col2.x = -_loc22_ * _loc12_ * _loc13_;
         this.K2.col1.y = -_loc22_ * _loc12_ * _loc13_;
         this.K2.col2.y = _loc22_ * _loc12_ * _loc12_;
         this.K3.col1.x = _loc23_ * _loc15_ * _loc15_;
         this.K3.col2.x = -_loc23_ * _loc14_ * _loc15_;
         this.K3.col1.y = -_loc23_ * _loc14_ * _loc15_;
         this.K3.col2.y = _loc23_ * _loc14_ * _loc14_;
         this.§>!H§.§<P§(this.K1);
         this.§>!H§.§9";§(this.K2);
         this.§>!H§.§9";§(this.K3);
         this.§>!H§.§1!R§(§+T§,-_loc16_,-_loc17_);
         _loc10_ = §+T§.x;
         _loc11_ = §+T§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§@"!§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§@"!§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§=!N§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§@"!§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§@"!§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§=!N§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§=&§();
         _loc6_.§=&§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}

package § !V§
{
   import §+S§.b2Body;
   import §+S§.b2TimeStep;
   import §2"=§.b2Mat22;
   import §2"=§.b2Mat33;
   import §2"=§.b2Math;
   import §2"=§.b2Vec2;
   import §2"=§.b2Vec3;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §%7§:b2Vec2 = new b2Vec2();
       
      
      private var §@V§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §3R§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §?;§:b2Vec3;
      
      private var §;!T§:Number;
      
      private var §@e§:b2Mat33;
      
      private var §+!§:Number;
      
      private var §"%§:Boolean;
      
      private var §#!i§:Number;
      
      private var §3u§:Number;
      
      private var §!k§:Boolean;
      
      private var §4"4§:Number;
      
      private var §>A§:Number;
      
      private var §?!Q§:Number;
      
      private var §'T§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§@V§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§3R§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§?;§ = new b2Vec3();
         this.§@e§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§!2§);
         this.m_localAnchor2.SetV(param1.§ !c§);
         this.§4"4§ = param1.§+!H§;
         this.§?;§.§@!s§();
         this.§;!T§ = 0;
         this.§>A§ = param1.§@!U§;
         this.§?!Q§ = param1.§6!#§;
         this.§#!i§ = param1.§1a§;
         this.§3u§ = param1.motorSpeed;
         this.§!k§ = param1.§4!E§;
         this.§"%§ = param1.§7!S§;
         this.§'T§ = b2internal::@g;
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
         return new b2Vec2(param1 * this.§?;§.x,param1 * this.§?;§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§?;§.z;
      }
      
      public function §^!H§() : Number
      {
         return b2internal:: `.m_sweep.a - b2internal::0"7.m_sweep.a - this.§4"4§;
      }
      
      public function §%l§() : Number
      {
         return b2internal:: `.m_angularVelocity - b2internal::0"7.m_angularVelocity;
      }
      
      public function §%!a§() : Boolean
      {
         return this.§!k§;
      }
      
      public function §9H§(param1:Boolean) : void
      {
         this.§!k§ = param1;
      }
      
      public function §4!Z§() : Number
      {
         return this.§>A§;
      }
      
      public function §5!9§() : Number
      {
         return this.§?!Q§;
      }
      
      public function §<4§(param1:Number, param2:Number) : void
      {
         this.§>A§ = param1;
         this.§?!Q§ = param2;
      }
      
      public function §;_§() : Boolean
      {
         b2internal::0"7.SetAwake(true);
         b2internal:: `.SetAwake(true);
         return this.§"%§;
      }
      
      public function §]v§(param1:Boolean) : void
      {
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
      
      public function §"!Q§(param1:Number) : void
      {
         this.§#!i§ = param1;
      }
      
      public function §70§() : Number
      {
         return this.§#!i§;
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
         _loc2_ = b2internal::0"7;
         _loc3_ = b2internal:: `;
         if(this.§"%§ || this.§!k§)
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
         var _loc10_:Number = _loc2_.§;k§;
         var _loc11_:Number = _loc3_.§;k§;
         var _loc12_:Number = _loc2_.§6x§;
         var _loc13_:Number = _loc3_.§6x§;
         this.§@e§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§@e§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§@e§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§@e§.col1.y = this.§@e§.col2.x;
         this.§@e§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§@e§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§@e§.col1.z = this.§@e§.col3.x;
         this.§@e§.col2.z = this.§@e§.col3.y;
         this.§@e§.col3.z = _loc12_ + _loc13_;
         this.§+!§ = 1 / (_loc12_ + _loc13_);
         if(this.§"%§ == false)
         {
            this.§;!T§ = 0;
         }
         if(this.§!k§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§4"4§;
            if(b2Math.§`U§(this.§?!Q§ - this.§>A§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§'T§ = b2internal::@!5;
            }
            else if(_loc14_ <= this.§>A§)
            {
               if(this.§'T§ != b2internal::2!J)
               {
                  this.§?;§.z = 0;
               }
               this.§'T§ = b2internal::2!J;
            }
            else if(_loc14_ >= this.§?!Q§)
            {
               if(this.§'T§ != b2internal::^"<)
               {
                  this.§?;§.z = 0;
               }
               this.§'T§ = b2internal::^"<;
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
         if(param1.§1!w§)
         {
            this.§?;§.x *= param1.§<3§;
            this.§?;§.y *= param1.§<3§;
            this.§;!T§ *= param1.§<3§;
            _loc15_ = this.§?;§.x;
            _loc16_ = this.§?;§.y;
            _loc2_.§,b§.x -= _loc10_ * _loc15_;
            _loc2_.§,b§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§;!T§ + this.§?;§.z);
            _loc3_.§,b§.x += _loc11_ * _loc15_;
            _loc3_.§,b§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§;!T§ + this.§?;§.z);
         }
         else
         {
            this.§?;§.§@!s§();
            this.§;!T§ = 0;
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
         var _loc2_:b2Body = b2internal::0"7;
         var _loc3_:b2Body = b2internal:: `;
         var _loc11_:b2Vec2 = _loc2_.§,b§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§,b§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§;k§;
         var _loc16_:Number = _loc3_.§;k§;
         var _loc17_:Number = _loc2_.§6x§;
         var _loc18_:Number = _loc3_.§6x§;
         if(this.§"%§ && this.§'T§ != b2internal::@!5)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§3u§;
            _loc20_ = this.§+!§ * -_loc19_;
            _loc21_ = this.§;!T§;
            _loc22_ = param1.§+z§ * this.§#!i§;
            this.§;!T§ = b2Math.§&>§(this.§;!T§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§;!T§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§!k§ && this.§'T§ != b2internal::@g)
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
            this.§@e§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§'T§ == b2internal::@!5)
            {
               this.§?;§.§1v§(this.impulse3);
            }
            else if(this.§'T§ == b2internal::2!J)
            {
               if((_loc6_ = this.§?;§.z + this.impulse3.z) < 0)
               {
                  this.§@e§.Solve22(this.§3R§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§3R§.x;
                  this.impulse3.y = this.§3R§.y;
                  this.impulse3.z = -this.§?;§.z;
                  this.§?;§.x += this.§3R§.x;
                  this.§?;§.y += this.§3R§.y;
                  this.§?;§.z = 0;
               }
            }
            else if(this.§'T§ == b2internal::^"<)
            {
               if((_loc6_ = this.§?;§.z + this.impulse3.z) > 0)
               {
                  this.§@e§.Solve22(this.§3R§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§3R§.x;
                  this.impulse3.y = this.§3R§.y;
                  this.impulse3.z = -this.§?;§.z;
                  this.§?;§.x += this.§3R§.x;
                  this.§?;§.y += this.§3R§.y;
                  this.§?;§.z = 0;
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
            this.§@e§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§?;§.x += this.impulse2.x;
            this.§?;§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§,b§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§,b§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::0"7;
         var _loc6_:b2Body = b2internal:: `;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§!k§ && this.§'T§ != b2internal::@g)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§4"4§;
            _loc26_ = 0;
            if(this.§'T§ == b2internal::@!5)
            {
               _loc3_ = b2Math.§&>§(_loc25_ - this.§>A§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§+!§ * _loc3_;
               _loc7_ = b2Math.§`U§(_loc3_);
            }
            else if(this.§'T§ == b2internal::2!J)
            {
               _loc3_ = _loc25_ - this.§>A§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§&>§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§+!§ * _loc3_;
            }
            else if(this.§'T§ == b2internal::^"<)
            {
               _loc3_ = _loc25_ - this.§?!Q§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§&>§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§+!§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§6x§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§6x§ * _loc26_;
            _loc5_.§#!k§();
            _loc6_.§#!k§();
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
         var _loc20_:Number = _loc5_.§;k§;
         var _loc21_:Number = _loc6_.§;k§;
         var _loc22_:Number = _loc5_.§6x§;
         var _loc23_:Number = _loc6_.§6x§;
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
         this.§@V§.§5"4§(this.K1);
         this.§@V§.§4"<§(this.K2);
         this.§@V§.§4"<§(this.K3);
         this.§@V§.§=F§(§%7§,-_loc16_,-_loc17_);
         _loc10_ = §%7§.x;
         _loc11_ = §%7§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§;k§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§;k§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§6x§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§;k§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§;k§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§6x§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§#!k§();
         _loc6_.§#!k§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}

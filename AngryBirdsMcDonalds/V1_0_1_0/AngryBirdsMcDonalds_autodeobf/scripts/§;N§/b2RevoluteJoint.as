package §;N§
{
   import §!R§.b2Mat22;
   import §!R§.b2Mat33;
   import §!R§.b2Math;
   import §!R§.b2Vec2;
   import §!R§.b2Vec3;
   import §1B§.b2Body;
   import §1B§.b2TimeStep;
   import §9i§.b2Settings;
   import §9i§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §=A§:b2Vec2 = new b2Vec2();
       
      
      private var §7s§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §6!M§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §%z§:b2Vec3;
      
      private var §^!k§:Number;
      
      private var §+!C§:b2Mat33;
      
      private var final:Number;
      
      private var § A§:Boolean;
      
      private var §@V§:Number;
      
      private var §0!g§:Number;
      
      private var §!!&§:Boolean;
      
      private var §-5§:Number;
      
      private var §!V§:Number;
      
      private var §#e§:Number;
      
      private var §?9§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§7s§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§6!M§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§%z§ = new b2Vec3();
         this.§+!C§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§4D§);
         this.m_localAnchor2.SetV(param1.§@@§);
         this.§-5§ = param1.§'P§;
         this.§%z§.§"9§();
         this.§^!k§ = 0;
         this.§!V§ = param1.§5+§;
         this.§#e§ = param1.§3e§;
         this.§@V§ = param1.§ X§;
         this.§0!g§ = param1.motorSpeed;
         this.§!!&§ = param1.§'#§;
         this.§ A§ = param1.§8%§;
         this.§?9§ = b2internal::>4;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal:: each.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8[.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§%z§.x,param1 * this.§%z§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§%z§.z;
      }
      
      public function §!!M§() : Number
      {
         return b2internal::8[.m_sweep.a - b2internal:: each.m_sweep.a - this.§-5§;
      }
      
      public function §;!Q§() : Number
      {
         return b2internal::8[.m_angularVelocity - b2internal:: each.m_angularVelocity;
      }
      
      public function §5I§() : Boolean
      {
         return this.§!!&§;
      }
      
      public function §3Q§(param1:Boolean) : void
      {
         this.§!!&§ = param1;
      }
      
      public function §9_§() : Number
      {
         return this.§!V§;
      }
      
      public function §?!P§() : Number
      {
         return this.§#e§;
      }
      
      public function § !&§(param1:Number, param2:Number) : void
      {
         this.§!V§ = param1;
         this.§#e§ = param2;
      }
      
      public function §1,§() : Boolean
      {
         b2internal:: each.SetAwake(true);
         b2internal::8[.SetAwake(true);
         return this.§ A§;
      }
      
      public function §3C§(param1:Boolean) : void
      {
         this.§ A§ = param1;
      }
      
      public function §8D§(param1:Number) : void
      {
         b2internal:: each.SetAwake(true);
         b2internal::8[.SetAwake(true);
         this.§0!g§ = param1;
      }
      
      public function §%$§() : Number
      {
         return this.§0!g§;
      }
      
      public function §;$§(param1:Number) : void
      {
         this.§@V§ = param1;
      }
      
      public function §!_§() : Number
      {
         return this.§@V§;
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
         _loc2_ = b2internal:: each;
         _loc3_ = b2internal::8[;
         if(this.§ A§ || this.§!!&§)
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
         var _loc10_:Number = _loc2_.§#@§;
         var _loc11_:Number = _loc3_.§#@§;
         var _loc12_:Number = _loc2_.§<3§;
         var _loc13_:Number = _loc3_.§<3§;
         this.§+!C§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§+!C§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§+!C§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§+!C§.col1.y = this.§+!C§.col2.x;
         this.§+!C§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§+!C§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§+!C§.col1.z = this.§+!C§.col3.x;
         this.§+!C§.col2.z = this.§+!C§.col3.y;
         this.§+!C§.col3.z = _loc12_ + _loc13_;
         this.final = 1 / (_loc12_ + _loc13_);
         if(this.§ A§ == false)
         {
            this.§^!k§ = 0;
         }
         if(this.§!!&§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§-5§;
            if(b2Math.§'s§(this.§#e§ - this.§!V§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§?9§ = b2internal::[!P;
            }
            else if(_loc14_ <= this.§!V§)
            {
               if(this.§?9§ != b2internal::9!M)
               {
                  this.§%z§.z = 0;
               }
               this.§?9§ = b2internal::9!M;
            }
            else if(_loc14_ >= this.§#e§)
            {
               if(this.§?9§ != b2internal:: !,)
               {
                  this.§%z§.z = 0;
               }
               this.§?9§ = b2internal:: !,;
            }
            else
            {
               this.§?9§ = b2internal::>4;
               this.§%z§.z = 0;
            }
         }
         else
         {
            this.§?9§ = b2internal::>4;
         }
         if(param1.§=s§)
         {
            this.§%z§.x *= param1.§;%§;
            this.§%z§.y *= param1.§;%§;
            this.§^!k§ *= param1.§;%§;
            _loc15_ = this.§%z§.x;
            _loc16_ = this.§%z§.y;
            _loc2_.§5!m§.x -= _loc10_ * _loc15_;
            _loc2_.§5!m§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§^!k§ + this.§%z§.z);
            _loc3_.§5!m§.x += _loc11_ * _loc15_;
            _loc3_.§5!m§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§^!k§ + this.§%z§.z);
         }
         else
         {
            this.§%z§.§"9§();
            this.§^!k§ = 0;
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
         var _loc2_:b2Body = b2internal:: each;
         var _loc3_:b2Body = b2internal::8[;
         var _loc11_:b2Vec2 = _loc2_.§5!m§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§5!m§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§#@§;
         var _loc16_:Number = _loc3_.§#@§;
         var _loc17_:Number = _loc2_.§<3§;
         var _loc18_:Number = _loc3_.§<3§;
         if(this.§ A§ && this.§?9§ != b2internal::[!P)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§0!g§;
            _loc20_ = this.final * -_loc19_;
            _loc21_ = this.§^!k§;
            _loc22_ = param1.§#"§ * this.§@V§;
            this.§^!k§ = b2Math.§%!i§(this.§^!k§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§^!k§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§!!&§ && this.§?9§ != b2internal::>4)
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
            this.§+!C§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§?9§ == b2internal::[!P)
            {
               this.§%z§.§"W§(this.impulse3);
            }
            else if(this.§?9§ == b2internal::9!M)
            {
               if((_loc6_ = this.§%z§.z + this.impulse3.z) < 0)
               {
                  this.§+!C§.Solve22(this.§6!M§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§6!M§.x;
                  this.impulse3.y = this.§6!M§.y;
                  this.impulse3.z = -this.§%z§.z;
                  this.§%z§.x += this.§6!M§.x;
                  this.§%z§.y += this.§6!M§.y;
                  this.§%z§.z = 0;
               }
            }
            else if(this.§?9§ == b2internal:: !,)
            {
               if((_loc6_ = this.§%z§.z + this.impulse3.z) > 0)
               {
                  this.§+!C§.Solve22(this.§6!M§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§6!M§.x;
                  this.impulse3.y = this.§6!M§.y;
                  this.impulse3.z = -this.§%z§.z;
                  this.§%z§.x += this.§6!M§.x;
                  this.§%z§.y += this.§6!M§.y;
                  this.§%z§.z = 0;
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
            this.§+!C§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§%z§.x += this.impulse2.x;
            this.§%z§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§5!m§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§5!m§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal:: each;
         var _loc6_:b2Body = b2internal::8[;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§!!&§ && this.§?9§ != b2internal::>4)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§-5§;
            _loc26_ = 0;
            if(this.§?9§ == b2internal::[!P)
            {
               _loc3_ = b2Math.§%!i§(_loc25_ - this.§!V§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.final * _loc3_;
               _loc7_ = b2Math.§'s§(_loc3_);
            }
            else if(this.§?9§ == b2internal::9!M)
            {
               _loc3_ = _loc25_ - this.§!V§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§%!i§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.final * _loc3_;
            }
            else if(this.§?9§ == b2internal:: !,)
            {
               _loc3_ = _loc25_ - this.§#e§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§%!i§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.final * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§<3§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§<3§ * _loc26_;
            _loc5_.§"d§();
            _loc6_.§"d§();
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
         var _loc20_:Number = _loc5_.§#@§;
         var _loc21_:Number = _loc6_.§#@§;
         var _loc22_:Number = _loc5_.§<3§;
         var _loc23_:Number = _loc6_.§<3§;
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
         this.§7s§.§[!n§(this.K1);
         this.§7s§.§"!O§(this.K2);
         this.§7s§.§"!O§(this.K3);
         this.§7s§.§5d§(§=A§,-_loc16_,-_loc17_);
         _loc10_ = §=A§.x;
         _loc11_ = §=A§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§#@§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§#@§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§<3§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§#@§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§#@§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§<3§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§"d§();
         _loc6_.§"d§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}

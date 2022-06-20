package §8k§
{
   import §#]§.b2Mat22;
   import §#]§.b2Mat33;
   import §#]§.b2Math;
   import §#]§.b2Vec2;
   import §#]§.b2Vec3;
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §-"%§:b2Vec2 = new b2Vec2();
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §""#§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §0!y§:b2Vec3;
      
      private var § b§:Number;
      
      private var §+J§:b2Mat33;
      
      private var §""C§:Number;
      
      private var §]!_§:Boolean;
      
      private var §5g§:Number;
      
      private var §%p§:Number;
      
      private var §=!1§:Boolean;
      
      private var §8!w§:Number;
      
      private var §=3§:Number;
      
      private var §5![§:Number;
      
      private var §#Q§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§""#§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§0!y§ = new b2Vec3();
         this.§+J§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§#C§);
         this.m_localAnchor2.SetV(param1.§^!J§);
         this.§8!w§ = param1.§ var§;
         this.§0!y§.§;v§();
         this.§ b§ = 0;
         this.§=3§ = param1.§"!A§;
         this.§5![§ = param1.§,!=§;
         this.§5g§ = param1.§3$§;
         this.§%p§ = param1.motorSpeed;
         this.§=!1§ = param1.§3"%§;
         this.§]!_§ = param1.§[!c§;
         this.§#Q§ = b2internal::2!3;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::8!Z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4"0.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§0!y§.x,param1 * this.§0!y§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§0!y§.z;
      }
      
      public function §'r§() : Number
      {
         return b2internal::4"0.m_sweep.a - b2internal::8!Z.m_sweep.a - this.§8!w§;
      }
      
      public function §8!>§() : Number
      {
         return b2internal::4"0.m_angularVelocity - b2internal::8!Z.m_angularVelocity;
      }
      
      public function §1"1§() : Boolean
      {
         return this.§=!1§;
      }
      
      public function §6@§(param1:Boolean) : void
      {
         this.§=!1§ = param1;
      }
      
      public function §#K§() : Number
      {
         return this.§=3§;
      }
      
      public function §4s§() : Number
      {
         return this.§5![§;
      }
      
      public function §9!r§(param1:Number, param2:Number) : void
      {
         this.§=3§ = param1;
         this.§5![§ = param2;
      }
      
      public function §1!L§() : Boolean
      {
         b2internal::8!Z.SetAwake(true);
         b2internal::4"0.SetAwake(true);
         return this.§]!_§;
      }
      
      public function §+!P§(param1:Boolean) : void
      {
         this.§]!_§ = param1;
      }
      
      public function §3C§(param1:Number) : void
      {
         b2internal::8!Z.SetAwake(true);
         b2internal::4"0.SetAwake(true);
         this.§%p§ = param1;
      }
      
      public function §6<§() : Number
      {
         return this.§%p§;
      }
      
      public function § !]§(param1:Number) : void
      {
         this.§5g§ = param1;
      }
      
      public function §'e§() : Number
      {
         return this.§5g§;
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
         _loc2_ = b2internal::8!Z;
         _loc3_ = b2internal::4"0;
         if(this.§]!_§ || this.§=!1§)
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
         var _loc10_:Number = _loc2_.§["A§;
         var _loc11_:Number = _loc3_.§["A§;
         var _loc12_:Number = _loc2_.§"g§;
         var _loc13_:Number = _loc3_.§"g§;
         this.§+J§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§+J§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§+J§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§+J§.col1.y = this.§+J§.col2.x;
         this.§+J§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§+J§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§+J§.col1.z = this.§+J§.col3.x;
         this.§+J§.col2.z = this.§+J§.col3.y;
         this.§+J§.col3.z = _loc12_ + _loc13_;
         this.§""C§ = 1 / (_loc12_ + _loc13_);
         if(this.§]!_§ == false)
         {
            this.§ b§ = 0;
         }
         if(this.§=!1§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§8!w§;
            if(b2Math.§"p§(this.§5![§ - this.§=3§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§#Q§ = b2internal::3"9;
            }
            else if(_loc14_ <= this.§=3§)
            {
               if(this.§#Q§ != b2internal::+p)
               {
                  this.§0!y§.z = 0;
               }
               this.§#Q§ = b2internal::+p;
            }
            else if(_loc14_ >= this.§5![§)
            {
               if(this.§#Q§ != b2internal::9!i)
               {
                  this.§0!y§.z = 0;
               }
               this.§#Q§ = b2internal::9!i;
            }
            else
            {
               this.§#Q§ = b2internal::2!3;
               this.§0!y§.z = 0;
            }
         }
         else
         {
            this.§#Q§ = b2internal::2!3;
         }
         if(param1.§'i§)
         {
            this.§0!y§.x *= param1.§ ,§;
            this.§0!y§.y *= param1.§ ,§;
            this.§ b§ *= param1.§ ,§;
            _loc15_ = this.§0!y§.x;
            _loc16_ = this.§0!y§.y;
            _loc2_.§="8§.x -= _loc10_ * _loc15_;
            _loc2_.§="8§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§ b§ + this.§0!y§.z);
            _loc3_.§="8§.x += _loc11_ * _loc15_;
            _loc3_.§="8§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§ b§ + this.§0!y§.z);
         }
         else
         {
            this.§0!y§.§;v§();
            this.§ b§ = 0;
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
         var _loc2_:b2Body = b2internal::8!Z;
         var _loc3_:b2Body = b2internal::4"0;
         var _loc11_:b2Vec2 = _loc2_.§="8§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§="8§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§["A§;
         var _loc16_:Number = _loc3_.§["A§;
         var _loc17_:Number = _loc2_.§"g§;
         var _loc18_:Number = _loc3_.§"g§;
         if(this.§]!_§ && this.§#Q§ != b2internal::3"9)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§%p§;
            _loc20_ = this.§""C§ * -_loc19_;
            _loc21_ = this.§ b§;
            _loc22_ = param1.§4"?§ * this.§5g§;
            this.§ b§ = b2Math.§<O§(this.§ b§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§ b§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§=!1§ && this.§#Q§ != b2internal::2!3)
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
            this.§+J§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§#Q§ == b2internal::3"9)
            {
               this.§0!y§.§&3§(this.impulse3);
            }
            else if(this.§#Q§ == b2internal::+p)
            {
               if((_loc6_ = this.§0!y§.z + this.impulse3.z) < 0)
               {
                  this.§+J§.Solve22(this.§""#§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§""#§.x;
                  this.impulse3.y = this.§""#§.y;
                  this.impulse3.z = -this.§0!y§.z;
                  this.§0!y§.x += this.§""#§.x;
                  this.§0!y§.y += this.§""#§.y;
                  this.§0!y§.z = 0;
               }
            }
            else if(this.§#Q§ == b2internal::9!i)
            {
               if((_loc6_ = this.§0!y§.z + this.impulse3.z) > 0)
               {
                  this.§+J§.Solve22(this.§""#§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§""#§.x;
                  this.impulse3.y = this.§""#§.y;
                  this.impulse3.z = -this.§0!y§.z;
                  this.§0!y§.x += this.§""#§.x;
                  this.§0!y§.y += this.§""#§.y;
                  this.§0!y§.z = 0;
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
            this.§+J§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§0!y§.x += this.impulse2.x;
            this.§0!y§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§="8§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§="8§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::8!Z;
         var _loc6_:b2Body = b2internal::4"0;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§=!1§ && this.§#Q§ != b2internal::2!3)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§8!w§;
            _loc26_ = 0;
            if(this.§#Q§ == b2internal::3"9)
            {
               _loc3_ = b2Math.§<O§(_loc25_ - this.§=3§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§""C§ * _loc3_;
               _loc7_ = b2Math.§"p§(_loc3_);
            }
            else if(this.§#Q§ == b2internal::+p)
            {
               _loc3_ = _loc25_ - this.§=3§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§<O§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§""C§ * _loc3_;
            }
            else if(this.§#Q§ == b2internal::9!i)
            {
               _loc3_ = _loc25_ - this.§5![§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§<O§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§""C§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§"g§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§"g§ * _loc26_;
            _loc5_.§,6§();
            _loc6_.§,6§();
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
         var _loc20_:Number = _loc5_.§["A§;
         var _loc21_:Number = _loc6_.§["A§;
         var _loc22_:Number = _loc5_.§"g§;
         var _loc23_:Number = _loc6_.§"g§;
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
         this.K.§=!"§(this.K1);
         this.K.§4!h§(this.K2);
         this.K.§4!h§(this.K3);
         this.K.§#!6§(§-"%§,-_loc16_,-_loc17_);
         _loc10_ = §-"%§.x;
         _loc11_ = §-"%§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§["A§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§["A§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§"g§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§["A§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§["A§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§"g§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§,6§();
         _loc6_.§,6§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}

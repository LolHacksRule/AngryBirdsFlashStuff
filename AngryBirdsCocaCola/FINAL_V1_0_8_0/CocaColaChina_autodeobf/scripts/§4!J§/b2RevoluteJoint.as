package §4!J§
{
   import §6V§.b2Mat22;
   import §6V§.b2Mat33;
   import §6V§.b2Math;
   import §6V§.b2Vec2;
   import §6V§.b2Vec3;
   import §<!L§.b2Body;
   import §<!L§.b2TimeStep;
   import §[!$§.b2Settings;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §+!@§:b2Vec2 = new b2Vec2();
       
      
      private var §8!V§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §9C§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §5!M§:b2Vec3;
      
      private var §2!N§:Number;
      
      private var §&!§:b2Mat33;
      
      private var §4A§:Number;
      
      private var §0!M§:Boolean;
      
      private var § !<§:Number;
      
      private var §0!§:Number;
      
      private var §;P§:Boolean;
      
      private var §%S§:Number;
      
      private var §`D§:Number;
      
      private var §55§:Number;
      
      private var §[J§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§8!V§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§9C§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§5!M§ = new b2Vec3();
         this.§&!§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§;8§);
         this.m_localAnchor2.SetV(param1.§;!c§);
         this.§%S§ = param1.§2Y§;
         this.§5!M§.§;@§();
         this.§2!N§ = 0;
         this.§`D§ = param1.§3!E§;
         this.§55§ = param1.§3z§;
         this.§ !<§ = param1.§>s§;
         this.§0!§ = param1.motorSpeed;
         this.§;P§ = param1.§7!6§;
         this.§0!M§ = param1.§&2§;
         this.§[J§ = b2internal::throw;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!_.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::&! .GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§5!M§.x,param1 * this.§5!M§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§5!M§.z;
      }
      
      public function §,F§() : Number
      {
         return b2internal::&! .m_sweep.a - b2internal::9!_.m_sweep.a - this.§%S§;
      }
      
      public function §>E§() : Number
      {
         return b2internal::&! .m_angularVelocity - b2internal::9!_.m_angularVelocity;
      }
      
      public function §87§() : Boolean
      {
         return this.§;P§;
      }
      
      public function §0+§(param1:Boolean) : void
      {
         this.§;P§ = param1;
      }
      
      public function final() : Number
      {
         return this.§`D§;
      }
      
      public function §1!M§() : Number
      {
         return this.§55§;
      }
      
      public function §-!Y§(param1:Number, param2:Number) : void
      {
         this.§`D§ = param1;
         this.§55§ = param2;
      }
      
      public function §-X§() : Boolean
      {
         b2internal::9!_.SetAwake(true);
         b2internal::&! .SetAwake(true);
         return this.§0!M§;
      }
      
      public function §0!]§(param1:Boolean) : void
      {
         this.§0!M§ = param1;
      }
      
      public function §9U§(param1:Number) : void
      {
         b2internal::9!_.SetAwake(true);
         b2internal::&! .SetAwake(true);
         this.§0!§ = param1;
      }
      
      public function §+s§() : Number
      {
         return this.§0!§;
      }
      
      public function § N§(param1:Number) : void
      {
         this.§ !<§ = param1;
      }
      
      public function § r§() : Number
      {
         return this.§ !<§;
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
         _loc2_ = b2internal::9!_;
         _loc3_ = b2internal::&! ;
         if(this.§0!M§ || this.§;P§)
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
         var _loc10_:Number = _loc2_.§;z§;
         var _loc11_:Number = _loc3_.§;z§;
         var _loc12_:Number = _loc2_.§?C§;
         var _loc13_:Number = _loc3_.§?C§;
         this.§&!§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§&!§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§&!§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§&!§.col1.y = this.§&!§.col2.x;
         this.§&!§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§&!§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§&!§.col1.z = this.§&!§.col3.x;
         this.§&!§.col2.z = this.§&!§.col3.y;
         this.§&!§.col3.z = _loc12_ + _loc13_;
         this.§4A§ = 1 / (_loc12_ + _loc13_);
         if(this.§0!M§ == false)
         {
            this.§2!N§ = 0;
         }
         if(this.§;P§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§%S§;
            if(b2Math.§]+§(this.§55§ - this.§`D§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§[J§ = b2internal::-!=;
            }
            else if(_loc14_ <= this.§`D§)
            {
               if(this.§[J§ != b2internal::"!Y)
               {
                  this.§5!M§.z = 0;
               }
               this.§[J§ = b2internal::"!Y;
            }
            else if(_loc14_ >= this.§55§)
            {
               if(this.§[J§ != b2internal::^!T)
               {
                  this.§5!M§.z = 0;
               }
               this.§[J§ = b2internal::^!T;
            }
            else
            {
               this.§[J§ = b2internal::throw;
               this.§5!M§.z = 0;
            }
         }
         else
         {
            this.§[J§ = b2internal::throw;
         }
         if(param1.§9w§)
         {
            this.§5!M§.x *= param1.§7!<§;
            this.§5!M§.y *= param1.§7!<§;
            this.§2!N§ *= param1.§7!<§;
            _loc15_ = this.§5!M§.x;
            _loc16_ = this.§5!M§.y;
            _loc2_.§1!K§.x -= _loc10_ * _loc15_;
            _loc2_.§1!K§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§2!N§ + this.§5!M§.z);
            _loc3_.§1!K§.x += _loc11_ * _loc15_;
            _loc3_.§1!K§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§2!N§ + this.§5!M§.z);
         }
         else
         {
            this.§5!M§.§;@§();
            this.§2!N§ = 0;
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
         var _loc2_:b2Body = b2internal::9!_;
         var _loc3_:b2Body = b2internal::&! ;
         var _loc11_:b2Vec2 = _loc2_.§1!K§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§1!K§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§;z§;
         var _loc16_:Number = _loc3_.§;z§;
         var _loc17_:Number = _loc2_.§?C§;
         var _loc18_:Number = _loc3_.§?C§;
         if(this.§0!M§ && this.§[J§ != b2internal::-!=)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§0!§;
            _loc20_ = this.§4A§ * -_loc19_;
            _loc21_ = this.§2!N§;
            _loc22_ = param1.§?!§ * this.§ !<§;
            this.§2!N§ = b2Math.§^7§(this.§2!N§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§2!N§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§;P§ && this.§[J§ != b2internal::throw)
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
            this.§&!§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§[J§ == b2internal::-!=)
            {
               this.§5!M§.§!'§(this.impulse3);
            }
            else if(this.§[J§ == b2internal::"!Y)
            {
               if((_loc6_ = this.§5!M§.z + this.impulse3.z) < 0)
               {
                  this.§&!§.Solve22(this.§9C§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§9C§.x;
                  this.impulse3.y = this.§9C§.y;
                  this.impulse3.z = -this.§5!M§.z;
                  this.§5!M§.x += this.§9C§.x;
                  this.§5!M§.y += this.§9C§.y;
                  this.§5!M§.z = 0;
               }
            }
            else if(this.§[J§ == b2internal::^!T)
            {
               if((_loc6_ = this.§5!M§.z + this.impulse3.z) > 0)
               {
                  this.§&!§.Solve22(this.§9C§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§9C§.x;
                  this.impulse3.y = this.§9C§.y;
                  this.impulse3.z = -this.§5!M§.z;
                  this.§5!M§.x += this.§9C§.x;
                  this.§5!M§.y += this.§9C§.y;
                  this.§5!M§.z = 0;
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
            this.§&!§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§5!M§.x += this.impulse2.x;
            this.§5!M§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§1!K§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§1!K§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::9!_;
         var _loc6_:b2Body = b2internal::&! ;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§;P§ && this.§[J§ != b2internal::throw)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§%S§;
            _loc26_ = 0;
            if(this.§[J§ == b2internal::-!=)
            {
               _loc3_ = b2Math.§^7§(_loc25_ - this.§`D§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§4A§ * _loc3_;
               _loc7_ = b2Math.§]+§(_loc3_);
            }
            else if(this.§[J§ == b2internal::"!Y)
            {
               _loc3_ = _loc25_ - this.§`D§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§^7§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§4A§ * _loc3_;
            }
            else if(this.§[J§ == b2internal::^!T)
            {
               _loc3_ = _loc25_ - this.§55§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§^7§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§4A§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§?C§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§?C§ * _loc26_;
            _loc5_.§>u§();
            _loc6_.§>u§();
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
         var _loc20_:Number = _loc5_.§;z§;
         var _loc21_:Number = _loc6_.§;z§;
         var _loc22_:Number = _loc5_.§?C§;
         var _loc23_:Number = _loc6_.§?C§;
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
         this.§8!V§.§?!6§(this.K1);
         this.§8!V§.§2l§(this.K2);
         this.§8!V§.§2l§(this.K3);
         this.§8!V§.§?!7§(§+!@§,-_loc16_,-_loc17_);
         _loc10_ = §+!@§.x;
         _loc11_ = §+!@§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§;z§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§;z§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§?C§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§;z§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§;z§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§?C§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§>u§();
         _loc6_.§>u§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}

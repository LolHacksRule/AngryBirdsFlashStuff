package §^%§
{
   import §1!z§.b2Mat22;
   import §1!z§.b2Mat33;
   import §1!z§.b2Math;
   import §1!z§.b2Vec2;
   import §1!z§.b2Vec3;
   import §7!q§.b2Body;
   import §7!q§.b2TimeStep;
   import §[M§.b2Settings;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §1V§:b2Vec2 = new b2Vec2();
       
      
      private var §+"?§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §#!=§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §^!@§:b2Vec3;
      
      private var §9!n§:Number;
      
      private var §'!4§:b2Mat33;
      
      private var §<F§:Number;
      
      private var §&!;§:Boolean;
      
      private var §]! §:Number;
      
      private var §4=§:Number;
      
      private var §#!1§:Boolean;
      
      private var §@![§:Number;
      
      private var §5>§:Number;
      
      private var §>L§:Number;
      
      private var §&!u§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§+"?§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§#!=§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§^!@§ = new b2Vec3();
         this.§'!4§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§98§);
         this.m_localAnchor2.SetV(param1.§?m§);
         this.§@![§ = param1.§""4§;
         this.§^!@§.§4e§();
         this.§9!n§ = 0;
         this.§5>§ = param1.§6!W§;
         this.§>L§ = param1.§=u§;
         this.§]! § = param1.§]";§;
         this.§4=§ = param1.motorSpeed;
         this.§#!1§ = param1.§;5§;
         this.§&!;§ = param1.§>!g§;
         this.§&!u§ = b2internal::;k;
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
         return new b2Vec2(param1 * this.§^!@§.x,param1 * this.§^!@§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§^!@§.z;
      }
      
      public function §"g§() : Number
      {
         return b2internal::;!=.m_sweep.a - b2internal::9!B.m_sweep.a - this.§@![§;
      }
      
      public function §=!C§() : Number
      {
         return b2internal::;!=.m_angularVelocity - b2internal::9!B.m_angularVelocity;
      }
      
      public function §&C§() : Boolean
      {
         return this.§#!1§;
      }
      
      public function §&,§(param1:Boolean) : void
      {
         this.§#!1§ = param1;
      }
      
      public function §,§() : Number
      {
         return this.§5>§;
      }
      
      public function §7@§() : Number
      {
         return this.§>L§;
      }
      
      public function §=E§(param1:Number, param2:Number) : void
      {
         this.§5>§ = param1;
         this.§>L§ = param2;
      }
      
      public function §#!`§() : Boolean
      {
         b2internal::9!B.SetAwake(true);
         b2internal::;!=.SetAwake(true);
         return this.§&!;§;
      }
      
      public function §10§(param1:Boolean) : void
      {
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
      
      public function §8!s§(param1:Number) : void
      {
         this.§]! § = param1;
      }
      
      public function §3"+§() : Number
      {
         return this.§]! §;
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
         _loc2_ = b2internal::9!B;
         _loc3_ = b2internal::;!=;
         if(this.§&!;§ || this.§#!1§)
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
         var _loc10_:Number = _loc2_.§"!O§;
         var _loc11_:Number = _loc3_.§"!O§;
         var _loc12_:Number = _loc2_.§6""§;
         var _loc13_:Number = _loc3_.§6""§;
         this.§'!4§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§'!4§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§'!4§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§'!4§.col1.y = this.§'!4§.col2.x;
         this.§'!4§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§'!4§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§'!4§.col1.z = this.§'!4§.col3.x;
         this.§'!4§.col2.z = this.§'!4§.col3.y;
         this.§'!4§.col3.z = _loc12_ + _loc13_;
         this.§<F§ = 1 / (_loc12_ + _loc13_);
         if(this.§&!;§ == false)
         {
            this.§9!n§ = 0;
         }
         if(this.§#!1§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§@![§;
            if(b2Math.§'!2§(this.§>L§ - this.§5>§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§&!u§ = b2internal::0F;
            }
            else if(_loc14_ <= this.§5>§)
            {
               if(this.§&!u§ != b2internal::+!c)
               {
                  this.§^!@§.z = 0;
               }
               this.§&!u§ = b2internal::+!c;
            }
            else if(_loc14_ >= this.§>L§)
            {
               if(this.§&!u§ != b2internal::<!3)
               {
                  this.§^!@§.z = 0;
               }
               this.§&!u§ = b2internal::<!3;
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
         if(param1.§1!$§)
         {
            this.§^!@§.x *= param1.§`T§;
            this.§^!@§.y *= param1.§`T§;
            this.§9!n§ *= param1.§`T§;
            _loc15_ = this.§^!@§.x;
            _loc16_ = this.§^!@§.y;
            _loc2_.§4X§.x -= _loc10_ * _loc15_;
            _loc2_.§4X§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§9!n§ + this.§^!@§.z);
            _loc3_.§4X§.x += _loc11_ * _loc15_;
            _loc3_.§4X§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§9!n§ + this.§^!@§.z);
         }
         else
         {
            this.§^!@§.§4e§();
            this.§9!n§ = 0;
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
         var _loc2_:b2Body = b2internal::9!B;
         var _loc3_:b2Body = b2internal::;!=;
         var _loc11_:b2Vec2 = _loc2_.§4X§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§4X§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§"!O§;
         var _loc16_:Number = _loc3_.§"!O§;
         var _loc17_:Number = _loc2_.§6""§;
         var _loc18_:Number = _loc3_.§6""§;
         if(this.§&!;§ && this.§&!u§ != b2internal::0F)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§4=§;
            _loc20_ = this.§<F§ * -_loc19_;
            _loc21_ = this.§9!n§;
            _loc22_ = param1.§<e§ * this.§]! §;
            this.§9!n§ = b2Math.§`"?§(this.§9!n§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§9!n§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§#!1§ && this.§&!u§ != b2internal::;k)
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
            this.§'!4§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§&!u§ == b2internal::0F)
            {
               this.§^!@§.§4![§(this.impulse3);
            }
            else if(this.§&!u§ == b2internal::+!c)
            {
               if((_loc6_ = this.§^!@§.z + this.impulse3.z) < 0)
               {
                  this.§'!4§.Solve22(this.§#!=§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§#!=§.x;
                  this.impulse3.y = this.§#!=§.y;
                  this.impulse3.z = -this.§^!@§.z;
                  this.§^!@§.x += this.§#!=§.x;
                  this.§^!@§.y += this.§#!=§.y;
                  this.§^!@§.z = 0;
               }
            }
            else if(this.§&!u§ == b2internal::<!3)
            {
               if((_loc6_ = this.§^!@§.z + this.impulse3.z) > 0)
               {
                  this.§'!4§.Solve22(this.§#!=§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§#!=§.x;
                  this.impulse3.y = this.§#!=§.y;
                  this.impulse3.z = -this.§^!@§.z;
                  this.§^!@§.x += this.§#!=§.x;
                  this.§^!@§.y += this.§#!=§.y;
                  this.§^!@§.z = 0;
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
            this.§'!4§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§^!@§.x += this.impulse2.x;
            this.§^!@§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§4X§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§4X§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::9!B;
         var _loc6_:b2Body = b2internal::;!=;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§#!1§ && this.§&!u§ != b2internal::;k)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§@![§;
            _loc26_ = 0;
            if(this.§&!u§ == b2internal::0F)
            {
               _loc3_ = b2Math.§`"?§(_loc25_ - this.§5>§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§<F§ * _loc3_;
               _loc7_ = b2Math.§'!2§(_loc3_);
            }
            else if(this.§&!u§ == b2internal::+!c)
            {
               _loc3_ = _loc25_ - this.§5>§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§`"?§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§<F§ * _loc3_;
            }
            else if(this.§&!u§ == b2internal::<!3)
            {
               _loc3_ = _loc25_ - this.§>L§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§`"?§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§<F§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§6""§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§6""§ * _loc26_;
            _loc5_.§<!S§();
            _loc6_.§<!S§();
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
         var _loc20_:Number = _loc5_.§"!O§;
         var _loc21_:Number = _loc6_.§"!O§;
         var _loc22_:Number = _loc5_.§6""§;
         var _loc23_:Number = _loc6_.§6""§;
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
         this.§+"?§.§>y§(this.K1);
         this.§+"?§.§;Q§(this.K2);
         this.§+"?§.§;Q§(this.K3);
         this.§+"?§.§7!`§(§1V§,-_loc16_,-_loc17_);
         _loc10_ = §1V§.x;
         _loc11_ = §1V§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§"!O§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§"!O§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§6""§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§"!O§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§"!O§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§6""§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§<!S§();
         _loc6_.§<!S§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}

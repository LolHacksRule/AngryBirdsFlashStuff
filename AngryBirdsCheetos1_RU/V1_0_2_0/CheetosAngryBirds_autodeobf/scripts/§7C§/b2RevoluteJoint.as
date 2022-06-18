package §7C§
{
   import §&!+§.b2Mat22;
   import §&!+§.b2Mat33;
   import §&!+§.b2Math;
   import §&!+§.b2Vec2;
   import §&!+§.b2Vec3;
   import §4!&§.b2Body;
   import §4!&§.b2TimeStep;
   import §8!%§.b2Settings;
   import §8!%§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §6!O§:b2Vec2 = new b2Vec2();
       
      
      private var §!n§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §]!9§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §[!8§:b2Vec3;
      
      private var §7!>§:Number;
      
      private var §[`§:b2Mat33;
      
      private var §9W§:Number;
      
      private var §!!;§:Boolean;
      
      private var §'!8§:Number;
      
      private var §;H§:Number;
      
      private var §"M§:Boolean;
      
      private var §9[§:Number;
      
      private var §!w§:Number;
      
      private var §!!`§:Number;
      
      private var §@w§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§!n§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§]!9§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§[!8§ = new b2Vec3();
         this.§[`§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§,!K§);
         this.m_localAnchor2.SetV(param1.§[!5§);
         this.§9[§ = param1.§^!Y§;
         this.§[!8§.§8Q§();
         this.§7!>§ = 0;
         this.§!w§ = param1.§!g§;
         this.§!!`§ = param1.§,v§;
         this.§'!8§ = param1.§]f§;
         this.§;H§ = param1.motorSpeed;
         this.§"M§ = param1.§2!'§;
         this.§!!;§ = param1.§&!>§;
         this.§@w§ = b2internal::+!2;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::@6.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[L.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[!8§.x,param1 * this.§[!8§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§[!8§.z;
      }
      
      public function §#k§() : Number
      {
         return b2internal::[L.m_sweep.a - b2internal::@6.m_sweep.a - this.§9[§;
      }
      
      public function §6!,§() : Number
      {
         return b2internal::[L.m_angularVelocity - b2internal::@6.m_angularVelocity;
      }
      
      public function §1F§() : Boolean
      {
         return this.§"M§;
      }
      
      public function §"![§(param1:Boolean) : void
      {
         this.§"M§ = param1;
      }
      
      public function §0X§() : Number
      {
         return this.§!w§;
      }
      
      public function §;F§() : Number
      {
         return this.§!!`§;
      }
      
      public function §9a§(param1:Number, param2:Number) : void
      {
         this.§!w§ = param1;
         this.§!!`§ = param2;
      }
      
      public function §6X§() : Boolean
      {
         b2internal::@6.SetAwake(true);
         b2internal::[L.SetAwake(true);
         return this.§!!;§;
      }
      
      public function §>N§(param1:Boolean) : void
      {
         this.§!!;§ = param1;
      }
      
      public function §8F§(param1:Number) : void
      {
         b2internal::@6.SetAwake(true);
         b2internal::[L.SetAwake(true);
         this.§;H§ = param1;
      }
      
      public function §0s§() : Number
      {
         return this.§;H§;
      }
      
      public function §!]§(param1:Number) : void
      {
         this.§'!8§ = param1;
      }
      
      public function §5b§() : Number
      {
         return this.§'!8§;
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
         _loc2_ = b2internal::@6;
         _loc3_ = b2internal::[L;
         if(this.§!!;§ || this.§"M§)
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
         var _loc10_:Number = _loc2_.§=!P§;
         var _loc11_:Number = _loc3_.§=!P§;
         var _loc12_:Number = _loc2_.§`!6§;
         var _loc13_:Number = _loc3_.§`!6§;
         this.§[`§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§[`§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§[`§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§[`§.col1.y = this.§[`§.col2.x;
         this.§[`§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§[`§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§[`§.col1.z = this.§[`§.col3.x;
         this.§[`§.col2.z = this.§[`§.col3.y;
         this.§[`§.col3.z = _loc12_ + _loc13_;
         this.§9W§ = 1 / (_loc12_ + _loc13_);
         if(this.§!!;§ == false)
         {
            this.§7!>§ = 0;
         }
         if(this.§"M§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§9[§;
            if(b2Math.§+Q§(this.§!!`§ - this.§!w§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§@w§ = b2internal::5a;
            }
            else if(_loc14_ <= this.§!w§)
            {
               if(this.§@w§ != b2internal::=D)
               {
                  this.§[!8§.z = 0;
               }
               this.§@w§ = b2internal::=D;
            }
            else if(_loc14_ >= this.§!!`§)
            {
               if(this.§@w§ != b2internal::;!-)
               {
                  this.§[!8§.z = 0;
               }
               this.§@w§ = b2internal::;!-;
            }
            else
            {
               this.§@w§ = b2internal::+!2;
               this.§[!8§.z = 0;
            }
         }
         else
         {
            this.§@w§ = b2internal::+!2;
         }
         if(param1.§3j§)
         {
            this.§[!8§.x *= param1.§'7§;
            this.§[!8§.y *= param1.§'7§;
            this.§7!>§ *= param1.§'7§;
            _loc15_ = this.§[!8§.x;
            _loc16_ = this.§[!8§.y;
            _loc2_.§5+§.x -= _loc10_ * _loc15_;
            _loc2_.§5+§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§7!>§ + this.§[!8§.z);
            _loc3_.§5+§.x += _loc11_ * _loc15_;
            _loc3_.§5+§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§7!>§ + this.§[!8§.z);
         }
         else
         {
            this.§[!8§.§8Q§();
            this.§7!>§ = 0;
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
         var _loc2_:b2Body = b2internal::@6;
         var _loc3_:b2Body = b2internal::[L;
         var _loc11_:b2Vec2 = _loc2_.§5+§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§5+§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§=!P§;
         var _loc16_:Number = _loc3_.§=!P§;
         var _loc17_:Number = _loc2_.§`!6§;
         var _loc18_:Number = _loc3_.§`!6§;
         if(this.§!!;§ && this.§@w§ != b2internal::5a)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§;H§;
            _loc20_ = this.§9W§ * -_loc19_;
            _loc21_ = this.§7!>§;
            _loc22_ = param1.§2!2§ * this.§'!8§;
            this.§7!>§ = b2Math.§5!%§(this.§7!>§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§7!>§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§"M§ && this.§@w§ != b2internal::+!2)
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
            this.§[`§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§@w§ == b2internal::5a)
            {
               this.§[!8§.§#H§(this.impulse3);
            }
            else if(this.§@w§ == b2internal::=D)
            {
               if((_loc6_ = this.§[!8§.z + this.impulse3.z) < 0)
               {
                  this.§[`§.Solve22(this.§]!9§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§]!9§.x;
                  this.impulse3.y = this.§]!9§.y;
                  this.impulse3.z = -this.§[!8§.z;
                  this.§[!8§.x += this.§]!9§.x;
                  this.§[!8§.y += this.§]!9§.y;
                  this.§[!8§.z = 0;
               }
            }
            else if(this.§@w§ == b2internal::;!-)
            {
               if((_loc6_ = this.§[!8§.z + this.impulse3.z) > 0)
               {
                  this.§[`§.Solve22(this.§]!9§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§]!9§.x;
                  this.impulse3.y = this.§]!9§.y;
                  this.impulse3.z = -this.§[!8§.z;
                  this.§[!8§.x += this.§]!9§.x;
                  this.§[!8§.y += this.§]!9§.y;
                  this.§[!8§.z = 0;
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
            this.§[`§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§[!8§.x += this.impulse2.x;
            this.§[!8§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§5+§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§5+§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::@6;
         var _loc6_:b2Body = b2internal::[L;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§"M§ && this.§@w§ != b2internal::+!2)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§9[§;
            _loc26_ = 0;
            if(this.§@w§ == b2internal::5a)
            {
               _loc3_ = b2Math.§5!%§(_loc25_ - this.§!w§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§9W§ * _loc3_;
               _loc7_ = b2Math.§+Q§(_loc3_);
            }
            else if(this.§@w§ == b2internal::=D)
            {
               _loc3_ = _loc25_ - this.§!w§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§5!%§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§9W§ * _loc3_;
            }
            else if(this.§@w§ == b2internal::;!-)
            {
               _loc3_ = _loc25_ - this.§!!`§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§5!%§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§9W§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§`!6§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§`!6§ * _loc26_;
            _loc5_.§@d§();
            _loc6_.§@d§();
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
         var _loc20_:Number = _loc5_.§=!P§;
         var _loc21_:Number = _loc6_.§=!P§;
         var _loc22_:Number = _loc5_.§`!6§;
         var _loc23_:Number = _loc6_.§`!6§;
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
         this.§!n§.§2!7§(this.K1);
         this.§!n§.§1!^§(this.K2);
         this.§!n§.§1!^§(this.K3);
         this.§!n§.§#!E§(§6!O§,-_loc16_,-_loc17_);
         _loc10_ = §6!O§.x;
         _loc11_ = §6!O§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§=!P§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§=!P§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§`!6§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§=!P§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§=!P§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§`!6§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§@d§();
         _loc6_.§@d§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}

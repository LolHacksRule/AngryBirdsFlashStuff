package §_-Ox§
{
   import §_-9z§.b2Mat22;
   import §_-9z§.b2Mat33;
   import §_-9z§.b2Math;
   import §_-9z§.b2Vec2;
   import §_-9z§.b2Vec3;
   import §_-EH§.b2Body;
   import §_-EH§.b2TimeStep;
   import §_-sU§.b2Settings;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §_-df§:b2Vec2 = new b2Vec2();
       
      
      private var §_-Jy§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §_-9n§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §_-AM§:b2Vec3;
      
      private var §_-AH§:Number;
      
      private var §_-hE§:b2Mat33;
      
      private var §_-9y§:Number;
      
      private var §_-XK§:Boolean;
      
      private var §_-tl§:Number;
      
      private var §_-1C§:Number;
      
      private var §_-I4§:Boolean;
      
      private var §_-4p§:Number;
      
      private var §_-qO§:Number;
      
      private var §_-3R§:Number;
      
      private var §_-D9§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§_-Jy§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§_-9n§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-AM§ = new b2Vec3();
         this.§_-hE§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-7E§);
         this.m_localAnchor2.SetV(param1.§_-ID§);
         this.§_-4p§ = param1.§_-X-§;
         this.§_-AM§.§_-TJ§();
         this.§_-AH§ = 0;
         this.§_-qO§ = param1.§_-Rf§;
         this.§_-3R§ = param1.§_-aA§;
         this.§_-tl§ = param1.§_-mF§;
         this.§_-1C§ = param1.motorSpeed;
         this.§_-I4§ = param1.§_-UE§;
         this.§_-XK§ = param1.§_-i3§;
         this.§_-D9§ = b2internal::_-R1;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-e4.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-qA.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-AM§.x,param1 * this.§_-AM§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-AM§.z;
      }
      
      public function §_-5T§() : Number
      {
         return b2internal::_-qA.m_sweep.a - b2internal::_-e4.m_sweep.a - this.§_-4p§;
      }
      
      public function §_-WA§() : Number
      {
         return b2internal::_-qA.m_angularVelocity - b2internal::_-e4.m_angularVelocity;
      }
      
      public function §_-Sb§() : Boolean
      {
         return this.§_-I4§;
      }
      
      public function §_-jb§(param1:Boolean) : void
      {
         this.§_-I4§ = param1;
      }
      
      public function §_-0R§() : Number
      {
         return this.§_-qO§;
      }
      
      public function §_-ZU§() : Number
      {
         return this.§_-3R§;
      }
      
      public function §_-F4§(param1:Number, param2:Number) : void
      {
         this.§_-qO§ = param1;
         this.§_-3R§ = param2;
      }
      
      public function §_-uw§() : Boolean
      {
         b2internal::_-e4.SetAwake(true);
         b2internal::_-qA.SetAwake(true);
         return this.§_-XK§;
      }
      
      public function §_-8L§(param1:Boolean) : void
      {
         this.§_-XK§ = param1;
      }
      
      public function §_-mO§(param1:Number) : void
      {
         b2internal::_-e4.SetAwake(true);
         b2internal::_-qA.SetAwake(true);
         this.§_-1C§ = param1;
      }
      
      public function §_-7V§() : Number
      {
         return this.§_-1C§;
      }
      
      public function §_-cf§(param1:Number) : void
      {
         this.§_-tl§ = param1;
      }
      
      public function §_-qH§() : Number
      {
         return this.§_-tl§;
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
         _loc2_ = b2internal::_-e4;
         _loc3_ = b2internal::_-qA;
         if(this.§_-XK§ || this.§_-I4§)
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
         var _loc10_:Number = _loc2_.§_-dH§;
         var _loc11_:Number = _loc3_.§_-dH§;
         var _loc12_:Number = _loc2_.§_-sp§;
         var _loc13_:Number = _loc3_.§_-sp§;
         this.§_-hE§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-hE§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-hE§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-hE§.col1.y = this.§_-hE§.col2.x;
         this.§_-hE§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-hE§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-hE§.col1.z = this.§_-hE§.col3.x;
         this.§_-hE§.col2.z = this.§_-hE§.col3.y;
         this.§_-hE§.col3.z = _loc12_ + _loc13_;
         this.§_-9y§ = 1 / (_loc12_ + _loc13_);
         if(this.§_-XK§ == false)
         {
            this.§_-AH§ = 0;
         }
         if(this.§_-I4§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§_-4p§;
            if(b2Math.§_-Y9§(this.§_-3R§ - this.§_-qO§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§_-D9§ = b2internal::_-FL;
            }
            else if(_loc14_ <= this.§_-qO§)
            {
               if(this.§_-D9§ != b2internal::_-Pp)
               {
                  this.§_-AM§.z = 0;
               }
               this.§_-D9§ = b2internal::_-Pp;
            }
            else if(_loc14_ >= this.§_-3R§)
            {
               if(this.§_-D9§ != b2internal::_-HL)
               {
                  this.§_-AM§.z = 0;
               }
               this.§_-D9§ = b2internal::_-HL;
            }
            else
            {
               this.§_-D9§ = b2internal::_-R1;
               this.§_-AM§.z = 0;
            }
         }
         else
         {
            this.§_-D9§ = b2internal::_-R1;
         }
         if(param1.§_-lZ§)
         {
            this.§_-AM§.x *= param1.§_-Xs§;
            this.§_-AM§.y *= param1.§_-Xs§;
            this.§_-AH§ *= param1.§_-Xs§;
            _loc15_ = this.§_-AM§.x;
            _loc16_ = this.§_-AM§.y;
            _loc2_.§_-wk§.x -= _loc10_ * _loc15_;
            _loc2_.§_-wk§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§_-AH§ + this.§_-AM§.z);
            _loc3_.§_-wk§.x += _loc11_ * _loc15_;
            _loc3_.§_-wk§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§_-AH§ + this.§_-AM§.z);
         }
         else
         {
            this.§_-AM§.§_-TJ§();
            this.§_-AH§ = 0;
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
         var _loc2_:b2Body = b2internal::_-e4;
         var _loc3_:b2Body = b2internal::_-qA;
         var _loc11_:b2Vec2 = _loc2_.§_-wk§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§_-wk§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§_-dH§;
         var _loc16_:Number = _loc3_.§_-dH§;
         var _loc17_:Number = _loc2_.§_-sp§;
         var _loc18_:Number = _loc3_.§_-sp§;
         if(this.§_-XK§ && this.§_-D9§ != b2internal::_-FL)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§_-1C§;
            _loc20_ = this.§_-9y§ * -_loc19_;
            _loc21_ = this.§_-AH§;
            _loc22_ = param1.§_-pG§ * this.§_-tl§;
            this.§_-AH§ = b2Math.§_-5a§(this.§_-AH§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§_-AH§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§_-I4§ && this.§_-D9§ != b2internal::_-R1)
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
            this.§_-hE§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§_-D9§ == b2internal::_-FL)
            {
               this.§_-AM§.§_-3a§(this.impulse3);
            }
            else if(this.§_-D9§ == b2internal::_-Pp)
            {
               if((_loc6_ = this.§_-AM§.z + this.impulse3.z) < 0)
               {
                  this.§_-hE§.Solve22(this.§_-9n§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-9n§.x;
                  this.impulse3.y = this.§_-9n§.y;
                  this.impulse3.z = -this.§_-AM§.z;
                  this.§_-AM§.x += this.§_-9n§.x;
                  this.§_-AM§.y += this.§_-9n§.y;
                  this.§_-AM§.z = 0;
               }
            }
            else if(this.§_-D9§ == b2internal::_-HL)
            {
               if((_loc6_ = this.§_-AM§.z + this.impulse3.z) > 0)
               {
                  this.§_-hE§.Solve22(this.§_-9n§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-9n§.x;
                  this.impulse3.y = this.§_-9n§.y;
                  this.impulse3.z = -this.§_-AM§.z;
                  this.§_-AM§.x += this.§_-9n§.x;
                  this.§_-AM§.y += this.§_-9n§.y;
                  this.§_-AM§.z = 0;
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
            this.§_-hE§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§_-AM§.x += this.impulse2.x;
            this.§_-AM§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§_-wk§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§_-wk§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::_-e4;
         var _loc6_:b2Body = b2internal::_-qA;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§_-I4§ && this.§_-D9§ != b2internal::_-R1)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§_-4p§;
            _loc26_ = 0;
            if(this.§_-D9§ == b2internal::_-FL)
            {
               _loc3_ = b2Math.§_-5a§(_loc25_ - this.§_-qO§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-9y§ * _loc3_;
               _loc7_ = b2Math.§_-Y9§(_loc3_);
            }
            else if(this.§_-D9§ == b2internal::_-Pp)
            {
               _loc3_ = _loc25_ - this.§_-qO§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§_-5a§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§_-9y§ * _loc3_;
            }
            else if(this.§_-D9§ == b2internal::_-HL)
            {
               _loc3_ = _loc25_ - this.§_-3R§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§_-5a§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-9y§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§_-sp§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§_-sp§ * _loc26_;
            _loc5_.§_-dS§();
            _loc6_.§_-dS§();
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
         var _loc20_:Number = _loc5_.§_-dH§;
         var _loc21_:Number = _loc6_.§_-dH§;
         var _loc22_:Number = _loc5_.§_-sp§;
         var _loc23_:Number = _loc6_.§_-sp§;
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
         this.§_-Jy§.§_-5m§(this.K1);
         this.§_-Jy§.§_-qQ§(this.K2);
         this.§_-Jy§.§_-qQ§(this.K3);
         this.§_-Jy§.§_-5z§(§_-df§,-_loc16_,-_loc17_);
         _loc10_ = §_-df§.x;
         _loc11_ = §_-df§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§_-dH§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§_-dH§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§_-sp§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§_-dH§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§_-dH§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§_-sp§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§_-dS§();
         _loc6_.§_-dS§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}

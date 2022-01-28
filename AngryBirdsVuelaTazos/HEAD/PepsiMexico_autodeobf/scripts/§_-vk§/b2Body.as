package §_-vk§
{
   import §_-Pu§.b2EdgeShape;
   import §_-Pu§.b2MassData;
   import §_-Pu§.b2Shape;
   import §_-bA§.b2Mat22;
   import §_-bA§.b2Math;
   import §_-bA§.b2Sweep;
   import §_-bA§.b2Transform;
   import §_-bA§.b2Vec2;
   import §_-l7§.b2Contact;
   import §_-l7§.b2ContactEdge;
   import §_-mg§.§_-Y0§;
   import §_-rz§.b2Settings;
   import §_-rz§.b2internal;
   import §_-we§.b2ControllerEdge;
   import §_-zP§.b2JointEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §_-yl§:b2Transform = new b2Transform();
      
      b2internal static var §_-N2§:uint = 1;
      
      b2internal static var §_-O2§:uint = 2;
      
      b2internal static var §_-r2§:uint = 4;
      
      b2internal static var §_-HH§:uint = 8;
      
      b2internal static var §_-Eg§:uint = 16;
      
      b2internal static var §_-bk§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §_-xk§:uint;
      
      b2internal var §_-Ra§:int;
      
      b2internal var §_-Jt§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §_-At§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §_-Zr§:b2Vec2;
      
      b2internal var §_-O8§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §_-Fg§:b2Body;
      
      b2internal var §_-np§:b2Body;
      
      b2internal var §_-qj§:b2Fixture;
      
      b2internal var §_-j7§:int;
      
      b2internal var §_-lO§:b2ControllerEdge;
      
      b2internal var §_-T9§:int;
      
      b2internal var §_-Wy§:b2JointEdge;
      
      b2internal var §_-L3§:b2ContactEdge;
      
      b2internal var §_-aR§:Number;
      
      b2internal var §_-Wd§:Number;
      
      b2internal var §_-OK§:Number;
      
      b2internal var §_-Ox§:Number;
      
      b2internal var §_-N1§:Number;
      
      b2internal var §_-mp§:Number;
      
      b2internal var §_-QW§:Number;
      
      b2internal var §_-tN§:Number;
      
      private var §_-84§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§_-At§ = new b2Vec2();
         this.§_-Zr§ = new b2Vec2();
         super();
         this.§_-xk§ = 0;
         if(param1.§_-b0§)
         {
            this.§_-xk§ |= b2internal::_-HH;
         }
         if(param1.§_-R7§)
         {
            this.§_-xk§ |= b2internal::_-Eg;
         }
         if(param1.§_-kL§)
         {
            this.§_-xk§ |= b2internal::_-r2;
         }
         if(param1.§_-A8§)
         {
            this.§_-xk§ |= b2internal::_-O2;
         }
         if(param1.§_-yn§)
         {
            this.§_-xk§ |= b2internal::_-bk;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§_-qi§();
         this.m_sweep.§_-QQ§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.§_-Zh§.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.§_-Zh§.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.§_-Zh§.x += this.m_xf.position.x;
         this.m_sweep.§_-Zh§.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.§_-Zh§);
         this.§_-Wy§ = null;
         this.§_-lO§ = null;
         this.§_-L3§ = null;
         this.§_-T9§ = 0;
         this.§_-Fg§ = null;
         this.§_-np§ = null;
         this.§_-At§.SetV(param1.§_-xG§);
         this.m_angularVelocity = param1.§_-SW§;
         this.§_-mp§ = param1.§_-Yu§;
         this.§_-QW§ = param1.§_-0p§;
         this.§_-Zr§.Set(0,0);
         this.§_-O8§ = 0;
         this.§_-tN§ = 0;
         this.§_-Ra§ = param1.type;
         if(this.§_-Ra§ == b2_dynamicBody)
         {
            this.§_-aR§ = 1;
            this.§_-Wd§ = 1;
         }
         else
         {
            this.§_-aR§ = 0;
            this.§_-Wd§ = 0;
         }
         this.§_-OK§ = 0;
         this.§_-Ox§ = 0;
         this.§_-N1§ = param1.§_-e4§;
         this.§_-84§ = param1.§_-nF§;
         this.§_-qj§ = null;
         this.§_-j7§ = 0;
      }
      
      private function §_-6g§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§_-QU§().y,param2.§_-QU§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§_-aa§(_loc5_,param2.§_-QU§());
         _loc6_ = b2Math.§_-2E§(_loc6_,param2.§_-vX§());
         _loc6_ = b2Math.§_-aa§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§_-PQ§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§_-PQ§(param1.§_-QU§(),param2.§_-QU§())).Normalize();
         var _loc8_:* = b2Math.§_-Ve§(param1.§_-QU§(),param2.§_-vX§()) > 0;
         param1.§_-YR§(param2,_loc6_,_loc7_,_loc8_);
         param2.§_-N7§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §_-09§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§_-Y0§ = null;
         if(this.m_world.§_-kC§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§_-gE§(this,this.m_xf,param1);
         if(this.§_-xk§ & b2internal::_-bk)
         {
            _loc3_ = this.m_world.§_-OW§.§_-qO§;
            _loc2_.§_-Nl§(_loc3_,this.m_xf);
         }
         _loc2_.§_-np§ = this.§_-qj§;
         this.§_-qj§ = _loc2_;
         ++this.§_-j7§;
         _loc2_.m_body = this;
         if(_loc2_.§_-JU§ > 0)
         {
            this.§_-So§();
         }
         this.m_world.§_-xk§ |= b2World.§_-BX§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§_-09§(_loc3_);
      }
      
      public function §_-m2§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§_-Y0§ = null;
         if(this.m_world.§_-kC§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§_-qj§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§_-np§ = param1.§_-np§;
               }
               else
               {
                  this.§_-qj§ = param1.§_-np§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§_-np§;
         }
         var _loc5_:b2ContactEdge = this.§_-L3§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§_-AG§;
            _loc5_ = _loc5_.§_-PP§;
            _loc7_ = _loc6_.§_-bX§();
            _loc8_ = _loc6_.§_-sy§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§_-OW§.§_-6A§(_loc6_);
            }
         }
         if(this.§_-xk§ & b2internal::_-bk)
         {
            _loc9_ = this.m_world.§_-OW§.§_-qO§;
            param1.§_-Xm§(_loc9_);
         }
         param1.§_-6A§();
         param1.m_body = null;
         param1.§_-np§ = null;
         --this.§_-j7§;
         this.§_-So§();
      }
      
      public function §_-ZR§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§_-kC§() == true)
         {
            return;
         }
         this.m_xf.R.Set(param2);
         this.m_xf.position.SetV(param1);
         var _loc4_:b2Mat22 = this.m_xf.R;
         var _loc5_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.§_-Zh§.x = _loc4_.col1.x * _loc5_.x + _loc4_.col2.x * _loc5_.y;
         this.m_sweep.§_-Zh§.y = _loc4_.col1.y * _loc5_.x + _loc4_.col2.y * _loc5_.y;
         this.m_sweep.§_-Zh§.x += this.m_xf.position.x;
         this.m_sweep.§_-Zh§.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.§_-Zh§);
         this.m_sweep.a0 = this.m_sweep.a = param2;
         var _loc6_:§_-Y0§ = this.m_world.§_-OW§.§_-qO§;
         _loc3_ = this.§_-qj§;
         while(_loc3_)
         {
            _loc3_.§_-XH§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§_-np§;
         }
         this.m_world.§_-OW§.§_-Bk§();
      }
      
      public function §_-q9§(param1:b2Transform) : void
      {
         this.§_-ZR§(param1.position,param1.GetAngle());
      }
      
      public function §_-ow§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §_-GC§(param1:b2Vec2) : void
      {
         this.§_-ZR§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §_-Cx§(param1:Number) : void
      {
         this.§_-ZR§(this.GetPosition(),param1);
      }
      
      public function §_-GX§() : b2Vec2
      {
         return this.m_sweep.§_-Zh§;
      }
      
      public function §_-he§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§_-Ra§ == b2_staticBody)
         {
            return;
         }
         this.§_-At§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§_-At§;
      }
      
      public function §_-6i§(param1:Number) : void
      {
         if(this.§_-Ra§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §_-A3§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§_-Wx§();
         _loc1_.§_-kL§ = (this.§_-xk§ & b2internal::_-r2) == b2internal::_-r2;
         _loc1_.angle = this.GetAngle();
         _loc1_.§_-0p§ = this.§_-QW§;
         _loc1_.§_-SW§ = this.m_angularVelocity;
         _loc1_.§_-R7§ = (this.§_-xk§ & b2internal::_-Eg) == b2internal::_-Eg;
         _loc1_.§_-b0§ = (this.§_-xk§ & b2internal::_-HH) == b2internal::_-HH;
         _loc1_.§_-A8§ = (this.§_-xk§ & b2internal::_-O2) == b2internal::_-O2;
         _loc1_.§_-Yu§ = this.§_-mp§;
         _loc1_.§_-xG§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§_-nF§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §_-pv§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-Ra§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-Zr§.x += param1.x;
         this.§_-Zr§.y += param1.y;
         this.§_-O8§ += (param2.x - this.m_sweep.§_-Zh§.x) * param1.y - (param2.y - this.m_sweep.§_-Zh§.y) * param1.x;
      }
      
      public function §_-kT§(param1:Number) : void
      {
         if(this.§_-Ra§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-O8§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-Ra§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-At§.x += this.§_-Wd§ * param1.x;
         this.§_-At§.y += this.§_-Wd§ * param1.y;
         this.m_angularVelocity += this.§_-Ox§ * ((param2.x - this.m_sweep.§_-Zh§.x) * param1.y - (param2.y - this.m_sweep.§_-Zh§.y) * param1.x);
      }
      
      public function §_-Mz§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§_-GX§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§_-6o§(this.§_-A3§());
         var _loc8_:b2Fixture = _loc5_.§_-qj§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§_-np§;
               if(_loc7_)
               {
                  _loc7_.§_-np§ = _loc13_;
               }
               else
               {
                  _loc5_.§_-qj§ = _loc13_;
               }
               --_loc5_.§_-j7§;
               _loc8_.§_-np§ = _loc6_.§_-qj§;
               _loc6_.§_-qj§ = _loc8_;
               ++_loc6_.§_-j7§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§_-np§;
            }
         }
         _loc5_.§_-So§();
         _loc6_.§_-So§();
         var _loc9_:b2Vec2 = _loc5_.§_-GX§();
         var _loc10_:b2Vec2 = _loc6_.§_-GX§();
         var _loc11_:b2Vec2 = b2Math.§_-PQ§(_loc2_,b2Math.§_-3k§(_loc3_,b2Math.§_-2E§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§_-PQ§(_loc2_,b2Math.§_-3k§(_loc3_,b2Math.§_-2E§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§_-6i§(_loc3_);
         _loc6_.§_-6i§(_loc3_);
         _loc5_.§_-DV§();
         _loc6_.§_-DV§();
         return _loc6_;
      }
      
      public function §_-Xl§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§_-qj§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§_-np§;
            --param1.§_-j7§;
            _loc2_.§_-np§ = this.§_-qj§;
            this.§_-qj§ = _loc2_;
            ++this.§_-j7§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§_-j7§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§_-GX§();
         var _loc6_:b2Vec2 = _loc4_.§_-GX§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§_-So§();
         this.§_-DV§();
      }
      
      public function GetMass() : Number
      {
         return this.§_-aR§;
      }
      
      public function §_-cl§() : Number
      {
         return this.§_-OK§;
      }
      
      public function §_-XY§(param1:b2MassData) : void
      {
         param1.§_-Kn§ = this.§_-aR§;
         param1.§_-hW§ = this.§_-OK§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §_-Vf§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§_-kC§() == false);
         if(this.m_world.§_-kC§() == true)
         {
            return;
         }
         if(this.§_-Ra§ != b2_dynamicBody)
         {
            return;
         }
         this.§_-Wd§ = 0;
         this.§_-OK§ = 0;
         this.§_-Ox§ = 0;
         this.§_-aR§ = param1.§_-Kn§;
         if(this.§_-aR§ <= 0)
         {
            this.§_-aR§ = 1;
         }
         this.§_-Wd§ = 1 / this.§_-aR§;
         if(param1.§_-hW§ > 0 && (this.§_-xk§ & b2internal::_-Eg) == 0)
         {
            this.§_-OK§ = param1.§_-hW§ - this.§_-aR§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§_-Ox§ = 1 / this.§_-OK§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.§_-Zh§.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§_-av§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.§_-Zh§.SetV(this.m_sweep.c0);
         this.§_-At§.x += this.m_angularVelocity * -(this.m_sweep.§_-Zh§.y - _loc2_.y);
         this.§_-At§.y += this.m_angularVelocity * (this.m_sweep.§_-Zh§.x - _loc2_.x);
      }
      
      public function §_-So§() : void
      {
         var _loc4_:b2MassData = null;
         this.§_-aR§ = 0;
         this.§_-Wd§ = 0;
         this.§_-OK§ = 0;
         this.§_-Ox§ = 0;
         this.m_sweep.localCenter.§_-qi§();
         if(this.§_-Ra§ == b2_staticBody || this.§_-Ra§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§_-4N§(0,0);
         var _loc2_:b2Fixture = this.§_-qj§;
         while(_loc2_)
         {
            if(_loc2_.§_-JU§ != 0)
            {
               _loc4_ = _loc2_.§_-XY§();
               this.§_-aR§ += _loc4_.§_-Kn§;
               _loc1_.x += _loc4_.center.x * _loc4_.§_-Kn§;
               _loc1_.y += _loc4_.center.y * _loc4_.§_-Kn§;
               this.§_-OK§ += _loc4_.§_-hW§;
            }
            _loc2_ = _loc2_.§_-np§;
         }
         if(this.§_-aR§ > 0)
         {
            this.§_-Wd§ = 1 / this.§_-aR§;
            _loc1_.x *= this.§_-Wd§;
            _loc1_.y *= this.§_-Wd§;
         }
         else
         {
            this.§_-aR§ = 1;
            this.§_-Wd§ = 1;
         }
         if(this.§_-OK§ > 0 && (this.§_-xk§ & b2internal::_-Eg) == 0)
         {
            this.§_-OK§ -= this.§_-aR§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§_-OK§ *= this.§_-N1§;
            b2Settings.b2Assert(this.§_-OK§ > 0);
            this.§_-Ox§ = 1 / this.§_-OK§;
         }
         else
         {
            this.§_-OK§ = 0;
            this.§_-Ox§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.§_-Zh§.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§_-av§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.§_-Zh§.SetV(this.m_sweep.c0);
         this.§_-At§.x += this.m_angularVelocity * -(this.m_sweep.§_-Zh§.y - _loc3_.y);
         this.§_-At§.y += this.m_angularVelocity * (this.m_sweep.§_-Zh§.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §_-wt§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-7h§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-FB§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-D1§(this.m_xf.R,param1);
      }
      
      public function §_-fo§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§_-At§.x - this.m_angularVelocity * (param1.y - this.m_sweep.§_-Zh§.y),this.§_-At§.y + this.m_angularVelocity * (param1.x - this.m_sweep.§_-Zh§.x));
      }
      
      public function §_-n7§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§_-At§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.§_-Zh§.y),this.§_-At§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.§_-Zh§.x));
      }
      
      public function §_-Ik§() : Number
      {
         return this.§_-mp§;
      }
      
      public function §_-Z6§(param1:Number) : void
      {
         this.§_-mp§ = param1;
      }
      
      public function §_-RF§() : Number
      {
         return this.§_-QW§;
      }
      
      public function §_-u3§(param1:Number) : void
      {
         this.§_-QW§ = param1;
      }
      
      public function §_-Lu§(param1:uint) : void
      {
         if(this.§_-Ra§ == param1)
         {
            return;
         }
         this.§_-Ra§ = param1;
         this.§_-So§();
         if(this.§_-Ra§ == b2_staticBody)
         {
            this.§_-At§.§_-qi§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§_-Zr§.§_-qi§();
         this.§_-O8§ = 0;
         var _loc2_:b2ContactEdge = this.§_-L3§;
         while(_loc2_)
         {
            _loc2_.§_-AG§.§_-HV§();
            _loc2_ = _loc2_.§_-PP§;
         }
      }
      
      public function §_-Wx§() : uint
      {
         return this.§_-Ra§;
      }
      
      public function §true §(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-xk§ |= b2internal::_-HH;
         }
         else
         {
            this.§_-xk§ &= ~b2internal::_-HH;
         }
      }
      
      public function §_-3N§() : Boolean
      {
         return (this.§_-xk§ & b2internal::_-HH) == b2internal::_-HH;
      }
      
      public function §_-UI§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-xk§ |= b2internal::_-r2;
         }
         else
         {
            this.§_-xk§ &= ~b2internal::_-r2;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-xk§ |= b2internal::_-O2;
            this.§_-tN§ = 0;
         }
         else
         {
            this.§_-xk§ &= ~b2internal::_-O2;
            this.§_-tN§ = 0;
            this.§_-At§.§_-qi§();
            this.m_angularVelocity = 0;
            this.§_-Zr§.§_-qi§();
            this.§_-O8§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§_-xk§ & b2internal::_-O2) == b2internal::_-O2;
      }
      
      public function §_-6p§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-xk§ |= b2internal::_-Eg;
         }
         else
         {
            this.§_-xk§ &= ~b2internal::_-Eg;
         }
         this.§_-So§();
      }
      
      public function §_-eN§() : Boolean
      {
         return (this.§_-xk§ & b2internal::_-Eg) == b2internal::_-Eg;
      }
      
      public function §_-GL§(param1:Boolean) : void
      {
         var _loc2_:§_-Y0§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§_-B7§())
         {
            return;
         }
         if(param1)
         {
            this.§_-xk§ |= b2internal::_-bk;
            _loc2_ = this.m_world.§_-OW§.§_-qO§;
            _loc3_ = this.§_-qj§;
            while(_loc3_)
            {
               _loc3_.§_-Nl§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§_-np§;
            }
         }
         else
         {
            this.§_-xk§ &= ~b2internal::_-bk;
            _loc2_ = this.m_world.§_-OW§.§_-qO§;
            _loc3_ = this.§_-qj§;
            while(_loc3_)
            {
               _loc3_.§_-Xm§(_loc2_);
               _loc3_ = _loc3_.§_-np§;
            }
            _loc4_ = this.§_-L3§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§_-PP§;
               this.m_world.§_-OW§.§_-6A§(_loc5_.§_-AG§);
            }
            this.§_-L3§ = null;
         }
      }
      
      public function §_-B7§() : Boolean
      {
         return (this.§_-xk§ & b2internal::_-bk) == b2internal::_-bk;
      }
      
      public function §_-gJ§() : Boolean
      {
         return (this.§_-xk§ & b2internal::_-r2) == b2internal::_-r2;
      }
      
      public function §_-J1§() : b2Fixture
      {
         return this.§_-qj§;
      }
      
      public function §_-gN§() : b2JointEdge
      {
         return this.§_-Wy§;
      }
      
      public function §_-cF§() : b2ControllerEdge
      {
         return this.§_-lO§;
      }
      
      public function §_-ea§() : b2ContactEdge
      {
         return this.§_-L3§;
      }
      
      public function §_-9Y§() : b2Body
      {
         return this.§_-np§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-84§;
      }
      
      public function §_-EQ§(param1:*) : void
      {
         this.§_-84§ = param1;
      }
      
      public function §_-AD§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §_-DV§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §_-yl§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§_-Y0§ = this.m_world.§_-OW§.§_-qO§;
         _loc4_ = this.§_-qj§;
         while(_loc4_)
         {
            _loc4_.§_-XH§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§_-np§;
         }
      }
      
      b2internal function §_-I5§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.§_-Zh§.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.§_-Zh§.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §_-Wn§(param1:b2Body) : Boolean
      {
         if(this.§_-Ra§ != b2_dynamicBody && param1.§_-Ra§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§_-Wy§;
         while(_loc2_)
         {
            if(_loc2_.§_-uw§ == param1)
            {
               if(_loc2_.§_-o0§.§_-Pc§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§_-PP§;
         }
         return true;
      }
      
      b2internal function §_-Cd§(param1:Number) : void
      {
         this.m_sweep.§_-Cd§(param1);
         this.m_sweep.§_-Zh§.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§_-I5§();
      }
   }
}

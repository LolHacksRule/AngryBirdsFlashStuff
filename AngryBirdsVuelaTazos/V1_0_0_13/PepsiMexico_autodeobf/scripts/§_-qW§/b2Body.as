package §_-qW§
{
   import §_-2V§.b2Contact;
   import §_-2V§.b2ContactEdge;
   import §_-8i§.b2EdgeShape;
   import §_-8i§.b2MassData;
   import §_-8i§.b2Shape;
   import §_-SM§.b2Settings;
   import §_-SM§.b2internal;
   import §_-gy§.b2JointEdge;
   import §_-q4§.b2ControllerEdge;
   import §_-wZ§.§_-Of§;
   import §var§.b2Mat22;
   import §var§.b2Math;
   import §var§.b2Sweep;
   import §var§.b2Transform;
   import §var§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §_-lK§:b2Transform = new b2Transform();
      
      b2internal static var §_-CI§:uint = 1;
      
      b2internal static var §_-zC§:uint = 2;
      
      b2internal static var §_-oS§:uint = 4;
      
      b2internal static var §_-1W§:uint = 8;
      
      b2internal static var §_-p4§:uint = 16;
      
      b2internal static var §_-hh§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §_-X3§:uint;
      
      b2internal var §_-64§:int;
      
      b2internal var §_-TO§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §_-dS§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §_-hM§:b2Vec2;
      
      b2internal var §_-Yk§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §_-ft§:b2Body;
      
      b2internal var §_-4b§:b2Body;
      
      b2internal var §_-tg§:b2Fixture;
      
      b2internal var §_-Qw§:int;
      
      b2internal var §_-3d§:b2ControllerEdge;
      
      b2internal var §_-ag§:int;
      
      b2internal var §_-sD§:b2JointEdge;
      
      b2internal var §_-EI§:b2ContactEdge;
      
      b2internal var §_-wV§:Number;
      
      b2internal var §_-Af§:Number;
      
      b2internal var §_-5b§:Number;
      
      b2internal var §_-Yq§:Number;
      
      b2internal var §_-lR§:Number;
      
      b2internal var §_-KX§:Number;
      
      b2internal var §_-Cd§:Number;
      
      b2internal var §_-I7§:Number;
      
      private var §_-AC§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§_-dS§ = new b2Vec2();
         this.§_-hM§ = new b2Vec2();
         super();
         this.§_-X3§ = 0;
         if(param1.§_-Qf§)
         {
            this.§_-X3§ |= b2internal::_-1W;
         }
         if(param1.§_-RL§)
         {
            this.§_-X3§ |= b2internal::_-p4;
         }
         if(param1.§_-3L§)
         {
            this.§_-X3§ |= b2internal::_-oS;
         }
         if(param1.§_-3J§)
         {
            this.§_-X3§ |= b2internal::_-zC;
         }
         if(param1.§_-ci§)
         {
            this.§_-X3§ |= b2internal::_-hh;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§_-pR§();
         this.m_sweep.§_-EZ§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§_-sD§ = null;
         this.§_-3d§ = null;
         this.§_-EI§ = null;
         this.§_-ag§ = 0;
         this.§_-ft§ = null;
         this.§_-4b§ = null;
         this.§_-dS§.SetV(param1.§_-hu§);
         this.m_angularVelocity = param1.§_-KE§;
         this.§_-KX§ = param1.§throw§;
         this.§_-Cd§ = param1.§_-Ko§;
         this.§_-hM§.Set(0,0);
         this.§_-Yk§ = 0;
         this.§_-I7§ = 0;
         this.§_-64§ = param1.type;
         if(this.§_-64§ == b2_dynamicBody)
         {
            this.§_-wV§ = 1;
            this.§_-Af§ = 1;
         }
         else
         {
            this.§_-wV§ = 0;
            this.§_-Af§ = 0;
         }
         this.§_-5b§ = 0;
         this.§_-Yq§ = 0;
         this.§_-lR§ = param1.§_-H1§;
         this.§_-AC§ = param1.§_-mx§;
         this.§_-tg§ = null;
         this.§_-Qw§ = 0;
      }
      
      private function §_-XW§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§_-Hx§().y,param2.§_-Hx§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§_-MX§(_loc5_,param2.§_-Hx§());
         _loc6_ = b2Math.§_-MF§(_loc6_,param2.§_-ZX§());
         _loc6_ = b2Math.§_-MX§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§_-p9§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§_-p9§(param1.§_-Hx§(),param2.§_-Hx§())).Normalize();
         var _loc8_:* = b2Math.§_-WJ§(param1.§_-Hx§(),param2.§_-ZX§()) > 0;
         param1.§_-px§(param2,_loc6_,_loc7_,_loc8_);
         param2.§_-5t§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §_-fJ§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§_-Of§ = null;
         if(this.m_world.§_-Ky§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§_-0K§(this,this.m_xf,param1);
         if(this.§_-X3§ & b2internal::_-hh)
         {
            _loc3_ = this.m_world.§_-wl§.§_-XD§;
            _loc2_.§_-c6§(_loc3_,this.m_xf);
         }
         _loc2_.§_-4b§ = this.§_-tg§;
         this.§_-tg§ = _loc2_;
         ++this.§_-Qw§;
         _loc2_.m_body = this;
         if(_loc2_.§_-AO§ > 0)
         {
            this.§_-W9§();
         }
         this.m_world.§_-X3§ |= b2World.§_-2p§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§_-fJ§(_loc3_);
      }
      
      public function §_-PM§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§_-Of§ = null;
         if(this.m_world.§_-Ky§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§_-tg§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§_-4b§ = param1.§_-4b§;
               }
               else
               {
                  this.§_-tg§ = param1.§_-4b§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§_-4b§;
         }
         var _loc5_:b2ContactEdge = this.§_-EI§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§_-k9§;
            _loc5_ = _loc5_.§_-PT§;
            _loc7_ = _loc6_.§_-5M§();
            _loc8_ = _loc6_.§_-w4§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§_-wl§.§_-l6§(_loc6_);
            }
         }
         if(this.§_-X3§ & b2internal::_-hh)
         {
            _loc9_ = this.m_world.§_-wl§.§_-XD§;
            param1.§_-La§(_loc9_);
         }
         param1.§_-l6§();
         param1.m_body = null;
         param1.§_-4b§ = null;
         --this.§_-Qw§;
         this.§_-W9§();
      }
      
      public function §_-0J§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§_-Ky§() == true)
         {
            return;
         }
         this.m_xf.R.Set(param2);
         this.m_xf.position.SetV(param1);
         var _loc4_:b2Mat22 = this.m_xf.R;
         var _loc5_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc4_.col1.x * _loc5_.x + _loc4_.col2.x * _loc5_.y;
         this.m_sweep.c.y = _loc4_.col1.y * _loc5_.x + _loc4_.col2.y * _loc5_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.m_sweep.a0 = this.m_sweep.a = param2;
         var _loc6_:§_-Of§ = this.m_world.§_-wl§.§_-XD§;
         _loc3_ = this.§_-tg§;
         while(_loc3_)
         {
            _loc3_.§_-XR§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§_-4b§;
         }
         this.m_world.§_-wl§.§_-zU§();
      }
      
      public function §_-94§(param1:b2Transform) : void
      {
         this.§_-0J§(param1.position,param1.GetAngle());
      }
      
      public function §_-tx§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §_-Ta§(param1:b2Vec2) : void
      {
         this.§_-0J§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §_-I-§(param1:Number) : void
      {
         this.§_-0J§(this.GetPosition(),param1);
      }
      
      public function §_-b2§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §_-kA§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§_-64§ == b2_staticBody)
         {
            return;
         }
         this.§_-dS§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§_-dS§;
      }
      
      public function §_-o-§(param1:Number) : void
      {
         if(this.§_-64§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §_-Ev§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§_-kK§();
         _loc1_.§_-3L§ = (this.§_-X3§ & b2internal::_-oS) == b2internal::_-oS;
         _loc1_.angle = this.GetAngle();
         _loc1_.§_-Ko§ = this.§_-Cd§;
         _loc1_.§_-KE§ = this.m_angularVelocity;
         _loc1_.§_-RL§ = (this.§_-X3§ & b2internal::_-p4) == b2internal::_-p4;
         _loc1_.§_-Qf§ = (this.§_-X3§ & b2internal::_-1W) == b2internal::_-1W;
         _loc1_.§_-3J§ = (this.§_-X3§ & b2internal::_-zC) == b2internal::_-zC;
         _loc1_.§throw§ = this.§_-KX§;
         _loc1_.§_-hu§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§_-mx§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §_-GJ§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-64§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-hM§.x += param1.x;
         this.§_-hM§.y += param1.y;
         this.§_-Yk§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §_-Vn§(param1:Number) : void
      {
         if(this.§_-64§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-Yk§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-64§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-dS§.x += this.§_-Af§ * param1.x;
         this.§_-dS§.y += this.§_-Af§ * param1.y;
         this.m_angularVelocity += this.§_-Yq§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §_-i§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§_-b2§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§_-ji§(this.§_-Ev§());
         var _loc8_:b2Fixture = _loc5_.§_-tg§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§_-4b§;
               if(_loc7_)
               {
                  _loc7_.§_-4b§ = _loc13_;
               }
               else
               {
                  _loc5_.§_-tg§ = _loc13_;
               }
               --_loc5_.§_-Qw§;
               _loc8_.§_-4b§ = _loc6_.§_-tg§;
               _loc6_.§_-tg§ = _loc8_;
               ++_loc6_.§_-Qw§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§_-4b§;
            }
         }
         _loc5_.§_-W9§();
         _loc6_.§_-W9§();
         var _loc9_:b2Vec2 = _loc5_.§_-b2§();
         var _loc10_:b2Vec2 = _loc6_.§_-b2§();
         var _loc11_:b2Vec2 = b2Math.§_-p9§(_loc2_,b2Math.§_-mn§(_loc3_,b2Math.§_-MF§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§_-p9§(_loc2_,b2Math.§_-mn§(_loc3_,b2Math.§_-MF§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§_-o-§(_loc3_);
         _loc6_.§_-o-§(_loc3_);
         _loc5_.§_-g0§();
         _loc6_.§_-g0§();
         return _loc6_;
      }
      
      public function §_-df§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§_-tg§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§_-4b§;
            --param1.§_-Qw§;
            _loc2_.§_-4b§ = this.§_-tg§;
            this.§_-tg§ = _loc2_;
            ++this.§_-Qw§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§_-Qw§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§_-b2§();
         var _loc6_:b2Vec2 = _loc4_.§_-b2§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§_-W9§();
         this.§_-g0§();
      }
      
      public function GetMass() : Number
      {
         return this.§_-wV§;
      }
      
      public function §_-aV§() : Number
      {
         return this.§_-5b§;
      }
      
      public function §_-A3§(param1:b2MassData) : void
      {
         param1.§_-UE§ = this.§_-wV§;
         param1.§_-tB§ = this.§_-5b§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §_-Jb§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§_-Ky§() == false);
         if(this.m_world.§_-Ky§() == true)
         {
            return;
         }
         if(this.§_-64§ != b2_dynamicBody)
         {
            return;
         }
         this.§_-Af§ = 0;
         this.§_-5b§ = 0;
         this.§_-Yq§ = 0;
         this.§_-wV§ = param1.§_-UE§;
         if(this.§_-wV§ <= 0)
         {
            this.§_-wV§ = 1;
         }
         this.§_-Af§ = 1 / this.§_-wV§;
         if(param1.§_-tB§ > 0 && (this.§_-X3§ & b2internal::_-p4) == 0)
         {
            this.§_-5b§ = param1.§_-tB§ - this.§_-wV§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§_-Yq§ = 1 / this.§_-5b§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§_-ei§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§_-dS§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§_-dS§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §_-W9§() : void
      {
         var _loc4_:b2MassData = null;
         this.§_-wV§ = 0;
         this.§_-Af§ = 0;
         this.§_-5b§ = 0;
         this.§_-Yq§ = 0;
         this.m_sweep.localCenter.§_-pR§();
         if(this.§_-64§ == b2_staticBody || this.§_-64§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§_-jw§(0,0);
         var _loc2_:b2Fixture = this.§_-tg§;
         while(_loc2_)
         {
            if(_loc2_.§_-AO§ != 0)
            {
               _loc4_ = _loc2_.§_-A3§();
               this.§_-wV§ += _loc4_.§_-UE§;
               _loc1_.x += _loc4_.center.x * _loc4_.§_-UE§;
               _loc1_.y += _loc4_.center.y * _loc4_.§_-UE§;
               this.§_-5b§ += _loc4_.§_-tB§;
            }
            _loc2_ = _loc2_.§_-4b§;
         }
         if(this.§_-wV§ > 0)
         {
            this.§_-Af§ = 1 / this.§_-wV§;
            _loc1_.x *= this.§_-Af§;
            _loc1_.y *= this.§_-Af§;
         }
         else
         {
            this.§_-wV§ = 1;
            this.§_-Af§ = 1;
         }
         if(this.§_-5b§ > 0 && (this.§_-X3§ & b2internal::_-p4) == 0)
         {
            this.§_-5b§ -= this.§_-wV§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§_-5b§ *= this.§_-lR§;
            b2Settings.b2Assert(this.§_-5b§ > 0);
            this.§_-Yq§ = 1 / this.§_-5b§;
         }
         else
         {
            this.§_-5b§ = 0;
            this.§_-Yq§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§_-ei§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§_-dS§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§_-dS§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §_-iS§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-hb§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-4T§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-IL§(this.m_xf.R,param1);
      }
      
      public function §_-pZ§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§_-dS§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§_-dS§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §_-pu§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§_-dS§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§_-dS§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §_-Zc§() : Number
      {
         return this.§_-KX§;
      }
      
      public function §_-Bc§(param1:Number) : void
      {
         this.§_-KX§ = param1;
      }
      
      public function §_-B5§() : Number
      {
         return this.§_-Cd§;
      }
      
      public function §_-N§(param1:Number) : void
      {
         this.§_-Cd§ = param1;
      }
      
      public function §_-xK§(param1:uint) : void
      {
         if(this.§_-64§ == param1)
         {
            return;
         }
         this.§_-64§ = param1;
         this.§_-W9§();
         if(this.§_-64§ == b2_staticBody)
         {
            this.§_-dS§.§_-pR§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§_-hM§.§_-pR§();
         this.§_-Yk§ = 0;
         var _loc2_:b2ContactEdge = this.§_-EI§;
         while(_loc2_)
         {
            _loc2_.§_-k9§.§_-KG§();
            _loc2_ = _loc2_.§_-PT§;
         }
      }
      
      public function §_-kK§() : uint
      {
         return this.§_-64§;
      }
      
      public function §_-yd§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-X3§ |= b2internal::_-1W;
         }
         else
         {
            this.§_-X3§ &= ~b2internal::_-1W;
         }
      }
      
      public function §_-tD§() : Boolean
      {
         return (this.§_-X3§ & b2internal::_-1W) == b2internal::_-1W;
      }
      
      public function §_-Is§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-X3§ |= b2internal::_-oS;
         }
         else
         {
            this.§_-X3§ &= ~b2internal::_-oS;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-X3§ |= b2internal::_-zC;
            this.§_-I7§ = 0;
         }
         else
         {
            this.§_-X3§ &= ~b2internal::_-zC;
            this.§_-I7§ = 0;
            this.§_-dS§.§_-pR§();
            this.m_angularVelocity = 0;
            this.§_-hM§.§_-pR§();
            this.§_-Yk§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§_-X3§ & b2internal::_-zC) == b2internal::_-zC;
      }
      
      public function §_-KP§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-X3§ |= b2internal::_-p4;
         }
         else
         {
            this.§_-X3§ &= ~b2internal::_-p4;
         }
         this.§_-W9§();
      }
      
      public function static() : Boolean
      {
         return (this.§_-X3§ & b2internal::_-p4) == b2internal::_-p4;
      }
      
      public function §_-Fh§(param1:Boolean) : void
      {
         var _loc2_:§_-Of§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§_-O8§())
         {
            return;
         }
         if(param1)
         {
            this.§_-X3§ |= b2internal::_-hh;
            _loc2_ = this.m_world.§_-wl§.§_-XD§;
            _loc3_ = this.§_-tg§;
            while(_loc3_)
            {
               _loc3_.§_-c6§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§_-4b§;
            }
         }
         else
         {
            this.§_-X3§ &= ~b2internal::_-hh;
            _loc2_ = this.m_world.§_-wl§.§_-XD§;
            _loc3_ = this.§_-tg§;
            while(_loc3_)
            {
               _loc3_.§_-La§(_loc2_);
               _loc3_ = _loc3_.§_-4b§;
            }
            _loc4_ = this.§_-EI§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§_-PT§;
               this.m_world.§_-wl§.§_-l6§(_loc5_.§_-k9§);
            }
            this.§_-EI§ = null;
         }
      }
      
      public function §_-O8§() : Boolean
      {
         return (this.§_-X3§ & b2internal::_-hh) == b2internal::_-hh;
      }
      
      public function §_-rW§() : Boolean
      {
         return (this.§_-X3§ & b2internal::_-oS) == b2internal::_-oS;
      }
      
      public function §_-oR§() : b2Fixture
      {
         return this.§_-tg§;
      }
      
      public function §_-IT§() : b2JointEdge
      {
         return this.§_-sD§;
      }
      
      public function §_-r0§() : b2ControllerEdge
      {
         return this.§_-3d§;
      }
      
      public function §_-VA§() : b2ContactEdge
      {
         return this.§_-EI§;
      }
      
      public function §_-lA§() : b2Body
      {
         return this.§_-4b§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-AC§;
      }
      
      public function §_-WN§(param1:*) : void
      {
         this.§_-AC§ = param1;
      }
      
      public function §_-dV§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §_-g0§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §_-lK§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§_-Of§ = this.m_world.§_-wl§.§_-XD§;
         _loc4_ = this.§_-tg§;
         while(_loc4_)
         {
            _loc4_.§_-XR§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§_-4b§;
         }
      }
      
      b2internal function §_-W0§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §_-ah§(param1:b2Body) : Boolean
      {
         if(this.§_-64§ != b2_dynamicBody && param1.§_-64§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§_-sD§;
         while(_loc2_)
         {
            if(_loc2_.§_-r7§ == param1)
            {
               if(_loc2_.§_-Ne§.§_-7I§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§_-PT§;
         }
         return true;
      }
      
      b2internal function §_-n6§(param1:Number) : void
      {
         this.m_sweep.§_-n6§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§_-W0§();
      }
   }
}

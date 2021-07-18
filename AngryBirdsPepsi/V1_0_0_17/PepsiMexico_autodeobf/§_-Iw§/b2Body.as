package §_-Iw§
{
   import §_-1N§.b2JointEdge;
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Sweep;
   import §_-Ja§.b2Transform;
   import §_-Ja§.b2Vec2;
   import §_-Kt§.b2EdgeShape;
   import §_-Kt§.b2MassData;
   import §_-Kt§.b2Shape;
   import §_-a5§.b2Contact;
   import §_-a5§.b2ContactEdge;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   import §_-ly§.b2ControllerEdge;
   import §_-qg§.§_-nW§;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §_-aO§:b2Transform = new b2Transform();
      
      b2internal static var §_-rW§:uint = 1;
      
      b2internal static var §_-Vk§:uint = 2;
      
      b2internal static var §_-Iv§:uint = 4;
      
      b2internal static var §_-gO§:uint = 8;
      
      b2internal static var §_-yC§:uint = 16;
      
      b2internal static var dynamic:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §_-Il§:uint;
      
      b2internal var §_-Sj§:int;
      
      b2internal var §_-ZU§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §_-ZZ§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §return§:b2Vec2;
      
      b2internal var §_-0C§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §_-VL§:b2Body;
      
      b2internal var §_-NA§:b2Body;
      
      b2internal var §_-EF§:b2Fixture;
      
      b2internal var §_-eR§:int;
      
      b2internal var §_-C2§:b2ControllerEdge;
      
      b2internal var §_-Tf§:int;
      
      b2internal var §_-Ry§:b2JointEdge;
      
      b2internal var §_-W1§:b2ContactEdge;
      
      b2internal var §_-jI§:Number;
      
      b2internal var §_-eZ§:Number;
      
      b2internal var §_-ry§:Number;
      
      b2internal var §_-DZ§:Number;
      
      b2internal var §_-Jm§:Number;
      
      b2internal var §_-rl§:Number;
      
      b2internal var §_-1p§:Number;
      
      b2internal var §_-5g§:Number;
      
      private var §_-OB§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§_-ZZ§ = new b2Vec2();
         this.§return§ = new b2Vec2();
         super();
         this.§_-Il§ = 0;
         if(param1.§_-eK§)
         {
            this.§_-Il§ |= b2internal::_-gO;
         }
         if(param1.§_-W2§)
         {
            this.§_-Il§ |= b2internal::_-yC;
         }
         if(param1.§_-J4§)
         {
            this.§_-Il§ |= b2internal::_-Iv;
         }
         if(param1.§_-MK§)
         {
            this.§_-Il§ |= b2internal::_-Vk;
         }
         if(param1.§_-TG§)
         {
            this.§_-Il§ |= b2internal::dynamic;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§_-0a§();
         this.m_sweep.§_-EG§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§_-Ry§ = null;
         this.§_-C2§ = null;
         this.§_-W1§ = null;
         this.§_-Tf§ = 0;
         this.§_-VL§ = null;
         this.§_-NA§ = null;
         this.§_-ZZ§.SetV(param1.§_-MI§);
         this.m_angularVelocity = param1.§_-P3§;
         this.§_-rl§ = param1.§_-pQ§;
         this.§_-1p§ = param1.§_-K5§;
         this.§return§.Set(0,0);
         this.§_-0C§ = 0;
         this.§_-5g§ = 0;
         this.§_-Sj§ = param1.type;
         if(this.§_-Sj§ == b2_dynamicBody)
         {
            this.§_-jI§ = 1;
            this.§_-eZ§ = 1;
         }
         else
         {
            this.§_-jI§ = 0;
            this.§_-eZ§ = 0;
         }
         this.§_-ry§ = 0;
         this.§_-DZ§ = 0;
         this.§_-Jm§ = param1.§_-S0§;
         this.§_-OB§ = param1.§_-Vb§;
         this.§_-EF§ = null;
         this.§_-eR§ = 0;
      }
      
      private function §_-rs§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§_-SH§().y,param2.§_-SH§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§_-cR§(_loc5_,param2.§_-SH§());
         _loc6_ = b2Math.§_-TD§(_loc6_,param2.§_-w§());
         _loc6_ = b2Math.§_-cR§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§_-Qv§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§_-Qv§(param1.§_-SH§(),param2.§_-SH§())).Normalize();
         var _loc8_:* = b2Math.§_-Ly§(param1.§_-SH§(),param2.§_-w§()) > 0;
         param1.§_-1b§(param2,_loc6_,_loc7_,_loc8_);
         param2.§_-8z§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §_-pC§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§_-nW§ = null;
         if(this.m_world.§_-NO§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§_-xO§(this,this.m_xf,param1);
         if(this.§_-Il§ & b2internal::dynamic)
         {
            _loc3_ = this.m_world.§_-bL§.§_-ep§;
            _loc2_.§_-mf§(_loc3_,this.m_xf);
         }
         _loc2_.§_-NA§ = this.§_-EF§;
         this.§_-EF§ = _loc2_;
         ++this.§_-eR§;
         _loc2_.m_body = this;
         if(_loc2_.§_-9V§ > 0)
         {
            this.§_-V2§();
         }
         this.m_world.§_-Il§ |= b2World.§_-2C§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§_-pC§(_loc3_);
      }
      
      public function §_-mG§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§_-nW§ = null;
         if(this.m_world.§_-NO§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§_-EF§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§_-NA§ = param1.§_-NA§;
               }
               else
               {
                  this.§_-EF§ = param1.§_-NA§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§_-NA§;
         }
         var _loc5_:b2ContactEdge = this.§_-W1§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§_-bX§;
            _loc5_ = _loc5_.§_-Jr§;
            _loc7_ = _loc6_.§_-8S§();
            _loc8_ = _loc6_.§_-16§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§_-bL§.§_-2A§(_loc6_);
            }
         }
         if(this.§_-Il§ & b2internal::dynamic)
         {
            _loc9_ = this.m_world.§_-bL§.§_-ep§;
            param1.§_-aV§(_loc9_);
         }
         param1.§_-2A§();
         param1.m_body = null;
         param1.§_-NA§ = null;
         --this.§_-eR§;
         this.§_-V2§();
      }
      
      public function §_-ST§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§_-NO§() == true)
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
         var _loc6_:§_-nW§ = this.m_world.§_-bL§.§_-ep§;
         _loc3_ = this.§_-EF§;
         while(_loc3_)
         {
            _loc3_.§_-GT§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§_-NA§;
         }
         this.m_world.§_-bL§.§_-Z6§();
      }
      
      public function §_-EJ§(param1:b2Transform) : void
      {
         this.§_-ST§(param1.position,param1.GetAngle());
      }
      
      public function §_-ZO§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §_-d-§(param1:b2Vec2) : void
      {
         this.§_-ST§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §_-eH§(param1:Number) : void
      {
         this.§_-ST§(this.GetPosition(),param1);
      }
      
      public function §_-lC§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §_-LI§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§_-Sj§ == b2_staticBody)
         {
            return;
         }
         this.§_-ZZ§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§_-ZZ§;
      }
      
      public function §_-kz§(param1:Number) : void
      {
         if(this.§_-Sj§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §_-JH§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§_-ww§();
         _loc1_.§_-J4§ = (this.§_-Il§ & b2internal::_-Iv) == b2internal::_-Iv;
         _loc1_.angle = this.GetAngle();
         _loc1_.§_-K5§ = this.§_-1p§;
         _loc1_.§_-P3§ = this.m_angularVelocity;
         _loc1_.§_-W2§ = (this.§_-Il§ & b2internal::_-yC) == b2internal::_-yC;
         _loc1_.§_-eK§ = (this.§_-Il§ & b2internal::_-gO) == b2internal::_-gO;
         _loc1_.§_-MK§ = (this.§_-Il§ & b2internal::_-Vk) == b2internal::_-Vk;
         _loc1_.§_-pQ§ = this.§_-rl§;
         _loc1_.§_-MI§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§_-Vb§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §_-f8§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-Sj§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§return§.x += param1.x;
         this.§return§.y += param1.y;
         this.§_-0C§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §_-35§(param1:Number) : void
      {
         if(this.§_-Sj§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-0C§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-Sj§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-ZZ§.x += this.§_-eZ§ * param1.x;
         this.§_-ZZ§.y += this.§_-eZ§ * param1.y;
         this.m_angularVelocity += this.§_-DZ§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §_-eC§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§_-lC§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§_-EK§(this.§_-JH§());
         var _loc8_:b2Fixture = _loc5_.§_-EF§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§_-NA§;
               if(_loc7_)
               {
                  _loc7_.§_-NA§ = _loc13_;
               }
               else
               {
                  _loc5_.§_-EF§ = _loc13_;
               }
               --_loc5_.§_-eR§;
               _loc8_.§_-NA§ = _loc6_.§_-EF§;
               _loc6_.§_-EF§ = _loc8_;
               ++_loc6_.§_-eR§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§_-NA§;
            }
         }
         _loc5_.§_-V2§();
         _loc6_.§_-V2§();
         var _loc9_:b2Vec2 = _loc5_.§_-lC§();
         var _loc10_:b2Vec2 = _loc6_.§_-lC§();
         var _loc11_:b2Vec2 = b2Math.§_-Qv§(_loc2_,b2Math.§_-dj§(_loc3_,b2Math.§_-TD§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§_-Qv§(_loc2_,b2Math.§_-dj§(_loc3_,b2Math.§_-TD§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§_-kz§(_loc3_);
         _loc6_.§_-kz§(_loc3_);
         _loc5_.§_-F6§();
         _loc6_.§_-F6§();
         return _loc6_;
      }
      
      public function §_-64§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§_-EF§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§_-NA§;
            --param1.§_-eR§;
            _loc2_.§_-NA§ = this.§_-EF§;
            this.§_-EF§ = _loc2_;
            ++this.§_-eR§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§_-eR§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§_-lC§();
         var _loc6_:b2Vec2 = _loc4_.§_-lC§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§_-V2§();
         this.§_-F6§();
      }
      
      public function GetMass() : Number
      {
         return this.§_-jI§;
      }
      
      public function §_-gh§() : Number
      {
         return this.§_-ry§;
      }
      
      public function §_-vR§(param1:b2MassData) : void
      {
         param1.§_-zT§ = this.§_-jI§;
         param1.§_-Lx§ = this.§_-ry§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §_-0f§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§_-NO§() == false);
         if(this.m_world.§_-NO§() == true)
         {
            return;
         }
         if(this.§_-Sj§ != b2_dynamicBody)
         {
            return;
         }
         this.§_-eZ§ = 0;
         this.§_-ry§ = 0;
         this.§_-DZ§ = 0;
         this.§_-jI§ = param1.§_-zT§;
         if(this.§_-jI§ <= 0)
         {
            this.§_-jI§ = 1;
         }
         this.§_-eZ§ = 1 / this.§_-jI§;
         if(param1.§_-Lx§ > 0 && (this.§_-Il§ & b2internal::_-yC) == 0)
         {
            this.§_-ry§ = param1.§_-Lx§ - this.§_-jI§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§_-DZ§ = 1 / this.§_-ry§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§_-Y9§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§_-ZZ§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§_-ZZ§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §_-V2§() : void
      {
         var _loc4_:b2MassData = null;
         this.§_-jI§ = 0;
         this.§_-eZ§ = 0;
         this.§_-ry§ = 0;
         this.§_-DZ§ = 0;
         this.m_sweep.localCenter.§_-0a§();
         if(this.§_-Sj§ == b2_staticBody || this.§_-Sj§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§_-XT§(0,0);
         var _loc2_:b2Fixture = this.§_-EF§;
         while(_loc2_)
         {
            if(_loc2_.§_-9V§ != 0)
            {
               _loc4_ = _loc2_.§_-vR§();
               this.§_-jI§ += _loc4_.§_-zT§;
               _loc1_.x += _loc4_.center.x * _loc4_.§_-zT§;
               _loc1_.y += _loc4_.center.y * _loc4_.§_-zT§;
               this.§_-ry§ += _loc4_.§_-Lx§;
            }
            _loc2_ = _loc2_.§_-NA§;
         }
         if(this.§_-jI§ > 0)
         {
            this.§_-eZ§ = 1 / this.§_-jI§;
            _loc1_.x *= this.§_-eZ§;
            _loc1_.y *= this.§_-eZ§;
         }
         else
         {
            this.§_-jI§ = 1;
            this.§_-eZ§ = 1;
         }
         if(this.§_-ry§ > 0 && (this.§_-Il§ & b2internal::_-yC) == 0)
         {
            this.§_-ry§ -= this.§_-jI§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§_-ry§ *= this.§_-Jm§;
            b2Settings.b2Assert(this.§_-ry§ > 0);
            this.§_-DZ§ = 1 / this.§_-ry§;
         }
         else
         {
            this.§_-ry§ = 0;
            this.§_-DZ§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§_-Y9§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§_-ZZ§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§_-ZZ§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §_-Op§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-FP§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-CS§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-P4§(this.m_xf.R,param1);
      }
      
      public function §_-N4§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§_-ZZ§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§_-ZZ§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §_-bN§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§_-ZZ§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§_-ZZ§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §_-EA§() : Number
      {
         return this.§_-rl§;
      }
      
      public function §_-3l§(param1:Number) : void
      {
         this.§_-rl§ = param1;
      }
      
      public function §_-un§() : Number
      {
         return this.§_-1p§;
      }
      
      public function §_-BP§(param1:Number) : void
      {
         this.§_-1p§ = param1;
      }
      
      public function §_-rK§(param1:uint) : void
      {
         if(this.§_-Sj§ == param1)
         {
            return;
         }
         this.§_-Sj§ = param1;
         this.§_-V2§();
         if(this.§_-Sj§ == b2_staticBody)
         {
            this.§_-ZZ§.§_-0a§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§return§.§_-0a§();
         this.§_-0C§ = 0;
         var _loc2_:b2ContactEdge = this.§_-W1§;
         while(_loc2_)
         {
            _loc2_.§_-bX§.§_-om§();
            _loc2_ = _loc2_.§_-Jr§;
         }
      }
      
      public function §_-ww§() : uint
      {
         return this.§_-Sj§;
      }
      
      public function §_-tS§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Il§ |= b2internal::_-gO;
         }
         else
         {
            this.§_-Il§ &= ~b2internal::_-gO;
         }
      }
      
      public function §_-60§() : Boolean
      {
         return (this.§_-Il§ & b2internal::_-gO) == b2internal::_-gO;
      }
      
      public function §_-4D§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Il§ |= b2internal::_-Iv;
         }
         else
         {
            this.§_-Il§ &= ~b2internal::_-Iv;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Il§ |= b2internal::_-Vk;
            this.§_-5g§ = 0;
         }
         else
         {
            this.§_-Il§ &= ~b2internal::_-Vk;
            this.§_-5g§ = 0;
            this.§_-ZZ§.§_-0a§();
            this.m_angularVelocity = 0;
            this.§return§.§_-0a§();
            this.§_-0C§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§_-Il§ & b2internal::_-Vk) == b2internal::_-Vk;
      }
      
      public function §_-hs§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Il§ |= b2internal::_-yC;
         }
         else
         {
            this.§_-Il§ &= ~b2internal::_-yC;
         }
         this.§_-V2§();
      }
      
      public function §_-s§() : Boolean
      {
         return (this.§_-Il§ & b2internal::_-yC) == b2internal::_-yC;
      }
      
      public function §_-Dh§(param1:Boolean) : void
      {
         var _loc2_:§_-nW§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§_-w4§())
         {
            return;
         }
         if(param1)
         {
            this.§_-Il§ |= b2internal::dynamic;
            _loc2_ = this.m_world.§_-bL§.§_-ep§;
            _loc3_ = this.§_-EF§;
            while(_loc3_)
            {
               _loc3_.§_-mf§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§_-NA§;
            }
         }
         else
         {
            this.§_-Il§ &= ~b2internal::dynamic;
            _loc2_ = this.m_world.§_-bL§.§_-ep§;
            _loc3_ = this.§_-EF§;
            while(_loc3_)
            {
               _loc3_.§_-aV§(_loc2_);
               _loc3_ = _loc3_.§_-NA§;
            }
            _loc4_ = this.§_-W1§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§_-Jr§;
               this.m_world.§_-bL§.§_-2A§(_loc5_.§_-bX§);
            }
            this.§_-W1§ = null;
         }
      }
      
      public function §_-w4§() : Boolean
      {
         return (this.§_-Il§ & b2internal::dynamic) == b2internal::dynamic;
      }
      
      public function §_-U4§() : Boolean
      {
         return (this.§_-Il§ & b2internal::_-Iv) == b2internal::_-Iv;
      }
      
      public function §_-xG§() : b2Fixture
      {
         return this.§_-EF§;
      }
      
      public function §_-9y§() : b2JointEdge
      {
         return this.§_-Ry§;
      }
      
      public function §_-PI§() : b2ControllerEdge
      {
         return this.§_-C2§;
      }
      
      public function §_-Xi§() : b2ContactEdge
      {
         return this.§_-W1§;
      }
      
      public function §_-tx§() : b2Body
      {
         return this.§_-NA§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-OB§;
      }
      
      public function §_-g6§(param1:*) : void
      {
         this.§_-OB§ = param1;
      }
      
      public function §_-MR§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §_-F6§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §_-aO§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§_-nW§ = this.m_world.§_-bL§.§_-ep§;
         _loc4_ = this.§_-EF§;
         while(_loc4_)
         {
            _loc4_.§_-GT§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§_-NA§;
         }
      }
      
      b2internal function §_-Z9§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §_-Zp§(param1:b2Body) : Boolean
      {
         if(this.§_-Sj§ != b2_dynamicBody && param1.§_-Sj§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§_-Ry§;
         while(_loc2_)
         {
            if(_loc2_.§_-dr§ == param1)
            {
               if(_loc2_.§_-Kx§.§_-Ef§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§_-Jr§;
         }
         return true;
      }
      
      b2internal function §_-8j§(param1:Number) : void
      {
         this.m_sweep.§_-8j§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§_-Z9§();
      }
   }
}

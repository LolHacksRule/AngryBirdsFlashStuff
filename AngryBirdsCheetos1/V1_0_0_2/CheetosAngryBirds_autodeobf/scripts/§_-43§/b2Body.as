package §_-43§
{
   import § if§.b2EdgeShape;
   import § if§.b2MassData;
   import § if§.b2Shape;
   import §_-F2§.b2Mat22;
   import §_-F2§.b2Math;
   import §_-F2§.b2Sweep;
   import §_-F2§.b2Transform;
   import §_-F2§.b2Vec2;
   import §_-Jx§.§_-e1§;
   import §_-ZX§.b2Contact;
   import §_-ZX§.b2ContactEdge;
   import §_-d6§.b2Settings;
   import §_-d6§.b2internal;
   import §_-ol§.b2JointEdge;
   import §_-wK§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §_-Wx§:b2Transform = new b2Transform();
      
      b2internal static var §_-0-q§:uint = 1;
      
      b2internal static var §_-lE§:uint = 2;
      
      b2internal static var §_-TR§:uint = 4;
      
      b2internal static var §_-1C§:uint = 8;
      
      b2internal static var §_-nX§:uint = 16;
      
      b2internal static var §_-a2§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §_-o4§:uint;
      
      b2internal var §_-zO§:int;
      
      b2internal var §_-mG§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §_-We§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §if§:b2Vec2;
      
      b2internal var §_-8Y§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §_-Nc§:b2Body;
      
      b2internal var §_-4N§:b2Body;
      
      b2internal var §_-ta§:b2Fixture;
      
      b2internal var §_-N8§:int;
      
      b2internal var §_-xY§:b2ControllerEdge;
      
      b2internal var §_-gC§:int;
      
      b2internal var §_-Ka§:b2JointEdge;
      
      b2internal var §_-pp§:b2ContactEdge;
      
      b2internal var §_-3i§:Number;
      
      b2internal var §_-N0§:Number;
      
      b2internal var §_-yY§:Number;
      
      b2internal var §_-pA§:Number;
      
      b2internal var §_-gn§:Number;
      
      b2internal var §_-zF§:Number;
      
      b2internal var §_-Ea§:Number;
      
      b2internal var §_-cy§:Number;
      
      private var §_-Kp§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§_-We§ = new b2Vec2();
         this.§if§ = new b2Vec2();
         super();
         this.§_-o4§ = 0;
         if(param1.§_-S9§)
         {
            this.§_-o4§ |= b2internal::_-1C;
         }
         if(param1.§_-XH§)
         {
            this.§_-o4§ |= b2internal::_-nX;
         }
         if(param1.§_-hm§)
         {
            this.§_-o4§ |= b2internal::_-TR;
         }
         if(param1.§_-8A§)
         {
            this.§_-o4§ |= b2internal::_-lE;
         }
         if(param1.§_-Je§)
         {
            this.§_-o4§ |= b2internal::_-a2;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§_-t5§();
         this.m_sweep.§_-4u§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.§_-FO§.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.§_-FO§.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.§_-FO§.x += this.m_xf.position.x;
         this.m_sweep.§_-FO§.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.§_-FO§);
         this.§_-Ka§ = null;
         this.§_-xY§ = null;
         this.§_-pp§ = null;
         this.§_-gC§ = 0;
         this.§_-Nc§ = null;
         this.§_-4N§ = null;
         this.§_-We§.SetV(param1.§_-CS§);
         this.m_angularVelocity = param1.§_-UO§;
         this.§_-zF§ = param1.§_-ch§;
         this.§_-Ea§ = param1.§_-IM§;
         this.§if§.Set(0,0);
         this.§_-8Y§ = 0;
         this.§_-cy§ = 0;
         this.§_-zO§ = param1.type;
         if(this.§_-zO§ == b2_dynamicBody)
         {
            this.§_-3i§ = 1;
            this.§_-N0§ = 1;
         }
         else
         {
            this.§_-3i§ = 0;
            this.§_-N0§ = 0;
         }
         this.§_-yY§ = 0;
         this.§_-pA§ = 0;
         this.§_-gn§ = param1.§_-9e§;
         this.§_-Kp§ = param1.§_-eL§;
         this.§_-ta§ = null;
         this.§_-N8§ = 0;
      }
      
      private function §_-zv§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§_-Li§().y,param2.§_-Li§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§_-q-§(_loc5_,param2.§_-Li§());
         _loc6_ = b2Math.§_-Pq§(_loc6_,param2.§_-UX§());
         _loc6_ = b2Math.§_-q-§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§_-eA§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§_-eA§(param1.§_-Li§(),param2.§_-Li§())).Normalize();
         var _loc8_:* = b2Math.§_-Kt§(param1.§_-Li§(),param2.§_-UX§()) > 0;
         param1.§_-t6§(param2,_loc6_,_loc7_,_loc8_);
         param2.§_-4h§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §_-uK§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§_-e1§ = null;
         if(this.m_world.§_-sK§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§_-6l§(this,this.m_xf,param1);
         if(this.§_-o4§ & b2internal::_-a2)
         {
            _loc3_ = this.m_world.§_-lg§.§_-pf§;
            _loc2_.§_-Pw§(_loc3_,this.m_xf);
         }
         _loc2_.§_-4N§ = this.§_-ta§;
         this.§_-ta§ = _loc2_;
         ++this.§_-N8§;
         _loc2_.m_body = this;
         if(_loc2_.§_-RN§ > 0)
         {
            this.§_-09§();
         }
         this.m_world.§_-o4§ |= b2World.§_-F0§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§_-uK§(_loc3_);
      }
      
      public function §_-tn§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§_-e1§ = null;
         if(this.m_world.§_-sK§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§_-ta§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§_-4N§ = param1.§_-4N§;
               }
               else
               {
                  this.§_-ta§ = param1.§_-4N§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§_-4N§;
         }
         var _loc5_:b2ContactEdge = this.§_-pp§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§_-50§;
            _loc5_ = _loc5_.§_-Rk§;
            _loc7_ = _loc6_.§_-ml§();
            _loc8_ = _loc6_.§_-s9§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§_-lg§.§_-TI§(_loc6_);
            }
         }
         if(this.§_-o4§ & b2internal::_-a2)
         {
            _loc9_ = this.m_world.§_-lg§.§_-pf§;
            param1.§_-fe§(_loc9_);
         }
         param1.§_-TI§();
         param1.m_body = null;
         param1.§_-4N§ = null;
         --this.§_-N8§;
         this.§_-09§();
      }
      
      public function §_-5D§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§_-sK§() == true)
         {
            return;
         }
         this.m_xf.R.Set(param2);
         this.m_xf.position.SetV(param1);
         var _loc4_:b2Mat22 = this.m_xf.R;
         var _loc5_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.§_-FO§.x = _loc4_.col1.x * _loc5_.x + _loc4_.col2.x * _loc5_.y;
         this.m_sweep.§_-FO§.y = _loc4_.col1.y * _loc5_.x + _loc4_.col2.y * _loc5_.y;
         this.m_sweep.§_-FO§.x += this.m_xf.position.x;
         this.m_sweep.§_-FO§.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.§_-FO§);
         this.m_sweep.a0 = this.m_sweep.a = param2;
         var _loc6_:§_-e1§ = this.m_world.§_-lg§.§_-pf§;
         _loc3_ = this.§_-ta§;
         while(_loc3_)
         {
            _loc3_.§_-vu§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§_-4N§;
         }
         this.m_world.§_-lg§.§_-nR§();
      }
      
      public function §_-Rx§(param1:b2Transform) : void
      {
         this.§_-5D§(param1.position,param1.GetAngle());
      }
      
      public function §_-lD§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §_-PQ§(param1:b2Vec2) : void
      {
         this.§_-5D§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §_-oo§(param1:Number) : void
      {
         this.§_-5D§(this.GetPosition(),param1);
      }
      
      public function §_-nS§() : b2Vec2
      {
         return this.m_sweep.§_-FO§;
      }
      
      public function §_-j8§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§_-zO§ == b2_staticBody)
         {
            return;
         }
         this.§_-We§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§_-We§;
      }
      
      public function §_-Ht§(param1:Number) : void
      {
         if(this.§_-zO§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §_-g4§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§_-cT§();
         _loc1_.§_-hm§ = (this.§_-o4§ & b2internal::_-TR) == b2internal::_-TR;
         _loc1_.angle = this.GetAngle();
         _loc1_.§_-IM§ = this.§_-Ea§;
         _loc1_.§_-UO§ = this.m_angularVelocity;
         _loc1_.§_-XH§ = (this.§_-o4§ & b2internal::_-nX) == b2internal::_-nX;
         _loc1_.§_-S9§ = (this.§_-o4§ & b2internal::_-1C) == b2internal::_-1C;
         _loc1_.§_-8A§ = (this.§_-o4§ & b2internal::_-lE) == b2internal::_-lE;
         _loc1_.§_-ch§ = this.§_-zF§;
         _loc1_.§_-CS§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§_-eL§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §_-XK§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-zO§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§if§.x += param1.x;
         this.§if§.y += param1.y;
         this.§_-8Y§ += (param2.x - this.m_sweep.§_-FO§.x) * param1.y - (param2.y - this.m_sweep.§_-FO§.y) * param1.x;
      }
      
      public function §_-fN§(param1:Number) : void
      {
         if(this.§_-zO§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-8Y§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-zO§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-We§.x += this.§_-N0§ * param1.x;
         this.§_-We§.y += this.§_-N0§ * param1.y;
         this.m_angularVelocity += this.§_-pA§ * ((param2.x - this.m_sweep.§_-FO§.x) * param1.y - (param2.y - this.m_sweep.§_-FO§.y) * param1.x);
      }
      
      public function §_-ts§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§_-nS§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§_-dS§(this.§_-g4§());
         var _loc8_:b2Fixture = _loc5_.§_-ta§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§_-4N§;
               if(_loc7_)
               {
                  _loc7_.§_-4N§ = _loc13_;
               }
               else
               {
                  _loc5_.§_-ta§ = _loc13_;
               }
               --_loc5_.§_-N8§;
               _loc8_.§_-4N§ = _loc6_.§_-ta§;
               _loc6_.§_-ta§ = _loc8_;
               ++_loc6_.§_-N8§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§_-4N§;
            }
         }
         _loc5_.§_-09§();
         _loc6_.§_-09§();
         var _loc9_:b2Vec2 = _loc5_.§_-nS§();
         var _loc10_:b2Vec2 = _loc6_.§_-nS§();
         var _loc11_:b2Vec2 = b2Math.§_-eA§(_loc2_,b2Math.§_-dV§(_loc3_,b2Math.§_-Pq§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§_-eA§(_loc2_,b2Math.§_-dV§(_loc3_,b2Math.§_-Pq§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§_-Ht§(_loc3_);
         _loc6_.§_-Ht§(_loc3_);
         _loc5_.§_-ZA§();
         _loc6_.§_-ZA§();
         return _loc6_;
      }
      
      public function §_-vH§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§_-ta§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§_-4N§;
            --param1.§_-N8§;
            _loc2_.§_-4N§ = this.§_-ta§;
            this.§_-ta§ = _loc2_;
            ++this.§_-N8§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§_-N8§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§_-nS§();
         var _loc6_:b2Vec2 = _loc4_.§_-nS§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§_-09§();
         this.§_-ZA§();
      }
      
      public function GetMass() : Number
      {
         return this.§_-3i§;
      }
      
      public function §_-7d§() : Number
      {
         return this.§_-yY§;
      }
      
      public function §_-Zx§(param1:b2MassData) : void
      {
         param1.§_-12§ = this.§_-3i§;
         param1.§_-2N§ = this.§_-yY§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §_-Ko§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§_-sK§() == false);
         if(this.m_world.§_-sK§() == true)
         {
            return;
         }
         if(this.§_-zO§ != b2_dynamicBody)
         {
            return;
         }
         this.§_-N0§ = 0;
         this.§_-yY§ = 0;
         this.§_-pA§ = 0;
         this.§_-3i§ = param1.§_-12§;
         if(this.§_-3i§ <= 0)
         {
            this.§_-3i§ = 1;
         }
         this.§_-N0§ = 1 / this.§_-3i§;
         if(param1.§_-2N§ > 0 && (this.§_-o4§ & b2internal::_-nX) == 0)
         {
            this.§_-yY§ = param1.§_-2N§ - this.§_-3i§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§_-pA§ = 1 / this.§_-yY§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.§_-FO§.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§_-is§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.§_-FO§.SetV(this.m_sweep.c0);
         this.§_-We§.x += this.m_angularVelocity * -(this.m_sweep.§_-FO§.y - _loc2_.y);
         this.§_-We§.y += this.m_angularVelocity * (this.m_sweep.§_-FO§.x - _loc2_.x);
      }
      
      public function §_-09§() : void
      {
         var _loc4_:b2MassData = null;
         this.§_-3i§ = 0;
         this.§_-N0§ = 0;
         this.§_-yY§ = 0;
         this.§_-pA§ = 0;
         this.m_sweep.localCenter.§_-t5§();
         if(this.§_-zO§ == b2_staticBody || this.§_-zO§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§_-1l§(0,0);
         var _loc2_:b2Fixture = this.§_-ta§;
         while(_loc2_)
         {
            if(_loc2_.§_-RN§ != 0)
            {
               _loc4_ = _loc2_.§_-Zx§();
               this.§_-3i§ += _loc4_.§_-12§;
               _loc1_.x += _loc4_.center.x * _loc4_.§_-12§;
               _loc1_.y += _loc4_.center.y * _loc4_.§_-12§;
               this.§_-yY§ += _loc4_.§_-2N§;
            }
            _loc2_ = _loc2_.§_-4N§;
         }
         if(this.§_-3i§ > 0)
         {
            this.§_-N0§ = 1 / this.§_-3i§;
            _loc1_.x *= this.§_-N0§;
            _loc1_.y *= this.§_-N0§;
         }
         else
         {
            this.§_-3i§ = 1;
            this.§_-N0§ = 1;
         }
         if(this.§_-yY§ > 0 && (this.§_-o4§ & b2internal::_-nX) == 0)
         {
            this.§_-yY§ -= this.§_-3i§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§_-yY§ *= this.§_-gn§;
            b2Settings.b2Assert(this.§_-yY§ > 0);
            this.§_-pA§ = 1 / this.§_-yY§;
         }
         else
         {
            this.§_-yY§ = 0;
            this.§_-pA§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.§_-FO§.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§_-is§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.§_-FO§.SetV(this.m_sweep.c0);
         this.§_-We§.x += this.m_angularVelocity * -(this.m_sweep.§_-FO§.y - _loc3_.y);
         this.§_-We§.y += this.m_angularVelocity * (this.m_sweep.§_-FO§.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §_-Ma§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-WK§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-Bx§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-NJ§(this.m_xf.R,param1);
      }
      
      public function §_-Dk§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§_-We§.x - this.m_angularVelocity * (param1.y - this.m_sweep.§_-FO§.y),this.§_-We§.y + this.m_angularVelocity * (param1.x - this.m_sweep.§_-FO§.x));
      }
      
      public function §_-Rr§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§_-We§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.§_-FO§.y),this.§_-We§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.§_-FO§.x));
      }
      
      public function §_-3I§() : Number
      {
         return this.§_-zF§;
      }
      
      public function §_-2I§(param1:Number) : void
      {
         this.§_-zF§ = param1;
      }
      
      public function §_-7V§() : Number
      {
         return this.§_-Ea§;
      }
      
      public function §_-yW§(param1:Number) : void
      {
         this.§_-Ea§ = param1;
      }
      
      public function §_-yR§(param1:uint) : void
      {
         if(this.§_-zO§ == param1)
         {
            return;
         }
         this.§_-zO§ = param1;
         this.§_-09§();
         if(this.§_-zO§ == b2_staticBody)
         {
            this.§_-We§.§_-t5§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§if§.§_-t5§();
         this.§_-8Y§ = 0;
         var _loc2_:b2ContactEdge = this.§_-pp§;
         while(_loc2_)
         {
            _loc2_.§_-50§.§_-0-5§();
            _loc2_ = _loc2_.§_-Rk§;
         }
      }
      
      public function §_-cT§() : uint
      {
         return this.§_-zO§;
      }
      
      public function §_-Yy§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-o4§ |= b2internal::_-1C;
         }
         else
         {
            this.§_-o4§ &= ~b2internal::_-1C;
         }
      }
      
      public function §_-kz§() : Boolean
      {
         return (this.§_-o4§ & b2internal::_-1C) == b2internal::_-1C;
      }
      
      public function §_-iD§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-o4§ |= b2internal::_-TR;
         }
         else
         {
            this.§_-o4§ &= ~b2internal::_-TR;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-o4§ |= b2internal::_-lE;
            this.§_-cy§ = 0;
         }
         else
         {
            this.§_-o4§ &= ~b2internal::_-lE;
            this.§_-cy§ = 0;
            this.§_-We§.§_-t5§();
            this.m_angularVelocity = 0;
            this.§if§.§_-t5§();
            this.§_-8Y§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§_-o4§ & b2internal::_-lE) == b2internal::_-lE;
      }
      
      public function §_-D1§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-o4§ |= b2internal::_-nX;
         }
         else
         {
            this.§_-o4§ &= ~b2internal::_-nX;
         }
         this.§_-09§();
      }
      
      public function §_-Br§() : Boolean
      {
         return (this.§_-o4§ & b2internal::_-nX) == b2internal::_-nX;
      }
      
      public function §_-aa§(param1:Boolean) : void
      {
         var _loc2_:§_-e1§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§_-Au§())
         {
            return;
         }
         if(param1)
         {
            this.§_-o4§ |= b2internal::_-a2;
            _loc2_ = this.m_world.§_-lg§.§_-pf§;
            _loc3_ = this.§_-ta§;
            while(_loc3_)
            {
               _loc3_.§_-Pw§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§_-4N§;
            }
         }
         else
         {
            this.§_-o4§ &= ~b2internal::_-a2;
            _loc2_ = this.m_world.§_-lg§.§_-pf§;
            _loc3_ = this.§_-ta§;
            while(_loc3_)
            {
               _loc3_.§_-fe§(_loc2_);
               _loc3_ = _loc3_.§_-4N§;
            }
            _loc4_ = this.§_-pp§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§_-Rk§;
               this.m_world.§_-lg§.§_-TI§(_loc5_.§_-50§);
            }
            this.§_-pp§ = null;
         }
      }
      
      public function §_-Au§() : Boolean
      {
         return (this.§_-o4§ & b2internal::_-a2) == b2internal::_-a2;
      }
      
      public function §_-hK§() : Boolean
      {
         return (this.§_-o4§ & b2internal::_-TR) == b2internal::_-TR;
      }
      
      public function §_-B3§() : b2Fixture
      {
         return this.§_-ta§;
      }
      
      public function §_-7x§() : b2JointEdge
      {
         return this.§_-Ka§;
      }
      
      public function §_-tO§() : b2ControllerEdge
      {
         return this.§_-xY§;
      }
      
      public function §_-sA§() : b2ContactEdge
      {
         return this.§_-pp§;
      }
      
      public function §_-4A§() : b2Body
      {
         return this.§_-4N§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-Kp§;
      }
      
      public function §_-CM§(param1:*) : void
      {
         this.§_-Kp§ = param1;
      }
      
      public function §_-0-e§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §_-ZA§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §_-Wx§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§_-e1§ = this.m_world.§_-lg§.§_-pf§;
         _loc4_ = this.§_-ta§;
         while(_loc4_)
         {
            _loc4_.§_-vu§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§_-4N§;
         }
      }
      
      b2internal function §_-76§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.§_-FO§.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.§_-FO§.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §_-9W§(param1:b2Body) : Boolean
      {
         if(this.§_-zO§ != b2_dynamicBody && param1.§_-zO§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§_-Ka§;
         while(_loc2_)
         {
            if(_loc2_.§_-f3§ == param1)
            {
               if(_loc2_.§_-6-§.§_-sT§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§_-Rk§;
         }
         return true;
      }
      
      b2internal function §_-px§(param1:Number) : void
      {
         this.m_sweep.§_-px§(param1);
         this.m_sweep.§_-FO§.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§_-76§();
      }
   }
}

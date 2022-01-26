package §_-rg§
{
   import §_-DM§.b2Contact;
   import §_-DM§.b2ContactEdge;
   import §_-Et§.§_-ei§;
   import §_-I2§.b2EdgeShape;
   import §_-I2§.b2MassData;
   import §_-I2§.b2Shape;
   import §_-Rb§.b2JointEdge;
   import §_-Vs§.b2ControllerEdge;
   import §_-Zl§.b2Mat22;
   import §_-Zl§.b2Math;
   import §_-Zl§.b2Sweep;
   import §_-Zl§.b2Transform;
   import §_-Zl§.b2Vec2;
   import §_-uS§.b2Settings;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §_-oD§:b2Transform = new b2Transform();
      
      b2internal static var §_-9S§:uint = 1;
      
      b2internal static var §_-7N§:uint = 2;
      
      b2internal static var §_-Pu§:uint = 4;
      
      b2internal static var §_-jl§:uint = 8;
      
      b2internal static var §_-Pm§:uint = 16;
      
      b2internal static var §_-hV§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §_-2F§:uint;
      
      b2internal var §_-K9§:int;
      
      b2internal var §_-OV§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §_-Ng§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §_-6I§:b2Vec2;
      
      b2internal var §_-Cq§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §_-M9§:b2Body;
      
      b2internal var §_-AX§:b2Body;
      
      b2internal var §_-4v§:b2Fixture;
      
      b2internal var §_-x6§:int;
      
      b2internal var §_-wG§:b2ControllerEdge;
      
      b2internal var §_-OP§:int;
      
      b2internal var §_-8s§:b2JointEdge;
      
      b2internal var §_-kI§:b2ContactEdge;
      
      b2internal var §_-qa§:Number;
      
      b2internal var §_-s§:Number;
      
      b2internal var §_-b0§:Number;
      
      b2internal var §_-TW§:Number;
      
      b2internal var §_-lr§:Number;
      
      b2internal var §_-Iu§:Number;
      
      b2internal var §_-O0§:Number;
      
      b2internal var §_-VG§:Number;
      
      private var §_-cT§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§_-Ng§ = new b2Vec2();
         this.§_-6I§ = new b2Vec2();
         super();
         this.§_-2F§ = 0;
         if(param1.§_-d7§)
         {
            this.§_-2F§ |= b2internal::_-jl;
         }
         if(param1.§_-nF§)
         {
            this.§_-2F§ |= b2internal::_-Pm;
         }
         if(param1.§_-d3§)
         {
            this.§_-2F§ |= b2internal::_-Pu;
         }
         if(param1.§_-9§)
         {
            this.§_-2F§ |= b2internal::_-7N;
         }
         if(param1.§_-NW§)
         {
            this.§_-2F§ |= b2internal::_-hV;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§_-Vw§();
         this.m_sweep.§_-eq§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§_-8s§ = null;
         this.§_-wG§ = null;
         this.§_-kI§ = null;
         this.§_-OP§ = 0;
         this.§_-M9§ = null;
         this.§_-AX§ = null;
         this.§_-Ng§.SetV(param1.§_-Ex§);
         this.m_angularVelocity = param1.§ try§;
         this.§_-Iu§ = param1.§_-Vh§;
         this.§_-O0§ = param1.§_-Sm§;
         this.§_-6I§.Set(0,0);
         this.§_-Cq§ = 0;
         this.§_-VG§ = 0;
         this.§_-K9§ = param1.type;
         if(this.§_-K9§ == b2_dynamicBody)
         {
            this.§_-qa§ = 1;
            this.§_-s§ = 1;
         }
         else
         {
            this.§_-qa§ = 0;
            this.§_-s§ = 0;
         }
         this.§_-b0§ = 0;
         this.§_-TW§ = 0;
         this.§_-lr§ = param1.§_-Ey§;
         this.§_-cT§ = param1.§_-QX§;
         this.§_-4v§ = null;
         this.§_-x6§ = 0;
      }
      
      private function §_-re§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§_-Fg§().y,param2.§_-Fg§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§_-i5§(_loc5_,param2.§_-Fg§());
         _loc6_ = b2Math.§_-Fu§(_loc6_,param2.§_-5H§());
         _loc6_ = b2Math.§_-i5§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§_-6S§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§_-6S§(param1.§_-Fg§(),param2.§_-Fg§())).Normalize();
         var _loc8_:* = b2Math.§_-Uf§(param1.§_-Fg§(),param2.§_-5H§()) > 0;
         param1.§_-we§(param2,_loc6_,_loc7_,_loc8_);
         param2.§_-Uj§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §_-KK§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§_-ei§ = null;
         if(this.m_world.§_-Tw§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§_-i-§(this,this.m_xf,param1);
         if(this.§_-2F§ & b2internal::_-hV)
         {
            _loc3_ = this.m_world.§_-pk§.§_-qs§;
            _loc2_.§_-A5§(_loc3_,this.m_xf);
         }
         _loc2_.§_-AX§ = this.§_-4v§;
         this.§_-4v§ = _loc2_;
         ++this.§_-x6§;
         _loc2_.m_body = this;
         if(_loc2_.§_-3E§ > 0)
         {
            this.§_-Fs§();
         }
         this.m_world.§_-2F§ |= b2World.§_-JF§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§_-KK§(_loc3_);
      }
      
      public function §_-sw§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§_-ei§ = null;
         if(this.m_world.§_-Tw§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§_-4v§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§_-AX§ = param1.§_-AX§;
               }
               else
               {
                  this.§_-4v§ = param1.§_-AX§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§_-AX§;
         }
         var _loc5_:b2ContactEdge = this.§_-kI§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§_-vb§;
            _loc5_ = _loc5_.§_-kL§;
            _loc7_ = _loc6_.§_-cW§();
            _loc8_ = _loc6_.§_-q-§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§_-pk§.§_-1m§(_loc6_);
            }
         }
         if(this.§_-2F§ & b2internal::_-hV)
         {
            _loc9_ = this.m_world.§_-pk§.§_-qs§;
            param1.§_-Uu§(_loc9_);
         }
         param1.§_-1m§();
         param1.m_body = null;
         param1.§_-AX§ = null;
         --this.§_-x6§;
         this.§_-Fs§();
      }
      
      public function §_-rt§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§_-Tw§() == true)
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
         var _loc6_:§_-ei§ = this.m_world.§_-pk§.§_-qs§;
         _loc3_ = this.§_-4v§;
         while(_loc3_)
         {
            _loc3_.§_-av§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§_-AX§;
         }
         this.m_world.§_-pk§.§_-hD§();
      }
      
      public function §_-iQ§(param1:b2Transform) : void
      {
         this.§_-rt§(param1.position,param1.GetAngle());
      }
      
      public function §_-9F§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §_-6j§(param1:b2Vec2) : void
      {
         this.§_-rt§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §_-Pz§(param1:Number) : void
      {
         this.§_-rt§(this.GetPosition(),param1);
      }
      
      public function §_-RE§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §_-HZ§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§_-K9§ == b2_staticBody)
         {
            return;
         }
         this.§_-Ng§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§_-Ng§;
      }
      
      public function §_-9i§(param1:Number) : void
      {
         if(this.§_-K9§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §_-wb§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§_-Iy§();
         _loc1_.§_-d3§ = (this.§_-2F§ & b2internal::_-Pu) == b2internal::_-Pu;
         _loc1_.angle = this.GetAngle();
         _loc1_.§_-Sm§ = this.§_-O0§;
         _loc1_.§ try§ = this.m_angularVelocity;
         _loc1_.§_-nF§ = (this.§_-2F§ & b2internal::_-Pm) == b2internal::_-Pm;
         _loc1_.§_-d7§ = (this.§_-2F§ & b2internal::_-jl) == b2internal::_-jl;
         _loc1_.§_-9§ = (this.§_-2F§ & b2internal::_-7N) == b2internal::_-7N;
         _loc1_.§_-Vh§ = this.§_-Iu§;
         _loc1_.§_-Ex§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§_-QX§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §_-ZF§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-K9§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-6I§.x += param1.x;
         this.§_-6I§.y += param1.y;
         this.§_-Cq§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §_-T8§(param1:Number) : void
      {
         if(this.§_-K9§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-Cq§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-K9§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-Ng§.x += this.§_-s§ * param1.x;
         this.§_-Ng§.y += this.§_-s§ * param1.y;
         this.m_angularVelocity += this.§_-TW§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §_-X6§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§_-RE§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§_-g2§(this.§_-wb§());
         var _loc8_:b2Fixture = _loc5_.§_-4v§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§_-AX§;
               if(_loc7_)
               {
                  _loc7_.§_-AX§ = _loc13_;
               }
               else
               {
                  _loc5_.§_-4v§ = _loc13_;
               }
               --_loc5_.§_-x6§;
               _loc8_.§_-AX§ = _loc6_.§_-4v§;
               _loc6_.§_-4v§ = _loc8_;
               ++_loc6_.§_-x6§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§_-AX§;
            }
         }
         _loc5_.§_-Fs§();
         _loc6_.§_-Fs§();
         var _loc9_:b2Vec2 = _loc5_.§_-RE§();
         var _loc10_:b2Vec2 = _loc6_.§_-RE§();
         var _loc11_:b2Vec2 = b2Math.§_-6S§(_loc2_,b2Math.§_-17§(_loc3_,b2Math.§_-Fu§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§_-6S§(_loc2_,b2Math.§_-17§(_loc3_,b2Math.§_-Fu§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§_-9i§(_loc3_);
         _loc6_.§_-9i§(_loc3_);
         _loc5_.§_-i1§();
         _loc6_.§_-i1§();
         return _loc6_;
      }
      
      public function §_-3B§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§_-4v§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§_-AX§;
            --param1.§_-x6§;
            _loc2_.§_-AX§ = this.§_-4v§;
            this.§_-4v§ = _loc2_;
            ++this.§_-x6§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§_-x6§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§_-RE§();
         var _loc6_:b2Vec2 = _loc4_.§_-RE§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§_-Fs§();
         this.§_-i1§();
      }
      
      public function GetMass() : Number
      {
         return this.§_-qa§;
      }
      
      public function §_-Q7§() : Number
      {
         return this.§_-b0§;
      }
      
      public function §_-NQ§(param1:b2MassData) : void
      {
         param1.§_-Un§ = this.§_-qa§;
         param1.§_-0D§ = this.§_-b0§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §_-qL§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§_-Tw§() == false);
         if(this.m_world.§_-Tw§() == true)
         {
            return;
         }
         if(this.§_-K9§ != b2_dynamicBody)
         {
            return;
         }
         this.§_-s§ = 0;
         this.§_-b0§ = 0;
         this.§_-TW§ = 0;
         this.§_-qa§ = param1.§_-Un§;
         if(this.§_-qa§ <= 0)
         {
            this.§_-qa§ = 1;
         }
         this.§_-s§ = 1 / this.§_-qa§;
         if(param1.§_-0D§ > 0 && (this.§_-2F§ & b2internal::_-Pm) == 0)
         {
            this.§_-b0§ = param1.§_-0D§ - this.§_-qa§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§_-TW§ = 1 / this.§_-b0§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§_-Oi§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§_-Ng§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§_-Ng§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §_-Fs§() : void
      {
         var _loc4_:b2MassData = null;
         this.§_-qa§ = 0;
         this.§_-s§ = 0;
         this.§_-b0§ = 0;
         this.§_-TW§ = 0;
         this.m_sweep.localCenter.§_-Vw§();
         if(this.§_-K9§ == b2_staticBody || this.§_-K9§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§_-BP§(0,0);
         var _loc2_:b2Fixture = this.§_-4v§;
         while(_loc2_)
         {
            if(_loc2_.§_-3E§ != 0)
            {
               _loc4_ = _loc2_.§_-NQ§();
               this.§_-qa§ += _loc4_.§_-Un§;
               _loc1_.x += _loc4_.center.x * _loc4_.§_-Un§;
               _loc1_.y += _loc4_.center.y * _loc4_.§_-Un§;
               this.§_-b0§ += _loc4_.§_-0D§;
            }
            _loc2_ = _loc2_.§_-AX§;
         }
         if(this.§_-qa§ > 0)
         {
            this.§_-s§ = 1 / this.§_-qa§;
            _loc1_.x *= this.§_-s§;
            _loc1_.y *= this.§_-s§;
         }
         else
         {
            this.§_-qa§ = 1;
            this.§_-s§ = 1;
         }
         if(this.§_-b0§ > 0 && (this.§_-2F§ & b2internal::_-Pm) == 0)
         {
            this.§_-b0§ -= this.§_-qa§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§_-b0§ *= this.§_-lr§;
            b2Settings.b2Assert(this.§_-b0§ > 0);
            this.§_-TW§ = 1 / this.§_-b0§;
         }
         else
         {
            this.§_-b0§ = 0;
            this.§_-TW§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§_-Oi§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§_-Ng§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§_-Ng§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §_-8C§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-KM§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-Ck§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-vG§(this.m_xf.R,param1);
      }
      
      public function §_-NM§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§_-Ng§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§_-Ng§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §_-OS§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§_-Ng§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§_-Ng§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §_-o8§() : Number
      {
         return this.§_-Iu§;
      }
      
      public function §_-Gq§(param1:Number) : void
      {
         this.§_-Iu§ = param1;
      }
      
      public function §_-pb§() : Number
      {
         return this.§_-O0§;
      }
      
      public function §_-Bi§(param1:Number) : void
      {
         this.§_-O0§ = param1;
      }
      
      public function §_-4h§(param1:uint) : void
      {
         if(this.§_-K9§ == param1)
         {
            return;
         }
         this.§_-K9§ = param1;
         this.§_-Fs§();
         if(this.§_-K9§ == b2_staticBody)
         {
            this.§_-Ng§.§_-Vw§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§_-6I§.§_-Vw§();
         this.§_-Cq§ = 0;
         var _loc2_:b2ContactEdge = this.§_-kI§;
         while(_loc2_)
         {
            _loc2_.§_-vb§.§_-Lu§();
            _loc2_ = _loc2_.§_-kL§;
         }
      }
      
      public function §_-Iy§() : uint
      {
         return this.§_-K9§;
      }
      
      public function §_-6Z§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-2F§ |= b2internal::_-jl;
         }
         else
         {
            this.§_-2F§ &= ~b2internal::_-jl;
         }
      }
      
      public function §_-Y6§() : Boolean
      {
         return (this.§_-2F§ & b2internal::_-jl) == b2internal::_-jl;
      }
      
      public function §do§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-2F§ |= b2internal::_-Pu;
         }
         else
         {
            this.§_-2F§ &= ~b2internal::_-Pu;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-2F§ |= b2internal::_-7N;
            this.§_-VG§ = 0;
         }
         else
         {
            this.§_-2F§ &= ~b2internal::_-7N;
            this.§_-VG§ = 0;
            this.§_-Ng§.§_-Vw§();
            this.m_angularVelocity = 0;
            this.§_-6I§.§_-Vw§();
            this.§_-Cq§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§_-2F§ & b2internal::_-7N) == b2internal::_-7N;
      }
      
      public function §_-8q§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-2F§ |= b2internal::_-Pm;
         }
         else
         {
            this.§_-2F§ &= ~b2internal::_-Pm;
         }
         this.§_-Fs§();
      }
      
      public function §_-dk§() : Boolean
      {
         return (this.§_-2F§ & b2internal::_-Pm) == b2internal::_-Pm;
      }
      
      public function §_-eo§(param1:Boolean) : void
      {
         var _loc2_:§_-ei§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§_-2Y§())
         {
            return;
         }
         if(param1)
         {
            this.§_-2F§ |= b2internal::_-hV;
            _loc2_ = this.m_world.§_-pk§.§_-qs§;
            _loc3_ = this.§_-4v§;
            while(_loc3_)
            {
               _loc3_.§_-A5§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§_-AX§;
            }
         }
         else
         {
            this.§_-2F§ &= ~b2internal::_-hV;
            _loc2_ = this.m_world.§_-pk§.§_-qs§;
            _loc3_ = this.§_-4v§;
            while(_loc3_)
            {
               _loc3_.§_-Uu§(_loc2_);
               _loc3_ = _loc3_.§_-AX§;
            }
            _loc4_ = this.§_-kI§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§_-kL§;
               this.m_world.§_-pk§.§_-1m§(_loc5_.§_-vb§);
            }
            this.§_-kI§ = null;
         }
      }
      
      public function §_-2Y§() : Boolean
      {
         return (this.§_-2F§ & b2internal::_-hV) == b2internal::_-hV;
      }
      
      public function §_-Zp§() : Boolean
      {
         return (this.§_-2F§ & b2internal::_-Pu) == b2internal::_-Pu;
      }
      
      public function §_-TL§() : b2Fixture
      {
         return this.§_-4v§;
      }
      
      public function §_-BT§() : b2JointEdge
      {
         return this.§_-8s§;
      }
      
      public function §_-SP§() : b2ControllerEdge
      {
         return this.§_-wG§;
      }
      
      public function §_-c4§() : b2ContactEdge
      {
         return this.§_-kI§;
      }
      
      public function §_-mR§() : b2Body
      {
         return this.§_-AX§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-cT§;
      }
      
      public function §_-mK§(param1:*) : void
      {
         this.§_-cT§ = param1;
      }
      
      public function §_-9U§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §_-i1§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §_-oD§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§_-ei§ = this.m_world.§_-pk§.§_-qs§;
         _loc4_ = this.§_-4v§;
         while(_loc4_)
         {
            _loc4_.§_-av§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§_-AX§;
         }
      }
      
      b2internal function §_-Ax§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §_-Hz§(param1:b2Body) : Boolean
      {
         if(this.§_-K9§ != b2_dynamicBody && param1.§_-K9§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§_-8s§;
         while(_loc2_)
         {
            if(_loc2_.§_-Vi§ == param1)
            {
               if(_loc2_.§_-bO§.§_-b-§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§_-kL§;
         }
         return true;
      }
      
      b2internal function §_-d5§(param1:Number) : void
      {
         this.m_sweep.§_-d5§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§_-Ax§();
      }
   }
}

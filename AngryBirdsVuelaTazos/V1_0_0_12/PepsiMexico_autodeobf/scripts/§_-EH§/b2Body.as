package §_-EH§
{
   import §_-9z§.b2Mat22;
   import §_-9z§.b2Math;
   import §_-9z§.b2Sweep;
   import §_-9z§.b2Transform;
   import §_-9z§.b2Vec2;
   import §_-Bt§.b2EdgeShape;
   import §_-Bt§.b2MassData;
   import §_-Bt§.b2Shape;
   import §_-GC§.b2ControllerEdge;
   import §_-Nw§.§_-vU§;
   import §_-Ox§.b2JointEdge;
   import §_-j6§.b2Contact;
   import §_-j6§.b2ContactEdge;
   import §_-sU§.b2Settings;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §_-R0§:b2Transform = new b2Transform();
      
      b2internal static var §_-7w§:uint = 1;
      
      b2internal static var §_-DN§:uint = 2;
      
      b2internal static var §_-g4§:uint = 4;
      
      b2internal static var §_-vy§:uint = 8;
      
      b2internal static var §_-tm§:uint = 16;
      
      b2internal static var §_-fj§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §_-QK§:uint;
      
      b2internal var §_-g1§:int;
      
      b2internal var §_-Qm§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §_-wk§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §_-6Z§:b2Vec2;
      
      b2internal var §_-91§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §_-3w§:b2Body;
      
      b2internal var §_-GH§:b2Body;
      
      b2internal var §_-WO§:b2Fixture;
      
      b2internal var §_-t7§:int;
      
      b2internal var §_-ne§:b2ControllerEdge;
      
      b2internal var §_-Gc§:int;
      
      b2internal var §_-kc§:b2JointEdge;
      
      b2internal var §_-Al§:b2ContactEdge;
      
      b2internal var §_-hE§:Number;
      
      b2internal var §_-dH§:Number;
      
      b2internal var §_-Gl§:Number;
      
      b2internal var §_-sp§:Number;
      
      b2internal var §_-Dx§:Number;
      
      b2internal var §_-gx§:Number;
      
      b2internal var §_-KX§:Number;
      
      b2internal var §_-UX§:Number;
      
      private var §_-t4§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§_-wk§ = new b2Vec2();
         this.§_-6Z§ = new b2Vec2();
         super();
         this.§_-QK§ = 0;
         if(param1.§_-IK§)
         {
            this.§_-QK§ |= b2internal::_-vy;
         }
         if(param1.§_-in§)
         {
            this.§_-QK§ |= b2internal::_-tm;
         }
         if(param1.§_-bY§)
         {
            this.§_-QK§ |= b2internal::_-g4;
         }
         if(param1.§_-f5§)
         {
            this.§_-QK§ |= b2internal::_-DN;
         }
         if(param1.§_-8§)
         {
            this.§_-QK§ |= b2internal::_-fj;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§_-TJ§();
         this.m_sweep.§_-Mv§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§_-kc§ = null;
         this.§_-ne§ = null;
         this.§_-Al§ = null;
         this.§_-Gc§ = 0;
         this.§_-3w§ = null;
         this.§_-GH§ = null;
         this.§_-wk§.SetV(param1.§_-3s§);
         this.m_angularVelocity = param1.§_-0x§;
         this.§_-gx§ = param1.§_-ma§;
         this.§_-KX§ = param1.§_-Tj§;
         this.§_-6Z§.Set(0,0);
         this.§_-91§ = 0;
         this.§_-UX§ = 0;
         this.§_-g1§ = param1.type;
         if(this.§_-g1§ == b2_dynamicBody)
         {
            this.§_-hE§ = 1;
            this.§_-dH§ = 1;
         }
         else
         {
            this.§_-hE§ = 0;
            this.§_-dH§ = 0;
         }
         this.§_-Gl§ = 0;
         this.§_-sp§ = 0;
         this.§_-Dx§ = param1.§_-F8§;
         this.§_-t4§ = param1.§_-ZT§;
         this.§_-WO§ = null;
         this.§_-t7§ = 0;
      }
      
      private function §_-Kw§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§_-mD§().y,param2.§_-mD§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§_-EU§(_loc5_,param2.§_-mD§());
         _loc6_ = b2Math.§_-9M§(_loc6_,param2.§_-Oz§());
         _loc6_ = b2Math.§_-EU§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§_-ip§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§_-ip§(param1.§_-mD§(),param2.§_-mD§())).Normalize();
         var _loc8_:* = b2Math.§_-aI§(param1.§_-mD§(),param2.§_-Oz§()) > 0;
         param1.§_-iW§(param2,_loc6_,_loc7_,_loc8_);
         param2.§_-DV§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §_-K8§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§_-vU§ = null;
         if(this.m_world.§_-Ro§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§_-1Z§(this,this.m_xf,param1);
         if(this.§_-QK§ & b2internal::_-fj)
         {
            _loc3_ = this.m_world.§_-Hh§.§_-2x§;
            _loc2_.§_-S3§(_loc3_,this.m_xf);
         }
         _loc2_.§_-GH§ = this.§_-WO§;
         this.§_-WO§ = _loc2_;
         ++this.§_-t7§;
         _loc2_.m_body = this;
         if(_loc2_.§_-fe§ > 0)
         {
            this.§_-uV§();
         }
         this.m_world.§_-QK§ |= b2World.§_-TG§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§_-K8§(_loc3_);
      }
      
      public function §_-xC§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§_-vU§ = null;
         if(this.m_world.§_-Ro§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§_-WO§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§_-GH§ = param1.§_-GH§;
               }
               else
               {
                  this.§_-WO§ = param1.§_-GH§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§_-GH§;
         }
         var _loc5_:b2ContactEdge = this.§_-Al§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§_-CT§;
            _loc5_ = _loc5_.§_-3N§;
            _loc7_ = _loc6_.§_-uy§();
            _loc8_ = _loc6_.§_-WC§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§_-Hh§.§else§(_loc6_);
            }
         }
         if(this.§_-QK§ & b2internal::_-fj)
         {
            _loc9_ = this.m_world.§_-Hh§.§_-2x§;
            param1.§_-r5§(_loc9_);
         }
         param1.§else§();
         param1.m_body = null;
         param1.§_-GH§ = null;
         --this.§_-t7§;
         this.§_-uV§();
      }
      
      public function §_-xF§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§_-Ro§() == true)
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
         var _loc6_:§_-vU§ = this.m_world.§_-Hh§.§_-2x§;
         _loc3_ = this.§_-WO§;
         while(_loc3_)
         {
            _loc3_.§_-Hl§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§_-GH§;
         }
         this.m_world.§_-Hh§.§_-sl§();
      }
      
      public function §_-Aw§(param1:b2Transform) : void
      {
         this.§_-xF§(param1.position,param1.GetAngle());
      }
      
      public function §return§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §_-Pm§(param1:b2Vec2) : void
      {
         this.§_-xF§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §_-bo§(param1:Number) : void
      {
         this.§_-xF§(this.GetPosition(),param1);
      }
      
      public function §_-s8§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §_-uZ§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§_-g1§ == b2_staticBody)
         {
            return;
         }
         this.§_-wk§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§_-wk§;
      }
      
      public function §_-gP§(param1:Number) : void
      {
         if(this.§_-g1§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §_-A§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§_-7L§();
         _loc1_.§_-bY§ = (this.§_-QK§ & b2internal::_-g4) == b2internal::_-g4;
         _loc1_.angle = this.GetAngle();
         _loc1_.§_-Tj§ = this.§_-KX§;
         _loc1_.§_-0x§ = this.m_angularVelocity;
         _loc1_.§_-in§ = (this.§_-QK§ & b2internal::_-tm) == b2internal::_-tm;
         _loc1_.§_-IK§ = (this.§_-QK§ & b2internal::_-vy) == b2internal::_-vy;
         _loc1_.§_-f5§ = (this.§_-QK§ & b2internal::_-DN) == b2internal::_-DN;
         _loc1_.§_-ma§ = this.§_-gx§;
         _loc1_.§_-3s§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§_-ZT§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §_-sd§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-g1§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-6Z§.x += param1.x;
         this.§_-6Z§.y += param1.y;
         this.§_-91§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §_-20§(param1:Number) : void
      {
         if(this.§_-g1§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-91§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-g1§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-wk§.x += this.§_-dH§ * param1.x;
         this.§_-wk§.y += this.§_-dH§ * param1.y;
         this.m_angularVelocity += this.§_-sp§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §_-YI§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§_-s8§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§_-kv§(this.§_-A§());
         var _loc8_:b2Fixture = _loc5_.§_-WO§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§_-GH§;
               if(_loc7_)
               {
                  _loc7_.§_-GH§ = _loc13_;
               }
               else
               {
                  _loc5_.§_-WO§ = _loc13_;
               }
               --_loc5_.§_-t7§;
               _loc8_.§_-GH§ = _loc6_.§_-WO§;
               _loc6_.§_-WO§ = _loc8_;
               ++_loc6_.§_-t7§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§_-GH§;
            }
         }
         _loc5_.§_-uV§();
         _loc6_.§_-uV§();
         var _loc9_:b2Vec2 = _loc5_.§_-s8§();
         var _loc10_:b2Vec2 = _loc6_.§_-s8§();
         var _loc11_:b2Vec2 = b2Math.§_-ip§(_loc2_,b2Math.§_-Lf§(_loc3_,b2Math.§_-9M§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§_-ip§(_loc2_,b2Math.§_-Lf§(_loc3_,b2Math.§_-9M§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§_-gP§(_loc3_);
         _loc6_.§_-gP§(_loc3_);
         _loc5_.§_-q§();
         _loc6_.§_-q§();
         return _loc6_;
      }
      
      public function §_-3I§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§_-WO§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§_-GH§;
            --param1.§_-t7§;
            _loc2_.§_-GH§ = this.§_-WO§;
            this.§_-WO§ = _loc2_;
            ++this.§_-t7§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§_-t7§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§_-s8§();
         var _loc6_:b2Vec2 = _loc4_.§_-s8§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§_-uV§();
         this.§_-q§();
      }
      
      public function GetMass() : Number
      {
         return this.§_-hE§;
      }
      
      public function §_-n-§() : Number
      {
         return this.§_-Gl§;
      }
      
      public function §_-rd§(param1:b2MassData) : void
      {
         param1.§_-E8§ = this.§_-hE§;
         param1.§_-0i§ = this.§_-Gl§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §_-mY§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§_-Ro§() == false);
         if(this.m_world.§_-Ro§() == true)
         {
            return;
         }
         if(this.§_-g1§ != b2_dynamicBody)
         {
            return;
         }
         this.§_-dH§ = 0;
         this.§_-Gl§ = 0;
         this.§_-sp§ = 0;
         this.§_-hE§ = param1.§_-E8§;
         if(this.§_-hE§ <= 0)
         {
            this.§_-hE§ = 1;
         }
         this.§_-dH§ = 1 / this.§_-hE§;
         if(param1.§_-0i§ > 0 && (this.§_-QK§ & b2internal::_-tm) == 0)
         {
            this.§_-Gl§ = param1.§_-0i§ - this.§_-hE§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§_-sp§ = 1 / this.§_-Gl§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§_-sF§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§_-wk§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§_-wk§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §_-uV§() : void
      {
         var _loc4_:b2MassData = null;
         this.§_-hE§ = 0;
         this.§_-dH§ = 0;
         this.§_-Gl§ = 0;
         this.§_-sp§ = 0;
         this.m_sweep.localCenter.§_-TJ§();
         if(this.§_-g1§ == b2_staticBody || this.§_-g1§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§_-5J§(0,0);
         var _loc2_:b2Fixture = this.§_-WO§;
         while(_loc2_)
         {
            if(_loc2_.§_-fe§ != 0)
            {
               _loc4_ = _loc2_.§_-rd§();
               this.§_-hE§ += _loc4_.§_-E8§;
               _loc1_.x += _loc4_.center.x * _loc4_.§_-E8§;
               _loc1_.y += _loc4_.center.y * _loc4_.§_-E8§;
               this.§_-Gl§ += _loc4_.§_-0i§;
            }
            _loc2_ = _loc2_.§_-GH§;
         }
         if(this.§_-hE§ > 0)
         {
            this.§_-dH§ = 1 / this.§_-hE§;
            _loc1_.x *= this.§_-dH§;
            _loc1_.y *= this.§_-dH§;
         }
         else
         {
            this.§_-hE§ = 1;
            this.§_-dH§ = 1;
         }
         if(this.§_-Gl§ > 0 && (this.§_-QK§ & b2internal::_-tm) == 0)
         {
            this.§_-Gl§ -= this.§_-hE§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§_-Gl§ *= this.§_-Dx§;
            b2Settings.b2Assert(this.§_-Gl§ > 0);
            this.§_-sp§ = 1 / this.§_-Gl§;
         }
         else
         {
            this.§_-Gl§ = 0;
            this.§_-sp§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§_-sF§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§_-wk§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§_-wk§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §_-aR§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-0q§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-JI§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-fK§(this.m_xf.R,param1);
      }
      
      public function §_-64§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§_-wk§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§_-wk§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §_-ga§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§_-wk§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§_-wk§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §_-7F§() : Number
      {
         return this.§_-gx§;
      }
      
      public function §_-tW§(param1:Number) : void
      {
         this.§_-gx§ = param1;
      }
      
      public function §_-V1§() : Number
      {
         return this.§_-KX§;
      }
      
      public function §_-g-§(param1:Number) : void
      {
         this.§_-KX§ = param1;
      }
      
      public function §_-Il§(param1:uint) : void
      {
         if(this.§_-g1§ == param1)
         {
            return;
         }
         this.§_-g1§ = param1;
         this.§_-uV§();
         if(this.§_-g1§ == b2_staticBody)
         {
            this.§_-wk§.§_-TJ§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§_-6Z§.§_-TJ§();
         this.§_-91§ = 0;
         var _loc2_:b2ContactEdge = this.§_-Al§;
         while(_loc2_)
         {
            _loc2_.§_-CT§.§_-lp§();
            _loc2_ = _loc2_.§_-3N§;
         }
      }
      
      public function §_-7L§() : uint
      {
         return this.§_-g1§;
      }
      
      public function §_-SI§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-QK§ |= b2internal::_-vy;
         }
         else
         {
            this.§_-QK§ &= ~b2internal::_-vy;
         }
      }
      
      public function §_-sA§() : Boolean
      {
         return (this.§_-QK§ & b2internal::_-vy) == b2internal::_-vy;
      }
      
      public function §_-1l§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-QK§ |= b2internal::_-g4;
         }
         else
         {
            this.§_-QK§ &= ~b2internal::_-g4;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-QK§ |= b2internal::_-DN;
            this.§_-UX§ = 0;
         }
         else
         {
            this.§_-QK§ &= ~b2internal::_-DN;
            this.§_-UX§ = 0;
            this.§_-wk§.§_-TJ§();
            this.m_angularVelocity = 0;
            this.§_-6Z§.§_-TJ§();
            this.§_-91§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§_-QK§ & b2internal::_-DN) == b2internal::_-DN;
      }
      
      public function §_-ox§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-QK§ |= b2internal::_-tm;
         }
         else
         {
            this.§_-QK§ &= ~b2internal::_-tm;
         }
         this.§_-uV§();
      }
      
      public function §_-gH§() : Boolean
      {
         return (this.§_-QK§ & b2internal::_-tm) == b2internal::_-tm;
      }
      
      public function §_-iA§(param1:Boolean) : void
      {
         var _loc2_:§_-vU§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§_-YL§())
         {
            return;
         }
         if(param1)
         {
            this.§_-QK§ |= b2internal::_-fj;
            _loc2_ = this.m_world.§_-Hh§.§_-2x§;
            _loc3_ = this.§_-WO§;
            while(_loc3_)
            {
               _loc3_.§_-S3§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§_-GH§;
            }
         }
         else
         {
            this.§_-QK§ &= ~b2internal::_-fj;
            _loc2_ = this.m_world.§_-Hh§.§_-2x§;
            _loc3_ = this.§_-WO§;
            while(_loc3_)
            {
               _loc3_.§_-r5§(_loc2_);
               _loc3_ = _loc3_.§_-GH§;
            }
            _loc4_ = this.§_-Al§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§_-3N§;
               this.m_world.§_-Hh§.§else§(_loc5_.§_-CT§);
            }
            this.§_-Al§ = null;
         }
      }
      
      public function §_-YL§() : Boolean
      {
         return (this.§_-QK§ & b2internal::_-fj) == b2internal::_-fj;
      }
      
      public function §_-fS§() : Boolean
      {
         return (this.§_-QK§ & b2internal::_-g4) == b2internal::_-g4;
      }
      
      public function §_-Hx§() : b2Fixture
      {
         return this.§_-WO§;
      }
      
      public function §_-YM§() : b2JointEdge
      {
         return this.§_-kc§;
      }
      
      public function §_-3-§() : b2ControllerEdge
      {
         return this.§_-ne§;
      }
      
      public function §_-JW§() : b2ContactEdge
      {
         return this.§_-Al§;
      }
      
      public function §_-nc§() : b2Body
      {
         return this.§_-GH§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-t4§;
      }
      
      public function §_-wK§(param1:*) : void
      {
         this.§_-t4§ = param1;
      }
      
      public function §_-ms§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §_-q§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §_-R0§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§_-vU§ = this.m_world.§_-Hh§.§_-2x§;
         _loc4_ = this.§_-WO§;
         while(_loc4_)
         {
            _loc4_.§_-Hl§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§_-GH§;
         }
      }
      
      b2internal function §_-dS§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §_-WT§(param1:b2Body) : Boolean
      {
         if(this.§_-g1§ != b2_dynamicBody && param1.§_-g1§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§_-kc§;
         while(_loc2_)
         {
            if(_loc2_.§_-og§ == param1)
            {
               if(_loc2_.§_-pW§.§_-Sh§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§_-3N§;
         }
         return true;
      }
      
      b2internal function §_-qB§(param1:Number) : void
      {
         this.m_sweep.§_-qB§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§_-dS§();
      }
   }
}

package §_-WW§
{
   import §_-26§.b2EdgeShape;
   import §_-26§.b2MassData;
   import §_-26§.b2Shape;
   import §_-E6§.b2JointEdge;
   import §_-cw§.b2Contact;
   import §_-cw§.b2ContactEdge;
   import §_-dx§.b2Mat22;
   import §_-dx§.b2Math;
   import §_-dx§.b2Sweep;
   import §_-dx§.b2Transform;
   import §_-dx§.b2Vec2;
   import §_-iK§.b2ControllerEdge;
   import §_-iO§.b2Settings;
   import §_-iO§.b2internal;
   import §_-tK§.§_-S8§;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §_-SN§:b2Transform = new b2Transform();
      
      b2internal static var §_-MQ§:uint = 1;
      
      b2internal static var §_-qD§:uint = 2;
      
      b2internal static var §_-RR§:uint = 4;
      
      b2internal static var §_-iS§:uint = 8;
      
      b2internal static var §_-75§:uint = 16;
      
      b2internal static var §_-v6§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §_-Sr§:uint;
      
      b2internal var §_-9f§:int;
      
      b2internal var §_-q0§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §_-Ce§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §_-5E§:b2Vec2;
      
      b2internal var §_-uX§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §_-mb§:b2Body;
      
      b2internal var §_-Lg§:b2Body;
      
      b2internal var §_-i4§:b2Fixture;
      
      b2internal var §_-tS§:int;
      
      b2internal var §_-4F§:b2ControllerEdge;
      
      b2internal var §_-Jl§:int;
      
      b2internal var §_-9w§:b2JointEdge;
      
      b2internal var §_-Zv§:b2ContactEdge;
      
      b2internal var §_-dz§:Number;
      
      b2internal var §_-YH§:Number;
      
      b2internal var §_-Lb§:Number;
      
      b2internal var §_-49§:Number;
      
      b2internal var §_-hN§:Number;
      
      b2internal var §_-C§:Number;
      
      b2internal var §_-S-§:Number;
      
      b2internal var §_-lx§:Number;
      
      private var §_-3M§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§_-Ce§ = new b2Vec2();
         this.§_-5E§ = new b2Vec2();
         super();
         this.§_-Sr§ = 0;
         if(param1.§_-XV§)
         {
            this.§_-Sr§ |= b2internal::_-iS;
         }
         if(param1.§_-IT§)
         {
            this.§_-Sr§ |= b2internal::_-75;
         }
         if(param1.§_-tZ§)
         {
            this.§_-Sr§ |= b2internal::_-RR;
         }
         if(param1.§_-lQ§)
         {
            this.§_-Sr§ |= b2internal::_-qD;
         }
         if(param1.§_-az§)
         {
            this.§_-Sr§ |= b2internal::_-v6;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§_-pZ§();
         this.m_sweep.§_-Oc§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§_-9w§ = null;
         this.§_-4F§ = null;
         this.§_-Zv§ = null;
         this.§_-Jl§ = 0;
         this.§_-mb§ = null;
         this.§_-Lg§ = null;
         this.§_-Ce§.SetV(param1.§_-jl§);
         this.m_angularVelocity = param1.§_-2A§;
         this.§_-C§ = param1.§_-JW§;
         this.§_-S-§ = param1.§_-cj§;
         this.§_-5E§.Set(0,0);
         this.§_-uX§ = 0;
         this.§_-lx§ = 0;
         this.§_-9f§ = param1.type;
         if(this.§_-9f§ == b2_dynamicBody)
         {
            this.§_-dz§ = 1;
            this.§_-YH§ = 1;
         }
         else
         {
            this.§_-dz§ = 0;
            this.§_-YH§ = 0;
         }
         this.§_-Lb§ = 0;
         this.§_-49§ = 0;
         this.§_-hN§ = param1.§_-Cs§;
         this.§_-3M§ = param1.§_-5W§;
         this.§_-i4§ = null;
         this.§_-tS§ = 0;
      }
      
      private function §_-2e§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§_-hx§().y,param2.§_-hx§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§_-qH§(_loc5_,param2.§_-hx§());
         _loc6_ = b2Math.§_-L6§(_loc6_,param2.§_-4o§());
         _loc6_ = b2Math.§_-qH§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§_-Fw§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§_-Fw§(param1.§_-hx§(),param2.§_-hx§())).Normalize();
         var _loc8_:* = b2Math.§_-I1§(param1.§_-hx§(),param2.§_-4o§()) > 0;
         param1.§_-6J§(param2,_loc6_,_loc7_,_loc8_);
         param2.§_-ni§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §_-4G§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§_-S8§ = null;
         if(this.m_world.§_-OM§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§_-JU§(this,this.m_xf,param1);
         if(this.§_-Sr§ & b2internal::_-v6)
         {
            _loc3_ = this.m_world.§_-7a§.§_-ZV§;
            _loc2_.§_-BX§(_loc3_,this.m_xf);
         }
         _loc2_.§_-Lg§ = this.§_-i4§;
         this.§_-i4§ = _loc2_;
         ++this.§_-tS§;
         _loc2_.m_body = this;
         if(_loc2_.§_-73§ > 0)
         {
            this.§_-KV§();
         }
         this.m_world.§_-Sr§ |= b2World.§_-0f§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§_-4G§(_loc3_);
      }
      
      public function §_-UA§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§_-S8§ = null;
         if(this.m_world.§_-OM§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§_-i4§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§_-Lg§ = param1.§_-Lg§;
               }
               else
               {
                  this.§_-i4§ = param1.§_-Lg§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§_-Lg§;
         }
         var _loc5_:b2ContactEdge = this.§_-Zv§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§_-xH§;
            _loc5_ = _loc5_.§_-70§;
            _loc7_ = _loc6_.§_-8a§();
            _loc8_ = _loc6_.§_-tA§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§_-7a§.§_-Hh§(_loc6_);
            }
         }
         if(this.§_-Sr§ & b2internal::_-v6)
         {
            _loc9_ = this.m_world.§_-7a§.§_-ZV§;
            param1.§_-o1§(_loc9_);
         }
         param1.§_-Hh§();
         param1.m_body = null;
         param1.§_-Lg§ = null;
         --this.§_-tS§;
         this.§_-KV§();
      }
      
      public function §_-5O§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§_-OM§() == true)
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
         var _loc6_:§_-S8§ = this.m_world.§_-7a§.§_-ZV§;
         _loc3_ = this.§_-i4§;
         while(_loc3_)
         {
            _loc3_.§_-EK§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§_-Lg§;
         }
         this.m_world.§_-7a§.§_-3F§();
      }
      
      public function §_-cr§(param1:b2Transform) : void
      {
         this.§_-5O§(param1.position,param1.GetAngle());
      }
      
      public function §_-LW§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §_-5s§(param1:b2Vec2) : void
      {
         this.§_-5O§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §_-Xb§(param1:Number) : void
      {
         this.§_-5O§(this.GetPosition(),param1);
      }
      
      public function §_-Hj§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §_-Zk§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§_-9f§ == b2_staticBody)
         {
            return;
         }
         this.§_-Ce§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§_-Ce§;
      }
      
      public function §_-sw§(param1:Number) : void
      {
         if(this.§_-9f§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §_-oo§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§_-AY§();
         _loc1_.§_-tZ§ = (this.§_-Sr§ & b2internal::_-RR) == b2internal::_-RR;
         _loc1_.angle = this.GetAngle();
         _loc1_.§_-cj§ = this.§_-S-§;
         _loc1_.§_-2A§ = this.m_angularVelocity;
         _loc1_.§_-IT§ = (this.§_-Sr§ & b2internal::_-75) == b2internal::_-75;
         _loc1_.§_-XV§ = (this.§_-Sr§ & b2internal::_-iS) == b2internal::_-iS;
         _loc1_.§_-lQ§ = (this.§_-Sr§ & b2internal::_-qD) == b2internal::_-qD;
         _loc1_.§_-JW§ = this.§_-C§;
         _loc1_.§_-jl§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§_-5W§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §_-gk§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-9f§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-5E§.x += param1.x;
         this.§_-5E§.y += param1.y;
         this.§_-uX§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §_-VA§(param1:Number) : void
      {
         if(this.§_-9f§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-uX§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-9f§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-Ce§.x += this.§_-YH§ * param1.x;
         this.§_-Ce§.y += this.§_-YH§ * param1.y;
         this.m_angularVelocity += this.§_-49§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §_-Ar§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§_-Hj§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§_-LE§(this.§_-oo§());
         var _loc8_:b2Fixture = _loc5_.§_-i4§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§_-Lg§;
               if(_loc7_)
               {
                  _loc7_.§_-Lg§ = _loc13_;
               }
               else
               {
                  _loc5_.§_-i4§ = _loc13_;
               }
               --_loc5_.§_-tS§;
               _loc8_.§_-Lg§ = _loc6_.§_-i4§;
               _loc6_.§_-i4§ = _loc8_;
               ++_loc6_.§_-tS§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§_-Lg§;
            }
         }
         _loc5_.§_-KV§();
         _loc6_.§_-KV§();
         var _loc9_:b2Vec2 = _loc5_.§_-Hj§();
         var _loc10_:b2Vec2 = _loc6_.§_-Hj§();
         var _loc11_:b2Vec2 = b2Math.§_-Fw§(_loc2_,b2Math.§_-w§(_loc3_,b2Math.§_-L6§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§_-Fw§(_loc2_,b2Math.§_-w§(_loc3_,b2Math.§_-L6§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§_-sw§(_loc3_);
         _loc6_.§_-sw§(_loc3_);
         _loc5_.§_-bx§();
         _loc6_.§_-bx§();
         return _loc6_;
      }
      
      public function §_-VL§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§_-i4§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§_-Lg§;
            --param1.§_-tS§;
            _loc2_.§_-Lg§ = this.§_-i4§;
            this.§_-i4§ = _loc2_;
            ++this.§_-tS§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§_-tS§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§_-Hj§();
         var _loc6_:b2Vec2 = _loc4_.§_-Hj§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§_-KV§();
         this.§_-bx§();
      }
      
      public function GetMass() : Number
      {
         return this.§_-dz§;
      }
      
      public function §_-Ga§() : Number
      {
         return this.§_-Lb§;
      }
      
      public function §_-PU§(param1:b2MassData) : void
      {
         param1.§_-YY§ = this.§_-dz§;
         param1.§_-A1§ = this.§_-Lb§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §_-ea§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§_-OM§() == false);
         if(this.m_world.§_-OM§() == true)
         {
            return;
         }
         if(this.§_-9f§ != b2_dynamicBody)
         {
            return;
         }
         this.§_-YH§ = 0;
         this.§_-Lb§ = 0;
         this.§_-49§ = 0;
         this.§_-dz§ = param1.§_-YY§;
         if(this.§_-dz§ <= 0)
         {
            this.§_-dz§ = 1;
         }
         this.§_-YH§ = 1 / this.§_-dz§;
         if(param1.§_-A1§ > 0 && (this.§_-Sr§ & b2internal::_-75) == 0)
         {
            this.§_-Lb§ = param1.§_-A1§ - this.§_-dz§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§_-49§ = 1 / this.§_-Lb§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§_-nn§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§_-Ce§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§_-Ce§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §_-KV§() : void
      {
         var _loc4_:b2MassData = null;
         this.§_-dz§ = 0;
         this.§_-YH§ = 0;
         this.§_-Lb§ = 0;
         this.§_-49§ = 0;
         this.m_sweep.localCenter.§_-pZ§();
         if(this.§_-9f§ == b2_staticBody || this.§_-9f§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§catch§(0,0);
         var _loc2_:b2Fixture = this.§_-i4§;
         while(_loc2_)
         {
            if(_loc2_.§_-73§ != 0)
            {
               _loc4_ = _loc2_.§_-PU§();
               this.§_-dz§ += _loc4_.§_-YY§;
               _loc1_.x += _loc4_.center.x * _loc4_.§_-YY§;
               _loc1_.y += _loc4_.center.y * _loc4_.§_-YY§;
               this.§_-Lb§ += _loc4_.§_-A1§;
            }
            _loc2_ = _loc2_.§_-Lg§;
         }
         if(this.§_-dz§ > 0)
         {
            this.§_-YH§ = 1 / this.§_-dz§;
            _loc1_.x *= this.§_-YH§;
            _loc1_.y *= this.§_-YH§;
         }
         else
         {
            this.§_-dz§ = 1;
            this.§_-YH§ = 1;
         }
         if(this.§_-Lb§ > 0 && (this.§_-Sr§ & b2internal::_-75) == 0)
         {
            this.§_-Lb§ -= this.§_-dz§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§_-Lb§ *= this.§_-hN§;
            b2Settings.b2Assert(this.§_-Lb§ > 0);
            this.§_-49§ = 1 / this.§_-Lb§;
         }
         else
         {
            this.§_-Lb§ = 0;
            this.§_-49§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§_-nn§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§_-Ce§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§_-Ce§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §_-sz§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-IM§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-lE§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-vC§(this.m_xf.R,param1);
      }
      
      public function §_-gd§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§_-Ce§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§_-Ce§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §_-h5§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§_-Ce§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§_-Ce§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §_-Xx§() : Number
      {
         return this.§_-C§;
      }
      
      public function §_-xD§(param1:Number) : void
      {
         this.§_-C§ = param1;
      }
      
      public function §_-6D§() : Number
      {
         return this.§_-S-§;
      }
      
      public function §_-r4§(param1:Number) : void
      {
         this.§_-S-§ = param1;
      }
      
      public function §_-Za§(param1:uint) : void
      {
         if(this.§_-9f§ == param1)
         {
            return;
         }
         this.§_-9f§ = param1;
         this.§_-KV§();
         if(this.§_-9f§ == b2_staticBody)
         {
            this.§_-Ce§.§_-pZ§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§_-5E§.§_-pZ§();
         this.§_-uX§ = 0;
         var _loc2_:b2ContactEdge = this.§_-Zv§;
         while(_loc2_)
         {
            _loc2_.§_-xH§.§_-1l§();
            _loc2_ = _loc2_.§_-70§;
         }
      }
      
      public function §_-AY§() : uint
      {
         return this.§_-9f§;
      }
      
      public function §_-ep§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Sr§ |= b2internal::_-iS;
         }
         else
         {
            this.§_-Sr§ &= ~b2internal::_-iS;
         }
      }
      
      public function §_-2u§() : Boolean
      {
         return (this.§_-Sr§ & b2internal::_-iS) == b2internal::_-iS;
      }
      
      public function §_-TB§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Sr§ |= b2internal::_-RR;
         }
         else
         {
            this.§_-Sr§ &= ~b2internal::_-RR;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Sr§ |= b2internal::_-qD;
            this.§_-lx§ = 0;
         }
         else
         {
            this.§_-Sr§ &= ~b2internal::_-qD;
            this.§_-lx§ = 0;
            this.§_-Ce§.§_-pZ§();
            this.m_angularVelocity = 0;
            this.§_-5E§.§_-pZ§();
            this.§_-uX§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§_-Sr§ & b2internal::_-qD) == b2internal::_-qD;
      }
      
      public function §_-pd§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Sr§ |= b2internal::_-75;
         }
         else
         {
            this.§_-Sr§ &= ~b2internal::_-75;
         }
         this.§_-KV§();
      }
      
      public function §_-Qt§() : Boolean
      {
         return (this.§_-Sr§ & b2internal::_-75) == b2internal::_-75;
      }
      
      public function §_-Ge§(param1:Boolean) : void
      {
         var _loc2_:§_-S8§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§_-ml§())
         {
            return;
         }
         if(param1)
         {
            this.§_-Sr§ |= b2internal::_-v6;
            _loc2_ = this.m_world.§_-7a§.§_-ZV§;
            _loc3_ = this.§_-i4§;
            while(_loc3_)
            {
               _loc3_.§_-BX§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§_-Lg§;
            }
         }
         else
         {
            this.§_-Sr§ &= ~b2internal::_-v6;
            _loc2_ = this.m_world.§_-7a§.§_-ZV§;
            _loc3_ = this.§_-i4§;
            while(_loc3_)
            {
               _loc3_.§_-o1§(_loc2_);
               _loc3_ = _loc3_.§_-Lg§;
            }
            _loc4_ = this.§_-Zv§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§_-70§;
               this.m_world.§_-7a§.§_-Hh§(_loc5_.§_-xH§);
            }
            this.§_-Zv§ = null;
         }
      }
      
      public function §_-ml§() : Boolean
      {
         return (this.§_-Sr§ & b2internal::_-v6) == b2internal::_-v6;
      }
      
      public function §_-ki§() : Boolean
      {
         return (this.§_-Sr§ & b2internal::_-RR) == b2internal::_-RR;
      }
      
      public function §_-jg§() : b2Fixture
      {
         return this.§_-i4§;
      }
      
      public function §_-Qp§() : b2JointEdge
      {
         return this.§_-9w§;
      }
      
      public function §_-tp§() : b2ControllerEdge
      {
         return this.§_-4F§;
      }
      
      public function §_-s8§() : b2ContactEdge
      {
         return this.§_-Zv§;
      }
      
      public function §_-7P§() : b2Body
      {
         return this.§_-Lg§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-3M§;
      }
      
      public function §_-t4§(param1:*) : void
      {
         this.§_-3M§ = param1;
      }
      
      public function §_-78§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §_-bx§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §_-SN§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§_-S8§ = this.m_world.§_-7a§.§_-ZV§;
         _loc4_ = this.§_-i4§;
         while(_loc4_)
         {
            _loc4_.§_-EK§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§_-Lg§;
         }
      }
      
      b2internal function §_-B0§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §_-GT§(param1:b2Body) : Boolean
      {
         if(this.§_-9f§ != b2_dynamicBody && param1.§_-9f§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§_-9w§;
         while(_loc2_)
         {
            if(_loc2_.§_-ik§ == param1)
            {
               if(_loc2_.§_-OV§.§_-3G§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§_-70§;
         }
         return true;
      }
      
      b2internal function §_-N9§(param1:Number) : void
      {
         this.m_sweep.§_-N9§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§_-B0§();
      }
   }
}

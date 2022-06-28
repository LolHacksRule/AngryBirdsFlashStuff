package §_-aU§
{
   import §_-03n§.b2EdgeShape;
   import §_-03n§.b2MassData;
   import §_-03n§.b2Shape;
   import §_-09-§.b2JointEdge;
   import §_-0DM§.b2Contact;
   import §_-0DM§.b2ContactEdge;
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-YZ§.b2ControllerEdge;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Sweep;
   import §_-Yp§.b2Transform;
   import §_-Yp§.b2Vec2;
   import §_-gE§.§_-We§;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §_-X0§:b2Transform = new b2Transform();
      
      b2internal static var §_-0AI§:uint = 1;
      
      b2internal static var §_-Lb§:uint = 2;
      
      b2internal static var §_-W7§:uint = 4;
      
      b2internal static var §_-0-F§:uint = 8;
      
      b2internal static var §_-XJ§:uint = 16;
      
      b2internal static var §_-cp§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §_-7R§:uint;
      
      b2internal var §_-1c§:int;
      
      b2internal var §_-Sb§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §_-kZ§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §_-wp§:b2Vec2;
      
      b2internal var §_-cH§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §_-021§:b2Body;
      
      b2internal var §_-oz§:b2Body;
      
      b2internal var §_-7L§:b2Fixture;
      
      b2internal var §_-jM§:int;
      
      b2internal var §_-DZ§:b2ControllerEdge;
      
      b2internal var §_-04s§:int;
      
      b2internal var §_-6c§:b2JointEdge;
      
      b2internal var §_-4p§:b2ContactEdge;
      
      b2internal var §_-5W§:Number;
      
      b2internal var §_-03A§:Number;
      
      b2internal var §_-Eq§:Number;
      
      b2internal var §_-Dz§:Number;
      
      b2internal var §_-Ld§:Number;
      
      b2internal var §_-aS§:Number;
      
      b2internal var §_-cz§:Number;
      
      b2internal var §_-yN§:Number;
      
      private var §_-oP§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§_-kZ§ = new b2Vec2();
         this.§_-wp§ = new b2Vec2();
         super();
         this.§_-7R§ = 0;
         if(param1.§_-mq§)
         {
            this.§_-7R§ |= b2internal::_-0-F;
         }
         if(param1.§_-0-u§)
         {
            this.§_-7R§ |= b2internal::_-XJ;
         }
         if(param1.§_-sD§)
         {
            this.§_-7R§ |= b2internal::_-W7;
         }
         if(param1.§_-Ba§)
         {
            this.§_-7R§ |= b2internal::_-Lb;
         }
         if(param1.§_-ag§)
         {
            this.§_-7R§ |= b2internal::_-cp;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§_-el§();
         this.m_sweep.§_-RN§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§_-6c§ = null;
         this.§_-DZ§ = null;
         this.§_-4p§ = null;
         this.§_-04s§ = 0;
         this.§_-021§ = null;
         this.§_-oz§ = null;
         this.§_-kZ§.SetV(param1.§_-02c§);
         this.m_angularVelocity = param1.§_-Hp§;
         this.§_-aS§ = param1.§_-ov§;
         this.§_-cz§ = param1.§_-ZI§;
         this.§_-wp§.Set(0,0);
         this.§_-cH§ = 0;
         this.§_-yN§ = 0;
         this.§_-1c§ = param1.type;
         if(this.§_-1c§ == b2_dynamicBody)
         {
            this.§_-5W§ = 1;
            this.§_-03A§ = 1;
         }
         else
         {
            this.§_-5W§ = 0;
            this.§_-03A§ = 0;
         }
         this.§_-Eq§ = 0;
         this.§_-Dz§ = 0;
         this.§_-Ld§ = param1.§_-sj§;
         this.§_-oP§ = param1.§_-05u§;
         this.§_-7L§ = null;
         this.§_-jM§ = 0;
      }
      
      private function §_-Mg§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§_-ja§().y,param2.§_-ja§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§_-xN§(_loc5_,param2.§_-ja§());
         _loc6_ = b2Math.§_-DO§(_loc6_,param2.§_-qL§());
         _loc6_ = b2Math.§_-xN§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§_-1K§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§_-1K§(param1.§_-ja§(),param2.§_-ja§())).Normalize();
         var _loc8_:* = b2Math.§_-r8§(param1.§_-ja§(),param2.§_-qL§()) > 0;
         param1.§_-n6§(param2,_loc6_,_loc7_,_loc8_);
         param2.§_-Xu§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §_-kX§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§_-We§ = null;
         if(this.m_world.§_-ZM§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§_-xb§(this,this.m_xf,param1);
         if(this.§_-7R§ & b2internal::_-cp)
         {
            _loc3_ = this.m_world.§_-Xl§.§_-Q-§;
            _loc2_.§_-7Y§(_loc3_,this.m_xf);
         }
         _loc2_.§_-oz§ = this.§_-7L§;
         this.§_-7L§ = _loc2_;
         ++this.§_-jM§;
         _loc2_.m_body = this;
         if(_loc2_.§_-9C§ > 0)
         {
            this.§_-6S§();
         }
         this.m_world.§_-7R§ |= b2World.§_-0DB§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§_-kX§(_loc3_);
      }
      
      public function §_-Iy§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§_-We§ = null;
         if(this.m_world.§_-ZM§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§_-7L§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§_-oz§ = param1.§_-oz§;
               }
               else
               {
                  this.§_-7L§ = param1.§_-oz§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§_-oz§;
         }
         var _loc5_:b2ContactEdge = this.§_-4p§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§_-20§;
            _loc5_ = _loc5_.§_-Oh§;
            _loc7_ = _loc6_.§_-k-§();
            _loc8_ = _loc6_.§_-7G§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§_-Xl§.§_-01§(_loc6_);
            }
         }
         if(this.§_-7R§ & b2internal::_-cp)
         {
            _loc9_ = this.m_world.§_-Xl§.§_-Q-§;
            param1.§_-yw§(_loc9_);
         }
         param1.§_-01§();
         param1.m_body = null;
         param1.§_-oz§ = null;
         --this.§_-jM§;
         this.§_-6S§();
      }
      
      public function §_-0CU§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§_-ZM§() == true)
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
         var _loc6_:§_-We§ = this.m_world.§_-Xl§.§_-Q-§;
         _loc3_ = this.§_-7L§;
         while(_loc3_)
         {
            _loc3_.§_-OO§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§_-oz§;
         }
         this.m_world.§_-Xl§.§_-Wx§();
      }
      
      public function §_-Uk§(param1:b2Transform) : void
      {
         this.§_-0CU§(param1.position,param1.GetAngle());
      }
      
      public function §_-tg§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §_-vE§(param1:b2Vec2) : void
      {
         this.§_-0CU§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §_-2T§(param1:Number) : void
      {
         this.§_-0CU§(this.GetPosition(),param1);
      }
      
      public function §_-Hi§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §_-9w§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§_-1c§ == b2_staticBody)
         {
            return;
         }
         this.§_-kZ§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§_-kZ§;
      }
      
      public function §_-ZF§(param1:Number) : void
      {
         if(this.§_-1c§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §_-06Y§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§_-oF§();
         _loc1_.§_-sD§ = (this.§_-7R§ & b2internal::_-W7) == b2internal::_-W7;
         _loc1_.angle = this.GetAngle();
         _loc1_.§_-ZI§ = this.§_-cz§;
         _loc1_.§_-Hp§ = this.m_angularVelocity;
         _loc1_.§_-0-u§ = (this.§_-7R§ & b2internal::_-XJ) == b2internal::_-XJ;
         _loc1_.§_-mq§ = (this.§_-7R§ & b2internal::_-0-F) == b2internal::_-0-F;
         _loc1_.§_-Ba§ = (this.§_-7R§ & b2internal::_-Lb) == b2internal::_-Lb;
         _loc1_.§_-ov§ = this.§_-aS§;
         _loc1_.§_-02c§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§_-05u§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §_-03m§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-1c§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-wp§.x += param1.x;
         this.§_-wp§.y += param1.y;
         this.§_-cH§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §_-rH§(param1:Number) : void
      {
         if(this.§_-1c§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-cH§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-1c§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-kZ§.x += this.§_-03A§ * param1.x;
         this.§_-kZ§.y += this.§_-03A§ * param1.y;
         this.m_angularVelocity += this.§_-Dz§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §_-Tk§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§_-Hi§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§_-S0§(this.§_-06Y§());
         var _loc8_:b2Fixture = _loc5_.§_-7L§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§_-oz§;
               if(_loc7_)
               {
                  _loc7_.§_-oz§ = _loc13_;
               }
               else
               {
                  _loc5_.§_-7L§ = _loc13_;
               }
               --_loc5_.§_-jM§;
               _loc8_.§_-oz§ = _loc6_.§_-7L§;
               _loc6_.§_-7L§ = _loc8_;
               ++_loc6_.§_-jM§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§_-oz§;
            }
         }
         _loc5_.§_-6S§();
         _loc6_.§_-6S§();
         var _loc9_:b2Vec2 = _loc5_.§_-Hi§();
         var _loc10_:b2Vec2 = _loc6_.§_-Hi§();
         var _loc11_:b2Vec2 = b2Math.§_-1K§(_loc2_,b2Math.§_-2t§(_loc3_,b2Math.§_-DO§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§_-1K§(_loc2_,b2Math.§_-2t§(_loc3_,b2Math.§_-DO§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§_-ZF§(_loc3_);
         _loc6_.§_-ZF§(_loc3_);
         _loc5_.§_-QG§();
         _loc6_.§_-QG§();
         return _loc6_;
      }
      
      public function §_-fO§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§_-7L§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§_-oz§;
            --param1.§_-jM§;
            _loc2_.§_-oz§ = this.§_-7L§;
            this.§_-7L§ = _loc2_;
            ++this.§_-jM§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§_-jM§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§_-Hi§();
         var _loc6_:b2Vec2 = _loc4_.§_-Hi§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§_-6S§();
         this.§_-QG§();
      }
      
      public function GetMass() : Number
      {
         return this.§_-5W§;
      }
      
      public function §_-0By§() : Number
      {
         return this.§_-Eq§;
      }
      
      public function §_-N5§(param1:b2MassData) : void
      {
         param1.§_-ze§ = this.§_-5W§;
         param1.§_-CG§ = this.§_-Eq§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §_-0Bp§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§_-ZM§() == false);
         if(this.m_world.§_-ZM§() == true)
         {
            return;
         }
         if(this.§_-1c§ != b2_dynamicBody)
         {
            return;
         }
         this.§_-03A§ = 0;
         this.§_-Eq§ = 0;
         this.§_-Dz§ = 0;
         this.§_-5W§ = param1.§_-ze§;
         if(this.§_-5W§ <= 0)
         {
            this.§_-5W§ = 1;
         }
         this.§_-03A§ = 1 / this.§_-5W§;
         if(param1.§_-CG§ > 0 && (this.§_-7R§ & b2internal::_-XJ) == 0)
         {
            this.§_-Eq§ = param1.§_-CG§ - this.§_-5W§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§_-Dz§ = 1 / this.§_-Eq§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§_-yP§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§_-kZ§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§_-kZ§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §_-6S§() : void
      {
         var _loc4_:b2MassData = null;
         this.§_-5W§ = 0;
         this.§_-03A§ = 0;
         this.§_-Eq§ = 0;
         this.§_-Dz§ = 0;
         this.m_sweep.localCenter.§_-el§();
         if(this.§_-1c§ == b2_staticBody || this.§_-1c§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§_-Wk§(0,0);
         var _loc2_:b2Fixture = this.§_-7L§;
         while(_loc2_)
         {
            if(_loc2_.§_-9C§ != 0)
            {
               _loc4_ = _loc2_.§_-N5§();
               this.§_-5W§ += _loc4_.§_-ze§;
               _loc1_.x += _loc4_.center.x * _loc4_.§_-ze§;
               _loc1_.y += _loc4_.center.y * _loc4_.§_-ze§;
               this.§_-Eq§ += _loc4_.§_-CG§;
            }
            _loc2_ = _loc2_.§_-oz§;
         }
         if(this.§_-5W§ > 0)
         {
            this.§_-03A§ = 1 / this.§_-5W§;
            _loc1_.x *= this.§_-03A§;
            _loc1_.y *= this.§_-03A§;
         }
         else
         {
            this.§_-5W§ = 1;
            this.§_-03A§ = 1;
         }
         if(this.§_-Eq§ > 0 && (this.§_-7R§ & b2internal::_-XJ) == 0)
         {
            this.§_-Eq§ -= this.§_-5W§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§_-Eq§ *= this.§_-Ld§;
            b2Settings.b2Assert(this.§_-Eq§ > 0);
            this.§_-Dz§ = 1 / this.§_-Eq§;
         }
         else
         {
            this.§_-Eq§ = 0;
            this.§_-Dz§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§_-yP§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§_-kZ§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§_-kZ§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §_-2R§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-S4§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-Yk§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-bf§(this.m_xf.R,param1);
      }
      
      public function §_-om§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§_-kZ§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§_-kZ§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §_-1§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§_-kZ§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§_-kZ§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §_-Aw§() : Number
      {
         return this.§_-aS§;
      }
      
      public function §_-ah§(param1:Number) : void
      {
         this.§_-aS§ = param1;
      }
      
      public function §_-m3§() : Number
      {
         return this.§_-cz§;
      }
      
      public function §_-1B§(param1:Number) : void
      {
         this.§_-cz§ = param1;
      }
      
      public function §_-pj§(param1:uint) : void
      {
         if(this.§_-1c§ == param1)
         {
            return;
         }
         this.§_-1c§ = param1;
         this.§_-6S§();
         if(this.§_-1c§ == b2_staticBody)
         {
            this.§_-kZ§.§_-el§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§_-wp§.§_-el§();
         this.§_-cH§ = 0;
         var _loc2_:b2ContactEdge = this.§_-4p§;
         while(_loc2_)
         {
            _loc2_.§_-20§.§_-FN§();
            _loc2_ = _loc2_.§_-Oh§;
         }
      }
      
      public function §_-oF§() : uint
      {
         return this.§_-1c§;
      }
      
      public function §_-pf§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-7R§ |= b2internal::_-0-F;
         }
         else
         {
            this.§_-7R§ &= ~b2internal::_-0-F;
         }
      }
      
      public function §_-02U§() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-0-F) == b2internal::_-0-F;
      }
      
      public function §_-MH§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-7R§ |= b2internal::_-W7;
         }
         else
         {
            this.§_-7R§ &= ~b2internal::_-W7;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-7R§ |= b2internal::_-Lb;
            this.§_-yN§ = 0;
         }
         else
         {
            this.§_-7R§ &= ~b2internal::_-Lb;
            this.§_-yN§ = 0;
            this.§_-kZ§.§_-el§();
            this.m_angularVelocity = 0;
            this.§_-wp§.§_-el§();
            this.§_-cH§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-Lb) == b2internal::_-Lb;
      }
      
      public function §_-3G§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-7R§ |= b2internal::_-XJ;
         }
         else
         {
            this.§_-7R§ &= ~b2internal::_-XJ;
         }
         this.§_-6S§();
      }
      
      public function §_-Ah§() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-XJ) == b2internal::_-XJ;
      }
      
      public function §_-Bd§(param1:Boolean) : void
      {
         var _loc2_:§_-We§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§_-04Z§())
         {
            return;
         }
         if(param1)
         {
            this.§_-7R§ |= b2internal::_-cp;
            _loc2_ = this.m_world.§_-Xl§.§_-Q-§;
            _loc3_ = this.§_-7L§;
            while(_loc3_)
            {
               _loc3_.§_-7Y§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§_-oz§;
            }
         }
         else
         {
            this.§_-7R§ &= ~b2internal::_-cp;
            _loc2_ = this.m_world.§_-Xl§.§_-Q-§;
            _loc3_ = this.§_-7L§;
            while(_loc3_)
            {
               _loc3_.§_-yw§(_loc2_);
               _loc3_ = _loc3_.§_-oz§;
            }
            _loc4_ = this.§_-4p§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§_-Oh§;
               this.m_world.§_-Xl§.§_-01§(_loc5_.§_-20§);
            }
            this.§_-4p§ = null;
         }
      }
      
      public function §_-04Z§() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-cp) == b2internal::_-cp;
      }
      
      public function §_-u6§() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-W7) == b2internal::_-W7;
      }
      
      public function §_-0DJ§() : b2Fixture
      {
         return this.§_-7L§;
      }
      
      public function §_-ip§() : b2JointEdge
      {
         return this.§_-6c§;
      }
      
      public function §_-3j§() : b2ControllerEdge
      {
         return this.§_-DZ§;
      }
      
      public function §_-qw§() : b2ContactEdge
      {
         return this.§_-4p§;
      }
      
      public function §_-02g§() : b2Body
      {
         return this.§_-oz§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-oP§;
      }
      
      public function §_-zJ§(param1:*) : void
      {
         this.§_-oP§ = param1;
      }
      
      public function §_-ZS§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §_-QG§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §_-X0§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§_-We§ = this.m_world.§_-Xl§.§_-Q-§;
         _loc4_ = this.§_-7L§;
         while(_loc4_)
         {
            _loc4_.§_-OO§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§_-oz§;
         }
      }
      
      b2internal function §_-da§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §_-VH§(param1:b2Body) : Boolean
      {
         if(this.§_-1c§ != b2_dynamicBody && param1.§_-1c§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§_-6c§;
         while(_loc2_)
         {
            if(_loc2_.§_-TK§ == param1)
            {
               if(_loc2_.§_-q5§.§_-vY§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§_-Oh§;
         }
         return true;
      }
      
      b2internal function §_-nE§(param1:Number) : void
      {
         this.m_sweep.§_-nE§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§_-da§();
      }
   }
}

package §const§
{
   import §_-4n§.b2Mat22;
   import §_-4n§.b2Math;
   import §_-4n§.b2Sweep;
   import §_-4n§.b2Transform;
   import §_-4n§.b2Vec2;
   import §_-K2§.b2Contact;
   import §_-K2§.b2ContactEdge;
   import §_-bW§.b2Settings;
   import §_-bW§.b2internal;
   import §_-bt§.b2JointEdge;
   import §_-cA§.b2ControllerEdge;
   import §_-iw§.§_-T5§;
   import §_-yJ§.b2EdgeShape;
   import §_-yJ§.b2MassData;
   import §_-yJ§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §_-Ae§:b2Transform = new b2Transform();
      
      b2internal static var §_-Xv§:uint = 1;
      
      b2internal static var §_-Wb§:uint = 2;
      
      b2internal static var §get §:uint = 4;
      
      b2internal static var §_-Y8§:uint = 8;
      
      b2internal static var §_-jZ§:uint = 16;
      
      b2internal static var §_-3O§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §_-rY§:uint;
      
      b2internal var §_-rI§:int;
      
      b2internal var §_-Zy§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §_-eW§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §_-vq§:b2Vec2;
      
      b2internal var §_-VK§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §_-nr§:b2Body;
      
      b2internal var §_-1k§:b2Body;
      
      b2internal var §_-hi§:b2Fixture;
      
      b2internal var §_-yg§:int;
      
      b2internal var §_-PH§:b2ControllerEdge;
      
      b2internal var §_-7s§:int;
      
      b2internal var §_-UG§:b2JointEdge;
      
      b2internal var §_-z-§:b2ContactEdge;
      
      b2internal var §_-dp§:Number;
      
      b2internal var §_-RG§:Number;
      
      b2internal var §_-kZ§:Number;
      
      b2internal var §_-n4§:Number;
      
      b2internal var §_-WQ§:Number;
      
      b2internal var § case§:Number;
      
      b2internal var §_-2o§:Number;
      
      b2internal var §_-5g§:Number;
      
      private var §_-7f§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§_-eW§ = new b2Vec2();
         this.§_-vq§ = new b2Vec2();
         super();
         this.§_-rY§ = 0;
         if(param1.§_-Yb§)
         {
            this.§_-rY§ |= b2internal::_-Y8;
         }
         if(param1.§_-BR§)
         {
            this.§_-rY§ |= b2internal::_-jZ;
         }
         if(param1.§_-47§)
         {
            this.§_-rY§ |= b2internal::get ;
         }
         if(param1.§_-xL§)
         {
            this.§_-rY§ |= b2internal::_-Wb;
         }
         if(param1.get)
         {
            this.§_-rY§ |= b2internal::_-3O;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§_-IE§();
         this.m_sweep.§_-pu§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§_-UG§ = null;
         this.§_-PH§ = null;
         this.§_-z-§ = null;
         this.§_-7s§ = 0;
         this.§_-nr§ = null;
         this.§_-1k§ = null;
         this.§_-eW§.SetV(param1.§_-fG§);
         this.m_angularVelocity = param1.§_-7y§;
         this.§ case§ = param1.§_-7I§;
         this.§_-2o§ = param1.§_-AR§;
         this.§_-vq§.Set(0,0);
         this.§_-VK§ = 0;
         this.§_-5g§ = 0;
         this.§_-rI§ = param1.type;
         if(this.§_-rI§ == b2_dynamicBody)
         {
            this.§_-dp§ = 1;
            this.§_-RG§ = 1;
         }
         else
         {
            this.§_-dp§ = 0;
            this.§_-RG§ = 0;
         }
         this.§_-kZ§ = 0;
         this.§_-n4§ = 0;
         this.§_-WQ§ = param1.§_-kS§;
         this.§_-7f§ = param1.§_-tW§;
         this.§_-hi§ = null;
         this.§_-yg§ = 0;
      }
      
      private function §_-w8§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§_-EC§().y,param2.§_-EC§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§_-IW§(_loc5_,param2.§_-EC§());
         _loc6_ = b2Math.§_-nM§(_loc6_,param2.§_-Hg§());
         _loc6_ = b2Math.§_-IW§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§_-5c§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§_-5c§(param1.§_-EC§(),param2.§_-EC§())).Normalize();
         var _loc8_:* = b2Math.§_-pS§(param1.§_-EC§(),param2.§_-Hg§()) > 0;
         param1.§_-mE§(param2,_loc6_,_loc7_,_loc8_);
         param2.§_-z2§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §_-3A§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§_-T5§ = null;
         if(this.m_world.§_-4E§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§_-mA§(this,this.m_xf,param1);
         if(this.§_-rY§ & b2internal::_-3O)
         {
            _loc3_ = this.m_world.§_-Y7§.§_-Oa§;
            _loc2_.§_-U5§(_loc3_,this.m_xf);
         }
         _loc2_.§_-1k§ = this.§_-hi§;
         this.§_-hi§ = _loc2_;
         ++this.§_-yg§;
         _loc2_.m_body = this;
         if(_loc2_.§_-aC§ > 0)
         {
            this.§_-Lx§();
         }
         this.m_world.§_-rY§ |= b2World.§_-WY§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§_-3A§(_loc3_);
      }
      
      public function §_-En§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§_-T5§ = null;
         if(this.m_world.§_-4E§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§_-hi§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§_-1k§ = param1.§_-1k§;
               }
               else
               {
                  this.§_-hi§ = param1.§_-1k§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§_-1k§;
         }
         var _loc5_:b2ContactEdge = this.§_-z-§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§_-Mc§;
            _loc5_ = _loc5_.§_-Q2§;
            _loc7_ = _loc6_.§_-IQ§();
            _loc8_ = _loc6_.§_-6f§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§_-Y7§.§_-T9§(_loc6_);
            }
         }
         if(this.§_-rY§ & b2internal::_-3O)
         {
            _loc9_ = this.m_world.§_-Y7§.§_-Oa§;
            param1.§_-IN§(_loc9_);
         }
         param1.§_-T9§();
         param1.m_body = null;
         param1.§_-1k§ = null;
         --this.§_-yg§;
         this.§_-Lx§();
      }
      
      public function §_-16§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§_-4E§() == true)
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
         var _loc6_:§_-T5§ = this.m_world.§_-Y7§.§_-Oa§;
         _loc3_ = this.§_-hi§;
         while(_loc3_)
         {
            _loc3_.§_-jp§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§_-1k§;
         }
         this.m_world.§_-Y7§.§_-08§();
      }
      
      public function §_-0s§(param1:b2Transform) : void
      {
         this.§_-16§(param1.position,param1.GetAngle());
      }
      
      public function §_-XD§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §_-J-§(param1:b2Vec2) : void
      {
         this.§_-16§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §_-2j§(param1:Number) : void
      {
         this.§_-16§(this.GetPosition(),param1);
      }
      
      public function §_-hN§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §_-rB§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§_-rI§ == b2_staticBody)
         {
            return;
         }
         this.§_-eW§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§_-eW§;
      }
      
      public function §_-rJ§(param1:Number) : void
      {
         if(this.§_-rI§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function § try§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§_-hZ§();
         _loc1_.§_-47§ = (this.§_-rY§ & b2internal::get ) == b2internal::get ;
         _loc1_.angle = this.GetAngle();
         _loc1_.§_-AR§ = this.§_-2o§;
         _loc1_.§_-7y§ = this.m_angularVelocity;
         _loc1_.§_-BR§ = (this.§_-rY§ & b2internal::_-jZ) == b2internal::_-jZ;
         _loc1_.§_-Yb§ = (this.§_-rY§ & b2internal::_-Y8) == b2internal::_-Y8;
         _loc1_.§_-xL§ = (this.§_-rY§ & b2internal::_-Wb) == b2internal::_-Wb;
         _loc1_.§_-7I§ = this.§ case§;
         _loc1_.§_-fG§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§_-tW§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §_-ha§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-rI§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-vq§.x += param1.x;
         this.§_-vq§.y += param1.y;
         this.§_-VK§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §while§(param1:Number) : void
      {
         if(this.§_-rI§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-VK§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-rI§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-eW§.x += this.§_-RG§ * param1.x;
         this.§_-eW§.y += this.§_-RG§ * param1.y;
         this.m_angularVelocity += this.§_-n4§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §_-n8§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§_-hN§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§_-fs§(this.§ try§());
         var _loc8_:b2Fixture = _loc5_.§_-hi§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§_-1k§;
               if(_loc7_)
               {
                  _loc7_.§_-1k§ = _loc13_;
               }
               else
               {
                  _loc5_.§_-hi§ = _loc13_;
               }
               --_loc5_.§_-yg§;
               _loc8_.§_-1k§ = _loc6_.§_-hi§;
               _loc6_.§_-hi§ = _loc8_;
               ++_loc6_.§_-yg§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§_-1k§;
            }
         }
         _loc5_.§_-Lx§();
         _loc6_.§_-Lx§();
         var _loc9_:b2Vec2 = _loc5_.§_-hN§();
         var _loc10_:b2Vec2 = _loc6_.§_-hN§();
         var _loc11_:b2Vec2 = b2Math.§_-5c§(_loc2_,b2Math.§_-2e§(_loc3_,b2Math.§_-nM§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§_-5c§(_loc2_,b2Math.§_-2e§(_loc3_,b2Math.§_-nM§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§_-rJ§(_loc3_);
         _loc6_.§_-rJ§(_loc3_);
         _loc5_.§_-Dr§();
         _loc6_.§_-Dr§();
         return _loc6_;
      }
      
      public function §_-9B§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§_-hi§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§_-1k§;
            --param1.§_-yg§;
            _loc2_.§_-1k§ = this.§_-hi§;
            this.§_-hi§ = _loc2_;
            ++this.§_-yg§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§_-yg§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§_-hN§();
         var _loc6_:b2Vec2 = _loc4_.§_-hN§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§_-Lx§();
         this.§_-Dr§();
      }
      
      public function GetMass() : Number
      {
         return this.§_-dp§;
      }
      
      public function §_-Ms§() : Number
      {
         return this.§_-kZ§;
      }
      
      public function §_-CC§(param1:b2MassData) : void
      {
         param1.§_-bR§ = this.§_-dp§;
         param1.§_-2y§ = this.§_-kZ§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §_-GU§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§_-4E§() == false);
         if(this.m_world.§_-4E§() == true)
         {
            return;
         }
         if(this.§_-rI§ != b2_dynamicBody)
         {
            return;
         }
         this.§_-RG§ = 0;
         this.§_-kZ§ = 0;
         this.§_-n4§ = 0;
         this.§_-dp§ = param1.§_-bR§;
         if(this.§_-dp§ <= 0)
         {
            this.§_-dp§ = 1;
         }
         this.§_-RG§ = 1 / this.§_-dp§;
         if(param1.§_-2y§ > 0 && (this.§_-rY§ & b2internal::_-jZ) == 0)
         {
            this.§_-kZ§ = param1.§_-2y§ - this.§_-dp§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§_-n4§ = 1 / this.§_-kZ§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§_-7c§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§_-eW§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§_-eW§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §_-Lx§() : void
      {
         var _loc4_:b2MassData = null;
         this.§_-dp§ = 0;
         this.§_-RG§ = 0;
         this.§_-kZ§ = 0;
         this.§_-n4§ = 0;
         this.m_sweep.localCenter.§_-IE§();
         if(this.§_-rI§ == b2_staticBody || this.§_-rI§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§_-2c§(0,0);
         var _loc2_:b2Fixture = this.§_-hi§;
         while(_loc2_)
         {
            if(_loc2_.§_-aC§ != 0)
            {
               _loc4_ = _loc2_.§_-CC§();
               this.§_-dp§ += _loc4_.§_-bR§;
               _loc1_.x += _loc4_.center.x * _loc4_.§_-bR§;
               _loc1_.y += _loc4_.center.y * _loc4_.§_-bR§;
               this.§_-kZ§ += _loc4_.§_-2y§;
            }
            _loc2_ = _loc2_.§_-1k§;
         }
         if(this.§_-dp§ > 0)
         {
            this.§_-RG§ = 1 / this.§_-dp§;
            _loc1_.x *= this.§_-RG§;
            _loc1_.y *= this.§_-RG§;
         }
         else
         {
            this.§_-dp§ = 1;
            this.§_-RG§ = 1;
         }
         if(this.§_-kZ§ > 0 && (this.§_-rY§ & b2internal::_-jZ) == 0)
         {
            this.§_-kZ§ -= this.§_-dp§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§_-kZ§ *= this.§_-WQ§;
            b2Settings.b2Assert(this.§_-kZ§ > 0);
            this.§_-n4§ = 1 / this.§_-kZ§;
         }
         else
         {
            this.§_-kZ§ = 0;
            this.§_-n4§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§_-7c§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§_-eW§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§_-eW§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §_-rK§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-UD§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-Iw§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-Wl§(this.m_xf.R,param1);
      }
      
      public function §_-br§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§_-eW§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§_-eW§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §_-Gs§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§_-eW§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§_-eW§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §_-Je§() : Number
      {
         return this.§ case§;
      }
      
      public function §_-gL§(param1:Number) : void
      {
         this.§ case§ = param1;
      }
      
      public function §_-M§() : Number
      {
         return this.§_-2o§;
      }
      
      public function §_-V6§(param1:Number) : void
      {
         this.§_-2o§ = param1;
      }
      
      public function §_-xN§(param1:uint) : void
      {
         if(this.§_-rI§ == param1)
         {
            return;
         }
         this.§_-rI§ = param1;
         this.§_-Lx§();
         if(this.§_-rI§ == b2_staticBody)
         {
            this.§_-eW§.§_-IE§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§_-vq§.§_-IE§();
         this.§_-VK§ = 0;
         var _loc2_:b2ContactEdge = this.§_-z-§;
         while(_loc2_)
         {
            _loc2_.§_-Mc§.§_-yN§();
            _loc2_ = _loc2_.§_-Q2§;
         }
      }
      
      public function §_-hZ§() : uint
      {
         return this.§_-rI§;
      }
      
      public function §_-AK§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-rY§ |= b2internal::_-Y8;
         }
         else
         {
            this.§_-rY§ &= ~b2internal::_-Y8;
         }
      }
      
      public function §_-Uw§() : Boolean
      {
         return (this.§_-rY§ & b2internal::_-Y8) == b2internal::_-Y8;
      }
      
      public function §_-6t§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-rY§ |= b2internal::get ;
         }
         else
         {
            this.§_-rY§ &= ~b2internal::get ;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-rY§ |= b2internal::_-Wb;
            this.§_-5g§ = 0;
         }
         else
         {
            this.§_-rY§ &= ~b2internal::_-Wb;
            this.§_-5g§ = 0;
            this.§_-eW§.§_-IE§();
            this.m_angularVelocity = 0;
            this.§_-vq§.§_-IE§();
            this.§_-VK§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§_-rY§ & b2internal::_-Wb) == b2internal::_-Wb;
      }
      
      public function §_-NJ§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-rY§ |= b2internal::_-jZ;
         }
         else
         {
            this.§_-rY§ &= ~b2internal::_-jZ;
         }
         this.§_-Lx§();
      }
      
      public function §_-Px§() : Boolean
      {
         return (this.§_-rY§ & b2internal::_-jZ) == b2internal::_-jZ;
      }
      
      public function §_-Tu§(param1:Boolean) : void
      {
         var _loc2_:§_-T5§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§_-07§())
         {
            return;
         }
         if(param1)
         {
            this.§_-rY§ |= b2internal::_-3O;
            _loc2_ = this.m_world.§_-Y7§.§_-Oa§;
            _loc3_ = this.§_-hi§;
            while(_loc3_)
            {
               _loc3_.§_-U5§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§_-1k§;
            }
         }
         else
         {
            this.§_-rY§ &= ~b2internal::_-3O;
            _loc2_ = this.m_world.§_-Y7§.§_-Oa§;
            _loc3_ = this.§_-hi§;
            while(_loc3_)
            {
               _loc3_.§_-IN§(_loc2_);
               _loc3_ = _loc3_.§_-1k§;
            }
            _loc4_ = this.§_-z-§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§_-Q2§;
               this.m_world.§_-Y7§.§_-T9§(_loc5_.§_-Mc§);
            }
            this.§_-z-§ = null;
         }
      }
      
      public function §_-07§() : Boolean
      {
         return (this.§_-rY§ & b2internal::_-3O) == b2internal::_-3O;
      }
      
      public function §_-GT§() : Boolean
      {
         return (this.§_-rY§ & b2internal::get ) == b2internal::get ;
      }
      
      public function §_-O6§() : b2Fixture
      {
         return this.§_-hi§;
      }
      
      public function §_-ei§() : b2JointEdge
      {
         return this.§_-UG§;
      }
      
      public function §_-G3§() : b2ControllerEdge
      {
         return this.§_-PH§;
      }
      
      public function §_-x3§() : b2ContactEdge
      {
         return this.§_-z-§;
      }
      
      public function §_-e4§() : b2Body
      {
         return this.§_-1k§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-7f§;
      }
      
      public function §_-ii§(param1:*) : void
      {
         this.§_-7f§ = param1;
      }
      
      public function §_-kB§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §_-Dr§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §_-Ae§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§_-T5§ = this.m_world.§_-Y7§.§_-Oa§;
         _loc4_ = this.§_-hi§;
         while(_loc4_)
         {
            _loc4_.§_-jp§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§_-1k§;
         }
      }
      
      b2internal function §_-Zz§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §_-dd§(param1:b2Body) : Boolean
      {
         if(this.§_-rI§ != b2_dynamicBody && param1.§_-rI§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§_-UG§;
         while(_loc2_)
         {
            if(_loc2_.§_-Z3§ == param1)
            {
               if(_loc2_.§_-DP§.§_-mf§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§_-Q2§;
         }
         return true;
      }
      
      b2internal function §_-y5§(param1:Number) : void
      {
         this.m_sweep.§_-y5§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§_-Zz§();
      }
   }
}

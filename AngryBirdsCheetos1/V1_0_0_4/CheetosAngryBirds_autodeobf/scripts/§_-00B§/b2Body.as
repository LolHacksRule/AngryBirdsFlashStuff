package §_-00B§
{
   import §_-E§.b2JointEdge;
   import §_-Jf§.b2Settings;
   import §_-Jf§.b2internal;
   import §_-KI§.b2ControllerEdge;
   import §_-Kz§.§_-n0§;
   import §_-OY§.b2EdgeShape;
   import §_-OY§.b2MassData;
   import §_-OY§.b2Shape;
   import §_-Vn§.b2Mat22;
   import §_-Vn§.b2Math;
   import §_-Vn§.b2Sweep;
   import §_-Vn§.b2Transform;
   import §_-Vn§.b2Vec2;
   import §_-fl§.b2Contact;
   import §_-fl§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §_-WV§:b2Transform = new b2Transform();
      
      b2internal static var §_-VA§:uint = 1;
      
      b2internal static var §_-xZ§:uint = 2;
      
      b2internal static var §_-Qg§:uint = 4;
      
      b2internal static var §_-XR§:uint = 8;
      
      b2internal static var §_-w3§:uint = 16;
      
      b2internal static var §_-h2§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §_-Tw§:uint;
      
      b2internal var §_-Kg§:int;
      
      b2internal var §_-G4§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §_-Yd§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §_-4s§:b2Vec2;
      
      b2internal var §_-Ri§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §_-u6§:b2Body;
      
      b2internal var §_-E1§:b2Body;
      
      b2internal var §_-00u§:b2Fixture;
      
      b2internal var §super§:int;
      
      b2internal var §_-eA§:b2ControllerEdge;
      
      b2internal var §_-ih§:int;
      
      b2internal var §_-xc§:b2JointEdge;
      
      b2internal var §_-Ew§:b2ContactEdge;
      
      b2internal var §_-5y§:Number;
      
      b2internal var §_-zL§:Number;
      
      b2internal var §_-nb§:Number;
      
      b2internal var §_-aJ§:Number;
      
      b2internal var §_-Jw§:Number;
      
      b2internal var §_-ka§:Number;
      
      b2internal var §_-MV§:Number;
      
      b2internal var §_-Kd§:Number;
      
      private var §_-uF§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§_-Yd§ = new b2Vec2();
         this.§_-4s§ = new b2Vec2();
         super();
         this.§_-Tw§ = 0;
         if(param1.§_-M§)
         {
            this.§_-Tw§ |= b2internal::_-XR;
         }
         if(param1.§_-96§)
         {
            this.§_-Tw§ |= b2internal::_-w3;
         }
         if(param1.§_-n-§)
         {
            this.§_-Tw§ |= b2internal::_-Qg;
         }
         if(param1.§_-jI§)
         {
            this.§_-Tw§ |= b2internal::_-xZ;
         }
         if(param1.§_-bt§)
         {
            this.§_-Tw§ |= b2internal::_-h2;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§return§();
         this.m_sweep.§_-4f§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§_-xc§ = null;
         this.§_-eA§ = null;
         this.§_-Ew§ = null;
         this.§_-ih§ = 0;
         this.§_-u6§ = null;
         this.§_-E1§ = null;
         this.§_-Yd§.SetV(param1.§_-kD§);
         this.m_angularVelocity = param1.§_-49§;
         this.§_-ka§ = param1.§_-ta§;
         this.§_-MV§ = param1.§_-YU§;
         this.§_-4s§.Set(0,0);
         this.§_-Ri§ = 0;
         this.§_-Kd§ = 0;
         this.§_-Kg§ = param1.type;
         if(this.§_-Kg§ == b2_dynamicBody)
         {
            this.§_-5y§ = 1;
            this.§_-zL§ = 1;
         }
         else
         {
            this.§_-5y§ = 0;
            this.§_-zL§ = 0;
         }
         this.§_-nb§ = 0;
         this.§_-aJ§ = 0;
         this.§_-Jw§ = param1.§_-56§;
         this.§_-uF§ = param1.§_-FA§;
         this.§_-00u§ = null;
         this.§super§ = 0;
      }
      
      private function §_-QT§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§_-HC§().y,param2.§_-HC§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§_-4G§(_loc5_,param2.§_-HC§());
         _loc6_ = b2Math.§_-FN§(_loc6_,param2.§_-M1§());
         _loc6_ = b2Math.§_-4G§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§_-By§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§_-By§(param1.§_-HC§(),param2.§_-HC§())).Normalize();
         var _loc8_:* = b2Math.§_-kH§(param1.§_-HC§(),param2.§_-M1§()) > 0;
         param1.§_-Ic§(param2,_loc6_,_loc7_,_loc8_);
         param2.§_-qd§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §_-HY§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§_-n0§ = null;
         if(this.m_world.§_-n4§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§null §(this,this.m_xf,param1);
         if(this.§_-Tw§ & b2internal::_-h2)
         {
            _loc3_ = this.m_world.§_-2e§.§get §;
            _loc2_.§_-00b§(_loc3_,this.m_xf);
         }
         _loc2_.§_-E1§ = this.§_-00u§;
         this.§_-00u§ = _loc2_;
         ++this.§super§;
         _loc2_.m_body = this;
         if(_loc2_.§_-0-m§ > 0)
         {
            this.§_-00n§();
         }
         this.m_world.§_-Tw§ |= b2World.§_-IF§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§_-HY§(_loc3_);
      }
      
      public function §_-00r§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§_-n0§ = null;
         if(this.m_world.§_-n4§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§_-00u§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§_-E1§ = param1.§_-E1§;
               }
               else
               {
                  this.§_-00u§ = param1.§_-E1§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§_-E1§;
         }
         var _loc5_:b2ContactEdge = this.§_-Ew§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§_-NB§;
            _loc5_ = _loc5_.§_-WK§;
            _loc7_ = _loc6_.§_-tb§();
            _loc8_ = _loc6_.§_-Ix§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§_-2e§.§_-TB§(_loc6_);
            }
         }
         if(this.§_-Tw§ & b2internal::_-h2)
         {
            _loc9_ = this.m_world.§_-2e§.§get §;
            param1.§_-XN§(_loc9_);
         }
         param1.§_-TB§();
         param1.m_body = null;
         param1.§_-E1§ = null;
         --this.§super§;
         this.§_-00n§();
      }
      
      public function §_-J4§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§_-n4§() == true)
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
         var _loc6_:§_-n0§ = this.m_world.§_-2e§.§get §;
         _loc3_ = this.§_-00u§;
         while(_loc3_)
         {
            _loc3_.§_-0o§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§_-E1§;
         }
         this.m_world.§_-2e§.§_-c4§();
      }
      
      public function §_-At§(param1:b2Transform) : void
      {
         this.§_-J4§(param1.position,param1.GetAngle());
      }
      
      public function §_-fs§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §_-00s§(param1:b2Vec2) : void
      {
         this.§_-J4§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §_-w1§(param1:Number) : void
      {
         this.§_-J4§(this.GetPosition(),param1);
      }
      
      public function §_-Cs§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §_-5d§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§_-Kg§ == b2_staticBody)
         {
            return;
         }
         this.§_-Yd§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§_-Yd§;
      }
      
      public function §_-ti§(param1:Number) : void
      {
         if(this.§_-Kg§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §_-dU§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§_-n§();
         _loc1_.§_-n-§ = (this.§_-Tw§ & b2internal::_-Qg) == b2internal::_-Qg;
         _loc1_.angle = this.GetAngle();
         _loc1_.§_-YU§ = this.§_-MV§;
         _loc1_.§_-49§ = this.m_angularVelocity;
         _loc1_.§_-96§ = (this.§_-Tw§ & b2internal::_-w3) == b2internal::_-w3;
         _loc1_.§_-M§ = (this.§_-Tw§ & b2internal::_-XR) == b2internal::_-XR;
         _loc1_.§_-jI§ = (this.§_-Tw§ & b2internal::_-xZ) == b2internal::_-xZ;
         _loc1_.§_-ta§ = this.§_-ka§;
         _loc1_.§_-kD§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§_-FA§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §_-2O§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-Kg§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-4s§.x += param1.x;
         this.§_-4s§.y += param1.y;
         this.§_-Ri§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §_-Ol§(param1:Number) : void
      {
         if(this.§_-Kg§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-Ri§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-Kg§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-Yd§.x += this.§_-zL§ * param1.x;
         this.§_-Yd§.y += this.§_-zL§ * param1.y;
         this.m_angularVelocity += this.§_-aJ§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §_-Yq§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§_-Cs§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§_-nm§(this.§_-dU§());
         var _loc8_:b2Fixture = _loc5_.§_-00u§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§_-E1§;
               if(_loc7_)
               {
                  _loc7_.§_-E1§ = _loc13_;
               }
               else
               {
                  _loc5_.§_-00u§ = _loc13_;
               }
               --_loc5_.§super§;
               _loc8_.§_-E1§ = _loc6_.§_-00u§;
               _loc6_.§_-00u§ = _loc8_;
               ++_loc6_.§super§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§_-E1§;
            }
         }
         _loc5_.§_-00n§();
         _loc6_.§_-00n§();
         var _loc9_:b2Vec2 = _loc5_.§_-Cs§();
         var _loc10_:b2Vec2 = _loc6_.§_-Cs§();
         var _loc11_:b2Vec2 = b2Math.§_-By§(_loc2_,b2Math.§_-8f§(_loc3_,b2Math.§_-FN§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§_-By§(_loc2_,b2Math.§_-8f§(_loc3_,b2Math.§_-FN§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§_-ti§(_loc3_);
         _loc6_.§_-ti§(_loc3_);
         _loc5_.§_-7K§();
         _loc6_.§_-7K§();
         return _loc6_;
      }
      
      public function §_-lA§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§_-00u§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§_-E1§;
            --param1.§super§;
            _loc2_.§_-E1§ = this.§_-00u§;
            this.§_-00u§ = _loc2_;
            ++this.§super§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§super§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§_-Cs§();
         var _loc6_:b2Vec2 = _loc4_.§_-Cs§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§_-00n§();
         this.§_-7K§();
      }
      
      public function GetMass() : Number
      {
         return this.§_-5y§;
      }
      
      public function §_-No§() : Number
      {
         return this.§_-nb§;
      }
      
      public function §_-e9§(param1:b2MassData) : void
      {
         param1.§_-ae§ = this.§_-5y§;
         param1.§_-YY§ = this.§_-nb§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §_-wv§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§_-n4§() == false);
         if(this.m_world.§_-n4§() == true)
         {
            return;
         }
         if(this.§_-Kg§ != b2_dynamicBody)
         {
            return;
         }
         this.§_-zL§ = 0;
         this.§_-nb§ = 0;
         this.§_-aJ§ = 0;
         this.§_-5y§ = param1.§_-ae§;
         if(this.§_-5y§ <= 0)
         {
            this.§_-5y§ = 1;
         }
         this.§_-zL§ = 1 / this.§_-5y§;
         if(param1.§_-YY§ > 0 && (this.§_-Tw§ & b2internal::_-w3) == 0)
         {
            this.§_-nb§ = param1.§_-YY§ - this.§_-5y§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§_-aJ§ = 1 / this.§_-nb§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§_-jR§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§_-Yd§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§_-Yd§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §_-00n§() : void
      {
         var _loc4_:b2MassData = null;
         this.§_-5y§ = 0;
         this.§_-zL§ = 0;
         this.§_-nb§ = 0;
         this.§_-aJ§ = 0;
         this.m_sweep.localCenter.§return§();
         if(this.§_-Kg§ == b2_staticBody || this.§_-Kg§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§_-h0§(0,0);
         var _loc2_:b2Fixture = this.§_-00u§;
         while(_loc2_)
         {
            if(_loc2_.§_-0-m§ != 0)
            {
               _loc4_ = _loc2_.§_-e9§();
               this.§_-5y§ += _loc4_.§_-ae§;
               _loc1_.x += _loc4_.center.x * _loc4_.§_-ae§;
               _loc1_.y += _loc4_.center.y * _loc4_.§_-ae§;
               this.§_-nb§ += _loc4_.§_-YY§;
            }
            _loc2_ = _loc2_.§_-E1§;
         }
         if(this.§_-5y§ > 0)
         {
            this.§_-zL§ = 1 / this.§_-5y§;
            _loc1_.x *= this.§_-zL§;
            _loc1_.y *= this.§_-zL§;
         }
         else
         {
            this.§_-5y§ = 1;
            this.§_-zL§ = 1;
         }
         if(this.§_-nb§ > 0 && (this.§_-Tw§ & b2internal::_-w3) == 0)
         {
            this.§_-nb§ -= this.§_-5y§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§_-nb§ *= this.§_-Jw§;
            b2Settings.b2Assert(this.§_-nb§ > 0);
            this.§_-aJ§ = 1 / this.§_-nb§;
         }
         else
         {
            this.§_-nb§ = 0;
            this.§_-aJ§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§_-jR§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§_-Yd§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§_-Yd§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §_-Xs§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-E0§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-Ti§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-dE§(this.m_xf.R,param1);
      }
      
      public function §_-Ut§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§_-Yd§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§_-Yd§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §_-mx§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§_-Yd§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§_-Yd§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §_-iQ§() : Number
      {
         return this.§_-ka§;
      }
      
      public function §_-OD§(param1:Number) : void
      {
         this.§_-ka§ = param1;
      }
      
      public function §_-1c§() : Number
      {
         return this.§_-MV§;
      }
      
      public function §_-fy§(param1:Number) : void
      {
         this.§_-MV§ = param1;
      }
      
      public function §_-rb§(param1:uint) : void
      {
         if(this.§_-Kg§ == param1)
         {
            return;
         }
         this.§_-Kg§ = param1;
         this.§_-00n§();
         if(this.§_-Kg§ == b2_staticBody)
         {
            this.§_-Yd§.§return§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§_-4s§.§return§();
         this.§_-Ri§ = 0;
         var _loc2_:b2ContactEdge = this.§_-Ew§;
         while(_loc2_)
         {
            _loc2_.§_-NB§.§_-SC§();
            _loc2_ = _loc2_.§_-WK§;
         }
      }
      
      public function §_-n§() : uint
      {
         return this.§_-Kg§;
      }
      
      public function §_-CM§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Tw§ |= b2internal::_-XR;
         }
         else
         {
            this.§_-Tw§ &= ~b2internal::_-XR;
         }
      }
      
      public function §else§() : Boolean
      {
         return (this.§_-Tw§ & b2internal::_-XR) == b2internal::_-XR;
      }
      
      public function §_-Et§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Tw§ |= b2internal::_-Qg;
         }
         else
         {
            this.§_-Tw§ &= ~b2internal::_-Qg;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Tw§ |= b2internal::_-xZ;
            this.§_-Kd§ = 0;
         }
         else
         {
            this.§_-Tw§ &= ~b2internal::_-xZ;
            this.§_-Kd§ = 0;
            this.§_-Yd§.§return§();
            this.m_angularVelocity = 0;
            this.§_-4s§.§return§();
            this.§_-Ri§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§_-Tw§ & b2internal::_-xZ) == b2internal::_-xZ;
      }
      
      public function §_-0-b§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Tw§ |= b2internal::_-w3;
         }
         else
         {
            this.§_-Tw§ &= ~b2internal::_-w3;
         }
         this.§_-00n§();
      }
      
      public function §_-2r§() : Boolean
      {
         return (this.§_-Tw§ & b2internal::_-w3) == b2internal::_-w3;
      }
      
      public function §_-c-§(param1:Boolean) : void
      {
         var _loc2_:§_-n0§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§_-Uh§())
         {
            return;
         }
         if(param1)
         {
            this.§_-Tw§ |= b2internal::_-h2;
            _loc2_ = this.m_world.§_-2e§.§get §;
            _loc3_ = this.§_-00u§;
            while(_loc3_)
            {
               _loc3_.§_-00b§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§_-E1§;
            }
         }
         else
         {
            this.§_-Tw§ &= ~b2internal::_-h2;
            _loc2_ = this.m_world.§_-2e§.§get §;
            _loc3_ = this.§_-00u§;
            while(_loc3_)
            {
               _loc3_.§_-XN§(_loc2_);
               _loc3_ = _loc3_.§_-E1§;
            }
            _loc4_ = this.§_-Ew§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§_-WK§;
               this.m_world.§_-2e§.§_-TB§(_loc5_.§_-NB§);
            }
            this.§_-Ew§ = null;
         }
      }
      
      public function §_-Uh§() : Boolean
      {
         return (this.§_-Tw§ & b2internal::_-h2) == b2internal::_-h2;
      }
      
      public function §_-u9§() : Boolean
      {
         return (this.§_-Tw§ & b2internal::_-Qg) == b2internal::_-Qg;
      }
      
      public function §_-00J§() : b2Fixture
      {
         return this.§_-00u§;
      }
      
      public function §_-rA§() : b2JointEdge
      {
         return this.§_-xc§;
      }
      
      public function §_-01-§() : b2ControllerEdge
      {
         return this.§_-eA§;
      }
      
      public function §_-37§() : b2ContactEdge
      {
         return this.§_-Ew§;
      }
      
      public function §_-si§() : b2Body
      {
         return this.§_-E1§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-uF§;
      }
      
      public function §_-aa§(param1:*) : void
      {
         this.§_-uF§ = param1;
      }
      
      public function §_-n6§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §_-7K§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §_-WV§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§_-n0§ = this.m_world.§_-2e§.§get §;
         _loc4_ = this.§_-00u§;
         while(_loc4_)
         {
            _loc4_.§_-0o§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§_-E1§;
         }
      }
      
      b2internal function §_-X2§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §_-Sd§(param1:b2Body) : Boolean
      {
         if(this.§_-Kg§ != b2_dynamicBody && param1.§_-Kg§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§_-xc§;
         while(_loc2_)
         {
            if(_loc2_.§_-4o§ == param1)
            {
               if(_loc2_.§_-26§.§_-J-§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§_-WK§;
         }
         return true;
      }
      
      b2internal function §_-Ng§(param1:Number) : void
      {
         this.m_sweep.§_-Ng§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§_-X2§();
      }
   }
}

package §try§
{
   import §_-b4§.b2Settings;
   import §_-b4§.b2internal;
   import §_-cG§.b2EdgeShape;
   import §_-cG§.b2MassData;
   import §_-cG§.b2Shape;
   import §_-cP§.b2Mat22;
   import §_-cP§.b2Math;
   import §_-cP§.b2Sweep;
   import §_-cP§.b2Transform;
   import §_-cP§.b2Vec2;
   import §_-lH§.b2ControllerEdge;
   import §_-yI§.§_-2G§;
   import §const§.b2JointEdge;
   import §with§.b2Contact;
   import §with§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §_-GD§:b2Transform = new b2Transform();
      
      b2internal static var §_-J§:uint = 1;
      
      b2internal static var §_-2W§:uint = 2;
      
      b2internal static var §_-IQ§:uint = 4;
      
      b2internal static var §_-Dx§:uint = 8;
      
      b2internal static var §_-3s§:uint = 16;
      
      b2internal static var §_-aA§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §_-L9§:uint;
      
      b2internal var §_-f7§:int;
      
      b2internal var §_-WG§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §_-PK§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §_-fj§:b2Vec2;
      
      b2internal var §_-U5§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §_-o2§:b2Body;
      
      b2internal var §_-QK§:b2Body;
      
      b2internal var §_-I3§:b2Fixture;
      
      b2internal var §_-MY§:int;
      
      b2internal var §_-KT§:b2ControllerEdge;
      
      b2internal var §_-5T§:int;
      
      b2internal var §_-o3§:b2JointEdge;
      
      b2internal var §_-vp§:b2ContactEdge;
      
      b2internal var §_-p4§:Number;
      
      b2internal var §_-hk§:Number;
      
      b2internal var §_-7l§:Number;
      
      b2internal var §_-LF§:Number;
      
      b2internal var §_-Al§:Number;
      
      b2internal var §_-5S§:Number;
      
      b2internal var §_-Js§:Number;
      
      b2internal var §_-z7§:Number;
      
      private var §_-C3§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§_-PK§ = new b2Vec2();
         this.§_-fj§ = new b2Vec2();
         super();
         this.§_-L9§ = 0;
         if(param1.§_-II§)
         {
            this.§_-L9§ |= b2internal::_-Dx;
         }
         if(param1.§_-gj§)
         {
            this.§_-L9§ |= b2internal::_-3s;
         }
         if(param1.§_-pA§)
         {
            this.§_-L9§ |= b2internal::_-IQ;
         }
         if(param1.§_-pL§)
         {
            this.§_-L9§ |= b2internal::_-2W;
         }
         if(param1.§_-Rm§)
         {
            this.§_-L9§ |= b2internal::_-aA;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§_-WO§();
         this.m_sweep.§_-7z§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.§_-xQ§.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.§_-xQ§.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.§_-xQ§.x += this.m_xf.position.x;
         this.m_sweep.§_-xQ§.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.§_-xQ§);
         this.§_-o3§ = null;
         this.§_-KT§ = null;
         this.§_-vp§ = null;
         this.§_-5T§ = 0;
         this.§_-o2§ = null;
         this.§_-QK§ = null;
         this.§_-PK§.SetV(param1.§_-cx§);
         this.m_angularVelocity = param1.§_-up§;
         this.§_-5S§ = param1.§_-sN§;
         this.§_-Js§ = param1.§_-iY§;
         this.§_-fj§.Set(0,0);
         this.§_-U5§ = 0;
         this.§_-z7§ = 0;
         this.§_-f7§ = param1.type;
         if(this.§_-f7§ == b2_dynamicBody)
         {
            this.§_-p4§ = 1;
            this.§_-hk§ = 1;
         }
         else
         {
            this.§_-p4§ = 0;
            this.§_-hk§ = 0;
         }
         this.§_-7l§ = 0;
         this.§_-LF§ = 0;
         this.§_-Al§ = param1.§_-BH§;
         this.§_-C3§ = param1.§_-MJ§;
         this.§_-I3§ = null;
         this.§_-MY§ = 0;
      }
      
      private function §_-Ef§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§_-DW§().y,param2.§_-DW§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§_-uW§(_loc5_,param2.§_-DW§());
         _loc6_ = b2Math.§_-4g§(_loc6_,param2.§_-JH§());
         _loc6_ = b2Math.§_-uW§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§_-6V§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§_-6V§(param1.§_-DW§(),param2.§_-DW§())).Normalize();
         var _loc8_:* = b2Math.§_-Wh§(param1.§_-DW§(),param2.§_-JH§()) > 0;
         param1.§_-Hv§(param2,_loc6_,_loc7_,_loc8_);
         param2.§_-0M§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §_-gs§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§_-2G§ = null;
         if(this.m_world.§_-Qb§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§_-JJ§(this,this.m_xf,param1);
         if(this.§_-L9§ & b2internal::_-aA)
         {
            _loc3_ = this.m_world.§_-0b§.§_-3t§;
            _loc2_.§_-Kb§(_loc3_,this.m_xf);
         }
         _loc2_.§_-QK§ = this.§_-I3§;
         this.§_-I3§ = _loc2_;
         ++this.§_-MY§;
         _loc2_.m_body = this;
         if(_loc2_.§_-J9§ > 0)
         {
            this.§_-nX§();
         }
         this.m_world.§_-L9§ |= b2World.§_-B9§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§_-gs§(_loc3_);
      }
      
      public function §_-V9§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§_-2G§ = null;
         if(this.m_world.§_-Qb§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§_-I3§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§_-QK§ = param1.§_-QK§;
               }
               else
               {
                  this.§_-I3§ = param1.§_-QK§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§_-QK§;
         }
         var _loc5_:b2ContactEdge = this.§_-vp§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§_-3P§;
            _loc5_ = _loc5_.§_-TE§;
            _loc7_ = _loc6_.§_-79§();
            _loc8_ = _loc6_.§_-mq§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§_-0b§.§_-y3§(_loc6_);
            }
         }
         if(this.§_-L9§ & b2internal::_-aA)
         {
            _loc9_ = this.m_world.§_-0b§.§_-3t§;
            param1.§_-ht§(_loc9_);
         }
         param1.§_-y3§();
         param1.m_body = null;
         param1.§_-QK§ = null;
         --this.§_-MY§;
         this.§_-nX§();
      }
      
      public function §_-HI§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§_-Qb§() == true)
         {
            return;
         }
         this.m_xf.R.Set(param2);
         this.m_xf.position.SetV(param1);
         var _loc4_:b2Mat22 = this.m_xf.R;
         var _loc5_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.§_-xQ§.x = _loc4_.col1.x * _loc5_.x + _loc4_.col2.x * _loc5_.y;
         this.m_sweep.§_-xQ§.y = _loc4_.col1.y * _loc5_.x + _loc4_.col2.y * _loc5_.y;
         this.m_sweep.§_-xQ§.x += this.m_xf.position.x;
         this.m_sweep.§_-xQ§.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.§_-xQ§);
         this.m_sweep.a0 = this.m_sweep.a = param2;
         var _loc6_:§_-2G§ = this.m_world.§_-0b§.§_-3t§;
         _loc3_ = this.§_-I3§;
         while(_loc3_)
         {
            _loc3_.§_-5d§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§_-QK§;
         }
         this.m_world.§_-0b§.§_-Q7§();
      }
      
      public function §_-TQ§(param1:b2Transform) : void
      {
         this.§_-HI§(param1.position,param1.GetAngle());
      }
      
      public function §_-KR§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §_-TO§(param1:b2Vec2) : void
      {
         this.§_-HI§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §_-fw§(param1:Number) : void
      {
         this.§_-HI§(this.GetPosition(),param1);
      }
      
      public function §_-t8§() : b2Vec2
      {
         return this.m_sweep.§_-xQ§;
      }
      
      public function §_-D5§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§_-f7§ == b2_staticBody)
         {
            return;
         }
         this.§_-PK§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§_-PK§;
      }
      
      public function §_-fL§(param1:Number) : void
      {
         if(this.§_-f7§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §_-NF§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§_-sl§();
         _loc1_.§_-pA§ = (this.§_-L9§ & b2internal::_-IQ) == b2internal::_-IQ;
         _loc1_.angle = this.GetAngle();
         _loc1_.§_-iY§ = this.§_-Js§;
         _loc1_.§_-up§ = this.m_angularVelocity;
         _loc1_.§_-gj§ = (this.§_-L9§ & b2internal::_-3s) == b2internal::_-3s;
         _loc1_.§_-II§ = (this.§_-L9§ & b2internal::_-Dx) == b2internal::_-Dx;
         _loc1_.§_-pL§ = (this.§_-L9§ & b2internal::_-2W) == b2internal::_-2W;
         _loc1_.§_-sN§ = this.§_-5S§;
         _loc1_.§_-cx§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§_-MJ§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §_-uf§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-f7§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-fj§.x += param1.x;
         this.§_-fj§.y += param1.y;
         this.§_-U5§ += (param2.x - this.m_sweep.§_-xQ§.x) * param1.y - (param2.y - this.m_sweep.§_-xQ§.y) * param1.x;
      }
      
      public function §_-hD§(param1:Number) : void
      {
         if(this.§_-f7§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-U5§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§_-f7§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§_-PK§.x += this.§_-hk§ * param1.x;
         this.§_-PK§.y += this.§_-hk§ * param1.y;
         this.m_angularVelocity += this.§_-LF§ * ((param2.x - this.m_sweep.§_-xQ§.x) * param1.y - (param2.y - this.m_sweep.§_-xQ§.y) * param1.x);
      }
      
      public function §_-Qh§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§_-t8§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§_-qw§(this.§_-NF§());
         var _loc8_:b2Fixture = _loc5_.§_-I3§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§_-QK§;
               if(_loc7_)
               {
                  _loc7_.§_-QK§ = _loc13_;
               }
               else
               {
                  _loc5_.§_-I3§ = _loc13_;
               }
               --_loc5_.§_-MY§;
               _loc8_.§_-QK§ = _loc6_.§_-I3§;
               _loc6_.§_-I3§ = _loc8_;
               ++_loc6_.§_-MY§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§_-QK§;
            }
         }
         _loc5_.§_-nX§();
         _loc6_.§_-nX§();
         var _loc9_:b2Vec2 = _loc5_.§_-t8§();
         var _loc10_:b2Vec2 = _loc6_.§_-t8§();
         var _loc11_:b2Vec2 = b2Math.§_-6V§(_loc2_,b2Math.§_-n4§(_loc3_,b2Math.§_-4g§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§_-6V§(_loc2_,b2Math.§_-n4§(_loc3_,b2Math.§_-4g§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§_-fL§(_loc3_);
         _loc6_.§_-fL§(_loc3_);
         _loc5_.§_-ZV§();
         _loc6_.§_-ZV§();
         return _loc6_;
      }
      
      public function §_-Zp§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§_-I3§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§_-QK§;
            --param1.§_-MY§;
            _loc2_.§_-QK§ = this.§_-I3§;
            this.§_-I3§ = _loc2_;
            ++this.§_-MY§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§_-MY§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§_-t8§();
         var _loc6_:b2Vec2 = _loc4_.§_-t8§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§_-nX§();
         this.§_-ZV§();
      }
      
      public function GetMass() : Number
      {
         return this.§_-p4§;
      }
      
      public function §_-J1§() : Number
      {
         return this.§_-7l§;
      }
      
      public function §_-UC§(param1:b2MassData) : void
      {
         param1.§_-p2§ = this.§_-p4§;
         param1.§_-JC§ = this.§_-7l§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §_-1t§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§_-Qb§() == false);
         if(this.m_world.§_-Qb§() == true)
         {
            return;
         }
         if(this.§_-f7§ != b2_dynamicBody)
         {
            return;
         }
         this.§_-hk§ = 0;
         this.§_-7l§ = 0;
         this.§_-LF§ = 0;
         this.§_-p4§ = param1.§_-p2§;
         if(this.§_-p4§ <= 0)
         {
            this.§_-p4§ = 1;
         }
         this.§_-hk§ = 1 / this.§_-p4§;
         if(param1.§_-JC§ > 0 && (this.§_-L9§ & b2internal::_-3s) == 0)
         {
            this.§_-7l§ = param1.§_-JC§ - this.§_-p4§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§_-LF§ = 1 / this.§_-7l§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.§_-xQ§.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§_-GQ§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.§_-xQ§.SetV(this.m_sweep.c0);
         this.§_-PK§.x += this.m_angularVelocity * -(this.m_sweep.§_-xQ§.y - _loc2_.y);
         this.§_-PK§.y += this.m_angularVelocity * (this.m_sweep.§_-xQ§.x - _loc2_.x);
      }
      
      public function §_-nX§() : void
      {
         var _loc4_:b2MassData = null;
         this.§_-p4§ = 0;
         this.§_-hk§ = 0;
         this.§_-7l§ = 0;
         this.§_-LF§ = 0;
         this.m_sweep.localCenter.§_-WO§();
         if(this.§_-f7§ == b2_staticBody || this.§_-f7§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§_-Ft§(0,0);
         var _loc2_:b2Fixture = this.§_-I3§;
         while(_loc2_)
         {
            if(_loc2_.§_-J9§ != 0)
            {
               _loc4_ = _loc2_.§_-UC§();
               this.§_-p4§ += _loc4_.§_-p2§;
               _loc1_.x += _loc4_.center.x * _loc4_.§_-p2§;
               _loc1_.y += _loc4_.center.y * _loc4_.§_-p2§;
               this.§_-7l§ += _loc4_.§_-JC§;
            }
            _loc2_ = _loc2_.§_-QK§;
         }
         if(this.§_-p4§ > 0)
         {
            this.§_-hk§ = 1 / this.§_-p4§;
            _loc1_.x *= this.§_-hk§;
            _loc1_.y *= this.§_-hk§;
         }
         else
         {
            this.§_-p4§ = 1;
            this.§_-hk§ = 1;
         }
         if(this.§_-7l§ > 0 && (this.§_-L9§ & b2internal::_-3s) == 0)
         {
            this.§_-7l§ -= this.§_-p4§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§_-7l§ *= this.§_-Al§;
            b2Settings.b2Assert(this.§_-7l§ > 0);
            this.§_-LF§ = 1 / this.§_-7l§;
         }
         else
         {
            this.§_-7l§ = 0;
            this.§_-LF§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.§_-xQ§.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§_-GQ§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.§_-xQ§.SetV(this.m_sweep.c0);
         this.§_-PK§.x += this.m_angularVelocity * -(this.m_sweep.§_-xQ§.y - _loc3_.y);
         this.§_-PK§.y += this.m_angularVelocity * (this.m_sweep.§_-xQ§.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §_-4U§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-jK§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-pS§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-8m§(this.m_xf.R,param1);
      }
      
      public function §_-Ab§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§_-PK§.x - this.m_angularVelocity * (param1.y - this.m_sweep.§_-xQ§.y),this.§_-PK§.y + this.m_angularVelocity * (param1.x - this.m_sweep.§_-xQ§.x));
      }
      
      public function §_-wS§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§_-PK§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.§_-xQ§.y),this.§_-PK§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.§_-xQ§.x));
      }
      
      public function §_-Ox§() : Number
      {
         return this.§_-5S§;
      }
      
      public function §_-No§(param1:Number) : void
      {
         this.§_-5S§ = param1;
      }
      
      public function §_-gV§() : Number
      {
         return this.§_-Js§;
      }
      
      public function §_-hI§(param1:Number) : void
      {
         this.§_-Js§ = param1;
      }
      
      public function §_-AZ§(param1:uint) : void
      {
         if(this.§_-f7§ == param1)
         {
            return;
         }
         this.§_-f7§ = param1;
         this.§_-nX§();
         if(this.§_-f7§ == b2_staticBody)
         {
            this.§_-PK§.§_-WO§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§_-fj§.§_-WO§();
         this.§_-U5§ = 0;
         var _loc2_:b2ContactEdge = this.§_-vp§;
         while(_loc2_)
         {
            _loc2_.§_-3P§.§_-nM§();
            _loc2_ = _loc2_.§_-TE§;
         }
      }
      
      public function §_-sl§() : uint
      {
         return this.§_-f7§;
      }
      
      public function §_-Pp§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-L9§ |= b2internal::_-Dx;
         }
         else
         {
            this.§_-L9§ &= ~b2internal::_-Dx;
         }
      }
      
      public function §_-sV§() : Boolean
      {
         return (this.§_-L9§ & b2internal::_-Dx) == b2internal::_-Dx;
      }
      
      public function §_-1A§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-L9§ |= b2internal::_-IQ;
         }
         else
         {
            this.§_-L9§ &= ~b2internal::_-IQ;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-L9§ |= b2internal::_-2W;
            this.§_-z7§ = 0;
         }
         else
         {
            this.§_-L9§ &= ~b2internal::_-2W;
            this.§_-z7§ = 0;
            this.§_-PK§.§_-WO§();
            this.m_angularVelocity = 0;
            this.§_-fj§.§_-WO§();
            this.§_-U5§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§_-L9§ & b2internal::_-2W) == b2internal::_-2W;
      }
      
      public function §_-gM§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-L9§ |= b2internal::_-3s;
         }
         else
         {
            this.§_-L9§ &= ~b2internal::_-3s;
         }
         this.§_-nX§();
      }
      
      public function §_-fW§() : Boolean
      {
         return (this.§_-L9§ & b2internal::_-3s) == b2internal::_-3s;
      }
      
      public function §_-x3§(param1:Boolean) : void
      {
         var _loc2_:§_-2G§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§_-Bw§())
         {
            return;
         }
         if(param1)
         {
            this.§_-L9§ |= b2internal::_-aA;
            _loc2_ = this.m_world.§_-0b§.§_-3t§;
            _loc3_ = this.§_-I3§;
            while(_loc3_)
            {
               _loc3_.§_-Kb§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§_-QK§;
            }
         }
         else
         {
            this.§_-L9§ &= ~b2internal::_-aA;
            _loc2_ = this.m_world.§_-0b§.§_-3t§;
            _loc3_ = this.§_-I3§;
            while(_loc3_)
            {
               _loc3_.§_-ht§(_loc2_);
               _loc3_ = _loc3_.§_-QK§;
            }
            _loc4_ = this.§_-vp§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§_-TE§;
               this.m_world.§_-0b§.§_-y3§(_loc5_.§_-3P§);
            }
            this.§_-vp§ = null;
         }
      }
      
      public function §_-Bw§() : Boolean
      {
         return (this.§_-L9§ & b2internal::_-aA) == b2internal::_-aA;
      }
      
      public function §_-oZ§() : Boolean
      {
         return (this.§_-L9§ & b2internal::_-IQ) == b2internal::_-IQ;
      }
      
      public function §_-0-b§() : b2Fixture
      {
         return this.§_-I3§;
      }
      
      public function §_-Fv§() : b2JointEdge
      {
         return this.§_-o3§;
      }
      
      public function §_-tj§() : b2ControllerEdge
      {
         return this.§_-KT§;
      }
      
      public function §_-KS§() : b2ContactEdge
      {
         return this.§_-vp§;
      }
      
      public function §_-go§() : b2Body
      {
         return this.§_-QK§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-C3§;
      }
      
      public function §_-N-§(param1:*) : void
      {
         this.§_-C3§ = param1;
      }
      
      public function §_-wR§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §_-ZV§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §_-GD§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§_-2G§ = this.m_world.§_-0b§.§_-3t§;
         _loc4_ = this.§_-I3§;
         while(_loc4_)
         {
            _loc4_.§_-5d§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§_-QK§;
         }
      }
      
      b2internal function §_-fH§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.§_-xQ§.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.§_-xQ§.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §_-hE§(param1:b2Body) : Boolean
      {
         if(this.§_-f7§ != b2_dynamicBody && param1.§_-f7§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§_-o3§;
         while(_loc2_)
         {
            if(_loc2_.§_-u9§ == param1)
            {
               if(_loc2_.§_-8J§.§_-yj§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§_-TE§;
         }
         return true;
      }
      
      b2internal function §_-Bc§(param1:Number) : void
      {
         this.m_sweep.§_-Bc§(param1);
         this.m_sweep.§_-xQ§.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§_-fH§();
      }
   }
}

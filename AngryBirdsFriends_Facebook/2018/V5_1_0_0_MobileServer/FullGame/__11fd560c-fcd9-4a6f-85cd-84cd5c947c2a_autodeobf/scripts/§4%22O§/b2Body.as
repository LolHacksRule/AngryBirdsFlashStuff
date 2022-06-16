package §4"O§
{
   import § ! §.b2JointEdge;
   import § "%§.b2Mat22;
   import § "%§.b2Math;
   import § "%§.b2Sweep;
   import § "%§.b2Transform;
   import § "%§.b2Vec2;
   import §"#i§.b2EdgeShape;
   import §"#i§.b2MassData;
   import §"#i§.b2Shape;
   import §'"$§.§`$&§;
   import §,!s§.b2Settings;
   import §,!s§.b2internal;
   import §,E§.b2ControllerEdge;
   import §`!k§.b2Contact;
   import §`!k§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §-!W§:b2Transform = new b2Transform();
      
      b2internal static var §1!0§:uint = 1;
      
      b2internal static var §<#r§:uint = 2;
      
      b2internal static var §@#f§:uint = 4;
      
      b2internal static var §8#q§:uint = 8;
      
      b2internal static var §2!w§:uint = 16;
      
      b2internal static var §5y§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var § $8§:uint;
      
      b2internal var §"#W§:int;
      
      b2internal var §8#t§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §4!I§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §?"?§:b2Vec2;
      
      b2internal var §'#<§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §,p§:b2Body;
      
      b2internal var §-!l§:b2Body;
      
      b2internal var §%!N§:b2Fixture;
      
      b2internal var §9!P§:int;
      
      b2internal var §^2§:b2ControllerEdge;
      
      b2internal var §"$"§:int;
      
      b2internal var § #+§:b2JointEdge;
      
      b2internal var §#v§:b2ContactEdge;
      
      b2internal var §?"-§:Number;
      
      b2internal var §@P§:Number;
      
      b2internal var §6'§:Number;
      
      b2internal var § !q§:Number;
      
      b2internal var §0k§:Number;
      
      b2internal var §]#c§:Number;
      
      b2internal var §6#O§:Number;
      
      b2internal var §6!!§:Number;
      
      b2internal var §1!_§:Number;
      
      b2internal var §@!4§:Boolean;
      
      private var §^!V§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§4!I§ = new b2Vec2();
         this.§?"?§ = new b2Vec2();
         super();
         this.§ $8§ = 0;
         if(param1.§6!t§)
         {
            this.§ $8§ |= b2internal::8#q;
         }
         if(param1.§-#l§)
         {
            this.§ $8§ |= b2internal::2!w;
         }
         if(param1.§@A§)
         {
            this.§ $8§ |= b2internal::@#f;
         }
         if(param1.awake)
         {
            this.§ $8§ |= b2internal::<#r;
         }
         if(param1.active)
         {
            this.§ $8§ |= b2internal::5y;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§#!t§();
         this.m_sweep.§=!m§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§ #+§ = null;
         this.§^2§ = null;
         this.§#v§ = null;
         this.§"$"§ = 0;
         this.§,p§ = null;
         this.§-!l§ = null;
         this.§4!I§.SetV(param1.§-"=§);
         this.m_angularVelocity = param1.angularVelocity;
         this.§]#c§ = param1.linearDamping;
         this.§6#O§ = param1.angularDamping;
         this.§1!_§ = param1.§>#f§;
         this.§?"?§.Set(0,0);
         this.§'#<§ = 0;
         this.§6!!§ = 0;
         this.§"#W§ = param1.type;
         if(this.§"#W§ == b2_dynamicBody)
         {
            this.§?"-§ = 1;
            this.§@P§ = 1;
         }
         else
         {
            this.§?"-§ = 0;
            this.§@P§ = 0;
         }
         this.§6'§ = 0;
         this.§ !q§ = 0;
         this.§0k§ = param1.§6#f§;
         this.§^!V§ = param1.§>J§;
         this.§%!N§ = null;
         this.§9!P§ = 0;
      }
      
      private function §`$;§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§'#;§().y,param2.§'#;§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§4#$§(_loc5_,param2.§'#;§());
         _loc6_ = b2Math.§ $$§(_loc6_,param2.§<#k§());
         _loc6_ = b2Math.§4#$§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§]!C§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§]!C§(param1.§'#;§(),param2.§'#;§())).Normalize();
         var _loc8_:* = b2Math.§=7§(param1.§'#;§(),param2.§<#k§()) > 0;
         param1.§-#§(param2,_loc6_,_loc7_,_loc8_);
         param2.§1!d§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§`$&§ = null;
         if(this.m_world.§`#M§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§4"T§(this,this.m_xf,param1);
         if(this.§ $8§ & b2internal::5y)
         {
            _loc3_ = this.m_world.§'"6§.§#"2§;
            _loc2_.§'"4§(_loc3_,this.m_xf);
         }
         _loc2_.§-!l§ = this.§%!N§;
         this.§%!N§ = _loc2_;
         ++this.§9!P§;
         _loc2_.m_body = this;
         if(_loc2_.§,!l§ > 0)
         {
            this.ResetMassData();
         }
         this.m_world.§ $8§ |= b2World.§`$ §;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §;"Y§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§`$&§ = null;
         if(this.m_world.§`#M§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§%!N§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§-!l§ = param1.§-!l§;
               }
               else
               {
                  this.§%!N§ = param1.§-!l§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§-!l§;
         }
         var _loc5_:b2ContactEdge = this.§#v§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§%#d§;
            _loc5_ = _loc5_.§%I§;
            _loc7_ = _loc6_.§60§();
            _loc8_ = _loc6_.§#"Y§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§'"6§.§`"e§(_loc6_);
            }
         }
         if(this.§ $8§ & b2internal::5y)
         {
            _loc9_ = this.m_world.§'"6§.§#"2§;
            param1.§8e§(_loc9_);
         }
         param1.§`"e§();
         param1.m_body = null;
         param1.§-!l§ = null;
         --this.§9!P§;
         this.ResetMassData();
      }
      
      public function §9#6§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§`#M§() == true)
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
         var _loc6_:§`$&§ = this.m_world.§'"6§.§#"2§;
         _loc3_ = this.§%!N§;
         while(_loc3_)
         {
            _loc3_.§ #N§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§-!l§;
         }
         this.m_world.§'"6§.§^B§();
      }
      
      public function §5$A§(param1:b2Transform) : void
      {
         this.§9#6§(param1.position,param1.GetAngle());
      }
      
      public function GetTransform() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         this.§9#6§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§9#6§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §2#&§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§"#W§ == b2_staticBody)
         {
            return;
         }
         this.§4!I§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§4!I§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§"#W§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function GetDefinition() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§+L§();
         _loc1_.§@A§ = (this.§ $8§ & b2internal::@#f) == b2internal::@#f;
         _loc1_.angle = this.GetAngle();
         _loc1_.angularDamping = this.§6#O§;
         _loc1_.angularVelocity = this.m_angularVelocity;
         _loc1_.§-#l§ = (this.§ $8§ & b2internal::2!w) == b2internal::2!w;
         _loc1_.§6!t§ = (this.§ $8§ & b2internal::8#q) == b2internal::8#q;
         _loc1_.awake = (this.§ $8§ & b2internal::<#r) == b2internal::<#r;
         _loc1_.linearDamping = this.§]#c§;
         _loc1_.§-"=§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§>J§ = this.GetUserData();
         return _loc1_;
      }
      
      public function ApplyForce(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§"#W§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§?"?§.x += param1.x;
         this.§?"?§.y += param1.y;
         this.§'#<§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §9"W§(param1:Number) : void
      {
         if(this.§"#W§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§'#<§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§"#W§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§4!I§.x += this.§@P§ * param1.x;
         this.§4!I§.y += this.§@P§ * param1.y;
         this.m_angularVelocity += this.§ !q§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §??§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.GetDefinition());
         var _loc8_:b2Fixture = _loc5_.§%!N§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§-!l§;
               if(_loc7_)
               {
                  _loc7_.§-!l§ = _loc13_;
               }
               else
               {
                  _loc5_.§%!N§ = _loc13_;
               }
               --_loc5_.§9!P§;
               _loc8_.§-!l§ = _loc6_.§%!N§;
               _loc6_.§%!N§ = _loc8_;
               ++_loc6_.§9!P§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§-!l§;
            }
         }
         _loc5_.ResetMassData();
         _loc6_.ResetMassData();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§]!C§(_loc2_,b2Math.§=$+§(_loc3_,b2Math.§ $$§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§]!C§(_loc2_,b2Math.§=$+§(_loc3_,b2Math.§ $$§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§6!1§();
         _loc6_.§6!1§();
         return _loc6_;
      }
      
      public function §6"4§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§%!N§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§-!l§;
            --param1.§9!P§;
            _loc2_.§-!l§ = this.§%!N§;
            this.§%!N§ = _loc2_;
            ++this.§9!P§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§9!P§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.GetWorldCenter();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.ResetMassData();
         this.§6!1§();
      }
      
      public function GetMass() : Number
      {
         return this.§?"-§;
      }
      
      public function §5#T§() : Number
      {
         return this.§6'§;
      }
      
      public function §&!I§(param1:b2MassData) : void
      {
         param1.§&Z§ = this.§?"-§;
         param1.§2"C§ = this.§6'§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §>!N§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§`#M§() == false);
         if(this.m_world.§`#M§() == true)
         {
            return;
         }
         if(this.§"#W§ != b2_dynamicBody)
         {
            return;
         }
         this.§@P§ = 0;
         this.§6'§ = 0;
         this.§ !q§ = 0;
         this.§?"-§ = param1.§&Z§;
         if(this.§?"-§ <= 0)
         {
            this.§?"-§ = 1;
         }
         this.§@P§ = 1 / this.§?"-§;
         if(param1.§2"C§ > 0 && (this.§ $8§ & b2internal::2!w) == 0)
         {
            this.§6'§ = param1.§2"C§ - this.§?"-§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§ !q§ = 1 / this.§6'§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§&Q§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§4!I§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§4!I§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function ResetMassData() : void
      {
         var _loc4_:b2MassData = null;
         this.§?"-§ = 0;
         this.§@P§ = 0;
         this.§6'§ = 0;
         this.§ !q§ = 0;
         this.m_sweep.localCenter.§#!t§();
         if(this.§"#W§ == b2_staticBody || this.§"#W§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§,#6§(0,0);
         var _loc2_:b2Fixture = this.§%!N§;
         while(_loc2_)
         {
            if(_loc2_.§,!l§ != 0)
            {
               _loc4_ = _loc2_.§&!I§();
               this.§?"-§ += _loc4_.§&Z§;
               _loc1_.x += _loc4_.center.x * _loc4_.§&Z§;
               _loc1_.y += _loc4_.center.y * _loc4_.§&Z§;
               this.§6'§ += _loc4_.§2"C§;
            }
            _loc2_ = _loc2_.§-!l§;
         }
         if(this.§?"-§ > 0)
         {
            this.§@P§ = 1 / this.§?"-§;
            _loc1_.x *= this.§@P§;
            _loc1_.y *= this.§@P§;
         }
         else
         {
            this.§?"-§ = 1;
            this.§@P§ = 1;
         }
         if(this.§6'§ > 0 && (this.§ $8§ & b2internal::2!w) == 0)
         {
            this.§6'§ -= this.§?"-§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§6'§ *= this.§0k§;
            b2Settings.b2Assert(this.§6'§ > 0);
            this.§ !q§ = 1 / this.§6'§;
         }
         else
         {
            this.§6'§ = 0;
            this.§ !q§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§&Q§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§4!I§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§4!I§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §#"v§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§4!p§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§^E§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§ U§(this.m_xf.R,param1);
      }
      
      public function §91§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§4!I§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§4!I§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §#!h§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§4!I§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§4!I§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §"b§() : Number
      {
         return this.§]#c§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§]#c§ = param1;
      }
      
      public function §&#n§() : Number
      {
         return this.§6#O§;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         this.§6#O§ = param1;
      }
      
      public function §0!`§() : Number
      {
         return this.§1!_§;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         this.§1!_§ = param1;
      }
      
      public function SetType(param1:uint) : void
      {
         if(this.§"#W§ == param1)
         {
            return;
         }
         this.§"#W§ = param1;
         this.ResetMassData();
         if(this.§"#W§ == b2_staticBody)
         {
            this.§4!I§.§#!t§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§?"?§.§#!t§();
         this.§'#<§ = 0;
         var _loc2_:b2ContactEdge = this.§#v§;
         while(_loc2_)
         {
            _loc2_.§%#d§.§##Y§();
            _loc2_ = _loc2_.§%I§;
         }
      }
      
      public function §+L§() : uint
      {
         return this.§"#W§;
      }
      
      public function SetBullet(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ $8§ |= b2internal::8#q;
         }
         else
         {
            this.§ $8§ &= ~b2internal::8#q;
         }
      }
      
      public function §!"L§() : Boolean
      {
         return (this.§ $8§ & b2internal::8#q) == b2internal::8#q;
      }
      
      public function SetSleepingAllowed(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ $8§ |= b2internal::@#f;
         }
         else
         {
            this.§ $8§ &= ~b2internal::@#f;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ $8§ |= b2internal::<#r;
            this.§6!!§ = 0;
         }
         else
         {
            this.§ $8§ &= ~b2internal::<#r;
            this.§6!!§ = 0;
            this.§4!I§.§#!t§();
            this.m_angularVelocity = 0;
            this.§?"?§.§#!t§();
            this.§'#<§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§ $8§ & b2internal::<#r) == b2internal::<#r;
      }
      
      public function §1!O§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ $8§ |= b2internal::2!w;
         }
         else
         {
            this.§ $8§ &= ~b2internal::2!w;
         }
         this.ResetMassData();
      }
      
      public function §6V§() : Boolean
      {
         return (this.§ $8§ & b2internal::2!w) == b2internal::2!w;
      }
      
      public function SetActive(param1:Boolean) : void
      {
         var _loc2_:§`$&§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§]$1§())
         {
            return;
         }
         if(param1)
         {
            this.§ $8§ |= b2internal::5y;
            _loc2_ = this.m_world.§'"6§.§#"2§;
            _loc3_ = this.§%!N§;
            while(_loc3_)
            {
               _loc3_.§'"4§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§-!l§;
            }
         }
         else
         {
            this.§ $8§ &= ~b2internal::5y;
            _loc2_ = this.m_world.§'"6§.§#"2§;
            _loc3_ = this.§%!N§;
            while(_loc3_)
            {
               _loc3_.§8e§(_loc2_);
               _loc3_ = _loc3_.§-!l§;
            }
            _loc4_ = this.§#v§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§%I§;
               this.m_world.§'"6§.§`"e§(_loc5_.§%#d§);
            }
            this.§#v§ = null;
         }
      }
      
      public function §]$1§() : Boolean
      {
         return (this.§ $8§ & b2internal::5y) == b2internal::5y;
      }
      
      public function §+#r§() : Boolean
      {
         return (this.§ $8§ & b2internal::@#f) == b2internal::@#f;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§%!N§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§ #+§;
      }
      
      public function §>#u§() : b2ControllerEdge
      {
         return this.§^2§;
      }
      
      public function §class§() : b2ContactEdge
      {
         return this.§#v§;
      }
      
      public function §^"y§() : b2Body
      {
         return this.§-!l§;
      }
      
      public function GetUserData() : *
      {
         return this.§^!V§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§^!V§ = param1;
      }
      
      public function GetWorld() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §6!1§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §-!W§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§`$&§ = this.m_world.§'"6§.§#"2§;
         _loc4_ = this.§%!N§;
         while(_loc4_)
         {
            _loc4_.§ #N§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§-!l§;
         }
      }
      
      b2internal function §6#K§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §3#B§(param1:b2Body) : Boolean
      {
         if(this.§"#W§ != b2_dynamicBody && param1.§"#W§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§ #+§;
         while(_loc2_)
         {
            if(_loc2_.§!y§ == param1)
            {
               if(_loc2_.joint.§"#X§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§%I§;
         }
         return true;
      }
      
      public function SetForcedContactFiltering(param1:Boolean) : void
      {
         this.§@!4§ = param1;
      }
      
      b2internal function §74§(param1:Number) : void
      {
         this.m_sweep.§74§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§6#K§();
      }
   }
}

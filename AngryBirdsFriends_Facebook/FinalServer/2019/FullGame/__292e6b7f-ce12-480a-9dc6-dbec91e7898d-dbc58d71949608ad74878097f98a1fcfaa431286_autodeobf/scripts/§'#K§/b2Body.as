package §'#K§
{
   import §!"b§.b2JointEdge;
   import §&$+§.b2Settings;
   import §&$+§.b2internal;
   import §,#E§.§ #Z§;
   import §-#F§.b2Contact;
   import §-#F§.b2ContactEdge;
   import §04§.b2Mat22;
   import §04§.b2Math;
   import §04§.b2Sweep;
   import §04§.b2Transform;
   import §04§.b2Vec2;
   import §1#I§.b2EdgeShape;
   import §1#I§.b2MassData;
   import §1#I§.b2Shape;
   import §>!2§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §#";§:b2Transform = new b2Transform();
      
      b2internal static var §<!&§:uint = 1;
      
      b2internal static var §^K§:uint = 2;
      
      b2internal static var §"$0§:uint = 4;
      
      b2internal static var §1#A§:uint = 8;
      
      b2internal static var §9!?§:uint = 16;
      
      b2internal static var §9#@§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §'#h§:uint;
      
      b2internal var §#!T§:int;
      
      b2internal var §^!l§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §^%§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §@q§:b2Vec2;
      
      b2internal var §5#o§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §-$7§:b2Body;
      
      b2internal var §>d§:b2Body;
      
      b2internal var §&^§:b2Fixture;
      
      b2internal var §0E§:int;
      
      b2internal var §`"&§:b2ControllerEdge;
      
      b2internal var §`#I§:int;
      
      b2internal var §->§:b2JointEdge;
      
      b2internal var §!!k§:b2ContactEdge;
      
      b2internal var §'g§:Number;
      
      b2internal var §<A§:Number;
      
      b2internal var §9"%§:Number;
      
      b2internal var §2k§:Number;
      
      b2internal var §"",§:Number;
      
      b2internal var §##O§:Number;
      
      b2internal var §="%§:Number;
      
      b2internal var §-#0§:Number;
      
      b2internal var §-q§:Number;
      
      b2internal var §8T§:Boolean;
      
      private var §5!3§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§^%§ = new b2Vec2();
         this.§@q§ = new b2Vec2();
         super();
         this.§'#h§ = 0;
         if(param1.§8!1§)
         {
            this.§'#h§ |= b2internal::1#A;
         }
         if(param1.§@!"§)
         {
            this.§'#h§ |= b2internal::9!?;
         }
         if(param1.§1"&§)
         {
            this.§'#h§ |= b2internal::"$0;
         }
         if(param1.awake)
         {
            this.§'#h§ |= b2internal::^K;
         }
         if(param1.active)
         {
            this.§'#h§ |= b2internal::9#@;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§3-§();
         this.m_sweep.§60§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§->§ = null;
         this.§`"&§ = null;
         this.§!!k§ = null;
         this.§`#I§ = 0;
         this.§-$7§ = null;
         this.§>d§ = null;
         this.§^%§.SetV(param1.§>"Y§);
         this.m_angularVelocity = param1.angularVelocity;
         this.§##O§ = param1.linearDamping;
         this.§="%§ = param1.angularDamping;
         this.§-q§ = param1.§4#K§;
         this.§@q§.Set(0,0);
         this.§5#o§ = 0;
         this.§-#0§ = 0;
         this.§#!T§ = param1.type;
         if(this.§#!T§ == b2_dynamicBody)
         {
            this.§'g§ = 1;
            this.§<A§ = 1;
         }
         else
         {
            this.§'g§ = 0;
            this.§<A§ = 0;
         }
         this.§9"%§ = 0;
         this.§2k§ = 0;
         this.§"",§ = param1.§?#?§;
         this.§5!3§ = param1.§9!6§;
         this.§&^§ = null;
         this.§0E§ = 0;
      }
      
      private function §9#2§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§8!z§().y,param2.§8!z§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§4"1§(_loc5_,param2.§8!z§());
         _loc6_ = b2Math.§7q§(_loc6_,param2.§-$!§());
         _loc6_ = b2Math.§4"1§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§%#§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§%#§(param1.§8!z§(),param2.§8!z§())).Normalize();
         var _loc8_:* = b2Math.§!"+§(param1.§8!z§(),param2.§-$!§()) > 0;
         param1.§4"]§(param2,_loc6_,_loc7_,_loc8_);
         param2.§ $=§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§ #Z§ = null;
         if(this.m_world.§]#^§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§9#s§(this,this.m_xf,param1);
         if(this.§'#h§ & b2internal::9#@)
         {
            _loc3_ = this.m_world.§]!"§.§6";§;
            _loc2_.§7#0§(_loc3_,this.m_xf);
         }
         _loc2_.§>d§ = this.§&^§;
         this.§&^§ = _loc2_;
         ++this.§0E§;
         _loc2_.m_body = this;
         if(_loc2_.§-"J§ > 0)
         {
            this.ResetMassData();
         }
         this.m_world.§'#h§ |= b2World.§;#4§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §>#m§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§ #Z§ = null;
         if(this.m_world.§]#^§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§&^§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§>d§ = param1.§>d§;
               }
               else
               {
                  this.§&^§ = param1.§>d§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§>d§;
         }
         var _loc5_:b2ContactEdge = this.§!!k§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§>#I§;
            _loc5_ = _loc5_.next;
            _loc7_ = _loc6_.§5!s§();
            _loc8_ = _loc6_.§5!W§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§]!"§.§,#?§(_loc6_);
            }
         }
         if(this.§'#h§ & b2internal::9#@)
         {
            _loc9_ = this.m_world.§]!"§.§6";§;
            param1.§,7§(_loc9_);
         }
         param1.§,#?§();
         param1.m_body = null;
         param1.§>d§ = null;
         --this.§0E§;
         this.ResetMassData();
      }
      
      public function §-#k§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§]#^§() == true)
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
         var _loc6_:§ #Z§ = this.m_world.§]!"§.§6";§;
         _loc3_ = this.§&^§;
         while(_loc3_)
         {
            _loc3_.§[q§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§>d§;
         }
         this.m_world.§]!"§.§=I§();
      }
      
      public function §=!>§(param1:b2Transform) : void
      {
         this.§-#k§(param1.position,param1.GetAngle());
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
         this.§-#k§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§-#k§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §+#J§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§#!T§ == b2_staticBody)
         {
            return;
         }
         this.§^%§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§^%§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§#!T§ == b2_staticBody)
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
         _loc1_.type = this.§<!e§();
         _loc1_.§1"&§ = (this.§'#h§ & b2internal::"$0) == b2internal::"$0;
         _loc1_.angle = this.GetAngle();
         _loc1_.angularDamping = this.§="%§;
         _loc1_.angularVelocity = this.m_angularVelocity;
         _loc1_.§@!"§ = (this.§'#h§ & b2internal::9!?) == b2internal::9!?;
         _loc1_.§8!1§ = (this.§'#h§ & b2internal::1#A) == b2internal::1#A;
         _loc1_.awake = (this.§'#h§ & b2internal::^K) == b2internal::^K;
         _loc1_.linearDamping = this.§##O§;
         _loc1_.§>"Y§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§9!6§ = this.GetUserData();
         return _loc1_;
      }
      
      public function ApplyForce(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§#!T§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§@q§.x += param1.x;
         this.§@q§.y += param1.y;
         this.§5#o§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §%#,§(param1:Number) : void
      {
         if(this.§#!T§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§5#o§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§#!T§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§^%§.x += this.§<A§ * param1.x;
         this.§^%§.y += this.§<A§ * param1.y;
         this.m_angularVelocity += this.§2k§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §;_§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.GetDefinition());
         var _loc8_:b2Fixture = _loc5_.§&^§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§>d§;
               if(_loc7_)
               {
                  _loc7_.§>d§ = _loc13_;
               }
               else
               {
                  _loc5_.§&^§ = _loc13_;
               }
               --_loc5_.§0E§;
               _loc8_.§>d§ = _loc6_.§&^§;
               _loc6_.§&^§ = _loc8_;
               ++_loc6_.§0E§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§>d§;
            }
         }
         _loc5_.ResetMassData();
         _loc6_.ResetMassData();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§%#§(_loc2_,b2Math.§+"Y§(_loc3_,b2Math.§7q§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§%#§(_loc2_,b2Math.§+"Y§(_loc3_,b2Math.§7q§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§^"^§();
         _loc6_.§^"^§();
         return _loc6_;
      }
      
      public function §-g§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§&^§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§>d§;
            --param1.§0E§;
            _loc2_.§>d§ = this.§&^§;
            this.§&^§ = _loc2_;
            ++this.§0E§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§0E§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.GetWorldCenter();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.ResetMassData();
         this.§^"^§();
      }
      
      public function GetMass() : Number
      {
         return this.§'g§;
      }
      
      public function §@!j§() : Number
      {
         return this.§9"%§;
      }
      
      public function §`"J§(param1:b2MassData) : void
      {
         param1.§="-§ = this.§'g§;
         param1.§&n§ = this.§9"%§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §4&§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§]#^§() == false);
         if(this.m_world.§]#^§() == true)
         {
            return;
         }
         if(this.§#!T§ != b2_dynamicBody)
         {
            return;
         }
         this.§<A§ = 0;
         this.§9"%§ = 0;
         this.§2k§ = 0;
         this.§'g§ = param1.§="-§;
         if(this.§'g§ <= 0)
         {
            this.§'g§ = 1;
         }
         this.§<A§ = 1 / this.§'g§;
         if(param1.§&n§ > 0 && (this.§'#h§ & b2internal::9!?) == 0)
         {
            this.§9"%§ = param1.§&n§ - this.§'g§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§2k§ = 1 / this.§9"%§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§ W§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§^%§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§^%§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function ResetMassData() : void
      {
         var _loc4_:b2MassData = null;
         this.§'g§ = 0;
         this.§<A§ = 0;
         this.§9"%§ = 0;
         this.§2k§ = 0;
         this.m_sweep.localCenter.§3-§();
         if(this.§#!T§ == b2_staticBody || this.§#!T§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§!"i§(0,0);
         var _loc2_:b2Fixture = this.§&^§;
         while(_loc2_)
         {
            if(_loc2_.§-"J§ != 0)
            {
               _loc4_ = _loc2_.§`"J§();
               this.§'g§ += _loc4_.§="-§;
               _loc1_.x += _loc4_.center.x * _loc4_.§="-§;
               _loc1_.y += _loc4_.center.y * _loc4_.§="-§;
               this.§9"%§ += _loc4_.§&n§;
            }
            _loc2_ = _loc2_.§>d§;
         }
         if(this.§'g§ > 0)
         {
            this.§<A§ = 1 / this.§'g§;
            _loc1_.x *= this.§<A§;
            _loc1_.y *= this.§<A§;
         }
         else
         {
            this.§'g§ = 1;
            this.§<A§ = 1;
         }
         if(this.§9"%§ > 0 && (this.§'#h§ & b2internal::9!?) == 0)
         {
            this.§9"%§ -= this.§'g§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§9"%§ *= this.§"",§;
            b2Settings.b2Assert(this.§9"%§ > 0);
            this.§2k§ = 1 / this.§9"%§;
         }
         else
         {
            this.§9"%§ = 0;
            this.§2k§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§ W§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§^%§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§^%§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §2!9§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§&!@§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§%!1§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§6"`§(this.m_xf.R,param1);
      }
      
      public function §4!#§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§^%§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§^%§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §=$4§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§^%§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§^%§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §9"a§() : Number
      {
         return this.§##O§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§##O§ = param1;
      }
      
      public function §=#E§() : Number
      {
         return this.§="%§;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         this.§="%§ = param1;
      }
      
      public function §'"J§() : Number
      {
         return this.§-q§;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         this.§-q§ = param1;
      }
      
      public function SetType(param1:uint) : void
      {
         if(this.§#!T§ == param1)
         {
            return;
         }
         this.§#!T§ = param1;
         this.ResetMassData();
         if(this.§#!T§ == b2_staticBody)
         {
            this.§^%§.§3-§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§@q§.§3-§();
         this.§5#o§ = 0;
         var _loc2_:b2ContactEdge = this.§!!k§;
         while(_loc2_)
         {
            _loc2_.§>#I§.§5$5§();
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §<!e§() : uint
      {
         return this.§#!T§;
      }
      
      public function SetBullet(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'#h§ |= b2internal::1#A;
         }
         else
         {
            this.§'#h§ &= ~b2internal::1#A;
         }
      }
      
      public function §>#9§() : Boolean
      {
         return (this.§'#h§ & b2internal::1#A) == b2internal::1#A;
      }
      
      public function SetSleepingAllowed(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'#h§ |= b2internal::"$0;
         }
         else
         {
            this.§'#h§ &= ~b2internal::"$0;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'#h§ |= b2internal::^K;
            this.§-#0§ = 0;
         }
         else
         {
            this.§'#h§ &= ~b2internal::^K;
            this.§-#0§ = 0;
            this.§^%§.§3-§();
            this.m_angularVelocity = 0;
            this.§@q§.§3-§();
            this.§5#o§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§'#h§ & b2internal::^K) == b2internal::^K;
      }
      
      public function §1"c§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'#h§ |= b2internal::9!?;
         }
         else
         {
            this.§'#h§ &= ~b2internal::9!?;
         }
         this.ResetMassData();
      }
      
      public function §!j§() : Boolean
      {
         return (this.§'#h§ & b2internal::9!?) == b2internal::9!?;
      }
      
      public function SetActive(param1:Boolean) : void
      {
         var _loc2_:§ #Z§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§-"x§())
         {
            return;
         }
         if(param1)
         {
            this.§'#h§ |= b2internal::9#@;
            _loc2_ = this.m_world.§]!"§.§6";§;
            _loc3_ = this.§&^§;
            while(_loc3_)
            {
               _loc3_.§7#0§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§>d§;
            }
         }
         else
         {
            this.§'#h§ &= ~b2internal::9#@;
            _loc2_ = this.m_world.§]!"§.§6";§;
            _loc3_ = this.§&^§;
            while(_loc3_)
            {
               _loc3_.§,7§(_loc2_);
               _loc3_ = _loc3_.§>d§;
            }
            _loc4_ = this.§!!k§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.next;
               this.m_world.§]!"§.§,#?§(_loc5_.§>#I§);
            }
            this.§!!k§ = null;
         }
      }
      
      public function §-"x§() : Boolean
      {
         return (this.§'#h§ & b2internal::9#@) == b2internal::9#@;
      }
      
      public function §]J§() : Boolean
      {
         return (this.§'#h§ & b2internal::"$0) == b2internal::"$0;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§&^§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§->§;
      }
      
      public function §!#I§() : b2ControllerEdge
      {
         return this.§`"&§;
      }
      
      public function §^"o§() : b2ContactEdge
      {
         return this.§!!k§;
      }
      
      public function §4!7§() : b2Body
      {
         return this.§>d§;
      }
      
      public function GetUserData() : *
      {
         return this.§5!3§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§5!3§ = param1;
      }
      
      public function GetWorld() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §^"^§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §#";§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§ #Z§ = this.m_world.§]!"§.§6";§;
         _loc4_ = this.§&^§;
         while(_loc4_)
         {
            _loc4_.§[q§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§>d§;
         }
      }
      
      b2internal function §&" §() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §]#+§(param1:b2Body) : Boolean
      {
         if(this.§#!T§ != b2_dynamicBody && param1.§#!T§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§->§;
         while(_loc2_)
         {
            if(_loc2_.§%#]§ == param1)
            {
               if(_loc2_.joint.§''§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.next;
         }
         return true;
      }
      
      public function SetForcedContactFiltering(param1:Boolean) : void
      {
         this.§8T§ = param1;
      }
      
      b2internal function §3"x§(param1:Number) : void
      {
         this.m_sweep.§3"x§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§&" §();
      }
   }
}

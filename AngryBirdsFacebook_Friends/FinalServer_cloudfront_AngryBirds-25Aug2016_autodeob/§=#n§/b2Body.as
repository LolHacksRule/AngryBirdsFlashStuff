package §=#n§
{
   import §0H§.b2Settings;
   import §0H§.b2internal;
   import §0m§.b2Mat22;
   import §0m§.b2Math;
   import §0m§.b2Sweep;
   import §0m§.b2Transform;
   import §0m§.b2Vec2;
   import §1#?§.b2ControllerEdge;
   import §3"q§.§2"E§;
   import §;"R§.b2Contact;
   import §;"R§.b2ContactEdge;
   import §?!c§.b2EdgeShape;
   import §?!c§.b2MassData;
   import §?!c§.b2Shape;
   import §@!O§.b2JointEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §3"<§:b2Transform = new b2Transform();
      
      b2internal static var §`#W§:uint = 1;
      
      b2internal static var §'"N§:uint = 2;
      
      b2internal static var §#U§:uint = 4;
      
      b2internal static var §="_§:uint = 8;
      
      b2internal static var §;!&§:uint = 16;
      
      b2internal static var §0"a§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §#!<§:uint;
      
      b2internal var §6"&§:int;
      
      b2internal var §<#o§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §'"_§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §&3§:b2Vec2;
      
      b2internal var §4",§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §+"j§:b2Body;
      
      b2internal var §@##§:b2Body;
      
      b2internal var §]b§:b2Fixture;
      
      b2internal var §1,§:int;
      
      b2internal var §@#l§:b2ControllerEdge;
      
      b2internal var §@"=§:int;
      
      b2internal var §'!X§:b2JointEdge;
      
      b2internal var §<"?§:b2ContactEdge;
      
      b2internal var §8!L§:Number;
      
      b2internal var §7"P§:Number;
      
      b2internal var §>!e§:Number;
      
      b2internal var §3!F§:Number;
      
      b2internal var §=!l§:Number;
      
      b2internal var §5$1§:Number;
      
      b2internal var §%#K§:Number;
      
      b2internal var §7"D§:Number;
      
      b2internal var §5!+§:Number;
      
      b2internal var §#"^§:Boolean;
      
      private var §^"]§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§'"_§ = new b2Vec2();
         this.§&3§ = new b2Vec2();
         super();
         this.§#!<§ = 0;
         if(param1.§`"q§)
         {
            this.§#!<§ |= b2internal::="_;
         }
         if(param1.§1#[§)
         {
            this.§#!<§ |= b2internal::;!&;
         }
         if(param1.§,!6§)
         {
            this.§#!<§ |= b2internal::#U;
         }
         if(param1.awake)
         {
            this.§#!<§ |= b2internal::'"N;
         }
         if(param1.active)
         {
            this.§#!<§ |= b2internal::0"a;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§,[§();
         this.m_sweep.§"#z§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§'!X§ = null;
         this.§@#l§ = null;
         this.§<"?§ = null;
         this.§@"=§ = 0;
         this.§+"j§ = null;
         this.§@##§ = null;
         this.§'"_§.SetV(param1.§!#m§);
         this.m_angularVelocity = param1.angularVelocity;
         this.§5$1§ = param1.linearDamping;
         this.§%#K§ = param1.angularDamping;
         this.§5!+§ = param1.§,!e§;
         this.§&3§.Set(0,0);
         this.§4",§ = 0;
         this.§7"D§ = 0;
         this.§6"&§ = param1.type;
         if(this.§6"&§ == b2_dynamicBody)
         {
            this.§8!L§ = 1;
            this.§7"P§ = 1;
         }
         else
         {
            this.§8!L§ = 0;
            this.§7"P§ = 0;
         }
         this.§>!e§ = 0;
         this.§3!F§ = 0;
         this.§=!l§ = param1.§4!K§;
         this.§^"]§ = param1.§>"<§;
         this.§]b§ = null;
         this.§1,§ = 0;
      }
      
      private function §^"f§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§`#j§().y,param2.§`#j§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§%!t§(_loc5_,param2.§`#j§());
         _loc6_ = b2Math.§>!6§(_loc6_,param2.§,#8§());
         _loc6_ = b2Math.§%!t§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§&#d§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§&#d§(param1.§`#j§(),param2.§`#j§())).Normalize();
         var _loc8_:* = b2Math.§&#3§(param1.§`#j§(),param2.§,#8§()) > 0;
         param1.§=_§(param2,_loc6_,_loc7_,_loc8_);
         param2.§6%§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§2"E§ = null;
         if(this.m_world.§ !4§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§'#h§(this,this.m_xf,param1);
         if(this.§#!<§ & b2internal::0"a)
         {
            _loc3_ = this.m_world.§?#L§.§2!6§;
            _loc2_.§=&§(_loc3_,this.m_xf);
         }
         _loc2_.§@##§ = this.§]b§;
         this.§]b§ = _loc2_;
         ++this.§1,§;
         _loc2_.m_body = this;
         if(_loc2_.§3"a§ > 0)
         {
            this.ResetMassData();
         }
         this.m_world.§#!<§ |= b2World.§2"L§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §+g§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§2"E§ = null;
         if(this.m_world.§ !4§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§]b§;
         var _loc3_:b2Fixture = null;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§@##§ = param1.§@##§;
               }
               else
               {
                  this.§]b§ = param1.§@##§;
               }
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§@##§;
         }
         var _loc5_:b2ContactEdge = this.§<"?§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§<#L§;
            _loc5_ = _loc5_.§0$0§;
            _loc7_ = _loc6_.§%$-§();
            _loc8_ = _loc6_.§true§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§?#L§.§@!]§(_loc6_);
            }
         }
         if(this.§#!<§ & b2internal::0"a)
         {
            _loc9_ = this.m_world.§?#L§.§2!6§;
            param1.§'!g§(_loc9_);
         }
         param1.§@!]§();
         param1.m_body = null;
         param1.§@##§ = null;
         --this.§1,§;
         this.ResetMassData();
      }
      
      public function §]#T§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§ !4§() == true)
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
         var _loc6_:§2"E§ = this.m_world.§?#L§.§2!6§;
         _loc3_ = this.§]b§;
         while(_loc3_)
         {
            _loc3_.§##Q§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§@##§;
         }
         this.m_world.§?#L§.§=§();
      }
      
      public function §3u§(param1:b2Transform) : void
      {
         this.§]#T§(param1.position,param1.GetAngle());
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
         this.§]#T§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§]#T§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §"S§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§6"&§ == b2_staticBody)
         {
            return;
         }
         this.§'"_§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§'"_§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§6"&§ == b2_staticBody)
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
         _loc1_.type = this.§ "c§();
         _loc1_.§,!6§ = (this.§#!<§ & b2internal::#U) == b2internal::#U;
         _loc1_.angle = this.GetAngle();
         _loc1_.angularDamping = this.§%#K§;
         _loc1_.angularVelocity = this.m_angularVelocity;
         _loc1_.§1#[§ = (this.§#!<§ & b2internal::;!&) == b2internal::;!&;
         _loc1_.§`"q§ = (this.§#!<§ & b2internal::="_) == b2internal::="_;
         _loc1_.awake = (this.§#!<§ & b2internal::'"N) == b2internal::'"N;
         _loc1_.linearDamping = this.§5$1§;
         _loc1_.§!#m§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§>"<§ = this.GetUserData();
         return _loc1_;
      }
      
      public function ApplyForce(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§6"&§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§&3§.x += param1.x;
         this.§&3§.y += param1.y;
         this.§4",§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function § "=§(param1:Number) : void
      {
         if(this.§6"&§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§4",§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§6"&§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§'"_§.x += this.§7"P§ * param1.x;
         this.§'"_§.y += this.§7"P§ * param1.y;
         this.m_angularVelocity += this.§3!F§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §[#A§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.GetDefinition());
         var _loc8_:b2Fixture = _loc5_.§]b§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§@##§;
               if(_loc7_)
               {
                  _loc7_.§@##§ = _loc13_;
               }
               else
               {
                  _loc5_.§]b§ = _loc13_;
               }
               --_loc5_.§1,§;
               _loc8_.§@##§ = _loc6_.§]b§;
               _loc6_.§]b§ = _loc8_;
               ++_loc6_.§1,§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§@##§;
            }
         }
         _loc5_.ResetMassData();
         _loc6_.ResetMassData();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§&#d§(_loc2_,b2Math.§'"t§(_loc3_,b2Math.§>!6§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§&#d§(_loc2_,b2Math.§'"t§(_loc3_,b2Math.§>!6§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§;!g§();
         _loc6_.§;!g§();
         return _loc6_;
      }
      
      public function §7!"§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§]b§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§@##§;
            --param1.§1,§;
            _loc2_.§@##§ = this.§]b§;
            this.§]b§ = _loc2_;
            ++this.§1,§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§1,§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         _loc3_.GetWorldCenter();
         _loc4_.GetWorldCenter();
         _loc3_.GetLinearVelocity().Copy();
         _loc4_.GetLinearVelocity().Copy();
         Number(_loc3_.GetAngularVelocity());
         Number(_loc4_.GetAngularVelocity());
         _loc3_.ResetMassData();
         this.§;!g§();
      }
      
      public function GetMass() : Number
      {
         return this.§8!L§;
      }
      
      public function §=;§() : Number
      {
         return this.§>!e§;
      }
      
      public function § "v§(param1:b2MassData) : void
      {
         param1.§4!-§ = this.§8!L§;
         param1.§1<§ = this.§>!e§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §5!1§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§ !4§() == false);
         if(this.m_world.§ !4§() == true)
         {
            return;
         }
         if(this.§6"&§ != b2_dynamicBody)
         {
            return;
         }
         this.§7"P§ = 0;
         this.§>!e§ = 0;
         this.§3!F§ = 0;
         this.§8!L§ = param1.§4!-§;
         if(this.§8!L§ <= 0)
         {
            this.§8!L§ = 1;
         }
         this.§7"P§ = 1 / this.§8!L§;
         if(param1.§1<§ > 0 && (this.§#!<§ & b2internal::;!&) == 0)
         {
            this.§>!e§ = param1.§1<§ - this.§8!L§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§3!F§ = 1 / this.§>!e§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§0#O§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§'"_§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§'"_§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function ResetMassData() : void
      {
         var _loc4_:b2MassData = null;
         this.§8!L§ = 0;
         this.§7"P§ = 0;
         this.§>!e§ = 0;
         this.§3!F§ = 0;
         this.m_sweep.localCenter.§,[§();
         if(this.§6"&§ == b2_staticBody || this.§6"&§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§'"n§(0,0);
         var _loc2_:b2Fixture = this.§]b§;
         while(_loc2_)
         {
            if(_loc2_.§3"a§ != 0)
            {
               _loc4_ = _loc2_.§ "v§();
               this.§8!L§ += _loc4_.§4!-§;
               _loc1_.x += _loc4_.center.x * _loc4_.§4!-§;
               _loc1_.y += _loc4_.center.y * _loc4_.§4!-§;
               this.§>!e§ += _loc4_.§1<§;
            }
            _loc2_ = _loc2_.§@##§;
         }
         if(this.§8!L§ > 0)
         {
            this.§7"P§ = 1 / this.§8!L§;
            _loc1_.x *= this.§7"P§;
            _loc1_.y *= this.§7"P§;
         }
         else
         {
            this.§8!L§ = 1;
            this.§7"P§ = 1;
         }
         if(this.§>!e§ > 0 && (this.§#!<§ & b2internal::;!&) == 0)
         {
            this.§>!e§ -= this.§8!L§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§>!e§ *= this.§=!l§;
            b2Settings.b2Assert(this.§>!e§ > 0);
            this.§3!F§ = 1 / this.§>!e§;
         }
         else
         {
            this.§>!e§ = 0;
            this.§3!F§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§0#O§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§'"_§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§'"_§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §@!D§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§@6§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§8$7§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§'h§(this.m_xf.R,param1);
      }
      
      public function § !$§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§'"_§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§'"_§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §1#f§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§'"_§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§'"_§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §"&§() : Number
      {
         return this.§5$1§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§5$1§ = param1;
      }
      
      public function §@#'§() : Number
      {
         return this.§%#K§;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         this.§%#K§ = param1;
      }
      
      public function §!!m§() : Number
      {
         return this.§5!+§;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         this.§5!+§ = param1;
      }
      
      public function SetType(param1:uint) : void
      {
         if(this.§6"&§ == param1)
         {
            return;
         }
         this.§6"&§ = param1;
         this.ResetMassData();
         if(this.§6"&§ == b2_staticBody)
         {
            this.§'"_§.§,[§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§&3§.§,[§();
         this.§4",§ = 0;
         var _loc2_:b2ContactEdge = this.§<"?§;
         while(_loc2_)
         {
            _loc2_.§<#L§.§!$,§();
            _loc2_ = _loc2_.§0$0§;
         }
      }
      
      public function § "c§() : uint
      {
         return this.§6"&§;
      }
      
      public function SetBullet(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#!<§ |= b2internal::="_;
         }
         else
         {
            this.§#!<§ &= ~b2internal::="_;
         }
      }
      
      public function §6!_§() : Boolean
      {
         return (this.§#!<§ & b2internal::="_) == b2internal::="_;
      }
      
      public function SetSleepingAllowed(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#!<§ |= b2internal::#U;
         }
         else
         {
            this.§#!<§ &= ~b2internal::#U;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#!<§ |= b2internal::'"N;
            this.§7"D§ = 0;
         }
         else
         {
            this.§#!<§ &= ~b2internal::'"N;
            this.§7"D§ = 0;
            this.§'"_§.§,[§();
            this.m_angularVelocity = 0;
            this.§&3§.§,[§();
            this.§4",§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§#!<§ & b2internal::'"N) == b2internal::'"N;
      }
      
      public function §'#U§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#!<§ |= b2internal::;!&;
         }
         else
         {
            this.§#!<§ &= ~b2internal::;!&;
         }
         this.ResetMassData();
      }
      
      public function §4!k§() : Boolean
      {
         return (this.§#!<§ & b2internal::;!&) == b2internal::;!&;
      }
      
      public function SetActive(param1:Boolean) : void
      {
         var _loc2_:§2"E§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§[G§())
         {
            return;
         }
         if(param1)
         {
            this.§#!<§ |= b2internal::0"a;
            _loc2_ = this.m_world.§?#L§.§2!6§;
            _loc3_ = this.§]b§;
            while(_loc3_)
            {
               _loc3_.§=&§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§@##§;
            }
         }
         else
         {
            this.§#!<§ &= ~b2internal::0"a;
            _loc2_ = this.m_world.§?#L§.§2!6§;
            _loc3_ = this.§]b§;
            while(_loc3_)
            {
               _loc3_.§'!g§(_loc2_);
               _loc3_ = _loc3_.§@##§;
            }
            _loc4_ = this.§<"?§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§0$0§;
               this.m_world.§?#L§.§@!]§(_loc5_.§<#L§);
            }
            this.§<"?§ = null;
         }
      }
      
      public function §[G§() : Boolean
      {
         return (this.§#!<§ & b2internal::0"a) == b2internal::0"a;
      }
      
      public function §!"^§() : Boolean
      {
         return (this.§#!<§ & b2internal::#U) == b2internal::#U;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§]b§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§'!X§;
      }
      
      public function §0"'§() : b2ControllerEdge
      {
         return this.§@#l§;
      }
      
      public function §;Y§() : b2ContactEdge
      {
         return this.§<"?§;
      }
      
      public function § !V§() : b2Body
      {
         return this.§@##§;
      }
      
      public function GetUserData() : *
      {
         return this.§^"]§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§^"]§ = param1;
      }
      
      public function §[$9§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §;!g§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §3"<§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§2"E§ = this.m_world.§?#L§.§2!6§;
         _loc4_ = this.§]b§;
         while(_loc4_)
         {
            _loc4_.§##Q§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§@##§;
         }
      }
      
      b2internal function §#!i§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §3#K§(param1:b2Body) : Boolean
      {
         if(this.§6"&§ != b2_dynamicBody && param1.§6"&§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§'!X§;
         while(_loc2_)
         {
            if(_loc2_.§5W§ == param1)
            {
               if(_loc2_.joint.§5#&§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§0$0§;
         }
         return true;
      }
      
      public function SetForcedContactFiltering(param1:Boolean) : void
      {
         this.§#"^§ = param1;
      }
      
      b2internal function §8b§(param1:Number) : void
      {
         this.m_sweep.§8b§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§#!i§();
      }
   }
}

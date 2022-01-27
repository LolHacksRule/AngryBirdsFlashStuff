package §;`§
{
   import §"!w§.b2EdgeShape;
   import §"!w§.b2MassData;
   import §"!w§.b2Shape;
   import §'!^§.b2Contact;
   import §'!^§.b2ContactEdge;
   import §8K§.b2Settings;
   import §8K§.b2internal;
   import §>!F§.b2ControllerEdge;
   import §>!m§.§,t§;
   import §?"#§.b2JointEdge;
   import §[!f§.b2Mat22;
   import §[!f§.b2Math;
   import §[!f§.b2Sweep;
   import §[!f§.b2Transform;
   import §[!f§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §>4§:b2Transform = new b2Transform();
      
      b2internal static var §'!§:uint = 1;
      
      b2internal static var §5"<§:uint = 2;
      
      b2internal static var §&>§:uint = 4;
      
      b2internal static var §,j§:uint = 8;
      
      b2internal static var §84§:uint = 16;
      
      b2internal static var §&"A§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §4C§:uint;
      
      b2internal var §9!w§:int;
      
      b2internal var §`!q§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §0!'§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §5!@§:b2Vec2;
      
      b2internal var §]"@§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §#!o§:b2Body;
      
      b2internal var §+!>§:b2Body;
      
      b2internal var §2§:b2Fixture;
      
      b2internal var §@!h§:int;
      
      b2internal var §+]§:b2ControllerEdge;
      
      b2internal var § !Y§:int;
      
      b2internal var §2!n§:b2JointEdge;
      
      b2internal var §7! §:b2ContactEdge;
      
      b2internal var §->§:Number;
      
      b2internal var §9K§:Number;
      
      b2internal var § !,§:Number;
      
      b2internal var §%"+§:Number;
      
      b2internal var §]!Y§:Number;
      
      b2internal var §,B§:Number;
      
      b2internal var §+!]§:Number;
      
      b2internal var §'!2§:Number;
      
      private var §#!;§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§0!'§ = new b2Vec2();
         this.§5!@§ = new b2Vec2();
         super();
         this.§4C§ = 0;
         if(param1.§!"H§)
         {
            this.§4C§ |= b2internal::,j;
         }
         if(param1.§,!n§)
         {
            this.§4C§ |= b2internal::84;
         }
         if(param1.§7W§)
         {
            this.§4C§ |= b2internal::&>;
         }
         if(param1.§?!k§)
         {
            this.§4C§ |= b2internal::5"<;
         }
         if(param1.§`!p§)
         {
            this.§4C§ |= b2internal::&"A;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§]#§();
         this.m_sweep.§6!5§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§2!n§ = null;
         this.§+]§ = null;
         this.§7! § = null;
         this.§ !Y§ = 0;
         this.§#!o§ = null;
         this.§+!>§ = null;
         this.§0!'§.SetV(param1.§7N§);
         this.m_angularVelocity = param1.§!z§;
         this.§,B§ = param1.§1X§;
         this.§+!]§ = param1.§'"§;
         this.§5!@§.Set(0,0);
         this.§]"@§ = 0;
         this.§'!2§ = 0;
         this.§9!w§ = param1.type;
         if(this.§9!w§ == b2_dynamicBody)
         {
            this.§->§ = 1;
            this.§9K§ = 1;
         }
         else
         {
            this.§->§ = 0;
            this.§9K§ = 0;
         }
         this.§ !,§ = 0;
         this.§%"+§ = 0;
         this.§]!Y§ = param1.§%B§;
         this.§#!;§ = param1.§?!#§;
         this.§2§ = null;
         this.§@!h§ = 0;
      }
      
      private function §8!L§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§-!?§().y,param2.§-!?§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§,5§(_loc5_,param2.§-!?§());
         _loc6_ = b2Math.§0t§(_loc6_,param2.§ <§());
         _loc6_ = b2Math.§,5§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§6i§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§6i§(param1.§-!?§(),param2.§-!?§())).Normalize();
         var _loc8_:* = b2Math.§0T§(param1.§-!?§(),param2.§ <§()) > 0;
         param1.§7V§(param2,_loc6_,_loc7_,_loc8_);
         param2.§>"9§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§,t§ = null;
         if(this.m_world.§]!H§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§&!L§(this,this.m_xf,param1);
         if(this.§4C§ & b2internal::&"A)
         {
            _loc3_ = this.m_world.§3!y§.§%C§;
            _loc2_.§=!o§(_loc3_,this.m_xf);
         }
         _loc2_.§+!>§ = this.§2§;
         this.§2§ = _loc2_;
         ++this.§@!h§;
         _loc2_.m_body = this;
         if(_loc2_.§6!y§ > 0)
         {
            this.§-!u§();
         }
         this.m_world.§4C§ |= b2World.§`+§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §&-§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§,t§ = null;
         if(this.m_world.§]!H§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§2§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§+!>§ = param1.§+!>§;
               }
               else
               {
                  this.§2§ = param1.§+!>§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§+!>§;
         }
         var _loc5_:b2ContactEdge = this.§7! §;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§9!G§;
            _loc5_ = _loc5_.§@!6§;
            _loc7_ = _loc6_.§']§();
            _loc8_ = _loc6_.§]J§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§3!y§.§<!p§(_loc6_);
            }
         }
         if(this.§4C§ & b2internal::&"A)
         {
            _loc9_ = this.m_world.§3!y§.§%C§;
            param1.§4x§(_loc9_);
         }
         param1.§<!p§();
         param1.m_body = null;
         param1.§+!>§ = null;
         --this.§@!h§;
         this.§-!u§();
      }
      
      public function §-!b§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§]!H§() == true)
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
         var _loc6_:§,t§ = this.m_world.§3!y§.§%C§;
         _loc3_ = this.§2§;
         while(_loc3_)
         {
            _loc3_.§>G§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§+!>§;
         }
         this.m_world.§3!y§.§2!d§();
      }
      
      public function §"!!§(param1:b2Transform) : void
      {
         this.§-!b§(param1.position,param1.GetAngle());
      }
      
      public function §[!1§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         this.§-!b§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§-!b§(this.GetPosition(),param1);
      }
      
      public function §-b§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §3!A§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§9!w§ == b2_staticBody)
         {
            return;
         }
         this.§0!'§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§0!'§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§9!w§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §[!6§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§^![§();
         _loc1_.§7W§ = (this.§4C§ & b2internal::&>) == b2internal::&>;
         _loc1_.angle = this.GetAngle();
         _loc1_.§'"§ = this.§+!]§;
         _loc1_.§!z§ = this.m_angularVelocity;
         _loc1_.§,!n§ = (this.§4C§ & b2internal::84) == b2internal::84;
         _loc1_.§!"H§ = (this.§4C§ & b2internal::,j) == b2internal::,j;
         _loc1_.§?!k§ = (this.§4C§ & b2internal::5"<) == b2internal::5"<;
         _loc1_.§1X§ = this.§,B§;
         _loc1_.§7N§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§?!#§ = this.GetUserData();
         return _loc1_;
      }
      
      public function ApplyForce(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§9!w§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§5!@§.x += param1.x;
         this.§5!@§.y += param1.y;
         this.§]"@§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §&=§(param1:Number) : void
      {
         if(this.§9!w§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§]"@§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§9!w§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§0!'§.x += this.§9K§ * param1.x;
         this.§0!'§.y += this.§9K§ * param1.y;
         this.m_angularVelocity += this.§%"+§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §^=§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§-b§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§[!6§());
         var _loc8_:b2Fixture = _loc5_.§2§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§+!>§;
               if(_loc7_)
               {
                  _loc7_.§+!>§ = _loc13_;
               }
               else
               {
                  _loc5_.§2§ = _loc13_;
               }
               --_loc5_.§@!h§;
               _loc8_.§+!>§ = _loc6_.§2§;
               _loc6_.§2§ = _loc8_;
               ++_loc6_.§@!h§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§+!>§;
            }
         }
         _loc5_.§-!u§();
         _loc6_.§-!u§();
         var _loc9_:b2Vec2 = _loc5_.§-b§();
         var _loc10_:b2Vec2 = _loc6_.§-b§();
         var _loc11_:b2Vec2 = b2Math.§6i§(_loc2_,b2Math.§!k§(_loc3_,b2Math.§0t§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§6i§(_loc2_,b2Math.§!k§(_loc3_,b2Math.§0t§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§>z§();
         _loc6_.§>z§();
         return _loc6_;
      }
      
      public function §`!?§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§2§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§+!>§;
            --param1.§@!h§;
            _loc2_.§+!>§ = this.§2§;
            this.§2§ = _loc2_;
            ++this.§@!h§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§@!h§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§-b§();
         var _loc6_:b2Vec2 = _loc4_.§-b§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§-!u§();
         this.§>z§();
      }
      
      public function GetMass() : Number
      {
         return this.§->§;
      }
      
      public function §5q§() : Number
      {
         return this.§ !,§;
      }
      
      public function §#"9§(param1:b2MassData) : void
      {
         param1.§4"-§ = this.§->§;
         param1.I = this.§ !,§;
         param1.§`!f§.SetV(this.m_sweep.localCenter);
      }
      
      public function §<!G§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§]!H§() == false);
         if(this.m_world.§]!H§() == true)
         {
            return;
         }
         if(this.§9!w§ != b2_dynamicBody)
         {
            return;
         }
         this.§9K§ = 0;
         this.§ !,§ = 0;
         this.§%"+§ = 0;
         this.§->§ = param1.§4"-§;
         if(this.§->§ <= 0)
         {
            this.§->§ = 1;
         }
         this.§9K§ = 1 / this.§->§;
         if(param1.I > 0 && (this.§4C§ & b2internal::84) == 0)
         {
            this.§ !,§ = param1.I - this.§->§ * (param1.§`!f§.x * param1.§`!f§.x + param1.§`!f§.y * param1.§`!f§.y);
            this.§%"+§ = 1 / this.§ !,§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.§`!f§);
         this.m_sweep.c0.SetV(b2Math.§>">§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§0!'§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§0!'§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §-!u§() : void
      {
         var _loc4_:b2MassData = null;
         this.§->§ = 0;
         this.§9K§ = 0;
         this.§ !,§ = 0;
         this.§%"+§ = 0;
         this.m_sweep.localCenter.§]#§();
         if(this.§9!w§ == b2_staticBody || this.§9!w§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§0!m§(0,0);
         var _loc2_:b2Fixture = this.§2§;
         while(_loc2_)
         {
            if(_loc2_.§6!y§ != 0)
            {
               _loc4_ = _loc2_.§#"9§();
               this.§->§ += _loc4_.§4"-§;
               _loc1_.x += _loc4_.§`!f§.x * _loc4_.§4"-§;
               _loc1_.y += _loc4_.§`!f§.y * _loc4_.§4"-§;
               this.§ !,§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§+!>§;
         }
         if(this.§->§ > 0)
         {
            this.§9K§ = 1 / this.§->§;
            _loc1_.x *= this.§9K§;
            _loc1_.y *= this.§9K§;
         }
         else
         {
            this.§->§ = 1;
            this.§9K§ = 1;
         }
         if(this.§ !,§ > 0 && (this.§4C§ & b2internal::84) == 0)
         {
            this.§ !,§ -= this.§->§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§ !,§ *= this.§]!Y§;
            b2Settings.b2Assert(this.§ !,§ > 0);
            this.§%"+§ = 1 / this.§ !,§;
         }
         else
         {
            this.§ !,§ = 0;
            this.§%"+§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§>">§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§0!'§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§0!'§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §?6§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§5%§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§`!2§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§4m§(this.m_xf.R,param1);
      }
      
      public function §'!w§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§0!'§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§0!'§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §9"H§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§0!'§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§0!'§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §6!q§() : Number
      {
         return this.§,B§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§,B§ = param1;
      }
      
      public function § V§() : Number
      {
         return this.§+!]§;
      }
      
      public function §0!w§(param1:Number) : void
      {
         this.§+!]§ = param1;
      }
      
      public function §]!Z§(param1:uint) : void
      {
         if(this.§9!w§ == param1)
         {
            return;
         }
         this.§9!w§ = param1;
         this.§-!u§();
         if(this.§9!w§ == b2_staticBody)
         {
            this.§0!'§.§]#§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§5!@§.§]#§();
         this.§]"@§ = 0;
         var _loc2_:b2ContactEdge = this.§7! §;
         while(_loc2_)
         {
            _loc2_.§9!G§.§'$§();
            _loc2_ = _loc2_.§@!6§;
         }
      }
      
      public function §^![§() : uint
      {
         return this.§9!w§;
      }
      
      public function §2"8§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§4C§ |= b2internal::,j;
         }
         else
         {
            this.§4C§ &= ~b2internal::,j;
         }
      }
      
      public function §^"%§() : Boolean
      {
         return (this.§4C§ & b2internal::,j) == b2internal::,j;
      }
      
      public function §'",§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§4C§ |= b2internal::&>;
         }
         else
         {
            this.§4C§ &= ~b2internal::&>;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§4C§ |= b2internal::5"<;
            this.§'!2§ = 0;
         }
         else
         {
            this.§4C§ &= ~b2internal::5"<;
            this.§'!2§ = 0;
            this.§0!'§.§]#§();
            this.m_angularVelocity = 0;
            this.§5!@§.§]#§();
            this.§]"@§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§4C§ & b2internal::5"<) == b2internal::5"<;
      }
      
      public function §78§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§4C§ |= b2internal::84;
         }
         else
         {
            this.§4C§ &= ~b2internal::84;
         }
         this.§-!u§();
      }
      
      public function §'!R§() : Boolean
      {
         return (this.§4C§ & b2internal::84) == b2internal::84;
      }
      
      public function §9X§(param1:Boolean) : void
      {
         var _loc2_:§,t§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§2d§())
         {
            return;
         }
         if(param1)
         {
            this.§4C§ |= b2internal::&"A;
            _loc2_ = this.m_world.§3!y§.§%C§;
            _loc3_ = this.§2§;
            while(_loc3_)
            {
               _loc3_.§=!o§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§+!>§;
            }
         }
         else
         {
            this.§4C§ &= ~b2internal::&"A;
            _loc2_ = this.m_world.§3!y§.§%C§;
            _loc3_ = this.§2§;
            while(_loc3_)
            {
               _loc3_.§4x§(_loc2_);
               _loc3_ = _loc3_.§+!>§;
            }
            _loc4_ = this.§7! §;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§@!6§;
               this.m_world.§3!y§.§<!p§(_loc5_.§9!G§);
            }
            this.§7! § = null;
         }
      }
      
      public function §2d§() : Boolean
      {
         return (this.§4C§ & b2internal::&"A) == b2internal::&"A;
      }
      
      public function §%!@§() : Boolean
      {
         return (this.§4C§ & b2internal::&>) == b2internal::&>;
      }
      
      public function §@!b§() : b2Fixture
      {
         return this.§2§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§2!n§;
      }
      
      public function §&2§() : b2ControllerEdge
      {
         return this.§+]§;
      }
      
      public function §"R§() : b2ContactEdge
      {
         return this.§7! §;
      }
      
      public function §0!7§() : b2Body
      {
         return this.§+!>§;
      }
      
      public function GetUserData() : *
      {
         return this.§#!;§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§#!;§ = param1;
      }
      
      public function §7!a§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §>z§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §>4§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§,t§ = this.m_world.§3!y§.§%C§;
         _loc4_ = this.§2§;
         while(_loc4_)
         {
            _loc4_.§>G§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§+!>§;
         }
      }
      
      b2internal function §"t§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §-!V§(param1:b2Body) : Boolean
      {
         if(this.§9!w§ != b2_dynamicBody && param1.§9!w§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§2!n§;
         while(_loc2_)
         {
            if(_loc2_.§%4§ == param1)
            {
               if(_loc2_.§2">§.§^!]§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§@!6§;
         }
         return true;
      }
      
      b2internal function §?!Y§(param1:Number) : void
      {
         this.m_sweep.§?!Y§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§"t§();
      }
   }
}

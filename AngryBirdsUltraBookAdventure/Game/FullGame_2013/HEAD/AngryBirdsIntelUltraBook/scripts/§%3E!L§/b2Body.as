package §>!L§
{
   import §!m§.§"%§;
   import §#!0§.b2Contact;
   import §#!0§.b2ContactEdge;
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §0!3§.b2EdgeShape;
   import §0!3§.b2MassData;
   import §0!3§.b2Shape;
   import §9!+§.b2ControllerEdge;
   import §=;§.b2JointEdge;
   import §>!8§.b2Mat22;
   import §>!8§.b2Math;
   import §>!8§.b2Sweep;
   import §>!8§.b2Transform;
   import §>!8§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §#!f§:b2Transform = new b2Transform();
      
      b2internal static var §%!d§:uint = 1;
      
      b2internal static var §&G§:uint = 2;
      
      b2internal static var §"!-§:uint = 4;
      
      b2internal static var §'!V§:uint = 8;
      
      b2internal static var §=A§:uint = 16;
      
      b2internal static var §=!M§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §]!D§:uint;
      
      b2internal var §2!5§:int;
      
      b2internal var §"+§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §4!h§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §4!&§:b2Vec2;
      
      b2internal var §`!c§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §<!9§:b2Body;
      
      b2internal var §,!Z§:b2Body;
      
      b2internal var § 7§:b2Fixture;
      
      b2internal var §4$§:int;
      
      b2internal var §@!U§:b2ControllerEdge;
      
      b2internal var §<!-§:int;
      
      b2internal var §8_§:b2JointEdge;
      
      b2internal var §7!V§:b2ContactEdge;
      
      b2internal var §@U§:Number;
      
      b2internal var §=n§:Number;
      
      b2internal var §!K§:Number;
      
      b2internal var §1&§:Number;
      
      b2internal var §?^§:Number;
      
      b2internal var §=-§:Number;
      
      b2internal var §[<§:Number;
      
      b2internal var §7!P§:Number;
      
      private var §=f§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§4!h§ = new b2Vec2();
         this.§4!&§ = new b2Vec2();
         super();
         this.§]!D§ = 0;
         if(param1.§ 5§)
         {
            this.§]!D§ |= §'!V§;
         }
         if(param1.§[W§)
         {
            this.§]!D§ |= §=A§;
         }
         if(param1.§^!%§)
         {
            this.§]!D§ |= §"!-§;
         }
         if(param1.§9!§)
         {
            this.§]!D§ |= §&G§;
         }
         if(param1.§&!^§)
         {
            this.§]!D§ |= §=!M§;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§@!;§();
         this.m_sweep.§#K§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§8_§ = null;
         this.§@!U§ = null;
         this.§7!V§ = null;
         this.§<!-§ = 0;
         this.§<!9§ = null;
         this.§,!Z§ = null;
         this.§4!h§.SetV(param1.§;@§);
         this.m_angularVelocity = param1.§2!?§;
         this.§=-§ = param1.§?![§;
         this.§[<§ = param1.§4n§;
         this.§4!&§.Set(0,0);
         this.§`!c§ = 0;
         this.§7!P§ = 0;
         this.§2!5§ = param1.type;
         if(this.§2!5§ == b2_dynamicBody)
         {
            this.§@U§ = 1;
            this.§=n§ = 1;
         }
         else
         {
            this.§@U§ = 0;
            this.§=n§ = 0;
         }
         this.§!K§ = 0;
         this.§1&§ = 0;
         this.§?^§ = param1.§5!#§;
         this.§=f§ = param1.§+!f§;
         this.§ 7§ = null;
         this.§4$§ = 0;
      }
      
      private function §0T§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§6§().y,param2.§6§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§@Q§(_loc5_,param2.§6§());
         _loc6_ = b2Math.§2!C§(_loc6_,param2.§1!X§());
         _loc6_ = b2Math.§@Q§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§5v§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2 = b2Math.§5v§(param1.§6§(),param2.§6§());
         _loc7_.Normalize();
         var _loc8_:Boolean = b2Math.§extends§(param1.§6§(),param2.§1!X§()) > 0;
         param1.§?S§(param2,_loc6_,_loc7_,_loc8_);
         param2.§95§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §5g§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§"%§ = null;
         if(this.m_world.§;M§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§@!L§(this,this.m_xf,param1);
         if(this.§]!D§ & §=!M§)
         {
            _loc3_ = this.m_world.§%]§.§%%§;
            _loc2_.§>!I§(_loc3_,this.m_xf);
         }
         _loc2_.§,!Z§ = this.§ 7§;
         this.§ 7§ = _loc2_;
         ++this.§4$§;
         _loc2_.m_body = this;
         if(_loc2_.§0A§ > 0)
         {
            this.§,! §();
         }
         this.m_world.§]!D§ |= b2World.§=k§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§5g§(_loc3_);
      }
      
      public function §^`§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§"%§ = null;
         if(this.m_world.§;M§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§ 7§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§,!Z§ = param1.§,!Z§;
               }
               else
               {
                  this.§ 7§ = param1.§,!Z§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§,!Z§;
         }
         var _loc5_:b2ContactEdge = this.§7!V§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§7![§;
            _loc5_ = _loc5_.§<!D§;
            _loc7_ = _loc6_.§'$§();
            _loc8_ = _loc6_.§<!2§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§%]§.§"G§(_loc6_);
            }
         }
         if(this.§]!D§ & §=!M§)
         {
            _loc9_ = this.m_world.§%]§.§%%§;
            param1.§,!c§(_loc9_);
         }
         param1.§"G§();
         param1.m_body = null;
         param1.§,!Z§ = null;
         --this.§4$§;
         this.§,! §();
      }
      
      public function §=!_§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§;M§() == true)
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
         var _loc6_:§"%§ = this.m_world.§%]§.§%%§;
         _loc3_ = this.§ 7§;
         while(_loc3_)
         {
            _loc3_.§1!f§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§,!Z§;
         }
         this.m_world.§%]§.§default§();
      }
      
      public function §1!e§(param1:b2Transform) : void
      {
         this.§=!_§(param1.position,param1.GetAngle());
      }
      
      public function §1?§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §"q§(param1:b2Vec2) : void
      {
         this.§=!_§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §,!&§(param1:Number) : void
      {
         this.§=!_§(this.GetPosition(),param1);
      }
      
      public function §"!'§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §&r§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§2!5§ == b2_staticBody)
         {
            return;
         }
         this.§4!h§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§4!h§;
      }
      
      public function §%#§(param1:Number) : void
      {
         if(this.§2!5§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §#!2§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§6!-§();
         _loc1_.§^!%§ = (this.§]!D§ & §"!-§) == §"!-§;
         _loc1_.angle = this.GetAngle();
         _loc1_.§4n§ = this.§[<§;
         _loc1_.§2!?§ = this.m_angularVelocity;
         _loc1_.§[W§ = (this.§]!D§ & §=A§) == §=A§;
         _loc1_.§ 5§ = (this.§]!D§ & §'!V§) == §'!V§;
         _loc1_.§9!§ = (this.§]!D§ & §&G§) == §&G§;
         _loc1_.§?![§ = this.§=-§;
         _loc1_.§;@§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§+!f§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §9h§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§2!5§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§4!&§.x += param1.x;
         this.§4!&§.y += param1.y;
         this.§`!c§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §&H§(param1:Number) : void
      {
         if(this.§2!5§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§`!c§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§2!5§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§4!h§.x += this.§=n§ * param1.x;
         this.§4!h§.y += this.§=n§ * param1.y;
         this.m_angularVelocity += this.§1&§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §?!1§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§"!'§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§1!-§(this.§#!2§());
         var _loc8_:b2Fixture = _loc5_.§ 7§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§,!Z§;
               if(_loc7_)
               {
                  _loc7_.§,!Z§ = _loc13_;
               }
               else
               {
                  _loc5_.§ 7§ = _loc13_;
               }
               --_loc5_.§4$§;
               _loc8_.§,!Z§ = _loc6_.§ 7§;
               _loc6_.§ 7§ = _loc8_;
               ++_loc6_.§4$§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§,!Z§;
            }
         }
         _loc5_.§,! §();
         _loc6_.§,! §();
         var _loc9_:b2Vec2 = _loc5_.§"!'§();
         var _loc10_:b2Vec2 = _loc6_.§"!'§();
         var _loc11_:b2Vec2 = b2Math.§5v§(_loc2_,b2Math.§2!Q§(_loc3_,b2Math.§2!C§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§5v§(_loc2_,b2Math.§2!Q§(_loc3_,b2Math.§2!C§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§%#§(_loc3_);
         _loc6_.§%#§(_loc3_);
         _loc5_.§]!-§();
         _loc6_.§]!-§();
         return _loc6_;
      }
      
      public function §+!k§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§ 7§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§,!Z§;
            --param1.§4$§;
            _loc2_.§,!Z§ = this.§ 7§;
            this.§ 7§ = _loc2_;
            ++this.§4$§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§4$§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§"!'§();
         var _loc6_:b2Vec2 = _loc4_.§"!'§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§,! §();
         this.§]!-§();
      }
      
      public function GetMass() : Number
      {
         return this.§@U§;
      }
      
      public function §7!&§() : Number
      {
         return this.§!K§;
      }
      
      public function §=Q§(param1:b2MassData) : void
      {
         param1.§=`§ = this.§@U§;
         param1.§#P§ = this.§!K§;
         param1.§4=§.SetV(this.m_sweep.localCenter);
      }
      
      public function §01§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§;M§() == false);
         if(this.m_world.§;M§() == true)
         {
            return;
         }
         if(this.§2!5§ != b2_dynamicBody)
         {
            return;
         }
         this.§=n§ = 0;
         this.§!K§ = 0;
         this.§1&§ = 0;
         this.§@U§ = param1.§=`§;
         if(this.§@U§ <= 0)
         {
            this.§@U§ = 1;
         }
         this.§=n§ = 1 / this.§@U§;
         if(param1.§#P§ > 0 && (this.§]!D§ & §=A§) == 0)
         {
            this.§!K§ = param1.§#P§ - this.§@U§ * (param1.§4=§.x * param1.§4=§.x + param1.§4=§.y * param1.§4=§.y);
            this.§1&§ = 1 / this.§!K§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.§4=§);
         this.m_sweep.c0.SetV(b2Math.§&!M§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§4!h§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§4!h§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §,! §() : void
      {
         var _loc4_:b2MassData = null;
         this.§@U§ = 0;
         this.§=n§ = 0;
         this.§!K§ = 0;
         this.§1&§ = 0;
         this.m_sweep.localCenter.§@!;§();
         if(this.§2!5§ == b2_staticBody || this.§2!5§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§]u§(0,0);
         var _loc2_:b2Fixture = this.§ 7§;
         while(_loc2_)
         {
            if(_loc2_.§0A§ != 0)
            {
               _loc4_ = _loc2_.§=Q§();
               this.§@U§ += _loc4_.§=`§;
               _loc1_.x += _loc4_.§4=§.x * _loc4_.§=`§;
               _loc1_.y += _loc4_.§4=§.y * _loc4_.§=`§;
               this.§!K§ += _loc4_.§#P§;
            }
            _loc2_ = _loc2_.§,!Z§;
         }
         if(this.§@U§ > 0)
         {
            this.§=n§ = 1 / this.§@U§;
            _loc1_.x *= this.§=n§;
            _loc1_.y *= this.§=n§;
         }
         else
         {
            this.§@U§ = 1;
            this.§=n§ = 1;
         }
         if(this.§!K§ > 0 && (this.§]!D§ & §=A§) == 0)
         {
            this.§!K§ -= this.§@U§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§!K§ *= this.§?^§;
            b2Settings.b2Assert(this.§!K§ > 0);
            this.§1&§ = 1 / this.§!K§;
         }
         else
         {
            this.§!K§ = 0;
            this.§1&§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§&!M§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§4!h§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§4!h§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §=2§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§]!§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§4![§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§[p§(this.m_xf.R,param1);
      }
      
      public function §[K§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§4!h§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§4!h§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §@!B§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§4!h§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§4!h§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §8#§() : Number
      {
         return this.§=-§;
      }
      
      public function §8!&§(param1:Number) : void
      {
         this.§=-§ = param1;
      }
      
      public function §'j§() : Number
      {
         return this.§[<§;
      }
      
      public function §1!&§(param1:Number) : void
      {
         this.§[<§ = param1;
      }
      
      public function §^L§(param1:uint) : void
      {
         if(this.§2!5§ == param1)
         {
            return;
         }
         this.§2!5§ = param1;
         this.§,! §();
         if(this.§2!5§ == b2_staticBody)
         {
            this.§4!h§.§@!;§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§4!&§.§@!;§();
         this.§`!c§ = 0;
         var _loc2_:b2ContactEdge = this.§7!V§;
         while(_loc2_)
         {
            _loc2_.§7![§.§"T§();
            _loc2_ = _loc2_.§<!D§;
         }
      }
      
      public function §6!-§() : uint
      {
         return this.§2!5§;
      }
      
      public function §=u§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!D§ |= §'!V§;
         }
         else
         {
            this.§]!D§ &= ~§'!V§;
         }
      }
      
      public function §%q§() : Boolean
      {
         return (this.§]!D§ & §'!V§) == §'!V§;
      }
      
      public function §;&§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!D§ |= §"!-§;
         }
         else
         {
            this.§]!D§ &= ~§"!-§;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!D§ |= §&G§;
            this.§7!P§ = 0;
         }
         else
         {
            this.§]!D§ &= ~§&G§;
            this.§7!P§ = 0;
            this.§4!h§.§@!;§();
            this.m_angularVelocity = 0;
            this.§4!&§.§@!;§();
            this.§`!c§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§]!D§ & §&G§) == §&G§;
      }
      
      public function §<6§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!D§ |= §=A§;
         }
         else
         {
            this.§]!D§ &= ~§=A§;
         }
         this.§,! §();
      }
      
      public function §-!i§() : Boolean
      {
         return (this.§]!D§ & §=A§) == §=A§;
      }
      
      public function §,!T§(param1:Boolean) : void
      {
         var _loc2_:§"%§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§7!S§())
         {
            return;
         }
         if(param1)
         {
            this.§]!D§ |= §=!M§;
            _loc2_ = this.m_world.§%]§.§%%§;
            _loc3_ = this.§ 7§;
            while(_loc3_)
            {
               _loc3_.§>!I§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§,!Z§;
            }
         }
         else
         {
            this.§]!D§ &= ~§=!M§;
            _loc2_ = this.m_world.§%]§.§%%§;
            _loc3_ = this.§ 7§;
            while(_loc3_)
            {
               _loc3_.§,!c§(_loc2_);
               _loc3_ = _loc3_.§,!Z§;
            }
            _loc4_ = this.§7!V§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§<!D§;
               this.m_world.§%]§.§"G§(_loc5_.§7![§);
            }
            this.§7!V§ = null;
         }
      }
      
      public function §7!S§() : Boolean
      {
         return (this.§]!D§ & §=!M§) == §=!M§;
      }
      
      public function § !Y§() : Boolean
      {
         return (this.§]!D§ & §"!-§) == §"!-§;
      }
      
      public function §super§() : b2Fixture
      {
         return this.§ 7§;
      }
      
      public function §@!§() : b2JointEdge
      {
         return this.§8_§;
      }
      
      public function §]<§() : b2ControllerEdge
      {
         return this.§@!U§;
      }
      
      public function §2!c§() : b2ContactEdge
      {
         return this.§7!V§;
      }
      
      public function §'!;§() : b2Body
      {
         return this.§,!Z§;
      }
      
      public function GetUserData() : *
      {
         return this.§=f§;
      }
      
      public function §9`§(param1:*) : void
      {
         this.§=f§ = param1;
      }
      
      public function §1g§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §]!-§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §#!f§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§"%§ = this.m_world.§%]§.§%%§;
         _loc4_ = this.§ 7§;
         while(_loc4_)
         {
            _loc4_.§1!f§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§,!Z§;
         }
      }
      
      b2internal function §"!_§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §,!5§(param1:b2Body) : Boolean
      {
         if(this.§2!5§ != b2_dynamicBody && param1.§2!5§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§8_§;
         while(_loc2_)
         {
            if(_loc2_.§@X§ == param1)
            {
               if(_loc2_.§9&§.§[[§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§<!D§;
         }
         return true;
      }
      
      b2internal function §6!1§(param1:Number) : void
      {
         this.m_sweep.§6!1§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§"!_§();
      }
   }
}

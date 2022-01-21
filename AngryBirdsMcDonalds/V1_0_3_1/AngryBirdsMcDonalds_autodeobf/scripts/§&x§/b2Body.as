package §&x§
{
   import §!4§.b2JointEdge;
   import §'!J§.b2Contact;
   import §'!J§.b2ContactEdge;
   import §-!T§.§2!W§;
   import §0,§.b2Mat22;
   import §0,§.b2Math;
   import §0,§.b2Sweep;
   import §0,§.b2Transform;
   import §0,§.b2Vec2;
   import §3o§.b2Settings;
   import §3o§.b2internal;
   import §5!A§.b2ControllerEdge;
   import §8!b§.b2EdgeShape;
   import §8!b§.b2MassData;
   import §8!b§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §!!H§:b2Transform = new b2Transform();
      
      b2internal static var §=7§:uint = 1;
      
      b2internal static var §0!N§:uint = 2;
      
      b2internal static var §6U§:uint = 4;
      
      b2internal static var §,!!§:uint = 8;
      
      b2internal static var §%y§:uint = 16;
      
      b2internal static var §^=§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var § 3§:uint;
      
      b2internal var §5!a§:int;
      
      b2internal var §;!L§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §"M§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §<!1§:b2Vec2;
      
      b2internal var §=!?§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §=!W§:b2Body;
      
      b2internal var §18§:b2Body;
      
      b2internal var §8$§:b2Fixture;
      
      b2internal var §=9§:int;
      
      b2internal var §`J§:b2ControllerEdge;
      
      b2internal var §^y§:int;
      
      b2internal var §#!%§:b2JointEdge;
      
      b2internal var §1"§:b2ContactEdge;
      
      b2internal var §+C§:Number;
      
      b2internal var §&l§:Number;
      
      b2internal var §5!6§:Number;
      
      b2internal var §]!Q§:Number;
      
      b2internal var §^2§:Number;
      
      b2internal var §7!-§:Number;
      
      b2internal var §0!S§:Number;
      
      b2internal var §4!;§:Number;
      
      private var §"!<§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§"M§ = new b2Vec2();
         this.§<!1§ = new b2Vec2();
         super();
         this.§ 3§ = 0;
         if(param1.§77§)
         {
            this.§ 3§ |= b2internal::,!!;
         }
         if(param1.§^!'§)
         {
            this.§ 3§ |= b2internal::%y;
         }
         if(param1.§?j§)
         {
            this.§ 3§ |= b2internal::6U;
         }
         if(param1.§17§)
         {
            this.§ 3§ |= b2internal::0!N;
         }
         if(param1.§+!n§)
         {
            this.§ 3§ |= b2internal::^=;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§ !b§();
         this.m_sweep.§5!`§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§#!%§ = null;
         this.§`J§ = null;
         this.§1"§ = null;
         this.§^y§ = 0;
         this.§=!W§ = null;
         this.§18§ = null;
         this.§"M§.SetV(param1.§#u§);
         this.m_angularVelocity = param1.§^?§;
         this.§7!-§ = param1.§ B§;
         this.§0!S§ = param1.§10§;
         this.§<!1§.Set(0,0);
         this.§=!?§ = 0;
         this.§4!;§ = 0;
         this.§5!a§ = param1.type;
         if(this.§5!a§ == b2_dynamicBody)
         {
            this.§+C§ = 1;
            this.§&l§ = 1;
         }
         else
         {
            this.§+C§ = 0;
            this.§&l§ = 0;
         }
         this.§5!6§ = 0;
         this.§]!Q§ = 0;
         this.§^2§ = param1.§ !@§;
         this.§"!<§ = param1.§!k§;
         this.§8$§ = null;
         this.§=9§ = 0;
      }
      
      private function §9y§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§%!m§().y,param2.§%!m§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§8d§(_loc5_,param2.§%!m§());
         _loc6_ = b2Math.§+z§(_loc6_,param2.§&9§());
         _loc6_ = b2Math.§8d§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§[!2§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§[!2§(param1.§%!m§(),param2.§%!m§())).Normalize();
         var _loc8_:* = b2Math.§6!Z§(param1.§%!m§(),param2.§&9§()) > 0;
         param1.§9X§(param2,_loc6_,_loc7_,_loc8_);
         param2.§[t§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §@!"§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§2!W§ = null;
         if(this.m_world.§#!X§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§;!1§(this,this.m_xf,param1);
         if(this.§ 3§ & b2internal::^=)
         {
            _loc3_ = this.m_world.§=!;§.§2!E§;
            _loc2_.§&t§(_loc3_,this.m_xf);
         }
         _loc2_.§18§ = this.§8$§;
         this.§8$§ = _loc2_;
         ++this.§=9§;
         _loc2_.m_body = this;
         if(_loc2_.§^s§ > 0)
         {
            this.§9!1§();
         }
         this.m_world.§ 3§ |= b2World.§9D§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§@!"§(_loc3_);
      }
      
      public function §`G§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§2!W§ = null;
         if(this.m_world.§#!X§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§8$§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§18§ = param1.§18§;
               }
               else
               {
                  this.§8$§ = param1.§18§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§18§;
         }
         var _loc5_:b2ContactEdge = this.§1"§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§&!L§;
            _loc5_ = _loc5_.§1t§;
            _loc7_ = _loc6_.§+!m§();
            _loc8_ = _loc6_.§4j§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§=!;§.§ ;§(_loc6_);
            }
         }
         if(this.§ 3§ & b2internal::^=)
         {
            _loc9_ = this.m_world.§=!;§.§2!E§;
            param1.§!!E§(_loc9_);
         }
         param1.§ ;§();
         param1.m_body = null;
         param1.§18§ = null;
         --this.§=9§;
         this.§9!1§();
      }
      
      public function §-!e§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§#!X§() == true)
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
         var _loc6_:§2!W§ = this.m_world.§=!;§.§2!E§;
         _loc3_ = this.§8$§;
         while(_loc3_)
         {
            _loc3_.§null §(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§18§;
         }
         this.m_world.§=!;§.§`o§();
      }
      
      public function §+! §(param1:b2Transform) : void
      {
         this.§-!e§(param1.position,param1.GetAngle());
      }
      
      public function §<9§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §>4§(param1:b2Vec2) : void
      {
         this.§-!e§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §"B§(param1:Number) : void
      {
         this.§-!e§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §]!X§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§5!a§ == b2_staticBody)
         {
            return;
         }
         this.§"M§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§"M§;
      }
      
      public function §>!$§(param1:Number) : void
      {
         if(this.§5!a§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §#!n§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §]!U§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§"!I§();
         _loc1_.§?j§ = (this.§ 3§ & b2internal::6U) == b2internal::6U;
         _loc1_.angle = this.GetAngle();
         _loc1_.§10§ = this.§0!S§;
         _loc1_.§^?§ = this.m_angularVelocity;
         _loc1_.§^!'§ = (this.§ 3§ & b2internal::%y) == b2internal::%y;
         _loc1_.§77§ = (this.§ 3§ & b2internal::,!!) == b2internal::,!!;
         _loc1_.§17§ = (this.§ 3§ & b2internal::0!N) == b2internal::0!N;
         _loc1_.§ B§ = this.§7!-§;
         _loc1_.§#u§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§!k§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §'!n§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§5!a§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§<!1§.x += param1.x;
         this.§<!1§.y += param1.y;
         this.§=!?§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §&6§(param1:Number) : void
      {
         if(this.§5!a§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§=!?§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§5!a§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§"M§.x += this.§&l§ * param1.x;
         this.§"M§.y += this.§&l§ * param1.y;
         this.m_angularVelocity += this.§]!Q§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function § t§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§#!n§();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§ V§(this.§]!U§());
         var _loc8_:b2Fixture = _loc5_.§8$§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§18§;
               if(_loc7_)
               {
                  _loc7_.§18§ = _loc13_;
               }
               else
               {
                  _loc5_.§8$§ = _loc13_;
               }
               --_loc5_.§=9§;
               _loc8_.§18§ = _loc6_.§8$§;
               _loc6_.§8$§ = _loc8_;
               ++_loc6_.§=9§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§18§;
            }
         }
         _loc5_.§9!1§();
         _loc6_.§9!1§();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§[!2§(_loc2_,b2Math.§&^§(_loc3_,b2Math.§+z§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§[!2§(_loc2_,b2Math.§&^§(_loc3_,b2Math.§+z§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§>!$§(_loc3_);
         _loc6_.§>!$§(_loc3_);
         _loc5_.§`2§();
         _loc6_.§`2§();
         return _loc6_;
      }
      
      public function §%!%§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§8$§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§18§;
            --param1.§=9§;
            _loc2_.§18§ = this.§8$§;
            this.§8$§ = _loc2_;
            ++this.§=9§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§=9§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.GetWorldCenter();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§#!n§();
         var _loc10_:Number = _loc4_.§#!n§();
         _loc3_.§9!1§();
         this.§`2§();
      }
      
      public function GetMass() : Number
      {
         return this.§+C§;
      }
      
      public function §'!5§() : Number
      {
         return this.§5!6§;
      }
      
      public function §0k§(param1:b2MassData) : void
      {
         param1.§0!f§ = this.§+C§;
         param1.§7e§ = this.§5!6§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §+!7§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§#!X§() == false);
         if(this.m_world.§#!X§() == true)
         {
            return;
         }
         if(this.§5!a§ != b2_dynamicBody)
         {
            return;
         }
         this.§&l§ = 0;
         this.§5!6§ = 0;
         this.§]!Q§ = 0;
         this.§+C§ = param1.§0!f§;
         if(this.§+C§ <= 0)
         {
            this.§+C§ = 1;
         }
         this.§&l§ = 1 / this.§+C§;
         if(param1.§7e§ > 0 && (this.§ 3§ & b2internal::%y) == 0)
         {
            this.§5!6§ = param1.§7e§ - this.§+C§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§]!Q§ = 1 / this.§5!6§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§,z§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§"M§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§"M§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §9!1§() : void
      {
         var _loc4_:b2MassData = null;
         this.§+C§ = 0;
         this.§&l§ = 0;
         this.§5!6§ = 0;
         this.§]!Q§ = 0;
         this.m_sweep.localCenter.§ !b§();
         if(this.§5!a§ == b2_staticBody || this.§5!a§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§[[§(0,0);
         var _loc2_:b2Fixture = this.§8$§;
         while(_loc2_)
         {
            if(_loc2_.§^s§ != 0)
            {
               _loc4_ = _loc2_.§0k§();
               this.§+C§ += _loc4_.§0!f§;
               _loc1_.x += _loc4_.center.x * _loc4_.§0!f§;
               _loc1_.y += _loc4_.center.y * _loc4_.§0!f§;
               this.§5!6§ += _loc4_.§7e§;
            }
            _loc2_ = _loc2_.§18§;
         }
         if(this.§+C§ > 0)
         {
            this.§&l§ = 1 / this.§+C§;
            _loc1_.x *= this.§&l§;
            _loc1_.y *= this.§&l§;
         }
         else
         {
            this.§+C§ = 1;
            this.§&l§ = 1;
         }
         if(this.§5!6§ > 0 && (this.§ 3§ & b2internal::%y) == 0)
         {
            this.§5!6§ -= this.§+C§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§5!6§ *= this.§^2§;
            b2Settings.b2Assert(this.§5!6§ > 0);
            this.§]!Q§ = 1 / this.§5!6§;
         }
         else
         {
            this.§5!6§ = 0;
            this.§]!Q§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§,z§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§"M§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§"M§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §1!f§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§#F§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§1Z§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§#!1§(this.m_xf.R,param1);
      }
      
      public function §27§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§"M§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§"M§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §,!e§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§"M§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§"M§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function § !>§() : Number
      {
         return this.§7!-§;
      }
      
      public function §1!m§(param1:Number) : void
      {
         this.§7!-§ = param1;
      }
      
      public function §?!Z§() : Number
      {
         return this.§0!S§;
      }
      
      public function §`z§(param1:Number) : void
      {
         this.§0!S§ = param1;
      }
      
      public function §+!G§(param1:uint) : void
      {
         if(this.§5!a§ == param1)
         {
            return;
         }
         this.§5!a§ = param1;
         this.§9!1§();
         if(this.§5!a§ == b2_staticBody)
         {
            this.§"M§.§ !b§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§<!1§.§ !b§();
         this.§=!?§ = 0;
         var _loc2_:b2ContactEdge = this.§1"§;
         while(_loc2_)
         {
            _loc2_.§&!L§.§>T§();
            _loc2_ = _loc2_.§1t§;
         }
      }
      
      public function §"!I§() : uint
      {
         return this.§5!a§;
      }
      
      public function §[U§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ 3§ |= b2internal::,!!;
         }
         else
         {
            this.§ 3§ &= ~b2internal::,!!;
         }
      }
      
      public function §>b§() : Boolean
      {
         return (this.§ 3§ & b2internal::,!!) == b2internal::,!!;
      }
      
      public function §?h§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ 3§ |= b2internal::6U;
         }
         else
         {
            this.§ 3§ &= ~b2internal::6U;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ 3§ |= b2internal::0!N;
            this.§4!;§ = 0;
         }
         else
         {
            this.§ 3§ &= ~b2internal::0!N;
            this.§4!;§ = 0;
            this.§"M§.§ !b§();
            this.m_angularVelocity = 0;
            this.§<!1§.§ !b§();
            this.§=!?§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§ 3§ & b2internal::0!N) == b2internal::0!N;
      }
      
      public function §each §(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ 3§ |= b2internal::%y;
         }
         else
         {
            this.§ 3§ &= ~b2internal::%y;
         }
         this.§9!1§();
      }
      
      public function §2!Z§() : Boolean
      {
         return (this.§ 3§ & b2internal::%y) == b2internal::%y;
      }
      
      public function §8o§(param1:Boolean) : void
      {
         var _loc2_:§2!W§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.IsActive())
         {
            return;
         }
         if(param1)
         {
            this.§ 3§ |= b2internal::^=;
            _loc2_ = this.m_world.§=!;§.§2!E§;
            _loc3_ = this.§8$§;
            while(_loc3_)
            {
               _loc3_.§&t§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§18§;
            }
         }
         else
         {
            this.§ 3§ &= ~b2internal::^=;
            _loc2_ = this.m_world.§=!;§.§2!E§;
            _loc3_ = this.§8$§;
            while(_loc3_)
            {
               _loc3_.§!!E§(_loc2_);
               _loc3_ = _loc3_.§18§;
            }
            _loc4_ = this.§1"§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§1t§;
               this.m_world.§=!;§.§ ;§(_loc5_.§&!L§);
            }
            this.§1"§ = null;
         }
      }
      
      public function IsActive() : Boolean
      {
         return (this.§ 3§ & b2internal::^=) == b2internal::^=;
      }
      
      public function §+h§() : Boolean
      {
         return (this.§ 3§ & b2internal::6U) == b2internal::6U;
      }
      
      public function §0!T§() : b2Fixture
      {
         return this.§8$§;
      }
      
      public function § _§() : b2JointEdge
      {
         return this.§#!%§;
      }
      
      public function § ^§() : b2ControllerEdge
      {
         return this.§`J§;
      }
      
      public function §%F§() : b2ContactEdge
      {
         return this.§1"§;
      }
      
      public function §@!^§() : b2Body
      {
         return this.§18§;
      }
      
      public function GetUserData() : *
      {
         return this.§"!<§;
      }
      
      public function §%!W§(param1:*) : void
      {
         this.§"!<§ = param1;
      }
      
      public function §0!G§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §`2§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §!!H§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§2!W§ = this.m_world.§=!;§.§2!E§;
         _loc4_ = this.§8$§;
         while(_loc4_)
         {
            _loc4_.§null §(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§18§;
         }
      }
      
      b2internal function §4l§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §?!6§(param1:b2Body) : Boolean
      {
         if(this.§5!a§ != b2_dynamicBody && param1.§5!a§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§#!%§;
         while(_loc2_)
         {
            if(_loc2_.§ W§ == param1)
            {
               if(_loc2_.§,^§.§"!-§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§1t§;
         }
         return true;
      }
      
      b2internal function §2v§(param1:Number) : void
      {
         this.m_sweep.§2v§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§4l§();
      }
   }
}

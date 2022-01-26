package §&i§
{
   import § t§.b2ControllerEdge;
   import §"v§.b2Settings;
   import §"v§.b2internal;
   import §'z§.b2Contact;
   import §'z§.b2ContactEdge;
   import §5!K§.b2Mat22;
   import §5!K§.b2Math;
   import §5!K§.b2Sweep;
   import §5!K§.b2Transform;
   import §5!K§.b2Vec2;
   import §5n§.b2JointEdge;
   import §]M§.§?!&§;
   import §each §.b2EdgeShape;
   import §each §.b2MassData;
   import §each §.b2Shape;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §%J§:b2Transform = new b2Transform();
      
      b2internal static var §;p§:uint = 1;
      
      b2internal static var §!!-§:uint = 2;
      
      b2internal static var §"7§:uint = 4;
      
      b2internal static var §=!P§:uint = 8;
      
      b2internal static var §`w§:uint = 16;
      
      b2internal static var §,!`§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §7A§:uint;
      
      b2internal var §&>§:int;
      
      b2internal var §^b§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §;!#§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §&I§:b2Vec2;
      
      b2internal var § !A§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §80§:b2Body;
      
      b2internal var §`!T§:b2Body;
      
      b2internal var §1m§:b2Fixture;
      
      b2internal var §^F§:int;
      
      b2internal var §>!B§:b2ControllerEdge;
      
      b2internal var §,!G§:int;
      
      b2internal var §5!<§:b2JointEdge;
      
      b2internal var §=!-§:b2ContactEdge;
      
      b2internal var §9!=§:Number;
      
      b2internal var §"!§:Number;
      
      b2internal var §^!J§:Number;
      
      b2internal var §9y§:Number;
      
      b2internal var §5#§:Number;
      
      b2internal var §@!@§:Number;
      
      b2internal var §=a§:Number;
      
      b2internal var §'A§:Number;
      
      private var §`G§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§;!#§ = new b2Vec2();
         this.§&I§ = new b2Vec2();
         super();
         this.§7A§ = 0;
         if(param1.§`k§)
         {
            this.§7A§ |= b2internal::=!P;
         }
         if(param1.§ X§)
         {
            this.§7A§ |= b2internal::`w;
         }
         if(param1.§9!+§)
         {
            this.§7A§ |= b2internal::"7;
         }
         if(param1.§1!F§)
         {
            this.§7A§ |= b2internal::!!-;
         }
         if(param1.§6`§)
         {
            this.§7A§ |= b2internal::,!`;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§6d§();
         this.m_sweep.§@Y§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§5!<§ = null;
         this.§>!B§ = null;
         this.§=!-§ = null;
         this.§,!G§ = 0;
         this.§80§ = null;
         this.§`!T§ = null;
         this.§;!#§.SetV(param1.§7!4§);
         this.m_angularVelocity = param1.§7_§;
         this.§@!@§ = param1.§>x§;
         this.§=a§ = param1.§]^§;
         this.§&I§.Set(0,0);
         this.§ !A§ = 0;
         this.§'A§ = 0;
         this.§&>§ = param1.type;
         if(this.§&>§ == b2_dynamicBody)
         {
            this.§9!=§ = 1;
            this.§"!§ = 1;
         }
         else
         {
            this.§9!=§ = 0;
            this.§"!§ = 0;
         }
         this.§^!J§ = 0;
         this.§9y§ = 0;
         this.§5#§ = param1.§>!U§;
         this.§`G§ = param1.§+!?§;
         this.§1m§ = null;
         this.§^F§ = 0;
      }
      
      private function §1C§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§4v§().y,param2.§4v§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§5C§(_loc5_,param2.§4v§());
         _loc6_ = b2Math.§@!^§(_loc6_,param2.§,!W§());
         _loc6_ = b2Math.§5C§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§8!§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§8!§(param1.§4v§(),param2.§4v§())).Normalize();
         var _loc8_:* = b2Math.§0U§(param1.§4v§(),param2.§,!W§()) > 0;
         param1.§6n§(param2,_loc6_,_loc7_,_loc8_);
         param2.§!7§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §=!U§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§?!&§ = null;
         if(this.m_world.§[!Q§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§#![§(this,this.m_xf,param1);
         if(this.§7A§ & b2internal::,!`)
         {
            _loc3_ = this.m_world.§+U§.§%r§;
            _loc2_.§9!^§(_loc3_,this.m_xf);
         }
         _loc2_.§`!T§ = this.§1m§;
         this.§1m§ = _loc2_;
         ++this.§^F§;
         _loc2_.m_body = this;
         if(_loc2_.§%+§ > 0)
         {
            this.§,;§();
         }
         this.m_world.§7A§ |= b2World.§'E§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§=!U§(_loc3_);
      }
      
      public function §9!A§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§?!&§ = null;
         if(this.m_world.§[!Q§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§1m§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§`!T§ = param1.§`!T§;
               }
               else
               {
                  this.§1m§ = param1.§`!T§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§`!T§;
         }
         var _loc5_:b2ContactEdge = this.§=!-§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§^@§;
            _loc5_ = _loc5_.§`!V§;
            _loc7_ = _loc6_.§"q§();
            _loc8_ = _loc6_.§^x§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§+U§.§%P§(_loc6_);
            }
         }
         if(this.§7A§ & b2internal::,!`)
         {
            _loc9_ = this.m_world.§+U§.§%r§;
            param1.§%!C§(_loc9_);
         }
         param1.§%P§();
         param1.m_body = null;
         param1.§`!T§ = null;
         --this.§^F§;
         this.§,;§();
      }
      
      public function §'!A§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§[!Q§() == true)
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
         var _loc6_:§?!&§ = this.m_world.§+U§.§%r§;
         _loc3_ = this.§1m§;
         while(_loc3_)
         {
            _loc3_.§@!D§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§`!T§;
         }
         this.m_world.§+U§.§&!0§();
      }
      
      public function §4Q§(param1:b2Transform) : void
      {
         this.§'!A§(param1.position,param1.GetAngle());
      }
      
      public function §5!C§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §1!Y§(param1:b2Vec2) : void
      {
         this.§'!A§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §"p§(param1:Number) : void
      {
         this.§'!A§(this.GetPosition(),param1);
      }
      
      public function §97§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §8!R§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§&>§ == b2_staticBody)
         {
            return;
         }
         this.§;!#§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§;!#§;
      }
      
      public function §'!U§(param1:Number) : void
      {
         if(this.§&>§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §^!G§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §@+§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§"5§();
         _loc1_.§9!+§ = (this.§7A§ & b2internal::"7) == b2internal::"7;
         _loc1_.angle = this.GetAngle();
         _loc1_.§]^§ = this.§=a§;
         _loc1_.§7_§ = this.m_angularVelocity;
         _loc1_.§ X§ = (this.§7A§ & b2internal::`w) == b2internal::`w;
         _loc1_.§`k§ = (this.§7A§ & b2internal::=!P) == b2internal::=!P;
         _loc1_.§1!F§ = (this.§7A§ & b2internal::!!-) == b2internal::!!-;
         _loc1_.§>x§ = this.§@!@§;
         _loc1_.§7!4§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§+!?§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §;;§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§&>§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§&I§.x += param1.x;
         this.§&I§.y += param1.y;
         this.§ !A§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §'!V§(param1:Number) : void
      {
         if(this.§&>§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§ !A§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§&>§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§;!#§.x += this.§"!§ * param1.x;
         this.§;!#§.y += this.§"!§ * param1.y;
         this.m_angularVelocity += this.§9y§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §7!?§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§^!G§();
         var _loc4_:b2Vec2 = this.§97§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§^!'§(this.§@+§());
         var _loc8_:b2Fixture = _loc5_.§1m§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§`!T§;
               if(_loc7_)
               {
                  _loc7_.§`!T§ = _loc13_;
               }
               else
               {
                  _loc5_.§1m§ = _loc13_;
               }
               --_loc5_.§^F§;
               _loc8_.§`!T§ = _loc6_.§1m§;
               _loc6_.§1m§ = _loc8_;
               ++_loc6_.§^F§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§`!T§;
            }
         }
         _loc5_.§,;§();
         _loc6_.§,;§();
         var _loc9_:b2Vec2 = _loc5_.§97§();
         var _loc10_:b2Vec2 = _loc6_.§97§();
         var _loc11_:b2Vec2 = b2Math.§8!§(_loc2_,b2Math.§]§(_loc3_,b2Math.§@!^§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§8!§(_loc2_,b2Math.§]§(_loc3_,b2Math.§@!^§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§'!U§(_loc3_);
         _loc6_.§'!U§(_loc3_);
         _loc5_.§@!+§();
         _loc6_.§@!+§();
         return _loc6_;
      }
      
      public function §9Y§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§1m§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§`!T§;
            --param1.§^F§;
            _loc2_.§`!T§ = this.§1m§;
            this.§1m§ = _loc2_;
            ++this.§^F§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§^F§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§97§();
         var _loc6_:b2Vec2 = _loc4_.§97§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§^!G§();
         var _loc10_:Number = _loc4_.§^!G§();
         _loc3_.§,;§();
         this.§@!+§();
      }
      
      public function GetMass() : Number
      {
         return this.§9!=§;
      }
      
      public function §4!_§() : Number
      {
         return this.§^!J§;
      }
      
      public function §-!!§(param1:b2MassData) : void
      {
         param1.§',§ = this.§9!=§;
         param1.§"!F§ = this.§^!J§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §%!7§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§[!Q§() == false);
         if(this.m_world.§[!Q§() == true)
         {
            return;
         }
         if(this.§&>§ != b2_dynamicBody)
         {
            return;
         }
         this.§"!§ = 0;
         this.§^!J§ = 0;
         this.§9y§ = 0;
         this.§9!=§ = param1.§',§;
         if(this.§9!=§ <= 0)
         {
            this.§9!=§ = 1;
         }
         this.§"!§ = 1 / this.§9!=§;
         if(param1.§"!F§ > 0 && (this.§7A§ & b2internal::`w) == 0)
         {
            this.§^!J§ = param1.§"!F§ - this.§9!=§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§9y§ = 1 / this.§^!J§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§=$§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§;!#§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§;!#§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §,;§() : void
      {
         var _loc4_:b2MassData = null;
         this.§9!=§ = 0;
         this.§"!§ = 0;
         this.§^!J§ = 0;
         this.§9y§ = 0;
         this.m_sweep.localCenter.§6d§();
         if(this.§&>§ == b2_staticBody || this.§&>§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§%!9§(0,0);
         var _loc2_:b2Fixture = this.§1m§;
         while(_loc2_)
         {
            if(_loc2_.§%+§ != 0)
            {
               _loc4_ = _loc2_.§-!!§();
               this.§9!=§ += _loc4_.§',§;
               _loc1_.x += _loc4_.center.x * _loc4_.§',§;
               _loc1_.y += _loc4_.center.y * _loc4_.§',§;
               this.§^!J§ += _loc4_.§"!F§;
            }
            _loc2_ = _loc2_.§`!T§;
         }
         if(this.§9!=§ > 0)
         {
            this.§"!§ = 1 / this.§9!=§;
            _loc1_.x *= this.§"!§;
            _loc1_.y *= this.§"!§;
         }
         else
         {
            this.§9!=§ = 1;
            this.§"!§ = 1;
         }
         if(this.§^!J§ > 0 && (this.§7A§ & b2internal::`w) == 0)
         {
            this.§^!J§ -= this.§9!=§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§^!J§ *= this.§5#§;
            b2Settings.b2Assert(this.§^!J§ > 0);
            this.§9y§ = 1 / this.§^!J§;
         }
         else
         {
            this.§^!J§ = 0;
            this.§9y§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§=$§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§;!#§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§;!#§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §!I§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§8%§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§]!"§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§+!"§(this.m_xf.R,param1);
      }
      
      public function §8q§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§;!#§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§;!#§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §"]§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§;!#§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§;!#§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §#!B§() : Number
      {
         return this.§@!@§;
      }
      
      public function §,!M§(param1:Number) : void
      {
         this.§@!@§ = param1;
      }
      
      public function §,G§() : Number
      {
         return this.§=a§;
      }
      
      public function §1n§(param1:Number) : void
      {
         this.§=a§ = param1;
      }
      
      public function §1G§(param1:uint) : void
      {
         if(this.§&>§ == param1)
         {
            return;
         }
         this.§&>§ = param1;
         this.§,;§();
         if(this.§&>§ == b2_staticBody)
         {
            this.§;!#§.§6d§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§&I§.§6d§();
         this.§ !A§ = 0;
         var _loc2_:b2ContactEdge = this.§=!-§;
         while(_loc2_)
         {
            _loc2_.§^@§.§8!S§();
            _loc2_ = _loc2_.§`!V§;
         }
      }
      
      public function §"5§() : uint
      {
         return this.§&>§;
      }
      
      public function §2s§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7A§ |= b2internal::=!P;
         }
         else
         {
            this.§7A§ &= ~b2internal::=!P;
         }
      }
      
      public function §,!D§() : Boolean
      {
         return (this.§7A§ & b2internal::=!P) == b2internal::=!P;
      }
      
      public function §`!N§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7A§ |= b2internal::"7;
         }
         else
         {
            this.§7A§ &= ~b2internal::"7;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7A§ |= b2internal::!!-;
            this.§'A§ = 0;
         }
         else
         {
            this.§7A§ &= ~b2internal::!!-;
            this.§'A§ = 0;
            this.§;!#§.§6d§();
            this.m_angularVelocity = 0;
            this.§&I§.§6d§();
            this.§ !A§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§7A§ & b2internal::!!-) == b2internal::!!-;
      }
      
      public function §-!,§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7A§ |= b2internal::`w;
         }
         else
         {
            this.§7A§ &= ~b2internal::`w;
         }
         this.§,;§();
      }
      
      public function §!&§() : Boolean
      {
         return (this.§7A§ & b2internal::`w) == b2internal::`w;
      }
      
      public function §<S§(param1:Boolean) : void
      {
         var _loc2_:§?!&§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§]I§())
         {
            return;
         }
         if(param1)
         {
            this.§7A§ |= b2internal::,!`;
            _loc2_ = this.m_world.§+U§.§%r§;
            _loc3_ = this.§1m§;
            while(_loc3_)
            {
               _loc3_.§9!^§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§`!T§;
            }
         }
         else
         {
            this.§7A§ &= ~b2internal::,!`;
            _loc2_ = this.m_world.§+U§.§%r§;
            _loc3_ = this.§1m§;
            while(_loc3_)
            {
               _loc3_.§%!C§(_loc2_);
               _loc3_ = _loc3_.§`!T§;
            }
            _loc4_ = this.§=!-§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§`!V§;
               this.m_world.§+U§.§%P§(_loc5_.§^@§);
            }
            this.§=!-§ = null;
         }
      }
      
      public function §]I§() : Boolean
      {
         return (this.§7A§ & b2internal::,!`) == b2internal::,!`;
      }
      
      public function §8^§() : Boolean
      {
         return (this.§7A§ & b2internal::"7) == b2internal::"7;
      }
      
      public function §@R§() : b2Fixture
      {
         return this.§1m§;
      }
      
      public function § Q§() : b2JointEdge
      {
         return this.§5!<§;
      }
      
      public function §2!A§() : b2ControllerEdge
      {
         return this.§>!B§;
      }
      
      public function §0H§() : b2ContactEdge
      {
         return this.§=!-§;
      }
      
      public function §%!<§() : b2Body
      {
         return this.§`!T§;
      }
      
      public function GetUserData() : *
      {
         return this.§`G§;
      }
      
      public function §3!!§(param1:*) : void
      {
         this.§`G§ = param1;
      }
      
      public function §<!D§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §@!+§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §%J§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§?!&§ = this.m_world.§+U§.§%r§;
         _loc4_ = this.§1m§;
         while(_loc4_)
         {
            _loc4_.§@!D§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§`!T§;
         }
      }
      
      b2internal function §8]§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §^§(param1:b2Body) : Boolean
      {
         if(this.§&>§ != b2_dynamicBody && param1.§&>§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§5!<§;
         while(_loc2_)
         {
            if(_loc2_.§`!0§ == param1)
            {
               if(_loc2_.§34§.§24§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§`!V§;
         }
         return true;
      }
      
      b2internal function §'!^§(param1:Number) : void
      {
         this.m_sweep.§'!^§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§8]§();
      }
   }
}

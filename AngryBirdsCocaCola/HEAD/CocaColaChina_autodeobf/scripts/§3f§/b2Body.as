package §3f§
{
   import §&!L§.b2Mat22;
   import §&!L§.b2Math;
   import §&!L§.b2Sweep;
   import §&!L§.b2Transform;
   import §&!L§.b2Vec2;
   import §-!<§.b2EdgeShape;
   import §-!<§.b2MassData;
   import §-!<§.b2Shape;
   import §6$§.b2JointEdge;
   import §7!C§.b2Settings;
   import §7!C§.b2internal;
   import §<l§.b2Contact;
   import §<l§.b2ContactEdge;
   import §=!!§.§?!S§;
   import §>!7§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §>B§:b2Transform = new b2Transform();
      
      b2internal static var §&!9§:uint = 1;
      
      b2internal static var §[!I§:uint = 2;
      
      b2internal static var §;!B§:uint = 4;
      
      b2internal static var §<i§:uint = 8;
      
      b2internal static var §&7§:uint = 16;
      
      b2internal static var §=k§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §^!B§:uint;
      
      b2internal var §'!c§:int;
      
      b2internal var §0,§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §9!Q§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §'!=§:b2Vec2;
      
      b2internal var set:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §<`§:b2Body;
      
      b2internal var §',§:b2Body;
      
      b2internal var §'!1§:b2Fixture;
      
      b2internal var §>!A§:int;
      
      b2internal var § a§:b2ControllerEdge;
      
      b2internal var §'q§:int;
      
      b2internal var §]§:b2JointEdge;
      
      b2internal var §'z§:b2ContactEdge;
      
      b2internal var § !4§:Number;
      
      b2internal var §3!`§:Number;
      
      b2internal var §#j§:Number;
      
      b2internal var §=4§:Number;
      
      b2internal var §4a§:Number;
      
      b2internal var §!! §:Number;
      
      b2internal var §84§:Number;
      
      b2internal var §,O§:Number;
      
      private var §]%§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§9!Q§ = new b2Vec2();
         this.§'!=§ = new b2Vec2();
         super();
         this.§^!B§ = 0;
         if(param1.§4E§)
         {
            this.§^!B§ |= b2internal::<i;
         }
         if(param1.§^!9§)
         {
            this.§^!B§ |= b2internal::&7;
         }
         if(param1.§`V§)
         {
            this.§^!B§ |= b2internal::;!B;
         }
         if(param1.§ !H§)
         {
            this.§^!B§ |= b2internal::[!I;
         }
         if(param1.§5!C§)
         {
            this.§^!B§ |= b2internal::=k;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§`§();
         this.m_sweep.§,!G§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§]§ = null;
         this.§ a§ = null;
         this.§'z§ = null;
         this.§'q§ = 0;
         this.§<`§ = null;
         this.§',§ = null;
         this.§9!Q§.SetV(param1.§ !0§);
         this.m_angularVelocity = param1.§`!]§;
         this.§!! § = param1.§,!&§;
         this.§84§ = param1.§+I§;
         this.§'!=§.Set(0,0);
         this.set = 0;
         this.§,O§ = 0;
         this.§'!c§ = param1.type;
         if(this.§'!c§ == b2_dynamicBody)
         {
            this.§ !4§ = 1;
            this.§3!`§ = 1;
         }
         else
         {
            this.§ !4§ = 0;
            this.§3!`§ = 0;
         }
         this.§#j§ = 0;
         this.§=4§ = 0;
         this.§4a§ = param1.§4?§;
         this.§]%§ = param1.§6!6§;
         this.§'!1§ = null;
         this.§>!A§ = 0;
      }
      
      private function §'!'§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§#!W§().y,param2.§#!W§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§0$§(_loc5_,param2.§#!W§());
         _loc6_ = b2Math.§ <§(_loc6_,param2.§4!]§());
         _loc6_ = b2Math.§0$§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§>W§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§>W§(param1.§#!W§(),param2.§#!W§())).Normalize();
         var _loc8_:* = b2Math.§2!+§(param1.§#!W§(),param2.§4!]§()) > 0;
         param1.§5!&§(param2,_loc6_,_loc7_,_loc8_);
         param2.§%v§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §"!E§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§?!S§ = null;
         if(this.m_world.§%m§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§?T§(this,this.m_xf,param1);
         if(this.§^!B§ & b2internal::=k)
         {
            _loc3_ = this.m_world.§=u§.§2R§;
            _loc2_.§0L§(_loc3_,this.m_xf);
         }
         _loc2_.§',§ = this.§'!1§;
         this.§'!1§ = _loc2_;
         ++this.§>!A§;
         _loc2_.m_body = this;
         if(_loc2_.§?6§ > 0)
         {
            this.§!d§();
         }
         this.m_world.§^!B§ |= b2World.§@[§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§"!E§(_loc3_);
      }
      
      public function §>!-§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§?!S§ = null;
         if(this.m_world.§%m§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§'!1§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§',§ = param1.§',§;
               }
               else
               {
                  this.§'!1§ = param1.§',§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§',§;
         }
         var _loc5_:b2ContactEdge = this.§'z§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§+!Q§;
            _loc5_ = _loc5_.§`2§;
            _loc7_ = _loc6_.§'+§();
            _loc8_ = _loc6_.§&4§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§=u§.§>h§(_loc6_);
            }
         }
         if(this.§^!B§ & b2internal::=k)
         {
            _loc9_ = this.m_world.§=u§.§2R§;
            param1.§2s§(_loc9_);
         }
         param1.§>h§();
         param1.m_body = null;
         param1.§',§ = null;
         --this.§>!A§;
         this.§!d§();
      }
      
      public function §0!V§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§%m§() == true)
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
         var _loc6_:§?!S§ = this.m_world.§=u§.§2R§;
         _loc3_ = this.§'!1§;
         while(_loc3_)
         {
            _loc3_.§7-§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§',§;
         }
         this.m_world.§=u§.§?w§();
      }
      
      public function §@!H§(param1:b2Transform) : void
      {
         this.§0!V§(param1.position,param1.GetAngle());
      }
      
      public function § g§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §>!1§(param1:b2Vec2) : void
      {
         this.§0!V§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §8z§(param1:Number) : void
      {
         this.§0!V§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §#!!§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§'!c§ == b2_staticBody)
         {
            return;
         }
         this.§9!Q§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§9!Q§;
      }
      
      public function §%! §(param1:Number) : void
      {
         if(this.§'!c§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §"!5§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§6`§();
         _loc1_.§`V§ = (this.§^!B§ & b2internal::;!B) == b2internal::;!B;
         _loc1_.angle = this.GetAngle();
         _loc1_.§+I§ = this.§84§;
         _loc1_.§`!]§ = this.m_angularVelocity;
         _loc1_.§^!9§ = (this.§^!B§ & b2internal::&7) == b2internal::&7;
         _loc1_.§4E§ = (this.§^!B§ & b2internal::<i) == b2internal::<i;
         _loc1_.§ !H§ = (this.§^!B§ & b2internal::[!I) == b2internal::[!I;
         _loc1_.§,!&§ = this.§!! §;
         _loc1_.§ !0§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§6!6§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §5O§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§'!c§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§'!=§.x += param1.x;
         this.§'!=§.y += param1.y;
         this.set += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §=!]§(param1:Number) : void
      {
         if(this.§'!c§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.set += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§'!c§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§9!Q§.x += this.§3!`§ * param1.x;
         this.§9!Q§.y += this.§3!`§ * param1.y;
         this.m_angularVelocity += this.§=4§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §1_§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§@!K§(this.§"!5§());
         var _loc8_:b2Fixture = _loc5_.§'!1§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§',§;
               if(_loc7_)
               {
                  _loc7_.§',§ = _loc13_;
               }
               else
               {
                  _loc5_.§'!1§ = _loc13_;
               }
               --_loc5_.§>!A§;
               _loc8_.§',§ = _loc6_.§'!1§;
               _loc6_.§'!1§ = _loc8_;
               ++_loc6_.§>!A§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§',§;
            }
         }
         _loc5_.§!d§();
         _loc6_.§!d§();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§>W§(_loc2_,b2Math.§[§(_loc3_,b2Math.§ <§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§>W§(_loc2_,b2Math.§[§(_loc3_,b2Math.§ <§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§%! §(_loc3_);
         _loc6_.§%! §(_loc3_);
         _loc5_.§#V§();
         _loc6_.§#V§();
         return _loc6_;
      }
      
      public function §0>§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§'!1§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§',§;
            --param1.§>!A§;
            _loc2_.§',§ = this.§'!1§;
            this.§'!1§ = _loc2_;
            ++this.§>!A§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§>!A§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.GetWorldCenter();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§!d§();
         this.§#V§();
      }
      
      public function GetMass() : Number
      {
         return this.§ !4§;
      }
      
      public function §9!-§() : Number
      {
         return this.§#j§;
      }
      
      public function §;!8§(param1:b2MassData) : void
      {
         param1.§%!&§ = this.§ !4§;
         param1.§[!@§ = this.§#j§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §%`§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§%m§() == false);
         if(this.m_world.§%m§() == true)
         {
            return;
         }
         if(this.§'!c§ != b2_dynamicBody)
         {
            return;
         }
         this.§3!`§ = 0;
         this.§#j§ = 0;
         this.§=4§ = 0;
         this.§ !4§ = param1.§%!&§;
         if(this.§ !4§ <= 0)
         {
            this.§ !4§ = 1;
         }
         this.§3!`§ = 1 / this.§ !4§;
         if(param1.§[!@§ > 0 && (this.§^!B§ & b2internal::&7) == 0)
         {
            this.§#j§ = param1.§[!@§ - this.§ !4§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§=4§ = 1 / this.§#j§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§,!2§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§9!Q§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§9!Q§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §!d§() : void
      {
         var _loc4_:b2MassData = null;
         this.§ !4§ = 0;
         this.§3!`§ = 0;
         this.§#j§ = 0;
         this.§=4§ = 0;
         this.m_sweep.localCenter.§`§();
         if(this.§'!c§ == b2_staticBody || this.§'!c§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§%!`§(0,0);
         var _loc2_:b2Fixture = this.§'!1§;
         while(_loc2_)
         {
            if(_loc2_.§?6§ != 0)
            {
               _loc4_ = _loc2_.§;!8§();
               this.§ !4§ += _loc4_.§%!&§;
               _loc1_.x += _loc4_.center.x * _loc4_.§%!&§;
               _loc1_.y += _loc4_.center.y * _loc4_.§%!&§;
               this.§#j§ += _loc4_.§[!@§;
            }
            _loc2_ = _loc2_.§',§;
         }
         if(this.§ !4§ > 0)
         {
            this.§3!`§ = 1 / this.§ !4§;
            _loc1_.x *= this.§3!`§;
            _loc1_.y *= this.§3!`§;
         }
         else
         {
            this.§ !4§ = 1;
            this.§3!`§ = 1;
         }
         if(this.§#j§ > 0 && (this.§^!B§ & b2internal::&7) == 0)
         {
            this.§#j§ -= this.§ !4§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§#j§ *= this.§4a§;
            b2Settings.b2Assert(this.§#j§ > 0);
            this.§=4§ = 1 / this.§#j§;
         }
         else
         {
            this.§#j§ = 0;
            this.§=4§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§,!2§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§9!Q§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§9!Q§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §%x§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§%§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§%!2§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§[u§(this.m_xf.R,param1);
      }
      
      public function §"?§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§9!Q§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§9!Q§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §2t§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§9!Q§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§9!Q§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §"K§() : Number
      {
         return this.§!! §;
      }
      
      public function §^!c§(param1:Number) : void
      {
         this.§!! § = param1;
      }
      
      public function § #§() : Number
      {
         return this.§84§;
      }
      
      public function §"9§(param1:Number) : void
      {
         this.§84§ = param1;
      }
      
      public function §8J§(param1:uint) : void
      {
         if(this.§'!c§ == param1)
         {
            return;
         }
         this.§'!c§ = param1;
         this.§!d§();
         if(this.§'!c§ == b2_staticBody)
         {
            this.§9!Q§.§`§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§'!=§.§`§();
         this.set = 0;
         var _loc2_:b2ContactEdge = this.§'z§;
         while(_loc2_)
         {
            _loc2_.§+!Q§.§7!=§();
            _loc2_ = _loc2_.§`2§;
         }
      }
      
      public function §6`§() : uint
      {
         return this.§'!c§;
      }
      
      public function §?d§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^!B§ |= b2internal::<i;
         }
         else
         {
            this.§^!B§ &= ~b2internal::<i;
         }
      }
      
      public function §<!9§() : Boolean
      {
         return (this.§^!B§ & b2internal::<i) == b2internal::<i;
      }
      
      public function §"!%§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^!B§ |= b2internal::;!B;
         }
         else
         {
            this.§^!B§ &= ~b2internal::;!B;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^!B§ |= b2internal::[!I;
            this.§,O§ = 0;
         }
         else
         {
            this.§^!B§ &= ~b2internal::[!I;
            this.§,O§ = 0;
            this.§9!Q§.§`§();
            this.m_angularVelocity = 0;
            this.§'!=§.§`§();
            this.set = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§^!B§ & b2internal::[!I) == b2internal::[!I;
      }
      
      public function § !Y§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^!B§ |= b2internal::&7;
         }
         else
         {
            this.§^!B§ &= ~b2internal::&7;
         }
         this.§!d§();
      }
      
      public function §4!O§() : Boolean
      {
         return (this.§^!B§ & b2internal::&7) == b2internal::&7;
      }
      
      public function § else§(param1:Boolean) : void
      {
         var _loc2_:§?!S§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§1t§())
         {
            return;
         }
         if(param1)
         {
            this.§^!B§ |= b2internal::=k;
            _loc2_ = this.m_world.§=u§.§2R§;
            _loc3_ = this.§'!1§;
            while(_loc3_)
            {
               _loc3_.§0L§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§',§;
            }
         }
         else
         {
            this.§^!B§ &= ~b2internal::=k;
            _loc2_ = this.m_world.§=u§.§2R§;
            _loc3_ = this.§'!1§;
            while(_loc3_)
            {
               _loc3_.§2s§(_loc2_);
               _loc3_ = _loc3_.§',§;
            }
            _loc4_ = this.§'z§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§`2§;
               this.m_world.§=u§.§>h§(_loc5_.§+!Q§);
            }
            this.§'z§ = null;
         }
      }
      
      public function §1t§() : Boolean
      {
         return (this.§^!B§ & b2internal::=k) == b2internal::=k;
      }
      
      public function §6!H§() : Boolean
      {
         return (this.§^!B§ & b2internal::;!B) == b2internal::;!B;
      }
      
      public function §3s§() : b2Fixture
      {
         return this.§'!1§;
      }
      
      public function §%s§() : b2JointEdge
      {
         return this.§]§;
      }
      
      public function §9!a§() : b2ControllerEdge
      {
         return this.§ a§;
      }
      
      public function §!u§() : b2ContactEdge
      {
         return this.§'z§;
      }
      
      public function § O§() : b2Body
      {
         return this.§',§;
      }
      
      public function GetUserData() : *
      {
         return this.§]%§;
      }
      
      public function §3!Z§(param1:*) : void
      {
         this.§]%§ = param1;
      }
      
      public function §2&§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §#V§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §>B§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§?!S§ = this.m_world.§=u§.§2R§;
         _loc4_ = this.§'!1§;
         while(_loc4_)
         {
            _loc4_.§7-§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§',§;
         }
      }
      
      b2internal function §4B§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §<!7§(param1:b2Body) : Boolean
      {
         if(this.§'!c§ != b2_dynamicBody && param1.§'!c§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§]§;
         while(_loc2_)
         {
            if(_loc2_.§8g§ == param1)
            {
               if(_loc2_.§=!<§.§;!b§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§`2§;
         }
         return true;
      }
      
      b2internal function §,W§(param1:Number) : void
      {
         this.m_sweep.§,W§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§4B§();
      }
   }
}

package §8!I§
{
   import §+!b§.b2EdgeShape;
   import §+!b§.b2MassData;
   import §+!b§.b2Shape;
   import §4x§.b2Settings;
   import §4x§.b2internal;
   import §6>§.b2JointEdge;
   import §<"§.§+!5§;
   import §=i§.b2Mat22;
   import §=i§.b2Math;
   import §=i§.b2Sweep;
   import §=i§.b2Transform;
   import §=i§.b2Vec2;
   import §?@§.b2ControllerEdge;
   import §@!a§.b2Contact;
   import §@!a§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §5!0§:b2Transform = new b2Transform();
      
      b2internal static var §;i§:uint = 1;
      
      b2internal static var §'!`§:uint = 2;
      
      b2internal static var §&!Z§:uint = 4;
      
      b2internal static var §6!Q§:uint = 8;
      
      b2internal static var §1z§:uint = 16;
      
      b2internal static var §^Z§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §4!-§:uint;
      
      b2internal var §'A§:int;
      
      b2internal var §2!Y§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §]J§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §80§:b2Vec2;
      
      b2internal var §^X§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §5E§:b2Body;
      
      b2internal var §,C§:b2Body;
      
      b2internal var §8!-§:b2Fixture;
      
      b2internal var §8<§:int;
      
      b2internal var §6!`§:b2ControllerEdge;
      
      b2internal var §]n§:int;
      
      b2internal var § set§:b2JointEdge;
      
      b2internal var §0-§:b2ContactEdge;
      
      b2internal var §!!9§:Number;
      
      b2internal var §=!C§:Number;
      
      b2internal var §2!X§:Number;
      
      b2internal var §!!§:Number;
      
      b2internal var §8k§:Number;
      
      b2internal var § !9§:Number;
      
      b2internal var § !+§:Number;
      
      b2internal var §+N§:Number;
      
      private var §4!3§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§]J§ = new b2Vec2();
         this.§80§ = new b2Vec2();
         super();
         this.§4!-§ = 0;
         if(param1.§,Z§)
         {
            this.§4!-§ |= b2internal::6!Q;
         }
         if(param1.§3§)
         {
            this.§4!-§ |= b2internal::1z;
         }
         if(param1.§'!A§)
         {
            this.§4!-§ |= b2internal::&!Z;
         }
         if(param1.§%!4§)
         {
            this.§4!-§ |= b2internal::'!`;
         }
         if(param1.§if §)
         {
            this.§4!-§ |= b2internal::^Z;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§0!=§();
         this.m_sweep.§]!c§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§ set§ = null;
         this.§6!`§ = null;
         this.§0-§ = null;
         this.§]n§ = 0;
         this.§5E§ = null;
         this.§,C§ = null;
         this.§]J§.SetV(param1.§7c§);
         this.m_angularVelocity = param1.§"!^§;
         this.§ !9§ = param1.§`A§;
         this.§ !+§ = param1.§;d§;
         this.§80§.Set(0,0);
         this.§^X§ = 0;
         this.§+N§ = 0;
         this.§'A§ = param1.type;
         if(this.§'A§ == b2_dynamicBody)
         {
            this.§!!9§ = 1;
            this.§=!C§ = 1;
         }
         else
         {
            this.§!!9§ = 0;
            this.§=!C§ = 0;
         }
         this.§2!X§ = 0;
         this.§!!§ = 0;
         this.§8k§ = param1.§&U§;
         this.§4!3§ = param1.§3q§;
         this.§8!-§ = null;
         this.§8<§ = 0;
      }
      
      private function §0![§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§8W§().y,param2.§8W§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§6T§(_loc5_,param2.§8W§());
         _loc6_ = b2Math.§]G§(_loc6_,param2.§5f§());
         _loc6_ = b2Math.§6T§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§+!7§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§+!7§(param1.§8W§(),param2.§8W§())).Normalize();
         var _loc8_:* = b2Math.§=8§(param1.§8W§(),param2.§5f§()) > 0;
         param1.§4I§(param2,_loc6_,_loc7_,_loc8_);
         param2.§;!O§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §7@§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§+!5§ = null;
         if(this.m_world.§1h§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§ `§(this,this.m_xf,param1);
         if(this.§4!-§ & b2internal::^Z)
         {
            _loc3_ = this.m_world.§'!R§.§?D§;
            _loc2_.§"^§(_loc3_,this.m_xf);
         }
         _loc2_.§,C§ = this.§8!-§;
         this.§8!-§ = _loc2_;
         ++this.§8<§;
         _loc2_.m_body = this;
         if(_loc2_.§?!<§ > 0)
         {
            this.§^k§();
         }
         this.m_world.§4!-§ |= b2World.§,"§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§7@§(_loc3_);
      }
      
      public function §%!7§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§+!5§ = null;
         if(this.m_world.§1h§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§8!-§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§,C§ = param1.§,C§;
               }
               else
               {
                  this.§8!-§ = param1.§,C§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§,C§;
         }
         var _loc5_:b2ContactEdge = this.§0-§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§ M§;
            _loc5_ = _loc5_.§>;§;
            _loc7_ = _loc6_.§#!Z§();
            _loc8_ = _loc6_.§5A§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§'!R§.§%!`§(_loc6_);
            }
         }
         if(this.§4!-§ & b2internal::^Z)
         {
            _loc9_ = this.m_world.§'!R§.§?D§;
            param1.§-0§(_loc9_);
         }
         param1.§%!`§();
         param1.m_body = null;
         param1.§,C§ = null;
         --this.§8<§;
         this.§^k§();
      }
      
      public function §"d§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§1h§() == true)
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
         var _loc6_:§+!5§ = this.m_world.§'!R§.§?D§;
         _loc3_ = this.§8!-§;
         while(_loc3_)
         {
            _loc3_.§>z§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§,C§;
         }
         this.m_world.§'!R§.§8y§();
      }
      
      public function §-!=§(param1:b2Transform) : void
      {
         this.§"d§(param1.position,param1.GetAngle());
      }
      
      public function §0c§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §7!-§(param1:b2Vec2) : void
      {
         this.§"d§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §5T§(param1:Number) : void
      {
         this.§"d§(this.GetPosition(),param1);
      }
      
      public function §3e§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §]!2§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§'A§ == b2_staticBody)
         {
            return;
         }
         this.§]J§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§]J§;
      }
      
      public function §?!7§(param1:Number) : void
      {
         if(this.§'A§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §6!+§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§<!M§();
         _loc1_.§'!A§ = (this.§4!-§ & b2internal::&!Z) == b2internal::&!Z;
         _loc1_.angle = this.GetAngle();
         _loc1_.§;d§ = this.§ !+§;
         _loc1_.§"!^§ = this.m_angularVelocity;
         _loc1_.§3§ = (this.§4!-§ & b2internal::1z) == b2internal::1z;
         _loc1_.§,Z§ = (this.§4!-§ & b2internal::6!Q) == b2internal::6!Q;
         _loc1_.§%!4§ = (this.§4!-§ & b2internal::'!`) == b2internal::'!`;
         _loc1_.§`A§ = this.§ !9§;
         _loc1_.§7c§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§3q§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §8_§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§'A§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§80§.x += param1.x;
         this.§80§.y += param1.y;
         this.§^X§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §8!§(param1:Number) : void
      {
         if(this.§'A§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§^X§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§'A§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§]J§.x += this.§=!C§ * param1.x;
         this.§]J§.y += this.§=!C§ * param1.y;
         this.m_angularVelocity += this.§!!§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §=u§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§3e§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§?]§(this.§6!+§());
         var _loc8_:b2Fixture = _loc5_.§8!-§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§,C§;
               if(_loc7_)
               {
                  _loc7_.§,C§ = _loc13_;
               }
               else
               {
                  _loc5_.§8!-§ = _loc13_;
               }
               --_loc5_.§8<§;
               _loc8_.§,C§ = _loc6_.§8!-§;
               _loc6_.§8!-§ = _loc8_;
               ++_loc6_.§8<§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§,C§;
            }
         }
         _loc5_.§^k§();
         _loc6_.§^k§();
         var _loc9_:b2Vec2 = _loc5_.§3e§();
         var _loc10_:b2Vec2 = _loc6_.§3e§();
         var _loc11_:b2Vec2 = b2Math.§+!7§(_loc2_,b2Math.§case §(_loc3_,b2Math.§]G§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§+!7§(_loc2_,b2Math.§case §(_loc3_,b2Math.§]G§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§?!7§(_loc3_);
         _loc6_.§?!7§(_loc3_);
         _loc5_.§2!a§();
         _loc6_.§2!a§();
         return _loc6_;
      }
      
      public function §<!7§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§8!-§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§,C§;
            --param1.§8<§;
            _loc2_.§,C§ = this.§8!-§;
            this.§8!-§ = _loc2_;
            ++this.§8<§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§8<§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§3e§();
         var _loc6_:b2Vec2 = _loc4_.§3e§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§^k§();
         this.§2!a§();
      }
      
      public function GetMass() : Number
      {
         return this.§!!9§;
      }
      
      public function §@!Q§() : Number
      {
         return this.§2!X§;
      }
      
      public function §9A§(param1:b2MassData) : void
      {
         param1.§@!_§ = this.§!!9§;
         param1.§`§ = this.§2!X§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §7!c§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§1h§() == false);
         if(this.m_world.§1h§() == true)
         {
            return;
         }
         if(this.§'A§ != b2_dynamicBody)
         {
            return;
         }
         this.§=!C§ = 0;
         this.§2!X§ = 0;
         this.§!!§ = 0;
         this.§!!9§ = param1.§@!_§;
         if(this.§!!9§ <= 0)
         {
            this.§!!9§ = 1;
         }
         this.§=!C§ = 1 / this.§!!9§;
         if(param1.§`§ > 0 && (this.§4!-§ & b2internal::1z) == 0)
         {
            this.§2!X§ = param1.§`§ - this.§!!9§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§!!§ = 1 / this.§2!X§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§]x§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§]J§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§]J§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §^k§() : void
      {
         var _loc4_:b2MassData = null;
         this.§!!9§ = 0;
         this.§=!C§ = 0;
         this.§2!X§ = 0;
         this.§!!§ = 0;
         this.m_sweep.localCenter.§0!=§();
         if(this.§'A§ == b2_staticBody || this.§'A§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§6!&§(0,0);
         var _loc2_:b2Fixture = this.§8!-§;
         while(_loc2_)
         {
            if(_loc2_.§?!<§ != 0)
            {
               _loc4_ = _loc2_.§9A§();
               this.§!!9§ += _loc4_.§@!_§;
               _loc1_.x += _loc4_.center.x * _loc4_.§@!_§;
               _loc1_.y += _loc4_.center.y * _loc4_.§@!_§;
               this.§2!X§ += _loc4_.§`§;
            }
            _loc2_ = _loc2_.§,C§;
         }
         if(this.§!!9§ > 0)
         {
            this.§=!C§ = 1 / this.§!!9§;
            _loc1_.x *= this.§=!C§;
            _loc1_.y *= this.§=!C§;
         }
         else
         {
            this.§!!9§ = 1;
            this.§=!C§ = 1;
         }
         if(this.§2!X§ > 0 && (this.§4!-§ & b2internal::1z) == 0)
         {
            this.§2!X§ -= this.§!!9§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§2!X§ *= this.§8k§;
            b2Settings.b2Assert(this.§2!X§ > 0);
            this.§!!§ = 1 / this.§2!X§;
         }
         else
         {
            this.§2!X§ = 0;
            this.§!!§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§]x§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§]J§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§]J§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §8G§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§^!<§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§in§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§-4§(this.m_xf.R,param1);
      }
      
      public function §0!4§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§]J§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§]J§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §"!J§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§]J§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§]J§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §`B§() : Number
      {
         return this.§ !9§;
      }
      
      public function §]!`§(param1:Number) : void
      {
         this.§ !9§ = param1;
      }
      
      public function §+!U§() : Number
      {
         return this.§ !+§;
      }
      
      public function §`t§(param1:Number) : void
      {
         this.§ !+§ = param1;
      }
      
      public function §^1§(param1:uint) : void
      {
         if(this.§'A§ == param1)
         {
            return;
         }
         this.§'A§ = param1;
         this.§^k§();
         if(this.§'A§ == b2_staticBody)
         {
            this.§]J§.§0!=§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§80§.§0!=§();
         this.§^X§ = 0;
         var _loc2_:b2ContactEdge = this.§0-§;
         while(_loc2_)
         {
            _loc2_.§ M§.§%&§();
            _loc2_ = _loc2_.§>;§;
         }
      }
      
      public function §<!M§() : uint
      {
         return this.§'A§;
      }
      
      public function §^x§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§4!-§ |= b2internal::6!Q;
         }
         else
         {
            this.§4!-§ &= ~b2internal::6!Q;
         }
      }
      
      public function §8!V§() : Boolean
      {
         return (this.§4!-§ & b2internal::6!Q) == b2internal::6!Q;
      }
      
      public function §5!^§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§4!-§ |= b2internal::&!Z;
         }
         else
         {
            this.§4!-§ &= ~b2internal::&!Z;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§4!-§ |= b2internal::'!`;
            this.§+N§ = 0;
         }
         else
         {
            this.§4!-§ &= ~b2internal::'!`;
            this.§+N§ = 0;
            this.§]J§.§0!=§();
            this.m_angularVelocity = 0;
            this.§80§.§0!=§();
            this.§^X§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§4!-§ & b2internal::'!`) == b2internal::'!`;
      }
      
      public function §<m§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§4!-§ |= b2internal::1z;
         }
         else
         {
            this.§4!-§ &= ~b2internal::1z;
         }
         this.§^k§();
      }
      
      public function §4!+§() : Boolean
      {
         return (this.§4!-§ & b2internal::1z) == b2internal::1z;
      }
      
      public function §1!_§(param1:Boolean) : void
      {
         var _loc2_:§+!5§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§4@§())
         {
            return;
         }
         if(param1)
         {
            this.§4!-§ |= b2internal::^Z;
            _loc2_ = this.m_world.§'!R§.§?D§;
            _loc3_ = this.§8!-§;
            while(_loc3_)
            {
               _loc3_.§"^§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§,C§;
            }
         }
         else
         {
            this.§4!-§ &= ~b2internal::^Z;
            _loc2_ = this.m_world.§'!R§.§?D§;
            _loc3_ = this.§8!-§;
            while(_loc3_)
            {
               _loc3_.§-0§(_loc2_);
               _loc3_ = _loc3_.§,C§;
            }
            _loc4_ = this.§0-§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§>;§;
               this.m_world.§'!R§.§%!`§(_loc5_.§ M§);
            }
            this.§0-§ = null;
         }
      }
      
      public function §4@§() : Boolean
      {
         return (this.§4!-§ & b2internal::^Z) == b2internal::^Z;
      }
      
      public function §^;§() : Boolean
      {
         return (this.§4!-§ & b2internal::&!Z) == b2internal::&!Z;
      }
      
      public function §>!G§() : b2Fixture
      {
         return this.§8!-§;
      }
      
      public function §6f§() : b2JointEdge
      {
         return this.§ set§;
      }
      
      public function §0<§() : b2ControllerEdge
      {
         return this.§6!`§;
      }
      
      public function §,;§() : b2ContactEdge
      {
         return this.§0-§;
      }
      
      public function §]S§() : b2Body
      {
         return this.§,C§;
      }
      
      public function GetUserData() : *
      {
         return this.§4!3§;
      }
      
      public function §!X§(param1:*) : void
      {
         this.§4!3§ = param1;
      }
      
      public function §%§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §2!a§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §5!0§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§+!5§ = this.m_world.§'!R§.§?D§;
         _loc4_ = this.§8!-§;
         while(_loc4_)
         {
            _loc4_.§>z§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§,C§;
         }
      }
      
      b2internal function §,M§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §%!B§(param1:b2Body) : Boolean
      {
         if(this.§'A§ != b2_dynamicBody && param1.§'A§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§ set§;
         while(_loc2_)
         {
            if(_loc2_.§0z§ == param1)
            {
               if(_loc2_.§@<§.§@!]§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§>;§;
         }
         return true;
      }
      
      b2internal function §`K§(param1:Number) : void
      {
         this.m_sweep.§`K§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§,M§();
      }
   }
}

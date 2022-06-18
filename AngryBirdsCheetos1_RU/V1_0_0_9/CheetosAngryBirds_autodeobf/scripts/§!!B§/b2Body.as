package §!!B§
{
   import §!H§.b2JointEdge;
   import §3!&§.b2Contact;
   import §3!&§.b2ContactEdge;
   import §5!A§.b2ControllerEdge;
   import §5p§.b2EdgeShape;
   import §5p§.b2MassData;
   import §5p§.b2Shape;
   import §7S§.§"!P§;
   import §;0§.b2Settings;
   import §;0§.b2internal;
   import §;U§.b2Mat22;
   import §;U§.b2Math;
   import §;U§.b2Sweep;
   import §;U§.b2Transform;
   import §;U§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §1!+§:b2Transform = new b2Transform();
      
      b2internal static var §0§:uint = 1;
      
      b2internal static var §4<§:uint = 2;
      
      b2internal static var §0t§:uint = 4;
      
      b2internal static var §2L§:uint = 8;
      
      b2internal static var §`A§:uint = 16;
      
      b2internal static var §[%§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §5!9§:uint;
      
      b2internal var §@!_§:int;
      
      b2internal var §<J§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §7W§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §;"§:b2Vec2;
      
      b2internal var §;!9§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §6+§:b2Body;
      
      b2internal var §6!#§:b2Body;
      
      b2internal var §0#§:b2Fixture;
      
      b2internal var §`!Z§:int;
      
      b2internal var §;!-§:b2ControllerEdge;
      
      b2internal var §+K§:int;
      
      b2internal var §!!T§:b2JointEdge;
      
      b2internal var §%u§:b2ContactEdge;
      
      b2internal var §^"§:Number;
      
      b2internal var §?t§:Number;
      
      b2internal var §#!3§:Number;
      
      b2internal var §<!V§:Number;
      
      b2internal var §2P§:Number;
      
      b2internal var §1!6§:Number;
      
      b2internal var § ! §:Number;
      
      b2internal var §=!Y§:Number;
      
      private var § 5§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§7W§ = new b2Vec2();
         this.§;"§ = new b2Vec2();
         super();
         this.§5!9§ = 0;
         if(param1.§5&§)
         {
            this.§5!9§ |= b2internal::2L;
         }
         if(param1.§4e§)
         {
            this.§5!9§ |= b2internal::`A;
         }
         if(param1.§ V§)
         {
            this.§5!9§ |= b2internal::0t;
         }
         if(param1.§`!D§)
         {
            this.§5!9§ |= b2internal::4<;
         }
         if(param1.§'!M§)
         {
            this.§5!9§ |= b2internal::[%;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§4S§();
         this.m_sweep.§7!G§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§!!T§ = null;
         this.§;!-§ = null;
         this.§%u§ = null;
         this.§+K§ = 0;
         this.§6+§ = null;
         this.§6!#§ = null;
         this.§7W§.SetV(param1.§+9§);
         this.m_angularVelocity = param1.§']§;
         this.§1!6§ = param1.§@t§;
         this.§ ! § = param1.§`L§;
         this.§;"§.Set(0,0);
         this.§;!9§ = 0;
         this.§=!Y§ = 0;
         this.§@!_§ = param1.type;
         if(this.§@!_§ == b2_dynamicBody)
         {
            this.§^"§ = 1;
            this.§?t§ = 1;
         }
         else
         {
            this.§^"§ = 0;
            this.§?t§ = 0;
         }
         this.§#!3§ = 0;
         this.§<!V§ = 0;
         this.§2P§ = param1.§0l§;
         this.§ 5§ = param1.§0?§;
         this.§0#§ = null;
         this.§`!Z§ = 0;
      }
      
      private function § !&§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§>!Y§().y,param2.§>!Y§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§;C§(_loc5_,param2.§>!Y§());
         _loc6_ = b2Math.§4!'§(_loc6_,param2.§"!B§());
         _loc6_ = b2Math.§;C§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§ i§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§ i§(param1.§>!Y§(),param2.§>!Y§())).Normalize();
         var _loc8_:* = b2Math.§9h§(param1.§>!Y§(),param2.§"!B§()) > 0;
         param1.§^!#§(param2,_loc6_,_loc7_,_loc8_);
         param2.§!4§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §%!=§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§"!P§ = null;
         if(this.m_world.§0!M§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§=S§(this,this.m_xf,param1);
         if(this.§5!9§ & b2internal::[%)
         {
            _loc3_ = this.m_world.§&!O§.§1k§;
            _loc2_.§0!3§(_loc3_,this.m_xf);
         }
         _loc2_.§6!#§ = this.§0#§;
         this.§0#§ = _loc2_;
         ++this.§`!Z§;
         _loc2_.m_body = this;
         if(_loc2_.§`!=§ > 0)
         {
            this.§#§();
         }
         this.m_world.§5!9§ |= b2World.§3W§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§%!=§(_loc3_);
      }
      
      public function §;w§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§"!P§ = null;
         if(this.m_world.§0!M§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§0#§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§6!#§ = param1.§6!#§;
               }
               else
               {
                  this.§0#§ = param1.§6!#§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§6!#§;
         }
         var _loc5_:b2ContactEdge = this.§%u§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§ C§;
            _loc5_ = _loc5_.§@!I§;
            _loc7_ = _loc6_.§-!V§();
            _loc8_ = _loc6_.§0&§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§&!O§.§true§(_loc6_);
            }
         }
         if(this.§5!9§ & b2internal::[%)
         {
            _loc9_ = this.m_world.§&!O§.§1k§;
            param1.§3N§(_loc9_);
         }
         param1.§true§();
         param1.m_body = null;
         param1.§6!#§ = null;
         --this.§`!Z§;
         this.§#§();
      }
      
      public function §@`§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§0!M§() == true)
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
         var _loc6_:§"!P§ = this.m_world.§&!O§.§1k§;
         _loc3_ = this.§0#§;
         while(_loc3_)
         {
            _loc3_.§4`§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§6!#§;
         }
         this.m_world.§&!O§.§@!!§();
      }
      
      public function §?[§(param1:b2Transform) : void
      {
         this.§@`§(param1.position,param1.GetAngle());
      }
      
      public function §4>§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §^§(param1:b2Vec2) : void
      {
         this.§@`§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function § !8§(param1:Number) : void
      {
         this.§@`§(this.GetPosition(),param1);
      }
      
      public function §8Y§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §0'§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§@!_§ == b2_staticBody)
         {
            return;
         }
         this.§7W§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§7W§;
      }
      
      public function §=!H§(param1:Number) : void
      {
         if(this.§@!_§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §#=§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §#w§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§9o§();
         _loc1_.§ V§ = (this.§5!9§ & b2internal::0t) == b2internal::0t;
         _loc1_.angle = this.GetAngle();
         _loc1_.§`L§ = this.§ ! §;
         _loc1_.§']§ = this.m_angularVelocity;
         _loc1_.§4e§ = (this.§5!9§ & b2internal::`A) == b2internal::`A;
         _loc1_.§5&§ = (this.§5!9§ & b2internal::2L) == b2internal::2L;
         _loc1_.§`!D§ = (this.§5!9§ & b2internal::4<) == b2internal::4<;
         _loc1_.§@t§ = this.§1!6§;
         _loc1_.§+9§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§0?§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §'Y§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§@!_§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§;"§.x += param1.x;
         this.§;"§.y += param1.y;
         this.§;!9§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §@!@§(param1:Number) : void
      {
         if(this.§@!_§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§;!9§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§@!_§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§7W§.x += this.§?t§ * param1.x;
         this.§7W§.y += this.§?t§ * param1.y;
         this.m_angularVelocity += this.§<!V§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §;O§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§#=§();
         var _loc4_:b2Vec2 = this.§8Y§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§;f§(this.§#w§());
         var _loc8_:b2Fixture = _loc5_.§0#§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§6!#§;
               if(_loc7_)
               {
                  _loc7_.§6!#§ = _loc13_;
               }
               else
               {
                  _loc5_.§0#§ = _loc13_;
               }
               --_loc5_.§`!Z§;
               _loc8_.§6!#§ = _loc6_.§0#§;
               _loc6_.§0#§ = _loc8_;
               ++_loc6_.§`!Z§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§6!#§;
            }
         }
         _loc5_.§#§();
         _loc6_.§#§();
         var _loc9_:b2Vec2 = _loc5_.§8Y§();
         var _loc10_:b2Vec2 = _loc6_.§8Y§();
         var _loc11_:b2Vec2 = b2Math.§ i§(_loc2_,b2Math.§+u§(_loc3_,b2Math.§4!'§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§ i§(_loc2_,b2Math.§+u§(_loc3_,b2Math.§4!'§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§=!H§(_loc3_);
         _loc6_.§=!H§(_loc3_);
         _loc5_.§5!5§();
         _loc6_.§5!5§();
         return _loc6_;
      }
      
      public function §5o§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§0#§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§6!#§;
            --param1.§`!Z§;
            _loc2_.§6!#§ = this.§0#§;
            this.§0#§ = _loc2_;
            ++this.§`!Z§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§`!Z§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§8Y§();
         var _loc6_:b2Vec2 = _loc4_.§8Y§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§#=§();
         var _loc10_:Number = _loc4_.§#=§();
         _loc3_.§#§();
         this.§5!5§();
      }
      
      public function GetMass() : Number
      {
         return this.§^"§;
      }
      
      public function §#E§() : Number
      {
         return this.§#!3§;
      }
      
      public function §7,§(param1:b2MassData) : void
      {
         param1.§=D§ = this.§^"§;
         param1.§]!3§ = this.§#!3§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §9!R§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§0!M§() == false);
         if(this.m_world.§0!M§() == true)
         {
            return;
         }
         if(this.§@!_§ != b2_dynamicBody)
         {
            return;
         }
         this.§?t§ = 0;
         this.§#!3§ = 0;
         this.§<!V§ = 0;
         this.§^"§ = param1.§=D§;
         if(this.§^"§ <= 0)
         {
            this.§^"§ = 1;
         }
         this.§?t§ = 1 / this.§^"§;
         if(param1.§]!3§ > 0 && (this.§5!9§ & b2internal::`A) == 0)
         {
            this.§#!3§ = param1.§]!3§ - this.§^"§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§<!V§ = 1 / this.§#!3§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§'?§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§7W§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§7W§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §#§() : void
      {
         var _loc4_:b2MassData = null;
         this.§^"§ = 0;
         this.§?t§ = 0;
         this.§#!3§ = 0;
         this.§<!V§ = 0;
         this.m_sweep.localCenter.§4S§();
         if(this.§@!_§ == b2_staticBody || this.§@!_§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§6d§(0,0);
         var _loc2_:b2Fixture = this.§0#§;
         while(_loc2_)
         {
            if(_loc2_.§`!=§ != 0)
            {
               _loc4_ = _loc2_.§7,§();
               this.§^"§ += _loc4_.§=D§;
               _loc1_.x += _loc4_.center.x * _loc4_.§=D§;
               _loc1_.y += _loc4_.center.y * _loc4_.§=D§;
               this.§#!3§ += _loc4_.§]!3§;
            }
            _loc2_ = _loc2_.§6!#§;
         }
         if(this.§^"§ > 0)
         {
            this.§?t§ = 1 / this.§^"§;
            _loc1_.x *= this.§?t§;
            _loc1_.y *= this.§?t§;
         }
         else
         {
            this.§^"§ = 1;
            this.§?t§ = 1;
         }
         if(this.§#!3§ > 0 && (this.§5!9§ & b2internal::`A) == 0)
         {
            this.§#!3§ -= this.§^"§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§#!3§ *= this.§2P§;
            b2Settings.b2Assert(this.§#!3§ > 0);
            this.§<!V§ = 1 / this.§#!3§;
         }
         else
         {
            this.§#!3§ = 0;
            this.§<!V§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§'?§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§7W§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§7W§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §+V§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§5!§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§#!E§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§9O§(this.m_xf.R,param1);
      }
      
      public function §;!2§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§7W§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§7W§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §;!>§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§7W§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§7W§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §%M§() : Number
      {
         return this.§1!6§;
      }
      
      public function §9Y§(param1:Number) : void
      {
         this.§1!6§ = param1;
      }
      
      public function §#!$§() : Number
      {
         return this.§ ! §;
      }
      
      public function §'c§(param1:Number) : void
      {
         this.§ ! § = param1;
      }
      
      public function §[!K§(param1:uint) : void
      {
         if(this.§@!_§ == param1)
         {
            return;
         }
         this.§@!_§ = param1;
         this.§#§();
         if(this.§@!_§ == b2_staticBody)
         {
            this.§7W§.§4S§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§;"§.§4S§();
         this.§;!9§ = 0;
         var _loc2_:b2ContactEdge = this.§%u§;
         while(_loc2_)
         {
            _loc2_.§ C§.§4y§();
            _loc2_ = _loc2_.§@!I§;
         }
      }
      
      public function §9o§() : uint
      {
         return this.§@!_§;
      }
      
      public function §?y§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5!9§ |= b2internal::2L;
         }
         else
         {
            this.§5!9§ &= ~b2internal::2L;
         }
      }
      
      public function §@#§() : Boolean
      {
         return (this.§5!9§ & b2internal::2L) == b2internal::2L;
      }
      
      public function §&M§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5!9§ |= b2internal::0t;
         }
         else
         {
            this.§5!9§ &= ~b2internal::0t;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5!9§ |= b2internal::4<;
            this.§=!Y§ = 0;
         }
         else
         {
            this.§5!9§ &= ~b2internal::4<;
            this.§=!Y§ = 0;
            this.§7W§.§4S§();
            this.m_angularVelocity = 0;
            this.§;"§.§4S§();
            this.§;!9§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§5!9§ & b2internal::4<) == b2internal::4<;
      }
      
      public function §%L§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5!9§ |= b2internal::`A;
         }
         else
         {
            this.§5!9§ &= ~b2internal::`A;
         }
         this.§#§();
      }
      
      public function §'K§() : Boolean
      {
         return (this.§5!9§ & b2internal::`A) == b2internal::`A;
      }
      
      public function §-!H§(param1:Boolean) : void
      {
         var _loc2_:§"!P§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§3!§())
         {
            return;
         }
         if(param1)
         {
            this.§5!9§ |= b2internal::[%;
            _loc2_ = this.m_world.§&!O§.§1k§;
            _loc3_ = this.§0#§;
            while(_loc3_)
            {
               _loc3_.§0!3§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§6!#§;
            }
         }
         else
         {
            this.§5!9§ &= ~b2internal::[%;
            _loc2_ = this.m_world.§&!O§.§1k§;
            _loc3_ = this.§0#§;
            while(_loc3_)
            {
               _loc3_.§3N§(_loc2_);
               _loc3_ = _loc3_.§6!#§;
            }
            _loc4_ = this.§%u§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§@!I§;
               this.m_world.§&!O§.§true§(_loc5_.§ C§);
            }
            this.§%u§ = null;
         }
      }
      
      public function §3!§() : Boolean
      {
         return (this.§5!9§ & b2internal::[%) == b2internal::[%;
      }
      
      public function §9s§() : Boolean
      {
         return (this.§5!9§ & b2internal::0t) == b2internal::0t;
      }
      
      public function §for §() : b2Fixture
      {
         return this.§0#§;
      }
      
      public function §2!Y§() : b2JointEdge
      {
         return this.§!!T§;
      }
      
      public function §#U§() : b2ControllerEdge
      {
         return this.§;!-§;
      }
      
      public function §""§() : b2ContactEdge
      {
         return this.§%u§;
      }
      
      public function §3q§() : b2Body
      {
         return this.§6!#§;
      }
      
      public function GetUserData() : *
      {
         return this.§ 5§;
      }
      
      public function §+W§(param1:*) : void
      {
         this.§ 5§ = param1;
      }
      
      public function §8!`§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §5!5§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §1!+§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§"!P§ = this.m_world.§&!O§.§1k§;
         _loc4_ = this.§0#§;
         while(_loc4_)
         {
            _loc4_.§4`§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§6!#§;
         }
      }
      
      b2internal function §9!8§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §67§(param1:b2Body) : Boolean
      {
         if(this.§@!_§ != b2_dynamicBody && param1.§@!_§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§!!T§;
         while(_loc2_)
         {
            if(_loc2_.§%-§ == param1)
            {
               if(_loc2_.§8p§.§'!_§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§@!I§;
         }
         return true;
      }
      
      b2internal function §#!<§(param1:Number) : void
      {
         this.m_sweep.§#!<§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§9!8§();
      }
   }
}

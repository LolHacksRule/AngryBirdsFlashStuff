package §;'§
{
   import § !%§.b2Settings;
   import § !%§.b2internal;
   import §+W§.b2Contact;
   import §+W§.b2ContactEdge;
   import §,!k§.b2Mat22;
   import §,!k§.b2Math;
   import §,!k§.b2Sweep;
   import §,!k§.b2Transform;
   import §,!k§.b2Vec2;
   import §1!]§.b2ControllerEdge;
   import §6f§.§?"§;
   import §>H§.b2JointEdge;
   import §?m§.b2EdgeShape;
   import §?m§.b2MassData;
   import §?m§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §!!q§:b2Transform = new b2Transform();
      
      b2internal static var §2p§:uint = 1;
      
      b2internal static var §`"4§:uint = 2;
      
      b2internal static var §^!n§:uint = 4;
      
      b2internal static var §`!M§:uint = 8;
      
      b2internal static var §4j§:uint = 16;
      
      b2internal static var §,!@§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §"!4§:uint;
      
      b2internal var §=!;§:int;
      
      b2internal var §]"3§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §1N§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §,0§:b2Vec2;
      
      b2internal var §@X§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §!!h§:b2Body;
      
      b2internal var §1F§:b2Body;
      
      b2internal var §%+§:b2Fixture;
      
      b2internal var §60§:int;
      
      b2internal var §5!V§:b2ControllerEdge;
      
      b2internal var §>z§:int;
      
      b2internal var §0!6§:b2JointEdge;
      
      b2internal var §5!i§:b2ContactEdge;
      
      b2internal var §]B§:Number;
      
      b2internal var §1!#§:Number;
      
      b2internal var §5!q§:Number;
      
      b2internal var §+%§:Number;
      
      b2internal var § !m§:Number;
      
      b2internal var §;!D§:Number;
      
      b2internal var §?i§:Number;
      
      b2internal var §%Z§:Number;
      
      private var §"!+§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§1N§ = new b2Vec2();
         this.§,0§ = new b2Vec2();
         super();
         this.§"!4§ = 0;
         if(param1.§[K§)
         {
            this.§"!4§ |= b2internal::`!M;
         }
         if(param1.§&!W§)
         {
            this.§"!4§ |= b2internal::4j;
         }
         if(param1.§,!X§)
         {
            this.§"!4§ |= b2internal::^!n;
         }
         if(param1.§1w§)
         {
            this.§"!4§ |= b2internal::`"4;
         }
         if(param1.active)
         {
            this.§"!4§ |= b2internal::,!@;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§2!n§();
         this.m_sweep.§+!=§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§0!6§ = null;
         this.§5!V§ = null;
         this.§5!i§ = null;
         this.§>z§ = 0;
         this.§!!h§ = null;
         this.§1F§ = null;
         this.§1N§.SetV(param1.§ 7§);
         this.m_angularVelocity = param1.§?>§;
         this.§;!D§ = param1.§?!3§;
         this.§?i§ = param1.§5!R§;
         this.§,0§.Set(0,0);
         this.§@X§ = 0;
         this.§%Z§ = 0;
         this.§=!;§ = param1.type;
         if(this.§=!;§ == b2_dynamicBody)
         {
            this.§]B§ = 1;
            this.§1!#§ = 1;
         }
         else
         {
            this.§]B§ = 0;
            this.§1!#§ = 0;
         }
         this.§5!q§ = 0;
         this.§+%§ = 0;
         this.§ !m§ = param1.§4G§;
         this.§"!+§ = param1.userData;
         this.§%+§ = null;
         this.§60§ = 0;
      }
      
      private function §!!Z§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§7L§().y,param2.§7L§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§>!i§(_loc5_,param2.§7L§());
         _loc6_ = b2Math.§5!y§(_loc6_,param2.§?!X§());
         _loc6_ = b2Math.§>!i§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§'"%§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§'"%§(param1.§7L§(),param2.§7L§())).Normalize();
         var _loc8_:* = b2Math.§>!m§(param1.§7L§(),param2.§?!X§()) > 0;
         param1.§'G§(param2,_loc6_,_loc7_,_loc8_);
         param2.§'!w§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§?"§ = null;
         if(this.m_world.§5"!§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§-",§(this,this.m_xf,param1);
         if(this.§"!4§ & b2internal::,!@)
         {
            _loc3_ = this.m_world.§`!t§.§35§;
            _loc2_.§?!R§(_loc3_,this.m_xf);
         }
         _loc2_.§1F§ = this.§%+§;
         this.§%+§ = _loc2_;
         ++this.§60§;
         _loc2_.m_body = this;
         if(_loc2_.§#N§ > 0)
         {
            this.§`R§();
         }
         this.m_world.§"!4§ |= b2World.§>!-§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §=2§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§?"§ = null;
         if(this.m_world.§5"!§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§%+§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§1F§ = param1.§1F§;
               }
               else
               {
                  this.§%+§ = param1.§1F§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§1F§;
         }
         var _loc5_:b2ContactEdge = this.§5!i§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§5T§;
            _loc5_ = _loc5_.next;
            _loc7_ = _loc6_.§6_§();
            _loc8_ = _loc6_.§9!R§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§`!t§.§'!h§(_loc6_);
            }
         }
         if(this.§"!4§ & b2internal::,!@)
         {
            _loc9_ = this.m_world.§`!t§.§35§;
            param1.§;!b§(_loc9_);
         }
         param1.§'!h§();
         param1.m_body = null;
         param1.§1F§ = null;
         --this.§60§;
         this.§`R§();
      }
      
      public function §%!C§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§5"!§() == true)
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
         var _loc6_:§?"§ = this.m_world.§`!t§.§35§;
         _loc3_ = this.§%+§;
         while(_loc3_)
         {
            _loc3_.§#n§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§1F§;
         }
         this.m_world.§`!t§.§@!g§();
      }
      
      public function §]!>§(param1:b2Transform) : void
      {
         this.§%!C§(param1.position,param1.GetAngle());
      }
      
      public function §6!>§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         this.§%!C§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§%!C§(this.GetPosition(),param1);
      }
      
      public function §<!u§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §`!a§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§=!;§ == b2_staticBody)
         {
            return;
         }
         this.§1N§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§1N§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§=!;§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §4!j§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§]"$§();
         _loc1_.§,!X§ = (this.§"!4§ & b2internal::^!n) == b2internal::^!n;
         _loc1_.angle = this.GetAngle();
         _loc1_.§5!R§ = this.§?i§;
         _loc1_.§?>§ = this.m_angularVelocity;
         _loc1_.§&!W§ = (this.§"!4§ & b2internal::4j) == b2internal::4j;
         _loc1_.§[K§ = (this.§"!4§ & b2internal::`!M) == b2internal::`!M;
         _loc1_.§1w§ = (this.§"!4§ & b2internal::`"4) == b2internal::`"4;
         _loc1_.§?!3§ = this.§;!D§;
         _loc1_.§ 7§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.userData = this.GetUserData();
         return _loc1_;
      }
      
      public function §"I§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§=!;§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§,0§.x += param1.x;
         this.§,0§.y += param1.y;
         this.§@X§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §96§(param1:Number) : void
      {
         if(this.§=!;§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§@X§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§=!;§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§1N§.x += this.§1!#§ * param1.x;
         this.§1N§.y += this.§1!#§ * param1.y;
         this.m_angularVelocity += this.§+%§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §8!d§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§<!u§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§4!j§());
         var _loc8_:b2Fixture = _loc5_.§%+§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§1F§;
               if(_loc7_)
               {
                  _loc7_.§1F§ = _loc13_;
               }
               else
               {
                  _loc5_.§%+§ = _loc13_;
               }
               --_loc5_.§60§;
               _loc8_.§1F§ = _loc6_.§%+§;
               _loc6_.§%+§ = _loc8_;
               ++_loc6_.§60§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§1F§;
            }
         }
         _loc5_.§`R§();
         _loc6_.§`R§();
         var _loc9_:b2Vec2 = _loc5_.§<!u§();
         var _loc10_:b2Vec2 = _loc6_.§<!u§();
         var _loc11_:b2Vec2 = b2Math.§'"%§(_loc2_,b2Math.§ K§(_loc3_,b2Math.§5!y§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§'"%§(_loc2_,b2Math.§ K§(_loc3_,b2Math.§5!y§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§[!j§();
         _loc6_.§[!j§();
         return _loc6_;
      }
      
      public function §!!^§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§%+§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§1F§;
            --param1.§60§;
            _loc2_.§1F§ = this.§%+§;
            this.§%+§ = _loc2_;
            ++this.§60§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§60§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§<!u§();
         var _loc6_:b2Vec2 = _loc4_.§<!u§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§`R§();
         this.§[!j§();
      }
      
      public function GetMass() : Number
      {
         return this.§]B§;
      }
      
      public function §!!H§() : Number
      {
         return this.§5!q§;
      }
      
      public function §<<§(param1:b2MassData) : void
      {
         param1.§?<§ = this.§]B§;
         param1.I = this.§5!q§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §5k§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§5"!§() == false);
         if(this.m_world.§5"!§() == true)
         {
            return;
         }
         if(this.§=!;§ != b2_dynamicBody)
         {
            return;
         }
         this.§1!#§ = 0;
         this.§5!q§ = 0;
         this.§+%§ = 0;
         this.§]B§ = param1.§?<§;
         if(this.§]B§ <= 0)
         {
            this.§]B§ = 1;
         }
         this.§1!#§ = 1 / this.§]B§;
         if(param1.I > 0 && (this.§"!4§ & b2internal::4j) == 0)
         {
            this.§5!q§ = param1.I - this.§]B§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§+%§ = 1 / this.§5!q§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§0Y§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§1N§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§1N§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §`R§() : void
      {
         var _loc4_:b2MassData = null;
         this.§]B§ = 0;
         this.§1!#§ = 0;
         this.§5!q§ = 0;
         this.§+%§ = 0;
         this.m_sweep.localCenter.§2!n§();
         if(this.§=!;§ == b2_staticBody || this.§=!;§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§;x§(0,0);
         var _loc2_:b2Fixture = this.§%+§;
         while(_loc2_)
         {
            if(_loc2_.§#N§ != 0)
            {
               _loc4_ = _loc2_.§<<§();
               this.§]B§ += _loc4_.§?<§;
               _loc1_.x += _loc4_.center.x * _loc4_.§?<§;
               _loc1_.y += _loc4_.center.y * _loc4_.§?<§;
               this.§5!q§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§1F§;
         }
         if(this.§]B§ > 0)
         {
            this.§1!#§ = 1 / this.§]B§;
            _loc1_.x *= this.§1!#§;
            _loc1_.y *= this.§1!#§;
         }
         else
         {
            this.§]B§ = 1;
            this.§1!#§ = 1;
         }
         if(this.§5!q§ > 0 && (this.§"!4§ & b2internal::4j) == 0)
         {
            this.§5!q§ -= this.§]B§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§5!q§ *= this.§ !m§;
            b2Settings.b2Assert(this.§5!q§ > 0);
            this.§+%§ = 1 / this.§5!q§;
         }
         else
         {
            this.§5!q§ = 0;
            this.§+%§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§0Y§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§1N§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§1N§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §0!y§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§]!3§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§#R§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§5!8§(this.m_xf.R,param1);
      }
      
      public function §'! §(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§1N§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§1N§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §[6§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§1N§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§1N§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §&! §() : Number
      {
         return this.§;!D§;
      }
      
      public function §[!e§(param1:Number) : void
      {
         this.§;!D§ = param1;
      }
      
      public function §20§() : Number
      {
         return this.§?i§;
      }
      
      public function §'!V§(param1:Number) : void
      {
         this.§?i§ = param1;
      }
      
      public function §&!#§(param1:uint) : void
      {
         if(this.§=!;§ == param1)
         {
            return;
         }
         this.§=!;§ = param1;
         this.§`R§();
         if(this.§=!;§ == b2_staticBody)
         {
            this.§1N§.§2!n§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§,0§.§2!n§();
         this.§@X§ = 0;
         var _loc2_:b2ContactEdge = this.§5!i§;
         while(_loc2_)
         {
            _loc2_.§5T§.§#!2§();
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §]"$§() : uint
      {
         return this.§=!;§;
      }
      
      public function §1!$§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"!4§ |= b2internal::`!M;
         }
         else
         {
            this.§"!4§ &= ~b2internal::`!M;
         }
      }
      
      public function §#!f§() : Boolean
      {
         return (this.§"!4§ & b2internal::`!M) == b2internal::`!M;
      }
      
      public function §5n§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"!4§ |= b2internal::^!n;
         }
         else
         {
            this.§"!4§ &= ~b2internal::^!n;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"!4§ |= b2internal::`"4;
            this.§%Z§ = 0;
         }
         else
         {
            this.§"!4§ &= ~b2internal::`"4;
            this.§%Z§ = 0;
            this.§1N§.§2!n§();
            this.m_angularVelocity = 0;
            this.§,0§.§2!n§();
            this.§@X§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§"!4§ & b2internal::`"4) == b2internal::`"4;
      }
      
      public function §4!y§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"!4§ |= b2internal::4j;
         }
         else
         {
            this.§"!4§ &= ~b2internal::4j;
         }
         this.§`R§();
      }
      
      public function §]!6§() : Boolean
      {
         return (this.§"!4§ & b2internal::4j) == b2internal::4j;
      }
      
      public function §1!%§(param1:Boolean) : void
      {
         var _loc2_:§?"§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§^!K§())
         {
            return;
         }
         if(param1)
         {
            this.§"!4§ |= b2internal::,!@;
            _loc2_ = this.m_world.§`!t§.§35§;
            _loc3_ = this.§%+§;
            while(_loc3_)
            {
               _loc3_.§?!R§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§1F§;
            }
         }
         else
         {
            this.§"!4§ &= ~b2internal::,!@;
            _loc2_ = this.m_world.§`!t§.§35§;
            _loc3_ = this.§%+§;
            while(_loc3_)
            {
               _loc3_.§;!b§(_loc2_);
               _loc3_ = _loc3_.§1F§;
            }
            _loc4_ = this.§5!i§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.next;
               this.m_world.§`!t§.§'!h§(_loc5_.§5T§);
            }
            this.§5!i§ = null;
         }
      }
      
      public function §^!K§() : Boolean
      {
         return (this.§"!4§ & b2internal::,!@) == b2internal::,!@;
      }
      
      public function § !`§() : Boolean
      {
         return (this.§"!4§ & b2internal::^!n) == b2internal::^!n;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§%+§;
      }
      
      public function §0!]§() : b2JointEdge
      {
         return this.§0!6§;
      }
      
      public function §7! §() : b2ControllerEdge
      {
         return this.§5!V§;
      }
      
      public function §,!'§() : b2ContactEdge
      {
         return this.§5!i§;
      }
      
      public function §6P§() : b2Body
      {
         return this.§1F§;
      }
      
      public function GetUserData() : *
      {
         return this.§"!+§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§"!+§ = param1;
      }
      
      public function §,"+§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §[!j§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §!!q§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§?"§ = this.m_world.§`!t§.§35§;
         _loc4_ = this.§%+§;
         while(_loc4_)
         {
            _loc4_.§#n§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§1F§;
         }
      }
      
      b2internal function §@!5§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §]!_§(param1:b2Body) : Boolean
      {
         if(this.§=!;§ != b2_dynamicBody && param1.§=!;§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§0!6§;
         while(_loc2_)
         {
            if(_loc2_.§^!,§ == param1)
            {
               if(_loc2_.§&!$§.§@i§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.next;
         }
         return true;
      }
      
      b2internal function §-!g§(param1:Number) : void
      {
         this.m_sweep.§-!g§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§@!5§();
      }
   }
}

package §1x§
{
   import §%!#§.§,"Q§;
   import §+!,§.b2Contact;
   import §+!,§.b2ContactEdge;
   import §0!i§.b2ControllerEdge;
   import §2",§.b2JointEdge;
   import §9!s§.b2Settings;
   import §9!s§.b2internal;
   import §[!L§.b2EdgeShape;
   import §[!L§.b2MassData;
   import §[!L§.b2Shape;
   import §^>§.b2Mat22;
   import §^>§.b2Math;
   import §^>§.b2Sweep;
   import §^>§.b2Transform;
   import §^>§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §,0§:b2Transform = new b2Transform();
      
      b2internal static var §"!M§:uint = 1;
      
      b2internal static var §`&§:uint = 2;
      
      b2internal static var §8w§:uint = 4;
      
      b2internal static var §=!0§:uint = 8;
      
      b2internal static var §!4§:uint = 16;
      
      b2internal static var §;"X§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §7K§:uint;
      
      b2internal var §?I§:int;
      
      b2internal var §8A§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §5!r§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §=w§:b2Vec2;
      
      b2internal var §=!!§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §<@§:b2Body;
      
      b2internal var § z§:b2Body;
      
      b2internal var §]"$§:b2Fixture;
      
      b2internal var §0"s§:int;
      
      b2internal var §!o§:b2ControllerEdge;
      
      b2internal var §0#-§:int;
      
      b2internal var §8!@§:b2JointEdge;
      
      b2internal var §]"X§:b2ContactEdge;
      
      b2internal var §'J§:Number;
      
      b2internal var §@"P§:Number;
      
      b2internal var §4!T§:Number;
      
      b2internal var §%#2§:Number;
      
      b2internal var §2!L§:Number;
      
      b2internal var §[!q§:Number;
      
      b2internal var §8"@§:Number;
      
      b2internal var §`"<§:Number;
      
      b2internal var §[]§:Number;
      
      private var §<A§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§5!r§ = new b2Vec2();
         this.§=w§ = new b2Vec2();
         super();
         this.§7K§ = 0;
         if(param1.§9"a§)
         {
            this.§7K§ |= b2internal::=!0;
         }
         if(param1.§'!P§)
         {
            this.§7K§ |= b2internal::!4;
         }
         if(param1.§0%§)
         {
            this.§7K§ |= b2internal::8w;
         }
         if(param1.§2"%§)
         {
            this.§7K§ |= b2internal::`&;
         }
         if(param1.active)
         {
            this.§7K§ |= b2internal::;"X;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§@e§();
         this.m_sweep.§;#1§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§8!@§ = null;
         this.§!o§ = null;
         this.§]"X§ = null;
         this.§0#-§ = 0;
         this.§<@§ = null;
         this.§ z§ = null;
         this.§5!r§.SetV(param1.§null§);
         this.m_angularVelocity = param1.§-"t§;
         this.§[!q§ = param1.§9"g§;
         this.§8"@§ = param1.§]"H§;
         this.§[]§ = param1.§'!v§;
         this.§=w§.Set(0,0);
         this.§=!!§ = 0;
         this.§`"<§ = 0;
         this.§?I§ = param1.type;
         if(this.§?I§ == b2_dynamicBody)
         {
            this.§'J§ = 1;
            this.§@"P§ = 1;
         }
         else
         {
            this.§'J§ = 0;
            this.§@"P§ = 0;
         }
         this.§4!T§ = 0;
         this.§%#2§ = 0;
         this.§2!L§ = param1.§8"c§;
         this.§<A§ = param1.§>g§;
         this.§]"$§ = null;
         this.§0"s§ = 0;
      }
      
      private function §5"R§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§`"k§().y,param2.§`"k§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§7z§(_loc5_,param2.§`"k§());
         _loc6_ = b2Math.§]Y§(_loc6_,param2.§@"c§());
         _loc6_ = b2Math.§7z§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§6"f§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§6"f§(param1.§`"k§(),param2.§`"k§())).Normalize();
         var _loc8_:* = b2Math.§2$§(param1.§`"k§(),param2.§@"c§()) > 0;
         param1.§0!N§(param2,_loc6_,_loc7_,_loc8_);
         param2.§2G§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§,"Q§ = null;
         if(this.m_world.§4";§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§0"]§(this,this.m_xf,param1);
         if(this.§7K§ & b2internal::;"X)
         {
            _loc3_ = this.m_world.§+1§.§-!m§;
            _loc2_.§1"V§(_loc3_,this.m_xf);
         }
         _loc2_.§ z§ = this.§]"$§;
         this.§]"$§ = _loc2_;
         ++this.§0"s§;
         _loc2_.m_body = this;
         if(_loc2_.§3"3§ > 0)
         {
            this.ResetMassData();
         }
         this.m_world.§7K§ |= b2World.§;"L§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §?"-§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§,"Q§ = null;
         if(this.m_world.§4";§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§]"$§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§ z§ = param1.§ z§;
               }
               else
               {
                  this.§]"$§ = param1.§ z§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§ z§;
         }
         var _loc5_:b2ContactEdge = this.§]"X§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§&#%§;
            _loc5_ = _loc5_.§#!0§;
            _loc7_ = _loc6_.§%$§();
            _loc8_ = _loc6_.§&#0§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§+1§.§%c§(_loc6_);
            }
         }
         if(this.§7K§ & b2internal::;"X)
         {
            _loc9_ = this.m_world.§+1§.§-!m§;
            param1.§,S§(_loc9_);
         }
         param1.§%c§();
         param1.m_body = null;
         param1.§ z§ = null;
         --this.§0"s§;
         this.ResetMassData();
      }
      
      public function SetPositionAndAngle(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§4";§() == true)
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
         var _loc6_:§,"Q§ = this.m_world.§+1§.§-!m§;
         _loc3_ = this.§]"$§;
         while(_loc3_)
         {
            _loc3_.§8!W§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§ z§;
         }
         this.m_world.§+1§.§9@§();
      }
      
      public function §1#&§(param1:b2Transform) : void
      {
         this.SetPositionAndAngle(param1.position,param1.GetAngle());
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
         this.SetPositionAndAngle(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.SetPositionAndAngle(this.GetPosition(),param1);
      }
      
      public function §!"P§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §4"z§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§?I§ == b2_staticBody)
         {
            return;
         }
         this.§5!r§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§5!r§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§?I§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §]"n§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§ "N§();
         _loc1_.§0%§ = (this.§7K§ & b2internal::8w) == b2internal::8w;
         _loc1_.angle = this.GetAngle();
         _loc1_.§]"H§ = this.§8"@§;
         _loc1_.§-"t§ = this.m_angularVelocity;
         _loc1_.§'!P§ = (this.§7K§ & b2internal::!4) == b2internal::!4;
         _loc1_.§9"a§ = (this.§7K§ & b2internal::=!0) == b2internal::=!0;
         _loc1_.§2"%§ = (this.§7K§ & b2internal::`&) == b2internal::`&;
         _loc1_.§9"g§ = this.§[!q§;
         _loc1_.§null§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§>g§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §>!i§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§?I§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§=w§.x += param1.x;
         this.§=w§.y += param1.y;
         this.§=!!§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §'!N§(param1:Number) : void
      {
         if(this.§?I§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§=!!§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§?I§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§5!r§.x += this.§@"P§ * param1.x;
         this.§5!r§.y += this.§@"P§ * param1.y;
         this.m_angularVelocity += this.§%#2§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §`!X§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§!"P§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§]"n§());
         var _loc8_:b2Fixture = _loc5_.§]"$§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§ z§;
               if(_loc7_)
               {
                  _loc7_.§ z§ = _loc13_;
               }
               else
               {
                  _loc5_.§]"$§ = _loc13_;
               }
               --_loc5_.§0"s§;
               _loc8_.§ z§ = _loc6_.§]"$§;
               _loc6_.§]"$§ = _loc8_;
               ++_loc6_.§0"s§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§ z§;
            }
         }
         _loc5_.ResetMassData();
         _loc6_.ResetMassData();
         var _loc9_:b2Vec2 = _loc5_.§!"P§();
         var _loc10_:b2Vec2 = _loc6_.§!"P§();
         var _loc11_:b2Vec2 = b2Math.§6"f§(_loc2_,b2Math.§!#3§(_loc3_,b2Math.§]Y§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§6"f§(_loc2_,b2Math.§!#3§(_loc3_,b2Math.§]Y§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§?"s§();
         _loc6_.§?"s§();
         return _loc6_;
      }
      
      public function §5"§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§]"$§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§ z§;
            --param1.§0"s§;
            _loc2_.§ z§ = this.§]"$§;
            this.§]"$§ = _loc2_;
            ++this.§0"s§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§0"s§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§!"P§();
         var _loc6_:b2Vec2 = _loc4_.§!"P§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.ResetMassData();
         this.§?"s§();
      }
      
      public function GetMass() : Number
      {
         return this.§'J§;
      }
      
      public function §]"J§() : Number
      {
         return this.§4!T§;
      }
      
      public function §#"K§(param1:b2MassData) : void
      {
         param1.§=#%§ = this.§'J§;
         param1.§,"q§ = this.§4!T§;
         param1.§1!a§.SetV(this.m_sweep.localCenter);
      }
      
      public function §?!W§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§4";§() == false);
         if(this.m_world.§4";§() == true)
         {
            return;
         }
         if(this.§?I§ != b2_dynamicBody)
         {
            return;
         }
         this.§@"P§ = 0;
         this.§4!T§ = 0;
         this.§%#2§ = 0;
         this.§'J§ = param1.§=#%§;
         if(this.§'J§ <= 0)
         {
            this.§'J§ = 1;
         }
         this.§@"P§ = 1 / this.§'J§;
         if(param1.§,"q§ > 0 && (this.§7K§ & b2internal::!4) == 0)
         {
            this.§4!T§ = param1.§,"q§ - this.§'J§ * (param1.§1!a§.x * param1.§1!a§.x + param1.§1!a§.y * param1.§1!a§.y);
            this.§%#2§ = 1 / this.§4!T§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.§1!a§);
         this.m_sweep.c0.SetV(b2Math.§2!>§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§5!r§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§5!r§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function ResetMassData() : void
      {
         var _loc4_:b2MassData = null;
         this.§'J§ = 0;
         this.§@"P§ = 0;
         this.§4!T§ = 0;
         this.§%#2§ = 0;
         this.m_sweep.localCenter.§@e§();
         if(this.§?I§ == b2_staticBody || this.§?I§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§]n§(0,0);
         var _loc2_:b2Fixture = this.§]"$§;
         while(_loc2_)
         {
            if(_loc2_.§3"3§ != 0)
            {
               _loc4_ = _loc2_.§#"K§();
               this.§'J§ += _loc4_.§=#%§;
               _loc1_.x += _loc4_.§1!a§.x * _loc4_.§=#%§;
               _loc1_.y += _loc4_.§1!a§.y * _loc4_.§=#%§;
               this.§4!T§ += _loc4_.§,"q§;
            }
            _loc2_ = _loc2_.§ z§;
         }
         if(this.§'J§ > 0)
         {
            this.§@"P§ = 1 / this.§'J§;
            _loc1_.x *= this.§@"P§;
            _loc1_.y *= this.§@"P§;
         }
         else
         {
            this.§'J§ = 1;
            this.§@"P§ = 1;
         }
         if(this.§4!T§ > 0 && (this.§7K§ & b2internal::!4) == 0)
         {
            this.§4!T§ -= this.§'J§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§4!T§ *= this.§2!L§;
            b2Settings.b2Assert(this.§4!T§ > 0);
            this.§%#2§ = 1 / this.§4!T§;
         }
         else
         {
            this.§4!T§ = 0;
            this.§%#2§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§2!>§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§5!r§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§5!r§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §1"t§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§&"f§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§3!_§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§?!I§(this.m_xf.R,param1);
      }
      
      public function §6D§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§5!r§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§5!r§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §6!C§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§5!r§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§5!r§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §%"O§() : Number
      {
         return this.§[!q§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§[!q§ = param1;
      }
      
      public function §<!a§() : Number
      {
         return this.§8"@§;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         this.§8"@§ = param1;
      }
      
      public function §?"N§() : Number
      {
         return this.§[]§;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         this.§[]§ = param1;
      }
      
      public function §,!t§(param1:uint) : void
      {
         if(this.§?I§ == param1)
         {
            return;
         }
         this.§?I§ = param1;
         this.ResetMassData();
         if(this.§?I§ == b2_staticBody)
         {
            this.§5!r§.§@e§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§=w§.§@e§();
         this.§=!!§ = 0;
         var _loc2_:b2ContactEdge = this.§]"X§;
         while(_loc2_)
         {
            _loc2_.§&#%§.§'#$§();
            _loc2_ = _loc2_.§#!0§;
         }
      }
      
      public function § "N§() : uint
      {
         return this.§?I§;
      }
      
      public function §?#%§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7K§ |= b2internal::=!0;
         }
         else
         {
            this.§7K§ &= ~b2internal::=!0;
         }
      }
      
      public function §8"-§() : Boolean
      {
         return (this.§7K§ & b2internal::=!0) == b2internal::=!0;
      }
      
      public function §5!,§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7K§ |= b2internal::8w;
         }
         else
         {
            this.§7K§ &= ~b2internal::8w;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7K§ |= b2internal::`&;
            this.§`"<§ = 0;
         }
         else
         {
            this.§7K§ &= ~b2internal::`&;
            this.§`"<§ = 0;
            this.§5!r§.§@e§();
            this.m_angularVelocity = 0;
            this.§=w§.§@e§();
            this.§=!!§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§7K§ & b2internal::`&) == b2internal::`&;
      }
      
      public function §;"t§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7K§ |= b2internal::!4;
         }
         else
         {
            this.§7K§ &= ~b2internal::!4;
         }
         this.ResetMassData();
      }
      
      public function §""&§() : Boolean
      {
         return (this.§7K§ & b2internal::!4) == b2internal::!4;
      }
      
      public function §-!d§(param1:Boolean) : void
      {
         var _loc2_:§,"Q§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§]!P§())
         {
            return;
         }
         if(param1)
         {
            this.§7K§ |= b2internal::;"X;
            _loc2_ = this.m_world.§+1§.§-!m§;
            _loc3_ = this.§]"$§;
            while(_loc3_)
            {
               _loc3_.§1"V§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§ z§;
            }
         }
         else
         {
            this.§7K§ &= ~b2internal::;"X;
            _loc2_ = this.m_world.§+1§.§-!m§;
            _loc3_ = this.§]"$§;
            while(_loc3_)
            {
               _loc3_.§,S§(_loc2_);
               _loc3_ = _loc3_.§ z§;
            }
            _loc4_ = this.§]"X§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§#!0§;
               this.m_world.§+1§.§%c§(_loc5_.§&#%§);
            }
            this.§]"X§ = null;
         }
      }
      
      public function §]!P§() : Boolean
      {
         return (this.§7K§ & b2internal::;"X) == b2internal::;"X;
      }
      
      public function §["^§() : Boolean
      {
         return (this.§7K§ & b2internal::8w) == b2internal::8w;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§]"$§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§8!@§;
      }
      
      public function §8##§() : b2ControllerEdge
      {
         return this.§!o§;
      }
      
      public function §3!D§() : b2ContactEdge
      {
         return this.§]"X§;
      }
      
      public function §=!&§() : b2Body
      {
         return this.§ z§;
      }
      
      public function GetUserData() : *
      {
         return this.§<A§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§<A§ = param1;
      }
      
      public function §#!M§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §?"s§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §,0§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§,"Q§ = this.m_world.§+1§.§-!m§;
         _loc4_ = this.§]"$§;
         while(_loc4_)
         {
            _loc4_.§8!W§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§ z§;
         }
      }
      
      b2internal function §"a§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §8"u§(param1:b2Body) : Boolean
      {
         if(this.§?I§ != b2_dynamicBody && param1.§?I§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§8!@§;
         while(_loc2_)
         {
            if(_loc2_.other == param1)
            {
               if(_loc2_.§^P§.§[!z§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§#!0§;
         }
         return true;
      }
      
      b2internal function §5"x§(param1:Number) : void
      {
         this.m_sweep.§5"x§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§"a§();
      }
   }
}

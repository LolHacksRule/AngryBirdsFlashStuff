package § !k§
{
   import §!"8§.b2Mat22;
   import §!"8§.b2Math;
   import §!"8§.b2Sweep;
   import §!"8§.b2Transform;
   import §!"8§.b2Vec2;
   import §&I§.b2EdgeShape;
   import §&I§.b2MassData;
   import §&I§.b2Shape;
   import §&g§.b2JointEdge;
   import §6!d§.§`O§;
   import §8!q§.b2ControllerEdge;
   import §]!l§.b2Contact;
   import §]!l§.b2ContactEdge;
   import §in§.b2Settings;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §7T§:b2Transform = new b2Transform();
      
      b2internal static var §,!v§:uint = 1;
      
      b2internal static var §@!F§:uint = 2;
      
      b2internal static var §[! §:uint = 4;
      
      b2internal static var §!!N§:uint = 8;
      
      b2internal static var §@!;§:uint = 16;
      
      b2internal static var §-R§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §%$§:uint;
      
      b2internal var §=""§:int;
      
      b2internal var §;]§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §>! §:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §6!N§:b2Vec2;
      
      b2internal var §5d§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §=>§:b2Body;
      
      b2internal var §7"@§:b2Body;
      
      b2internal var §8!0§:b2Fixture;
      
      b2internal var §1e§:int;
      
      b2internal var §+!n§:b2ControllerEdge;
      
      b2internal var §9y§:int;
      
      b2internal var §>!,§:b2JointEdge;
      
      b2internal var §@Q§:b2ContactEdge;
      
      b2internal var §''§:Number;
      
      b2internal var §^1§:Number;
      
      b2internal var §>N§:Number;
      
      b2internal var §?y§:Number;
      
      b2internal var §2Y§:Number;
      
      b2internal var §`!g§:Number;
      
      b2internal var §>!q§:Number;
      
      b2internal var §-!6§:Number;
      
      private var §[?§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§>! § = new b2Vec2();
         this.§6!N§ = new b2Vec2();
         super();
         this.§%$§ = 0;
         if(param1.§@!%§)
         {
            this.§%$§ |= b2internal::!!N;
         }
         if(param1.§6R§)
         {
            this.§%$§ |= b2internal::@!;;
         }
         if(param1.§5!C§)
         {
            this.§%$§ |= b2internal::[! ;
         }
         if(param1.§7x§)
         {
            this.§%$§ |= b2internal::@!F;
         }
         if(param1.§ "$§)
         {
            this.§%$§ |= b2internal::-R;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§]!;§();
         this.m_sweep.§3!s§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§>!,§ = null;
         this.§+!n§ = null;
         this.§@Q§ = null;
         this.§9y§ = 0;
         this.§=>§ = null;
         this.§7"@§ = null;
         this.§>! §.SetV(param1.§0!Z§);
         this.m_angularVelocity = param1.§><§;
         this.§`!g§ = param1.§+!6§;
         this.§>!q§ = param1.§]=§;
         this.§6!N§.Set(0,0);
         this.§5d§ = 0;
         this.§-!6§ = 0;
         this.§=""§ = param1.type;
         if(this.§=""§ == b2_dynamicBody)
         {
            this.§''§ = 1;
            this.§^1§ = 1;
         }
         else
         {
            this.§''§ = 0;
            this.§^1§ = 0;
         }
         this.§>N§ = 0;
         this.§?y§ = 0;
         this.§2Y§ = param1.§`"7§;
         this.§[?§ = param1.§#"@§;
         this.§8!0§ = null;
         this.§1e§ = 0;
      }
      
      private function §<!H§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§8!@§().y,param2.§8!@§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§2"0§(_loc5_,param2.§8!@§());
         _loc6_ = b2Math.§@!W§(_loc6_,param2.§ 1§());
         _loc6_ = b2Math.§2"0§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§1"=§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§1"=§(param1.§8!@§(),param2.§8!@§())).Normalize();
         var _loc8_:* = b2Math.§5q§(param1.§8!@§(),param2.§ 1§()) > 0;
         param1.§=!v§(param2,_loc6_,_loc7_,_loc8_);
         param2.§+"5§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §4!T§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§`O§ = null;
         if(this.m_world.§18§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§#!b§(this,this.m_xf,param1);
         if(this.§%$§ & b2internal::-R)
         {
            _loc3_ = this.m_world.§;G§.§#!K§;
            _loc2_.§`!;§(_loc3_,this.m_xf);
         }
         _loc2_.§7"@§ = this.§8!0§;
         this.§8!0§ = _loc2_;
         ++this.§1e§;
         _loc2_.m_body = this;
         if(_loc2_.§4!Z§ > 0)
         {
            this.§3x§();
         }
         this.m_world.§%$§ |= b2World.§>R§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§4!T§(_loc3_);
      }
      
      public function §+!]§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§`O§ = null;
         if(this.m_world.§18§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§8!0§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§7"@§ = param1.§7"@§;
               }
               else
               {
                  this.§8!0§ = param1.§7"@§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§7"@§;
         }
         var _loc5_:b2ContactEdge = this.§@Q§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§4!M§;
            _loc5_ = _loc5_.§%!8§;
            _loc7_ = _loc6_.§9!&§();
            _loc8_ = _loc6_.§2%§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§;G§.§1?§(_loc6_);
            }
         }
         if(this.§%$§ & b2internal::-R)
         {
            _loc9_ = this.m_world.§;G§.§#!K§;
            param1.§]o§(_loc9_);
         }
         param1.§1?§();
         param1.m_body = null;
         param1.§7"@§ = null;
         --this.§1e§;
         this.§3x§();
      }
      
      public function §<!p§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§18§() == true)
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
         var _loc6_:§`O§ = this.m_world.§;G§.§#!K§;
         _loc3_ = this.§8!0§;
         while(_loc3_)
         {
            _loc3_.§#!F§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§7"@§;
         }
         this.m_world.§;G§.§[f§();
      }
      
      public function §1!U§(param1:b2Transform) : void
      {
         this.§<!p§(param1.position,param1.GetAngle());
      }
      
      public function §[H§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §#H§(param1:b2Vec2) : void
      {
         this.§<!p§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §-!H§(param1:Number) : void
      {
         this.§<!p§(this.GetPosition(),param1);
      }
      
      public function §%!r§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §-!;§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§=""§ == b2_staticBody)
         {
            return;
         }
         this.§>! §.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§>! §;
      }
      
      public function § ! §(param1:Number) : void
      {
         if(this.§=""§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §[R§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §[U§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§9!j§();
         _loc1_.§5!C§ = (this.§%$§ & b2internal::[! ) == b2internal::[! ;
         _loc1_.angle = this.GetAngle();
         _loc1_.§]=§ = this.§>!q§;
         _loc1_.§><§ = this.m_angularVelocity;
         _loc1_.§6R§ = (this.§%$§ & b2internal::@!;) == b2internal::@!;;
         _loc1_.§@!%§ = (this.§%$§ & b2internal::!!N) == b2internal::!!N;
         _loc1_.§7x§ = (this.§%$§ & b2internal::@!F) == b2internal::@!F;
         _loc1_.§+!6§ = this.§`!g§;
         _loc1_.§0!Z§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§#"@§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §9![§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§=""§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§6!N§.x += param1.x;
         this.§6!N§.y += param1.y;
         this.§5d§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §6!+§(param1:Number) : void
      {
         if(this.§=""§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§5d§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§=""§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§>! §.x += this.§^1§ * param1.x;
         this.§>! §.y += this.§^1§ * param1.y;
         this.m_angularVelocity += this.§?y§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §[G§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§[R§();
         var _loc4_:b2Vec2 = this.§%!r§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§7!V§(this.§[U§());
         var _loc8_:b2Fixture = _loc5_.§8!0§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§7"@§;
               if(_loc7_)
               {
                  _loc7_.§7"@§ = _loc13_;
               }
               else
               {
                  _loc5_.§8!0§ = _loc13_;
               }
               --_loc5_.§1e§;
               _loc8_.§7"@§ = _loc6_.§8!0§;
               _loc6_.§8!0§ = _loc8_;
               ++_loc6_.§1e§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§7"@§;
            }
         }
         _loc5_.§3x§();
         _loc6_.§3x§();
         var _loc9_:b2Vec2 = _loc5_.§%!r§();
         var _loc10_:b2Vec2 = _loc6_.§%!r§();
         var _loc11_:b2Vec2 = b2Math.§1"=§(_loc2_,b2Math.§ 0§(_loc3_,b2Math.§@!W§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§1"=§(_loc2_,b2Math.§ 0§(_loc3_,b2Math.§@!W§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§ ! §(_loc3_);
         _loc6_.§ ! §(_loc3_);
         _loc5_.§%!L§();
         _loc6_.§%!L§();
         return _loc6_;
      }
      
      public function §[2§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§8!0§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§7"@§;
            --param1.§1e§;
            _loc2_.§7"@§ = this.§8!0§;
            this.§8!0§ = _loc2_;
            ++this.§1e§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§1e§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§%!r§();
         var _loc6_:b2Vec2 = _loc4_.§%!r§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§[R§();
         var _loc10_:Number = _loc4_.§[R§();
         _loc3_.§3x§();
         this.§%!L§();
      }
      
      public function GetMass() : Number
      {
         return this.§''§;
      }
      
      public function §1!5§() : Number
      {
         return this.§>N§;
      }
      
      public function §5!1§(param1:b2MassData) : void
      {
         param1.§9%§ = this.§''§;
         param1.§;x§ = this.§>N§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §5!=§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§18§() == false);
         if(this.m_world.§18§() == true)
         {
            return;
         }
         if(this.§=""§ != b2_dynamicBody)
         {
            return;
         }
         this.§^1§ = 0;
         this.§>N§ = 0;
         this.§?y§ = 0;
         this.§''§ = param1.§9%§;
         if(this.§''§ <= 0)
         {
            this.§''§ = 1;
         }
         this.§^1§ = 1 / this.§''§;
         if(param1.§;x§ > 0 && (this.§%$§ & b2internal::@!;) == 0)
         {
            this.§>N§ = param1.§;x§ - this.§''§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§?y§ = 1 / this.§>N§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§0!6§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§>! §.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§>! §.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §3x§() : void
      {
         var _loc4_:b2MassData = null;
         this.§''§ = 0;
         this.§^1§ = 0;
         this.§>N§ = 0;
         this.§?y§ = 0;
         this.m_sweep.localCenter.§]!;§();
         if(this.§=""§ == b2_staticBody || this.§=""§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§3!Q§(0,0);
         var _loc2_:b2Fixture = this.§8!0§;
         while(_loc2_)
         {
            if(_loc2_.§4!Z§ != 0)
            {
               _loc4_ = _loc2_.§5!1§();
               this.§''§ += _loc4_.§9%§;
               _loc1_.x += _loc4_.center.x * _loc4_.§9%§;
               _loc1_.y += _loc4_.center.y * _loc4_.§9%§;
               this.§>N§ += _loc4_.§;x§;
            }
            _loc2_ = _loc2_.§7"@§;
         }
         if(this.§''§ > 0)
         {
            this.§^1§ = 1 / this.§''§;
            _loc1_.x *= this.§^1§;
            _loc1_.y *= this.§^1§;
         }
         else
         {
            this.§''§ = 1;
            this.§^1§ = 1;
         }
         if(this.§>N§ > 0 && (this.§%$§ & b2internal::@!;) == 0)
         {
            this.§>N§ -= this.§''§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§>N§ *= this.§2Y§;
            b2Settings.b2Assert(this.§>N§ > 0);
            this.§?y§ = 1 / this.§>N§;
         }
         else
         {
            this.§>N§ = 0;
            this.§?y§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§0!6§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§>! §.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§>! §.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §#F§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§#-§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§5"2§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§]!U§(this.m_xf.R,param1);
      }
      
      public function §0!9§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§>! §.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§>! §.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §`'§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§>! §.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§>! §.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §9"?§() : Number
      {
         return this.§`!g§;
      }
      
      public function §4!y§(param1:Number) : void
      {
         this.§`!g§ = param1;
      }
      
      public function §!"2§() : Number
      {
         return this.§>!q§;
      }
      
      public function §[+§(param1:Number) : void
      {
         this.§>!q§ = param1;
      }
      
      public function §8L§(param1:uint) : void
      {
         if(this.§=""§ == param1)
         {
            return;
         }
         this.§=""§ = param1;
         this.§3x§();
         if(this.§=""§ == b2_staticBody)
         {
            this.§>! §.§]!;§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§6!N§.§]!;§();
         this.§5d§ = 0;
         var _loc2_:b2ContactEdge = this.§@Q§;
         while(_loc2_)
         {
            _loc2_.§4!M§.§9_§();
            _loc2_ = _loc2_.§%!8§;
         }
      }
      
      public function §9!j§() : uint
      {
         return this.§=""§;
      }
      
      public function §<!V§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%$§ |= b2internal::!!N;
         }
         else
         {
            this.§%$§ &= ~b2internal::!!N;
         }
      }
      
      public function §4t§() : Boolean
      {
         return (this.§%$§ & b2internal::!!N) == b2internal::!!N;
      }
      
      public function §?S§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%$§ |= b2internal::[! ;
         }
         else
         {
            this.§%$§ &= ~b2internal::[! ;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%$§ |= b2internal::@!F;
            this.§-!6§ = 0;
         }
         else
         {
            this.§%$§ &= ~b2internal::@!F;
            this.§-!6§ = 0;
            this.§>! §.§]!;§();
            this.m_angularVelocity = 0;
            this.§6!N§.§]!;§();
            this.§5d§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§%$§ & b2internal::@!F) == b2internal::@!F;
      }
      
      public function §-!V§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%$§ |= b2internal::@!;;
         }
         else
         {
            this.§%$§ &= ~b2internal::@!;;
         }
         this.§3x§();
      }
      
      public function §1!<§() : Boolean
      {
         return (this.§%$§ & b2internal::@!;) == b2internal::@!;;
      }
      
      public function §1! §(param1:Boolean) : void
      {
         var _loc2_:§`O§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.IsActive())
         {
            return;
         }
         if(param1)
         {
            this.§%$§ |= b2internal::-R;
            _loc2_ = this.m_world.§;G§.§#!K§;
            _loc3_ = this.§8!0§;
            while(_loc3_)
            {
               _loc3_.§`!;§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§7"@§;
            }
         }
         else
         {
            this.§%$§ &= ~b2internal::-R;
            _loc2_ = this.m_world.§;G§.§#!K§;
            _loc3_ = this.§8!0§;
            while(_loc3_)
            {
               _loc3_.§]o§(_loc2_);
               _loc3_ = _loc3_.§7"@§;
            }
            _loc4_ = this.§@Q§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§%!8§;
               this.m_world.§;G§.§1?§(_loc5_.§4!M§);
            }
            this.§@Q§ = null;
         }
      }
      
      public function IsActive() : Boolean
      {
         return (this.§%$§ & b2internal::-R) == b2internal::-R;
      }
      
      public function §<!k§() : Boolean
      {
         return (this.§%$§ & b2internal::[! ) == b2internal::[! ;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§8!0§;
      }
      
      public function §,z§() : b2JointEdge
      {
         return this.§>!,§;
      }
      
      public function §&!;§() : b2ControllerEdge
      {
         return this.§+!n§;
      }
      
      public function §!""§() : b2ContactEdge
      {
         return this.§@Q§;
      }
      
      public function §&A§() : b2Body
      {
         return this.§7"@§;
      }
      
      public function GetUserData() : *
      {
         return this.§[?§;
      }
      
      public function §'A§(param1:*) : void
      {
         this.§[?§ = param1;
      }
      
      public function §!>§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §%!L§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §7T§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§`O§ = this.m_world.§;G§.§#!K§;
         _loc4_ = this.§8!0§;
         while(_loc4_)
         {
            _loc4_.§#!F§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§7"@§;
         }
      }
      
      b2internal function §?=§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §^k§(param1:b2Body) : Boolean
      {
         if(this.§=""§ != b2_dynamicBody && param1.§=""§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§>!,§;
         while(_loc2_)
         {
            if(_loc2_.§%"C§ == param1)
            {
               if(_loc2_.§?#§.§1c§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§%!8§;
         }
         return true;
      }
      
      b2internal function §3"?§(param1:Number) : void
      {
         this.m_sweep.§3"?§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§?=§();
      }
   }
}

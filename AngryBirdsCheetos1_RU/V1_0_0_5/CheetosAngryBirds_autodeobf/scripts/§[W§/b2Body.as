package §[W§
{
   import § !5§.b2Settings;
   import § !5§.b2internal;
   import §!6§.b2JointEdge;
   import §+,§.b2Mat22;
   import §+,§.b2Math;
   import §+,§.b2Sweep;
   import §+,§.b2Transform;
   import §+,§.b2Vec2;
   import §-!$§.b2EdgeShape;
   import §-!$§.b2MassData;
   import §-!$§.b2Shape;
   import §3!O§.b2Contact;
   import §3!O§.b2ContactEdge;
   import §7!Q§.b2ControllerEdge;
   import §?§.§"!2§;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §9v§:b2Transform = new b2Transform();
      
      b2internal static var §0!2§:uint = 1;
      
      b2internal static var §`%§:uint = 2;
      
      b2internal static var §[!%§:uint = 4;
      
      b2internal static var §^s§:uint = 8;
      
      b2internal static var §5,§:uint = 16;
      
      b2internal static var §%Z§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §;>§:uint;
      
      b2internal var §&D§:int;
      
      b2internal var §7p§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §%!N§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §6U§:b2Vec2;
      
      b2internal var §#o§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §<]§:b2Body;
      
      b2internal var §60§:b2Body;
      
      b2internal var §#!X§:b2Fixture;
      
      b2internal var §4!6§:int;
      
      b2internal var §]I§:b2ControllerEdge;
      
      b2internal var § !]§:int;
      
      b2internal var §+G§:b2JointEdge;
      
      b2internal var §"!^§:b2ContactEdge;
      
      b2internal var §]f§:Number;
      
      b2internal var §^!^§:Number;
      
      b2internal var §3!W§:Number;
      
      b2internal var §^U§:Number;
      
      b2internal var §]i§:Number;
      
      b2internal var §<D§:Number;
      
      b2internal var §8]§:Number;
      
      b2internal var §-!A§:Number;
      
      private var §40§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§%!N§ = new b2Vec2();
         this.§6U§ = new b2Vec2();
         super();
         this.§;>§ = 0;
         if(param1.§"!E§)
         {
            this.§;>§ |= b2internal::^s;
         }
         if(param1.§+]§)
         {
            this.§;>§ |= b2internal::5,;
         }
         if(param1.§""§)
         {
            this.§;>§ |= b2internal::[!%;
         }
         if(param1.§ _§)
         {
            this.§;>§ |= b2internal::`%;
         }
         if(param1.§2!1§)
         {
            this.§;>§ |= b2internal::%Z;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§&N§();
         this.m_sweep.§ !#§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§+G§ = null;
         this.§]I§ = null;
         this.§"!^§ = null;
         this.§ !]§ = 0;
         this.§<]§ = null;
         this.§60§ = null;
         this.§%!N§.SetV(param1.§#!S§);
         this.m_angularVelocity = param1.§+!B§;
         this.§<D§ = param1.§!3§;
         this.§8]§ = param1.§11§;
         this.§6U§.Set(0,0);
         this.§#o§ = 0;
         this.§-!A§ = 0;
         this.§&D§ = param1.type;
         if(this.§&D§ == b2_dynamicBody)
         {
            this.§]f§ = 1;
            this.§^!^§ = 1;
         }
         else
         {
            this.§]f§ = 0;
            this.§^!^§ = 0;
         }
         this.§3!W§ = 0;
         this.§^U§ = 0;
         this.§]i§ = param1.§case§;
         this.§40§ = param1.§=!<§;
         this.§#!X§ = null;
         this.§4!6§ = 0;
      }
      
      private function §%Y§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§2!,§().y,param2.§2!,§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§"!F§(_loc5_,param2.§2!,§());
         _loc6_ = b2Math.§,!!§(_loc6_,param2.§4U§());
         _loc6_ = b2Math.§"!F§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§3!Q§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§3!Q§(param1.§2!,§(),param2.§2!,§())).Normalize();
         var _loc8_:* = b2Math.§@G§(param1.§2!,§(),param2.§4U§()) > 0;
         param1.§;I§(param2,_loc6_,_loc7_,_loc8_);
         param2.§1J§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §7!]§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§"!2§ = null;
         if(this.m_world.§&!J§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§2Q§(this,this.m_xf,param1);
         if(this.§;>§ & b2internal::%Z)
         {
            _loc3_ = this.m_world.§5E§.§"G§;
            _loc2_.§6B§(_loc3_,this.m_xf);
         }
         _loc2_.§60§ = this.§#!X§;
         this.§#!X§ = _loc2_;
         ++this.§4!6§;
         _loc2_.m_body = this;
         if(_loc2_.§'w§ > 0)
         {
            this.§1!&§();
         }
         this.m_world.§;>§ |= b2World.§#!O§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§7!]§(_loc3_);
      }
      
      public function §%!4§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§"!2§ = null;
         if(this.m_world.§&!J§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§#!X§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§60§ = param1.§60§;
               }
               else
               {
                  this.§#!X§ = param1.§60§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§60§;
         }
         var _loc5_:b2ContactEdge = this.§"!^§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§1!=§;
            _loc5_ = _loc5_.§"!+§;
            _loc7_ = _loc6_.§6!?§();
            _loc8_ = _loc6_.§4v§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§5E§.§;t§(_loc6_);
            }
         }
         if(this.§;>§ & b2internal::%Z)
         {
            _loc9_ = this.m_world.§5E§.§"G§;
            param1.§%d§(_loc9_);
         }
         param1.§;t§();
         param1.m_body = null;
         param1.§60§ = null;
         --this.§4!6§;
         this.§1!&§();
      }
      
      public function §&B§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§&!J§() == true)
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
         var _loc6_:§"!2§ = this.m_world.§5E§.§"G§;
         _loc3_ = this.§#!X§;
         while(_loc3_)
         {
            _loc3_.§6!^§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§60§;
         }
         this.m_world.§5E§.§^>§();
      }
      
      public function §,m§(param1:b2Transform) : void
      {
         this.§&B§(param1.position,param1.GetAngle());
      }
      
      public function §@#§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §>!P§(param1:b2Vec2) : void
      {
         this.§&B§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §&!B§(param1:Number) : void
      {
         this.§&B§(this.GetPosition(),param1);
      }
      
      public function §@!_§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §;!R§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§&D§ == b2_staticBody)
         {
            return;
         }
         this.§%!N§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§%!N§;
      }
      
      public function §5p§(param1:Number) : void
      {
         if(this.§&D§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §"h§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §0?§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§@i§();
         _loc1_.§""§ = (this.§;>§ & b2internal::[!%) == b2internal::[!%;
         _loc1_.angle = this.GetAngle();
         _loc1_.§11§ = this.§8]§;
         _loc1_.§+!B§ = this.m_angularVelocity;
         _loc1_.§+]§ = (this.§;>§ & b2internal::5,) == b2internal::5,;
         _loc1_.§"!E§ = (this.§;>§ & b2internal::^s) == b2internal::^s;
         _loc1_.§ _§ = (this.§;>§ & b2internal::`%) == b2internal::`%;
         _loc1_.§!3§ = this.§<D§;
         _loc1_.§#!S§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§=!<§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §"R§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§&D§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§6U§.x += param1.x;
         this.§6U§.y += param1.y;
         this.§#o§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §+P§(param1:Number) : void
      {
         if(this.§&D§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§#o§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§&D§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§%!N§.x += this.§^!^§ * param1.x;
         this.§%!N§.y += this.§^!^§ * param1.y;
         this.m_angularVelocity += this.§^U§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §!!"§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§"h§();
         var _loc4_:b2Vec2 = this.§@!_§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§?s§(this.§0?§());
         var _loc8_:b2Fixture = _loc5_.§#!X§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§60§;
               if(_loc7_)
               {
                  _loc7_.§60§ = _loc13_;
               }
               else
               {
                  _loc5_.§#!X§ = _loc13_;
               }
               --_loc5_.§4!6§;
               _loc8_.§60§ = _loc6_.§#!X§;
               _loc6_.§#!X§ = _loc8_;
               ++_loc6_.§4!6§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§60§;
            }
         }
         _loc5_.§1!&§();
         _loc6_.§1!&§();
         var _loc9_:b2Vec2 = _loc5_.§@!_§();
         var _loc10_:b2Vec2 = _loc6_.§@!_§();
         var _loc11_:b2Vec2 = b2Math.§3!Q§(_loc2_,b2Math.§,!P§(_loc3_,b2Math.§,!!§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§3!Q§(_loc2_,b2Math.§,!P§(_loc3_,b2Math.§,!!§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§5p§(_loc3_);
         _loc6_.§5p§(_loc3_);
         _loc5_.§&l§();
         _loc6_.§&l§();
         return _loc6_;
      }
      
      public function §-E§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§#!X§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§60§;
            --param1.§4!6§;
            _loc2_.§60§ = this.§#!X§;
            this.§#!X§ = _loc2_;
            ++this.§4!6§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§4!6§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§@!_§();
         var _loc6_:b2Vec2 = _loc4_.§@!_§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§"h§();
         var _loc10_:Number = _loc4_.§"h§();
         _loc3_.§1!&§();
         this.§&l§();
      }
      
      public function GetMass() : Number
      {
         return this.§]f§;
      }
      
      public function §9!`§() : Number
      {
         return this.§3!W§;
      }
      
      public function §]v§(param1:b2MassData) : void
      {
         param1.§0t§ = this.§]f§;
         param1.§0!+§ = this.§3!W§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §5!A§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§&!J§() == false);
         if(this.m_world.§&!J§() == true)
         {
            return;
         }
         if(this.§&D§ != b2_dynamicBody)
         {
            return;
         }
         this.§^!^§ = 0;
         this.§3!W§ = 0;
         this.§^U§ = 0;
         this.§]f§ = param1.§0t§;
         if(this.§]f§ <= 0)
         {
            this.§]f§ = 1;
         }
         this.§^!^§ = 1 / this.§]f§;
         if(param1.§0!+§ > 0 && (this.§;>§ & b2internal::5,) == 0)
         {
            this.§3!W§ = param1.§0!+§ - this.§]f§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§^U§ = 1 / this.§3!W§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§8v§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§%!N§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§%!N§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §1!&§() : void
      {
         var _loc4_:b2MassData = null;
         this.§]f§ = 0;
         this.§^!^§ = 0;
         this.§3!W§ = 0;
         this.§^U§ = 0;
         this.m_sweep.localCenter.§&N§();
         if(this.§&D§ == b2_staticBody || this.§&D§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§&!4§(0,0);
         var _loc2_:b2Fixture = this.§#!X§;
         while(_loc2_)
         {
            if(_loc2_.§'w§ != 0)
            {
               _loc4_ = _loc2_.§]v§();
               this.§]f§ += _loc4_.§0t§;
               _loc1_.x += _loc4_.center.x * _loc4_.§0t§;
               _loc1_.y += _loc4_.center.y * _loc4_.§0t§;
               this.§3!W§ += _loc4_.§0!+§;
            }
            _loc2_ = _loc2_.§60§;
         }
         if(this.§]f§ > 0)
         {
            this.§^!^§ = 1 / this.§]f§;
            _loc1_.x *= this.§^!^§;
            _loc1_.y *= this.§^!^§;
         }
         else
         {
            this.§]f§ = 1;
            this.§^!^§ = 1;
         }
         if(this.§3!W§ > 0 && (this.§;>§ & b2internal::5,) == 0)
         {
            this.§3!W§ -= this.§]f§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§3!W§ *= this.§]i§;
            b2Settings.b2Assert(this.§3!W§ > 0);
            this.§^U§ = 1 / this.§3!W§;
         }
         else
         {
            this.§3!W§ = 0;
            this.§^U§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§8v§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§%!N§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§%!N§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §4P§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§#N§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§'!X§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§[! §(this.m_xf.R,param1);
      }
      
      public function §[!I§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§%!N§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§%!N§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §-!C§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§%!N§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§%!N§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §&K§() : Number
      {
         return this.§<D§;
      }
      
      public function §var§(param1:Number) : void
      {
         this.§<D§ = param1;
      }
      
      public function §;b§() : Number
      {
         return this.§8]§;
      }
      
      public function §7!J§(param1:Number) : void
      {
         this.§8]§ = param1;
      }
      
      public function §6+§(param1:uint) : void
      {
         if(this.§&D§ == param1)
         {
            return;
         }
         this.§&D§ = param1;
         this.§1!&§();
         if(this.§&D§ == b2_staticBody)
         {
            this.§%!N§.§&N§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§6U§.§&N§();
         this.§#o§ = 0;
         var _loc2_:b2ContactEdge = this.§"!^§;
         while(_loc2_)
         {
            _loc2_.§1!=§.§@m§();
            _loc2_ = _loc2_.§"!+§;
         }
      }
      
      public function §@i§() : uint
      {
         return this.§&D§;
      }
      
      public function §"%§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;>§ |= b2internal::^s;
         }
         else
         {
            this.§;>§ &= ~b2internal::^s;
         }
      }
      
      public function §@C§() : Boolean
      {
         return (this.§;>§ & b2internal::^s) == b2internal::^s;
      }
      
      public function §39§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;>§ |= b2internal::[!%;
         }
         else
         {
            this.§;>§ &= ~b2internal::[!%;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;>§ |= b2internal::`%;
            this.§-!A§ = 0;
         }
         else
         {
            this.§;>§ &= ~b2internal::`%;
            this.§-!A§ = 0;
            this.§%!N§.§&N§();
            this.m_angularVelocity = 0;
            this.§6U§.§&N§();
            this.§#o§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§;>§ & b2internal::`%) == b2internal::`%;
      }
      
      public function §'`§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;>§ |= b2internal::5,;
         }
         else
         {
            this.§;>§ &= ~b2internal::5,;
         }
         this.§1!&§();
      }
      
      public function §3T§() : Boolean
      {
         return (this.§;>§ & b2internal::5,) == b2internal::5,;
      }
      
      public function § get§(param1:Boolean) : void
      {
         var _loc2_:§"!2§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§^!Q§())
         {
            return;
         }
         if(param1)
         {
            this.§;>§ |= b2internal::%Z;
            _loc2_ = this.m_world.§5E§.§"G§;
            _loc3_ = this.§#!X§;
            while(_loc3_)
            {
               _loc3_.§6B§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§60§;
            }
         }
         else
         {
            this.§;>§ &= ~b2internal::%Z;
            _loc2_ = this.m_world.§5E§.§"G§;
            _loc3_ = this.§#!X§;
            while(_loc3_)
            {
               _loc3_.§%d§(_loc2_);
               _loc3_ = _loc3_.§60§;
            }
            _loc4_ = this.§"!^§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§"!+§;
               this.m_world.§5E§.§;t§(_loc5_.§1!=§);
            }
            this.§"!^§ = null;
         }
      }
      
      public function §^!Q§() : Boolean
      {
         return (this.§;>§ & b2internal::%Z) == b2internal::%Z;
      }
      
      public function §%![§() : Boolean
      {
         return (this.§;>§ & b2internal::[!%) == b2internal::[!%;
      }
      
      public function § "§() : b2Fixture
      {
         return this.§#!X§;
      }
      
      public function §7F§() : b2JointEdge
      {
         return this.§+G§;
      }
      
      public function §-l§() : b2ControllerEdge
      {
         return this.§]I§;
      }
      
      public function §4!U§() : b2ContactEdge
      {
         return this.§"!^§;
      }
      
      public function §25§() : b2Body
      {
         return this.§60§;
      }
      
      public function GetUserData() : *
      {
         return this.§40§;
      }
      
      public function §0!R§(param1:*) : void
      {
         this.§40§ = param1;
      }
      
      public function §2q§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §&l§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §9v§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§"!2§ = this.m_world.§5E§.§"G§;
         _loc4_ = this.§#!X§;
         while(_loc4_)
         {
            _loc4_.§6!^§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§60§;
         }
      }
      
      b2internal function §'!N§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §7!;§(param1:b2Body) : Boolean
      {
         if(this.§&D§ != b2_dynamicBody && param1.§&D§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§+G§;
         while(_loc2_)
         {
            if(_loc2_.§]!7§ == param1)
            {
               if(_loc2_.§12§.§;!?§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§"!+§;
         }
         return true;
      }
      
      b2internal function §0!'§(param1:Number) : void
      {
         this.m_sweep.§0!'§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§'!N§();
      }
   }
}

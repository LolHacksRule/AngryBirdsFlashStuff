package §`w§
{
   import §!!R§.b2ControllerEdge;
   import §2!+§.b2EdgeShape;
   import §2!+§.b2MassData;
   import §2!+§.b2Shape;
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §72§.§<X§;
   import §9!"§.b2JointEdge;
   import §>H§.b2Mat22;
   import §>H§.b2Math;
   import §>H§.b2Sweep;
   import §>H§.b2Transform;
   import §>H§.b2Vec2;
   import §break§.b2Contact;
   import §break§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §%!`§:b2Transform = new b2Transform();
      
      b2internal static var §#!`§:uint = 1;
      
      b2internal static var §1"§:uint = 2;
      
      b2internal static var §?!O§:uint = 4;
      
      b2internal static var §%6§:uint = 8;
      
      b2internal static var §'U§:uint = 16;
      
      b2internal static var §1T§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §;!R§:uint;
      
      b2internal var §+!?§:int;
      
      b2internal var §>!c§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §^O§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §84§:b2Vec2;
      
      b2internal var §3!T§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §-!I§:b2Body;
      
      b2internal var §3=§:b2Body;
      
      b2internal var §92§:b2Fixture;
      
      b2internal var §+q§:int;
      
      b2internal var §-_§:b2ControllerEdge;
      
      b2internal var § !>§:int;
      
      b2internal var §"O§:b2JointEdge;
      
      b2internal var §]3§:b2ContactEdge;
      
      b2internal var §,0§:Number;
      
      b2internal var §7n§:Number;
      
      b2internal var §'v§:Number;
      
      b2internal var §;5§:Number;
      
      b2internal var §'!x§:Number;
      
      b2internal var §[s§:Number;
      
      b2internal var §[!j§:Number;
      
      b2internal var §@!#§:Number;
      
      private var §?f§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§^O§ = new b2Vec2();
         this.§84§ = new b2Vec2();
         super();
         this.§;!R§ = 0;
         if(param1.§,$§)
         {
            this.§;!R§ |= b2internal::%6;
         }
         if(param1.§do§)
         {
            this.§;!R§ |= b2internal::'U;
         }
         if(param1.§import§)
         {
            this.§;!R§ |= b2internal::?!O;
         }
         if(param1.§!,§)
         {
            this.§;!R§ |= b2internal::1";
         }
         if(param1.§,O§)
         {
            this.§;!R§ |= b2internal::1T;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§`!5§();
         this.m_sweep.§3J§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§"O§ = null;
         this.§-_§ = null;
         this.§]3§ = null;
         this.§ !>§ = 0;
         this.§-!I§ = null;
         this.§3=§ = null;
         this.§^O§.SetV(param1.§,W§);
         this.m_angularVelocity = param1.§"!T§;
         this.§[s§ = param1.§2!s§;
         this.§[!j§ = param1.§!!J§;
         this.§84§.Set(0,0);
         this.§3!T§ = 0;
         this.§@!#§ = 0;
         this.§+!?§ = param1.type;
         if(this.§+!?§ == b2_dynamicBody)
         {
            this.§,0§ = 1;
            this.§7n§ = 1;
         }
         else
         {
            this.§,0§ = 0;
            this.§7n§ = 0;
         }
         this.§'v§ = 0;
         this.§;5§ = 0;
         this.§'!x§ = param1.§4!D§;
         this.§?f§ = param1.§+!+§;
         this.§92§ = null;
         this.§+q§ = 0;
      }
      
      private function §1R§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§'!!§().y,param2.§'!!§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§3!O§(_loc5_,param2.§'!!§());
         _loc6_ = b2Math.§54§(_loc6_,param2.§77§());
         _loc6_ = b2Math.§3!O§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§,x§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§,x§(param1.§'!!§(),param2.§'!!§())).Normalize();
         var _loc8_:* = b2Math.§'l§(param1.§'!!§(),param2.§77§()) > 0;
         param1.§-!g§(param2,_loc6_,_loc7_,_loc8_);
         param2.§?d§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §'[§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§<X§ = null;
         if(this.m_world.§3C§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§`4§(this,this.m_xf,param1);
         if(this.§;!R§ & b2internal::1T)
         {
            _loc3_ = this.m_world.§`!n§.§<Z§;
            _loc2_.§0!S§(_loc3_,this.m_xf);
         }
         _loc2_.§3=§ = this.§92§;
         this.§92§ = _loc2_;
         ++this.§+q§;
         _loc2_.m_body = this;
         if(_loc2_.§7!%§ > 0)
         {
            this.§2!D§();
         }
         this.m_world.§;!R§ |= b2World.§?!;§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§'[§(_loc3_);
      }
      
      public function §?E§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§<X§ = null;
         if(this.m_world.§3C§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§92§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§3=§ = param1.§3=§;
               }
               else
               {
                  this.§92§ = param1.§3=§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§3=§;
         }
         var _loc5_:b2ContactEdge = this.§]3§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§+2§;
            _loc5_ = _loc5_.§-!3§;
            _loc7_ = _loc6_.§?!l§();
            _loc8_ = _loc6_.§0+§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§`!n§.§[M§(_loc6_);
            }
         }
         if(this.§;!R§ & b2internal::1T)
         {
            _loc9_ = this.m_world.§`!n§.§<Z§;
            param1.§!O§(_loc9_);
         }
         param1.§[M§();
         param1.m_body = null;
         param1.§3=§ = null;
         --this.§+q§;
         this.§2!D§();
      }
      
      public function §5!N§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§3C§() == true)
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
         var _loc6_:§<X§ = this.m_world.§`!n§.§<Z§;
         _loc3_ = this.§92§;
         while(_loc3_)
         {
            _loc3_.§'!@§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§3=§;
         }
         this.m_world.§`!n§.§0a§();
      }
      
      public function §>v§(param1:b2Transform) : void
      {
         this.§5!N§(param1.position,param1.GetAngle());
      }
      
      public function §2!0§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §`!'§(param1:b2Vec2) : void
      {
         this.§5!N§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §,v§(param1:Number) : void
      {
         this.§5!N§(this.GetPosition(),param1);
      }
      
      public function §[!S§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function § !&§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§+!?§ == b2_staticBody)
         {
            return;
         }
         this.§^O§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§^O§;
      }
      
      public function §@X§(param1:Number) : void
      {
         if(this.§+!?§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §-!]§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§2!r§();
         _loc1_.§import§ = (this.§;!R§ & b2internal::?!O) == b2internal::?!O;
         _loc1_.angle = this.GetAngle();
         _loc1_.§!!J§ = this.§[!j§;
         _loc1_.§"!T§ = this.m_angularVelocity;
         _loc1_.§do§ = (this.§;!R§ & b2internal::'U) == b2internal::'U;
         _loc1_.§,$§ = (this.§;!R§ & b2internal::%6) == b2internal::%6;
         _loc1_.§!,§ = (this.§;!R§ & b2internal::1") == b2internal::1";
         _loc1_.§2!s§ = this.§[s§;
         _loc1_.§,W§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§+!+§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §^=§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§+!?§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§84§.x += param1.x;
         this.§84§.y += param1.y;
         this.§3!T§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §>F§(param1:Number) : void
      {
         if(this.§+!?§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§3!T§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§+!?§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§^O§.x += this.§7n§ * param1.x;
         this.§^O§.y += this.§7n§ * param1.y;
         this.m_angularVelocity += this.§;5§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §>!$§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§[!S§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§04§(this.§-!]§());
         var _loc8_:b2Fixture = _loc5_.§92§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§3=§;
               if(_loc7_)
               {
                  _loc7_.§3=§ = _loc13_;
               }
               else
               {
                  _loc5_.§92§ = _loc13_;
               }
               --_loc5_.§+q§;
               _loc8_.§3=§ = _loc6_.§92§;
               _loc6_.§92§ = _loc8_;
               ++_loc6_.§+q§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§3=§;
            }
         }
         _loc5_.§2!D§();
         _loc6_.§2!D§();
         var _loc9_:b2Vec2 = _loc5_.§[!S§();
         var _loc10_:b2Vec2 = _loc6_.§[!S§();
         var _loc11_:b2Vec2 = b2Math.§,x§(_loc2_,b2Math.§;C§(_loc3_,b2Math.§54§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§,x§(_loc2_,b2Math.§;C§(_loc3_,b2Math.§54§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§@X§(_loc3_);
         _loc6_.§@X§(_loc3_);
         _loc5_.§-!6§();
         _loc6_.§-!6§();
         return _loc6_;
      }
      
      public function §39§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§92§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§3=§;
            --param1.§+q§;
            _loc2_.§3=§ = this.§92§;
            this.§92§ = _loc2_;
            ++this.§+q§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§+q§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§[!S§();
         var _loc6_:b2Vec2 = _loc4_.§[!S§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§2!D§();
         this.§-!6§();
      }
      
      public function GetMass() : Number
      {
         return this.§,0§;
      }
      
      public function §[D§() : Number
      {
         return this.§'v§;
      }
      
      public function §!!+§(param1:b2MassData) : void
      {
         param1.§@K§ = this.§,0§;
         param1.§8`§ = this.§'v§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §"!&§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§3C§() == false);
         if(this.m_world.§3C§() == true)
         {
            return;
         }
         if(this.§+!?§ != b2_dynamicBody)
         {
            return;
         }
         this.§7n§ = 0;
         this.§'v§ = 0;
         this.§;5§ = 0;
         this.§,0§ = param1.§@K§;
         if(this.§,0§ <= 0)
         {
            this.§,0§ = 1;
         }
         this.§7n§ = 1 / this.§,0§;
         if(param1.§8`§ > 0 && (this.§;!R§ & b2internal::'U) == 0)
         {
            this.§'v§ = param1.§8`§ - this.§,0§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§;5§ = 1 / this.§'v§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§'!6§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§^O§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§^O§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §2!D§() : void
      {
         var _loc4_:b2MassData = null;
         this.§,0§ = 0;
         this.§7n§ = 0;
         this.§'v§ = 0;
         this.§;5§ = 0;
         this.m_sweep.localCenter.§`!5§();
         if(this.§+!?§ == b2_staticBody || this.§+!?§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§5!3§(0,0);
         var _loc2_:b2Fixture = this.§92§;
         while(_loc2_)
         {
            if(_loc2_.§7!%§ != 0)
            {
               _loc4_ = _loc2_.§!!+§();
               this.§,0§ += _loc4_.§@K§;
               _loc1_.x += _loc4_.center.x * _loc4_.§@K§;
               _loc1_.y += _loc4_.center.y * _loc4_.§@K§;
               this.§'v§ += _loc4_.§8`§;
            }
            _loc2_ = _loc2_.§3=§;
         }
         if(this.§,0§ > 0)
         {
            this.§7n§ = 1 / this.§,0§;
            _loc1_.x *= this.§7n§;
            _loc1_.y *= this.§7n§;
         }
         else
         {
            this.§,0§ = 1;
            this.§7n§ = 1;
         }
         if(this.§'v§ > 0 && (this.§;!R§ & b2internal::'U) == 0)
         {
            this.§'v§ -= this.§,0§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§'v§ *= this.§'!x§;
            b2Settings.b2Assert(this.§'v§ > 0);
            this.§;5§ = 1 / this.§'v§;
         }
         else
         {
            this.§'v§ = 0;
            this.§;5§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§'!6§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§^O§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§^O§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §!!U§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§'q§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§0r§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§;%§(this.m_xf.R,param1);
      }
      
      public function §'M§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§^O§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§^O§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §8G§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§^O§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§^O§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §=Z§() : Number
      {
         return this.§[s§;
      }
      
      public function §!I§(param1:Number) : void
      {
         this.§[s§ = param1;
      }
      
      public function §6!m§() : Number
      {
         return this.§[!j§;
      }
      
      public function §^!j§(param1:Number) : void
      {
         this.§[!j§ = param1;
      }
      
      public function §7!r§(param1:uint) : void
      {
         if(this.§+!?§ == param1)
         {
            return;
         }
         this.§+!?§ = param1;
         this.§2!D§();
         if(this.§+!?§ == b2_staticBody)
         {
            this.§^O§.§`!5§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§84§.§`!5§();
         this.§3!T§ = 0;
         var _loc2_:b2ContactEdge = this.§]3§;
         while(_loc2_)
         {
            _loc2_.§+2§.§=!<§();
            _loc2_ = _loc2_.§-!3§;
         }
      }
      
      public function §2!r§() : uint
      {
         return this.§+!?§;
      }
      
      public function §&!@§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!R§ |= b2internal::%6;
         }
         else
         {
            this.§;!R§ &= ~b2internal::%6;
         }
      }
      
      public function §<!l§() : Boolean
      {
         return (this.§;!R§ & b2internal::%6) == b2internal::%6;
      }
      
      public function §!!"§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!R§ |= b2internal::?!O;
         }
         else
         {
            this.§;!R§ &= ~b2internal::?!O;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!R§ |= b2internal::1";
            this.§@!#§ = 0;
         }
         else
         {
            this.§;!R§ &= ~b2internal::1";
            this.§@!#§ = 0;
            this.§^O§.§`!5§();
            this.m_angularVelocity = 0;
            this.§84§.§`!5§();
            this.§3!T§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§;!R§ & b2internal::1") == b2internal::1";
      }
      
      public function §`y§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!R§ |= b2internal::'U;
         }
         else
         {
            this.§;!R§ &= ~b2internal::'U;
         }
         this.§2!D§();
      }
      
      public function §2!L§() : Boolean
      {
         return (this.§;!R§ & b2internal::'U) == b2internal::'U;
      }
      
      public function §#V§(param1:Boolean) : void
      {
         var _loc2_:§<X§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§8!f§())
         {
            return;
         }
         if(param1)
         {
            this.§;!R§ |= b2internal::1T;
            _loc2_ = this.m_world.§`!n§.§<Z§;
            _loc3_ = this.§92§;
            while(_loc3_)
            {
               _loc3_.§0!S§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§3=§;
            }
         }
         else
         {
            this.§;!R§ &= ~b2internal::1T;
            _loc2_ = this.m_world.§`!n§.§<Z§;
            _loc3_ = this.§92§;
            while(_loc3_)
            {
               _loc3_.§!O§(_loc2_);
               _loc3_ = _loc3_.§3=§;
            }
            _loc4_ = this.§]3§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§-!3§;
               this.m_world.§`!n§.§[M§(_loc5_.§+2§);
            }
            this.§]3§ = null;
         }
      }
      
      public function §8!f§() : Boolean
      {
         return (this.§;!R§ & b2internal::1T) == b2internal::1T;
      }
      
      public function §3!r§() : Boolean
      {
         return (this.§;!R§ & b2internal::?!O) == b2internal::?!O;
      }
      
      public function §=!e§() : b2Fixture
      {
         return this.§92§;
      }
      
      public function §+!<§() : b2JointEdge
      {
         return this.§"O§;
      }
      
      public function §9!P§() : b2ControllerEdge
      {
         return this.§-_§;
      }
      
      public function §"x§() : b2ContactEdge
      {
         return this.§]3§;
      }
      
      public function §+!N§() : b2Body
      {
         return this.§3=§;
      }
      
      public function GetUserData() : *
      {
         return this.§?f§;
      }
      
      public function §`!N§(param1:*) : void
      {
         this.§?f§ = param1;
      }
      
      public function §%!D§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §-!6§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §%!`§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§<X§ = this.m_world.§`!n§.§<Z§;
         _loc4_ = this.§92§;
         while(_loc4_)
         {
            _loc4_.§'!@§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§3=§;
         }
      }
      
      b2internal function §0!y§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §9e§(param1:b2Body) : Boolean
      {
         if(this.§+!?§ != b2_dynamicBody && param1.§+!?§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§"O§;
         while(_loc2_)
         {
            if(_loc2_.§,H§ == param1)
            {
               if(_loc2_.§2B§.§0e§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§-!3§;
         }
         return true;
      }
      
      b2internal function §]!W§(param1:Number) : void
      {
         this.m_sweep.§]!W§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§0!y§();
      }
   }
}

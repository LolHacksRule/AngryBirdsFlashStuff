package §`]§
{
   import §!S§.b2Settings;
   import §!S§.b2internal;
   import §"!t§.b2ControllerEdge;
   import §1!1§.§0!6§;
   import §2!+§.b2Contact;
   import §2!+§.b2ContactEdge;
   import §6U§.b2EdgeShape;
   import §6U§.b2MassData;
   import §6U§.b2Shape;
   import §?!h§.b2Mat22;
   import §?!h§.b2Math;
   import §?!h§.b2Sweep;
   import §?!h§.b2Transform;
   import §?!h§.b2Vec2;
   import §^!2§.b2JointEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §1"8§:b2Transform = new b2Transform();
      
      b2internal static var §7!u§:uint = 1;
      
      b2internal static var §%!`§:uint = 2;
      
      b2internal static var §%!3§:uint = 4;
      
      b2internal static var §0"6§:uint = 8;
      
      b2internal static var §[!K§:uint = 16;
      
      b2internal static var §,!R§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §3u§:uint;
      
      b2internal var §""#§:int;
      
      b2internal var §7B§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §#!S§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §'%§:b2Vec2;
      
      b2internal var §9!j§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §0"+§:b2Body;
      
      b2internal var §7<§:b2Body;
      
      b2internal var §7!g§:b2Fixture;
      
      b2internal var §%!;§:int;
      
      b2internal var §1!3§:b2ControllerEdge;
      
      b2internal var §2&§:int;
      
      b2internal var §[!_§:b2JointEdge;
      
      b2internal var §<",§:b2ContactEdge;
      
      b2internal var §<!7§:Number;
      
      b2internal var §+w§:Number;
      
      b2internal var §''§:Number;
      
      b2internal var §-A§:Number;
      
      b2internal var §0!!§:Number;
      
      b2internal var §7!c§:Number;
      
      b2internal var §'Z§:Number;
      
      b2internal var §>P§:Number;
      
      private var §]3§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§#!S§ = new b2Vec2();
         this.§'%§ = new b2Vec2();
         super();
         this.§3u§ = 0;
         if(param1.§!e§)
         {
            this.§3u§ |= b2internal::0"6;
         }
         if(param1.§+!z§)
         {
            this.§3u§ |= b2internal::[!K;
         }
         if(param1.§#_§)
         {
            this.§3u§ |= b2internal::%!3;
         }
         if(param1.§[G§)
         {
            this.§3u§ |= b2internal::%!`;
         }
         if(param1.§!!E§)
         {
            this.§3u§ |= b2internal::,!R;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§+Z§();
         this.m_sweep.§^a§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§[!_§ = null;
         this.§1!3§ = null;
         this.§<",§ = null;
         this.§2&§ = 0;
         this.§0"+§ = null;
         this.§7<§ = null;
         this.§#!S§.SetV(param1.§<!]§);
         this.m_angularVelocity = param1.§5n§;
         this.§7!c§ = param1.§`"$§;
         this.§'Z§ = param1.§"x§;
         this.§'%§.Set(0,0);
         this.§9!j§ = 0;
         this.§>P§ = 0;
         this.§""#§ = param1.type;
         if(this.§""#§ == b2_dynamicBody)
         {
            this.§<!7§ = 1;
            this.§+w§ = 1;
         }
         else
         {
            this.§<!7§ = 0;
            this.§+w§ = 0;
         }
         this.§''§ = 0;
         this.§-A§ = 0;
         this.§0!!§ = param1.§`l§;
         this.§]3§ = param1.§;O§;
         this.§7!g§ = null;
         this.§%!;§ = 0;
      }
      
      private function §<!j§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§3z§().y,param2.§3z§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§'!h§(_loc5_,param2.§3z§());
         _loc6_ = b2Math.§<l§(_loc6_,param2.§@;§());
         _loc6_ = b2Math.§'!h§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§6!h§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§6!h§(param1.§3z§(),param2.§3z§())).Normalize();
         var _loc8_:* = b2Math.§`",§(param1.§3z§(),param2.§@;§()) > 0;
         param1.§?!m§(param2,_loc6_,_loc7_,_loc8_);
         param2.§>!u§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §"k§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§0!6§ = null;
         if(this.m_world.§"!_§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§6t§(this,this.m_xf,param1);
         if(this.§3u§ & b2internal::,!R)
         {
            _loc3_ = this.m_world.§8e§.§`o§;
            _loc2_.§6!2§(_loc3_,this.m_xf);
         }
         _loc2_.§7<§ = this.§7!g§;
         this.§7!g§ = _loc2_;
         ++this.§%!;§;
         _loc2_.m_body = this;
         if(_loc2_.§#y§ > 0)
         {
            this.§]9§();
         }
         this.m_world.§3u§ |= b2World.§`v§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§"k§(_loc3_);
      }
      
      public function §8l§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§0!6§ = null;
         if(this.m_world.§"!_§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§7!g§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§7<§ = param1.§7<§;
               }
               else
               {
                  this.§7!g§ = param1.§7<§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§7<§;
         }
         var _loc5_:b2ContactEdge = this.§<",§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§!B§;
            _loc5_ = _loc5_.§4!e§;
            _loc7_ = _loc6_.§1'§();
            _loc8_ = _loc6_.§?"-§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§8e§.§=!!§(_loc6_);
            }
         }
         if(this.§3u§ & b2internal::,!R)
         {
            _loc9_ = this.m_world.§8e§.§`o§;
            param1.§"!T§(_loc9_);
         }
         param1.§=!!§();
         param1.m_body = null;
         param1.§7<§ = null;
         --this.§%!;§;
         this.§]9§();
      }
      
      public function §5!q§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§"!_§() == true)
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
         var _loc6_:§0!6§ = this.m_world.§8e§.§`o§;
         _loc3_ = this.§7!g§;
         while(_loc3_)
         {
            _loc3_.§3!§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§7<§;
         }
         this.m_world.§8e§.§'!5§();
      }
      
      public function §8T§(param1:b2Transform) : void
      {
         this.§5!q§(param1.position,param1.GetAngle());
      }
      
      public function §!!f§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §9U§(param1:b2Vec2) : void
      {
         this.§5!q§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §"W§(param1:Number) : void
      {
         this.§5!q§(this.GetPosition(),param1);
      }
      
      public function §^§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §4!d§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§""#§ == b2_staticBody)
         {
            return;
         }
         this.§#!S§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§#!S§;
      }
      
      public function §?!s§(param1:Number) : void
      {
         if(this.§""#§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §8"+§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §-&§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§8!d§();
         _loc1_.§#_§ = (this.§3u§ & b2internal::%!3) == b2internal::%!3;
         _loc1_.angle = this.GetAngle();
         _loc1_.§"x§ = this.§'Z§;
         _loc1_.§5n§ = this.m_angularVelocity;
         _loc1_.§+!z§ = (this.§3u§ & b2internal::[!K) == b2internal::[!K;
         _loc1_.§!e§ = (this.§3u§ & b2internal::0"6) == b2internal::0"6;
         _loc1_.§[G§ = (this.§3u§ & b2internal::%!`) == b2internal::%!`;
         _loc1_.§`"$§ = this.§7!c§;
         _loc1_.§<!]§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§;O§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §1!_§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§""#§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§'%§.x += param1.x;
         this.§'%§.y += param1.y;
         this.§9!j§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §^?§(param1:Number) : void
      {
         if(this.§""#§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§9!j§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§""#§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§#!S§.x += this.§+w§ * param1.x;
         this.§#!S§.y += this.§+w§ * param1.y;
         this.m_angularVelocity += this.§-A§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §=!d§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§8"+§();
         var _loc4_:b2Vec2 = this.§^§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§%[§(this.§-&§());
         var _loc8_:b2Fixture = _loc5_.§7!g§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§7<§;
               if(_loc7_)
               {
                  _loc7_.§7<§ = _loc13_;
               }
               else
               {
                  _loc5_.§7!g§ = _loc13_;
               }
               --_loc5_.§%!;§;
               _loc8_.§7<§ = _loc6_.§7!g§;
               _loc6_.§7!g§ = _loc8_;
               ++_loc6_.§%!;§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§7<§;
            }
         }
         _loc5_.§]9§();
         _loc6_.§]9§();
         var _loc9_:b2Vec2 = _loc5_.§^§();
         var _loc10_:b2Vec2 = _loc6_.§^§();
         var _loc11_:b2Vec2 = b2Math.§6!h§(_loc2_,b2Math.§#K§(_loc3_,b2Math.§<l§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§6!h§(_loc2_,b2Math.§#K§(_loc3_,b2Math.§<l§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§?!s§(_loc3_);
         _loc6_.§?!s§(_loc3_);
         _loc5_.§<"5§();
         _loc6_.§<"5§();
         return _loc6_;
      }
      
      public function §&x§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§7!g§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§7<§;
            --param1.§%!;§;
            _loc2_.§7<§ = this.§7!g§;
            this.§7!g§ = _loc2_;
            ++this.§%!;§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§%!;§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§^§();
         var _loc6_:b2Vec2 = _loc4_.§^§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§8"+§();
         var _loc10_:Number = _loc4_.§8"+§();
         _loc3_.§]9§();
         this.§<"5§();
      }
      
      public function GetMass() : Number
      {
         return this.§<!7§;
      }
      
      public function §`!K§() : Number
      {
         return this.§''§;
      }
      
      public function §24§(param1:b2MassData) : void
      {
         param1.§8L§ = this.§<!7§;
         param1.I = this.§''§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §6f§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§"!_§() == false);
         if(this.m_world.§"!_§() == true)
         {
            return;
         }
         if(this.§""#§ != b2_dynamicBody)
         {
            return;
         }
         this.§+w§ = 0;
         this.§''§ = 0;
         this.§-A§ = 0;
         this.§<!7§ = param1.§8L§;
         if(this.§<!7§ <= 0)
         {
            this.§<!7§ = 1;
         }
         this.§+w§ = 1 / this.§<!7§;
         if(param1.I > 0 && (this.§3u§ & b2internal::[!K) == 0)
         {
            this.§''§ = param1.I - this.§<!7§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§-A§ = 1 / this.§''§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§>w§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§#!S§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§#!S§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §]9§() : void
      {
         var _loc4_:b2MassData = null;
         this.§<!7§ = 0;
         this.§+w§ = 0;
         this.§''§ = 0;
         this.§-A§ = 0;
         this.m_sweep.localCenter.§+Z§();
         if(this.§""#§ == b2_staticBody || this.§""#§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§>"-§(0,0);
         var _loc2_:b2Fixture = this.§7!g§;
         while(_loc2_)
         {
            if(_loc2_.§#y§ != 0)
            {
               _loc4_ = _loc2_.§24§();
               this.§<!7§ += _loc4_.§8L§;
               _loc1_.x += _loc4_.center.x * _loc4_.§8L§;
               _loc1_.y += _loc4_.center.y * _loc4_.§8L§;
               this.§''§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§7<§;
         }
         if(this.§<!7§ > 0)
         {
            this.§+w§ = 1 / this.§<!7§;
            _loc1_.x *= this.§+w§;
            _loc1_.y *= this.§+w§;
         }
         else
         {
            this.§<!7§ = 1;
            this.§+w§ = 1;
         }
         if(this.§''§ > 0 && (this.§3u§ & b2internal::[!K) == 0)
         {
            this.§''§ -= this.§<!7§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§''§ *= this.§0!!§;
            b2Settings.b2Assert(this.§''§ > 0);
            this.§-A§ = 1 / this.§''§;
         }
         else
         {
            this.§''§ = 0;
            this.§-A§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§>w§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§#!S§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§#!S§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §8!^§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§"p§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§<!Y§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§ null§(this.m_xf.R,param1);
      }
      
      public function §-F§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§#!S§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§#!S§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §%'§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§#!S§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§#!S§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §'!L§() : Number
      {
         return this.§7!c§;
      }
      
      public function §,!=§(param1:Number) : void
      {
         this.§7!c§ = param1;
      }
      
      public function §9!a§() : Number
      {
         return this.§'Z§;
      }
      
      public function §+n§(param1:Number) : void
      {
         this.§'Z§ = param1;
      }
      
      public function §<w§(param1:uint) : void
      {
         if(this.§""#§ == param1)
         {
            return;
         }
         this.§""#§ = param1;
         this.§]9§();
         if(this.§""#§ == b2_staticBody)
         {
            this.§#!S§.§+Z§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§'%§.§+Z§();
         this.§9!j§ = 0;
         var _loc2_:b2ContactEdge = this.§<",§;
         while(_loc2_)
         {
            _loc2_.§!B§.§%T§();
            _loc2_ = _loc2_.§4!e§;
         }
      }
      
      public function §8!d§() : uint
      {
         return this.§""#§;
      }
      
      public function §3$§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3u§ |= b2internal::0"6;
         }
         else
         {
            this.§3u§ &= ~b2internal::0"6;
         }
      }
      
      public function §?=§() : Boolean
      {
         return (this.§3u§ & b2internal::0"6) == b2internal::0"6;
      }
      
      public function §+!T§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3u§ |= b2internal::%!3;
         }
         else
         {
            this.§3u§ &= ~b2internal::%!3;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3u§ |= b2internal::%!`;
            this.§>P§ = 0;
         }
         else
         {
            this.§3u§ &= ~b2internal::%!`;
            this.§>P§ = 0;
            this.§#!S§.§+Z§();
            this.m_angularVelocity = 0;
            this.§'%§.§+Z§();
            this.§9!j§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§3u§ & b2internal::%!`) == b2internal::%!`;
      }
      
      public function §?!S§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3u§ |= b2internal::[!K;
         }
         else
         {
            this.§3u§ &= ~b2internal::[!K;
         }
         this.§]9§();
      }
      
      public function §`"§() : Boolean
      {
         return (this.§3u§ & b2internal::[!K) == b2internal::[!K;
      }
      
      public function §%"#§(param1:Boolean) : void
      {
         var _loc2_:§0!6§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§^w§())
         {
            return;
         }
         if(param1)
         {
            this.§3u§ |= b2internal::,!R;
            _loc2_ = this.m_world.§8e§.§`o§;
            _loc3_ = this.§7!g§;
            while(_loc3_)
            {
               _loc3_.§6!2§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§7<§;
            }
         }
         else
         {
            this.§3u§ &= ~b2internal::,!R;
            _loc2_ = this.m_world.§8e§.§`o§;
            _loc3_ = this.§7!g§;
            while(_loc3_)
            {
               _loc3_.§"!T§(_loc2_);
               _loc3_ = _loc3_.§7<§;
            }
            _loc4_ = this.§<",§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§4!e§;
               this.m_world.§8e§.§=!!§(_loc5_.§!B§);
            }
            this.§<",§ = null;
         }
      }
      
      public function §^w§() : Boolean
      {
         return (this.§3u§ & b2internal::,!R) == b2internal::,!R;
      }
      
      public function §%>§() : Boolean
      {
         return (this.§3u§ & b2internal::%!3) == b2internal::%!3;
      }
      
      public function §?&§() : b2Fixture
      {
         return this.§7!g§;
      }
      
      public function §=+§() : b2JointEdge
      {
         return this.§[!_§;
      }
      
      public function §>S§() : b2ControllerEdge
      {
         return this.§1!3§;
      }
      
      public function §3!_§() : b2ContactEdge
      {
         return this.§<",§;
      }
      
      public function §&!=§() : b2Body
      {
         return this.§7<§;
      }
      
      public function GetUserData() : *
      {
         return this.§]3§;
      }
      
      public function §'!d§(param1:*) : void
      {
         this.§]3§ = param1;
      }
      
      public function §-D§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §<"5§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §1"8§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§0!6§ = this.m_world.§8e§.§`o§;
         _loc4_ = this.§7!g§;
         while(_loc4_)
         {
            _loc4_.§3!§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§7<§;
         }
      }
      
      b2internal function §^&§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §]P§(param1:b2Body) : Boolean
      {
         if(this.§""#§ != b2_dynamicBody && param1.§""#§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§[!_§;
         while(_loc2_)
         {
            if(_loc2_.§47§ == param1)
            {
               if(_loc2_.§5!z§.§!R§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§4!e§;
         }
         return true;
      }
      
      b2internal function §6F§(param1:Number) : void
      {
         this.m_sweep.§6F§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§^&§();
      }
   }
}

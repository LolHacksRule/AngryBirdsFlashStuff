package §"J§
{
   import §%4§.§0w§;
   import §,!0§.b2JointEdge;
   import §0a§.b2ControllerEdge;
   import §2k§.b2EdgeShape;
   import §2k§.b2MassData;
   import §2k§.b2Shape;
   import §;!e§.b2Contact;
   import §;!e§.b2ContactEdge;
   import §<!a§.b2Mat22;
   import §<!a§.b2Math;
   import §<!a§.b2Sweep;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §6V§:b2Transform = new b2Transform();
      
      b2internal static var §3Q§:uint = 1;
      
      b2internal static var §>J§:uint = 2;
      
      b2internal static var § f§:uint = 4;
      
      b2internal static var §9G§:uint = 8;
      
      b2internal static var §&v§:uint = 16;
      
      b2internal static var §&!"§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §]!+§:uint;
      
      b2internal var §0!,§:int;
      
      b2internal var §;!4§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §]!g§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §1!3§:b2Vec2;
      
      b2internal var § !v§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §+!w§:b2Body;
      
      b2internal var §7!'§:b2Body;
      
      b2internal var §%!9§:b2Fixture;
      
      b2internal var §93§:int;
      
      b2internal var §`"=§:b2ControllerEdge;
      
      b2internal var §-0§:int;
      
      b2internal var §,!j§:b2JointEdge;
      
      b2internal var §<W§:b2ContactEdge;
      
      b2internal var §?j§:Number;
      
      b2internal var §@"!§:Number;
      
      b2internal var §,q§:Number;
      
      b2internal var §=!N§:Number;
      
      b2internal var §9!?§:Number;
      
      b2internal var §6!D§:Number;
      
      b2internal var §4">§:Number;
      
      b2internal var §>"'§:Number;
      
      private var §5![§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§]!g§ = new b2Vec2();
         this.§1!3§ = new b2Vec2();
         super();
         this.§]!+§ = 0;
         if(param1.§7@§)
         {
            this.§]!+§ |= b2internal::9G;
         }
         if(param1.§7'§)
         {
            this.§]!+§ |= b2internal::&v;
         }
         if(param1.§-!3§)
         {
            this.§]!+§ |= b2internal:: f;
         }
         if(param1.§9!'§)
         {
            this.§]!+§ |= b2internal::>J;
         }
         if(param1.§`!U§)
         {
            this.§]!+§ |= b2internal::&!";
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§?b§();
         this.m_sweep.§,>§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§,!j§ = null;
         this.§`"=§ = null;
         this.§<W§ = null;
         this.§-0§ = 0;
         this.§+!w§ = null;
         this.§7!'§ = null;
         this.§]!g§.SetV(param1.§ %§);
         this.m_angularVelocity = param1.§3D§;
         this.§6!D§ = param1.§8!M§;
         this.§4">§ = param1.§^"6§;
         this.§1!3§.Set(0,0);
         this.§ !v§ = 0;
         this.§>"'§ = 0;
         this.§0!,§ = param1.type;
         if(this.§0!,§ == b2_dynamicBody)
         {
            this.§?j§ = 1;
            this.§@"!§ = 1;
         }
         else
         {
            this.§?j§ = 0;
            this.§@"!§ = 0;
         }
         this.§,q§ = 0;
         this.§=!N§ = 0;
         this.§9!?§ = param1.§[!V§;
         this.§5![§ = param1.§ S§;
         this.§%!9§ = null;
         this.§93§ = 0;
      }
      
      private function §5!j§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§>r§().y,param2.§>r§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§2!z§(_loc5_,param2.§>r§());
         _loc6_ = b2Math.§ !r§(_loc6_,param2.§<!I§());
         _loc6_ = b2Math.§2!z§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§'!c§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§'!c§(param1.§>r§(),param2.§>r§())).Normalize();
         var _loc8_:* = b2Math.§8n§(param1.§>r§(),param2.§<!I§()) > 0;
         param1.§1g§(param2,_loc6_,_loc7_,_loc8_);
         param2.§^!Q§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §&^§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§0w§ = null;
         if(this.m_world.§&<§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§`!P§(this,this.m_xf,param1);
         if(this.§]!+§ & b2internal::&!")
         {
            _loc3_ = this.m_world.§>"7§.§58§;
            _loc2_.§1S§(_loc3_,this.m_xf);
         }
         _loc2_.§7!'§ = this.§%!9§;
         this.§%!9§ = _loc2_;
         ++this.§93§;
         _loc2_.m_body = this;
         if(_loc2_.§-k§ > 0)
         {
            this.§"!N§();
         }
         this.m_world.§]!+§ |= b2World.§&=§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§&^§(_loc3_);
      }
      
      public function §][§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§0w§ = null;
         if(this.m_world.§&<§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§%!9§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§7!'§ = param1.§7!'§;
               }
               else
               {
                  this.§%!9§ = param1.§7!'§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§7!'§;
         }
         var _loc5_:b2ContactEdge = this.§<W§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§6M§;
            _loc5_ = _loc5_.§>"2§;
            _loc7_ = _loc6_.§&!K§();
            _loc8_ = _loc6_.§ 1§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§>"7§.§3!0§(_loc6_);
            }
         }
         if(this.§]!+§ & b2internal::&!")
         {
            _loc9_ = this.m_world.§>"7§.§58§;
            param1.§`q§(_loc9_);
         }
         param1.§3!0§();
         param1.m_body = null;
         param1.§7!'§ = null;
         --this.§93§;
         this.§"!N§();
      }
      
      public function §`!"§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§&<§() == true)
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
         var _loc6_:§0w§ = this.m_world.§>"7§.§58§;
         _loc3_ = this.§%!9§;
         while(_loc3_)
         {
            _loc3_.§0Z§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§7!'§;
         }
         this.m_world.§>"7§.§8u§();
      }
      
      public function §4!D§(param1:b2Transform) : void
      {
         this.§`!"§(param1.position,param1.GetAngle());
      }
      
      public function §60§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §8" §(param1:b2Vec2) : void
      {
         this.§`!"§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §4!Y§(param1:Number) : void
      {
         this.§`!"§(this.GetPosition(),param1);
      }
      
      public function §?Q§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §2!%§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§0!,§ == b2_staticBody)
         {
            return;
         }
         this.§]!g§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§]!g§;
      }
      
      public function §5'§(param1:Number) : void
      {
         if(this.§0!,§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §[A§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §#A§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§;!F§();
         _loc1_.§-!3§ = (this.§]!+§ & b2internal:: f) == b2internal:: f;
         _loc1_.angle = this.GetAngle();
         _loc1_.§^"6§ = this.§4">§;
         _loc1_.§3D§ = this.m_angularVelocity;
         _loc1_.§7'§ = (this.§]!+§ & b2internal::&v) == b2internal::&v;
         _loc1_.§7@§ = (this.§]!+§ & b2internal::9G) == b2internal::9G;
         _loc1_.§9!'§ = (this.§]!+§ & b2internal::>J) == b2internal::>J;
         _loc1_.§8!M§ = this.§6!D§;
         _loc1_.§ %§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§ S§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §!?§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§0!,§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§1!3§.x += param1.x;
         this.§1!3§.y += param1.y;
         this.§ !v§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §]!p§(param1:Number) : void
      {
         if(this.§0!,§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§ !v§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§0!,§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§]!g§.x += this.§@"!§ * param1.x;
         this.§]!g§.y += this.§@"!§ * param1.y;
         this.m_angularVelocity += this.§=!N§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §'`§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§[A§();
         var _loc4_:b2Vec2 = this.§?Q§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§`0§(this.§#A§());
         var _loc8_:b2Fixture = _loc5_.§%!9§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§7!'§;
               if(_loc7_)
               {
                  _loc7_.§7!'§ = _loc13_;
               }
               else
               {
                  _loc5_.§%!9§ = _loc13_;
               }
               --_loc5_.§93§;
               _loc8_.§7!'§ = _loc6_.§%!9§;
               _loc6_.§%!9§ = _loc8_;
               ++_loc6_.§93§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§7!'§;
            }
         }
         _loc5_.§"!N§();
         _loc6_.§"!N§();
         var _loc9_:b2Vec2 = _loc5_.§?Q§();
         var _loc10_:b2Vec2 = _loc6_.§?Q§();
         var _loc11_:b2Vec2 = b2Math.§'!c§(_loc2_,b2Math.§!!R§(_loc3_,b2Math.§ !r§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§'!c§(_loc2_,b2Math.§!!R§(_loc3_,b2Math.§ !r§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§5'§(_loc3_);
         _loc6_.§5'§(_loc3_);
         _loc5_.§]"!§();
         _loc6_.§]"!§();
         return _loc6_;
      }
      
      public function override(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§%!9§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§7!'§;
            --param1.§93§;
            _loc2_.§7!'§ = this.§%!9§;
            this.§%!9§ = _loc2_;
            ++this.§93§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§93§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§?Q§();
         var _loc6_:b2Vec2 = _loc4_.§?Q§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§[A§();
         var _loc10_:Number = _loc4_.§[A§();
         _loc3_.§"!N§();
         this.§]"!§();
      }
      
      public function GetMass() : Number
      {
         return this.§?j§;
      }
      
      public function §#!%§() : Number
      {
         return this.§,q§;
      }
      
      public function §!!o§(param1:b2MassData) : void
      {
         param1.§3,§ = this.§?j§;
         param1.I = this.§,q§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §#!?§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§&<§() == false);
         if(this.m_world.§&<§() == true)
         {
            return;
         }
         if(this.§0!,§ != b2_dynamicBody)
         {
            return;
         }
         this.§@"!§ = 0;
         this.§,q§ = 0;
         this.§=!N§ = 0;
         this.§?j§ = param1.§3,§;
         if(this.§?j§ <= 0)
         {
            this.§?j§ = 1;
         }
         this.§@"!§ = 1 / this.§?j§;
         if(param1.I > 0 && (this.§]!+§ & b2internal::&v) == 0)
         {
            this.§,q§ = param1.I - this.§?j§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§=!N§ = 1 / this.§,q§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§#!K§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§]!g§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§]!g§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §"!N§() : void
      {
         var _loc4_:b2MassData = null;
         this.§?j§ = 0;
         this.§@"!§ = 0;
         this.§,q§ = 0;
         this.§=!N§ = 0;
         this.m_sweep.localCenter.§?b§();
         if(this.§0!,§ == b2_staticBody || this.§0!,§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§[]§(0,0);
         var _loc2_:b2Fixture = this.§%!9§;
         while(_loc2_)
         {
            if(_loc2_.§-k§ != 0)
            {
               _loc4_ = _loc2_.§!!o§();
               this.§?j§ += _loc4_.§3,§;
               _loc1_.x += _loc4_.center.x * _loc4_.§3,§;
               _loc1_.y += _loc4_.center.y * _loc4_.§3,§;
               this.§,q§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§7!'§;
         }
         if(this.§?j§ > 0)
         {
            this.§@"!§ = 1 / this.§?j§;
            _loc1_.x *= this.§@"!§;
            _loc1_.y *= this.§@"!§;
         }
         else
         {
            this.§?j§ = 1;
            this.§@"!§ = 1;
         }
         if(this.§,q§ > 0 && (this.§]!+§ & b2internal::&v) == 0)
         {
            this.§,q§ -= this.§?j§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§,q§ *= this.§9!?§;
            b2Settings.b2Assert(this.§,q§ > 0);
            this.§=!N§ = 1 / this.§,q§;
         }
         else
         {
            this.§,q§ = 0;
            this.§=!N§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§#!K§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§]!g§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§]!g§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §!!7§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§<!G§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§"!O§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§#"-§(this.m_xf.R,param1);
      }
      
      public function §7V§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§]!g§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§]!g§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §["+§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§]!g§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§]!g§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §%!$§() : Number
      {
         return this.§6!D§;
      }
      
      public function § set§(param1:Number) : void
      {
         this.§6!D§ = param1;
      }
      
      public function §@!I§() : Number
      {
         return this.§4">§;
      }
      
      public function §23§(param1:Number) : void
      {
         this.§4">§ = param1;
      }
      
      public function §;!X§(param1:uint) : void
      {
         if(this.§0!,§ == param1)
         {
            return;
         }
         this.§0!,§ = param1;
         this.§"!N§();
         if(this.§0!,§ == b2_staticBody)
         {
            this.§]!g§.§?b§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§1!3§.§?b§();
         this.§ !v§ = 0;
         var _loc2_:b2ContactEdge = this.§<W§;
         while(_loc2_)
         {
            _loc2_.§6M§.§"N§();
            _loc2_ = _loc2_.§>"2§;
         }
      }
      
      public function §;!F§() : uint
      {
         return this.§0!,§;
      }
      
      public function §?z§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!+§ |= b2internal::9G;
         }
         else
         {
            this.§]!+§ &= ~b2internal::9G;
         }
      }
      
      public function §>S§() : Boolean
      {
         return (this.§]!+§ & b2internal::9G) == b2internal::9G;
      }
      
      public function §5Y§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!+§ |= b2internal:: f;
         }
         else
         {
            this.§]!+§ &= ~b2internal:: f;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!+§ |= b2internal::>J;
            this.§>"'§ = 0;
         }
         else
         {
            this.§]!+§ &= ~b2internal::>J;
            this.§>"'§ = 0;
            this.§]!g§.§?b§();
            this.m_angularVelocity = 0;
            this.§1!3§.§?b§();
            this.§ !v§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§]!+§ & b2internal::>J) == b2internal::>J;
      }
      
      public function §0!o§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!+§ |= b2internal::&v;
         }
         else
         {
            this.§]!+§ &= ~b2internal::&v;
         }
         this.§"!N§();
      }
      
      public function §8"+§() : Boolean
      {
         return (this.§]!+§ & b2internal::&v) == b2internal::&v;
      }
      
      public function §=T§(param1:Boolean) : void
      {
         var _loc2_:§0w§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§0!9§())
         {
            return;
         }
         if(param1)
         {
            this.§]!+§ |= b2internal::&!";
            _loc2_ = this.m_world.§>"7§.§58§;
            _loc3_ = this.§%!9§;
            while(_loc3_)
            {
               _loc3_.§1S§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§7!'§;
            }
         }
         else
         {
            this.§]!+§ &= ~b2internal::&!";
            _loc2_ = this.m_world.§>"7§.§58§;
            _loc3_ = this.§%!9§;
            while(_loc3_)
            {
               _loc3_.§`q§(_loc2_);
               _loc3_ = _loc3_.§7!'§;
            }
            _loc4_ = this.§<W§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§>"2§;
               this.m_world.§>"7§.§3!0§(_loc5_.§6M§);
            }
            this.§<W§ = null;
         }
      }
      
      public function §0!9§() : Boolean
      {
         return (this.§]!+§ & b2internal::&!") == b2internal::&!";
      }
      
      public function §1!$§() : Boolean
      {
         return (this.§]!+§ & b2internal:: f) == b2internal:: f;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§%!9§;
      }
      
      public function §-]§() : b2JointEdge
      {
         return this.§,!j§;
      }
      
      public function §"!_§() : b2ControllerEdge
      {
         return this.§`"=§;
      }
      
      public function §3!$§() : b2ContactEdge
      {
         return this.§<W§;
      }
      
      public function §7"3§() : b2Body
      {
         return this.§7!'§;
      }
      
      public function GetUserData() : *
      {
         return this.§5![§;
      }
      
      public function §"%§(param1:*) : void
      {
         this.§5![§ = param1;
      }
      
      public function §4K§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §]"!§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §6V§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§0w§ = this.m_world.§>"7§.§58§;
         _loc4_ = this.§%!9§;
         while(_loc4_)
         {
            _loc4_.§0Z§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§7!'§;
         }
      }
      
      b2internal function §=&§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §5"8§(param1:b2Body) : Boolean
      {
         if(this.§0!,§ != b2_dynamicBody && param1.§0!,§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§,!j§;
         while(_loc2_)
         {
            if(_loc2_.§;5§ == param1)
            {
               if(_loc2_.§"!3§.§6I§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§>"2§;
         }
         return true;
      }
      
      b2internal function §%E§(param1:Number) : void
      {
         this.m_sweep.§%E§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§=&§();
      }
   }
}

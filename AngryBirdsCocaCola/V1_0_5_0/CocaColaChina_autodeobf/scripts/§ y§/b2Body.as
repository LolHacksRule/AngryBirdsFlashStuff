package § y§
{
   import §!u§.§5c§;
   import §"!4§.b2JointEdge;
   import §%!U§.b2ControllerEdge;
   import §0b§.b2Contact;
   import §0b§.b2ContactEdge;
   import §54§.b2Settings;
   import §54§.b2internal;
   import §;h§.b2Mat22;
   import §;h§.b2Math;
   import §;h§.b2Sweep;
   import §;h§.b2Transform;
   import §;h§.b2Vec2;
   import §]!7§.b2EdgeShape;
   import §]!7§.b2MassData;
   import §]!7§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §8N§:b2Transform = new b2Transform();
      
      b2internal static var §!P§:uint = 1;
      
      b2internal static var §[!U§:uint = 2;
      
      b2internal static var §0!X§:uint = 4;
      
      b2internal static var §%!E§:uint = 8;
      
      b2internal static var §4>§:uint = 16;
      
      b2internal static var §<!1§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §"N§:uint;
      
      b2internal var §2+§:int;
      
      b2internal var §'&§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §+!W§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §;!B§:b2Vec2;
      
      b2internal var §64§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §7G§:b2Body;
      
      b2internal var §&!+§:b2Body;
      
      b2internal var §'!=§:b2Fixture;
      
      b2internal var §`!%§:int;
      
      b2internal var §8!"§:b2ControllerEdge;
      
      b2internal var §0!^§:int;
      
      b2internal var §?!4§:b2JointEdge;
      
      b2internal var §"!N§:b2ContactEdge;
      
      b2internal var §?F§:Number;
      
      b2internal var §!S§:Number;
      
      b2internal var §'!4§:Number;
      
      b2internal var §2`§:Number;
      
      b2internal var §+!&§:Number;
      
      b2internal var §,B§:Number;
      
      b2internal var §1+§:Number;
      
      b2internal var §[&§:Number;
      
      private var §<8§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§+!W§ = new b2Vec2();
         this.§;!B§ = new b2Vec2();
         super();
         this.§"N§ = 0;
         if(param1.§=R§)
         {
            this.§"N§ |= b2internal::%!E;
         }
         if(param1.§=N§)
         {
            this.§"N§ |= b2internal::4>;
         }
         if(param1.§5l§)
         {
            this.§"N§ |= b2internal::0!X;
         }
         if(param1.§5E§)
         {
            this.§"N§ |= b2internal::[!U;
         }
         if(param1.§=S§)
         {
            this.§"N§ |= b2internal::<!1;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§9!V§();
         this.m_sweep.§]S§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§?!4§ = null;
         this.§8!"§ = null;
         this.§"!N§ = null;
         this.§0!^§ = 0;
         this.§7G§ = null;
         this.§&!+§ = null;
         this.§+!W§.SetV(param1.§3z§);
         this.m_angularVelocity = param1.§=q§;
         this.§,B§ = param1.§4§;
         this.§1+§ = param1.§`k§;
         this.§;!B§.Set(0,0);
         this.§64§ = 0;
         this.§[&§ = 0;
         this.§2+§ = param1.type;
         if(this.§2+§ == b2_dynamicBody)
         {
            this.§?F§ = 1;
            this.§!S§ = 1;
         }
         else
         {
            this.§?F§ = 0;
            this.§!S§ = 0;
         }
         this.§'!4§ = 0;
         this.§2`§ = 0;
         this.§+!&§ = param1.§-%§;
         this.§<8§ = param1.§^!V§;
         this.§'!=§ = null;
         this.§`!%§ = 0;
      }
      
      private function §"!F§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§=$§().y,param2.§=$§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§?!R§(_loc5_,param2.§=$§());
         _loc6_ = b2Math.§"!S§(_loc6_,param2.§03§());
         _loc6_ = b2Math.§?!R§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§ !%§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§ !%§(param1.§=$§(),param2.§=$§())).Normalize();
         var _loc8_:* = b2Math.§]%§(param1.§=$§(),param2.§03§()) > 0;
         param1.§import§(param2,_loc6_,_loc7_,_loc8_);
         param2.§4d§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §]D§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§5c§ = null;
         if(this.m_world.§>!U§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§`Q§(this,this.m_xf,param1);
         if(this.§"N§ & b2internal::<!1)
         {
            _loc3_ = this.m_world.§!r§.§]!V§;
            _loc2_.§7!@§(_loc3_,this.m_xf);
         }
         _loc2_.§&!+§ = this.§'!=§;
         this.§'!=§ = _loc2_;
         ++this.§`!%§;
         _loc2_.m_body = this;
         if(_loc2_.§77§ > 0)
         {
            this.§#!c§();
         }
         this.m_world.§"N§ |= b2World.§1!_§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§]D§(_loc3_);
      }
      
      public function § !C§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§5c§ = null;
         if(this.m_world.§>!U§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§'!=§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§&!+§ = param1.§&!+§;
               }
               else
               {
                  this.§'!=§ = param1.§&!+§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§&!+§;
         }
         var _loc5_:b2ContactEdge = this.§"!N§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§`!T§;
            _loc5_ = _loc5_.§'_§;
            _loc7_ = _loc6_.§^Z§();
            _loc8_ = _loc6_.§3<§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§!r§.§5!,§(_loc6_);
            }
         }
         if(this.§"N§ & b2internal::<!1)
         {
            _loc9_ = this.m_world.§!r§.§]!V§;
            param1.§@q§(_loc9_);
         }
         param1.§5!,§();
         param1.m_body = null;
         param1.§&!+§ = null;
         --this.§`!%§;
         this.§#!c§();
      }
      
      public function §5!B§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§>!U§() == true)
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
         var _loc6_:§5c§ = this.m_world.§!r§.§]!V§;
         _loc3_ = this.§'!=§;
         while(_loc3_)
         {
            _loc3_.§0!W§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§&!+§;
         }
         this.m_world.§!r§.§'=§();
      }
      
      public function §1G§(param1:b2Transform) : void
      {
         this.§5!B§(param1.position,param1.GetAngle());
      }
      
      public function §0!S§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §2^§(param1:b2Vec2) : void
      {
         this.§5!B§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §9@§(param1:Number) : void
      {
         this.§5!B§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §=l§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§2+§ == b2_staticBody)
         {
            return;
         }
         this.§+!W§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§+!W§;
      }
      
      public function §6!D§(param1:Number) : void
      {
         if(this.§2+§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §6!L§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§`!Q§();
         _loc1_.§5l§ = (this.§"N§ & b2internal::0!X) == b2internal::0!X;
         _loc1_.angle = this.GetAngle();
         _loc1_.§`k§ = this.§1+§;
         _loc1_.§=q§ = this.m_angularVelocity;
         _loc1_.§=N§ = (this.§"N§ & b2internal::4>) == b2internal::4>;
         _loc1_.§=R§ = (this.§"N§ & b2internal::%!E) == b2internal::%!E;
         _loc1_.§5E§ = (this.§"N§ & b2internal::[!U) == b2internal::[!U;
         _loc1_.§4§ = this.§,B§;
         _loc1_.§3z§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§^!V§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §]P§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§2+§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§;!B§.x += param1.x;
         this.§;!B§.y += param1.y;
         this.§64§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §]`§(param1:Number) : void
      {
         if(this.§2+§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§64§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§2+§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§+!W§.x += this.§!S§ * param1.x;
         this.§+!W§.y += this.§!S§ * param1.y;
         this.m_angularVelocity += this.§2`§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §"M§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§9[§(this.§6!L§());
         var _loc8_:b2Fixture = _loc5_.§'!=§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§&!+§;
               if(_loc7_)
               {
                  _loc7_.§&!+§ = _loc13_;
               }
               else
               {
                  _loc5_.§'!=§ = _loc13_;
               }
               --_loc5_.§`!%§;
               _loc8_.§&!+§ = _loc6_.§'!=§;
               _loc6_.§'!=§ = _loc8_;
               ++_loc6_.§`!%§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§&!+§;
            }
         }
         _loc5_.§#!c§();
         _loc6_.§#!c§();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§ !%§(_loc2_,b2Math.§1!S§(_loc3_,b2Math.§"!S§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§ !%§(_loc2_,b2Math.§1!S§(_loc3_,b2Math.§"!S§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§6!D§(_loc3_);
         _loc6_.§6!D§(_loc3_);
         _loc5_.§3t§();
         _loc6_.§3t§();
         return _loc6_;
      }
      
      public function §0!c§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§'!=§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§&!+§;
            --param1.§`!%§;
            _loc2_.§&!+§ = this.§'!=§;
            this.§'!=§ = _loc2_;
            ++this.§`!%§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§`!%§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.GetWorldCenter();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§#!c§();
         this.§3t§();
      }
      
      public function GetMass() : Number
      {
         return this.§?F§;
      }
      
      public function §#>§() : Number
      {
         return this.§'!4§;
      }
      
      public function §!!M§(param1:b2MassData) : void
      {
         param1.§7W§ = this.§?F§;
         param1.§`D§ = this.§'!4§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §2i§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§>!U§() == false);
         if(this.m_world.§>!U§() == true)
         {
            return;
         }
         if(this.§2+§ != b2_dynamicBody)
         {
            return;
         }
         this.§!S§ = 0;
         this.§'!4§ = 0;
         this.§2`§ = 0;
         this.§?F§ = param1.§7W§;
         if(this.§?F§ <= 0)
         {
            this.§?F§ = 1;
         }
         this.§!S§ = 1 / this.§?F§;
         if(param1.§`D§ > 0 && (this.§"N§ & b2internal::4>) == 0)
         {
            this.§'!4§ = param1.§`D§ - this.§?F§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§2`§ = 1 / this.§'!4§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§9l§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§+!W§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§+!W§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §#!c§() : void
      {
         var _loc4_:b2MassData = null;
         this.§?F§ = 0;
         this.§!S§ = 0;
         this.§'!4§ = 0;
         this.§2`§ = 0;
         this.m_sweep.localCenter.§9!V§();
         if(this.§2+§ == b2_staticBody || this.§2+§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§4!b§(0,0);
         var _loc2_:b2Fixture = this.§'!=§;
         while(_loc2_)
         {
            if(_loc2_.§77§ != 0)
            {
               _loc4_ = _loc2_.§!!M§();
               this.§?F§ += _loc4_.§7W§;
               _loc1_.x += _loc4_.center.x * _loc4_.§7W§;
               _loc1_.y += _loc4_.center.y * _loc4_.§7W§;
               this.§'!4§ += _loc4_.§`D§;
            }
            _loc2_ = _loc2_.§&!+§;
         }
         if(this.§?F§ > 0)
         {
            this.§!S§ = 1 / this.§?F§;
            _loc1_.x *= this.§!S§;
            _loc1_.y *= this.§!S§;
         }
         else
         {
            this.§?F§ = 1;
            this.§!S§ = 1;
         }
         if(this.§'!4§ > 0 && (this.§"N§ & b2internal::4>) == 0)
         {
            this.§'!4§ -= this.§?F§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§'!4§ *= this.§+!&§;
            b2Settings.b2Assert(this.§'!4§ > 0);
            this.§2`§ = 1 / this.§'!4§;
         }
         else
         {
            this.§'!4§ = 0;
            this.§2`§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§9l§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§+!W§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§+!W§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §@7§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§0q§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§>![§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§[B§(this.m_xf.R,param1);
      }
      
      public function §4+§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§+!W§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§+!W§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §^<§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§+!W§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§+!W§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §4!&§() : Number
      {
         return this.§,B§;
      }
      
      public function § Q§(param1:Number) : void
      {
         this.§,B§ = param1;
      }
      
      public function §2V§() : Number
      {
         return this.§1+§;
      }
      
      public function §"!3§(param1:Number) : void
      {
         this.§1+§ = param1;
      }
      
      public function §?!<§(param1:uint) : void
      {
         if(this.§2+§ == param1)
         {
            return;
         }
         this.§2+§ = param1;
         this.§#!c§();
         if(this.§2+§ == b2_staticBody)
         {
            this.§+!W§.§9!V§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§;!B§.§9!V§();
         this.§64§ = 0;
         var _loc2_:b2ContactEdge = this.§"!N§;
         while(_loc2_)
         {
            _loc2_.§`!T§.§7!^§();
            _loc2_ = _loc2_.§'_§;
         }
      }
      
      public function §`!Q§() : uint
      {
         return this.§2+§;
      }
      
      public function §!I§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"N§ |= b2internal::%!E;
         }
         else
         {
            this.§"N§ &= ~b2internal::%!E;
         }
      }
      
      public function §9+§() : Boolean
      {
         return (this.§"N§ & b2internal::%!E) == b2internal::%!E;
      }
      
      public function §9!E§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"N§ |= b2internal::0!X;
         }
         else
         {
            this.§"N§ &= ~b2internal::0!X;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"N§ |= b2internal::[!U;
            this.§[&§ = 0;
         }
         else
         {
            this.§"N§ &= ~b2internal::[!U;
            this.§[&§ = 0;
            this.§+!W§.§9!V§();
            this.m_angularVelocity = 0;
            this.§;!B§.§9!V§();
            this.§64§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§"N§ & b2internal::[!U) == b2internal::[!U;
      }
      
      public function §[!J§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"N§ |= b2internal::4>;
         }
         else
         {
            this.§"N§ &= ~b2internal::4>;
         }
         this.§#!c§();
      }
      
      public function §15§() : Boolean
      {
         return (this.§"N§ & b2internal::4>) == b2internal::4>;
      }
      
      public function §3!b§(param1:Boolean) : void
      {
         var _loc2_:§5c§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§"C§())
         {
            return;
         }
         if(param1)
         {
            this.§"N§ |= b2internal::<!1;
            _loc2_ = this.m_world.§!r§.§]!V§;
            _loc3_ = this.§'!=§;
            while(_loc3_)
            {
               _loc3_.§7!@§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§&!+§;
            }
         }
         else
         {
            this.§"N§ &= ~b2internal::<!1;
            _loc2_ = this.m_world.§!r§.§]!V§;
            _loc3_ = this.§'!=§;
            while(_loc3_)
            {
               _loc3_.§@q§(_loc2_);
               _loc3_ = _loc3_.§&!+§;
            }
            _loc4_ = this.§"!N§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§'_§;
               this.m_world.§!r§.§5!,§(_loc5_.§`!T§);
            }
            this.§"!N§ = null;
         }
      }
      
      public function §"C§() : Boolean
      {
         return (this.§"N§ & b2internal::<!1) == b2internal::<!1;
      }
      
      public function §"!#§() : Boolean
      {
         return (this.§"N§ & b2internal::0!X) == b2internal::0!X;
      }
      
      public function §0!2§() : b2Fixture
      {
         return this.§'!=§;
      }
      
      public function §9$§() : b2JointEdge
      {
         return this.§?!4§;
      }
      
      public function §6I§() : b2ControllerEdge
      {
         return this.§8!"§;
      }
      
      public function §1!D§() : b2ContactEdge
      {
         return this.§"!N§;
      }
      
      public function §3!I§() : b2Body
      {
         return this.§&!+§;
      }
      
      public function GetUserData() : *
      {
         return this.§<8§;
      }
      
      public function §'!W§(param1:*) : void
      {
         this.§<8§ = param1;
      }
      
      public function §!c§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §3t§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §8N§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§5c§ = this.m_world.§!r§.§]!V§;
         _loc4_ = this.§'!=§;
         while(_loc4_)
         {
            _loc4_.§0!W§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§&!+§;
         }
      }
      
      b2internal function §-!d§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §!=§(param1:b2Body) : Boolean
      {
         if(this.§2+§ != b2_dynamicBody && param1.§2+§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§?!4§;
         while(_loc2_)
         {
            if(_loc2_.§3m§ == param1)
            {
               if(_loc2_.§8-§.§2@§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§'_§;
         }
         return true;
      }
      
      b2internal function §[K§(param1:Number) : void
      {
         this.m_sweep.§[K§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§-!d§();
      }
   }
}

package §-0§
{
   import §#!K§.b2JointEdge;
   import §&!P§.§<s§;
   import §&!g§.b2ControllerEdge;
   import §+!o§.b2EdgeShape;
   import §+!o§.b2MassData;
   import §+!o§.b2Shape;
   import §4!4§.b2Contact;
   import §4!4§.b2ContactEdge;
   import §@g§.b2Settings;
   import §@g§.b2internal;
   import §^!%§.b2Mat22;
   import §^!%§.b2Math;
   import §^!%§.b2Sweep;
   import §^!%§.b2Transform;
   import §^!%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var include:b2Transform = new b2Transform();
      
      b2internal static var §"Z§:uint = 1;
      
      b2internal static var §%!W§:uint = 2;
      
      b2internal static var §0!S§:uint = 4;
      
      b2internal static var §;m§:uint = 8;
      
      b2internal static var §7M§:uint = 16;
      
      b2internal static var §`!7§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §+! §:uint;
      
      b2internal var §,!f§:int;
      
      b2internal var §'L§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §'!f§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §<q§:b2Vec2;
      
      b2internal var §"b§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §9!R§:b2Body;
      
      b2internal var §2G§:b2Body;
      
      b2internal var §-!A§:b2Fixture;
      
      b2internal var §!<§:int;
      
      b2internal var §-e§:b2ControllerEdge;
      
      b2internal var §]V§:int;
      
      b2internal var §`A§:b2JointEdge;
      
      b2internal var §#![§:b2ContactEdge;
      
      b2internal var §-!b§:Number;
      
      b2internal var §!=§:Number;
      
      b2internal var §%!E§:Number;
      
      b2internal var §4!i§:Number;
      
      b2internal var §,!o§:Number;
      
      b2internal var §^!P§:Number;
      
      b2internal var §!!^§:Number;
      
      b2internal var §'%§:Number;
      
      private var §6a§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§'!f§ = new b2Vec2();
         this.§<q§ = new b2Vec2();
         super();
         this.§+! § = 0;
         if(param1.§"5§)
         {
            this.§+! § |= b2internal::;m;
         }
         if(param1.§%!M§)
         {
            this.§+! § |= b2internal::7M;
         }
         if(param1.§&!#§)
         {
            this.§+! § |= b2internal::0!S;
         }
         if(param1.§!Z§)
         {
            this.§+! § |= b2internal::%!W;
         }
         if(param1.§8!p§)
         {
            this.§+! § |= b2internal::`!7;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§4[§();
         this.m_sweep.§1!_§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§`A§ = null;
         this.§-e§ = null;
         this.§#![§ = null;
         this.§]V§ = 0;
         this.§9!R§ = null;
         this.§2G§ = null;
         this.§'!f§.SetV(param1.§%R§);
         this.m_angularVelocity = param1.§"!?§;
         this.§^!P§ = param1.§,"§;
         this.§!!^§ = param1.§1!=§;
         this.§<q§.Set(0,0);
         this.§"b§ = 0;
         this.§'%§ = 0;
         this.§,!f§ = param1.type;
         if(this.§,!f§ == b2_dynamicBody)
         {
            this.§-!b§ = 1;
            this.§!=§ = 1;
         }
         else
         {
            this.§-!b§ = 0;
            this.§!=§ = 0;
         }
         this.§%!E§ = 0;
         this.§4!i§ = 0;
         this.§,!o§ = param1.§-!0§;
         this.§6a§ = param1.§6=§;
         this.§-!A§ = null;
         this.§!<§ = 0;
      }
      
      private function §`,§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§2!m§().y,param2.§2!m§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§;i§(_loc5_,param2.§2!m§());
         _loc6_ = b2Math.§6!a§(_loc6_,param2.§7U§());
         _loc6_ = b2Math.§;i§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§3!-§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§3!-§(param1.§2!m§(),param2.§2!m§())).Normalize();
         var _loc8_:* = b2Math.§83§(param1.§2!m§(),param2.§7U§()) > 0;
         param1.§?G§(param2,_loc6_,_loc7_,_loc8_);
         param2.§7=§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §[!=§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§<s§ = null;
         if(this.m_world.§2!T§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§6j§(this,this.m_xf,param1);
         if(this.§+! § & b2internal::`!7)
         {
            _loc3_ = this.m_world.§1'§.§'!1§;
            _loc2_.§%t§(_loc3_,this.m_xf);
         }
         _loc2_.§2G§ = this.§-!A§;
         this.§-!A§ = _loc2_;
         ++this.§!<§;
         _loc2_.m_body = this;
         if(_loc2_.§;!N§ > 0)
         {
            this.§;!a§();
         }
         this.m_world.§+! § |= b2World.§-!`§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§[!=§(_loc3_);
      }
      
      public function §;E§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§<s§ = null;
         if(this.m_world.§2!T§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§-!A§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§2G§ = param1.§2G§;
               }
               else
               {
                  this.§-!A§ = param1.§2G§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§2G§;
         }
         var _loc5_:b2ContactEdge = this.§#![§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§@m§;
            _loc5_ = _loc5_.§@!A§;
            _loc7_ = _loc6_.§<D§();
            _loc8_ = _loc6_.§5!?§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§1'§.§ B§(_loc6_);
            }
         }
         if(this.§+! § & b2internal::`!7)
         {
            _loc9_ = this.m_world.§1'§.§'!1§;
            param1.§;!Q§(_loc9_);
         }
         param1.§ B§();
         param1.m_body = null;
         param1.§2G§ = null;
         --this.§!<§;
         this.§;!a§();
      }
      
      public function §@!V§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§2!T§() == true)
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
         var _loc6_:§<s§ = this.m_world.§1'§.§'!1§;
         _loc3_ = this.§-!A§;
         while(_loc3_)
         {
            _loc3_.§7P§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§2G§;
         }
         this.m_world.§1'§.§>P§();
      }
      
      public function §-!p§(param1:b2Transform) : void
      {
         this.§@!V§(param1.position,param1.GetAngle());
      }
      
      public function §>!%§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §%K§(param1:b2Vec2) : void
      {
         this.§@!V§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §1!<§(param1:Number) : void
      {
         this.§@!V§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §>%§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§,!f§ == b2_staticBody)
         {
            return;
         }
         this.§'!f§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§'!f§;
      }
      
      public function §&!'§(param1:Number) : void
      {
         if(this.§,!f§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §^!&§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §,2§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§use§();
         _loc1_.§&!#§ = (this.§+! § & b2internal::0!S) == b2internal::0!S;
         _loc1_.angle = this.GetAngle();
         _loc1_.§1!=§ = this.§!!^§;
         _loc1_.§"!?§ = this.m_angularVelocity;
         _loc1_.§%!M§ = (this.§+! § & b2internal::7M) == b2internal::7M;
         _loc1_.§"5§ = (this.§+! § & b2internal::;m) == b2internal::;m;
         _loc1_.§!Z§ = (this.§+! § & b2internal::%!W) == b2internal::%!W;
         _loc1_.§,"§ = this.§^!P§;
         _loc1_.§%R§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§6=§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §9!X§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§,!f§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§<q§.x += param1.x;
         this.§<q§.y += param1.y;
         this.§"b§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §;!o§(param1:Number) : void
      {
         if(this.§,!f§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§"b§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§,!f§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§'!f§.x += this.§!=§ * param1.x;
         this.§'!f§.y += this.§!=§ * param1.y;
         this.m_angularVelocity += this.§4!i§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §-!j§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§^!&§();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§4F§(this.§,2§());
         var _loc8_:b2Fixture = _loc5_.§-!A§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§2G§;
               if(_loc7_)
               {
                  _loc7_.§2G§ = _loc13_;
               }
               else
               {
                  _loc5_.§-!A§ = _loc13_;
               }
               --_loc5_.§!<§;
               _loc8_.§2G§ = _loc6_.§-!A§;
               _loc6_.§-!A§ = _loc8_;
               ++_loc6_.§!<§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§2G§;
            }
         }
         _loc5_.§;!a§();
         _loc6_.§;!a§();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§3!-§(_loc2_,b2Math.§=$§(_loc3_,b2Math.§6!a§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§3!-§(_loc2_,b2Math.§=$§(_loc3_,b2Math.§6!a§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§&!'§(_loc3_);
         _loc6_.§&!'§(_loc3_);
         _loc5_.§4l§();
         _loc6_.§4l§();
         return _loc6_;
      }
      
      public function §"S§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§-!A§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§2G§;
            --param1.§!<§;
            _loc2_.§2G§ = this.§-!A§;
            this.§-!A§ = _loc2_;
            ++this.§!<§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§!<§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.GetWorldCenter();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§^!&§();
         var _loc10_:Number = _loc4_.§^!&§();
         _loc3_.§;!a§();
         this.§4l§();
      }
      
      public function GetMass() : Number
      {
         return this.§-!b§;
      }
      
      public function §1!p§() : Number
      {
         return this.§%!E§;
      }
      
      public function §0r§(param1:b2MassData) : void
      {
         param1.§14§ = this.§-!b§;
         param1.§2+§ = this.§%!E§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §^g§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§2!T§() == false);
         if(this.m_world.§2!T§() == true)
         {
            return;
         }
         if(this.§,!f§ != b2_dynamicBody)
         {
            return;
         }
         this.§!=§ = 0;
         this.§%!E§ = 0;
         this.§4!i§ = 0;
         this.§-!b§ = param1.§14§;
         if(this.§-!b§ <= 0)
         {
            this.§-!b§ = 1;
         }
         this.§!=§ = 1 / this.§-!b§;
         if(param1.§2+§ > 0 && (this.§+! § & b2internal::7M) == 0)
         {
            this.§%!E§ = param1.§2+§ - this.§-!b§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§4!i§ = 1 / this.§%!E§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§=o§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§'!f§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§'!f§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §;!a§() : void
      {
         var _loc4_:b2MassData = null;
         this.§-!b§ = 0;
         this.§!=§ = 0;
         this.§%!E§ = 0;
         this.§4!i§ = 0;
         this.m_sweep.localCenter.§4[§();
         if(this.§,!f§ == b2_staticBody || this.§,!f§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§>!F§(0,0);
         var _loc2_:b2Fixture = this.§-!A§;
         while(_loc2_)
         {
            if(_loc2_.§;!N§ != 0)
            {
               _loc4_ = _loc2_.§0r§();
               this.§-!b§ += _loc4_.§14§;
               _loc1_.x += _loc4_.center.x * _loc4_.§14§;
               _loc1_.y += _loc4_.center.y * _loc4_.§14§;
               this.§%!E§ += _loc4_.§2+§;
            }
            _loc2_ = _loc2_.§2G§;
         }
         if(this.§-!b§ > 0)
         {
            this.§!=§ = 1 / this.§-!b§;
            _loc1_.x *= this.§!=§;
            _loc1_.y *= this.§!=§;
         }
         else
         {
            this.§-!b§ = 1;
            this.§!=§ = 1;
         }
         if(this.§%!E§ > 0 && (this.§+! § & b2internal::7M) == 0)
         {
            this.§%!E§ -= this.§-!b§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§%!E§ *= this.§,!o§;
            b2Settings.b2Assert(this.§%!E§ > 0);
            this.§4!i§ = 1 / this.§%!E§;
         }
         else
         {
            this.§%!E§ = 0;
            this.§4!i§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§=o§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§'!f§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§'!f§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §6!6§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§#!j§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§&!b§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§>!<§(this.m_xf.R,param1);
      }
      
      public function §[!W§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§'!f§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§'!f§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §`_§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§'!f§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§'!f§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §8[§() : Number
      {
         return this.§^!P§;
      }
      
      public function §[!8§(param1:Number) : void
      {
         this.§^!P§ = param1;
      }
      
      public function §8o§() : Number
      {
         return this.§!!^§;
      }
      
      public function §!B§(param1:Number) : void
      {
         this.§!!^§ = param1;
      }
      
      public function §#!,§(param1:uint) : void
      {
         if(this.§,!f§ == param1)
         {
            return;
         }
         this.§,!f§ = param1;
         this.§;!a§();
         if(this.§,!f§ == b2_staticBody)
         {
            this.§'!f§.§4[§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§<q§.§4[§();
         this.§"b§ = 0;
         var _loc2_:b2ContactEdge = this.§#![§;
         while(_loc2_)
         {
            _loc2_.§@m§.§>x§();
            _loc2_ = _loc2_.§@!A§;
         }
      }
      
      public function §use§() : uint
      {
         return this.§,!f§;
      }
      
      public function §>!Z§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+! § |= b2internal::;m;
         }
         else
         {
            this.§+! § &= ~b2internal::;m;
         }
      }
      
      public function §'q§() : Boolean
      {
         return (this.§+! § & b2internal::;m) == b2internal::;m;
      }
      
      public function §%H§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+! § |= b2internal::0!S;
         }
         else
         {
            this.§+! § &= ~b2internal::0!S;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+! § |= b2internal::%!W;
            this.§'%§ = 0;
         }
         else
         {
            this.§+! § &= ~b2internal::%!W;
            this.§'%§ = 0;
            this.§'!f§.§4[§();
            this.m_angularVelocity = 0;
            this.§<q§.§4[§();
            this.§"b§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§+! § & b2internal::%!W) == b2internal::%!W;
      }
      
      public function §?S§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+! § |= b2internal::7M;
         }
         else
         {
            this.§+! § &= ~b2internal::7M;
         }
         this.§;!a§();
      }
      
      public function §^!_§() : Boolean
      {
         return (this.§+! § & b2internal::7M) == b2internal::7M;
      }
      
      public function §`l§(param1:Boolean) : void
      {
         var _loc2_:§<s§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.IsActive())
         {
            return;
         }
         if(param1)
         {
            this.§+! § |= b2internal::`!7;
            _loc2_ = this.m_world.§1'§.§'!1§;
            _loc3_ = this.§-!A§;
            while(_loc3_)
            {
               _loc3_.§%t§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§2G§;
            }
         }
         else
         {
            this.§+! § &= ~b2internal::`!7;
            _loc2_ = this.m_world.§1'§.§'!1§;
            _loc3_ = this.§-!A§;
            while(_loc3_)
            {
               _loc3_.§;!Q§(_loc2_);
               _loc3_ = _loc3_.§2G§;
            }
            _loc4_ = this.§#![§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§@!A§;
               this.m_world.§1'§.§ B§(_loc5_.§@m§);
            }
            this.§#![§ = null;
         }
      }
      
      public function IsActive() : Boolean
      {
         return (this.§+! § & b2internal::`!7) == b2internal::`!7;
      }
      
      public function §=!0§() : Boolean
      {
         return (this.§+! § & b2internal::0!S) == b2internal::0!S;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§-!A§;
      }
      
      public function §#!=§() : b2JointEdge
      {
         return this.§`A§;
      }
      
      public function §7!1§() : b2ControllerEdge
      {
         return this.§-e§;
      }
      
      public function §+!?§() : b2ContactEdge
      {
         return this.§#![§;
      }
      
      public function §2z§() : b2Body
      {
         return this.§2G§;
      }
      
      public function GetUserData() : *
      {
         return this.§6a§;
      }
      
      public function §`!8§(param1:*) : void
      {
         this.§6a§ = param1;
      }
      
      public function §+!e§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §4l§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = include;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§<s§ = this.m_world.§1'§.§'!1§;
         _loc4_ = this.§-!A§;
         while(_loc4_)
         {
            _loc4_.§7P§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§2G§;
         }
      }
      
      b2internal function §]t§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §2!V§(param1:b2Body) : Boolean
      {
         if(this.§,!f§ != b2_dynamicBody && param1.§,!f§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§`A§;
         while(_loc2_)
         {
            if(_loc2_.§1!q§ == param1)
            {
               if(_loc2_.§5k§.§1a§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§@!A§;
         }
         return true;
      }
      
      b2internal function §&!Y§(param1:Number) : void
      {
         this.m_sweep.§&!Y§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§]t§();
      }
   }
}

package §6"1§
{
   import §!"3§.b2EdgeShape;
   import §!"3§.b2MassData;
   import §!"3§.b2Shape;
   import §'"-§.§3Q§;
   import §'"6§.b2Contact;
   import §'"6§.b2ContactEdge;
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §,,§.b2JointEdge;
   import §6!^§.b2Mat22;
   import §6!^§.b2Math;
   import §6!^§.b2Sweep;
   import §6!^§.b2Transform;
   import §6!^§.b2Vec2;
   import §?D§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §[!l§:b2Transform = new b2Transform();
      
      b2internal static var §>7§:uint = 1;
      
      b2internal static var §3!x§:uint = 2;
      
      b2internal static var §-!g§:uint = 4;
      
      b2internal static var §?!c§:uint = 8;
      
      b2internal static var §;!h§:uint = 16;
      
      b2internal static var §-!n§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §2"B§:uint;
      
      b2internal var §<"@§:int;
      
      b2internal var §3"R§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §"!_§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §8"?§:b2Vec2;
      
      b2internal var §1"@§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §;<§:b2Body;
      
      b2internal var §?!g§:b2Body;
      
      b2internal var §64§:b2Fixture;
      
      b2internal var §&!I§:int;
      
      b2internal var §]!5§:b2ControllerEdge;
      
      b2internal var §>+§:int;
      
      b2internal var §@!g§:b2JointEdge;
      
      b2internal var §>"K§:b2ContactEdge;
      
      b2internal var §,!v§:Number;
      
      b2internal var §-@§:Number;
      
      b2internal var §`!F§:Number;
      
      b2internal var §,H§:Number;
      
      b2internal var § S§:Number;
      
      b2internal var §>!e§:Number;
      
      b2internal var §]";§:Number;
      
      b2internal var §&"3§:Number;
      
      private var §]!d§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§"!_§ = new b2Vec2();
         this.§8"?§ = new b2Vec2();
         super();
         this.§2"B§ = 0;
         if(param1.§1p§)
         {
            this.§2"B§ |= b2internal::?!c;
         }
         if(param1.§-!'§)
         {
            this.§2"B§ |= b2internal::;!h;
         }
         if(param1.§6!z§)
         {
            this.§2"B§ |= b2internal::-!g;
         }
         if(param1.§2"X§)
         {
            this.§2"B§ |= b2internal::3!x;
         }
         if(param1.§""D§)
         {
            this.§2"B§ |= b2internal::-!n;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§%y§();
         this.m_sweep.§6!0§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§@!g§ = null;
         this.§]!5§ = null;
         this.§>"K§ = null;
         this.§>+§ = 0;
         this.§;<§ = null;
         this.§?!g§ = null;
         this.§"!_§.SetV(param1.§#"+§);
         this.m_angularVelocity = param1.§1"9§;
         this.§>!e§ = param1.§#"P§;
         this.§]";§ = param1.§6"9§;
         this.§8"?§.Set(0,0);
         this.§1"@§ = 0;
         this.§&"3§ = 0;
         this.§<"@§ = param1.type;
         if(this.§<"@§ == b2_dynamicBody)
         {
            this.§,!v§ = 1;
            this.§-@§ = 1;
         }
         else
         {
            this.§,!v§ = 0;
            this.§-@§ = 0;
         }
         this.§`!F§ = 0;
         this.§,H§ = 0;
         this.§ S§ = param1.§;!-§;
         this.§]!d§ = param1.§-!"§;
         this.§64§ = null;
         this.§&!I§ = 0;
      }
      
      private function §>'§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§9"M§().y,param2.§9"M§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§7d§(_loc5_,param2.§9"M§());
         _loc6_ = b2Math.§9N§(_loc6_,param2.§,!R§());
         _loc6_ = b2Math.§7d§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§^_§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§^_§(param1.§9"M§(),param2.§9"M§())).Normalize();
         var _loc8_:* = b2Math.§[!3§(param1.§9"M§(),param2.§,!R§()) > 0;
         param1.§^V§(param2,_loc6_,_loc7_,_loc8_);
         param2.§4!Y§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §+!x§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§3Q§ = null;
         if(this.m_world.§?"A§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§3!N§(this,this.m_xf,param1);
         if(this.§2"B§ & b2internal::-!n)
         {
            _loc3_ = this.m_world.§9s§.§9"§;
            _loc2_.§!!$§(_loc3_,this.m_xf);
         }
         _loc2_.§?!g§ = this.§64§;
         this.§64§ = _loc2_;
         ++this.§&!I§;
         _loc2_.m_body = this;
         if(_loc2_.§%!$§ > 0)
         {
            this.ResetMassData();
         }
         this.m_world.§2"B§ |= b2World.§-!M§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§+!x§(_loc3_);
      }
      
      public function §="E§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§3Q§ = null;
         if(this.m_world.§?"A§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§64§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§?!g§ = param1.§?!g§;
               }
               else
               {
                  this.§64§ = param1.§?!g§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§?!g§;
         }
         var _loc5_:b2ContactEdge = this.§>"K§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§-"G§;
            _loc5_ = _loc5_.§3u§;
            _loc7_ = _loc6_.§]!A§();
            _loc8_ = _loc6_.§3!]§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§9s§.§2!s§(_loc6_);
            }
         }
         if(this.§2"B§ & b2internal::-!n)
         {
            _loc9_ = this.m_world.§9s§.§9"§;
            param1.§&-§(_loc9_);
         }
         param1.§2!s§();
         param1.m_body = null;
         param1.§?!g§ = null;
         --this.§&!I§;
         this.ResetMassData();
      }
      
      public function §7<§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§?"A§() == true)
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
         var _loc6_:§3Q§ = this.m_world.§9s§.§9"§;
         _loc3_ = this.§64§;
         while(_loc3_)
         {
            _loc3_.§`?§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§?!g§;
         }
         this.m_world.§9s§.§+!l§();
      }
      
      public function § &§(param1:b2Transform) : void
      {
         this.§7<§(param1.position,param1.GetAngle());
      }
      
      public function §!"0§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         this.§7<§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §^!c§(param1:Number) : void
      {
         this.§7<§(this.GetPosition(),param1);
      }
      
      public function §2]§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §6!J§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§<"@§ == b2_staticBody)
         {
            return;
         }
         this.§"!_§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§"!_§;
      }
      
      public function §["$§(param1:Number) : void
      {
         if(this.§<"@§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §86§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§>!f§();
         _loc1_.§6!z§ = (this.§2"B§ & b2internal::-!g) == b2internal::-!g;
         _loc1_.angle = this.GetAngle();
         _loc1_.§6"9§ = this.§]";§;
         _loc1_.§1"9§ = this.m_angularVelocity;
         _loc1_.§-!'§ = (this.§2"B§ & b2internal::;!h) == b2internal::;!h;
         _loc1_.§1p§ = (this.§2"B§ & b2internal::?!c) == b2internal::?!c;
         _loc1_.§2"X§ = (this.§2"B§ & b2internal::3!x) == b2internal::3!x;
         _loc1_.§#"P§ = this.§>!e§;
         _loc1_.§#"+§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§-!"§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §5i§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§<"@§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§8"?§.x += param1.x;
         this.§8"?§.y += param1.y;
         this.§1"@§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §8!O§(param1:Number) : void
      {
         if(this.§<"@§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§1"@§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§<"@§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§"!_§.x += this.§-@§ * param1.x;
         this.§"!_§.y += this.§-@§ * param1.y;
         this.m_angularVelocity += this.§,H§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §1k§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§2]§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§@H§(this.§86§());
         var _loc8_:b2Fixture = _loc5_.§64§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§?!g§;
               if(_loc7_)
               {
                  _loc7_.§?!g§ = _loc13_;
               }
               else
               {
                  _loc5_.§64§ = _loc13_;
               }
               --_loc5_.§&!I§;
               _loc8_.§?!g§ = _loc6_.§64§;
               _loc6_.§64§ = _loc8_;
               ++_loc6_.§&!I§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§?!g§;
            }
         }
         _loc5_.ResetMassData();
         _loc6_.ResetMassData();
         var _loc9_:b2Vec2 = _loc5_.§2]§();
         var _loc10_:b2Vec2 = _loc6_.§2]§();
         var _loc11_:b2Vec2 = b2Math.§^_§(_loc2_,b2Math.§6!?§(_loc3_,b2Math.§9N§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§^_§(_loc2_,b2Math.§6!?§(_loc3_,b2Math.§9N§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§["$§(_loc3_);
         _loc6_.§["$§(_loc3_);
         _loc5_.§-! §();
         _loc6_.§-! §();
         return _loc6_;
      }
      
      public function §;!V§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§64§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§?!g§;
            --param1.§&!I§;
            _loc2_.§?!g§ = this.§64§;
            this.§64§ = _loc2_;
            ++this.§&!I§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§&!I§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§2]§();
         var _loc6_:b2Vec2 = _loc4_.§2]§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.ResetMassData();
         this.§-! §();
      }
      
      public function GetMass() : Number
      {
         return this.§,!v§;
      }
      
      public function §#!l§() : Number
      {
         return this.§`!F§;
      }
      
      public function §!!v§(param1:b2MassData) : void
      {
         param1.§'"N§ = this.§,!v§;
         param1.§@!6§ = this.§`!F§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §5A§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§?"A§() == false);
         if(this.m_world.§?"A§() == true)
         {
            return;
         }
         if(this.§<"@§ != b2_dynamicBody)
         {
            return;
         }
         this.§-@§ = 0;
         this.§`!F§ = 0;
         this.§,H§ = 0;
         this.§,!v§ = param1.§'"N§;
         if(this.§,!v§ <= 0)
         {
            this.§,!v§ = 1;
         }
         this.§-@§ = 1 / this.§,!v§;
         if(param1.§@!6§ > 0 && (this.§2"B§ & b2internal::;!h) == 0)
         {
            this.§`!F§ = param1.§@!6§ - this.§,!v§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§,H§ = 1 / this.§`!F§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§^T§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§"!_§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§"!_§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function ResetMassData() : void
      {
         var _loc4_:b2MassData = null;
         this.§,!v§ = 0;
         this.§-@§ = 0;
         this.§`!F§ = 0;
         this.§,H§ = 0;
         this.m_sweep.localCenter.§%y§();
         if(this.§<"@§ == b2_staticBody || this.§<"@§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§&!q§(0,0);
         var _loc2_:b2Fixture = this.§64§;
         while(_loc2_)
         {
            if(_loc2_.§%!$§ != 0)
            {
               _loc4_ = _loc2_.§!!v§();
               this.§,!v§ += _loc4_.§'"N§;
               _loc1_.x += _loc4_.center.x * _loc4_.§'"N§;
               _loc1_.y += _loc4_.center.y * _loc4_.§'"N§;
               this.§`!F§ += _loc4_.§@!6§;
            }
            _loc2_ = _loc2_.§?!g§;
         }
         if(this.§,!v§ > 0)
         {
            this.§-@§ = 1 / this.§,!v§;
            _loc1_.x *= this.§-@§;
            _loc1_.y *= this.§-@§;
         }
         else
         {
            this.§,!v§ = 1;
            this.§-@§ = 1;
         }
         if(this.§`!F§ > 0 && (this.§2"B§ & b2internal::;!h) == 0)
         {
            this.§`!F§ -= this.§,!v§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§`!F§ *= this.§ S§;
            b2Settings.b2Assert(this.§`!F§ > 0);
            this.§,H§ = 1 / this.§`!F§;
         }
         else
         {
            this.§`!F§ = 0;
            this.§,H§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§^T§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§"!_§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§"!_§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §^"C§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§5!w§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§&"O§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§60§(this.m_xf.R,param1);
      }
      
      public function §`!>§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§"!_§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§"!_§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §]"T§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§"!_§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§"!_§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §]V§() : Number
      {
         return this.§>!e§;
      }
      
      public function §9i§(param1:Number) : void
      {
         this.§>!e§ = param1;
      }
      
      public function §;!o§() : Number
      {
         return this.§]";§;
      }
      
      public function §7X§(param1:Number) : void
      {
         this.§]";§ = param1;
      }
      
      public function SetType(param1:uint) : void
      {
         if(this.§<"@§ == param1)
         {
            return;
         }
         this.§<"@§ = param1;
         this.ResetMassData();
         if(this.§<"@§ == b2_staticBody)
         {
            this.§"!_§.§%y§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§8"?§.§%y§();
         this.§1"@§ = 0;
         var _loc2_:b2ContactEdge = this.§>"K§;
         while(_loc2_)
         {
            _loc2_.§-"G§.§^e§();
            _loc2_ = _loc2_.§3u§;
         }
      }
      
      public function §>!f§() : uint
      {
         return this.§<"@§;
      }
      
      public function §"b§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§2"B§ |= b2internal::?!c;
         }
         else
         {
            this.§2"B§ &= ~b2internal::?!c;
         }
      }
      
      public function §>!l§() : Boolean
      {
         return (this.§2"B§ & b2internal::?!c) == b2internal::?!c;
      }
      
      public function SetSleepingAllowed(param1:Boolean) : void
      {
         if(param1)
         {
            this.§2"B§ |= b2internal::-!g;
         }
         else
         {
            this.§2"B§ &= ~b2internal::-!g;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§2"B§ |= b2internal::3!x;
            this.§&"3§ = 0;
         }
         else
         {
            this.§2"B§ &= ~b2internal::3!x;
            this.§&"3§ = 0;
            this.§"!_§.§%y§();
            this.m_angularVelocity = 0;
            this.§8"?§.§%y§();
            this.§1"@§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§2"B§ & b2internal::3!x) == b2internal::3!x;
      }
      
      public function §,!Q§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§2"B§ |= b2internal::;!h;
         }
         else
         {
            this.§2"B§ &= ~b2internal::;!h;
         }
         this.ResetMassData();
      }
      
      public function §+!%§() : Boolean
      {
         return (this.§2"B§ & b2internal::;!h) == b2internal::;!h;
      }
      
      public function SetActive(param1:Boolean) : void
      {
         var _loc2_:§3Q§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§,"G§())
         {
            return;
         }
         if(param1)
         {
            this.§2"B§ |= b2internal::-!n;
            _loc2_ = this.m_world.§9s§.§9"§;
            _loc3_ = this.§64§;
            while(_loc3_)
            {
               _loc3_.§!!$§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§?!g§;
            }
         }
         else
         {
            this.§2"B§ &= ~b2internal::-!n;
            _loc2_ = this.m_world.§9s§.§9"§;
            _loc3_ = this.§64§;
            while(_loc3_)
            {
               _loc3_.§&-§(_loc2_);
               _loc3_ = _loc3_.§?!g§;
            }
            _loc4_ = this.§>"K§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§3u§;
               this.m_world.§9s§.§2!s§(_loc5_.§-"G§);
            }
            this.§>"K§ = null;
         }
      }
      
      public function §,"G§() : Boolean
      {
         return (this.§2"B§ & b2internal::-!n) == b2internal::-!n;
      }
      
      public function §#e§() : Boolean
      {
         return (this.§2"B§ & b2internal::-!g) == b2internal::-!g;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§64§;
      }
      
      public function §5,§() : b2JointEdge
      {
         return this.§@!g§;
      }
      
      public function §4E§() : b2ControllerEdge
      {
         return this.§]!5§;
      }
      
      public function §0!z§() : b2ContactEdge
      {
         return this.§>"K§;
      }
      
      public function §>!v§() : b2Body
      {
         return this.§?!g§;
      }
      
      public function GetUserData() : *
      {
         return this.§]!d§;
      }
      
      public function §^!>§(param1:*) : void
      {
         this.§]!d§ = param1;
      }
      
      public function §-7§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §-! §() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §[!l§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§3Q§ = this.m_world.§9s§.§9"§;
         _loc4_ = this.§64§;
         while(_loc4_)
         {
            _loc4_.§`?§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§?!g§;
         }
      }
      
      b2internal function §+!q§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §[">§(param1:b2Body) : Boolean
      {
         if(this.§<"@§ != b2_dynamicBody && param1.§<"@§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§@!g§;
         while(_loc2_)
         {
            if(_loc2_.§[!!§ == param1)
            {
               if(_loc2_.§<S§.§8_§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§3u§;
         }
         return true;
      }
      
      b2internal function §'a§(param1:Number) : void
      {
         this.m_sweep.§'a§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§+!q§();
      }
   }
}

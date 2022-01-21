package §1B§
{
   import §!R§.*;
   import §%9§.b2Controller;
   import §%9§.b2ControllerEdge;
   import §9i§.*;
   import §;N§.*;
   import §>!'§.*;
   import §]7§.*;
   import §]q§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var § !K§:b2Transform = new b2Transform();
      
      private static var §!!$§:b2Sweep = new b2Sweep();
      
      private static var §>D§:b2Sweep = new b2Sweep();
      
      private static var §=g§:b2TimeStep = new b2TimeStep();
      
      private static var §@n§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §%q§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §[W§:Boolean;
      
      private static var §1;§:Boolean;
      
      public static const §@K§:int = 1;
      
      public static const §;u§:int = 2;
       
      
      private var §[5§:Vector.<b2Body>;
      
      b2internal var §%!%§:int;
      
      b2internal var §`C§:b2ContactManager;
      
      private var §&I§:b2ContactSolver;
      
      private var §!!?§:b2Island;
      
      b2internal var §2!8§:b2Body;
      
      private var §break§:b2Joint;
      
      b2internal var §<!@§:b2Contact;
      
      private var § T§:int;
      
      b2internal var §`!7§:int;
      
      private var §#y§:int;
      
      private var §1p§:b2Controller;
      
      private var §`2§:int;
      
      private var §#u§:b2Vec2;
      
      private var §="§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §7!,§:b2DestructionListener;
      
      private var §"O§:b2DebugDraw;
      
      private var §8b§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§[5§ = new Vector.<b2Body>();
         this.§`C§ = new b2ContactManager();
         this.§&I§ = new b2ContactSolver();
         this.§!!?§ = new b2Island();
         super();
         this.§7!,§ = null;
         this.§"O§ = null;
         this.§2!8§ = null;
         this.§<!@§ = null;
         this.§break§ = null;
         this.§1p§ = null;
         this.§ T§ = 0;
         this.§`!7§ = 0;
         this.§#y§ = 0;
         this.§`2§ = 0;
         §[W§ = true;
         §1;§ = true;
         this.§="§ = param2;
         this.§#u§ = param1;
         this.§8b§ = 0;
         this.§`C§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§5U§(_loc3_);
      }
      
      public function §'V§(param1:b2DestructionListener) : void
      {
         this.§7!,§ = param1;
      }
      
      public function §4!W§(param1:b2ContactFilter) : void
      {
         this.§`C§.§6S§ = param1;
      }
      
      public function §7M§(param1:b2ContactListener) : void
      {
         this.§`C§.§`N§ = param1;
      }
      
      public function §[f§(param1:b2DebugDraw) : void
      {
         this.§"O§ = param1;
      }
      
      public function §^!&§(param1:§#!0§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§#!0§ = this.§`C§.§-!4§;
         this.§`C§.§-!4§ = param1;
         var _loc3_:b2Body = this.§2!8§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§>!U§;
            while(_loc4_)
            {
               _loc4_.§[x§ = param1.§9u§(_loc2_.§"t§(_loc4_.§[x§),_loc4_);
               _loc4_ = _loc4_.§>y§;
            }
            _loc3_ = _loc3_.§>y§;
         }
      }
      
      public function §[!3§() : void
      {
         this.§`C§.§-!4§.§[!3§();
      }
      
      public function §<!3§() : int
      {
         return this.§`C§.§-!4§.§<!3§();
      }
      
      public function §5U§(param1:b2BodyDef) : b2Body
      {
         if(this.§#!E§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§]!K§ = null;
         _loc2_.§>y§ = this.§2!8§;
         if(this.§2!8§)
         {
            this.§2!8§.§]!K§ = _loc2_;
         }
         this.§2!8§ = _loc2_;
         ++this.§ T§;
         return _loc2_;
      }
      
      public function §#z§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§#!E§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§break§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§6W§;
            if(this.§7!,§)
            {
               this.§7!,§.§!Z§(_loc6_.§5!@§);
            }
            this.§^I§(_loc6_.§5!@§);
         }
         var _loc3_:b2ControllerEdge = param1.§1p§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§74§;
            _loc7_.§ u§.§5b§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§<!@§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§6W§;
            this.§`C§.§%_§(_loc8_.§"!3§);
         }
         param1.§<!@§ = null;
         var _loc5_:b2Fixture = param1.§>!U§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§>y§;
            if(this.§7!,§)
            {
               this.§7!,§.§3!1§(_loc9_);
            }
            _loc9_.§"!"§(this.§`C§.§-!4§);
            _loc9_.§%_§();
         }
         param1.§>!U§ = null;
         param1.§+!D§ = 0;
         if(param1.§]!K§)
         {
            param1.§]!K§.§>y§ = param1.§>y§;
         }
         if(param1.§>y§)
         {
            param1.§>y§.§]!K§ = param1.§]!K§;
         }
         if(param1 == this.§2!8§)
         {
            this.§2!8§ = param1.§>y§;
         }
         --this.§ T§;
      }
      
      public function §<S§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§ %§(param1,null);
         _loc2_.§]!K§ = null;
         _loc2_.§>y§ = this.§break§;
         if(this.§break§)
         {
            this.§break§.§]!K§ = _loc2_;
         }
         this.§break§ = _loc2_;
         ++this.§#y§;
         _loc2_.§#!O§.§5!@§ = _loc2_;
         _loc2_.§#!O§.§>!B§ = _loc2_.§8[§;
         _loc2_.§#!O§.§<!C§ = null;
         _loc2_.§#!O§.§6W§ = _loc2_.§ each§.§break§;
         if(_loc2_.§ each§.§break§)
         {
            _loc2_.§ each§.§break§.§<!C§ = _loc2_.§#!O§;
         }
         _loc2_.§ each§.§break§ = _loc2_.§#!O§;
         _loc2_.§7!8§.§5!@§ = _loc2_;
         _loc2_.§7!8§.§>!B§ = _loc2_.§ each§;
         _loc2_.§7!8§.§<!C§ = null;
         _loc2_.§7!8§.§6W§ = _loc2_.§8[§.§break§;
         if(_loc2_.§8[§.§break§)
         {
            _loc2_.§8[§.§break§.§<!C§ = _loc2_.§7!8§;
         }
         _loc2_.§8[§.§break§ = _loc2_.§7!8§;
         var _loc3_:b2Body = param1.§-6§;
         var _loc4_:b2Body = param1.§?w§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§`K§();
            while(_loc5_)
            {
               if(_loc5_.§>!B§ == _loc3_)
               {
                  _loc5_.§"!3§.§each §();
               }
               _loc5_ = _loc5_.§6W§;
            }
         }
         return _loc2_;
      }
      
      public function §^I§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§9!9§;
         if(param1.§]!K§)
         {
            param1.§]!K§.§>y§ = param1.§>y§;
         }
         if(param1.§>y§)
         {
            param1.§>y§.§]!K§ = param1.§]!K§;
         }
         if(param1 == this.§break§)
         {
            this.§break§ = param1.§>y§;
         }
         var _loc3_:b2Body = param1.§ each§;
         var _loc4_:b2Body = param1.§8[§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§#!O§.§<!C§)
         {
            param1.§#!O§.§<!C§.§6W§ = param1.§#!O§.§6W§;
         }
         if(param1.§#!O§.§6W§)
         {
            param1.§#!O§.§6W§.§<!C§ = param1.§#!O§.§<!C§;
         }
         if(param1.§#!O§ == _loc3_.§break§)
         {
            _loc3_.§break§ = param1.§#!O§.§6W§;
         }
         param1.§#!O§.§<!C§ = null;
         param1.§#!O§.§6W§ = null;
         if(param1.§7!8§.§<!C§)
         {
            param1.§7!8§.§<!C§.§6W§ = param1.§7!8§.§6W§;
         }
         if(param1.§7!8§.§6W§)
         {
            param1.§7!8§.§6W§.§<!C§ = param1.§7!8§.§<!C§;
         }
         if(param1.§7!8§ == _loc4_.§break§)
         {
            _loc4_.§break§ = param1.§7!8§.§6W§;
         }
         param1.§7!8§.§<!C§ = null;
         param1.§7!8§.§6W§ = null;
         b2Joint.§%_§(param1,null);
         --this.§#y§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§`K§();
            while(_loc5_)
            {
               if(_loc5_.§>!B§ == _loc3_)
               {
                  _loc5_.§"!3§.§each §();
               }
               _loc5_ = _loc5_.§6W§;
            }
         }
      }
      
      public function § H§(param1:b2Controller) : b2Controller
      {
         param1.§>y§ = this.§1p§;
         param1.§]!K§ = null;
         this.§1p§ = param1;
         param1.m_world = this;
         ++this.§`2§;
         return param1;
      }
      
      public function §1u§(param1:b2Controller) : void
      {
         if(param1.§]!K§)
         {
            param1.§]!K§.§>y§ = param1.§>y§;
         }
         if(param1.§>y§)
         {
            param1.§>y§.§]!K§ = param1.§]!K§;
         }
         if(this.§1p§ == param1)
         {
            this.§1p§ = param1.§>y§;
         }
         --this.§`2§;
      }
      
      public function §]!P§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§>y§ = this.§1p§;
         param1.§]!K§ = null;
         if(this.§1p§)
         {
            this.§1p§.§]!K§ = param1;
         }
         this.§1p§ = param1;
         ++this.§`2§;
         param1.m_world = this;
         return param1;
      }
      
      public function §`f§(param1:b2Controller) : void
      {
         param1.§`!X§();
         if(param1.§>y§)
         {
            param1.§>y§.§]!K§ = param1.§]!K§;
         }
         if(param1.§]!K§)
         {
            param1.§]!K§.§>y§ = param1.§>y§;
         }
         if(param1 == this.§1p§)
         {
            this.§1p§ = param1.§>y§;
         }
         --this.§`2§;
      }
      
      public function §3<§(param1:Boolean) : void
      {
         §[W§ = param1;
      }
      
      public function §^!%§(param1:Boolean) : void
      {
         §1;§ = param1;
      }
      
      public function §3!j§() : int
      {
         return this.§ T§;
      }
      
      public function §0p§() : int
      {
         return this.§#y§;
      }
      
      public function §>!P§() : int
      {
         return this.§`!7§;
      }
      
      public function §1l§(param1:b2Vec2) : void
      {
         this.§#u§ = param1;
      }
      
      public function §-d§() : b2Vec2
      {
         return this.§#u§;
      }
      
      public function §6!C§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §]1§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§%!%§ & §@K§)
         {
            this.§`C§.§?o§();
            this.§%!%§ &= ~§@K§;
         }
         this.§%!%§ |= §;u§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§#"§ = param1;
         _loc4_.§7!a§ = param2;
         _loc4_.§9!G§ = param3;
         if(param1 > 0)
         {
            _loc4_.§>,§ = 1 / param1;
         }
         else
         {
            _loc4_.§>,§ = 0;
         }
         _loc4_.§;%§ = this.§8b§ * param1;
         _loc4_.§=s§ = §[W§;
         this.§`C§.§4o§();
         if(_loc4_.§#"§ > 0)
         {
            this.§5d§(_loc4_);
         }
         if(§1;§ && _loc4_.§#"§ > 0)
         {
            this.§`!Q§(_loc4_);
         }
         if(_loc4_.§#"§ > 0)
         {
            this.§8b§ = _loc4_.§>,§;
         }
         this.§%!%§ &= ~§;u§;
      }
      
      public function §7!`§() : void
      {
         var _loc1_:b2Body = this.§2!8§;
         while(_loc1_)
         {
            _loc1_.§4F§.§"9§();
            _loc1_.§[!U§ = 0;
            _loc1_ = _loc1_.§>y§;
         }
      }
      
      public function §@d§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§#!0§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§"O§ == null)
         {
            return;
         }
         this.§"O§.§1!k§.graphics.clear();
         var _loc1_:uint = this.§"O§.§+;§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§4-§)
         {
            _loc3_ = this.§2!8§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§=Y§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.IsActive() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§^6§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§#+§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§^6§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§#+§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§^6§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§^6§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§^6§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§>y§;
               }
               _loc3_ = _loc3_.§>y§;
            }
         }
         if(_loc1_ & b2DebugDraw.§"<§)
         {
            _loc6_ = this.§break§;
            while(_loc6_)
            {
               this.§else§(_loc6_);
               _loc6_ = _loc6_.§>y§;
            }
         }
         if(_loc1_ & b2DebugDraw.§]m§)
         {
            _loc16_ = this.§1p§;
            while(_loc16_)
            {
               _loc16_.§,e§(this.§"O§);
               _loc16_ = _loc16_.§>y§;
            }
         }
         if(_loc1_ & b2DebugDraw.§&h§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§`C§.§<!@§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§>C§();
               _loc19_ = _loc17_.§3y§();
               _loc20_ = _loc18_.§?!c§().§=!4§();
               _loc21_ = _loc19_.§?!c§().§=!4§();
               this.§"O§.§?d§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§-7§();
            }
         }
         if(_loc1_ & b2DebugDraw.§4!K§)
         {
            _loc7_ = this.§`C§.§-!4§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§2!8§;
            while(_loc3_)
            {
               if(_loc3_.IsActive() != false)
               {
                  _loc4_ = _loc3_.§=Y§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§"t§(_loc4_.§[x§);
                     _loc14_[0].Set(_loc22_.§>!W§.x,_loc22_.§>!W§.y);
                     _loc14_[1].Set(_loc22_.§]!F§.x,_loc22_.§>!W§.y);
                     _loc14_[2].Set(_loc22_.§]!F§.x,_loc22_.§]!F§.y);
                     _loc14_[3].Set(_loc22_.§>!W§.x,_loc22_.§]!F§.y);
                     this.§"O§.§8! §(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§-7§();
                  }
               }
               _loc3_ = _loc3_.§-7§();
            }
         }
         if(_loc1_ & b2DebugDraw.§4!P§)
         {
            _loc3_ = this.§2!8§;
            while(_loc3_)
            {
               (_loc11_ = § !K§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§"O§.§7!_§(_loc11_);
               _loc3_ = _loc3_.§>y§;
            }
         }
      }
      
      public function §,!o§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§#!0§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§`C§.§-!4§;
         broadPhase.§4!%§(WorldQueryWrapper,aabb);
      }
      
      public function §6!6§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§#!0§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§6!_§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§&0§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§>!b§();
         }
         broadPhase = this.§`C§.§-!4§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§4!%§(WorldQueryWrapper,aabb);
      }
      
      public function §%!8§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§#!0§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var p:b2Vec2 = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(_loc2_.TestPoint(p))
            {
               return callback(_loc2_);
            }
            return true;
         };
         broadPhase = this.§`C§.§-!4§;
         var aabb:b2AABB = new b2AABB();
         aabb.§>!W§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§]!F§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§4!%§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§#!0§ = null;
         var output:b2RayCastOutput = null;
         var RayCastWrapper:Function = null;
         var callback:Function = param1;
         var point1:b2Vec2 = param2;
         var point2:b2Vec2 = param3;
         RayCastWrapper = function(param1:b2RayCastInput, param2:*):Number
         {
            var _loc6_:Number = NaN;
            var _loc7_:b2Vec2 = null;
            var _loc3_:* = broadPhase.GetUserData(param2);
            var _loc5_:Boolean;
            var _loc4_:b2Fixture;
            if(_loc5_ = (_loc4_ = _loc3_ as b2Fixture).RayCast(output,param1))
            {
               _loc6_ = output.fraction;
               _loc7_ = new b2Vec2((1 - _loc6_) * point1.x + _loc6_ * point2.x,(1 - _loc6_) * point1.y + _loc6_ * point2.y);
               return callback(_loc4_,_loc7_,output.normal,_loc6_);
            }
            return param1.§;!U§;
         };
         broadPhase = this.§`C§.§-!4§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §-!H§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
      {
         var result:b2Fixture = null;
         var RayCastOneWrapper:Function = null;
         var point1:b2Vec2 = param1;
         var point2:b2Vec2 = param2;
         RayCastOneWrapper = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
         {
            result = param1;
            return param4;
         };
         this.RayCast(RayCastOneWrapper,point1,point2);
         return result;
      }
      
      public function §=!G§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
      {
         var result:Vector.<b2Fixture> = null;
         var RayCastAllWrapper:Function = null;
         var point1:b2Vec2 = param1;
         var point2:b2Vec2 = param2;
         RayCastAllWrapper = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
         {
            result[result.length] = param1;
            return 1;
         };
         result = new Vector.<b2Fixture>();
         this.RayCast(RayCastAllWrapper,point1,point2);
         return result;
      }
      
      public function §7z§() : b2Body
      {
         return this.§2!8§;
      }
      
      public function §-Q§() : b2Joint
      {
         return this.§break§;
      }
      
      public function §`K§() : b2Contact
      {
         return this.§<!@§;
      }
      
      public function §#!E§() : Boolean
      {
         return (this.§%!%§ & §;u§) > 0;
      }
      
      b2internal function §5d§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§1p§;
         while(_loc3_)
         {
            _loc3_.§]1§(param1);
            _loc3_ = _loc3_.§>y§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§!!?§).§4G§(this.§ T§,this.§`!7§,this.§#y§,null,this.§`C§.§`N§,this.§&I§);
         _loc2_ = this.§2!8§;
         while(_loc2_)
         {
            _loc2_.§%!%§ &= ~b2Body.§^!b§;
            _loc2_ = _loc2_.§>y§;
         }
         var _loc5_:b2Contact = this.§<!@§;
         while(_loc5_)
         {
            _loc5_.§%!%§ &= ~b2Contact.§^!b§;
            _loc5_ = _loc5_.§>y§;
         }
         var _loc6_:b2Joint = this.§break§;
         while(_loc6_)
         {
            _loc6_.§39§ = false;
            _loc6_ = _loc6_.§>y§;
         }
         var _loc7_:int = this.§ T§;
         var _loc8_:Vector.<b2Body> = this.§[5§;
         var _loc9_:b2Body = this.§2!8§;
         while(_loc9_)
         {
            if(!(_loc9_.§%!%§ & b2Body.§^!b§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.IsActive() == false))
               {
                  if(_loc9_.§#+§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§`!X§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§%!%§ |= b2Body.§^!b§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§"!_§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§#+§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§<!@§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§"!3§.§%!%§ & b2Contact.§^!b§))
                              {
                                 if(!(_loc13_.§"!3§.§%a§() == true || _loc13_.§"!3§.§]!_§() == false || _loc13_.§"!3§.§<+§() == false))
                                 {
                                    _loc4_.§!g§(_loc13_.§"!3§);
                                    _loc13_.§"!3§.§%!%§ |= b2Contact.§^!b§;
                                    if(!((_loc12_ = _loc13_.§>!B§).§%!%§ & b2Body.§^!b§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§%!%§ |= b2Body.§^!b§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§6W§;
                           }
                           _loc14_ = _loc2_.§break§;
                           while(_loc14_)
                           {
                              if(_loc14_.§5!@§.§39§ != true)
                              {
                                 if((_loc12_ = _loc14_.§>!B§).IsActive() != false)
                                 {
                                    _loc4_.§2!0§(_loc14_.§5!@§);
                                    _loc14_.§5!@§.§39§ = true;
                                    if(!(_loc12_.§%!%§ & b2Body.§^!b§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§%!%§ |= b2Body.§^!b§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§6W§;
                           }
                        }
                     }
                     _loc4_.§5d§(param1,this.§#u§,this.§="§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§ T§)
                     {
                        _loc2_ = _loc4_.§>$§[_loc11_];
                        if(_loc2_.§#+§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§%!%§ &= ~b2Body.§^!b§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§>y§;
         }
         _loc11_ = 0;
         while(_loc11_ < _loc8_.length)
         {
            if(!_loc8_[_loc11_])
            {
               break;
            }
            _loc8_[_loc11_] = null;
            _loc11_++;
         }
         _loc2_ = this.§2!8§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.IsActive() == false))
            {
               if(_loc2_.§#+§() != b2Body.b2_staticBody)
               {
                  _loc2_.§5<§();
               }
            }
            _loc2_ = _loc2_.§>y§;
         }
         this.§`C§.§?o§();
      }
      
      b2internal function §`!Q§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Body = null;
         var _loc6_:b2Body = null;
         var _loc7_:b2ContactEdge = null;
         var _loc8_:b2Joint = null;
         var _loc11_:b2Contact = null;
         var _loc12_:b2Contact = null;
         var _loc13_:Number = NaN;
         var _loc14_:b2Body = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:b2TimeStep = null;
         var _loc18_:int = 0;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:b2JointEdge = null;
         var _loc22_:b2Body = null;
         var _loc9_:b2Island;
         (_loc9_ = this.§!!?§).§4G§(this.§ T§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§`C§.§`N§,this.§&I§);
         var _loc10_:Vector.<b2Body> = §@n§;
         _loc2_ = this.§2!8§;
         while(_loc2_)
         {
            _loc2_.§%!%§ &= ~b2Body.§^!b§;
            _loc2_.m_sweep.§3!2§ = 0;
            _loc2_ = _loc2_.§>y§;
         }
         _loc11_ = this.§<!@§;
         while(_loc11_)
         {
            _loc11_.§%!%§ &= ~(b2Contact.§8!V§ | b2Contact.§^!b§);
            _loc11_ = _loc11_.§>y§;
         }
         _loc8_ = this.§break§;
         while(_loc8_)
         {
            _loc8_.§39§ = false;
            _loc8_ = _loc8_.§>y§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§<!@§;
            while(_loc11_)
            {
               if(!(_loc11_.§%a§() == true || _loc11_.§]!_§() == false || _loc11_.§1!1§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§%!%§ & b2Contact.§8!V§)
                  {
                     _loc19_ = _loc11_.§?Q§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§7c§;
                     _loc4_ = _loc11_.§!!@§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§#+§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§#+§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr596:
                        _loc11_ = _loc11_.§>y§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§3!2§;
                     if(_loc5_.m_sweep.§3!2§ < _loc6_.m_sweep.§3!2§)
                     {
                        _loc20_ = _loc6_.m_sweep.§3!2§;
                        _loc5_.m_sweep.§-!@§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§3!2§ < _loc5_.m_sweep.§3!2§)
                     {
                        _loc20_ = _loc5_.m_sweep.§3!2§;
                        _loc6_.m_sweep.§-!@§(_loc20_);
                     }
                     _loc19_ = _loc11_.§]!o§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§?Q§ = _loc19_;
                     _loc11_.§%!%§ |= b2Contact.§8!V§;
                     §§goto(addr596);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr596);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§7c§;
            _loc4_ = _loc12_.§!!@§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §!!$§.Set(_loc5_.m_sweep);
            §>D§.Set(_loc6_.m_sweep);
            _loc5_.§-!@§(_loc13_);
            _loc6_.§-!@§(_loc13_);
            _loc12_.§7!]§(this.§`C§.§`N§);
            _loc12_.§%!%§ &= ~b2Contact.§8!V§;
            if(_loc12_.§%a§() == true || _loc12_.§]!_§() == false)
            {
               _loc5_.m_sweep.Set(§!!$§);
               _loc6_.m_sweep.Set(§>D§);
               _loc5_.§"d§();
               _loc6_.§"d§();
            }
            else if(_loc12_.§<+§() != false)
            {
               if((_loc14_ = _loc5_).§#+§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§`!X§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§%!%§ |= b2Body.§^!b§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§"!_§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§#+§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§<!@§;
                     while(_loc7_)
                     {
                        if(_loc9_.§`!7§ == _loc9_.§9!?§)
                        {
                           break;
                        }
                        if(!(_loc7_.§"!3§.§%!%§ & b2Contact.§^!b§))
                        {
                           if(!(_loc7_.§"!3§.§%a§() == true || _loc7_.§"!3§.§]!_§() == false || _loc7_.§"!3§.§<+§() == false))
                           {
                              _loc9_.§!g§(_loc7_.§"!3§);
                              _loc7_.§"!3§.§%!%§ |= b2Contact.§^!b§;
                              if(!((_loc22_ = _loc7_.§>!B§).§%!%§ & b2Body.§^!b§))
                              {
                                 if(_loc22_.§#+§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§-!@§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§%!%§ |= b2Body.§^!b§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§6W§;
                     }
                     _loc21_ = _loc2_.§break§;
                     while(_loc21_)
                     {
                        if(_loc9_.§#y§ != _loc9_.§`!#§)
                        {
                           if(_loc21_.§5!@§.§39§ != true)
                           {
                              if((_loc22_ = _loc21_.§>!B§).IsActive() != false)
                              {
                                 _loc9_.§2!0§(_loc21_.§5!@§);
                                 _loc21_.§5!@§.§39§ = true;
                                 if(!(_loc22_.§%!%§ & b2Body.§^!b§))
                                 {
                                    if(_loc22_.§#+§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§-!@§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§%!%§ |= b2Body.§^!b§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§6W§;
                     }
                  }
               }
               (_loc17_ = §=g§).§=s§ = false;
               _loc17_.§#"§ = (1 - _loc13_) * param1.§#"§;
               _loc17_.§>,§ = 1 / _loc17_.§#"§;
               _loc17_.§;%§ = 0;
               _loc17_.§7!a§ = param1.§7!a§;
               _loc17_.§9!G§ = param1.§9!G§;
               _loc9_.§`!Q§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§ T§)
               {
                  _loc2_ = _loc9_.§>$§[_loc18_];
                  _loc2_.§%!%§ &= ~b2Body.§^!b§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§#+§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§5<§();
                        _loc7_ = _loc2_.§<!@§;
                        while(_loc7_)
                        {
                           _loc7_.§"!3§.§%!%§ &= ~b2Contact.§8!V§;
                           _loc7_ = _loc7_.§6W§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§`!7§)
               {
                  _loc11_ = _loc9_.§&^§[_loc18_];
                  _loc11_.§%!%§ &= ~(b2Contact.§8!V§ | b2Contact.§^!b§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§#y§)
               {
                  (_loc8_ = _loc9_.§<E§[_loc18_]).§39§ = false;
                  _loc18_++;
               }
               this.§`C§.§?o§();
            }
         }
      }
      
      b2internal function §else§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§#!9§();
         var _loc3_:b2Body = param1.§2J§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §%q§;
         switch(param1.§+C§)
         {
            case b2Joint.§0=§:
               this.§"O§.§?d§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§6-§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§6G§();
               _loc13_ = _loc11_.§ 2§();
               this.§"O§.§?d§(_loc12_,_loc8_,_loc10_);
               this.§"O§.§?d§(_loc13_,_loc9_,_loc10_);
               this.§"O§.§?d§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§0!f§:
               this.§"O§.§?d§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§"O§.§?d§(_loc6_,_loc8_,_loc10_);
               }
               this.§"O§.§?d§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§"O§.§?d§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §^6§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
      {
         var _loc4_:b2CircleShape = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:int = 0;
         var _loc9_:b2PolygonShape = null;
         var _loc10_:int = 0;
         var _loc11_:Vector.<b2Vec2> = null;
         var _loc12_:Vector.<b2Vec2> = null;
         var _loc13_:b2EdgeShape = null;
         switch(param1.§+C§)
         {
            case b2Shape.§9!X§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§ case§(param2,_loc4_.§+k§);
               _loc6_ = _loc4_.§!C§;
               _loc7_ = param2.R.col1;
               this.§"O§.§?!3§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§1!N§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§while§();
               _loc11_ = _loc9_.§,!P§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§ case§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§"O§.§'F§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§6!V§:
               _loc13_ = param1 as b2EdgeShape;
               this.§"O§.§?d§(b2Math.§ case§(param2,_loc13_.GetVertex1()),b2Math.§ case§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

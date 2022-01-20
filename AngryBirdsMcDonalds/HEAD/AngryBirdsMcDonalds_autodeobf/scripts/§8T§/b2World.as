package §8T§
{
   import §!!M§.*;
   import §+S§.*;
   import §,!V§.*;
   import §2G§.b2Controller;
   import §2G§.b2ControllerEdge;
   import §6!g§.*;
   import §<!D§.*;
   import §?!n§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §7!K§:b2Transform = new b2Transform();
      
      private static var §#!3§:b2Sweep = new b2Sweep();
      
      private static var §@!4§:b2Sweep = new b2Sweep();
      
      private static var §[X§:b2TimeStep = new b2TimeStep();
      
      private static var §=X§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §4!$§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §?T§:Boolean;
      
      private static var §%]§:Boolean;
      
      public static const §#!+§:int = 1;
      
      public static const §+!k§:int = 2;
       
      
      private var §3!`§:Vector.<b2Body>;
      
      b2internal var §3!V§:int;
      
      b2internal var §3!P§:b2ContactManager;
      
      private var §0!$§:b2ContactSolver;
      
      private var §9n§:b2Island;
      
      b2internal var §2e§:b2Body;
      
      private var §5Y§:b2Joint;
      
      b2internal var §=!c§:b2Contact;
      
      private var § w§:int;
      
      b2internal var §[P§:int;
      
      private var §0!c§:int;
      
      private var §6%§:b2Controller;
      
      private var §!! §:int;
      
      private var §^T§:b2Vec2;
      
      private var §9J§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §8e§:b2DestructionListener;
      
      private var §7!q§:b2DebugDraw;
      
      private var §08§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§3!`§ = new Vector.<b2Body>();
         this.§3!P§ = new b2ContactManager();
         this.§0!$§ = new b2ContactSolver();
         this.§9n§ = new b2Island();
         super();
         this.§8e§ = null;
         this.§7!q§ = null;
         this.§2e§ = null;
         this.§=!c§ = null;
         this.§5Y§ = null;
         this.§6%§ = null;
         this.§ w§ = 0;
         this.§[P§ = 0;
         this.§0!c§ = 0;
         this.§!! § = 0;
         §?T§ = true;
         §%]§ = true;
         this.§9J§ = param2;
         this.§^T§ = param1;
         this.§08§ = 0;
         this.§3!P§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§&5§(_loc3_);
      }
      
      public function §&Q§(param1:b2DestructionListener) : void
      {
         this.§8e§ = param1;
      }
      
      public function §6P§(param1:b2ContactFilter) : void
      {
         this.§3!P§.§#!j§ = param1;
      }
      
      public function §[!2§(param1:b2ContactListener) : void
      {
         this.§3!P§.§6!l§ = param1;
      }
      
      public function §[!$§(param1:b2DebugDraw) : void
      {
         this.§7!q§ = param1;
      }
      
      public function §class§(param1:§"!>§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§"!>§ = this.§3!P§.§>@§;
         this.§3!P§.§>@§ = param1;
         var _loc3_:b2Body = this.§2e§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§&!N§;
            while(_loc4_)
            {
               _loc4_.§46§ = param1.§,!F§(_loc2_.§'!G§(_loc4_.§46§),_loc4_);
               _loc4_ = _loc4_.§[h§;
            }
            _loc3_ = _loc3_.§[h§;
         }
      }
      
      public function §2!3§() : void
      {
         this.§3!P§.§>@§.§2!3§();
      }
      
      public function §9!l§() : int
      {
         return this.§3!P§.§>@§.§9!l§();
      }
      
      public function §&5§(param1:b2BodyDef) : b2Body
      {
         if(this.§-w§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§7%§ = null;
         _loc2_.§[h§ = this.§2e§;
         if(this.§2e§)
         {
            this.§2e§.§7%§ = _loc2_;
         }
         this.§2e§ = _loc2_;
         ++this.§ w§;
         return _loc2_;
      }
      
      public function §!!Y§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§-w§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§5Y§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§=h§;
            if(this.§8e§)
            {
               this.§8e§.§ 5§(_loc6_.§"!k§);
            }
            this.§ each§(_loc6_.§"!k§);
         }
         var _loc3_:b2ControllerEdge = param1.§6%§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§^w§;
            _loc7_.§`r§.§^!M§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§=!c§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§=h§;
            this.§3!P§.§60§(_loc8_.§]>§);
         }
         param1.§=!c§ = null;
         var _loc5_:b2Fixture = param1.§&!N§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§[h§;
            if(this.§8e§)
            {
               this.§8e§.§=!g§(_loc9_);
            }
            _loc9_.§9!8§(this.§3!P§.§>@§);
            _loc9_.§60§();
         }
         param1.§&!N§ = null;
         param1.§@!O§ = 0;
         if(param1.§7%§)
         {
            param1.§7%§.§[h§ = param1.§[h§;
         }
         if(param1.§[h§)
         {
            param1.§[h§.§7%§ = param1.§7%§;
         }
         if(param1 == this.§2e§)
         {
            this.§2e§ = param1.§[h§;
         }
         --this.§ w§;
      }
      
      public function §'!"§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§[u§(param1,null);
         _loc2_.§7%§ = null;
         _loc2_.§[h§ = this.§5Y§;
         if(this.§5Y§)
         {
            this.§5Y§.§7%§ = _loc2_;
         }
         this.§5Y§ = _loc2_;
         ++this.§0!c§;
         _loc2_.§%U§.§"!k§ = _loc2_;
         _loc2_.§%U§.§#B§ = _loc2_.§^!l§;
         _loc2_.§%U§.§>!;§ = null;
         _loc2_.§%U§.§=h§ = _loc2_.§0!?§.§5Y§;
         if(_loc2_.§0!?§.§5Y§)
         {
            _loc2_.§0!?§.§5Y§.§>!;§ = _loc2_.§%U§;
         }
         _loc2_.§0!?§.§5Y§ = _loc2_.§%U§;
         _loc2_.§'G§.§"!k§ = _loc2_;
         _loc2_.§'G§.§#B§ = _loc2_.§0!?§;
         _loc2_.§'G§.§>!;§ = null;
         _loc2_.§'G§.§=h§ = _loc2_.§^!l§.§5Y§;
         if(_loc2_.§^!l§.§5Y§)
         {
            _loc2_.§^!l§.§5Y§.§>!;§ = _loc2_.§'G§;
         }
         _loc2_.§^!l§.§5Y§ = _loc2_.§'G§;
         var _loc3_:b2Body = param1.§-i§;
         var _loc4_:b2Body = param1.§0!F§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§ v§();
            while(_loc5_)
            {
               if(_loc5_.§#B§ == _loc3_)
               {
                  _loc5_.§]>§.§6&§();
               }
               _loc5_ = _loc5_.§=h§;
            }
         }
         return _loc2_;
      }
      
      public function § each§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§?!m§;
         if(param1.§7%§)
         {
            param1.§7%§.§[h§ = param1.§[h§;
         }
         if(param1.§[h§)
         {
            param1.§[h§.§7%§ = param1.§7%§;
         }
         if(param1 == this.§5Y§)
         {
            this.§5Y§ = param1.§[h§;
         }
         var _loc3_:b2Body = param1.§0!?§;
         var _loc4_:b2Body = param1.§^!l§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§%U§.§>!;§)
         {
            param1.§%U§.§>!;§.§=h§ = param1.§%U§.§=h§;
         }
         if(param1.§%U§.§=h§)
         {
            param1.§%U§.§=h§.§>!;§ = param1.§%U§.§>!;§;
         }
         if(param1.§%U§ == _loc3_.§5Y§)
         {
            _loc3_.§5Y§ = param1.§%U§.§=h§;
         }
         param1.§%U§.§>!;§ = null;
         param1.§%U§.§=h§ = null;
         if(param1.§'G§.§>!;§)
         {
            param1.§'G§.§>!;§.§=h§ = param1.§'G§.§=h§;
         }
         if(param1.§'G§.§=h§)
         {
            param1.§'G§.§=h§.§>!;§ = param1.§'G§.§>!;§;
         }
         if(param1.§'G§ == _loc4_.§5Y§)
         {
            _loc4_.§5Y§ = param1.§'G§.§=h§;
         }
         param1.§'G§.§>!;§ = null;
         param1.§'G§.§=h§ = null;
         b2Joint.§60§(param1,null);
         --this.§0!c§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§ v§();
            while(_loc5_)
            {
               if(_loc5_.§#B§ == _loc3_)
               {
                  _loc5_.§]>§.§6&§();
               }
               _loc5_ = _loc5_.§=h§;
            }
         }
      }
      
      public function §>u§(param1:b2Controller) : b2Controller
      {
         param1.§[h§ = this.§6%§;
         param1.§7%§ = null;
         this.§6%§ = param1;
         param1.m_world = this;
         ++this.§!! §;
         return param1;
      }
      
      public function §[T§(param1:b2Controller) : void
      {
         if(param1.§7%§)
         {
            param1.§7%§.§[h§ = param1.§[h§;
         }
         if(param1.§[h§)
         {
            param1.§[h§.§7%§ = param1.§7%§;
         }
         if(this.§6%§ == param1)
         {
            this.§6%§ = param1.§[h§;
         }
         --this.§!! §;
      }
      
      public function §82§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§[h§ = this.§6%§;
         param1.§7%§ = null;
         if(this.§6%§)
         {
            this.§6%§.§7%§ = param1;
         }
         this.§6%§ = param1;
         ++this.§!! §;
         param1.m_world = this;
         return param1;
      }
      
      public function §#!!§(param1:b2Controller) : void
      {
         param1.§['§();
         if(param1.§[h§)
         {
            param1.§[h§.§7%§ = param1.§7%§;
         }
         if(param1.§7%§)
         {
            param1.§7%§.§[h§ = param1.§[h§;
         }
         if(param1 == this.§6%§)
         {
            this.§6%§ = param1.§[h§;
         }
         --this.§!! §;
      }
      
      public function §>!p§(param1:Boolean) : void
      {
         §?T§ = param1;
      }
      
      public function §^§(param1:Boolean) : void
      {
         §%]§ = param1;
      }
      
      public function §2L§() : int
      {
         return this.§ w§;
      }
      
      public function §6E§() : int
      {
         return this.§0!c§;
      }
      
      public function §+t§() : int
      {
         return this.§[P§;
      }
      
      public function §@!'§(param1:b2Vec2) : void
      {
         this.§^T§ = param1;
      }
      
      public function §4K§() : b2Vec2
      {
         return this.§^T§;
      }
      
      public function §,!K§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §`8§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§3!V§ & §#!+§)
         {
            this.§3!P§.§'!B§();
            this.§3!V§ &= ~§#!+§;
         }
         this.§3!V§ |= §+!k§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§9[§ = param1;
         _loc4_.§9!F§ = param2;
         _loc4_.§]"§ = param3;
         if(param1 > 0)
         {
            _loc4_.§1E§ = 1 / param1;
         }
         else
         {
            _loc4_.§1E§ = 0;
         }
         _loc4_.§4!a§ = this.§08§ * param1;
         _loc4_.§7z§ = §?T§;
         this.§3!P§.§<O§();
         if(_loc4_.§9[§ > 0)
         {
            this.§`H§(_loc4_);
         }
         if(§%]§ && _loc4_.§9[§ > 0)
         {
            this.§^!f§(_loc4_);
         }
         if(_loc4_.§9[§ > 0)
         {
            this.§08§ = _loc4_.§1E§;
         }
         this.§3!V§ &= ~§+!k§;
      }
      
      public function §'#§() : void
      {
         var _loc1_:b2Body = this.§2e§;
         while(_loc1_)
         {
            _loc1_.§5!I§.§%^§();
            _loc1_.§`7§ = 0;
            _loc1_ = _loc1_.§[h§;
         }
      }
      
      public function §]!%§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§"!>§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§7!q§ == null)
         {
            return;
         }
         this.§7!q§.§%!#§.graphics.clear();
         var _loc1_:uint = this.§7!q§.§=!7§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§;!2§)
         {
            _loc3_ = this.§2e§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.IsActive() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§8!+§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§1l§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§8!+§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§1l§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§8!+§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§8!+§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§8!+§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§[h§;
               }
               _loc3_ = _loc3_.§[h§;
            }
         }
         if(_loc1_ & b2DebugDraw.§-!p§)
         {
            _loc6_ = this.§5Y§;
            while(_loc6_)
            {
               this.§-F§(_loc6_);
               _loc6_ = _loc6_.§[h§;
            }
         }
         if(_loc1_ & b2DebugDraw.§&J§)
         {
            _loc16_ = this.§6%§;
            while(_loc16_)
            {
               _loc16_.§?!-§(this.§7!q§);
               _loc16_ = _loc16_.§[h§;
            }
         }
         if(_loc1_ & b2DebugDraw.§8S§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§3!P§.§=!c§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§8!O§();
               _loc19_ = _loc17_.§>$§();
               _loc20_ = _loc18_.§'i§().§-!f§();
               _loc21_ = _loc19_.§'i§().§-!f§();
               this.§7!q§.§1!_§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§%!J§();
            }
         }
         if(_loc1_ & b2DebugDraw.§;7§)
         {
            _loc7_ = this.§3!P§.§>@§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§2e§;
            while(_loc3_)
            {
               if(_loc3_.IsActive() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§'!G§(_loc4_.§46§);
                     _loc14_[0].Set(_loc22_.§-!j§.x,_loc22_.§-!j§.y);
                     _loc14_[1].Set(_loc22_.§5!M§.x,_loc22_.§-!j§.y);
                     _loc14_[2].Set(_loc22_.§5!M§.x,_loc22_.§5!M§.y);
                     _loc14_[3].Set(_loc22_.§-!j§.x,_loc22_.§5!M§.y);
                     this.§7!q§.§;!_§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§%!J§();
                  }
               }
               _loc3_ = _loc3_.§%!J§();
            }
         }
         if(_loc1_ & b2DebugDraw.§0!C§)
         {
            _loc3_ = this.§2e§;
            while(_loc3_)
            {
               (_loc11_ = §7!K§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§7!q§.§2!?§(_loc11_);
               _loc3_ = _loc3_.§[h§;
            }
         }
      }
      
      public function §9q§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§"!>§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§3!P§.§>@§;
         broadPhase.§,;§(WorldQueryWrapper,aabb);
      }
      
      public function §'!3§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§"!>§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§?3§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§+!g§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§%H§();
         }
         broadPhase = this.§3!P§.§>@§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§,;§(WorldQueryWrapper,aabb);
      }
      
      public function §3!^§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§"!>§ = null;
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
         broadPhase = this.§3!P§.§>@§;
         var aabb:b2AABB = new b2AABB();
         aabb.§-!j§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§5!M§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§,;§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§"!>§ = null;
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
            return param1.§"C§;
         };
         broadPhase = this.§3!P§.§>@§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §5!K§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §6!J§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §"k§() : b2Body
      {
         return this.§2e§;
      }
      
      public function §0!,§() : b2Joint
      {
         return this.§5Y§;
      }
      
      public function § v§() : b2Contact
      {
         return this.§=!c§;
      }
      
      public function §-w§() : Boolean
      {
         return (this.§3!V§ & §+!k§) > 0;
      }
      
      b2internal function §`H§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§6%§;
         while(_loc3_)
         {
            _loc3_.§`8§(param1);
            _loc3_ = _loc3_.§[h§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§9n§).§`!9§(this.§ w§,this.§[P§,this.§0!c§,null,this.§3!P§.§6!l§,this.§0!$§);
         _loc2_ = this.§2e§;
         while(_loc2_)
         {
            _loc2_.§3!V§ &= ~b2Body.§"1§;
            _loc2_ = _loc2_.§[h§;
         }
         var _loc5_:b2Contact = this.§=!c§;
         while(_loc5_)
         {
            _loc5_.§3!V§ &= ~b2Contact.§"1§;
            _loc5_ = _loc5_.§[h§;
         }
         var _loc6_:b2Joint = this.§5Y§;
         while(_loc6_)
         {
            _loc6_.§4!D§ = false;
            _loc6_ = _loc6_.§[h§;
         }
         var _loc7_:int = this.§ w§;
         var _loc8_:Vector.<b2Body> = this.§3!`§;
         var _loc9_:b2Body = this.§2e§;
         while(_loc9_)
         {
            if(!(_loc9_.§3!V§ & b2Body.§"1§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.IsActive() == false))
               {
                  if(_loc9_.§1l§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§['§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§3!V§ |= b2Body.§"1§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§5@§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§1l§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§=!c§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§]>§.§3!V§ & b2Contact.§"1§))
                              {
                                 if(!(_loc13_.§]>§.§;!9§() == true || _loc13_.§]>§.§="§() == false || _loc13_.§]>§.§?#§() == false))
                                 {
                                    _loc4_.§?!I§(_loc13_.§]>§);
                                    _loc13_.§]>§.§3!V§ |= b2Contact.§"1§;
                                    if(!((_loc12_ = _loc13_.§#B§).§3!V§ & b2Body.§"1§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§3!V§ |= b2Body.§"1§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§=h§;
                           }
                           _loc14_ = _loc2_.§5Y§;
                           while(_loc14_)
                           {
                              if(_loc14_.§"!k§.§4!D§ != true)
                              {
                                 if((_loc12_ = _loc14_.§#B§).IsActive() != false)
                                 {
                                    _loc4_.§,! §(_loc14_.§"!k§);
                                    _loc14_.§"!k§.§4!D§ = true;
                                    if(!(_loc12_.§3!V§ & b2Body.§"1§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§3!V§ |= b2Body.§"1§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§=h§;
                           }
                        }
                     }
                     _loc4_.§`H§(param1,this.§^T§,this.§9J§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§ w§)
                     {
                        _loc2_ = _loc4_.§1'§[_loc11_];
                        if(_loc2_.§1l§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§3!V§ &= ~b2Body.§"1§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§[h§;
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
         _loc2_ = this.§2e§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.IsActive() == false))
            {
               if(_loc2_.§1l§() != b2Body.b2_staticBody)
               {
                  _loc2_.§`!<§();
               }
            }
            _loc2_ = _loc2_.§[h§;
         }
         this.§3!P§.§'!B§();
      }
      
      b2internal function §^!f§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§9n§).§`!9§(this.§ w§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§3!P§.§6!l§,this.§0!$§);
         var _loc10_:Vector.<b2Body> = §=X§;
         _loc2_ = this.§2e§;
         while(_loc2_)
         {
            _loc2_.§3!V§ &= ~b2Body.§"1§;
            _loc2_.m_sweep.§?9§ = 0;
            _loc2_ = _loc2_.§[h§;
         }
         _loc11_ = this.§=!c§;
         while(_loc11_)
         {
            _loc11_.§3!V§ &= ~(b2Contact.§!2§ | b2Contact.§"1§);
            _loc11_ = _loc11_.§[h§;
         }
         _loc8_ = this.§5Y§;
         while(_loc8_)
         {
            _loc8_.§4!D§ = false;
            _loc8_ = _loc8_.§[h§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§=!c§;
            while(_loc11_)
            {
               if(!(_loc11_.§;!9§() == true || _loc11_.§="§() == false || _loc11_.§#T§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§3!V§ & b2Contact.§!2§)
                  {
                     _loc19_ = _loc11_.§9D§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§3!K§;
                     _loc4_ = _loc11_.§!!b§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§1l§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§1l§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr672:
                        _loc11_ = _loc11_.§[h§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§?9§;
                     if(_loc5_.m_sweep.§?9§ < _loc6_.m_sweep.§?9§)
                     {
                        _loc20_ = _loc6_.m_sweep.§?9§;
                        _loc5_.m_sweep.§,b§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§?9§ < _loc5_.m_sweep.§?9§)
                     {
                        _loc20_ = _loc5_.m_sweep.§?9§;
                        _loc6_.m_sweep.§,b§(_loc20_);
                     }
                     _loc19_ = _loc11_.§>Y§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§9D§ = _loc19_;
                     _loc11_.§3!V§ |= b2Contact.§!2§;
                     §§goto(addr672);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr672);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§3!K§;
            _loc4_ = _loc12_.§!!b§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §#!3§.Set(_loc5_.m_sweep);
            §@!4§.Set(_loc6_.m_sweep);
            _loc5_.§,b§(_loc13_);
            _loc6_.§,b§(_loc13_);
            _loc12_.§63§(this.§3!P§.§6!l§);
            _loc12_.§3!V§ &= ~b2Contact.§!2§;
            if(_loc12_.§;!9§() == true || _loc12_.§="§() == false)
            {
               _loc5_.m_sweep.Set(§#!3§);
               _loc6_.m_sweep.Set(§@!4§);
               _loc5_.§40§();
               _loc6_.§40§();
            }
            else if(_loc12_.§?#§() != false)
            {
               if((_loc14_ = _loc5_).§1l§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§['§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§3!V§ |= b2Body.§"1§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§5@§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§1l§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§=!c§;
                     while(_loc7_)
                     {
                        if(_loc9_.§[P§ == _loc9_.§3h§)
                        {
                           break;
                        }
                        if(!(_loc7_.§]>§.§3!V§ & b2Contact.§"1§))
                        {
                           if(!(_loc7_.§]>§.§;!9§() == true || _loc7_.§]>§.§="§() == false || _loc7_.§]>§.§?#§() == false))
                           {
                              _loc9_.§?!I§(_loc7_.§]>§);
                              _loc7_.§]>§.§3!V§ |= b2Contact.§"1§;
                              if(!((_loc22_ = _loc7_.§#B§).§3!V§ & b2Body.§"1§))
                              {
                                 if(_loc22_.§1l§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§,b§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§3!V§ |= b2Body.§"1§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§=h§;
                     }
                     _loc21_ = _loc2_.§5Y§;
                     while(_loc21_)
                     {
                        if(_loc9_.§0!c§ != _loc9_.§[!f§)
                        {
                           if(_loc21_.§"!k§.§4!D§ != true)
                           {
                              if((_loc22_ = _loc21_.§#B§).IsActive() != false)
                              {
                                 _loc9_.§,! §(_loc21_.§"!k§);
                                 _loc21_.§"!k§.§4!D§ = true;
                                 if(!(_loc22_.§3!V§ & b2Body.§"1§))
                                 {
                                    if(_loc22_.§1l§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§,b§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§3!V§ |= b2Body.§"1§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§=h§;
                     }
                  }
               }
               (_loc17_ = §[X§).§7z§ = false;
               _loc17_.§9[§ = (1 - _loc13_) * param1.§9[§;
               _loc17_.§1E§ = 1 / _loc17_.§9[§;
               _loc17_.§4!a§ = 0;
               _loc17_.§9!F§ = param1.§9!F§;
               _loc17_.§]"§ = param1.§]"§;
               _loc9_.§^!f§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§ w§)
               {
                  _loc2_ = _loc9_.§1'§[_loc18_];
                  _loc2_.§3!V§ &= ~b2Body.§"1§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§1l§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§`!<§();
                        _loc7_ = _loc2_.§=!c§;
                        while(_loc7_)
                        {
                           _loc7_.§]>§.§3!V§ &= ~b2Contact.§!2§;
                           _loc7_ = _loc7_.§=h§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§[P§)
               {
                  _loc11_ = _loc9_.§%!3§[_loc18_];
                  _loc11_.§3!V§ &= ~(b2Contact.§!2§ | b2Contact.§"1§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§0!c§)
               {
                  (_loc8_ = _loc9_.§'!h§[_loc18_]).§4!D§ = false;
                  _loc18_++;
               }
               this.§3!P§.§'!B§();
            }
         }
      }
      
      b2internal function §-F§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§`%§();
         var _loc3_:b2Body = param1.§7!O§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §4!$§;
         switch(param1.§@k§)
         {
            case b2Joint.§=E§:
               this.§7!q§.§1!_§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§'!r§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§%-§();
               _loc13_ = _loc11_.§1!H§();
               this.§7!q§.§1!_§(_loc12_,_loc8_,_loc10_);
               this.§7!q§.§1!_§(_loc13_,_loc9_,_loc10_);
               this.§7!q§.§1!_§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§&"§:
               this.§7!q§.§1!_§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§7!q§.§1!_§(_loc6_,_loc8_,_loc10_);
               }
               this.§7!q§.§1!_§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§7!q§.§1!_§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §8!+§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§@k§)
         {
            case b2Shape.§8M§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§<j§(param2,_loc4_.§ A§);
               _loc6_ = _loc4_.§0!7§;
               _loc7_ = param2.R.col1;
               this.§7!q§.§4!-§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§%'§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§1-§();
               _loc11_ = _loc9_.§4m§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§<j§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§7!q§.§'!j§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§&!n§:
               _loc13_ = param1 as b2EdgeShape;
               this.§7!q§.§1!_§(b2Math.§<j§(param2,_loc13_.GetVertex1()),b2Math.§<j§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

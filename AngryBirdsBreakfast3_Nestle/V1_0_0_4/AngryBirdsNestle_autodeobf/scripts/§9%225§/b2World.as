package §9"5§
{
   import §!!o§.*;
   import §+!0§.*;
   import §,P§.*;
   import §-%§.*;
   import §>!R§.*;
   import §>"&§.*;
   import §]y§.b2Controller;
   import §]y§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §1!s§:b2Transform = new b2Transform();
      
      private static var §`R§:b2Sweep = new b2Sweep();
      
      private static var §,!'§:b2Sweep = new b2Sweep();
      
      private static var §=! §:b2TimeStep = new b2TimeStep();
      
      private static var §5!h§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §'!m§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §%'§:Boolean;
      
      private static var §4!H§:Boolean;
      
      public static const §1!Z§:int = 1;
      
      public static const §6!8§:int = 2;
       
      
      private var §6f§:Vector.<b2Body>;
      
      b2internal var §&!G§:int;
      
      b2internal var §&h§:b2ContactManager;
      
      private var §-A§:b2ContactSolver;
      
      private var §4!#§:b2Island;
      
      b2internal var § p§:b2Body;
      
      private var §9`§:b2Joint;
      
      b2internal var §,!D§:b2Contact;
      
      private var §,L§:int;
      
      b2internal var §^O§:int;
      
      private var §8!>§:int;
      
      private var §6!1§:b2Controller;
      
      private var §&[§:int;
      
      private var §<"%§:b2Vec2;
      
      private var §9j§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §,!$§:b2DestructionListener;
      
      private var §1!0§:b2DebugDraw;
      
      private var §@!l§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§6f§ = new Vector.<b2Body>();
         this.§&h§ = new b2ContactManager();
         this.§-A§ = new b2ContactSolver();
         this.§4!#§ = new b2Island();
         super();
         this.§,!$§ = null;
         this.§1!0§ = null;
         this.§ p§ = null;
         this.§,!D§ = null;
         this.§9`§ = null;
         this.§6!1§ = null;
         this.§,L§ = 0;
         this.§^O§ = 0;
         this.§8!>§ = 0;
         this.§&[§ = 0;
         §%'§ = true;
         §4!H§ = true;
         this.§9j§ = param2;
         this.§<"%§ = param1;
         this.§@!l§ = 0;
         this.§&h§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §5!p§(param1:b2DestructionListener) : void
      {
         this.§,!$§ = param1;
      }
      
      public function §]X§(param1:b2ContactFilter) : void
      {
         this.§&h§.§4!i§ = param1;
      }
      
      public function §4I§(param1:b2ContactListener) : void
      {
         this.§&h§.§3"3§ = param1;
      }
      
      public function §%!E§(param1:b2DebugDraw) : void
      {
         this.§1!0§ = param1;
      }
      
      public function §2J§(param1:§7!G§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§7!G§ = this.§&h§.§%!_§;
         this.§&h§.§%!_§ = param1;
         var _loc3_:b2Body = this.§ p§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§2`§;
            while(_loc4_)
            {
               _loc4_.§7L§ = param1.§[!o§(_loc2_.§[!7§(_loc4_.§7L§),_loc4_);
               _loc4_ = _loc4_.§]4§;
            }
            _loc3_ = _loc3_.§]4§;
         }
      }
      
      public function §2!3§() : void
      {
         this.§&h§.§%!_§.§2!3§();
      }
      
      public function §7h§() : int
      {
         return this.§&h§.§%!_§.§7h§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§=_§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§'"5§ = null;
         _loc2_.§]4§ = this.§ p§;
         if(this.§ p§)
         {
            this.§ p§.§'"5§ = _loc2_;
         }
         this.§ p§ = _loc2_;
         ++this.§,L§;
         return _loc2_;
      }
      
      public function §>[§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§=_§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§9`§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.next;
            if(this.§,!$§)
            {
               this.§,!$§.§,!u§(_loc6_.§;!f§);
            }
            this.§[!^§(_loc6_.§;!f§);
         }
         var _loc3_:b2ControllerEdge = param1.§6!1§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§7b§;
            _loc7_.controller.§6+§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§,!D§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.next;
            this.§&h§.§&`§(_loc8_.§4%§);
         }
         param1.§,!D§ = null;
         var _loc5_:b2Fixture = param1.§2`§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§]4§;
            if(this.§,!$§)
            {
               this.§,!$§.§'!p§(_loc9_);
            }
            _loc9_.§<h§(this.§&h§.§%!_§);
            _loc9_.§&`§();
         }
         param1.§2`§ = null;
         param1.§7!5§ = 0;
         if(param1.§'"5§)
         {
            param1.§'"5§.§]4§ = param1.§]4§;
         }
         if(param1.§]4§)
         {
            param1.§]4§.§'"5§ = param1.§'"5§;
         }
         if(param1 == this.§ p§)
         {
            this.§ p§ = param1.§]4§;
         }
         --this.§,L§;
      }
      
      public function §0!B§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§0!8§(param1,null);
         _loc2_.§'"5§ = null;
         _loc2_.§]4§ = this.§9`§;
         if(this.§9`§)
         {
            this.§9`§.§'"5§ = _loc2_;
         }
         this.§9`§ = _loc2_;
         ++this.§8!>§;
         _loc2_.§+-§.§;!f§ = _loc2_;
         _loc2_.§+-§.§8`§ = _loc2_.§6=§;
         _loc2_.§+-§.§[!?§ = null;
         _loc2_.§+-§.next = _loc2_.§9t§.§9`§;
         if(_loc2_.§9t§.§9`§)
         {
            _loc2_.§9t§.§9`§.§[!?§ = _loc2_.§+-§;
         }
         _loc2_.§9t§.§9`§ = _loc2_.§+-§;
         _loc2_.§`!M§.§;!f§ = _loc2_;
         _loc2_.§`!M§.§8`§ = _loc2_.§9t§;
         _loc2_.§`!M§.§[!?§ = null;
         _loc2_.§`!M§.next = _loc2_.§6=§.§9`§;
         if(_loc2_.§6=§.§9`§)
         {
            _loc2_.§6=§.§9`§.§[!?§ = _loc2_.§`!M§;
         }
         _loc2_.§6=§.§9`§ = _loc2_.§`!M§;
         var _loc3_:b2Body = param1.§6z§;
         var _loc4_:b2Body = param1.§@! §;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§%!"§();
            while(_loc5_)
            {
               if(_loc5_.§8`§ == _loc3_)
               {
                  _loc5_.§4%§.§?%§();
               }
               _loc5_ = _loc5_.next;
            }
         }
         return _loc2_;
      }
      
      public function §[!^§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§!!k§;
         if(param1.§'"5§)
         {
            param1.§'"5§.§]4§ = param1.§]4§;
         }
         if(param1.§]4§)
         {
            param1.§]4§.§'"5§ = param1.§'"5§;
         }
         if(param1 == this.§9`§)
         {
            this.§9`§ = param1.§]4§;
         }
         var _loc3_:b2Body = param1.§9t§;
         var _loc4_:b2Body = param1.§6=§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§+-§.§[!?§)
         {
            param1.§+-§.§[!?§.next = param1.§+-§.next;
         }
         if(param1.§+-§.next)
         {
            param1.§+-§.next.§[!?§ = param1.§+-§.§[!?§;
         }
         if(param1.§+-§ == _loc3_.§9`§)
         {
            _loc3_.§9`§ = param1.§+-§.next;
         }
         param1.§+-§.§[!?§ = null;
         param1.§+-§.next = null;
         if(param1.§`!M§.§[!?§)
         {
            param1.§`!M§.§[!?§.next = param1.§`!M§.next;
         }
         if(param1.§`!M§.next)
         {
            param1.§`!M§.next.§[!?§ = param1.§`!M§.§[!?§;
         }
         if(param1.§`!M§ == _loc4_.§9`§)
         {
            _loc4_.§9`§ = param1.§`!M§.next;
         }
         param1.§`!M§.§[!?§ = null;
         param1.§`!M§.next = null;
         b2Joint.§&`§(param1,null);
         --this.§8!>§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§%!"§();
            while(_loc5_)
            {
               if(_loc5_.§8`§ == _loc3_)
               {
                  _loc5_.§4%§.§?%§();
               }
               _loc5_ = _loc5_.next;
            }
         }
      }
      
      public function §0U§(param1:b2Controller) : b2Controller
      {
         param1.§]4§ = this.§6!1§;
         param1.§'"5§ = null;
         this.§6!1§ = param1;
         param1.m_world = this;
         ++this.§&[§;
         return param1;
      }
      
      public function §'!h§(param1:b2Controller) : void
      {
         if(param1.§'"5§)
         {
            param1.§'"5§.§]4§ = param1.§]4§;
         }
         if(param1.§]4§)
         {
            param1.§]4§.§'"5§ = param1.§'"5§;
         }
         if(this.§6!1§ == param1)
         {
            this.§6!1§ = param1.§]4§;
         }
         --this.§&[§;
      }
      
      public function §8!u§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§]4§ = this.§6!1§;
         param1.§'"5§ = null;
         if(this.§6!1§)
         {
            this.§6!1§.§'"5§ = param1;
         }
         this.§6!1§ = param1;
         ++this.§&[§;
         param1.m_world = this;
         return param1;
      }
      
      public function §0"$§(param1:b2Controller) : void
      {
         param1.§9!C§();
         if(param1.§]4§)
         {
            param1.§]4§.§'"5§ = param1.§'"5§;
         }
         if(param1.§'"5§)
         {
            param1.§'"5§.§]4§ = param1.§]4§;
         }
         if(param1 == this.§6!1§)
         {
            this.§6!1§ = param1.§]4§;
         }
         --this.§&[§;
      }
      
      public function §<!L§(param1:Boolean) : void
      {
         §%'§ = param1;
      }
      
      public function §'"#§(param1:Boolean) : void
      {
         §4!H§ = param1;
      }
      
      public function §&!C§() : int
      {
         return this.§,L§;
      }
      
      public function §?8§() : int
      {
         return this.§8!>§;
      }
      
      public function §->§() : int
      {
         return this.§^O§;
      }
      
      public function §7"&§(param1:b2Vec2) : void
      {
         this.§<"%§ = param1;
      }
      
      public function §22§() : b2Vec2
      {
         return this.§<"%§;
      }
      
      public function §1!6§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §9!s§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§&!G§ & §1!Z§)
         {
            this.§&h§.§8!x§();
            this.§&!G§ &= ~§1!Z§;
         }
         this.§&!G§ |= §6!8§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§ !&§ = param1;
         _loc4_.§2#§ = param2;
         _loc4_.§4"&§ = param3;
         if(param1 > 0)
         {
            _loc4_.§ L§ = 1 / param1;
         }
         else
         {
            _loc4_.§ L§ = 0;
         }
         _loc4_.§%!k§ = this.§@!l§ * param1;
         _loc4_.§3!`§ = §%'§;
         this.§&h§.§0!@§();
         if(_loc4_.§ !&§ > 0)
         {
            this.§]!3§(_loc4_);
         }
         if(§4!H§ && _loc4_.§ !&§ > 0)
         {
            this.§,",§(_loc4_);
         }
         if(_loc4_.§ !&§ > 0)
         {
            this.§@!l§ = _loc4_.§ L§;
         }
         this.§&!G§ &= ~§6!8§;
      }
      
      public function §implements§() : void
      {
         var _loc1_:b2Body = this.§ p§;
         while(_loc1_)
         {
            _loc1_.§@p§.§'p§();
            _loc1_.§%#§ = 0;
            _loc1_ = _loc1_.§]4§;
         }
      }
      
      public function §%1§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§7!G§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§1!0§ == null)
         {
            return;
         }
         this.§1!0§.§5!Y§.graphics.clear();
         var _loc1_:uint = this.§1!0§.§`V§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§""4§)
         {
            _loc3_ = this.§ p§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§"_§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§&!9§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§4!C§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§&!9§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§4!C§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§&!9§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§&!9§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§&!9§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§]4§;
               }
               _loc3_ = _loc3_.§]4§;
            }
         }
         if(_loc1_ & b2DebugDraw.§;!n§)
         {
            _loc6_ = this.§9`§;
            while(_loc6_)
            {
               this.§&i§(_loc6_);
               _loc6_ = _loc6_.§]4§;
            }
         }
         if(_loc1_ & b2DebugDraw.§&;§)
         {
            _loc16_ = this.§6!1§;
            while(_loc16_)
            {
               _loc16_.§<!K§(this.§1!0§);
               _loc16_ = _loc16_.§]4§;
            }
         }
         if(_loc1_ & b2DebugDraw.§[Y§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§&h§.§,!D§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§?s§();
               _loc19_ = _loc17_.§^!q§();
               _loc20_ = _loc18_.§4!y§().§^!d§();
               _loc21_ = _loc19_.§4!y§().§^!d§();
               this.§1!0§.§`!c§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§+"3§();
            }
         }
         if(_loc1_ & b2DebugDraw.§<!Z§)
         {
            _loc7_ = this.§&h§.§%!_§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§ p§;
            while(_loc3_)
            {
               if(_loc3_.§"_§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§[!7§(_loc4_.§7L§);
                     _loc14_[0].Set(_loc22_.§=V§.x,_loc22_.§=V§.y);
                     _loc14_[1].Set(_loc22_.§;!T§.x,_loc22_.§=V§.y);
                     _loc14_[2].Set(_loc22_.§;!T§.x,_loc22_.§;!T§.y);
                     _loc14_[3].Set(_loc22_.§=V§.x,_loc22_.§;!T§.y);
                     this.§1!0§.§5'§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§+"3§();
                  }
               }
               _loc3_ = _loc3_.§+"3§();
            }
         }
         if(_loc1_ & b2DebugDraw.§03§)
         {
            _loc3_ = this.§ p§;
            while(_loc3_)
            {
               (_loc11_ = §1!s§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§2!H§();
               this.§1!0§.§^!1§(_loc11_);
               _loc3_ = _loc3_.§]4§;
            }
         }
      }
      
      public function §]!f§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§7!G§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§&h§.§%!_§;
         broadPhase.§=<§(WorldQueryWrapper,aabb);
      }
      
      public function §!""§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§7!G§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§1`§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§,!h§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§"Y§();
         }
         broadPhase = this.§&h§.§%!_§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§=<§(WorldQueryWrapper,aabb);
      }
      
      public function §5!C§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§7!G§ = null;
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
         broadPhase = this.§&h§.§%!_§;
         var aabb:b2AABB = new b2AABB();
         aabb.§=V§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§;!T§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§=<§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§7!G§ = null;
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
            return param1.set;
         };
         broadPhase = this.§&h§.§%!_§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §;$§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §]!l§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §?Q§() : b2Body
      {
         return this.§ p§;
      }
      
      public function §@!m§() : b2Joint
      {
         return this.§9`§;
      }
      
      public function §%!"§() : b2Contact
      {
         return this.§,!D§;
      }
      
      public function §=_§() : Boolean
      {
         return (this.§&!G§ & §6!8§) > 0;
      }
      
      b2internal function §]!3§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§6!1§;
         while(_loc3_)
         {
            _loc3_.§9!s§(param1);
            _loc3_ = _loc3_.§]4§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§4!#§).§,n§(this.§,L§,this.§^O§,this.§8!>§,null,this.§&h§.§3"3§,this.§-A§);
         _loc2_ = this.§ p§;
         while(_loc2_)
         {
            _loc2_.§&!G§ &= ~b2Body.§%!=§;
            _loc2_ = _loc2_.§]4§;
         }
         var _loc5_:b2Contact = this.§,!D§;
         while(_loc5_)
         {
            _loc5_.§&!G§ &= ~b2Contact.§%!=§;
            _loc5_ = _loc5_.§]4§;
         }
         var _loc6_:b2Joint = this.§9`§;
         while(_loc6_)
         {
            _loc6_.§%U§ = false;
            _loc6_ = _loc6_.§]4§;
         }
         var _loc7_:int = this.§,L§;
         var _loc8_:Vector.<b2Body> = this.§6f§;
         var _loc9_:b2Body = this.§ p§;
         while(_loc9_)
         {
            if(!(_loc9_.§&!G§ & b2Body.§%!=§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§"_§() == false))
               {
                  if(_loc9_.§4!C§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§9!C§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§&!G§ |= b2Body.§%!=§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§5!>§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§4!C§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§,!D§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§4%§.§&!G§ & b2Contact.§%!=§))
                              {
                                 if(!(_loc13_.§4%§.§0!;§() == true || _loc13_.§4%§.§ "0§() == false || _loc13_.§4%§.each() == false))
                                 {
                                    _loc4_.§>!9§(_loc13_.§4%§);
                                    _loc13_.§4%§.§&!G§ |= b2Contact.§%!=§;
                                    if(!((_loc12_ = _loc13_.§8`§).§&!G§ & b2Body.§%!=§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§&!G§ |= b2Body.§%!=§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.next;
                           }
                           _loc14_ = _loc2_.§9`§;
                           while(_loc14_)
                           {
                              if(_loc14_.§;!f§.§%U§ != true)
                              {
                                 if((_loc12_ = _loc14_.§8`§).§"_§() != false)
                                 {
                                    _loc4_.§6!C§(_loc14_.§;!f§);
                                    _loc14_.§;!f§.§%U§ = true;
                                    if(!(_loc12_.§&!G§ & b2Body.§%!=§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§&!G§ |= b2Body.§%!=§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.next;
                           }
                        }
                     }
                     _loc4_.§]!3§(param1,this.§<"%§,this.§9j§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§,L§)
                     {
                        _loc2_ = _loc4_.§,o§[_loc11_];
                        if(_loc2_.§4!C§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§&!G§ &= ~b2Body.§%!=§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§]4§;
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
         _loc2_ = this.§ p§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§"_§() == false))
            {
               if(_loc2_.§4!C§() != b2Body.b2_staticBody)
               {
                  _loc2_.§1"+§();
               }
            }
            _loc2_ = _loc2_.§]4§;
         }
         this.§&h§.§8!x§();
      }
      
      b2internal function §,",§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§4!#§).§,n§(this.§,L§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§&h§.§3"3§,this.§-A§);
         var _loc10_:Vector.<b2Body> = §5!h§;
         _loc2_ = this.§ p§;
         while(_loc2_)
         {
            _loc2_.§&!G§ &= ~b2Body.§%!=§;
            _loc2_.m_sweep.§?!S§ = 0;
            _loc2_ = _loc2_.§]4§;
         }
         _loc11_ = this.§,!D§;
         while(_loc11_)
         {
            _loc11_.§&!G§ &= ~(b2Contact.§0"3§ | b2Contact.§%!=§);
            _loc11_.§@!V§ = 1;
            _loc11_ = _loc11_.§]4§;
         }
         _loc8_ = this.§9`§;
         while(_loc8_)
         {
            _loc8_.§%U§ = false;
            _loc8_ = _loc8_.§]4§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§,!D§;
            while(_loc11_)
            {
               if(!(_loc11_.§0!;§() == true || _loc11_.§ "0§() == false || _loc11_.§^!R§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§&!G§ & b2Contact.§0"3§)
                  {
                     _loc19_ = _loc11_.§@!V§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§4<§;
                     _loc4_ = _loc11_.§6%§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§4!C§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§4!C§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr591:
                        _loc11_ = _loc11_.§]4§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§?!S§;
                     if(_loc5_.m_sweep.§?!S§ < _loc6_.m_sweep.§?!S§)
                     {
                        _loc20_ = _loc6_.m_sweep.§?!S§;
                        _loc5_.m_sweep.§"!!§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§?!S§ < _loc5_.m_sweep.§?!S§)
                     {
                        _loc20_ = _loc5_.m_sweep.§?!S§;
                        _loc6_.m_sweep.§"!!§(_loc20_);
                     }
                     _loc19_ = _loc11_.§]!E§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§@!V§ = _loc19_;
                     _loc11_.§&!G§ |= b2Contact.§0"3§;
                     §§goto(addr591);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr591);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§4<§;
            _loc4_ = _loc12_.§6%§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §`R§.Set(_loc5_.m_sweep);
            §,!'§.Set(_loc6_.m_sweep);
            _loc5_.§"!!§(_loc13_);
            _loc6_.§"!!§(_loc13_);
            _loc12_.§!#§(this.§&h§.§3"3§);
            _loc12_.§&!G§ &= ~b2Contact.§0"3§;
            if(_loc12_.§0!;§() == true || _loc12_.§ "0§() == false)
            {
               _loc5_.m_sweep.Set(§`R§);
               _loc6_.m_sweep.Set(§,!'§);
               _loc5_.§53§();
               _loc6_.§53§();
            }
            else if(_loc12_.each() != false)
            {
               if((_loc14_ = _loc5_).§4!C§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§9!C§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§&!G§ |= b2Body.§%!=§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§5!>§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§4!C§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§,!D§;
                     while(_loc7_)
                     {
                        if(_loc9_.§^O§ == _loc9_.§=y§)
                        {
                           break;
                        }
                        if(!(_loc7_.§4%§.§&!G§ & b2Contact.§%!=§))
                        {
                           if(!(_loc7_.§4%§.§0!;§() == true || _loc7_.§4%§.§ "0§() == false || _loc7_.§4%§.each() == false))
                           {
                              _loc9_.§>!9§(_loc7_.§4%§);
                              _loc7_.§4%§.§&!G§ |= b2Contact.§%!=§;
                              if(!((_loc22_ = _loc7_.§8`§).§&!G§ & b2Body.§%!=§))
                              {
                                 if(_loc22_.§4!C§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§"!!§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§&!G§ |= b2Body.§%!=§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.next;
                     }
                     _loc21_ = _loc2_.§9`§;
                     while(_loc21_)
                     {
                        if(_loc9_.§8!>§ != _loc9_.§`S§)
                        {
                           if(_loc21_.§;!f§.§%U§ != true)
                           {
                              if((_loc22_ = _loc21_.§8`§).§"_§() != false)
                              {
                                 _loc9_.§6!C§(_loc21_.§;!f§);
                                 _loc21_.§;!f§.§%U§ = true;
                                 if(!(_loc22_.§&!G§ & b2Body.§%!=§))
                                 {
                                    if(_loc22_.§4!C§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§"!!§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§&!G§ |= b2Body.§%!=§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.next;
                     }
                  }
               }
               (_loc17_ = §=! §).§3!`§ = false;
               _loc17_.§ !&§ = (1 - _loc13_) * param1.§ !&§;
               _loc17_.§ L§ = 1 / _loc17_.§ !&§;
               _loc17_.§%!k§ = 1;
               _loc17_.§2#§ = param1.§2#§;
               _loc17_.§4"&§ = param1.§4"&§;
               _loc9_.§,",§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§,L§)
               {
                  _loc2_ = _loc9_.§,o§[_loc18_];
                  _loc2_.§&!G§ &= ~b2Body.§%!=§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§4!C§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§1"+§();
                        _loc7_ = _loc2_.§,!D§;
                        while(_loc7_)
                        {
                           _loc7_.§4%§.§&!G§ &= ~b2Contact.§0"3§;
                           _loc7_ = _loc7_.next;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§^O§)
               {
                  _loc11_ = _loc9_.§"!>§[_loc18_];
                  _loc11_.§&!G§ &= ~(b2Contact.§0"3§ | b2Contact.§%!=§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§8!>§)
               {
                  (_loc8_ = _loc9_.§[!L§[_loc18_]).§%U§ = false;
                  _loc18_++;
               }
               this.§&h§.§8!x§();
            }
         }
      }
      
      b2internal function §&i§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§#"-§();
         var _loc3_:b2Body = param1.§!",§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §'!m§;
         switch(param1.§^Z§)
         {
            case b2Joint.§-!D§:
               this.§1!0§.§`!c§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§4!p§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§2!S§();
               _loc13_ = _loc11_.§;!h§();
               this.§1!0§.§`!c§(_loc12_,_loc8_,_loc10_);
               this.§1!0§.§`!c§(_loc13_,_loc9_,_loc10_);
               this.§1!0§.§`!c§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§,![§:
               this.§1!0§.§`!c§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§1!0§.§`!c§(_loc6_,_loc8_,_loc10_);
               }
               this.§1!0§.§`!c§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§1!0§.§`!c§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §&!9§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§^Z§)
         {
            case b2Shape.§+;§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§>!U§(param2,_loc4_.§^7§);
               _loc6_ = _loc4_.§4=§;
               _loc7_ = param2.R.col1;
               this.§1!0§.§#!0§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§`g§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§7!e§();
               _loc11_ = _loc9_.§1I§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§>!U§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§1!0§.§05§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§-!g§:
               _loc13_ = param1 as b2EdgeShape;
               this.§1!0§.§`!c§(b2Math.§>!U§(param2,_loc13_.GetVertex1()),b2Math.§>!U§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

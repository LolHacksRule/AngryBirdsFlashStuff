package §>"_§
{
   import §1!2§.*;
   import §5G§.b2Controller;
   import §5G§.b2ControllerEdge;
   import §7!I§.*;
   import §7"A§.*;
   import §=![§.*;
   import §>r§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §1!M§:b2Transform = new b2Transform();
      
      private static var §3"h§:b2Sweep = new b2Sweep();
      
      private static var §'!v§:b2Sweep = new b2Sweep();
      
      private static var §,!w§:b2TimeStep = new b2TimeStep();
      
      private static var §7C§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §?";§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §@U§:Boolean;
      
      private static var §6!>§:Boolean;
      
      public static const §?!F§:int = 1;
      
      public static const §'"r§:int = 2;
       
      
      private var §%"7§:Vector.<b2Body>;
      
      b2internal var §7!D§:int;
      
      b2internal var §!! §:b2ContactManager;
      
      private var §5"m§:b2ContactSolver;
      
      private var §8#%§:b2Island;
      
      b2internal var §>'§:b2Body;
      
      private var §[!J§:b2Joint;
      
      b2internal var §>!r§:b2Contact;
      
      private var §'"e§:int;
      
      b2internal var §false§:int;
      
      private var §;!N§:int;
      
      private var §0"7§:b2Controller;
      
      private var §@"0§:int;
      
      private var §6b§:b2Vec2;
      
      private var §;;§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §""8§:b2DestructionListener;
      
      private var §0"j§:b2DebugDraw;
      
      private var §,"d§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§%"7§ = new Vector.<b2Body>();
         this.§!! § = new b2ContactManager();
         this.§5"m§ = new b2ContactSolver();
         this.§8#%§ = new b2Island();
         super();
         this.§""8§ = null;
         this.§0"j§ = null;
         this.§>'§ = null;
         this.§>!r§ = null;
         this.§[!J§ = null;
         this.§0"7§ = null;
         this.§'"e§ = 0;
         this.§false§ = 0;
         this.§;!N§ = 0;
         this.§@"0§ = 0;
         §@U§ = true;
         §6!>§ = true;
         this.§;;§ = param2;
         this.§6b§ = param1;
         this.§,"d§ = 0;
         this.§!! §.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §&m§(param1:b2DestructionListener) : void
      {
         this.§""8§ = param1;
      }
      
      public function §'!i§(param1:b2ContactFilter) : void
      {
         this.§!! §.§#!W§ = param1;
      }
      
      public function §-!?§(param1:b2ContactListener) : void
      {
         this.§!! §.§8!T§ = param1;
      }
      
      public function §,!,§(param1:b2DebugDraw) : void
      {
         this.§0"j§ = param1;
      }
      
      public function §0"4§(param1:§2";§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§2";§ = this.§!! §.§@u§;
         this.§!! §.§@u§ = param1;
         var _loc3_:b2Body = this.§>'§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§'H§;
            while(_loc4_)
            {
               _loc4_.§0#"§ = param1.§4"6§(_loc2_.§7!T§(_loc4_.§0#"§),_loc4_);
               _loc4_ = _loc4_.§?"Z§;
            }
            _loc3_ = _loc3_.§?"Z§;
         }
      }
      
      public function §%!M§() : void
      {
         this.§!! §.§@u§.§%!M§();
      }
      
      public function §9%§() : int
      {
         return this.§!! §.§@u§.§9%§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§^"t§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§%" § = null;
         _loc2_.§?"Z§ = this.§>'§;
         if(this.§>'§)
         {
            this.§>'§.§%" § = _loc2_;
         }
         this.§>'§ = _loc2_;
         ++this.§'"e§;
         return _loc2_;
      }
      
      public function DestroyBody(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§^"t§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§[!J§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§7u§;
            if(this.§""8§)
            {
               this.§""8§.§1!h§(_loc6_.§6!_§);
            }
            this.DestroyJoint(_loc6_.§6!_§);
         }
         var _loc3_:b2ControllerEdge = param1.§0"7§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§^F§;
            _loc7_.§]!D§.§[u§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§>!r§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§7u§;
            this.§!! §.§ !g§(_loc8_.§;!@§);
         }
         param1.§>!r§ = null;
         var _loc5_:b2Fixture = param1.§'H§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§?"Z§;
            if(this.§""8§)
            {
               this.§""8§.§&!n§(_loc9_);
            }
            _loc9_.§<!i§(this.§!! §.§@u§);
            _loc9_.§ !g§();
         }
         param1.§'H§ = null;
         param1.§ !X§ = 0;
         if(param1.§%" §)
         {
            param1.§%" §.§?"Z§ = param1.§?"Z§;
         }
         if(param1.§?"Z§)
         {
            param1.§?"Z§.§%" § = param1.§%" §;
         }
         if(param1 == this.§>'§)
         {
            this.§>'§ = param1.§?"Z§;
         }
         --this.§'"e§;
      }
      
      public function CreateJoint(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§ "a§(param1,null);
         _loc2_.§%" § = null;
         _loc2_.§?"Z§ = this.§[!J§;
         if(this.§[!J§)
         {
            this.§[!J§.§%" § = _loc2_;
         }
         this.§[!J§ = _loc2_;
         ++this.§;!N§;
         _loc2_.§"!q§.§6!_§ = _loc2_;
         _loc2_.§"!q§.other = _loc2_.§?!p§;
         _loc2_.§"!q§.§>!p§ = null;
         _loc2_.§"!q§.§7u§ = _loc2_.§ ,§.§[!J§;
         if(_loc2_.§ ,§.§[!J§)
         {
            _loc2_.§ ,§.§[!J§.§>!p§ = _loc2_.§"!q§;
         }
         _loc2_.§ ,§.§[!J§ = _loc2_.§"!q§;
         _loc2_.§3"o§.§6!_§ = _loc2_;
         _loc2_.§3"o§.other = _loc2_.§ ,§;
         _loc2_.§3"o§.§>!p§ = null;
         _loc2_.§3"o§.§7u§ = _loc2_.§?!p§.§[!J§;
         if(_loc2_.§?!p§.§[!J§)
         {
            _loc2_.§?!p§.§[!J§.§>!p§ = _loc2_.§3"o§;
         }
         _loc2_.§?!p§.§[!J§ = _loc2_.§3"o§;
         var _loc3_:b2Body = param1.§5"I§;
         var _loc4_:b2Body = param1.§[!K§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§&!4§();
            while(_loc5_)
            {
               if(_loc5_.other == _loc3_)
               {
                  _loc5_.§;!@§.§]!U§();
               }
               _loc5_ = _loc5_.§7u§;
            }
         }
         return _loc2_;
      }
      
      public function DestroyJoint(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§0!8§;
         if(param1.§%" §)
         {
            param1.§%" §.§?"Z§ = param1.§?"Z§;
         }
         if(param1.§?"Z§)
         {
            param1.§?"Z§.§%" § = param1.§%" §;
         }
         if(param1 == this.§[!J§)
         {
            this.§[!J§ = param1.§?"Z§;
         }
         var _loc3_:b2Body = param1.§ ,§;
         var _loc4_:b2Body = param1.§?!p§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§"!q§.§>!p§)
         {
            param1.§"!q§.§>!p§.§7u§ = param1.§"!q§.§7u§;
         }
         if(param1.§"!q§.§7u§)
         {
            param1.§"!q§.§7u§.§>!p§ = param1.§"!q§.§>!p§;
         }
         if(param1.§"!q§ == _loc3_.§[!J§)
         {
            _loc3_.§[!J§ = param1.§"!q§.§7u§;
         }
         param1.§"!q§.§>!p§ = null;
         param1.§"!q§.§7u§ = null;
         if(param1.§3"o§.§>!p§)
         {
            param1.§3"o§.§>!p§.§7u§ = param1.§3"o§.§7u§;
         }
         if(param1.§3"o§.§7u§)
         {
            param1.§3"o§.§7u§.§>!p§ = param1.§3"o§.§>!p§;
         }
         if(param1.§3"o§ == _loc4_.§[!J§)
         {
            _loc4_.§[!J§ = param1.§3"o§.§7u§;
         }
         param1.§3"o§.§>!p§ = null;
         param1.§3"o§.§7u§ = null;
         b2Joint.§ !g§(param1,null);
         --this.§;!N§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§&!4§();
            while(_loc5_)
            {
               if(_loc5_.other == _loc3_)
               {
                  _loc5_.§;!@§.§]!U§();
               }
               _loc5_ = _loc5_.§7u§;
            }
         }
      }
      
      public function §#!d§(param1:b2Controller) : b2Controller
      {
         param1.§?"Z§ = this.§0"7§;
         param1.§%" § = null;
         this.§0"7§ = param1;
         param1.m_world = this;
         ++this.§@"0§;
         return param1;
      }
      
      public function §6s§(param1:b2Controller) : void
      {
         if(param1.§%" §)
         {
            param1.§%" §.§?"Z§ = param1.§?"Z§;
         }
         if(param1.§?"Z§)
         {
            param1.§?"Z§.§%" § = param1.§%" §;
         }
         if(this.§0"7§ == param1)
         {
            this.§0"7§ = param1.§?"Z§;
         }
         --this.§@"0§;
      }
      
      public function §@#,§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§?"Z§ = this.§0"7§;
         param1.§%" § = null;
         if(this.§0"7§)
         {
            this.§0"7§.§%" § = param1;
         }
         this.§0"7§ = param1;
         ++this.§@"0§;
         param1.m_world = this;
         return param1;
      }
      
      public function §!!]§(param1:b2Controller) : void
      {
         param1.§?H§();
         if(param1.§?"Z§)
         {
            param1.§?"Z§.§%" § = param1.§%" §;
         }
         if(param1.§%" §)
         {
            param1.§%" §.§?"Z§ = param1.§?"Z§;
         }
         if(param1 == this.§0"7§)
         {
            this.§0"7§ = param1.§?"Z§;
         }
         --this.§@"0§;
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         §@U§ = param1;
      }
      
      public function §>"6§(param1:Boolean) : void
      {
         §6!>§ = param1;
      }
      
      public function §;"0§() : int
      {
         return this.§'"e§;
      }
      
      public function §6!7§() : int
      {
         return this.§;!N§;
      }
      
      public function §]"F§() : int
      {
         return this.§false§;
      }
      
      public function SetGravity(param1:b2Vec2) : void
      {
         this.§6b§ = param1;
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.§6b§;
      }
      
      public function §8!s§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         if(this.§7!D§ & §?!F§)
         {
            this.§!! §.§,!"§();
            this.§7!D§ &= ~§?!F§;
         }
         this.§7!D§ |= §'"r§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§-!@§ = param1;
         _loc4_.§+""§ = param2;
         _loc4_.§#l§ = param3;
         if(param1 > 0)
         {
            _loc4_.§["8§ = 1 / param1;
         }
         else
         {
            _loc4_.§["8§ = 0;
         }
         _loc4_.§!"J§ = this.§,"d§ * param1;
         _loc4_.§?!'§ = §@U§;
         this.§!! §.§ "$§();
         if(_loc4_.§-!@§ > 0)
         {
            this.§8_§(_loc4_);
         }
         if(§6!>§ && _loc4_.§-!@§ > 0)
         {
            this.§4#"§(_loc4_);
         }
         if(_loc4_.§-!@§ > 0)
         {
            this.§,"d§ = _loc4_.§["8§;
         }
         this.§7!D§ &= ~§'"r§;
      }
      
      public function ClearForces() : void
      {
         var _loc1_:b2Body = this.§>'§;
         while(_loc1_)
         {
            _loc1_.§@"&§.§6![§();
            _loc1_.§8"p§ = 0;
            _loc1_ = _loc1_.§?"Z§;
         }
      }
      
      public function §<!K§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§2";§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§0"j§ == null)
         {
            return;
         }
         this.§0"j§.§`"E§.graphics.clear();
         var _loc1_:uint = this.§0"j§.§0"8§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.each)
         {
            _loc3_ = this.§>'§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§ !f§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§2B§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§+"M§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§2B§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§+"M§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§2B§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§2B§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§2B§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§?"Z§;
               }
               _loc3_ = _loc3_.§?"Z§;
            }
         }
         if(_loc1_ & b2DebugDraw.§!"F§)
         {
            _loc6_ = this.§[!J§;
            while(_loc6_)
            {
               this.§["g§(_loc6_);
               _loc6_ = _loc6_.§?"Z§;
            }
         }
         if(_loc1_ & b2DebugDraw.§+U§)
         {
            _loc16_ = this.§0"7§;
            while(_loc16_)
            {
               _loc16_.§%"U§(this.§0"j§);
               _loc16_ = _loc16_.§?"Z§;
            }
         }
         if(_loc1_ & b2DebugDraw.§>!l§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§!! §.§>!r§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§%"<§();
               _loc19_ = _loc17_.§&"!§();
               _loc20_ = _loc18_.§""Y§().§3R§();
               _loc21_ = _loc19_.§""Y§().§3R§();
               this.§0"j§.§5i§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§^a§();
            }
         }
         if(_loc1_ & b2DebugDraw.§8"d§)
         {
            _loc7_ = this.§!! §.§@u§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§>'§;
            while(_loc3_)
            {
               if(_loc3_.§ !f§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§7!T§(_loc4_.§0#"§);
                     _loc14_[0].Set(_loc22_.§-"^§.x,_loc22_.§-"^§.y);
                     _loc14_[1].Set(_loc22_.§%!n§.x,_loc22_.§-"^§.y);
                     _loc14_[2].Set(_loc22_.§%!n§.x,_loc22_.§%!n§.y);
                     _loc14_[3].Set(_loc22_.§-"^§.x,_loc22_.§%!n§.y);
                     this.§0"j§.§;!F§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§^a§();
                  }
               }
               _loc3_ = _loc3_.§^a§();
            }
         }
         if(_loc1_ & b2DebugDraw.§#H§)
         {
            _loc3_ = this.§>'§;
            while(_loc3_)
            {
               (_loc11_ = §1!M§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§]";§();
               this.§0"j§.§7"-§(_loc11_);
               _loc3_ = _loc3_.§?"Z§;
            }
         }
      }
      
      public function QueryAABB(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§2";§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§!! §.§@u§;
         broadPhase.§7#-§(WorldQueryWrapper,aabb);
      }
      
      public function §7H§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§2";§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§+">§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().GetTransform()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§>_§();
         }
         broadPhase = this.§!! §.§@u§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§7#-§(WorldQueryWrapper,aabb);
      }
      
      public function § "]§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§2";§ = null;
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
         broadPhase = this.§!! §.§@u§;
         var aabb:b2AABB = new b2AABB();
         aabb.§-"^§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§%!n§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§7#-§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§2";§ = null;
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
            return param1.§"">§;
         };
         broadPhase = this.§!! §.§@u§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §6"Q§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §,"&§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §>#7§() : b2Body
      {
         return this.§>'§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§[!J§;
      }
      
      public function §&!4§() : b2Contact
      {
         return this.§>!r§;
      }
      
      public function §^"t§() : Boolean
      {
         return (this.§7!D§ & §'"r§) > 0;
      }
      
      b2internal function §8_§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§0"7§;
         while(_loc3_)
         {
            _loc3_.Step(param1);
            _loc3_ = _loc3_.§?"Z§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§8#%§).§>D§(this.§'"e§,this.§false§,this.§;!N§,null,this.§!! §.§8!T§,this.§5"m§);
         _loc2_ = this.§>'§;
         while(_loc2_)
         {
            _loc2_.§7!D§ &= ~b2Body.§]"5§;
            _loc2_ = _loc2_.§?"Z§;
         }
         var _loc5_:b2Contact = this.§>!r§;
         while(_loc5_)
         {
            _loc5_.§7!D§ &= ~b2Contact.§]"5§;
            _loc5_ = _loc5_.§?"Z§;
         }
         var _loc6_:b2Joint = this.§[!J§;
         while(_loc6_)
         {
            _loc6_.§,#0§ = false;
            _loc6_ = _loc6_.§?"Z§;
         }
         var _loc7_:int = this.§'"e§;
         var _loc8_:Vector.<b2Body> = this.§%"7§;
         var _loc9_:b2Body = this.§>'§;
         while(_loc9_)
         {
            if(!(_loc9_.§7!D§ & b2Body.§]"5§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§ !f§() == false))
               {
                  if(_loc9_.§+"M§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§?H§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§7!D§ |= b2Body.§]"5§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§!"d§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§+"M§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§>!r§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§;!@§.§7!D§ & b2Contact.§]"5§))
                              {
                                 if(!(_loc13_.§;!@§.§]!a§() == true || _loc13_.§;!@§.§6",§() == false || _loc13_.§;!@§.§=#4§() == false))
                                 {
                                    _loc4_.§@"I§(_loc13_.§;!@§);
                                    _loc13_.§;!@§.§7!D§ |= b2Contact.§]"5§;
                                    if(!((_loc12_ = _loc13_.other).§7!D§ & b2Body.§]"5§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§7!D§ |= b2Body.§]"5§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§7u§;
                           }
                           _loc14_ = _loc2_.§[!J§;
                           while(_loc14_)
                           {
                              if(_loc14_.§6!_§.§,#0§ != true)
                              {
                                 if((_loc12_ = _loc14_.other).§ !f§() != false)
                                 {
                                    _loc4_.§do§(_loc14_.§6!_§);
                                    _loc14_.§6!_§.§,#0§ = true;
                                    if(!(_loc12_.§7!D§ & b2Body.§]"5§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§7!D§ |= b2Body.§]"5§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§7u§;
                           }
                        }
                     }
                     _loc4_.§8_§(param1,this.§6b§,this.§;;§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§'"e§)
                     {
                        _loc2_ = _loc4_.§3w§[_loc11_];
                        if(_loc2_.§+"M§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§7!D§ &= ~b2Body.§]"5§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§?"Z§;
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
         _loc2_ = this.§>'§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§ !f§() == false))
            {
               if(_loc2_.§+"M§() != b2Body.b2_staticBody)
               {
                  _loc2_.§3"N§();
               }
            }
            _loc2_ = _loc2_.§?"Z§;
         }
         this.§!! §.§,!"§();
      }
      
      b2internal function §4#"§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§8#%§).§>D§(this.§'"e§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§!! §.§8!T§,this.§5"m§);
         var _loc10_:Vector.<b2Body> = §7C§;
         _loc2_ = this.§>'§;
         while(_loc2_)
         {
            _loc2_.§7!D§ &= ~b2Body.§]"5§;
            _loc2_.m_sweep.§^!§ = 0;
            _loc2_ = _loc2_.§?"Z§;
         }
         _loc11_ = this.§>!r§;
         while(_loc11_)
         {
            _loc11_.§7!D§ &= ~(b2Contact.§+!_§ | b2Contact.§]"5§);
            _loc11_.§1!x§ = 1;
            _loc11_ = _loc11_.§?"Z§;
         }
         _loc8_ = this.§[!J§;
         while(_loc8_)
         {
            _loc8_.§,#0§ = false;
            _loc8_ = _loc8_.§?"Z§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§>!r§;
            while(_loc11_)
            {
               if(!(_loc11_.§]!a§() == true || _loc11_.§6",§() == false || _loc11_.§+w§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§7!D§ & b2Contact.§+!_§)
                  {
                     _loc19_ = _loc11_.§1!x§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§,"2§;
                     _loc4_ = _loc11_.§1M§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§+"M§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§+"M§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr623:
                        _loc11_ = _loc11_.§?"Z§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§^!§;
                     if(_loc5_.m_sweep.§^!§ < _loc6_.m_sweep.§^!§)
                     {
                        _loc20_ = _loc6_.m_sweep.§^!§;
                        _loc5_.m_sweep.§5#4§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§^!§ < _loc5_.m_sweep.§^!§)
                     {
                        _loc20_ = _loc5_.m_sweep.§^!§;
                        _loc6_.m_sweep.§5#4§(_loc20_);
                     }
                     _loc19_ = _loc11_.§'4§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§1!x§ = _loc19_;
                     _loc11_.§7!D§ |= b2Contact.§+!_§;
                     §§goto(addr623);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr623);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§,"2§;
            _loc4_ = _loc12_.§1M§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §3"h§.Set(_loc5_.m_sweep);
            §'!v§.Set(_loc6_.m_sweep);
            _loc5_.§5#4§(_loc13_);
            _loc6_.§5#4§(_loc13_);
            _loc12_.§@=§(this.§!! §.§8!T§);
            _loc12_.§7!D§ &= ~b2Contact.§+!_§;
            if(_loc12_.§]!a§() == true || _loc12_.§6",§() == false)
            {
               _loc5_.m_sweep.Set(§3"h§);
               _loc6_.m_sweep.Set(§'!v§);
               _loc5_.§&"]§();
               _loc6_.§&"]§();
            }
            else if(_loc12_.§=#4§() != false)
            {
               if((_loc14_ = _loc5_).§+"M§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§?H§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§7!D§ |= b2Body.§]"5§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§!"d§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§+"M§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§>!r§;
                     while(_loc7_)
                     {
                        if(_loc9_.§false§ == _loc9_.§4!g§)
                        {
                           break;
                        }
                        if(!(_loc7_.§;!@§.§7!D§ & b2Contact.§]"5§))
                        {
                           if(!(_loc7_.§;!@§.§]!a§() == true || _loc7_.§;!@§.§6",§() == false || _loc7_.§;!@§.§=#4§() == false))
                           {
                              _loc9_.§@"I§(_loc7_.§;!@§);
                              _loc7_.§;!@§.§7!D§ |= b2Contact.§]"5§;
                              if(!((_loc22_ = _loc7_.other).§7!D§ & b2Body.§]"5§))
                              {
                                 if(_loc22_.§+"M§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§5#4§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§7!D§ |= b2Body.§]"5§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§7u§;
                     }
                     _loc21_ = _loc2_.§[!J§;
                     while(_loc21_)
                     {
                        if(_loc9_.§;!N§ != _loc9_.§#!5§)
                        {
                           if(_loc21_.§6!_§.§,#0§ != true)
                           {
                              if((_loc22_ = _loc21_.other).§ !f§() != false)
                              {
                                 _loc9_.§do§(_loc21_.§6!_§);
                                 _loc21_.§6!_§.§,#0§ = true;
                                 if(!(_loc22_.§7!D§ & b2Body.§]"5§))
                                 {
                                    if(_loc22_.§+"M§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§5#4§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§7!D§ |= b2Body.§]"5§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§7u§;
                     }
                  }
               }
               (_loc17_ = §,!w§).§?!'§ = false;
               _loc17_.§-!@§ = (1 - _loc13_) * param1.§-!@§;
               _loc17_.§["8§ = 1 / _loc17_.§-!@§;
               _loc17_.§!"J§ = 1;
               _loc17_.§+""§ = param1.§+""§;
               _loc17_.§#l§ = param1.§#l§;
               _loc9_.§4#"§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§'"e§)
               {
                  _loc2_ = _loc9_.§3w§[_loc18_];
                  _loc2_.§7!D§ &= ~b2Body.§]"5§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§+"M§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§3"N§();
                        _loc7_ = _loc2_.§>!r§;
                        while(_loc7_)
                        {
                           _loc7_.§;!@§.§7!D§ &= ~b2Contact.§+!_§;
                           _loc7_ = _loc7_.§7u§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§false§)
               {
                  _loc11_ = _loc9_.§2"h§[_loc18_];
                  _loc11_.§7!D§ &= ~(b2Contact.§+!_§ | b2Contact.§]"5§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§;!N§)
               {
                  (_loc8_ = _loc9_.§2t§[_loc18_]).§,#0§ = false;
                  _loc18_++;
               }
               this.§!! §.§,!"§();
            }
         }
      }
      
      b2internal function §["g§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§!Q§();
         var _loc3_:b2Body = param1.§>Y§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §?";§;
         switch(param1.§<"a§)
         {
            case b2Joint.§`!?§:
               this.§0"j§.§5i§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§[!j§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§8!X§();
               _loc13_ = _loc11_.§"!J§();
               this.§0"j§.§5i§(_loc12_,_loc8_,_loc10_);
               this.§0"j§.§5i§(_loc13_,_loc9_,_loc10_);
               this.§0"j§.§5i§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§-!M§:
               this.§0"j§.§5i§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§0"j§.§5i§(_loc6_,_loc8_,_loc10_);
               }
               this.§0"j§.§5i§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§0"j§.§5i§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §2B§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§<"a§)
         {
            case b2Shape.§8"y§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§@#%§(param2,_loc4_.§5!]§);
               _loc6_ = _loc4_.§#J§;
               _loc7_ = param2.R.col1;
               this.§0"j§.§=!b§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§+"<§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§<=§();
               _loc11_ = _loc9_.§2$§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§@#%§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§0"j§.§>0§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§;"-§:
               _loc13_ = param1 as b2EdgeShape;
               this.§0"j§.§5i§(b2Math.§@#%§(param2,_loc13_.GetVertex1()),b2Math.§@#%§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

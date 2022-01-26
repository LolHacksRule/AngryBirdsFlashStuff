package §&i§
{
   import § t§.b2Controller;
   import § t§.b2ControllerEdge;
   import §"v§.*;
   import §'z§.*;
   import §5!K§.*;
   import §5n§.*;
   import §]M§.*;
   import §each §.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §#u§:b2Transform = new b2Transform();
      
      private static var §>H§:b2Sweep = new b2Sweep();
      
      private static var §5!§:b2Sweep = new b2Sweep();
      
      private static var §=!V§:b2TimeStep = new b2TimeStep();
      
      private static var §%!K§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §[!8§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §?!Q§:Boolean;
      
      private static var §4!V§:Boolean;
      
      public static const §'E§:int = 1;
      
      public static const §5&§:int = 2;
       
      
      private var §-!A§:Vector.<b2Body>;
      
      b2internal var §7A§:int;
      
      b2internal var §+U§:b2ContactManager;
      
      private var §4w§:b2ContactSolver;
      
      private var §;4§:b2Island;
      
      b2internal var §"K§:b2Body;
      
      private var §5!<§:b2Joint;
      
      b2internal var §=!-§:b2Contact;
      
      private var §4!Y§:int;
      
      b2internal var §%Q§:int;
      
      private var § [§:int;
      
      private var §>!B§:b2Controller;
      
      private var §,!G§:int;
      
      private var §>?§:b2Vec2;
      
      private var §3L§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §`%§:b2DestructionListener;
      
      private var §[!@§:b2DebugDraw;
      
      private var §&g§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§-!A§ = new Vector.<b2Body>();
         this.§+U§ = new b2ContactManager();
         this.§4w§ = new b2ContactSolver();
         this.§;4§ = new b2Island();
         super();
         this.§`%§ = null;
         this.§[!@§ = null;
         this.§"K§ = null;
         this.§=!-§ = null;
         this.§5!<§ = null;
         this.§>!B§ = null;
         this.§4!Y§ = 0;
         this.§%Q§ = 0;
         this.§ [§ = 0;
         this.§,!G§ = 0;
         §?!Q§ = true;
         §4!V§ = true;
         this.§3L§ = param2;
         this.§>?§ = param1;
         this.§&g§ = 0;
         this.§+U§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§^!'§(_loc3_);
      }
      
      public function §`$§(param1:b2DestructionListener) : void
      {
         this.§`%§ = param1;
      }
      
      public function § x§(param1:b2ContactFilter) : void
      {
         this.§+U§.§>U§ = param1;
      }
      
      public function §4G§(param1:b2ContactListener) : void
      {
         this.§+U§.§;!C§ = param1;
      }
      
      public function §=!Y§(param1:b2DebugDraw) : void
      {
         this.§[!@§ = param1;
      }
      
      public function §7t§(param1:§?!&§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§?!&§ = this.§+U§.§%r§;
         this.§+U§.§%r§ = param1;
         var _loc3_:b2Body = this.§"K§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§1m§;
            while(_loc4_)
            {
               _loc4_.§2!F§ = param1.§9!^§(_loc2_.§ !B§(_loc4_.§2!F§),_loc4_);
               _loc4_ = _loc4_.§`!T§;
            }
            _loc3_ = _loc3_.§`!T§;
         }
      }
      
      public function §#!]§() : void
      {
         this.§+U§.§%r§.§#!]§();
      }
      
      public function §=!#§() : int
      {
         return this.§+U§.§%r§.§=!#§();
      }
      
      public function §^!'§(param1:b2BodyDef) : b2Body
      {
         if(this.§[!Q§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§80§ = null;
         _loc2_.§`!T§ = this.§"K§;
         if(this.§"K§)
         {
            this.§"K§.§80§ = _loc2_;
         }
         this.§"K§ = _loc2_;
         ++this.§4!Y§;
         return _loc2_;
      }
      
      public function §%c§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§[!Q§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§5!<§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§`!V§;
            if(this.§`%§)
            {
               this.§`%§.§^!A§(_loc6_.§34§);
            }
            this.§1!O§(_loc6_.§34§);
         }
         var _loc3_:b2ControllerEdge = param1.§>!B§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§<C§;
            _loc7_.§`P§.§5S§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§=!-§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§`!V§;
            this.§+U§.§%P§(_loc8_.§^@§);
         }
         param1.§=!-§ = null;
         var _loc5_:b2Fixture = param1.§1m§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§`!T§;
            if(this.§`%§)
            {
               this.§`%§.§6Z§(_loc9_);
            }
            _loc9_.§%!C§(this.§+U§.§%r§);
            _loc9_.§%P§();
         }
         param1.§1m§ = null;
         param1.§^F§ = 0;
         if(param1.§80§)
         {
            param1.§80§.§`!T§ = param1.§`!T§;
         }
         if(param1.§`!T§)
         {
            param1.§`!T§.§80§ = param1.§80§;
         }
         if(param1 == this.§"K§)
         {
            this.§"K§ = param1.§`!T§;
         }
         --this.§4!Y§;
      }
      
      public function §2!!§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§#![§(param1,null);
         _loc2_.§80§ = null;
         _loc2_.§`!T§ = this.§5!<§;
         if(this.§5!<§)
         {
            this.§5!<§.§80§ = _loc2_;
         }
         this.§5!<§ = _loc2_;
         ++this.§ [§;
         _loc2_.§>w§.§34§ = _loc2_;
         _loc2_.§>w§.§`!0§ = _loc2_.§2!;§;
         _loc2_.§>w§.§`V§ = null;
         _loc2_.§>w§.§`!V§ = _loc2_.§"8§.§5!<§;
         if(_loc2_.§"8§.§5!<§)
         {
            _loc2_.§"8§.§5!<§.§`V§ = _loc2_.§>w§;
         }
         _loc2_.§"8§.§5!<§ = _loc2_.§>w§;
         _loc2_.§`s§.§34§ = _loc2_;
         _loc2_.§`s§.§`!0§ = _loc2_.§"8§;
         _loc2_.§`s§.§`V§ = null;
         _loc2_.§`s§.§`!V§ = _loc2_.§2!;§.§5!<§;
         if(_loc2_.§2!;§.§5!<§)
         {
            _loc2_.§2!;§.§5!<§.§`V§ = _loc2_.§`s§;
         }
         _loc2_.§2!;§.§5!<§ = _loc2_.§`s§;
         var _loc3_:b2Body = param1.§1I§;
         var _loc4_:b2Body = param1.§!T§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§0H§();
            while(_loc5_)
            {
               if(_loc5_.§`!0§ == _loc3_)
               {
                  _loc5_.§^@§.§8!S§();
               }
               _loc5_ = _loc5_.§`!V§;
            }
         }
         return _loc2_;
      }
      
      public function §1!O§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§24§;
         if(param1.§80§)
         {
            param1.§80§.§`!T§ = param1.§`!T§;
         }
         if(param1.§`!T§)
         {
            param1.§`!T§.§80§ = param1.§80§;
         }
         if(param1 == this.§5!<§)
         {
            this.§5!<§ = param1.§`!T§;
         }
         var _loc3_:b2Body = param1.§"8§;
         var _loc4_:b2Body = param1.§2!;§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§>w§.§`V§)
         {
            param1.§>w§.§`V§.§`!V§ = param1.§>w§.§`!V§;
         }
         if(param1.§>w§.§`!V§)
         {
            param1.§>w§.§`!V§.§`V§ = param1.§>w§.§`V§;
         }
         if(param1.§>w§ == _loc3_.§5!<§)
         {
            _loc3_.§5!<§ = param1.§>w§.§`!V§;
         }
         param1.§>w§.§`V§ = null;
         param1.§>w§.§`!V§ = null;
         if(param1.§`s§.§`V§)
         {
            param1.§`s§.§`V§.§`!V§ = param1.§`s§.§`!V§;
         }
         if(param1.§`s§.§`!V§)
         {
            param1.§`s§.§`!V§.§`V§ = param1.§`s§.§`V§;
         }
         if(param1.§`s§ == _loc4_.§5!<§)
         {
            _loc4_.§5!<§ = param1.§`s§.§`!V§;
         }
         param1.§`s§.§`V§ = null;
         param1.§`s§.§`!V§ = null;
         b2Joint.§%P§(param1,null);
         --this.§ [§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§0H§();
            while(_loc5_)
            {
               if(_loc5_.§`!0§ == _loc3_)
               {
                  _loc5_.§^@§.§8!S§();
               }
               _loc5_ = _loc5_.§`!V§;
            }
         }
      }
      
      public function §7!%§(param1:b2Controller) : b2Controller
      {
         param1.§`!T§ = this.§>!B§;
         param1.§80§ = null;
         this.§>!B§ = param1;
         param1.m_world = this;
         ++this.§,!G§;
         return param1;
      }
      
      public function §+!5§(param1:b2Controller) : void
      {
         if(param1.§80§)
         {
            param1.§80§.§`!T§ = param1.§`!T§;
         }
         if(param1.§`!T§)
         {
            param1.§`!T§.§80§ = param1.§80§;
         }
         if(this.§>!B§ == param1)
         {
            this.§>!B§ = param1.§`!T§;
         }
         --this.§,!G§;
      }
      
      public function §9!;§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§`!T§ = this.§>!B§;
         param1.§80§ = null;
         if(this.§>!B§)
         {
            this.§>!B§.§80§ = param1;
         }
         this.§>!B§ = param1;
         ++this.§,!G§;
         param1.m_world = this;
         return param1;
      }
      
      public function §%!]§(param1:b2Controller) : void
      {
         param1.§>m§();
         if(param1.§`!T§)
         {
            param1.§`!T§.§80§ = param1.§80§;
         }
         if(param1.§80§)
         {
            param1.§80§.§`!T§ = param1.§`!T§;
         }
         if(param1 == this.§>!B§)
         {
            this.§>!B§ = param1.§`!T§;
         }
         --this.§,!G§;
      }
      
      public function §15§(param1:Boolean) : void
      {
         §?!Q§ = param1;
      }
      
      public function §?k§(param1:Boolean) : void
      {
         §4!V§ = param1;
      }
      
      public function §[!#§() : int
      {
         return this.§4!Y§;
      }
      
      public function §-!]§() : int
      {
         return this.§ [§;
      }
      
      public function §>d§() : int
      {
         return this.§%Q§;
      }
      
      public function §,§(param1:b2Vec2) : void
      {
         this.§>?§ = param1;
      }
      
      public function §>!8§() : b2Vec2
      {
         return this.§>?§;
      }
      
      public function §?!%§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §2p§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§7A§ & §'E§)
         {
            this.§+U§.§&!0§();
            this.§7A§ &= ~§'E§;
         }
         this.§7A§ |= §5&§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§0O§ = param1;
         _loc4_.§ !T§ = param2;
         _loc4_.§<N§ = param3;
         if(param1 > 0)
         {
            _loc4_.§'!+§ = 1 / param1;
         }
         else
         {
            _loc4_.§'!+§ = 0;
         }
         _loc4_.§8!J§ = this.§&g§ * param1;
         _loc4_.§[1§ = §?!Q§;
         this.§+U§.§5!+§();
         if(_loc4_.§0O§ > 0)
         {
            this.§;!N§(_loc4_);
         }
         if(§4!V§ && _loc4_.§0O§ > 0)
         {
            this.§]!@§(_loc4_);
         }
         if(_loc4_.§0O§ > 0)
         {
            this.§&g§ = _loc4_.§'!+§;
         }
         this.§7A§ &= ~§5&§;
      }
      
      public function §=m§() : void
      {
         var _loc1_:b2Body = this.§"K§;
         while(_loc1_)
         {
            _loc1_.§&I§.§6d§();
            _loc1_.§ !A§ = 0;
            _loc1_ = _loc1_.§`!T§;
         }
      }
      
      public function §&r§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§?!&§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§[!@§ == null)
         {
            return;
         }
         this.§[!@§.§-E§.graphics.clear();
         var _loc1_:uint = this.§[!@§.§[0§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§,!_§)
         {
            _loc3_ = this.§"K§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§@R§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§]I§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§=X§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§"5§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§=X§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§"5§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§=X§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§=X§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§=X§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§`!T§;
               }
               _loc3_ = _loc3_.§`!T§;
            }
         }
         if(_loc1_ & b2DebugDraw.§"h§)
         {
            _loc6_ = this.§5!<§;
            while(_loc6_)
            {
               this.§9!Q§(_loc6_);
               _loc6_ = _loc6_.§`!T§;
            }
         }
         if(_loc1_ & b2DebugDraw.§`!^§)
         {
            _loc16_ = this.§>!B§;
            while(_loc16_)
            {
               _loc16_.§'b§(this.§[!@§);
               _loc16_ = _loc16_.§`!T§;
            }
         }
         if(_loc1_ & b2DebugDraw.§]!0§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§+U§.§=!-§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§"q§();
               _loc19_ = _loc17_.§^x§();
               _loc20_ = _loc18_.§^I§().§6;§();
               _loc21_ = _loc19_.§^I§().§6;§();
               this.§[!@§.§]!M§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§%!<§();
            }
         }
         if(_loc1_ & b2DebugDraw.§[<§)
         {
            _loc7_ = this.§+U§.§%r§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§"K§;
            while(_loc3_)
            {
               if(_loc3_.§]I§() != false)
               {
                  _loc4_ = _loc3_.§@R§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§ !B§(_loc4_.§2!F§);
                     _loc14_[0].Set(_loc22_.§0!<§.x,_loc22_.§0!<§.y);
                     _loc14_[1].Set(_loc22_.§+;§.x,_loc22_.§0!<§.y);
                     _loc14_[2].Set(_loc22_.§+;§.x,_loc22_.§+;§.y);
                     _loc14_[3].Set(_loc22_.§0!<§.x,_loc22_.§+;§.y);
                     this.§[!@§.§=!A§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§%!<§();
                  }
               }
               _loc3_ = _loc3_.§%!<§();
            }
         }
         if(_loc1_ & b2DebugDraw.§4!G§)
         {
            _loc3_ = this.§"K§;
            while(_loc3_)
            {
               (_loc11_ = §#u§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§97§();
               this.§[!@§.§!c§(_loc11_);
               _loc3_ = _loc3_.§`!T§;
            }
         }
      }
      
      public function §@M§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§?!&§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§+U§.§%r§;
         broadPhase.§=!_§(WorldQueryWrapper,aabb);
      }
      
      public function §;3§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§?!&§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§>!4§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§5!C§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§"4§();
         }
         broadPhase = this.§+U§.§%r§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§=!_§(WorldQueryWrapper,aabb);
      }
      
      public function §>v§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§?!&§ = null;
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
         broadPhase = this.§+U§.§%r§;
         var aabb:b2AABB = new b2AABB();
         aabb.§0!<§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§+;§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§=!_§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§?!&§ = null;
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
            return param1.§=!F§;
         };
         broadPhase = this.§+U§.§%r§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §,r§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §7O§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §`!Y§() : b2Body
      {
         return this.§"K§;
      }
      
      public function § Q§() : b2Joint
      {
         return this.§5!<§;
      }
      
      public function §0H§() : b2Contact
      {
         return this.§=!-§;
      }
      
      public function §[!Q§() : Boolean
      {
         return (this.§7A§ & §5&§) > 0;
      }
      
      b2internal function §;!N§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§>!B§;
         while(_loc3_)
         {
            _loc3_.§2p§(param1);
            _loc3_ = _loc3_.§`!T§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§;4§).§2![§(this.§4!Y§,this.§%Q§,this.§ [§,null,this.§+U§.§;!C§,this.§4w§);
         _loc2_ = this.§"K§;
         while(_loc2_)
         {
            _loc2_.§7A§ &= ~b2Body.§;p§;
            _loc2_ = _loc2_.§`!T§;
         }
         var _loc5_:b2Contact = this.§=!-§;
         while(_loc5_)
         {
            _loc5_.§7A§ &= ~b2Contact.§;p§;
            _loc5_ = _loc5_.§`!T§;
         }
         var _loc6_:b2Joint = this.§5!<§;
         while(_loc6_)
         {
            _loc6_.§&?§ = false;
            _loc6_ = _loc6_.§`!T§;
         }
         var _loc7_:int = this.§4!Y§;
         var _loc8_:Vector.<b2Body> = this.§-!A§;
         var _loc9_:b2Body = this.§"K§;
         while(_loc9_)
         {
            if(!(_loc9_.§7A§ & b2Body.§;p§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§]I§() == false))
               {
                  if(_loc9_.§"5§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§>m§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§7A§ |= b2Body.§;p§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§!1§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§"5§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§=!-§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§^@§.§7A§ & b2Contact.§;p§))
                              {
                                 if(!(_loc13_.§^@§.§5P§() == true || _loc13_.§^@§.§5!H§() == false || _loc13_.§^@§.§4!#§() == false))
                                 {
                                    _loc4_.§9?§(_loc13_.§^@§);
                                    _loc13_.§^@§.§7A§ |= b2Contact.§;p§;
                                    if(!((_loc12_ = _loc13_.§`!0§).§7A§ & b2Body.§;p§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§7A§ |= b2Body.§;p§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§`!V§;
                           }
                           _loc14_ = _loc2_.§5!<§;
                           while(_loc14_)
                           {
                              if(_loc14_.§34§.§&?§ != true)
                              {
                                 if((_loc12_ = _loc14_.§`!0§).§]I§() != false)
                                 {
                                    _loc4_.§[!A§(_loc14_.§34§);
                                    _loc14_.§34§.§&?§ = true;
                                    if(!(_loc12_.§7A§ & b2Body.§;p§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§7A§ |= b2Body.§;p§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§`!V§;
                           }
                        }
                     }
                     _loc4_.§;!N§(param1,this.§>?§,this.§3L§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§4!Y§)
                     {
                        _loc2_ = _loc4_.§ !%§[_loc11_];
                        if(_loc2_.§"5§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§7A§ &= ~b2Body.§;p§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§`!T§;
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
         _loc2_ = this.§"K§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§]I§() == false))
            {
               if(_loc2_.§"5§() != b2Body.b2_staticBody)
               {
                  _loc2_.§@!+§();
               }
            }
            _loc2_ = _loc2_.§`!T§;
         }
         this.§+U§.§&!0§();
      }
      
      b2internal function §]!@§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§;4§).§2![§(this.§4!Y§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§+U§.§;!C§,this.§4w§);
         var _loc10_:Vector.<b2Body> = §%!K§;
         _loc2_ = this.§"K§;
         while(_loc2_)
         {
            _loc2_.§7A§ &= ~b2Body.§;p§;
            _loc2_.m_sweep.§@Y§ = 0;
            _loc2_ = _loc2_.§`!T§;
         }
         _loc11_ = this.§=!-§;
         while(_loc11_)
         {
            _loc11_.§7A§ &= ~(b2Contact.§'!Q§ | b2Contact.§;p§);
            _loc11_ = _loc11_.§`!T§;
         }
         _loc8_ = this.§5!<§;
         while(_loc8_)
         {
            _loc8_.§&?§ = false;
            _loc8_ = _loc8_.§`!T§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§=!-§;
            while(_loc11_)
            {
               if(!(_loc11_.§5P§() == true || _loc11_.§5!H§() == false || _loc11_.§+r§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§7A§ & b2Contact.§'!Q§)
                  {
                     _loc19_ = _loc11_.§1f§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§&L§;
                     _loc4_ = _loc11_.§8! §;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§"5§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§"5§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr612:
                        _loc11_ = _loc11_.§`!T§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§@Y§;
                     if(_loc5_.m_sweep.§@Y§ < _loc6_.m_sweep.§@Y§)
                     {
                        _loc20_ = _loc6_.m_sweep.§@Y§;
                        _loc5_.m_sweep.§'!^§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§@Y§ < _loc5_.m_sweep.§@Y§)
                     {
                        _loc20_ = _loc5_.m_sweep.§@Y§;
                        _loc6_.m_sweep.§'!^§(_loc20_);
                     }
                     _loc19_ = _loc11_.§8!Y§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§1f§ = _loc19_;
                     _loc11_.§7A§ |= b2Contact.§'!Q§;
                     §§goto(addr612);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr612);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§&L§;
            _loc4_ = _loc12_.§8! §;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §>H§.Set(_loc5_.m_sweep);
            §5!§.Set(_loc6_.m_sweep);
            _loc5_.§'!^§(_loc13_);
            _loc6_.§'!^§(_loc13_);
            _loc12_.§7!>§(this.§+U§.§;!C§);
            _loc12_.§7A§ &= ~b2Contact.§'!Q§;
            if(_loc12_.§5P§() == true || _loc12_.§5!H§() == false)
            {
               _loc5_.m_sweep.Set(§>H§);
               _loc6_.m_sweep.Set(§5!§);
               _loc5_.§8]§();
               _loc6_.§8]§();
            }
            else if(_loc12_.§4!#§() != false)
            {
               if((_loc14_ = _loc5_).§"5§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§>m§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§7A§ |= b2Body.§;p§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§!1§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§"5§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§=!-§;
                     while(_loc7_)
                     {
                        if(_loc9_.§%Q§ == _loc9_.§'1§)
                        {
                           break;
                        }
                        if(!(_loc7_.§^@§.§7A§ & b2Contact.§;p§))
                        {
                           if(!(_loc7_.§^@§.§5P§() == true || _loc7_.§^@§.§5!H§() == false || _loc7_.§^@§.§4!#§() == false))
                           {
                              _loc9_.§9?§(_loc7_.§^@§);
                              _loc7_.§^@§.§7A§ |= b2Contact.§;p§;
                              if(!((_loc22_ = _loc7_.§`!0§).§7A§ & b2Body.§;p§))
                              {
                                 if(_loc22_.§"5§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§'!^§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§7A§ |= b2Body.§;p§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§`!V§;
                     }
                     _loc21_ = _loc2_.§5!<§;
                     while(_loc21_)
                     {
                        if(_loc9_.§ [§ != _loc9_.§#j§)
                        {
                           if(_loc21_.§34§.§&?§ != true)
                           {
                              if((_loc22_ = _loc21_.§`!0§).§]I§() != false)
                              {
                                 _loc9_.§[!A§(_loc21_.§34§);
                                 _loc21_.§34§.§&?§ = true;
                                 if(!(_loc22_.§7A§ & b2Body.§;p§))
                                 {
                                    if(_loc22_.§"5§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§'!^§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§7A§ |= b2Body.§;p§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§`!V§;
                     }
                  }
               }
               (_loc17_ = §=!V§).§[1§ = false;
               _loc17_.§0O§ = (1 - _loc13_) * param1.§0O§;
               _loc17_.§'!+§ = 1 / _loc17_.§0O§;
               _loc17_.§8!J§ = 0;
               _loc17_.§ !T§ = param1.§ !T§;
               _loc17_.§<N§ = param1.§<N§;
               _loc9_.§]!@§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§4!Y§)
               {
                  _loc2_ = _loc9_.§ !%§[_loc18_];
                  _loc2_.§7A§ &= ~b2Body.§;p§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§"5§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§@!+§();
                        _loc7_ = _loc2_.§=!-§;
                        while(_loc7_)
                        {
                           _loc7_.§^@§.§7A§ &= ~b2Contact.§'!Q§;
                           _loc7_ = _loc7_.§`!V§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§%Q§)
               {
                  _loc11_ = _loc9_.§>!9§[_loc18_];
                  _loc11_.§7A§ &= ~(b2Contact.§'!Q§ | b2Contact.§;p§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§ [§)
               {
                  (_loc8_ = _loc9_.§3Z§[_loc18_]).§&?§ = false;
                  _loc18_++;
               }
               this.§+U§.§&!0§();
            }
         }
      }
      
      b2internal function §9!Q§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§]!U§();
         var _loc3_:b2Body = param1.§>§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §[!8§;
         switch(param1.§&>§)
         {
            case b2Joint.§+t§:
               this.§[!@§.§]!M§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§="§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§+m§();
               _loc13_ = _loc11_.§8!'§();
               this.§[!@§.§]!M§(_loc12_,_loc8_,_loc10_);
               this.§[!@§.§]!M§(_loc13_,_loc9_,_loc10_);
               this.§[!@§.§]!M§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§=!=§:
               this.§[!@§.§]!M§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§[!@§.§]!M§(_loc6_,_loc8_,_loc10_);
               }
               this.§[!@§.§]!M§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§[!@§.§]!M§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §=X§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§&>§)
         {
            case b2Shape.§63§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§=$§(param2,_loc4_.§@K§);
               _loc6_ = _loc4_.§>!;§;
               _loc7_ = param2.R.col1;
               this.§[!@§.§[x§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§case §:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§[J§();
               _loc11_ = _loc9_.§2C§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§=$§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§[!@§.§]>§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§%B§:
               _loc13_ = param1 as b2EdgeShape;
               this.§[!@§.§]!M§(b2Math.§=$§(param2,_loc13_.GetVertex1()),b2Math.§=$§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

package §'#K§
{
   import §!"b§.*;
   import §&$+§.*;
   import §,#E§.*;
   import §-#F§.*;
   import §04§.*;
   import §1#I§.*;
   import §>!2§.b2Controller;
   import §>!2§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      protected static var §=">§:b2Transform = new b2Transform();
      
      private static var §`!p§:b2Sweep = new b2Sweep();
      
      private static var §%"g§:b2Sweep = new b2Sweep();
      
      private static var §]9§:b2TimeStep = new b2TimeStep();
      
      private static var §each §:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §4]§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §5"B§:Boolean;
      
      private static var §5!I§:Boolean;
      
      public static const §;#4§:int = 1;
      
      public static const §0"r§:int = 2;
       
      
      private var § "?§:Vector.<b2Body>;
      
      b2internal var §'#h§:int;
      
      b2internal var §]!"§:b2ContactManager;
      
      private var §&!Z§:b2ContactSolver;
      
      private var §7!r§:b2Island;
      
      b2internal var §8#U§:b2Body;
      
      protected var §->§:b2Joint;
      
      b2internal var §!!k§:b2Contact;
      
      protected var §?"q§:int;
      
      b2internal var §%"@§:int;
      
      protected var §##3§:int;
      
      protected var §`"&§:b2Controller;
      
      private var §`#I§:int;
      
      private var §2"§:b2Vec2;
      
      private var §0'§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §4#k§:b2DestructionListener;
      
      protected var §+"R§:b2DebugDraw;
      
      private var §;!W§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§ "?§ = new Vector.<b2Body>();
         this.§]!"§ = new b2ContactManager();
         this.§&!Z§ = new b2ContactSolver();
         this.§7!r§ = new b2Island();
         super();
         this.§4#k§ = null;
         this.§+"R§ = null;
         this.§8#U§ = null;
         this.§!!k§ = null;
         this.§->§ = null;
         this.§`"&§ = null;
         this.§?"q§ = 0;
         this.§%"@§ = 0;
         this.§##3§ = 0;
         this.§`#I§ = 0;
         §5"B§ = true;
         §5!I§ = true;
         this.§0'§ = param2;
         this.§2"§ = param1;
         this.§;!W§ = 0;
         this.§]!"§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §-"y§(param1:b2DestructionListener) : void
      {
         this.§4#k§ = param1;
      }
      
      public function §0!§(param1:b2ContactFilter) : void
      {
         this.§]!"§.§^+§ = param1;
      }
      
      public function §-#v§(param1:b2ContactListener) : void
      {
         this.§]!"§.§@!7§ = param1;
      }
      
      public function §7$9§(param1:b2DebugDraw) : void
      {
         this.§+"R§ = param1;
      }
      
      public function §8#H§(param1:§ #Z§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§ #Z§ = this.§]!"§.§6";§;
         this.§]!"§.§6";§ = param1;
         var _loc3_:b2Body = this.§8#U§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§&^§;
            while(_loc4_)
            {
               _loc4_.§]"Q§ = param1.§7#0§(_loc2_.§;$1§(_loc4_.§]"Q§),_loc4_);
               _loc4_ = _loc4_.§>d§;
            }
            _loc3_ = _loc3_.§>d§;
         }
      }
      
      public function §5j§() : void
      {
         this.§]!"§.§6";§.§5j§();
      }
      
      public function §,!0§() : int
      {
         return this.§]!"§.§6";§.§,!0§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§]#^§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§-$7§ = null;
         _loc2_.§>d§ = this.§8#U§;
         if(this.§8#U§)
         {
            this.§8#U§.§-$7§ = _loc2_;
         }
         this.§8#U§ = _loc2_;
         ++this.§?"q§;
         return _loc2_;
      }
      
      public function DestroyBody(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§]#^§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§->§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.next;
            if(this.§4#k§)
            {
               this.§4#k§.§1"2§(_loc6_.joint);
            }
            this.§+M§(_loc6_.joint);
         }
         var _loc3_:b2ControllerEdge = param1.§`"&§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§>u§;
            _loc7_.§;r§.§[!t§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§!!k§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.next;
            this.§]!"§.§,#?§(_loc8_.§>#I§);
         }
         param1.§!!k§ = null;
         var _loc5_:b2Fixture = param1.§&^§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§>d§;
            if(this.§4#k§)
            {
               this.§4#k§.§4t§(_loc9_);
            }
            _loc9_.§,7§(this.§]!"§.§6";§);
            _loc9_.§,#?§();
         }
         param1.§&^§ = null;
         param1.§0E§ = 0;
         if(param1.§-$7§)
         {
            param1.§-$7§.§>d§ = param1.§>d§;
         }
         if(param1.§>d§)
         {
            param1.§>d§.§-$7§ = param1.§-$7§;
         }
         if(param1 == this.§8#U§)
         {
            this.§8#U§ = param1.§>d§;
         }
         --this.§?"q§;
      }
      
      public function §%!5§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§9#s§(param1,null);
         _loc2_.§-$7§ = null;
         _loc2_.§>d§ = this.§->§;
         if(this.§->§)
         {
            this.§->§.§-$7§ = _loc2_;
         }
         this.§->§ = _loc2_;
         ++this.§##3§;
         _loc2_.§<D§.joint = _loc2_;
         _loc2_.§<D§.§%#]§ = _loc2_.§]#j§;
         _loc2_.§<D§.§5""§ = null;
         _loc2_.§<D§.next = _loc2_.§6#6§.§->§;
         if(_loc2_.§6#6§.§->§)
         {
            _loc2_.§6#6§.§->§.§5""§ = _loc2_.§<D§;
         }
         _loc2_.§6#6§.§->§ = _loc2_.§<D§;
         _loc2_.§>##§.joint = _loc2_;
         _loc2_.§>##§.§%#]§ = _loc2_.§6#6§;
         _loc2_.§>##§.§5""§ = null;
         _loc2_.§>##§.next = _loc2_.§]#j§.§->§;
         if(_loc2_.§]#j§.§->§)
         {
            _loc2_.§]#j§.§->§.§5""§ = _loc2_.§>##§;
         }
         _loc2_.§]#j§.§->§ = _loc2_.§>##§;
         var _loc3_:b2Body = param1.§9!Z§;
         var _loc4_:b2Body = param1.§#!_§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§^"o§();
            while(_loc5_)
            {
               if(_loc5_.§%#]§ == _loc3_)
               {
                  _loc5_.§>#I§.§5$5§();
               }
               _loc5_ = _loc5_.next;
            }
         }
         return _loc2_;
      }
      
      public function §+M§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§''§;
         if(param1.§-$7§)
         {
            param1.§-$7§.§>d§ = param1.§>d§;
         }
         if(param1.§>d§)
         {
            param1.§>d§.§-$7§ = param1.§-$7§;
         }
         if(param1 == this.§->§)
         {
            this.§->§ = param1.§>d§;
         }
         var _loc3_:b2Body = param1.§6#6§;
         var _loc4_:b2Body = param1.§]#j§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§<D§.§5""§)
         {
            param1.§<D§.§5""§.next = param1.§<D§.next;
         }
         if(param1.§<D§.next)
         {
            param1.§<D§.next.§5""§ = param1.§<D§.§5""§;
         }
         if(param1.§<D§ == _loc3_.§->§)
         {
            _loc3_.§->§ = param1.§<D§.next;
         }
         param1.§<D§.§5""§ = null;
         param1.§<D§.next = null;
         if(param1.§>##§.§5""§)
         {
            param1.§>##§.§5""§.next = param1.§>##§.next;
         }
         if(param1.§>##§.next)
         {
            param1.§>##§.next.§5""§ = param1.§>##§.§5""§;
         }
         if(param1.§>##§ == _loc4_.§->§)
         {
            _loc4_.§->§ = param1.§>##§.next;
         }
         param1.§>##§.§5""§ = null;
         param1.§>##§.next = null;
         b2Joint.§,#?§(param1,null);
         --this.§##3§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§^"o§();
            while(_loc5_)
            {
               if(_loc5_.§%#]§ == _loc3_)
               {
                  _loc5_.§>#I§.§5$5§();
               }
               _loc5_ = _loc5_.next;
            }
         }
      }
      
      public function §5",§(param1:b2Controller) : b2Controller
      {
         param1.§>d§ = this.§`"&§;
         param1.§-$7§ = null;
         this.§`"&§ = param1;
         param1.m_world = this;
         ++this.§`#I§;
         return param1;
      }
      
      public function §[!C§(param1:b2Controller) : void
      {
         if(param1.§-$7§)
         {
            param1.§-$7§.§>d§ = param1.§>d§;
         }
         if(param1.§>d§)
         {
            param1.§>d§.§-$7§ = param1.§-$7§;
         }
         if(this.§`"&§ == param1)
         {
            this.§`"&§ = param1.§>d§;
         }
         --this.§`#I§;
      }
      
      public function §1!l§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§>d§ = this.§`"&§;
         param1.§-$7§ = null;
         if(this.§`"&§)
         {
            this.§`"&§.§-$7§ = param1;
         }
         this.§`"&§ = param1;
         ++this.§`#I§;
         param1.m_world = this;
         return param1;
      }
      
      public function §9"L§(param1:b2Controller) : void
      {
         param1.§+#"§();
         if(param1.§>d§)
         {
            param1.§>d§.§-$7§ = param1.§-$7§;
         }
         if(param1.§-$7§)
         {
            param1.§-$7§.§>d§ = param1.§>d§;
         }
         if(param1 == this.§`"&§)
         {
            this.§`"&§ = param1.§>d§;
         }
         --this.§`#I§;
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         §5"B§ = param1;
      }
      
      public function §[P§(param1:Boolean) : void
      {
         §5!I§ = param1;
      }
      
      public function §7$B§() : int
      {
         return this.§?"q§;
      }
      
      public function §'V§() : int
      {
         return this.§##3§;
      }
      
      public function §?#P§() : int
      {
         return this.§%"@§;
      }
      
      public function SetGravity(param1:b2Vec2) : void
      {
         this.§2"§ = param1;
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.§2"§;
      }
      
      public function §1L§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         if(this.§'#h§ & §;#4§)
         {
            this.§]!"§.§=I§();
            this.§'#h§ &= ~§;#4§;
         }
         this.§'#h§ |= §0"r§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).dt = param1;
         _loc4_.§<!-§ = param2;
         _loc4_.§2"Y§ = param3;
         if(param1 > 0)
         {
            _loc4_.§7!X§ = 1 / param1;
         }
         else
         {
            _loc4_.§7!X§ = 0;
         }
         _loc4_.§%!U§ = this.§;!W§ * param1;
         _loc4_.§^q§ = §5"B§;
         this.§]!"§.§[!'§();
         if(_loc4_.dt > 0)
         {
            this.§"!p§(_loc4_);
         }
         if(§5!I§ && _loc4_.dt > 0)
         {
            this.§+$7§(_loc4_);
         }
         if(_loc4_.dt > 0)
         {
            this.§;!W§ = _loc4_.§7!X§;
         }
         this.§'#h§ &= ~§0"r§;
      }
      
      public function ClearForces() : void
      {
         var _loc1_:b2Body = this.§8#U§;
         while(_loc1_)
         {
            _loc1_.§@q§.§3-§();
            _loc1_.§5#o§ = 0;
            _loc1_ = _loc1_.§>d§;
         }
      }
      
      public function §1x§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§ #Z§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§+"R§ == null)
         {
            return;
         }
         this.§+"R§.§<f§.graphics.clear();
         var _loc1_:uint = this.§+"R§.§5l§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§,$!§)
         {
            _loc3_ = this.§8#U§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§-"x§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§?!Q§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§<!e§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§?!Q§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§<!e§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§?!Q§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§?!Q§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§?!Q§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§>d§;
               }
               _loc3_ = _loc3_.§>d§;
            }
         }
         if(_loc1_ & b2DebugDraw.§?!;§)
         {
            _loc6_ = this.§->§;
            while(_loc6_)
            {
               this.§0§(_loc6_);
               _loc6_ = _loc6_.§>d§;
            }
         }
         if(_loc1_ & b2DebugDraw.§3$=§)
         {
            _loc16_ = this.§`"&§;
            while(_loc16_)
            {
               _loc16_.§ !L§(this.§+"R§);
               _loc16_ = _loc16_.§>d§;
            }
         }
         if(_loc1_ & b2DebugDraw.§6#u§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§]!"§.§!!k§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§5!s§();
               _loc19_ = _loc17_.§5!W§();
               _loc20_ = _loc18_.§^#3§().§9!f§();
               _loc21_ = _loc19_.§^#3§().§9!f§();
               this.§+"R§.§0"G§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§4!7§();
            }
         }
         if(_loc1_ & b2DebugDraw.§<S§)
         {
            _loc7_ = this.§]!"§.§6";§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§8#U§;
            while(_loc3_)
            {
               if(_loc3_.§-"x§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§;$1§(_loc4_.§]"Q§);
                     _loc14_[0].Set(_loc22_.§##N§.x,_loc22_.§##N§.y);
                     _loc14_[1].Set(_loc22_.§#r§.x,_loc22_.§##N§.y);
                     _loc14_[2].Set(_loc22_.§#r§.x,_loc22_.§#r§.y);
                     _loc14_[3].Set(_loc22_.§##N§.x,_loc22_.§#r§.y);
                     this.§+"R§.§!e§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§4!7§();
                  }
               }
               _loc3_ = _loc3_.§4!7§();
            }
         }
         if(_loc1_ & b2DebugDraw.§-!y§)
         {
            _loc3_ = this.§8#U§;
            while(_loc3_)
            {
               (_loc11_ = §=">§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§+"R§.§&#9§(_loc11_);
               _loc3_ = _loc3_.§>d§;
            }
         }
      }
      
      public function §?$&§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§ #Z§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§]!"§.§6";§;
         broadPhase.§0$&§(WorldQueryWrapper,aabb);
      }
      
      public function §8!x§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§ #Z§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§2#%§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().GetTransform()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§5!&§();
         }
         broadPhase = this.§]!"§.§6";§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§0$&§(WorldQueryWrapper,aabb);
      }
      
      public function §9",§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§ #Z§ = null;
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
         broadPhase = this.§]!"§.§6";§;
         var aabb:b2AABB = new b2AABB();
         aabb.§##N§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§#r§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§0$&§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§ #Z§ = null;
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
            return param1.§]!V§;
         };
         broadPhase = this.§]!"§.§6";§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §-!s§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §,#4§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §!D§() : b2Body
      {
         return this.§8#U§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§->§;
      }
      
      public function §^"o§() : b2Contact
      {
         return this.§!!k§;
      }
      
      public function §]#^§() : Boolean
      {
         return (this.§'#h§ & §0"r§) > 0;
      }
      
      b2internal function §"!p§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§`"&§;
         while(_loc3_)
         {
            _loc3_.Step(param1);
            _loc3_ = _loc3_.§>d§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§7!r§).§&N§(this.§?"q§,this.§%"@§,this.§##3§,null,this.§]!"§.§@!7§,this.§&!Z§);
         _loc2_ = this.§8#U§;
         while(_loc2_)
         {
            _loc2_.§'#h§ &= ~b2Body.§<!&§;
            _loc2_ = _loc2_.§>d§;
         }
         var _loc5_:b2Contact = this.§!!k§;
         while(_loc5_)
         {
            _loc5_.§'#h§ &= ~b2Contact.§<!&§;
            _loc5_ = _loc5_.§>d§;
         }
         var _loc6_:b2Joint = this.§->§;
         while(_loc6_)
         {
            _loc6_.§1!m§ = false;
            _loc6_ = _loc6_.§>d§;
         }
         var _loc7_:int = this.§?"q§;
         var _loc8_:Vector.<b2Body> = this.§ "?§;
         var _loc9_:b2Body = this.§8#U§;
         while(_loc9_)
         {
            if(!(_loc9_.§'#h§ & b2Body.§<!&§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§-"x§() == false))
               {
                  if(_loc9_.§<!e§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§+#"§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§'#h§ |= b2Body.§<!&§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§;"t§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§<!e§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§!!k§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§>#I§.§'#h§ & b2Contact.§<!&§))
                              {
                                 if(!(_loc13_.§>#I§.§>T§() == true || _loc13_.§>#I§.§?$;§() == false || _loc13_.§>#I§.§;"!§() == false))
                                 {
                                    _loc4_.§^#G§(_loc13_.§>#I§);
                                    _loc13_.§>#I§.§'#h§ |= b2Contact.§<!&§;
                                    if(!((_loc12_ = _loc13_.§%#]§).§'#h§ & b2Body.§<!&§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§'#h§ |= b2Body.§<!&§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.next;
                           }
                           _loc14_ = _loc2_.§->§;
                           while(_loc14_)
                           {
                              if(_loc14_.joint.§1!m§ != true)
                              {
                                 if((_loc12_ = _loc14_.§%#]§).§-"x§() != false)
                                 {
                                    _loc4_.§'"q§(_loc14_.joint);
                                    _loc14_.joint.§1!m§ = true;
                                    if(!(_loc12_.§'#h§ & b2Body.§<!&§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§'#h§ |= b2Body.§<!&§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.next;
                           }
                        }
                     }
                     _loc4_.§"!p§(param1,this.§2"§,this.§0'§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§?"q§)
                     {
                        _loc2_ = _loc4_.§&H§[_loc11_];
                        if(_loc2_.§<!e§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§'#h§ &= ~b2Body.§<!&§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§>d§;
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
         _loc2_ = this.§8#U§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§-"x§() == false))
            {
               if(_loc2_.§<!e§() != b2Body.b2_staticBody)
               {
                  _loc2_.§^"^§();
               }
            }
            _loc2_ = _loc2_.§>d§;
         }
         this.§]!"§.§=I§();
      }
      
      b2internal function §+$7§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§7!r§).§&N§(this.§?"q§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§]!"§.§@!7§,this.§&!Z§);
         var _loc10_:Vector.<b2Body> = §each §;
         _loc2_ = this.§8#U§;
         while(_loc2_)
         {
            _loc2_.§'#h§ &= ~b2Body.§<!&§;
            _loc2_.m_sweep.§60§ = 0;
            _loc2_ = _loc2_.§>d§;
         }
         _loc11_ = this.§!!k§;
         while(_loc11_)
         {
            _loc11_.§'#h§ &= ~(b2Contact.§4#Y§ | b2Contact.§<!&§);
            _loc11_.§ "q§ = 1;
            _loc11_ = _loc11_.§>d§;
         }
         _loc8_ = this.§->§;
         while(_loc8_)
         {
            _loc8_.§1!m§ = false;
            _loc8_ = _loc8_.§>d§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§!!k§;
            for(; _loc11_; _loc11_ = _loc11_.§>d§)
            {
               if(!(_loc11_.§>T§() == true || _loc11_.§?$;§() == false || _loc11_.§ 6§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§'#h§ & b2Contact.§4#Y§)
                  {
                     _loc19_ = _loc11_.§ "q§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§4"F§;
                     _loc4_ = _loc11_.§'"n§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§<!e§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§<!e§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§60§;
                     if(_loc5_.m_sweep.§60§ < _loc6_.m_sweep.§60§)
                     {
                        _loc20_ = _loc6_.m_sweep.§60§;
                        _loc5_.m_sweep.§3"x§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§60§ < _loc5_.m_sweep.§60§)
                     {
                        _loc20_ = _loc5_.m_sweep.§60§;
                        _loc6_.m_sweep.§3"x§(_loc20_);
                     }
                     _loc19_ = _loc11_.§#"i§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§ "q§ = _loc19_;
                     _loc11_.§'#h§ |= b2Contact.§4#Y§;
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§4"F§;
            _loc4_ = _loc12_.§'"n§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §`!p§.Set(_loc5_.m_sweep);
            §%"g§.Set(_loc6_.m_sweep);
            _loc5_.§3"x§(_loc13_);
            _loc6_.§3"x§(_loc13_);
            _loc12_.§8c§(this.§]!"§.§@!7§);
            _loc12_.§'#h§ &= ~b2Contact.§4#Y§;
            if(_loc12_.§>T§() == true || _loc12_.§?$;§() == false)
            {
               _loc5_.m_sweep.Set(§`!p§);
               _loc6_.m_sweep.Set(§%"g§);
               _loc5_.§&" §();
               _loc6_.§&" §();
            }
            else if(_loc12_.§;"!§() != false)
            {
               if((_loc14_ = _loc5_).§<!e§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§+#"§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§'#h§ |= b2Body.§<!&§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§;"t§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§<!e§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§!!k§;
                     while(_loc7_)
                     {
                        if(_loc9_.§%"@§ == _loc9_.§,!b§)
                        {
                           break;
                        }
                        if(!(_loc7_.§>#I§.§'#h§ & b2Contact.§<!&§))
                        {
                           if(!(_loc7_.§>#I§.§>T§() == true || _loc7_.§>#I§.§?$;§() == false || _loc7_.§>#I§.§;"!§() == false))
                           {
                              _loc9_.§^#G§(_loc7_.§>#I§);
                              _loc7_.§>#I§.§'#h§ |= b2Contact.§<!&§;
                              if(!((_loc22_ = _loc7_.§%#]§).§'#h§ & b2Body.§<!&§))
                              {
                                 if(_loc22_.§<!e§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§3"x§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§'#h§ |= b2Body.§<!&§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.next;
                     }
                     _loc21_ = _loc2_.§->§;
                     while(_loc21_)
                     {
                        if(_loc9_.§##3§ != _loc9_.§<!U§)
                        {
                           if(_loc21_.joint.§1!m§ != true)
                           {
                              if((_loc22_ = _loc21_.§%#]§).§-"x§() != false)
                              {
                                 _loc9_.§'"q§(_loc21_.joint);
                                 _loc21_.joint.§1!m§ = true;
                                 if(!(_loc22_.§'#h§ & b2Body.§<!&§))
                                 {
                                    if(_loc22_.§<!e§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§3"x§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§'#h§ |= b2Body.§<!&§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.next;
                     }
                  }
               }
               (_loc17_ = §]9§).§^q§ = false;
               _loc17_.dt = (1 - _loc13_) * param1.dt;
               _loc17_.§7!X§ = 1 / _loc17_.dt;
               _loc17_.§%!U§ = 1;
               _loc17_.§<!-§ = param1.§<!-§;
               _loc17_.§2"Y§ = param1.§2"Y§;
               _loc9_.§+$7§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§?"q§)
               {
                  _loc2_ = _loc9_.§&H§[_loc18_];
                  _loc2_.§'#h§ &= ~b2Body.§<!&§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§<!e§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§^"^§();
                        _loc7_ = _loc2_.§!!k§;
                        while(_loc7_)
                        {
                           _loc7_.§>#I§.§'#h§ &= ~b2Contact.§4#Y§;
                           _loc7_ = _loc7_.next;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§%"@§)
               {
                  _loc11_ = _loc9_.§5"A§[_loc18_];
                  _loc11_.§'#h§ &= ~(b2Contact.§4#Y§ | b2Contact.§<!&§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§##3§)
               {
                  (_loc8_ = _loc9_.§1P§[_loc18_]).§1!m§ = false;
                  _loc18_++;
               }
               this.§]!"§.§=I§();
            }
         }
      }
      
      b2internal function §0§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§0I§();
         var _loc3_:b2Body = param1.§2"y§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §4]§;
         switch(param1.§#!T§)
         {
            case b2Joint.§>"J§:
               this.§+"R§.§0"G§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§'%§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§9_§();
               _loc13_ = _loc11_.§0K§();
               this.§+"R§.§0"G§(_loc12_,_loc8_,_loc10_);
               this.§+"R§.§0"G§(_loc13_,_loc9_,_loc10_);
               this.§+"R§.§0"G§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§]"E§:
               this.§+"R§.§0"G§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§+"R§.§0"G§(_loc6_,_loc8_,_loc10_);
               }
               this.§+"R§.§0"G§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§+"R§.§0"G§(_loc7_,_loc9_,_loc10_);
               }
         }
      }
      
      b2internal function §?!Q§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§#!T§)
         {
            case b2Shape.§7!#§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§ W§(param2,_loc4_.§]##§);
               _loc6_ = _loc4_.§&"7§;
               _loc7_ = param2.R.col1;
               this.§+"R§.§-#D§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§#!J§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§;#A§();
               _loc11_ = _loc9_.§ #U§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§ W§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§+"R§.§+#r§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§^$#§:
               _loc13_ = param1 as b2EdgeShape;
               this.§+"R§.§0"G§(b2Math.§ W§(param2,_loc13_.GetVertex1()),b2Math.§ W§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

package §<!L§
{
   import § Y§.*;
   import §1z§.*;
   import §3!^§.b2Controller;
   import §3!^§.b2ControllerEdge;
   import §4!J§.*;
   import §6V§.*;
   import §?F§.*;
   import §[!$§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §?!5§:b2Transform = new b2Transform();
      
      private static var §?A§:b2Sweep = new b2Sweep();
      
      private static var §[B§:b2Sweep = new b2Sweep();
      
      private static var §5!F§:b2TimeStep = new b2TimeStep();
      
      private static var §]e§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §>M§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §7a§:Boolean;
      
      private static var §7`§:Boolean;
      
      public static const §#c§:int = 1;
      
      public static const §!u§:int = 2;
       
      
      private var §;!+§:Vector.<b2Body>;
      
      b2internal var §0=§:int;
      
      b2internal var §3-§:b2ContactManager;
      
      private var §'!+§:b2ContactSolver;
      
      private var §2!<§:b2Island;
      
      b2internal var §3!L§:b2Body;
      
      private var §4!Y§:b2Joint;
      
      b2internal var §<k§:b2Contact;
      
      private var §7D§:int;
      
      b2internal var §<R§:int;
      
      private var §@T§:int;
      
      private var §;a§:b2Controller;
      
      private var §6?§:int;
      
      private var §0R§:b2Vec2;
      
      private var §0<§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §06§:b2DestructionListener;
      
      private var §7!-§:b2DebugDraw;
      
      private var §-K§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§;!+§ = new Vector.<b2Body>();
         this.§3-§ = new b2ContactManager();
         this.§'!+§ = new b2ContactSolver();
         this.§2!<§ = new b2Island();
         super();
         this.§06§ = null;
         this.§7!-§ = null;
         this.§3!L§ = null;
         this.§<k§ = null;
         this.§4!Y§ = null;
         this.§;a§ = null;
         this.§7D§ = 0;
         this.§<R§ = 0;
         this.§@T§ = 0;
         this.§6?§ = 0;
         §7a§ = true;
         §7`§ = true;
         this.§0<§ = param2;
         this.§0R§ = param1;
         this.§-K§ = 0;
         this.§3-§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§[z§(_loc3_);
      }
      
      public function §=!3§(param1:b2DestructionListener) : void
      {
         this.§06§ = param1;
      }
      
      public function §>r§(param1:b2ContactFilter) : void
      {
         this.§3-§.§-!I§ = param1;
      }
      
      public function §^!c§(param1:b2ContactListener) : void
      {
         this.§3-§.§=c§ = param1;
      }
      
      public function §><§(param1:b2DebugDraw) : void
      {
         this.§7!-§ = param1;
      }
      
      public function §@!=§(param1:§"l§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§"l§ = this.§3-§.§0T§;
         this.§3-§.§0T§ = param1;
         var _loc3_:b2Body = this.§3!L§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§[R§;
            while(_loc4_)
            {
               _loc4_.§'3§ = param1.§0A§(_loc2_.§"s§(_loc4_.§'3§),_loc4_);
               _loc4_ = _loc4_.§!!U§;
            }
            _loc3_ = _loc3_.§!!U§;
         }
      }
      
      public function §;#§() : void
      {
         this.§3-§.§0T§.§;#§();
      }
      
      public function §98§() : int
      {
         return this.§3-§.§0T§.§98§();
      }
      
      public function §[z§(param1:b2BodyDef) : b2Body
      {
         if(this.§3M§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§4=§ = null;
         _loc2_.§!!U§ = this.§3!L§;
         if(this.§3!L§)
         {
            this.§3!L§.§4=§ = _loc2_;
         }
         this.§3!L§ = _loc2_;
         ++this.§7D§;
         return _loc2_;
      }
      
      public function §6!T§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§3M§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§4!Y§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§+!P§;
            if(this.§06§)
            {
               this.§06§.§>!P§(_loc6_.§^!0§);
            }
            this.§'!A§(_loc6_.§^!0§);
         }
         var _loc3_:b2ControllerEdge = param1.§;a§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§57§;
            _loc7_.§3!W§.§'H§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§<k§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§+!P§;
            this.§3-§.§#2§(_loc8_.§'4§);
         }
         param1.§<k§ = null;
         var _loc5_:b2Fixture = param1.§[R§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§!!U§;
            if(this.§06§)
            {
               this.§06§.§1!5§(_loc9_);
            }
            _loc9_.§7T§(this.§3-§.§0T§);
            _loc9_.§#2§();
         }
         param1.§[R§ = null;
         param1.§[l§ = 0;
         if(param1.§4=§)
         {
            param1.§4=§.§!!U§ = param1.§!!U§;
         }
         if(param1.§!!U§)
         {
            param1.§!!U§.§4=§ = param1.§4=§;
         }
         if(param1 == this.§3!L§)
         {
            this.§3!L§ = param1.§!!U§;
         }
         --this.§7D§;
      }
      
      public function §1'§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§8y§(param1,null);
         _loc2_.§4=§ = null;
         _loc2_.§!!U§ = this.§4!Y§;
         if(this.§4!Y§)
         {
            this.§4!Y§.§4=§ = _loc2_;
         }
         this.§4!Y§ = _loc2_;
         ++this.§@T§;
         _loc2_.§=2§.§^!0§ = _loc2_;
         _loc2_.§=2§.§5n§ = _loc2_.§&! §;
         _loc2_.§=2§.§',§ = null;
         _loc2_.§=2§.§+!P§ = _loc2_.§9!_§.§4!Y§;
         if(_loc2_.§9!_§.§4!Y§)
         {
            _loc2_.§9!_§.§4!Y§.§',§ = _loc2_.§=2§;
         }
         _loc2_.§9!_§.§4!Y§ = _loc2_.§=2§;
         _loc2_.§5-§.§^!0§ = _loc2_;
         _loc2_.§5-§.§5n§ = _loc2_.§9!_§;
         _loc2_.§5-§.§',§ = null;
         _loc2_.§5-§.§+!P§ = _loc2_.§&! §.§4!Y§;
         if(_loc2_.§&! §.§4!Y§)
         {
            _loc2_.§&! §.§4!Y§.§',§ = _loc2_.§5-§;
         }
         _loc2_.§&! §.§4!Y§ = _loc2_.§5-§;
         var _loc3_:b2Body = param1.§;!9§;
         var _loc4_:b2Body = param1.§;!,§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§2e§();
            while(_loc5_)
            {
               if(_loc5_.§5n§ == _loc3_)
               {
                  _loc5_.§'4§.§2H§();
               }
               _loc5_ = _loc5_.§+!P§;
            }
         }
         return _loc2_;
      }
      
      public function §'!A§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§?!+§;
         if(param1.§4=§)
         {
            param1.§4=§.§!!U§ = param1.§!!U§;
         }
         if(param1.§!!U§)
         {
            param1.§!!U§.§4=§ = param1.§4=§;
         }
         if(param1 == this.§4!Y§)
         {
            this.§4!Y§ = param1.§!!U§;
         }
         var _loc3_:b2Body = param1.§9!_§;
         var _loc4_:b2Body = param1.§&! §;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§=2§.§',§)
         {
            param1.§=2§.§',§.§+!P§ = param1.§=2§.§+!P§;
         }
         if(param1.§=2§.§+!P§)
         {
            param1.§=2§.§+!P§.§',§ = param1.§=2§.§',§;
         }
         if(param1.§=2§ == _loc3_.§4!Y§)
         {
            _loc3_.§4!Y§ = param1.§=2§.§+!P§;
         }
         param1.§=2§.§',§ = null;
         param1.§=2§.§+!P§ = null;
         if(param1.§5-§.§',§)
         {
            param1.§5-§.§',§.§+!P§ = param1.§5-§.§+!P§;
         }
         if(param1.§5-§.§+!P§)
         {
            param1.§5-§.§+!P§.§',§ = param1.§5-§.§',§;
         }
         if(param1.§5-§ == _loc4_.§4!Y§)
         {
            _loc4_.§4!Y§ = param1.§5-§.§+!P§;
         }
         param1.§5-§.§',§ = null;
         param1.§5-§.§+!P§ = null;
         b2Joint.§#2§(param1,null);
         --this.§@T§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§2e§();
            while(_loc5_)
            {
               if(_loc5_.§5n§ == _loc3_)
               {
                  _loc5_.§'4§.§2H§();
               }
               _loc5_ = _loc5_.§+!P§;
            }
         }
      }
      
      public function § !'§(param1:b2Controller) : b2Controller
      {
         param1.§!!U§ = this.§;a§;
         param1.§4=§ = null;
         this.§;a§ = param1;
         param1.m_world = this;
         ++this.§6?§;
         return param1;
      }
      
      public function §>!I§(param1:b2Controller) : void
      {
         if(param1.§4=§)
         {
            param1.§4=§.§!!U§ = param1.§!!U§;
         }
         if(param1.§!!U§)
         {
            param1.§!!U§.§4=§ = param1.§4=§;
         }
         if(this.§;a§ == param1)
         {
            this.§;a§ = param1.§!!U§;
         }
         --this.§6?§;
      }
      
      public function §>!D§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§!!U§ = this.§;a§;
         param1.§4=§ = null;
         if(this.§;a§)
         {
            this.§;a§.§4=§ = param1;
         }
         this.§;a§ = param1;
         ++this.§6?§;
         param1.m_world = this;
         return param1;
      }
      
      public function §+!<§(param1:b2Controller) : void
      {
         param1.§^!V§();
         if(param1.§!!U§)
         {
            param1.§!!U§.§4=§ = param1.§4=§;
         }
         if(param1.§4=§)
         {
            param1.§4=§.§!!U§ = param1.§!!U§;
         }
         if(param1 == this.§;a§)
         {
            this.§;a§ = param1.§!!U§;
         }
         --this.§6?§;
      }
      
      public function §5!c§(param1:Boolean) : void
      {
         §7a§ = param1;
      }
      
      public function §'p§(param1:Boolean) : void
      {
         §7`§ = param1;
      }
      
      public function §!R§() : int
      {
         return this.§7D§;
      }
      
      public function §0!5§() : int
      {
         return this.§@T§;
      }
      
      public function §?#§() : int
      {
         return this.§<R§;
      }
      
      public function §,J§(param1:b2Vec2) : void
      {
         this.§0R§ = param1;
      }
      
      public function §+A§() : b2Vec2
      {
         return this.§0R§;
      }
      
      public function § M§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §31§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§0=§ & §#c§)
         {
            this.§3-§.§>!^§();
            this.§0=§ &= ~§#c§;
         }
         this.§0=§ |= §!u§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§?!§ = param1;
         _loc4_.§%!J§ = param2;
         _loc4_.§%9§ = param3;
         if(param1 > 0)
         {
            _loc4_.§>=§ = 1 / param1;
         }
         else
         {
            _loc4_.§>=§ = 0;
         }
         _loc4_.§7!<§ = this.§-K§ * param1;
         _loc4_.§9w§ = §7a§;
         this.§3-§.§5!"§();
         if(_loc4_.§?!§ > 0)
         {
            this.§?!7§(_loc4_);
         }
         if(§7`§ && _loc4_.§?!§ > 0)
         {
            this.§8!$§(_loc4_);
         }
         if(_loc4_.§?!§ > 0)
         {
            this.§-K§ = _loc4_.§>=§;
         }
         this.§0=§ &= ~§!u§;
      }
      
      public function §"A§() : void
      {
         var _loc1_:b2Body = this.§3!L§;
         while(_loc1_)
         {
            _loc1_.§ !U§.§;@§();
            _loc1_.§@!A§ = 0;
            _loc1_ = _loc1_.§!!U§;
         }
      }
      
      public function §0]§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§"l§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§7!-§ == null)
         {
            return;
         }
         this.§7!-§.§11§.graphics.clear();
         var _loc1_:uint = this.§7!-§.§=!#§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§ A§)
         {
            _loc3_ = this.§3!L§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§"w§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§^+§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§ 3§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§1k§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§ 3§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§1k§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§ 3§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§ 3§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§ 3§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§!!U§;
               }
               _loc3_ = _loc3_.§!!U§;
            }
         }
         if(_loc1_ & b2DebugDraw.§&!B§)
         {
            _loc6_ = this.§4!Y§;
            while(_loc6_)
            {
               this.§6h§(_loc6_);
               _loc6_ = _loc6_.§!!U§;
            }
         }
         if(_loc1_ & b2DebugDraw.§^!e§)
         {
            _loc16_ = this.§;a§;
            while(_loc16_)
            {
               _loc16_.§-A§(this.§7!-§);
               _loc16_ = _loc16_.§!!U§;
            }
         }
         if(_loc1_ & b2DebugDraw.§2!^§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§3-§.§<k§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§&+§();
               _loc19_ = _loc17_.§0!!§();
               _loc20_ = _loc18_.§^'§().§=y§();
               _loc21_ = _loc19_.§^'§().§=y§();
               this.§7!-§.§<C§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§4"§();
            }
         }
         if(_loc1_ & b2DebugDraw.§77§)
         {
            _loc7_ = this.§3-§.§0T§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§3!L§;
            while(_loc3_)
            {
               if(_loc3_.§^+§() != false)
               {
                  _loc4_ = _loc3_.§"w§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§"s§(_loc4_.§'3§);
                     _loc14_[0].Set(_loc22_.§%o§.x,_loc22_.§%o§.y);
                     _loc14_[1].Set(_loc22_.§4!_§.x,_loc22_.§%o§.y);
                     _loc14_[2].Set(_loc22_.§4!_§.x,_loc22_.§4!_§.y);
                     _loc14_[3].Set(_loc22_.§%o§.x,_loc22_.§4!_§.y);
                     this.§7!-§.§`5§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§4"§();
                  }
               }
               _loc3_ = _loc3_.§4"§();
            }
         }
         if(_loc1_ & b2DebugDraw.§[X§)
         {
            _loc3_ = this.§3!L§;
            while(_loc3_)
            {
               (_loc11_ = §?!5§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§7!-§.§[!d§(_loc11_);
               _loc3_ = _loc3_.§!!U§;
            }
         }
      }
      
      public function §]8§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§"l§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§3-§.§0T§;
         broadPhase.§]2§(WorldQueryWrapper,aabb);
      }
      
      public function §=!W§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§"l§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§13§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§`!E§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§#X§();
         }
         broadPhase = this.§3-§.§0T§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§]2§(WorldQueryWrapper,aabb);
      }
      
      public function §"V§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§"l§ = null;
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
         broadPhase = this.§3-§.§0T§;
         var aabb:b2AABB = new b2AABB();
         aabb.§%o§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§4!_§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§]2§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§"l§ = null;
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
            return param1.§!j§;
         };
         broadPhase = this.§3-§.§0T§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §%!4§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §]s§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §1q§() : b2Body
      {
         return this.§3!L§;
      }
      
      public function §]!=§() : b2Joint
      {
         return this.§4!Y§;
      }
      
      public function §2e§() : b2Contact
      {
         return this.§<k§;
      }
      
      public function §3M§() : Boolean
      {
         return (this.§0=§ & §!u§) > 0;
      }
      
      b2internal function §?!7§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§;a§;
         while(_loc3_)
         {
            _loc3_.§31§(param1);
            _loc3_ = _loc3_.§!!U§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§2!<§).§2#§(this.§7D§,this.§<R§,this.§@T§,null,this.§3-§.§=c§,this.§'!+§);
         _loc2_ = this.§3!L§;
         while(_loc2_)
         {
            _loc2_.§0=§ &= ~b2Body.§1!E§;
            _loc2_ = _loc2_.§!!U§;
         }
         var _loc5_:b2Contact = this.§<k§;
         while(_loc5_)
         {
            _loc5_.§0=§ &= ~b2Contact.§1!E§;
            _loc5_ = _loc5_.§!!U§;
         }
         var _loc6_:b2Joint = this.§4!Y§;
         while(_loc6_)
         {
            _loc6_.§0!`§ = false;
            _loc6_ = _loc6_.§!!U§;
         }
         var _loc7_:int = this.§7D§;
         var _loc8_:Vector.<b2Body> = this.§;!+§;
         var _loc9_:b2Body = this.§3!L§;
         while(_loc9_)
         {
            if(!(_loc9_.§0=§ & b2Body.§1!E§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§^+§() == false))
               {
                  if(_loc9_.§1k§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§^!V§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§0=§ |= b2Body.§1!E§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§;!N§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§1k§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§<k§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§'4§.§0=§ & b2Contact.§1!E§))
                              {
                                 if(!(_loc13_.§'4§.§2J§() == true || _loc13_.§'4§.§<3§() == false || _loc13_.§'4§.§1!0§() == false))
                                 {
                                    _loc4_.§8!M§(_loc13_.§'4§);
                                    _loc13_.§'4§.§0=§ |= b2Contact.§1!E§;
                                    if(!((_loc12_ = _loc13_.§5n§).§0=§ & b2Body.§1!E§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§0=§ |= b2Body.§1!E§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§+!P§;
                           }
                           _loc14_ = _loc2_.§4!Y§;
                           while(_loc14_)
                           {
                              if(_loc14_.§^!0§.§0!`§ != true)
                              {
                                 if((_loc12_ = _loc14_.§5n§).§^+§() != false)
                                 {
                                    _loc4_.§[!X§(_loc14_.§^!0§);
                                    _loc14_.§^!0§.§0!`§ = true;
                                    if(!(_loc12_.§0=§ & b2Body.§1!E§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§0=§ |= b2Body.§1!E§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§+!P§;
                           }
                        }
                     }
                     _loc4_.§?!7§(param1,this.§0R§,this.§0<§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§7D§)
                     {
                        _loc2_ = _loc4_.§&Z§[_loc11_];
                        if(_loc2_.§1k§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§0=§ &= ~b2Body.§1!E§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§!!U§;
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
         _loc2_ = this.§3!L§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§^+§() == false))
            {
               if(_loc2_.§1k§() != b2Body.b2_staticBody)
               {
                  _loc2_.§@!L§();
               }
            }
            _loc2_ = _loc2_.§!!U§;
         }
         this.§3-§.§>!^§();
      }
      
      b2internal function §8!$§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§2!<§).§2#§(this.§7D§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§3-§.§=c§,this.§'!+§);
         var _loc10_:Vector.<b2Body> = §]e§;
         _loc2_ = this.§3!L§;
         while(_loc2_)
         {
            _loc2_.§0=§ &= ~b2Body.§1!E§;
            _loc2_.m_sweep.§-^§ = 0;
            _loc2_ = _loc2_.§!!U§;
         }
         _loc11_ = this.§<k§;
         while(_loc11_)
         {
            _loc11_.§0=§ &= ~(b2Contact.§1!O§ | b2Contact.§1!E§);
            _loc11_ = _loc11_.§!!U§;
         }
         _loc8_ = this.§4!Y§;
         while(_loc8_)
         {
            _loc8_.§0!`§ = false;
            _loc8_ = _loc8_.§!!U§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§<k§;
            while(_loc11_)
            {
               if(!(_loc11_.§2J§() == true || _loc11_.§<3§() == false || _loc11_.§7x§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§0=§ & b2Contact.§1!O§)
                  {
                     _loc19_ = _loc11_.§4y§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§[![§;
                     _loc4_ = _loc11_.§1J§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§1k§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§1k§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr620:
                        _loc11_ = _loc11_.§!!U§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§-^§;
                     if(_loc5_.m_sweep.§-^§ < _loc6_.m_sweep.§-^§)
                     {
                        _loc20_ = _loc6_.m_sweep.§-^§;
                        _loc5_.m_sweep.§]_§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§-^§ < _loc5_.m_sweep.§-^§)
                     {
                        _loc20_ = _loc5_.m_sweep.§-^§;
                        _loc6_.m_sweep.§]_§(_loc20_);
                     }
                     _loc19_ = _loc11_.§]1§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§4y§ = _loc19_;
                     _loc11_.§0=§ |= b2Contact.§1!O§;
                     §§goto(addr620);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr620);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§[![§;
            _loc4_ = _loc12_.§1J§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §?A§.Set(_loc5_.m_sweep);
            §[B§.Set(_loc6_.m_sweep);
            _loc5_.§]_§(_loc13_);
            _loc6_.§]_§(_loc13_);
            _loc12_.§8!1§(this.§3-§.§=c§);
            _loc12_.§0=§ &= ~b2Contact.§1!O§;
            if(_loc12_.§2J§() == true || _loc12_.§<3§() == false)
            {
               _loc5_.m_sweep.Set(§?A§);
               _loc6_.m_sweep.Set(§[B§);
               _loc5_.§>u§();
               _loc6_.§>u§();
            }
            else if(_loc12_.§1!0§() != false)
            {
               if((_loc14_ = _loc5_).§1k§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§^!V§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§0=§ |= b2Body.§1!E§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§;!N§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§1k§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§<k§;
                     while(_loc7_)
                     {
                        if(_loc9_.§<R§ == _loc9_.§&!_§)
                        {
                           break;
                        }
                        if(!(_loc7_.§'4§.§0=§ & b2Contact.§1!E§))
                        {
                           if(!(_loc7_.§'4§.§2J§() == true || _loc7_.§'4§.§<3§() == false || _loc7_.§'4§.§1!0§() == false))
                           {
                              _loc9_.§8!M§(_loc7_.§'4§);
                              _loc7_.§'4§.§0=§ |= b2Contact.§1!E§;
                              if(!((_loc22_ = _loc7_.§5n§).§0=§ & b2Body.§1!E§))
                              {
                                 if(_loc22_.§1k§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§]_§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§0=§ |= b2Body.§1!E§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§+!P§;
                     }
                     _loc21_ = _loc2_.§4!Y§;
                     while(_loc21_)
                     {
                        if(_loc9_.§@T§ != _loc9_.§2'§)
                        {
                           if(_loc21_.§^!0§.§0!`§ != true)
                           {
                              if((_loc22_ = _loc21_.§5n§).§^+§() != false)
                              {
                                 _loc9_.§[!X§(_loc21_.§^!0§);
                                 _loc21_.§^!0§.§0!`§ = true;
                                 if(!(_loc22_.§0=§ & b2Body.§1!E§))
                                 {
                                    if(_loc22_.§1k§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§]_§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§0=§ |= b2Body.§1!E§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§+!P§;
                     }
                  }
               }
               (_loc17_ = §5!F§).§9w§ = false;
               _loc17_.§?!§ = (1 - _loc13_) * param1.§?!§;
               _loc17_.§>=§ = 1 / _loc17_.§?!§;
               _loc17_.§7!<§ = 0;
               _loc17_.§%!J§ = param1.§%!J§;
               _loc17_.§%9§ = param1.§%9§;
               _loc9_.§8!$§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§7D§)
               {
                  _loc2_ = _loc9_.§&Z§[_loc18_];
                  _loc2_.§0=§ &= ~b2Body.§1!E§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§1k§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§@!L§();
                        _loc7_ = _loc2_.§<k§;
                        while(_loc7_)
                        {
                           _loc7_.§'4§.§0=§ &= ~b2Contact.§1!O§;
                           _loc7_ = _loc7_.§+!P§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§<R§)
               {
                  _loc11_ = _loc9_.§ !d§[_loc18_];
                  _loc11_.§0=§ &= ~(b2Contact.§1!O§ | b2Contact.§1!E§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§@T§)
               {
                  (_loc8_ = _loc9_.§4!#§[_loc18_]).§0!`§ = false;
                  _loc18_++;
               }
               this.§3-§.§>!^§();
            }
         }
      }
      
      b2internal function §6h§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§&!=§();
         var _loc3_:b2Body = param1.§4s§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §>M§;
         switch(param1.§2M§)
         {
            case b2Joint.§;!0§:
               this.§7!-§.§<C§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§>B§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§2!R§();
               _loc13_ = _loc11_.§[!W§();
               this.§7!-§.§<C§(_loc12_,_loc8_,_loc10_);
               this.§7!-§.§<C§(_loc13_,_loc9_,_loc10_);
               this.§7!-§.§<C§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§return§:
               this.§7!-§.§<C§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§7!-§.§<C§(_loc6_,_loc8_,_loc10_);
               }
               this.§7!-§.§<C§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§7!-§.§<C§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function § 3§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§2M§)
         {
            case b2Shape.§[w§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§;!P§(param2,_loc4_.§`!a§);
               _loc6_ = _loc4_.§ !!§;
               _loc7_ = param2.R.col1;
               this.§7!-§.§]M§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§"!c§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§=-§();
               _loc11_ = _loc9_.§>!8§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§;!P§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§7!-§.§1!b§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§=m§:
               _loc13_ = param1 as b2EdgeShape;
               this.§7!-§.§<C§(b2Math.§;!P§(param2,_loc13_.GetVertex1()),b2Math.§;!P§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

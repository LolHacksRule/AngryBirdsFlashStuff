package § y§
{
   import §!u§.*;
   import §"!4§.*;
   import §%!U§.b2Controller;
   import §%!U§.b2ControllerEdge;
   import §0b§.*;
   import §54§.*;
   import §;h§.*;
   import §]!7§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §,n§:b2Transform = new b2Transform();
      
      private static var §`!2§:b2Sweep = new b2Sweep();
      
      private static var §?6§:b2Sweep = new b2Sweep();
      
      private static var §6m§:b2TimeStep = new b2TimeStep();
      
      private static var §!Q§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §7X§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §#L§:Boolean;
      
      private static var §6!$§:Boolean;
      
      public static const §1!_§:int = 1;
      
      public static const §case§:int = 2;
       
      
      private var §%<§:Vector.<b2Body>;
      
      b2internal var §"N§:int;
      
      b2internal var §!r§:b2ContactManager;
      
      private var §!e§:b2ContactSolver;
      
      private var §#J§:b2Island;
      
      b2internal var §=!^§:b2Body;
      
      private var §?!4§:b2Joint;
      
      b2internal var §"!N§:b2Contact;
      
      private var §=z§:int;
      
      b2internal var §'!;§:int;
      
      private var §"!B§:int;
      
      private var §8!"§:b2Controller;
      
      private var §0!^§:int;
      
      private var §@!8§:b2Vec2;
      
      private var §5_§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §%e§:b2DestructionListener;
      
      private var §0&§:b2DebugDraw;
      
      private var § !'§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§%<§ = new Vector.<b2Body>();
         this.§!r§ = new b2ContactManager();
         this.§!e§ = new b2ContactSolver();
         this.§#J§ = new b2Island();
         super();
         this.§%e§ = null;
         this.§0&§ = null;
         this.§=!^§ = null;
         this.§"!N§ = null;
         this.§?!4§ = null;
         this.§8!"§ = null;
         this.§=z§ = 0;
         this.§'!;§ = 0;
         this.§"!B§ = 0;
         this.§0!^§ = 0;
         §#L§ = true;
         §6!$§ = true;
         this.§5_§ = param2;
         this.§@!8§ = param1;
         this.§ !'§ = 0;
         this.§!r§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§9[§(_loc3_);
      }
      
      public function §9!M§(param1:b2DestructionListener) : void
      {
         this.§%e§ = param1;
      }
      
      public function §4x§(param1:b2ContactFilter) : void
      {
         this.§!r§.§+!;§ = param1;
      }
      
      public function §^W§(param1:b2ContactListener) : void
      {
         this.§!r§.§+!X§ = param1;
      }
      
      public function §;3§(param1:b2DebugDraw) : void
      {
         this.§0&§ = param1;
      }
      
      public function §8!b§(param1:§5c§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§5c§ = this.§!r§.§]!V§;
         this.§!r§.§]!V§ = param1;
         var _loc3_:b2Body = this.§=!^§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§'!=§;
            while(_loc4_)
            {
               _loc4_.§>S§ = param1.§7!@§(_loc2_.§"![§(_loc4_.§>S§),_loc4_);
               _loc4_ = _loc4_.§&!+§;
            }
            _loc3_ = _loc3_.§&!+§;
         }
      }
      
      public function §^h§() : void
      {
         this.§!r§.§]!V§.§^h§();
      }
      
      public function §!!]§() : int
      {
         return this.§!r§.§]!V§.§!!]§();
      }
      
      public function §9[§(param1:b2BodyDef) : b2Body
      {
         if(this.§>!U§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§7G§ = null;
         _loc2_.§&!+§ = this.§=!^§;
         if(this.§=!^§)
         {
            this.§=!^§.§7G§ = _loc2_;
         }
         this.§=!^§ = _loc2_;
         ++this.§=z§;
         return _loc2_;
      }
      
      public function §true§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§>!U§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§?!4§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§'_§;
            if(this.§%e§)
            {
               this.§%e§.§5!7§(_loc6_.§8-§);
            }
            this.§@j§(_loc6_.§8-§);
         }
         var _loc3_:b2ControllerEdge = param1.§8!"§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§@!1§;
            _loc7_.§0!9§.§?S§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§"!N§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§'_§;
            this.§!r§.§5!,§(_loc8_.§`!T§);
         }
         param1.§"!N§ = null;
         var _loc5_:b2Fixture = param1.§'!=§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§&!+§;
            if(this.§%e§)
            {
               this.§%e§.§@!9§(_loc9_);
            }
            _loc9_.§@q§(this.§!r§.§]!V§);
            _loc9_.§5!,§();
         }
         param1.§'!=§ = null;
         param1.§`!%§ = 0;
         if(param1.§7G§)
         {
            param1.§7G§.§&!+§ = param1.§&!+§;
         }
         if(param1.§&!+§)
         {
            param1.§&!+§.§7G§ = param1.§7G§;
         }
         if(param1 == this.§=!^§)
         {
            this.§=!^§ = param1.§&!+§;
         }
         --this.§=z§;
      }
      
      public function §-!]§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§`Q§(param1,null);
         _loc2_.§7G§ = null;
         _loc2_.§&!+§ = this.§?!4§;
         if(this.§?!4§)
         {
            this.§?!4§.§7G§ = _loc2_;
         }
         this.§?!4§ = _loc2_;
         ++this.§"!B§;
         _loc2_.§>!O§.§8-§ = _loc2_;
         _loc2_.§>!O§.§3m§ = _loc2_.§[!4§;
         _loc2_.§>!O§.§#!F§ = null;
         _loc2_.§>!O§.§'_§ = _loc2_.§`1§.§?!4§;
         if(_loc2_.§`1§.§?!4§)
         {
            _loc2_.§`1§.§?!4§.§#!F§ = _loc2_.§>!O§;
         }
         _loc2_.§`1§.§?!4§ = _loc2_.§>!O§;
         _loc2_.§%-§.§8-§ = _loc2_;
         _loc2_.§%-§.§3m§ = _loc2_.§`1§;
         _loc2_.§%-§.§#!F§ = null;
         _loc2_.§%-§.§'_§ = _loc2_.§[!4§.§?!4§;
         if(_loc2_.§[!4§.§?!4§)
         {
            _loc2_.§[!4§.§?!4§.§#!F§ = _loc2_.§%-§;
         }
         _loc2_.§[!4§.§?!4§ = _loc2_.§%-§;
         var _loc3_:b2Body = param1.§8L§;
         var _loc4_:b2Body = param1.§4!H§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§1!D§();
            while(_loc5_)
            {
               if(_loc5_.§3m§ == _loc3_)
               {
                  _loc5_.§`!T§.§7!^§();
               }
               _loc5_ = _loc5_.§'_§;
            }
         }
         return _loc2_;
      }
      
      public function §@j§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§2@§;
         if(param1.§7G§)
         {
            param1.§7G§.§&!+§ = param1.§&!+§;
         }
         if(param1.§&!+§)
         {
            param1.§&!+§.§7G§ = param1.§7G§;
         }
         if(param1 == this.§?!4§)
         {
            this.§?!4§ = param1.§&!+§;
         }
         var _loc3_:b2Body = param1.§`1§;
         var _loc4_:b2Body = param1.§[!4§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§>!O§.§#!F§)
         {
            param1.§>!O§.§#!F§.§'_§ = param1.§>!O§.§'_§;
         }
         if(param1.§>!O§.§'_§)
         {
            param1.§>!O§.§'_§.§#!F§ = param1.§>!O§.§#!F§;
         }
         if(param1.§>!O§ == _loc3_.§?!4§)
         {
            _loc3_.§?!4§ = param1.§>!O§.§'_§;
         }
         param1.§>!O§.§#!F§ = null;
         param1.§>!O§.§'_§ = null;
         if(param1.§%-§.§#!F§)
         {
            param1.§%-§.§#!F§.§'_§ = param1.§%-§.§'_§;
         }
         if(param1.§%-§.§'_§)
         {
            param1.§%-§.§'_§.§#!F§ = param1.§%-§.§#!F§;
         }
         if(param1.§%-§ == _loc4_.§?!4§)
         {
            _loc4_.§?!4§ = param1.§%-§.§'_§;
         }
         param1.§%-§.§#!F§ = null;
         param1.§%-§.§'_§ = null;
         b2Joint.§5!,§(param1,null);
         --this.§"!B§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§1!D§();
            while(_loc5_)
            {
               if(_loc5_.§3m§ == _loc3_)
               {
                  _loc5_.§`!T§.§7!^§();
               }
               _loc5_ = _loc5_.§'_§;
            }
         }
      }
      
      public function §!a§(param1:b2Controller) : b2Controller
      {
         param1.§&!+§ = this.§8!"§;
         param1.§7G§ = null;
         this.§8!"§ = param1;
         param1.m_world = this;
         ++this.§0!^§;
         return param1;
      }
      
      public function §?%§(param1:b2Controller) : void
      {
         if(param1.§7G§)
         {
            param1.§7G§.§&!+§ = param1.§&!+§;
         }
         if(param1.§&!+§)
         {
            param1.§&!+§.§7G§ = param1.§7G§;
         }
         if(this.§8!"§ == param1)
         {
            this.§8!"§ = param1.§&!+§;
         }
         --this.§0!^§;
      }
      
      public function § #§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§&!+§ = this.§8!"§;
         param1.§7G§ = null;
         if(this.§8!"§)
         {
            this.§8!"§.§7G§ = param1;
         }
         this.§8!"§ = param1;
         ++this.§0!^§;
         param1.m_world = this;
         return param1;
      }
      
      public function §[>§(param1:b2Controller) : void
      {
         param1.§3'§();
         if(param1.§&!+§)
         {
            param1.§&!+§.§7G§ = param1.§7G§;
         }
         if(param1.§7G§)
         {
            param1.§7G§.§&!+§ = param1.§&!+§;
         }
         if(param1 == this.§8!"§)
         {
            this.§8!"§ = param1.§&!+§;
         }
         --this.§0!^§;
      }
      
      public function §0N§(param1:Boolean) : void
      {
         §#L§ = param1;
      }
      
      public function §%$§(param1:Boolean) : void
      {
         §6!$§ = param1;
      }
      
      public function §>!3§() : int
      {
         return this.§=z§;
      }
      
      public function §2%§() : int
      {
         return this.§"!B§;
      }
      
      public function §%6§() : int
      {
         return this.§'!;§;
      }
      
      public function §;!?§(param1:b2Vec2) : void
      {
         this.§@!8§ = param1;
      }
      
      public function §[k§() : b2Vec2
      {
         return this.§@!8§;
      }
      
      public function §^!9§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §-l§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§"N§ & §1!_§)
         {
            this.§!r§.§'=§();
            this.§"N§ &= ~§1!_§;
         }
         this.§"N§ |= §case§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§9!^§ = param1;
         _loc4_.§#3§ = param2;
         _loc4_.§?M§ = param3;
         if(param1 > 0)
         {
            _loc4_.§1!2§ = 1 / param1;
         }
         else
         {
            _loc4_.§1!2§ = 0;
         }
         _loc4_.§56§ = this.§ !'§ * param1;
         _loc4_.§[!Z§ = §#L§;
         this.§!r§.§92§();
         if(_loc4_.§9!^§ > 0)
         {
            this.§-7§(_loc4_);
         }
         if(§6!$§ && _loc4_.§9!^§ > 0)
         {
            this.§[4§(_loc4_);
         }
         if(_loc4_.§9!^§ > 0)
         {
            this.§ !'§ = _loc4_.§1!2§;
         }
         this.§"N§ &= ~§case§;
      }
      
      public function §1M§() : void
      {
         var _loc1_:b2Body = this.§=!^§;
         while(_loc1_)
         {
            _loc1_.§;!B§.§9!V§();
            _loc1_.§64§ = 0;
            _loc1_ = _loc1_.§&!+§;
         }
      }
      
      public function §<!G§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§5c§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§0&§ == null)
         {
            return;
         }
         this.§0&§.§^m§.graphics.clear();
         var _loc1_:uint = this.§0&§.§%v§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§2h§)
         {
            _loc3_ = this.§=!^§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§0!2§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§"C§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§[]§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§`!Q§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§[]§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§`!Q§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§[]§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§[]§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§[]§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§&!+§;
               }
               _loc3_ = _loc3_.§&!+§;
            }
         }
         if(_loc1_ & b2DebugDraw.§[!E§)
         {
            _loc6_ = this.§?!4§;
            while(_loc6_)
            {
               this.§+2§(_loc6_);
               _loc6_ = _loc6_.§&!+§;
            }
         }
         if(_loc1_ & b2DebugDraw.§-!B§)
         {
            _loc16_ = this.§8!"§;
            while(_loc16_)
            {
               _loc16_.§9c§(this.§0&§);
               _loc16_ = _loc16_.§&!+§;
            }
         }
         if(_loc1_ & b2DebugDraw.§2!H§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§!r§.§"!N§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§^Z§();
               _loc19_ = _loc17_.§3<§();
               _loc20_ = _loc18_.§^0§().§;k§();
               _loc21_ = _loc19_.§^0§().§;k§();
               this.§0&§.§ >§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§3!I§();
            }
         }
         if(_loc1_ & b2DebugDraw.§ !<§)
         {
            _loc7_ = this.§!r§.§]!V§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§=!^§;
            while(_loc3_)
            {
               if(_loc3_.§"C§() != false)
               {
                  _loc4_ = _loc3_.§0!2§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§"![§(_loc4_.§>S§);
                     _loc14_[0].Set(_loc22_.§;s§.x,_loc22_.§;s§.y);
                     _loc14_[1].Set(_loc22_.§`!]§.x,_loc22_.§;s§.y);
                     _loc14_[2].Set(_loc22_.§`!]§.x,_loc22_.§`!]§.y);
                     _loc14_[3].Set(_loc22_.§;s§.x,_loc22_.§`!]§.y);
                     this.§0&§.§ M§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§3!I§();
                  }
               }
               _loc3_ = _loc3_.§3!I§();
            }
         }
         if(_loc1_ & b2DebugDraw.§+9§)
         {
            _loc3_ = this.§=!^§;
            while(_loc3_)
            {
               (_loc11_ = §,n§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§0&§.§8!U§(_loc11_);
               _loc3_ = _loc3_.§&!+§;
            }
         }
      }
      
      public function §function§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§5c§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§!r§.§]!V§;
         broadPhase.§`Z§(WorldQueryWrapper,aabb);
      }
      
      public function §finally§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§5c§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§"!a§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§0!S§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§!m§();
         }
         broadPhase = this.§!r§.§]!V§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§`Z§(WorldQueryWrapper,aabb);
      }
      
      public function §6!^§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§5c§ = null;
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
         broadPhase = this.§!r§.§]!V§;
         var aabb:b2AABB = new b2AABB();
         aabb.§;s§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§`!]§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§`Z§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§5c§ = null;
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
            return param1.§%!F§;
         };
         broadPhase = this.§!r§.§]!V§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §^z§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §;G§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §3G§() : b2Body
      {
         return this.§=!^§;
      }
      
      public function §9$§() : b2Joint
      {
         return this.§?!4§;
      }
      
      public function §1!D§() : b2Contact
      {
         return this.§"!N§;
      }
      
      public function §>!U§() : Boolean
      {
         return (this.§"N§ & §case§) > 0;
      }
      
      b2internal function §-7§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§8!"§;
         while(_loc3_)
         {
            _loc3_.§-l§(param1);
            _loc3_ = _loc3_.§&!+§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§#J§).§#§(this.§=z§,this.§'!;§,this.§"!B§,null,this.§!r§.§+!X§,this.§!e§);
         _loc2_ = this.§=!^§;
         while(_loc2_)
         {
            _loc2_.§"N§ &= ~b2Body.§!P§;
            _loc2_ = _loc2_.§&!+§;
         }
         var _loc5_:b2Contact = this.§"!N§;
         while(_loc5_)
         {
            _loc5_.§"N§ &= ~b2Contact.§!P§;
            _loc5_ = _loc5_.§&!+§;
         }
         var _loc6_:b2Joint = this.§?!4§;
         while(_loc6_)
         {
            _loc6_.§2=§ = false;
            _loc6_ = _loc6_.§&!+§;
         }
         var _loc7_:int = this.§=z§;
         var _loc8_:Vector.<b2Body> = this.§%<§;
         var _loc9_:b2Body = this.§=!^§;
         while(_loc9_)
         {
            if(!(_loc9_.§"N§ & b2Body.§!P§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§"C§() == false))
               {
                  if(_loc9_.§`!Q§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§3'§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§"N§ |= b2Body.§!P§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§+r§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§`!Q§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§"!N§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§`!T§.§"N§ & b2Contact.§!P§))
                              {
                                 if(!(_loc13_.§`!T§.§6!Z§() == true || _loc13_.§`!T§.§&0§() == false || _loc13_.§`!T§.§,!E§() == false))
                                 {
                                    _loc4_.§9H§(_loc13_.§`!T§);
                                    _loc13_.§`!T§.§"N§ |= b2Contact.§!P§;
                                    if(!((_loc12_ = _loc13_.§3m§).§"N§ & b2Body.§!P§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§"N§ |= b2Body.§!P§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§'_§;
                           }
                           _loc14_ = _loc2_.§?!4§;
                           while(_loc14_)
                           {
                              if(_loc14_.§8-§.§2=§ != true)
                              {
                                 if((_loc12_ = _loc14_.§3m§).§"C§() != false)
                                 {
                                    _loc4_.§^c§(_loc14_.§8-§);
                                    _loc14_.§8-§.§2=§ = true;
                                    if(!(_loc12_.§"N§ & b2Body.§!P§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§"N§ |= b2Body.§!P§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§'_§;
                           }
                        }
                     }
                     _loc4_.§-7§(param1,this.§@!8§,this.§5_§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§=z§)
                     {
                        _loc2_ = _loc4_.§"[§[_loc11_];
                        if(_loc2_.§`!Q§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§"N§ &= ~b2Body.§!P§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§&!+§;
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
         _loc2_ = this.§=!^§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§"C§() == false))
            {
               if(_loc2_.§`!Q§() != b2Body.b2_staticBody)
               {
                  _loc2_.§3t§();
               }
            }
            _loc2_ = _loc2_.§&!+§;
         }
         this.§!r§.§'=§();
      }
      
      b2internal function §[4§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§#J§).§#§(this.§=z§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§!r§.§+!X§,this.§!e§);
         var _loc10_:Vector.<b2Body> = §!Q§;
         _loc2_ = this.§=!^§;
         while(_loc2_)
         {
            _loc2_.§"N§ &= ~b2Body.§!P§;
            _loc2_.m_sweep.§]S§ = 0;
            _loc2_ = _loc2_.§&!+§;
         }
         _loc11_ = this.§"!N§;
         while(_loc11_)
         {
            _loc11_.§"N§ &= ~(b2Contact.§6=§ | b2Contact.§!P§);
            _loc11_ = _loc11_.§&!+§;
         }
         _loc8_ = this.§?!4§;
         while(_loc8_)
         {
            _loc8_.§2=§ = false;
            _loc8_ = _loc8_.§&!+§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§"!N§;
            while(_loc11_)
            {
               if(!(_loc11_.§6!Z§() == true || _loc11_.§&0§() == false || _loc11_.§8!0§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§"N§ & b2Contact.§6=§)
                  {
                     _loc19_ = _loc11_.§,]§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§31§;
                     _loc4_ = _loc11_.§`>§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§`!Q§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§`!Q§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr619:
                        _loc11_ = _loc11_.§&!+§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§]S§;
                     if(_loc5_.m_sweep.§]S§ < _loc6_.m_sweep.§]S§)
                     {
                        _loc20_ = _loc6_.m_sweep.§]S§;
                        _loc5_.m_sweep.§[K§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§]S§ < _loc5_.m_sweep.§]S§)
                     {
                        _loc20_ = _loc5_.m_sweep.§]S§;
                        _loc6_.m_sweep.§[K§(_loc20_);
                     }
                     _loc19_ = _loc11_.§;!=§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§,]§ = _loc19_;
                     _loc11_.§"N§ |= b2Contact.§6=§;
                     §§goto(addr619);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr619);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§31§;
            _loc4_ = _loc12_.§`>§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §`!2§.Set(_loc5_.m_sweep);
            §?6§.Set(_loc6_.m_sweep);
            _loc5_.§[K§(_loc13_);
            _loc6_.§[K§(_loc13_);
            _loc12_.§[<§(this.§!r§.§+!X§);
            _loc12_.§"N§ &= ~b2Contact.§6=§;
            if(_loc12_.§6!Z§() == true || _loc12_.§&0§() == false)
            {
               _loc5_.m_sweep.Set(§`!2§);
               _loc6_.m_sweep.Set(§?6§);
               _loc5_.§-!d§();
               _loc6_.§-!d§();
            }
            else if(_loc12_.§,!E§() != false)
            {
               if((_loc14_ = _loc5_).§`!Q§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§3'§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§"N§ |= b2Body.§!P§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§+r§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§`!Q§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§"!N§;
                     while(_loc7_)
                     {
                        if(_loc9_.§'!;§ == _loc9_.§1@§)
                        {
                           break;
                        }
                        if(!(_loc7_.§`!T§.§"N§ & b2Contact.§!P§))
                        {
                           if(!(_loc7_.§`!T§.§6!Z§() == true || _loc7_.§`!T§.§&0§() == false || _loc7_.§`!T§.§,!E§() == false))
                           {
                              _loc9_.§9H§(_loc7_.§`!T§);
                              _loc7_.§`!T§.§"N§ |= b2Contact.§!P§;
                              if(!((_loc22_ = _loc7_.§3m§).§"N§ & b2Body.§!P§))
                              {
                                 if(_loc22_.§`!Q§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§[K§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§"N§ |= b2Body.§!P§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§'_§;
                     }
                     _loc21_ = _loc2_.§?!4§;
                     while(_loc21_)
                     {
                        if(_loc9_.§"!B§ != _loc9_.§^!§)
                        {
                           if(_loc21_.§8-§.§2=§ != true)
                           {
                              if((_loc22_ = _loc21_.§3m§).§"C§() != false)
                              {
                                 _loc9_.§^c§(_loc21_.§8-§);
                                 _loc21_.§8-§.§2=§ = true;
                                 if(!(_loc22_.§"N§ & b2Body.§!P§))
                                 {
                                    if(_loc22_.§`!Q§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§[K§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§"N§ |= b2Body.§!P§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§'_§;
                     }
                  }
               }
               (_loc17_ = §6m§).§[!Z§ = false;
               _loc17_.§9!^§ = (1 - _loc13_) * param1.§9!^§;
               _loc17_.§1!2§ = 1 / _loc17_.§9!^§;
               _loc17_.§56§ = 0;
               _loc17_.§#3§ = param1.§#3§;
               _loc17_.§?M§ = param1.§?M§;
               _loc9_.§[4§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§=z§)
               {
                  _loc2_ = _loc9_.§"[§[_loc18_];
                  _loc2_.§"N§ &= ~b2Body.§!P§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§`!Q§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§3t§();
                        _loc7_ = _loc2_.§"!N§;
                        while(_loc7_)
                        {
                           _loc7_.§`!T§.§"N§ &= ~b2Contact.§6=§;
                           _loc7_ = _loc7_.§'_§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§'!;§)
               {
                  _loc11_ = _loc9_.§5<§[_loc18_];
                  _loc11_.§"N§ &= ~(b2Contact.§6=§ | b2Contact.§!P§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§"!B§)
               {
                  (_loc8_ = _loc9_.§]]§[_loc18_]).§2=§ = false;
                  _loc18_++;
               }
               this.§!r§.§'=§();
            }
         }
      }
      
      b2internal function §+2§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§"!Q§();
         var _loc3_:b2Body = param1.§1!$§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §7X§;
         switch(param1.§2+§)
         {
            case b2Joint.§4!N§:
               this.§0&§.§ >§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§&!H§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§06§();
               _loc13_ = _loc11_.§>!2§();
               this.§0&§.§ >§(_loc12_,_loc8_,_loc10_);
               this.§0&§.§ >§(_loc13_,_loc9_,_loc10_);
               this.§0&§.§ >§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§?$§:
               this.§0&§.§ >§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§0&§.§ >§(_loc6_,_loc8_,_loc10_);
               }
               this.§0&§.§ >§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§0&§.§ >§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §[]§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§2+§)
         {
            case b2Shape.§8m§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§9l§(param2,_loc4_.§3b§);
               _loc6_ = _loc4_.§,!3§;
               _loc7_ = param2.R.col1;
               this.§0&§.§[!9§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§3!D§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§!'§();
               _loc11_ = _loc9_.§,!X§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§9l§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§0&§.§5!W§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§,F§:
               _loc13_ = param1 as b2EdgeShape;
               this.§0&§.§ >§(b2Math.§9l§(param2,_loc13_.GetVertex1()),b2Math.§9l§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

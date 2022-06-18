package §[W§
{
   import § !5§.*;
   import §!6§.*;
   import §+,§.*;
   import §-!$§.*;
   import §3!O§.*;
   import §7!Q§.b2Controller;
   import §7!Q§.b2ControllerEdge;
   import §?§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §9E§:b2Transform = new b2Transform();
      
      private static var §7]§:b2Sweep = new b2Sweep();
      
      private static var §?!9§:b2Sweep = new b2Sweep();
      
      private static var §;6§:b2TimeStep = new b2TimeStep();
      
      private static var §7S§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §#L§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §8!^§:Boolean;
      
      private static var §>!+§:Boolean;
      
      public static const §#!O§:int = 1;
      
      public static const §?j§:int = 2;
       
      
      private var §1h§:Vector.<b2Body>;
      
      b2internal var §;>§:int;
      
      b2internal var §5E§:b2ContactManager;
      
      private var §6M§:b2ContactSolver;
      
      private var §0K§:b2Island;
      
      b2internal var §2I§:b2Body;
      
      private var §+G§:b2Joint;
      
      b2internal var §"!^§:b2Contact;
      
      private var §[!=§:int;
      
      b2internal var §6e§:int;
      
      private var §-X§:int;
      
      private var §]I§:b2Controller;
      
      private var § !]§:int;
      
      private var §1!!§:b2Vec2;
      
      private var §+I§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §-v§:b2DestructionListener;
      
      private var §`!;§:b2DebugDraw;
      
      private var §1!V§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§1h§ = new Vector.<b2Body>();
         this.§5E§ = new b2ContactManager();
         this.§6M§ = new b2ContactSolver();
         this.§0K§ = new b2Island();
         super();
         this.§-v§ = null;
         this.§`!;§ = null;
         this.§2I§ = null;
         this.§"!^§ = null;
         this.§+G§ = null;
         this.§]I§ = null;
         this.§[!=§ = 0;
         this.§6e§ = 0;
         this.§-X§ = 0;
         this.§ !]§ = 0;
         §8!^§ = true;
         §>!+§ = true;
         this.§+I§ = param2;
         this.§1!!§ = param1;
         this.§1!V§ = 0;
         this.§5E§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§?s§(_loc3_);
      }
      
      public function §<N§(param1:b2DestructionListener) : void
      {
         this.§-v§ = param1;
      }
      
      public function §-9§(param1:b2ContactFilter) : void
      {
         this.§5E§.§6d§ = param1;
      }
      
      public function §@!4§(param1:b2ContactListener) : void
      {
         this.§5E§.§6]§ = param1;
      }
      
      public function §>!Q§(param1:b2DebugDraw) : void
      {
         this.§`!;§ = param1;
      }
      
      public function §"k§(param1:§"!2§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§"!2§ = this.§5E§.§"G§;
         this.§5E§.§"G§ = param1;
         var _loc3_:b2Body = this.§2I§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§#!X§;
            while(_loc4_)
            {
               _loc4_.§>8§ = param1.§6B§(_loc2_.§%+§(_loc4_.§>8§),_loc4_);
               _loc4_ = _loc4_.§60§;
            }
            _loc3_ = _loc3_.§60§;
         }
      }
      
      public function §4+§() : void
      {
         this.§5E§.§"G§.§4+§();
      }
      
      public function §-!+§() : int
      {
         return this.§5E§.§"G§.§-!+§();
      }
      
      public function §?s§(param1:b2BodyDef) : b2Body
      {
         if(this.§&!J§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§<]§ = null;
         _loc2_.§60§ = this.§2I§;
         if(this.§2I§)
         {
            this.§2I§.§<]§ = _loc2_;
         }
         this.§2I§ = _loc2_;
         ++this.§[!=§;
         return _loc2_;
      }
      
      public function §13§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§&!J§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§+G§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§"!+§;
            if(this.§-v§)
            {
               this.§-v§.§=!B§(_loc6_.§12§);
            }
            this.§"?§(_loc6_.§12§);
         }
         var _loc3_:b2ControllerEdge = param1.§]I§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§>T§;
            _loc7_.§;O§.§@!V§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§"!^§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§"!+§;
            this.§5E§.§;t§(_loc8_.§1!=§);
         }
         param1.§"!^§ = null;
         var _loc5_:b2Fixture = param1.§#!X§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§60§;
            if(this.§-v§)
            {
               this.§-v§.§3e§(_loc9_);
            }
            _loc9_.§%d§(this.§5E§.§"G§);
            _loc9_.§;t§();
         }
         param1.§#!X§ = null;
         param1.§4!6§ = 0;
         if(param1.§<]§)
         {
            param1.§<]§.§60§ = param1.§60§;
         }
         if(param1.§60§)
         {
            param1.§60§.§<]§ = param1.§<]§;
         }
         if(param1 == this.§2I§)
         {
            this.§2I§ = param1.§60§;
         }
         --this.§[!=§;
      }
      
      public function §&j§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§2Q§(param1,null);
         _loc2_.§<]§ = null;
         _loc2_.§60§ = this.§+G§;
         if(this.§+G§)
         {
            this.§+G§.§<]§ = _loc2_;
         }
         this.§+G§ = _loc2_;
         ++this.§-X§;
         _loc2_.§7!Y§.§12§ = _loc2_;
         _loc2_.§7!Y§.§]!7§ = _loc2_.§-!`§;
         _loc2_.§7!Y§.§#h§ = null;
         _loc2_.§7!Y§.§"!+§ = _loc2_.§#4§.§+G§;
         if(_loc2_.§#4§.§+G§)
         {
            _loc2_.§#4§.§+G§.§#h§ = _loc2_.§7!Y§;
         }
         _loc2_.§#4§.§+G§ = _loc2_.§7!Y§;
         _loc2_.§@!D§.§12§ = _loc2_;
         _loc2_.§@!D§.§]!7§ = _loc2_.§#4§;
         _loc2_.§@!D§.§#h§ = null;
         _loc2_.§@!D§.§"!+§ = _loc2_.§-!`§.§+G§;
         if(_loc2_.§-!`§.§+G§)
         {
            _loc2_.§-!`§.§+G§.§#h§ = _loc2_.§@!D§;
         }
         _loc2_.§-!`§.§+G§ = _loc2_.§@!D§;
         var _loc3_:b2Body = param1.§-[§;
         var _loc4_:b2Body = param1.§>N§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§4!U§();
            while(_loc5_)
            {
               if(_loc5_.§]!7§ == _loc3_)
               {
                  _loc5_.§1!=§.§@m§();
               }
               _loc5_ = _loc5_.§"!+§;
            }
         }
         return _loc2_;
      }
      
      public function §"?§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§;!?§;
         if(param1.§<]§)
         {
            param1.§<]§.§60§ = param1.§60§;
         }
         if(param1.§60§)
         {
            param1.§60§.§<]§ = param1.§<]§;
         }
         if(param1 == this.§+G§)
         {
            this.§+G§ = param1.§60§;
         }
         var _loc3_:b2Body = param1.§#4§;
         var _loc4_:b2Body = param1.§-!`§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§7!Y§.§#h§)
         {
            param1.§7!Y§.§#h§.§"!+§ = param1.§7!Y§.§"!+§;
         }
         if(param1.§7!Y§.§"!+§)
         {
            param1.§7!Y§.§"!+§.§#h§ = param1.§7!Y§.§#h§;
         }
         if(param1.§7!Y§ == _loc3_.§+G§)
         {
            _loc3_.§+G§ = param1.§7!Y§.§"!+§;
         }
         param1.§7!Y§.§#h§ = null;
         param1.§7!Y§.§"!+§ = null;
         if(param1.§@!D§.§#h§)
         {
            param1.§@!D§.§#h§.§"!+§ = param1.§@!D§.§"!+§;
         }
         if(param1.§@!D§.§"!+§)
         {
            param1.§@!D§.§"!+§.§#h§ = param1.§@!D§.§#h§;
         }
         if(param1.§@!D§ == _loc4_.§+G§)
         {
            _loc4_.§+G§ = param1.§@!D§.§"!+§;
         }
         param1.§@!D§.§#h§ = null;
         param1.§@!D§.§"!+§ = null;
         b2Joint.§;t§(param1,null);
         --this.§-X§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§4!U§();
            while(_loc5_)
            {
               if(_loc5_.§]!7§ == _loc3_)
               {
                  _loc5_.§1!=§.§@m§();
               }
               _loc5_ = _loc5_.§"!+§;
            }
         }
      }
      
      public function §;s§(param1:b2Controller) : b2Controller
      {
         param1.§60§ = this.§]I§;
         param1.§<]§ = null;
         this.§]I§ = param1;
         param1.m_world = this;
         ++this.§ !]§;
         return param1;
      }
      
      public function §]X§(param1:b2Controller) : void
      {
         if(param1.§<]§)
         {
            param1.§<]§.§60§ = param1.§60§;
         }
         if(param1.§60§)
         {
            param1.§60§.§<]§ = param1.§<]§;
         }
         if(this.§]I§ == param1)
         {
            this.§]I§ = param1.§60§;
         }
         --this.§ !]§;
      }
      
      public function §@E§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§60§ = this.§]I§;
         param1.§<]§ = null;
         if(this.§]I§)
         {
            this.§]I§.§<]§ = param1;
         }
         this.§]I§ = param1;
         ++this.§ !]§;
         param1.m_world = this;
         return param1;
      }
      
      public function §&!K§(param1:b2Controller) : void
      {
         param1.§9'§();
         if(param1.§60§)
         {
            param1.§60§.§<]§ = param1.§<]§;
         }
         if(param1.§<]§)
         {
            param1.§<]§.§60§ = param1.§60§;
         }
         if(param1 == this.§]I§)
         {
            this.§]I§ = param1.§60§;
         }
         --this.§ !]§;
      }
      
      public function §[Q§(param1:Boolean) : void
      {
         §8!^§ = param1;
      }
      
      public function §6b§(param1:Boolean) : void
      {
         §>!+§ = param1;
      }
      
      public function §1]§() : int
      {
         return this.§[!=§;
      }
      
      public function §!-§() : int
      {
         return this.§-X§;
      }
      
      public function §<W§() : int
      {
         return this.§6e§;
      }
      
      public function §4!5§(param1:b2Vec2) : void
      {
         this.§1!!§ = param1;
      }
      
      public function §&x§() : b2Vec2
      {
         return this.§1!!§;
      }
      
      public function §%"§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function § 3§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§;>§ & §#!O§)
         {
            this.§5E§.§^>§();
            this.§;>§ &= ~§#!O§;
         }
         this.§;>§ |= §?j§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§=S§ = param1;
         _loc4_.§#I§ = param2;
         _loc4_.§2E§ = param3;
         if(param1 > 0)
         {
            _loc4_.§9C§ = 1 / param1;
         }
         else
         {
            _loc4_.§9C§ = 0;
         }
         _loc4_.§0O§ = this.§1!V§ * param1;
         _loc4_.§'K§ = §8!^§;
         this.§5E§.§&p§();
         if(_loc4_.§=S§ > 0)
         {
            this.§%!?§(_loc4_);
         }
         if(§>!+§ && _loc4_.§=S§ > 0)
         {
            this.§%x§(_loc4_);
         }
         if(_loc4_.§=S§ > 0)
         {
            this.§1!V§ = _loc4_.§9C§;
         }
         this.§;>§ &= ~§?j§;
      }
      
      public function §@u§() : void
      {
         var _loc1_:b2Body = this.§2I§;
         while(_loc1_)
         {
            _loc1_.§6U§.§&N§();
            _loc1_.§#o§ = 0;
            _loc1_ = _loc1_.§60§;
         }
      }
      
      public function §6y§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§"!2§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§`!;§ == null)
         {
            return;
         }
         this.§`!;§.§[m§.graphics.clear();
         var _loc1_:uint = this.§`!;§.§6!-§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§!!1§)
         {
            _loc3_ = this.§2I§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§ "§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§^!Q§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§^[§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§@i§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§^[§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§@i§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§^[§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§^[§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§^[§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§60§;
               }
               _loc3_ = _loc3_.§60§;
            }
         }
         if(_loc1_ & b2DebugDraw.§,!B§)
         {
            _loc6_ = this.§+G§;
            while(_loc6_)
            {
               this.§?b§(_loc6_);
               _loc6_ = _loc6_.§60§;
            }
         }
         if(_loc1_ & b2DebugDraw.§<§)
         {
            _loc16_ = this.§]I§;
            while(_loc16_)
            {
               _loc16_.§=Q§(this.§`!;§);
               _loc16_ = _loc16_.§60§;
            }
         }
         if(_loc1_ & b2DebugDraw.§@<§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§5E§.§"!^§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§6!?§();
               _loc19_ = _loc17_.§4v§();
               _loc20_ = _loc18_.§!,§().§<!L§();
               _loc21_ = _loc19_.§!,§().§<!L§();
               this.§`!;§.§5_§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§25§();
            }
         }
         if(_loc1_ & b2DebugDraw.§ !!§)
         {
            _loc7_ = this.§5E§.§"G§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§2I§;
            while(_loc3_)
            {
               if(_loc3_.§^!Q§() != false)
               {
                  _loc4_ = _loc3_.§ "§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§%+§(_loc4_.§>8§);
                     _loc14_[0].Set(_loc22_.§]!@§.x,_loc22_.§]!@§.y);
                     _loc14_[1].Set(_loc22_.§=H§.x,_loc22_.§]!@§.y);
                     _loc14_[2].Set(_loc22_.§=H§.x,_loc22_.§=H§.y);
                     _loc14_[3].Set(_loc22_.§]!@§.x,_loc22_.§=H§.y);
                     this.§`!;§.§,!6§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§25§();
                  }
               }
               _loc3_ = _loc3_.§25§();
            }
         }
         if(_loc1_ & b2DebugDraw.§5$§)
         {
            _loc3_ = this.§2I§;
            while(_loc3_)
            {
               (_loc11_ = §9E§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§@!_§();
               this.§`!;§.§`!%§(_loc11_);
               _loc3_ = _loc3_.§60§;
            }
         }
      }
      
      public function §8&§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§"!2§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§5E§.§"G§;
         broadPhase.§8!]§(WorldQueryWrapper,aabb);
      }
      
      public function §`!?§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§"!2§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§@!Z§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§@#§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§@!J§();
         }
         broadPhase = this.§5E§.§"G§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§8!]§(WorldQueryWrapper,aabb);
      }
      
      public function §;y§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§"!2§ = null;
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
         broadPhase = this.§5E§.§"G§;
         var aabb:b2AABB = new b2AABB();
         aabb.§]!@§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§=H§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§8!]§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§"!2§ = null;
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
            return param1.§5!%§;
         };
         broadPhase = this.§5E§.§"G§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function § 1§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §4!8§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §6!E§() : b2Body
      {
         return this.§2I§;
      }
      
      public function §7F§() : b2Joint
      {
         return this.§+G§;
      }
      
      public function §4!U§() : b2Contact
      {
         return this.§"!^§;
      }
      
      public function §&!J§() : Boolean
      {
         return (this.§;>§ & §?j§) > 0;
      }
      
      b2internal function §%!?§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§]I§;
         while(_loc3_)
         {
            _loc3_.§ 3§(param1);
            _loc3_ = _loc3_.§60§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§0K§).§+!R§(this.§[!=§,this.§6e§,this.§-X§,null,this.§5E§.§6]§,this.§6M§);
         _loc2_ = this.§2I§;
         while(_loc2_)
         {
            _loc2_.§;>§ &= ~b2Body.§0!2§;
            _loc2_ = _loc2_.§60§;
         }
         var _loc5_:b2Contact = this.§"!^§;
         while(_loc5_)
         {
            _loc5_.§;>§ &= ~b2Contact.§0!2§;
            _loc5_ = _loc5_.§60§;
         }
         var _loc6_:b2Joint = this.§+G§;
         while(_loc6_)
         {
            _loc6_.§4Y§ = false;
            _loc6_ = _loc6_.§60§;
         }
         var _loc7_:int = this.§[!=§;
         var _loc8_:Vector.<b2Body> = this.§1h§;
         var _loc9_:b2Body = this.§2I§;
         while(_loc9_)
         {
            if(!(_loc9_.§;>§ & b2Body.§0!2§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§^!Q§() == false))
               {
                  if(_loc9_.§@i§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§9'§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§;>§ |= b2Body.§0!2§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§1!,§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§@i§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§"!^§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§1!=§.§;>§ & b2Contact.§0!2§))
                              {
                                 if(!(_loc13_.§1!=§.§3!S§() == true || _loc13_.§1!=§.§2u§() == false || _loc13_.§1!=§.§>w§() == false))
                                 {
                                    _loc4_.§6g§(_loc13_.§1!=§);
                                    _loc13_.§1!=§.§;>§ |= b2Contact.§0!2§;
                                    if(!((_loc12_ = _loc13_.§]!7§).§;>§ & b2Body.§0!2§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§;>§ |= b2Body.§0!2§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§"!+§;
                           }
                           _loc14_ = _loc2_.§+G§;
                           while(_loc14_)
                           {
                              if(_loc14_.§12§.§4Y§ != true)
                              {
                                 if((_loc12_ = _loc14_.§]!7§).§^!Q§() != false)
                                 {
                                    _loc4_.§%5§(_loc14_.§12§);
                                    _loc14_.§12§.§4Y§ = true;
                                    if(!(_loc12_.§;>§ & b2Body.§0!2§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§;>§ |= b2Body.§0!2§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§"!+§;
                           }
                        }
                     }
                     _loc4_.§%!?§(param1,this.§1!!§,this.§+I§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§[!=§)
                     {
                        _loc2_ = _loc4_.§!T§[_loc11_];
                        if(_loc2_.§@i§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§;>§ &= ~b2Body.§0!2§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§60§;
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
         _loc2_ = this.§2I§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§^!Q§() == false))
            {
               if(_loc2_.§@i§() != b2Body.b2_staticBody)
               {
                  _loc2_.§&l§();
               }
            }
            _loc2_ = _loc2_.§60§;
         }
         this.§5E§.§^>§();
      }
      
      b2internal function §%x§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§0K§).§+!R§(this.§[!=§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§5E§.§6]§,this.§6M§);
         var _loc10_:Vector.<b2Body> = §7S§;
         _loc2_ = this.§2I§;
         while(_loc2_)
         {
            _loc2_.§;>§ &= ~b2Body.§0!2§;
            _loc2_.m_sweep.§ !#§ = 0;
            _loc2_ = _loc2_.§60§;
         }
         _loc11_ = this.§"!^§;
         while(_loc11_)
         {
            _loc11_.§;>§ &= ~(b2Contact.§7?§ | b2Contact.§0!2§);
            _loc11_ = _loc11_.§60§;
         }
         _loc8_ = this.§+G§;
         while(_loc8_)
         {
            _loc8_.§4Y§ = false;
            _loc8_ = _loc8_.§60§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§"!^§;
            while(_loc11_)
            {
               if(!(_loc11_.§3!S§() == true || _loc11_.§2u§() == false || _loc11_.§,!G§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§;>§ & b2Contact.§7?§)
                  {
                     _loc19_ = _loc11_.§?!R§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§-"§;
                     _loc4_ = _loc11_.§@8§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§@i§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§@i§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr612:
                        _loc11_ = _loc11_.§60§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§ !#§;
                     if(_loc5_.m_sweep.§ !#§ < _loc6_.m_sweep.§ !#§)
                     {
                        _loc20_ = _loc6_.m_sweep.§ !#§;
                        _loc5_.m_sweep.§0!'§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§ !#§ < _loc5_.m_sweep.§ !#§)
                     {
                        _loc20_ = _loc5_.m_sweep.§ !#§;
                        _loc6_.m_sweep.§0!'§(_loc20_);
                     }
                     _loc19_ = _loc11_.§"-§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§?!R§ = _loc19_;
                     _loc11_.§;>§ |= b2Contact.§7?§;
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
            _loc3_ = _loc12_.§-"§;
            _loc4_ = _loc12_.§@8§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §7]§.Set(_loc5_.m_sweep);
            §?!9§.Set(_loc6_.m_sweep);
            _loc5_.§0!'§(_loc13_);
            _loc6_.§0!'§(_loc13_);
            _loc12_.§6!O§(this.§5E§.§6]§);
            _loc12_.§;>§ &= ~b2Contact.§7?§;
            if(_loc12_.§3!S§() == true || _loc12_.§2u§() == false)
            {
               _loc5_.m_sweep.Set(§7]§);
               _loc6_.m_sweep.Set(§?!9§);
               _loc5_.§'!N§();
               _loc6_.§'!N§();
            }
            else if(_loc12_.§>w§() != false)
            {
               if((_loc14_ = _loc5_).§@i§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§9'§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§;>§ |= b2Body.§0!2§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§1!,§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§@i§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§"!^§;
                     while(_loc7_)
                     {
                        if(_loc9_.§6e§ == _loc9_.§%?§)
                        {
                           break;
                        }
                        if(!(_loc7_.§1!=§.§;>§ & b2Contact.§0!2§))
                        {
                           if(!(_loc7_.§1!=§.§3!S§() == true || _loc7_.§1!=§.§2u§() == false || _loc7_.§1!=§.§>w§() == false))
                           {
                              _loc9_.§6g§(_loc7_.§1!=§);
                              _loc7_.§1!=§.§;>§ |= b2Contact.§0!2§;
                              if(!((_loc22_ = _loc7_.§]!7§).§;>§ & b2Body.§0!2§))
                              {
                                 if(_loc22_.§@i§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§0!'§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§;>§ |= b2Body.§0!2§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§"!+§;
                     }
                     _loc21_ = _loc2_.§+G§;
                     while(_loc21_)
                     {
                        if(_loc9_.§-X§ != _loc9_.§<+§)
                        {
                           if(_loc21_.§12§.§4Y§ != true)
                           {
                              if((_loc22_ = _loc21_.§]!7§).§^!Q§() != false)
                              {
                                 _loc9_.§%5§(_loc21_.§12§);
                                 _loc21_.§12§.§4Y§ = true;
                                 if(!(_loc22_.§;>§ & b2Body.§0!2§))
                                 {
                                    if(_loc22_.§@i§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§0!'§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§;>§ |= b2Body.§0!2§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§"!+§;
                     }
                  }
               }
               (_loc17_ = §;6§).§'K§ = false;
               _loc17_.§=S§ = (1 - _loc13_) * param1.§=S§;
               _loc17_.§9C§ = 1 / _loc17_.§=S§;
               _loc17_.§0O§ = 0;
               _loc17_.§#I§ = param1.§#I§;
               _loc17_.§2E§ = param1.§2E§;
               _loc9_.§%x§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§[!=§)
               {
                  _loc2_ = _loc9_.§!T§[_loc18_];
                  _loc2_.§;>§ &= ~b2Body.§0!2§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§@i§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§&l§();
                        _loc7_ = _loc2_.§"!^§;
                        while(_loc7_)
                        {
                           _loc7_.§1!=§.§;>§ &= ~b2Contact.§7?§;
                           _loc7_ = _loc7_.§"!+§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§6e§)
               {
                  _loc11_ = _loc9_.§&$§[_loc18_];
                  _loc11_.§;>§ &= ~(b2Contact.§7?§ | b2Contact.§0!2§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§-X§)
               {
                  (_loc8_ = _loc9_.§2!`§[_loc18_]).§4Y§ = false;
                  _loc18_++;
               }
               this.§5E§.§^>§();
            }
         }
      }
      
      b2internal function §?b§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§+;§();
         var _loc3_:b2Body = param1.§,A§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §#L§;
         switch(param1.§&D§)
         {
            case b2Joint.§%!R§:
               this.§`!;§.§5_§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§;q§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§>!M§();
               _loc13_ = _loc11_.§^R§();
               this.§`!;§.§5_§(_loc12_,_loc8_,_loc10_);
               this.§`!;§.§5_§(_loc13_,_loc9_,_loc10_);
               this.§`!;§.§5_§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§4R§:
               this.§`!;§.§5_§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§`!;§.§5_§(_loc6_,_loc8_,_loc10_);
               }
               this.§`!;§.§5_§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§`!;§.§5_§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §^[§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§&D§)
         {
            case b2Shape.§@B§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§8v§(param2,_loc4_.§0k§);
               _loc6_ = _loc4_.each;
               _loc7_ = param2.R.col1;
               this.§`!;§.§%N§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§0D§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§>g§();
               _loc11_ = _loc9_.§&Y§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§8v§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§`!;§.§&q§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§]!]§:
               _loc13_ = param1 as b2EdgeShape;
               this.§`!;§.§5_§(b2Math.§8v§(param2,_loc13_.GetVertex1()),b2Math.§8v§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

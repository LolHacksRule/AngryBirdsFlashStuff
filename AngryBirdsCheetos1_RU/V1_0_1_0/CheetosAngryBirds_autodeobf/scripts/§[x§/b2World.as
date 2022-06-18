package §[x§
{
   import §#b§.*;
   import §%!B§.*;
   import §&!B§.*;
   import §,!8§.*;
   import §43§.*;
   import §8!O§.b2Controller;
   import §8!O§.b2ControllerEdge;
   import §^<§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §?!4§:b2Transform = new b2Transform();
      
      private static var §8!<§:b2Sweep = new b2Sweep();
      
      private static var §-!U§:b2Sweep = new b2Sweep();
      
      private static var §-c§:b2TimeStep = new b2TimeStep();
      
      private static var §&>§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §]A§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §!j§:Boolean;
      
      private static var §,J§:Boolean;
      
      public static const §`!5§:int = 1;
      
      public static const §>!=§:int = 2;
       
      
      private var §[v§:Vector.<b2Body>;
      
      b2internal var §`"§:int;
      
      b2internal var §1!Z§:b2ContactManager;
      
      private var §5L§:b2ContactSolver;
      
      private var §7!+§:b2Island;
      
      b2internal var §"v§:b2Body;
      
      private var §6!Y§:b2Joint;
      
      b2internal var §5l§:b2Contact;
      
      private var §]t§:int;
      
      b2internal var §[!W§:int;
      
      private var §3!7§:int;
      
      private var §]+§:b2Controller;
      
      private var §18§:int;
      
      private var §=0§:b2Vec2;
      
      private var §3p§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §2!E§:b2DestructionListener;
      
      private var §@#§:b2DebugDraw;
      
      private var §5;§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§[v§ = new Vector.<b2Body>();
         this.§1!Z§ = new b2ContactManager();
         this.§5L§ = new b2ContactSolver();
         this.§7!+§ = new b2Island();
         super();
         this.§2!E§ = null;
         this.§@#§ = null;
         this.§"v§ = null;
         this.§5l§ = null;
         this.§6!Y§ = null;
         this.§]+§ = null;
         this.§]t§ = 0;
         this.§[!W§ = 0;
         this.§3!7§ = 0;
         this.§18§ = 0;
         §!j§ = true;
         §,J§ = true;
         this.§3p§ = param2;
         this.§=0§ = param1;
         this.§5;§ = 0;
         this.§1!Z§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§-y§(_loc3_);
      }
      
      public function §?!<§(param1:b2DestructionListener) : void
      {
         this.§2!E§ = param1;
      }
      
      public function §%!N§(param1:b2ContactFilter) : void
      {
         this.§1!Z§.§`!;§ = param1;
      }
      
      public function §%! §(param1:b2ContactListener) : void
      {
         this.§1!Z§.§,!'§ = param1;
      }
      
      public function §--§(param1:b2DebugDraw) : void
      {
         this.§@#§ = param1;
      }
      
      public function §0c§(param1:§-!9§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§-!9§ = this.§1!Z§.§@W§;
         this.§1!Z§.§@W§ = param1;
         var _loc3_:b2Body = this.§"v§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§1p§;
            while(_loc4_)
            {
               _loc4_.§[!Q§ = param1.§0!^§(_loc2_.§<!T§(_loc4_.§[!Q§),_loc4_);
               _loc4_ = _loc4_.§83§;
            }
            _loc3_ = _loc3_.§83§;
         }
      }
      
      public function §9u§() : void
      {
         this.§1!Z§.§@W§.§9u§();
      }
      
      public function §7!^§() : int
      {
         return this.§1!Z§.§@W§.§7!^§();
      }
      
      public function §-y§(param1:b2BodyDef) : b2Body
      {
         if(this.§1!T§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§]h§ = null;
         _loc2_.§83§ = this.§"v§;
         if(this.§"v§)
         {
            this.§"v§.§]h§ = _loc2_;
         }
         this.§"v§ = _loc2_;
         ++this.§]t§;
         return _loc2_;
      }
      
      public function §5P§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§1!T§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§6!Y§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§;! §;
            if(this.§2!E§)
            {
               this.§2!E§.§6#§(_loc6_.§<;§);
            }
            this.§;!#§(_loc6_.§<;§);
         }
         var _loc3_:b2ControllerEdge = param1.§]+§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§ each§;
            _loc7_.§,z§.§case§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§5l§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§;! §;
            this.§1!Z§.§58§(_loc8_.§#0§);
         }
         param1.§5l§ = null;
         var _loc5_:b2Fixture = param1.§1p§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§83§;
            if(this.§2!E§)
            {
               this.§2!E§.§@!J§(_loc9_);
            }
            _loc9_.§@!@§(this.§1!Z§.§@W§);
            _loc9_.§58§();
         }
         param1.§1p§ = null;
         param1.§!"§ = 0;
         if(param1.§]h§)
         {
            param1.§]h§.§83§ = param1.§83§;
         }
         if(param1.§83§)
         {
            param1.§83§.§]h§ = param1.§]h§;
         }
         if(param1 == this.§"v§)
         {
            this.§"v§ = param1.§83§;
         }
         --this.§]t§;
      }
      
      public function §<!L§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§[?§(param1,null);
         _loc2_.§]h§ = null;
         _loc2_.§83§ = this.§6!Y§;
         if(this.§6!Y§)
         {
            this.§6!Y§.§]h§ = _loc2_;
         }
         this.§6!Y§ = _loc2_;
         ++this.§3!7§;
         _loc2_.§=h§.§<;§ = _loc2_;
         _loc2_.§=h§.§]!P§ = _loc2_.§?!S§;
         _loc2_.§=h§.§`!,§ = null;
         _loc2_.§=h§.§;! § = _loc2_.§%!F§.§6!Y§;
         if(_loc2_.§%!F§.§6!Y§)
         {
            _loc2_.§%!F§.§6!Y§.§`!,§ = _loc2_.§=h§;
         }
         _loc2_.§%!F§.§6!Y§ = _loc2_.§=h§;
         _loc2_.§7!4§.§<;§ = _loc2_;
         _loc2_.§7!4§.§]!P§ = _loc2_.§%!F§;
         _loc2_.§7!4§.§`!,§ = null;
         _loc2_.§7!4§.§;! § = _loc2_.§?!S§.§6!Y§;
         if(_loc2_.§?!S§.§6!Y§)
         {
            _loc2_.§?!S§.§6!Y§.§`!,§ = _loc2_.§7!4§;
         }
         _loc2_.§?!S§.§6!Y§ = _loc2_.§7!4§;
         var _loc3_:b2Body = param1.§^!<§;
         var _loc4_:b2Body = param1.§!E§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§-o§();
            while(_loc5_)
            {
               if(_loc5_.§]!P§ == _loc3_)
               {
                  _loc5_.§#0§.§!!3§();
               }
               _loc5_ = _loc5_.§;! §;
            }
         }
         return _loc2_;
      }
      
      public function §;!#§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§6'§;
         if(param1.§]h§)
         {
            param1.§]h§.§83§ = param1.§83§;
         }
         if(param1.§83§)
         {
            param1.§83§.§]h§ = param1.§]h§;
         }
         if(param1 == this.§6!Y§)
         {
            this.§6!Y§ = param1.§83§;
         }
         var _loc3_:b2Body = param1.§%!F§;
         var _loc4_:b2Body = param1.§?!S§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§=h§.§`!,§)
         {
            param1.§=h§.§`!,§.§;! § = param1.§=h§.§;! §;
         }
         if(param1.§=h§.§;! §)
         {
            param1.§=h§.§;! §.§`!,§ = param1.§=h§.§`!,§;
         }
         if(param1.§=h§ == _loc3_.§6!Y§)
         {
            _loc3_.§6!Y§ = param1.§=h§.§;! §;
         }
         param1.§=h§.§`!,§ = null;
         param1.§=h§.§;! § = null;
         if(param1.§7!4§.§`!,§)
         {
            param1.§7!4§.§`!,§.§;! § = param1.§7!4§.§;! §;
         }
         if(param1.§7!4§.§;! §)
         {
            param1.§7!4§.§;! §.§`!,§ = param1.§7!4§.§`!,§;
         }
         if(param1.§7!4§ == _loc4_.§6!Y§)
         {
            _loc4_.§6!Y§ = param1.§7!4§.§;! §;
         }
         param1.§7!4§.§`!,§ = null;
         param1.§7!4§.§;! § = null;
         b2Joint.§58§(param1,null);
         --this.§3!7§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§-o§();
            while(_loc5_)
            {
               if(_loc5_.§]!P§ == _loc3_)
               {
                  _loc5_.§#0§.§!!3§();
               }
               _loc5_ = _loc5_.§;! §;
            }
         }
      }
      
      public function §"G§(param1:b2Controller) : b2Controller
      {
         param1.§83§ = this.§]+§;
         param1.§]h§ = null;
         this.§]+§ = param1;
         param1.m_world = this;
         ++this.§18§;
         return param1;
      }
      
      public function §&!J§(param1:b2Controller) : void
      {
         if(param1.§]h§)
         {
            param1.§]h§.§83§ = param1.§83§;
         }
         if(param1.§83§)
         {
            param1.§83§.§]h§ = param1.§]h§;
         }
         if(this.§]+§ == param1)
         {
            this.§]+§ = param1.§83§;
         }
         --this.§18§;
      }
      
      public function §@!"§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§83§ = this.§]+§;
         param1.§]h§ = null;
         if(this.§]+§)
         {
            this.§]+§.§]h§ = param1;
         }
         this.§]+§ = param1;
         ++this.§18§;
         param1.m_world = this;
         return param1;
      }
      
      public function §8!+§(param1:b2Controller) : void
      {
         param1.§8!a§();
         if(param1.§83§)
         {
            param1.§83§.§]h§ = param1.§]h§;
         }
         if(param1.§]h§)
         {
            param1.§]h§.§83§ = param1.§83§;
         }
         if(param1 == this.§]+§)
         {
            this.§]+§ = param1.§83§;
         }
         --this.§18§;
      }
      
      public function §&b§(param1:Boolean) : void
      {
         §!j§ = param1;
      }
      
      public function §@!A§(param1:Boolean) : void
      {
         §,J§ = param1;
      }
      
      public function §]m§() : int
      {
         return this.§]t§;
      }
      
      public function §]!B§() : int
      {
         return this.§3!7§;
      }
      
      public function §9;§() : int
      {
         return this.§[!W§;
      }
      
      public function §8B§(param1:b2Vec2) : void
      {
         this.§=0§ = param1;
      }
      
      public function §7[§() : b2Vec2
      {
         return this.§=0§;
      }
      
      public function §;B§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §9w§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§`"§ & §`!5§)
         {
            this.§1!Z§.§9W§();
            this.§`"§ &= ~§`!5§;
         }
         this.§`"§ |= §>!=§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§>!!§ = param1;
         _loc4_.§4Q§ = param2;
         _loc4_.§9!&§ = param3;
         if(param1 > 0)
         {
            _loc4_.§^!T§ = 1 / param1;
         }
         else
         {
            _loc4_.§^!T§ = 0;
         }
         _loc4_.§4!G§ = this.§5;§ * param1;
         _loc4_.§3!-§ = §!j§;
         this.§1!Z§.§^a§();
         if(_loc4_.§>!!§ > 0)
         {
            this.§>M§(_loc4_);
         }
         if(§,J§ && _loc4_.§>!!§ > 0)
         {
            this.§0=§(_loc4_);
         }
         if(_loc4_.§>!!§ > 0)
         {
            this.§5;§ = _loc4_.§^!T§;
         }
         this.§`"§ &= ~§>!=§;
      }
      
      public function §#!V§() : void
      {
         var _loc1_:b2Body = this.§"v§;
         while(_loc1_)
         {
            _loc1_.§0!!§.§,!3§();
            _loc1_.§,!P§ = 0;
            _loc1_ = _loc1_.§83§;
         }
      }
      
      public function §;8§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§-!9§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§@#§ == null)
         {
            return;
         }
         this.§@#§.§!T§.graphics.clear();
         var _loc1_:uint = this.§@#§.§&r§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§4!"§)
         {
            _loc3_ = this.§"v§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§=_§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§ "§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§@<§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§=!,§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§@<§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§=!,§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§@<§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§@<§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§@<§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§83§;
               }
               _loc3_ = _loc3_.§83§;
            }
         }
         if(_loc1_ & b2DebugDraw.§8%§)
         {
            _loc6_ = this.§6!Y§;
            while(_loc6_)
            {
               this.§`!§(_loc6_);
               _loc6_ = _loc6_.§83§;
            }
         }
         if(_loc1_ & b2DebugDraw.§9!U§)
         {
            _loc16_ = this.§]+§;
            while(_loc16_)
            {
               _loc16_.§6$§(this.§@#§);
               _loc16_ = _loc16_.§83§;
            }
         }
         if(_loc1_ & b2DebugDraw.§'T§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§1!Z§.§5l§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§31§();
               _loc19_ = _loc17_.§;!E§();
               _loc20_ = _loc18_.§0!4§().§,!=§();
               _loc21_ = _loc19_.§0!4§().§,!=§();
               this.§@#§.§0!&§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§&-§();
            }
         }
         if(_loc1_ & b2DebugDraw.§4!O§)
         {
            _loc7_ = this.§1!Z§.§@W§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§"v§;
            while(_loc3_)
            {
               if(_loc3_.§ "§() != false)
               {
                  _loc4_ = _loc3_.§=_§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§<!T§(_loc4_.§[!Q§);
                     _loc14_[0].Set(_loc22_.§1n§.x,_loc22_.§1n§.y);
                     _loc14_[1].Set(_loc22_.§>L§.x,_loc22_.§1n§.y);
                     _loc14_[2].Set(_loc22_.§>L§.x,_loc22_.§>L§.y);
                     _loc14_[3].Set(_loc22_.§1n§.x,_loc22_.§>L§.y);
                     this.§@#§.§,!T§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§&-§();
                  }
               }
               _loc3_ = _loc3_.§&-§();
            }
         }
         if(_loc1_ & b2DebugDraw.§?!?§)
         {
            _loc3_ = this.§"v§;
            while(_loc3_)
            {
               (_loc11_ = §?!4§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§9!H§();
               this.§@#§.§"!A§(_loc11_);
               _loc3_ = _loc3_.§83§;
            }
         }
      }
      
      public function §4f§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§-!9§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§1!Z§.§@W§;
         broadPhase.§6e§(WorldQueryWrapper,aabb);
      }
      
      public function §"P§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§-!9§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§8!X§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§4g§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§0!S§();
         }
         broadPhase = this.§1!Z§.§@W§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§6e§(WorldQueryWrapper,aabb);
      }
      
      public function §"!"§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§-!9§ = null;
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
         broadPhase = this.§1!Z§.§@W§;
         var aabb:b2AABB = new b2AABB();
         aabb.§1n§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§>L§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§6e§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§-!9§ = null;
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
            return param1.§]![§;
         };
         broadPhase = this.§1!Z§.§@W§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §'!&§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §`c§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §8!N§() : b2Body
      {
         return this.§"v§;
      }
      
      public function §?z§() : b2Joint
      {
         return this.§6!Y§;
      }
      
      public function §-o§() : b2Contact
      {
         return this.§5l§;
      }
      
      public function §1!T§() : Boolean
      {
         return (this.§`"§ & §>!=§) > 0;
      }
      
      b2internal function §>M§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§]+§;
         while(_loc3_)
         {
            _loc3_.§9w§(param1);
            _loc3_ = _loc3_.§83§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§7!+§).§8#§(this.§]t§,this.§[!W§,this.§3!7§,null,this.§1!Z§.§,!'§,this.§5L§);
         _loc2_ = this.§"v§;
         while(_loc2_)
         {
            _loc2_.§`"§ &= ~b2Body.§1!@§;
            _loc2_ = _loc2_.§83§;
         }
         var _loc5_:b2Contact = this.§5l§;
         while(_loc5_)
         {
            _loc5_.§`"§ &= ~b2Contact.§1!@§;
            _loc5_ = _loc5_.§83§;
         }
         var _loc6_:b2Joint = this.§6!Y§;
         while(_loc6_)
         {
            _loc6_.§#9§ = false;
            _loc6_ = _loc6_.§83§;
         }
         var _loc7_:int = this.§]t§;
         var _loc8_:Vector.<b2Body> = this.§[v§;
         var _loc9_:b2Body = this.§"v§;
         while(_loc9_)
         {
            if(!(_loc9_.§`"§ & b2Body.§1!@§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§ "§() == false))
               {
                  if(_loc9_.§=!,§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§8!a§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§`"§ |= b2Body.§1!@§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§!$§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§=!,§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§5l§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§#0§.§`"§ & b2Contact.§1!@§))
                              {
                                 if(!(_loc13_.§#0§.§9#§() == true || _loc13_.§#0§.§0K§() == false || _loc13_.§#0§.§%!E§() == false))
                                 {
                                    _loc4_.§ j§(_loc13_.§#0§);
                                    _loc13_.§#0§.§`"§ |= b2Contact.§1!@§;
                                    if(!((_loc12_ = _loc13_.§]!P§).§`"§ & b2Body.§1!@§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§`"§ |= b2Body.§1!@§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§;! §;
                           }
                           _loc14_ = _loc2_.§6!Y§;
                           while(_loc14_)
                           {
                              if(_loc14_.§<;§.§#9§ != true)
                              {
                                 if((_loc12_ = _loc14_.§]!P§).§ "§() != false)
                                 {
                                    _loc4_.§+t§(_loc14_.§<;§);
                                    _loc14_.§<;§.§#9§ = true;
                                    if(!(_loc12_.§`"§ & b2Body.§1!@§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§`"§ |= b2Body.§1!@§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§;! §;
                           }
                        }
                     }
                     _loc4_.§>M§(param1,this.§=0§,this.§3p§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§]t§)
                     {
                        _loc2_ = _loc4_.§]!A§[_loc11_];
                        if(_loc2_.§=!,§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§`"§ &= ~b2Body.§1!@§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§83§;
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
         _loc2_ = this.§"v§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§ "§() == false))
            {
               if(_loc2_.§=!,§() != b2Body.b2_staticBody)
               {
                  _loc2_.§5!_§();
               }
            }
            _loc2_ = _loc2_.§83§;
         }
         this.§1!Z§.§9W§();
      }
      
      b2internal function §0=§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§7!+§).§8#§(this.§]t§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§1!Z§.§,!'§,this.§5L§);
         var _loc10_:Vector.<b2Body> = §&>§;
         _loc2_ = this.§"v§;
         while(_loc2_)
         {
            _loc2_.§`"§ &= ~b2Body.§1!@§;
            _loc2_.m_sweep.§`!W§ = 0;
            _loc2_ = _loc2_.§83§;
         }
         _loc11_ = this.§5l§;
         while(_loc11_)
         {
            _loc11_.§`"§ &= ~(b2Contact.§+!§ | b2Contact.§1!@§);
            _loc11_ = _loc11_.§83§;
         }
         _loc8_ = this.§6!Y§;
         while(_loc8_)
         {
            _loc8_.§#9§ = false;
            _loc8_ = _loc8_.§83§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§5l§;
            while(_loc11_)
            {
               if(!(_loc11_.§9#§() == true || _loc11_.§0K§() == false || _loc11_.§2!%§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§`"§ & b2Contact.§+!§)
                  {
                     _loc19_ = _loc11_.§5h§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§1!I§;
                     _loc4_ = _loc11_.§1i§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§=!,§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§=!,§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr620:
                        _loc11_ = _loc11_.§83§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§`!W§;
                     if(_loc5_.m_sweep.§`!W§ < _loc6_.m_sweep.§`!W§)
                     {
                        _loc20_ = _loc6_.m_sweep.§`!W§;
                        _loc5_.m_sweep.§^X§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§`!W§ < _loc5_.m_sweep.§`!W§)
                     {
                        _loc20_ = _loc5_.m_sweep.§`!W§;
                        _loc6_.m_sweep.§^X§(_loc20_);
                     }
                     _loc19_ = _loc11_.§9T§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§5h§ = _loc19_;
                     _loc11_.§`"§ |= b2Contact.§+!§;
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
            _loc3_ = _loc12_.§1!I§;
            _loc4_ = _loc12_.§1i§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §8!<§.Set(_loc5_.m_sweep);
            §-!U§.Set(_loc6_.m_sweep);
            _loc5_.§^X§(_loc13_);
            _loc6_.§^X§(_loc13_);
            _loc12_.§6E§(this.§1!Z§.§,!'§);
            _loc12_.§`"§ &= ~b2Contact.§+!§;
            if(_loc12_.§9#§() == true || _loc12_.§0K§() == false)
            {
               _loc5_.m_sweep.Set(§8!<§);
               _loc6_.m_sweep.Set(§-!U§);
               _loc5_.§[B§();
               _loc6_.§[B§();
            }
            else if(_loc12_.§%!E§() != false)
            {
               if((_loc14_ = _loc5_).§=!,§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§8!a§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§`"§ |= b2Body.§1!@§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§!$§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§=!,§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§5l§;
                     while(_loc7_)
                     {
                        if(_loc9_.§[!W§ == _loc9_.§#!6§)
                        {
                           break;
                        }
                        if(!(_loc7_.§#0§.§`"§ & b2Contact.§1!@§))
                        {
                           if(!(_loc7_.§#0§.§9#§() == true || _loc7_.§#0§.§0K§() == false || _loc7_.§#0§.§%!E§() == false))
                           {
                              _loc9_.§ j§(_loc7_.§#0§);
                              _loc7_.§#0§.§`"§ |= b2Contact.§1!@§;
                              if(!((_loc22_ = _loc7_.§]!P§).§`"§ & b2Body.§1!@§))
                              {
                                 if(_loc22_.§=!,§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§^X§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§`"§ |= b2Body.§1!@§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§;! §;
                     }
                     _loc21_ = _loc2_.§6!Y§;
                     while(_loc21_)
                     {
                        if(_loc9_.§3!7§ != _loc9_.§+!S§)
                        {
                           if(_loc21_.§<;§.§#9§ != true)
                           {
                              if((_loc22_ = _loc21_.§]!P§).§ "§() != false)
                              {
                                 _loc9_.§+t§(_loc21_.§<;§);
                                 _loc21_.§<;§.§#9§ = true;
                                 if(!(_loc22_.§`"§ & b2Body.§1!@§))
                                 {
                                    if(_loc22_.§=!,§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§^X§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§`"§ |= b2Body.§1!@§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§;! §;
                     }
                  }
               }
               (_loc17_ = §-c§).§3!-§ = false;
               _loc17_.§>!!§ = (1 - _loc13_) * param1.§>!!§;
               _loc17_.§^!T§ = 1 / _loc17_.§>!!§;
               _loc17_.§4!G§ = 0;
               _loc17_.§4Q§ = param1.§4Q§;
               _loc17_.§9!&§ = param1.§9!&§;
               _loc9_.§0=§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§]t§)
               {
                  _loc2_ = _loc9_.§]!A§[_loc18_];
                  _loc2_.§`"§ &= ~b2Body.§1!@§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§=!,§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§5!_§();
                        _loc7_ = _loc2_.§5l§;
                        while(_loc7_)
                        {
                           _loc7_.§#0§.§`"§ &= ~b2Contact.§+!§;
                           _loc7_ = _loc7_.§;! §;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§[!W§)
               {
                  _loc11_ = _loc9_.§[!O§[_loc18_];
                  _loc11_.§`"§ &= ~(b2Contact.§+!§ | b2Contact.§1!@§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§3!7§)
               {
                  (_loc8_ = _loc9_.§'-§[_loc18_]).§#9§ = false;
                  _loc18_++;
               }
               this.§1!Z§.§9W§();
            }
         }
      }
      
      b2internal function §`!§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§37§();
         var _loc3_:b2Body = param1.§&!>§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §]A§;
         switch(param1.§@9§)
         {
            case b2Joint.§@S§:
               this.§@#§.§0!&§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§92§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§<'§();
               _loc13_ = _loc11_.§]!W§();
               this.§@#§.§0!&§(_loc12_,_loc8_,_loc10_);
               this.§@#§.§0!&§(_loc13_,_loc9_,_loc10_);
               this.§@#§.§0!&§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§+3§:
               this.§@#§.§0!&§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§@#§.§0!&§(_loc6_,_loc8_,_loc10_);
               }
               this.§@#§.§0!&§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§@#§.§0!&§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §@<§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§@9§)
         {
            case b2Shape.§,_§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§+Z§(param2,_loc4_.§!!Q§);
               _loc6_ = _loc4_.§!!`§;
               _loc7_ = param2.R.col1;
               this.§@#§.§"!P§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§2f§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§^U§();
               _loc11_ = _loc9_.§^%§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§+Z§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§@#§.§&V§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§ !&§:
               _loc13_ = param1 as b2EdgeShape;
               this.§@#§.§0!&§(b2Math.§+Z§(param2,_loc13_.GetVertex1()),b2Math.§+Z§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

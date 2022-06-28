package § D§
{
   import §!!t§.b2Controller;
   import §!!t§.b2ControllerEdge;
   import §&!-§.*;
   import §0!'§.*;
   import §7a§.*;
   import §8>§.*;
   import §;u§.*;
   import §[!N§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §5c§:b2Transform = new b2Transform();
      
      private static var §+!7§:b2Sweep = new b2Sweep();
      
      private static var §0!p§:b2Sweep = new b2Sweep();
      
      private static var §6&§:b2TimeStep = new b2TimeStep();
      
      private static var §8!s§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var § x§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §;O§:Boolean;
      
      private static var §6E§:Boolean;
      
      public static const §#!p§:int = 1;
      
      public static const §;>§:int = 2;
       
      
      private var §'!0§:Vector.<b2Body>;
      
      b2internal var § !<§:int;
      
      b2internal var §<!7§:b2ContactManager;
      
      private var §2!R§:b2ContactSolver;
      
      private var §#2§:b2Island;
      
      b2internal var §%H§:b2Body;
      
      private var §>w§:b2Joint;
      
      b2internal var §#!u§:b2Contact;
      
      private var §1!;§:int;
      
      b2internal var §#4§:int;
      
      private var §+!R§:int;
      
      private var §[U§:b2Controller;
      
      private var §7,§:int;
      
      private var §!R§:b2Vec2;
      
      private var §>_§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §5!E§:b2DestructionListener;
      
      private var §!!<§:b2DebugDraw;
      
      private var §6!g§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§'!0§ = new Vector.<b2Body>();
         this.§<!7§ = new b2ContactManager();
         this.§2!R§ = new b2ContactSolver();
         this.§#2§ = new b2Island();
         super();
         this.§5!E§ = null;
         this.§!!<§ = null;
         this.§%H§ = null;
         this.§#!u§ = null;
         this.§>w§ = null;
         this.§[U§ = null;
         this.§1!;§ = 0;
         this.§#4§ = 0;
         this.§+!R§ = 0;
         this.§7,§ = 0;
         §;O§ = true;
         §6E§ = true;
         this.§>_§ = param2;
         this.§!R§ = param1;
         this.§6!g§ = 0;
         this.§<!7§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§?!I§(_loc3_);
      }
      
      public function §-M§(param1:b2DestructionListener) : void
      {
         this.§5!E§ = param1;
      }
      
      public function §0!x§(param1:b2ContactFilter) : void
      {
         this.§<!7§.§0!A§ = param1;
      }
      
      public function §=!3§(param1:b2ContactListener) : void
      {
         this.§<!7§.§,!§ = param1;
      }
      
      public function § ! §(param1:b2DebugDraw) : void
      {
         this.§!!<§ = param1;
      }
      
      public function §6!L§(param1:§>D§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§>D§ = this.§<!7§.§0G§;
         this.§<!7§.§0G§ = param1;
         var _loc3_:b2Body = this.§%H§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§8!@§;
            while(_loc4_)
            {
               _loc4_.§"!X§ = param1.§2!9§(_loc2_.§<!q§(_loc4_.§"!X§),_loc4_);
               _loc4_ = _loc4_.§7n§;
            }
            _loc3_ = _loc3_.§7n§;
         }
      }
      
      public function §<!3§() : void
      {
         this.§<!7§.§0G§.§<!3§();
      }
      
      public function §"!F§() : int
      {
         return this.§<!7§.§0G§.§"!F§();
      }
      
      public function §?!I§(param1:b2BodyDef) : b2Body
      {
         if(this.§5!Y§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§4!7§ = null;
         _loc2_.§7n§ = this.§%H§;
         if(this.§%H§)
         {
            this.§%H§.§4!7§ = _loc2_;
         }
         this.§%H§ = _loc2_;
         ++this.§1!;§;
         return _loc2_;
      }
      
      public function §3!j§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§5!Y§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§>w§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§0e§;
            if(this.§5!E§)
            {
               this.§5!E§.§5!8§(_loc6_.§[!q§);
            }
            this.§+!O§(_loc6_.§[!q§);
         }
         var _loc3_:b2ControllerEdge = param1.§[U§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§;!V§;
            _loc7_.§=`§.§2o§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§#!u§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§0e§;
            this.§<!7§.§"L§(_loc8_.§58§);
         }
         param1.§#!u§ = null;
         var _loc5_:b2Fixture = param1.§8!@§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§7n§;
            if(this.§5!E§)
            {
               this.§5!E§.§,j§(_loc9_);
            }
            _loc9_.§"!=§(this.§<!7§.§0G§);
            _loc9_.§"L§();
         }
         param1.§8!@§ = null;
         param1.§+!y§ = 0;
         if(param1.§4!7§)
         {
            param1.§4!7§.§7n§ = param1.§7n§;
         }
         if(param1.§7n§)
         {
            param1.§7n§.§4!7§ = param1.§4!7§;
         }
         if(param1 == this.§%H§)
         {
            this.§%H§ = param1.§7n§;
         }
         --this.§1!;§;
      }
      
      public function §6!8§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§5=§(param1,null);
         _loc2_.§4!7§ = null;
         _loc2_.§7n§ = this.§>w§;
         if(this.§>w§)
         {
            this.§>w§.§4!7§ = _loc2_;
         }
         this.§>w§ = _loc2_;
         ++this.§+!R§;
         _loc2_.§4C§.§[!q§ = _loc2_;
         _loc2_.§4C§.§<!-§ = _loc2_.§7!<§;
         _loc2_.§4C§.§7!J§ = null;
         _loc2_.§4C§.§0e§ = _loc2_.§^^§.§>w§;
         if(_loc2_.§^^§.§>w§)
         {
            _loc2_.§^^§.§>w§.§7!J§ = _loc2_.§4C§;
         }
         _loc2_.§^^§.§>w§ = _loc2_.§4C§;
         _loc2_.§`!Z§.§[!q§ = _loc2_;
         _loc2_.§`!Z§.§<!-§ = _loc2_.§^^§;
         _loc2_.§`!Z§.§7!J§ = null;
         _loc2_.§`!Z§.§0e§ = _loc2_.§7!<§.§>w§;
         if(_loc2_.§7!<§.§>w§)
         {
            _loc2_.§7!<§.§>w§.§7!J§ = _loc2_.§`!Z§;
         }
         _loc2_.§7!<§.§>w§ = _loc2_.§`!Z§;
         var _loc3_:b2Body = param1.§-!O§;
         var _loc4_:b2Body = param1.§3!u§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§=!-§();
            while(_loc5_)
            {
               if(_loc5_.§<!-§ == _loc3_)
               {
                  _loc5_.§58§.§?d§();
               }
               _loc5_ = _loc5_.§0e§;
            }
         }
         return _loc2_;
      }
      
      public function §+!O§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§"!%§;
         if(param1.§4!7§)
         {
            param1.§4!7§.§7n§ = param1.§7n§;
         }
         if(param1.§7n§)
         {
            param1.§7n§.§4!7§ = param1.§4!7§;
         }
         if(param1 == this.§>w§)
         {
            this.§>w§ = param1.§7n§;
         }
         var _loc3_:b2Body = param1.§^^§;
         var _loc4_:b2Body = param1.§7!<§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§4C§.§7!J§)
         {
            param1.§4C§.§7!J§.§0e§ = param1.§4C§.§0e§;
         }
         if(param1.§4C§.§0e§)
         {
            param1.§4C§.§0e§.§7!J§ = param1.§4C§.§7!J§;
         }
         if(param1.§4C§ == _loc3_.§>w§)
         {
            _loc3_.§>w§ = param1.§4C§.§0e§;
         }
         param1.§4C§.§7!J§ = null;
         param1.§4C§.§0e§ = null;
         if(param1.§`!Z§.§7!J§)
         {
            param1.§`!Z§.§7!J§.§0e§ = param1.§`!Z§.§0e§;
         }
         if(param1.§`!Z§.§0e§)
         {
            param1.§`!Z§.§0e§.§7!J§ = param1.§`!Z§.§7!J§;
         }
         if(param1.§`!Z§ == _loc4_.§>w§)
         {
            _loc4_.§>w§ = param1.§`!Z§.§0e§;
         }
         param1.§`!Z§.§7!J§ = null;
         param1.§`!Z§.§0e§ = null;
         b2Joint.§"L§(param1,null);
         --this.§+!R§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§=!-§();
            while(_loc5_)
            {
               if(_loc5_.§<!-§ == _loc3_)
               {
                  _loc5_.§58§.§?d§();
               }
               _loc5_ = _loc5_.§0e§;
            }
         }
      }
      
      public function §>n§(param1:b2Controller) : b2Controller
      {
         param1.§7n§ = this.§[U§;
         param1.§4!7§ = null;
         this.§[U§ = param1;
         param1.m_world = this;
         ++this.§7,§;
         return param1;
      }
      
      public function §=W§(param1:b2Controller) : void
      {
         if(param1.§4!7§)
         {
            param1.§4!7§.§7n§ = param1.§7n§;
         }
         if(param1.§7n§)
         {
            param1.§7n§.§4!7§ = param1.§4!7§;
         }
         if(this.§[U§ == param1)
         {
            this.§[U§ = param1.§7n§;
         }
         --this.§7,§;
      }
      
      public function §1!#§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§7n§ = this.§[U§;
         param1.§4!7§ = null;
         if(this.§[U§)
         {
            this.§[U§.§4!7§ = param1;
         }
         this.§[U§ = param1;
         ++this.§7,§;
         param1.m_world = this;
         return param1;
      }
      
      public function §1h§(param1:b2Controller) : void
      {
         param1.§1!E§();
         if(param1.§7n§)
         {
            param1.§7n§.§4!7§ = param1.§4!7§;
         }
         if(param1.§4!7§)
         {
            param1.§4!7§.§7n§ = param1.§7n§;
         }
         if(param1 == this.§[U§)
         {
            this.§[U§ = param1.§7n§;
         }
         --this.§7,§;
      }
      
      public function §0J§(param1:Boolean) : void
      {
         §;O§ = param1;
      }
      
      public function §@u§(param1:Boolean) : void
      {
         §6E§ = param1;
      }
      
      public function §2!H§() : int
      {
         return this.§1!;§;
      }
      
      public function §2!v§() : int
      {
         return this.§+!R§;
      }
      
      public function §4!E§() : int
      {
         return this.§#4§;
      }
      
      public function §28§(param1:b2Vec2) : void
      {
         this.§!R§ = param1;
      }
      
      public function §`Q§() : b2Vec2
      {
         return this.§!R§;
      }
      
      public function §6!6§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §`!9§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§ !<§ & §#!p§)
         {
            this.§<!7§.§4!K§();
            this.§ !<§ &= ~§#!p§;
         }
         this.§ !<§ |= §;>§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§6c§ = param1;
         _loc4_.§@!Y§ = param2;
         _loc4_.§"!2§ = param3;
         if(param1 > 0)
         {
            _loc4_.§7i§ = 1 / param1;
         }
         else
         {
            _loc4_.§7i§ = 0;
         }
         _loc4_.§&t§ = this.§6!g§ * param1;
         _loc4_.§9!G§ = §;O§;
         this.§<!7§.§-0§();
         if(_loc4_.§6c§ > 0)
         {
            this.§[!T§(_loc4_);
         }
         if(§6E§ && _loc4_.§6c§ > 0)
         {
            this.§"0§(_loc4_);
         }
         if(_loc4_.§6c§ > 0)
         {
            this.§6!g§ = _loc4_.§7i§;
         }
         this.§ !<§ &= ~§;>§;
      }
      
      public function § v§() : void
      {
         var _loc1_:b2Body = this.§%H§;
         while(_loc1_)
         {
            _loc1_.§2!§.§%&§();
            _loc1_.§`!R§ = 0;
            _loc1_ = _loc1_.§7n§;
         }
      }
      
      public function §[W§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§>D§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§!!<§ == null)
         {
            return;
         }
         this.§!!<§.§?A§.graphics.clear();
         var _loc1_:uint = this.§!!<§.§-Q§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§[b§)
         {
            _loc3_ = this.§%H§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§=Y§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§ !5§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§^!9§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§0!@§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§^!9§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§0!@§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§^!9§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§^!9§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§^!9§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§7n§;
               }
               _loc3_ = _loc3_.§7n§;
            }
         }
         if(_loc1_ & b2DebugDraw.§"g§)
         {
            _loc6_ = this.§>w§;
            while(_loc6_)
            {
               this.§@!^§(_loc6_);
               _loc6_ = _loc6_.§7n§;
            }
         }
         if(_loc1_ & b2DebugDraw.§'§)
         {
            _loc16_ = this.§[U§;
            while(_loc16_)
            {
               _loc16_.§?4§(this.§!!<§);
               _loc16_ = _loc16_.§7n§;
            }
         }
         if(_loc1_ & b2DebugDraw.§;!#§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§<!7§.§#!u§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§5J§();
               _loc19_ = _loc17_.§@!X§();
               _loc20_ = _loc18_.§!A§().§,§();
               _loc21_ = _loc19_.§!A§().§,§();
               this.§!!<§.§1!D§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§2!g§();
            }
         }
         if(_loc1_ & b2DebugDraw.§ else§)
         {
            _loc7_ = this.§<!7§.§0G§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§%H§;
            while(_loc3_)
            {
               if(_loc3_.§ !5§() != false)
               {
                  _loc4_ = _loc3_.§=Y§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§<!q§(_loc4_.§"!X§);
                     _loc14_[0].Set(_loc22_.§]S§.x,_loc22_.§]S§.y);
                     _loc14_[1].Set(_loc22_.§-!o§.x,_loc22_.§]S§.y);
                     _loc14_[2].Set(_loc22_.§-!o§.x,_loc22_.§-!o§.y);
                     _loc14_[3].Set(_loc22_.§]S§.x,_loc22_.§-!o§.y);
                     this.§!!<§.§<!L§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§2!g§();
                  }
               }
               _loc3_ = _loc3_.§2!g§();
            }
         }
         if(_loc1_ & b2DebugDraw.§5x§)
         {
            _loc3_ = this.§%H§;
            while(_loc3_)
            {
               (_loc11_ = §5c§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§=,§();
               this.§!!<§.§&!2§(_loc11_);
               _loc3_ = _loc3_.§7n§;
            }
         }
      }
      
      public function §=h§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§>D§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§<!7§.§0G§;
         broadPhase.§&!]§(WorldQueryWrapper,aabb);
      }
      
      public function §7x§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§>D§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§'V§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§+!C§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§8x§();
         }
         broadPhase = this.§<!7§.§0G§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§&!]§(WorldQueryWrapper,aabb);
      }
      
      public function §02§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§>D§ = null;
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
         broadPhase = this.§<!7§.§0G§;
         var aabb:b2AABB = new b2AABB();
         aabb.§]S§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§-!o§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§&!]§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§>D§ = null;
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
            return param1.§%!I§;
         };
         broadPhase = this.§<!7§.§0G§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §2c§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §,f§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §'!H§() : b2Body
      {
         return this.§%H§;
      }
      
      public function §;!T§() : b2Joint
      {
         return this.§>w§;
      }
      
      public function §=!-§() : b2Contact
      {
         return this.§#!u§;
      }
      
      public function §5!Y§() : Boolean
      {
         return (this.§ !<§ & §;>§) > 0;
      }
      
      b2internal function §[!T§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§[U§;
         while(_loc3_)
         {
            _loc3_.§`!9§(param1);
            _loc3_ = _loc3_.§7n§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§#2§).§7R§(this.§1!;§,this.§#4§,this.§+!R§,null,this.§<!7§.§,!§,this.§2!R§);
         _loc2_ = this.§%H§;
         while(_loc2_)
         {
            _loc2_.§ !<§ &= ~b2Body.§]!i§;
            _loc2_ = _loc2_.§7n§;
         }
         var _loc5_:b2Contact = this.§#!u§;
         while(_loc5_)
         {
            _loc5_.§ !<§ &= ~b2Contact.§]!i§;
            _loc5_ = _loc5_.§7n§;
         }
         var _loc6_:b2Joint = this.§>w§;
         while(_loc6_)
         {
            _loc6_.§^-§ = false;
            _loc6_ = _loc6_.§7n§;
         }
         var _loc7_:int = this.§1!;§;
         var _loc8_:Vector.<b2Body> = this.§'!0§;
         var _loc9_:b2Body = this.§%H§;
         while(_loc9_)
         {
            if(!(_loc9_.§ !<§ & b2Body.§]!i§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§ !5§() == false))
               {
                  if(_loc9_.§0!@§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§1!E§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§ !<§ |= b2Body.§]!i§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§#H§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§0!@§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§#!u§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§58§.§ !<§ & b2Contact.§]!i§))
                              {
                                 if(!(_loc13_.§58§.§0?§() == true || _loc13_.§58§.§18§() == false || _loc13_.§58§.§8]§() == false))
                                 {
                                    _loc4_.§<'§(_loc13_.§58§);
                                    _loc13_.§58§.§ !<§ |= b2Contact.§]!i§;
                                    if(!((_loc12_ = _loc13_.§<!-§).§ !<§ & b2Body.§]!i§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§ !<§ |= b2Body.§]!i§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§0e§;
                           }
                           _loc14_ = _loc2_.§>w§;
                           while(_loc14_)
                           {
                              if(_loc14_.§[!q§.§^-§ != true)
                              {
                                 if((_loc12_ = _loc14_.§<!-§).§ !5§() != false)
                                 {
                                    _loc4_.§5[§(_loc14_.§[!q§);
                                    _loc14_.§[!q§.§^-§ = true;
                                    if(!(_loc12_.§ !<§ & b2Body.§]!i§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§ !<§ |= b2Body.§]!i§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§0e§;
                           }
                        }
                     }
                     _loc4_.§[!T§(param1,this.§!R§,this.§>_§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§1!;§)
                     {
                        _loc2_ = _loc4_.§=!j§[_loc11_];
                        if(_loc2_.§0!@§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§ !<§ &= ~b2Body.§]!i§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§7n§;
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
         _loc2_ = this.§%H§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§ !5§() == false))
            {
               if(_loc2_.§0!@§() != b2Body.b2_staticBody)
               {
                  _loc2_.§;!L§();
               }
            }
            _loc2_ = _loc2_.§7n§;
         }
         this.§<!7§.§4!K§();
      }
      
      b2internal function §"0§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§#2§).§7R§(this.§1!;§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§<!7§.§,!§,this.§2!R§);
         var _loc10_:Vector.<b2Body> = §8!s§;
         _loc2_ = this.§%H§;
         while(_loc2_)
         {
            _loc2_.§ !<§ &= ~b2Body.§]!i§;
            _loc2_.m_sweep.§0p§ = 0;
            _loc2_ = _loc2_.§7n§;
         }
         _loc11_ = this.§#!u§;
         while(_loc11_)
         {
            _loc11_.§ !<§ &= ~(b2Contact.§"+§ | b2Contact.§]!i§);
            _loc11_ = _loc11_.§7n§;
         }
         _loc8_ = this.§>w§;
         while(_loc8_)
         {
            _loc8_.§^-§ = false;
            _loc8_ = _loc8_.§7n§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§#!u§;
            while(_loc11_)
            {
               if(!(_loc11_.§0?§() == true || _loc11_.§18§() == false || _loc11_.§?y§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§ !<§ & b2Contact.§"+§)
                  {
                     _loc19_ = _loc11_.§7!5§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§48§;
                     _loc4_ = _loc11_.§[=§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§0!@§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§0!@§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr620:
                        _loc11_ = _loc11_.§7n§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§0p§;
                     if(_loc5_.m_sweep.§0p§ < _loc6_.m_sweep.§0p§)
                     {
                        _loc20_ = _loc6_.m_sweep.§0p§;
                        _loc5_.m_sweep.§]b§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§0p§ < _loc5_.m_sweep.§0p§)
                     {
                        _loc20_ = _loc5_.m_sweep.§0p§;
                        _loc6_.m_sweep.§]b§(_loc20_);
                     }
                     _loc19_ = _loc11_.§2!1§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§7!5§ = _loc19_;
                     _loc11_.§ !<§ |= b2Contact.§"+§;
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
            _loc3_ = _loc12_.§48§;
            _loc4_ = _loc12_.§[=§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §+!7§.Set(_loc5_.m_sweep);
            §0!p§.Set(_loc6_.m_sweep);
            _loc5_.§]b§(_loc13_);
            _loc6_.§]b§(_loc13_);
            _loc12_.§5>§(this.§<!7§.§,!§);
            _loc12_.§ !<§ &= ~b2Contact.§"+§;
            if(_loc12_.§0?§() == true || _loc12_.§18§() == false)
            {
               _loc5_.m_sweep.Set(§+!7§);
               _loc6_.m_sweep.Set(§0!p§);
               _loc5_.§ n§();
               _loc6_.§ n§();
            }
            else if(_loc12_.§8]§() != false)
            {
               if((_loc14_ = _loc5_).§0!@§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§1!E§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§ !<§ |= b2Body.§]!i§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§#H§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§0!@§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§#!u§;
                     while(_loc7_)
                     {
                        if(_loc9_.§#4§ == _loc9_.§,!r§)
                        {
                           break;
                        }
                        if(!(_loc7_.§58§.§ !<§ & b2Contact.§]!i§))
                        {
                           if(!(_loc7_.§58§.§0?§() == true || _loc7_.§58§.§18§() == false || _loc7_.§58§.§8]§() == false))
                           {
                              _loc9_.§<'§(_loc7_.§58§);
                              _loc7_.§58§.§ !<§ |= b2Contact.§]!i§;
                              if(!((_loc22_ = _loc7_.§<!-§).§ !<§ & b2Body.§]!i§))
                              {
                                 if(_loc22_.§0!@§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§]b§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§ !<§ |= b2Body.§]!i§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§0e§;
                     }
                     _loc21_ = _loc2_.§>w§;
                     while(_loc21_)
                     {
                        if(_loc9_.§+!R§ != _loc9_.§8W§)
                        {
                           if(_loc21_.§[!q§.§^-§ != true)
                           {
                              if((_loc22_ = _loc21_.§<!-§).§ !5§() != false)
                              {
                                 _loc9_.§5[§(_loc21_.§[!q§);
                                 _loc21_.§[!q§.§^-§ = true;
                                 if(!(_loc22_.§ !<§ & b2Body.§]!i§))
                                 {
                                    if(_loc22_.§0!@§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§]b§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§ !<§ |= b2Body.§]!i§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§0e§;
                     }
                  }
               }
               (_loc17_ = §6&§).§9!G§ = false;
               _loc17_.§6c§ = (1 - _loc13_) * param1.§6c§;
               _loc17_.§7i§ = 1 / _loc17_.§6c§;
               _loc17_.§&t§ = 0;
               _loc17_.§@!Y§ = param1.§@!Y§;
               _loc17_.§"!2§ = param1.§"!2§;
               _loc9_.§"0§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§1!;§)
               {
                  _loc2_ = _loc9_.§=!j§[_loc18_];
                  _loc2_.§ !<§ &= ~b2Body.§]!i§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§0!@§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§;!L§();
                        _loc7_ = _loc2_.§#!u§;
                        while(_loc7_)
                        {
                           _loc7_.§58§.§ !<§ &= ~b2Contact.§"+§;
                           _loc7_ = _loc7_.§0e§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§#4§)
               {
                  _loc11_ = _loc9_.§>I§[_loc18_];
                  _loc11_.§ !<§ &= ~(b2Contact.§"+§ | b2Contact.§]!i§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§+!R§)
               {
                  (_loc8_ = _loc9_.§<!m§[_loc18_]).§^-§ = false;
                  _loc18_++;
               }
               this.§<!7§.§4!K§();
            }
         }
      }
      
      b2internal function §@!^§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§3!!§();
         var _loc3_:b2Body = param1.§^F§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = § x§;
         switch(param1.§"!1§)
         {
            case b2Joint.§-!u§:
               this.§!!<§.§1!D§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§<!`§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§#`§();
               _loc13_ = _loc11_.§6y§();
               this.§!!<§.§1!D§(_loc12_,_loc8_,_loc10_);
               this.§!!<§.§1!D§(_loc13_,_loc9_,_loc10_);
               this.§!!<§.§1!D§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§;p§:
               this.§!!<§.§1!D§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§!!<§.§1!D§(_loc6_,_loc8_,_loc10_);
               }
               this.§!!<§.§1!D§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§!!<§.§1!D§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §^!9§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§"!1§)
         {
            case b2Shape.§8&§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§,^§(param2,_loc4_.§#!j§);
               _loc6_ = _loc4_.§6q§;
               _loc7_ = param2.R.col1;
               this.§!!<§.§1!5§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§8y§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§;![§();
               _loc11_ = _loc9_.§&p§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§,^§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§!!<§.§0!8§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§<!o§:
               _loc13_ = param1 as b2EdgeShape;
               this.§!!<§.§1!D§(b2Math.§,^§(param2,_loc13_.GetVertex1()),b2Math.§,^§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

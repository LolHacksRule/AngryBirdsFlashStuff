package §0!j§
{
   import §!!o§.*;
   import §!r§.*;
   import §'!^§.*;
   import §-!2§.*;
   import §2!5§.b2Controller;
   import §2!5§.b2ControllerEdge;
   import §8!K§.*;
   import §<!?§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §;!R§:b2Transform = new b2Transform();
      
      private static var §<!Y§:b2Sweep = new b2Sweep();
      
      private static var §!o§:b2Sweep = new b2Sweep();
      
      private static var §%s§:b2TimeStep = new b2TimeStep();
      
      private static var §]!z§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §2o§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var § "#§:Boolean;
      
      private static var §"Q§:Boolean;
      
      public static const §8!T§:int = 1;
      
      public static const §3!+§:int = 2;
       
      
      private var §;=§:Vector.<b2Body>;
      
      b2internal var §<!3§:int;
      
      b2internal var § d§:b2ContactManager;
      
      private var §>!u§:b2ContactSolver;
      
      private var §0Y§:b2Island;
      
      b2internal var §;a§:b2Body;
      
      private var §2!#§:b2Joint;
      
      b2internal var §1&§:b2Contact;
      
      private var §[f§:int;
      
      b2internal var §6]§:int;
      
      private var §;!"§:int;
      
      private var §!!1§:b2Controller;
      
      private var §6!0§:int;
      
      private var §>V§:b2Vec2;
      
      private var §5!+§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §"!B§:b2DestructionListener;
      
      private var §>w§:b2DebugDraw;
      
      private var §^U§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§;=§ = new Vector.<b2Body>();
         this.§ d§ = new b2ContactManager();
         this.§>!u§ = new b2ContactSolver();
         this.§0Y§ = new b2Island();
         super();
         this.§"!B§ = null;
         this.§>w§ = null;
         this.§;a§ = null;
         this.§1&§ = null;
         this.§2!#§ = null;
         this.§!!1§ = null;
         this.§[f§ = 0;
         this.§6]§ = 0;
         this.§;!"§ = 0;
         this.§6!0§ = 0;
         § "#§ = true;
         §"Q§ = true;
         this.§5!+§ = param2;
         this.§>V§ = param1;
         this.§^U§ = 0;
         this.§ d§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §"g§(param1:b2DestructionListener) : void
      {
         this.§"!B§ = param1;
      }
      
      public function §%!u§(param1:b2ContactFilter) : void
      {
         this.§ d§.§#"5§ = param1;
      }
      
      public function §4!>§(param1:b2ContactListener) : void
      {
         this.§ d§.§2@§ = param1;
      }
      
      public function override(param1:b2DebugDraw) : void
      {
         this.§>w§ = param1;
      }
      
      public function §7!,§(param1:§>"#§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§>"#§ = this.§ d§.§!"+§;
         this.§ d§.§!"+§ = param1;
         var _loc3_:b2Body = this.§;a§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§7!=§;
            while(_loc4_)
            {
               _loc4_.§"<§ = param1.§,!G§(_loc2_.§3b§(_loc4_.§"<§),_loc4_);
               _loc4_ = _loc4_.§0!&§;
            }
            _loc3_ = _loc3_.§0!&§;
         }
      }
      
      public function §1$§() : void
      {
         this.§ d§.§!"+§.§1$§();
      }
      
      public function §'7§() : int
      {
         return this.§ d§.§!"+§.§'7§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§4!<§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§9"4§ = null;
         _loc2_.§0!&§ = this.§;a§;
         if(this.§;a§)
         {
            this.§;a§.§9"4§ = _loc2_;
         }
         this.§;a§ = _loc2_;
         ++this.§[f§;
         return _loc2_;
      }
      
      public function §'!1§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§4!<§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§2!#§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.next;
            if(this.§"!B§)
            {
               this.§"!B§.§#@§(_loc6_.§0!'§);
            }
            this.§&!f§(_loc6_.§0!'§);
         }
         var _loc3_:b2ControllerEdge = param1.§!!1§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§ !P§;
            _loc7_.controller.§+r§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§1&§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.next;
            this.§ d§.§,b§(_loc8_.§ ;§);
         }
         param1.§1&§ = null;
         var _loc5_:b2Fixture = param1.§7!=§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§0!&§;
            if(this.§"!B§)
            {
               this.§"!B§.§-!3§(_loc9_);
            }
            _loc9_.§4!i§(this.§ d§.§!"+§);
            _loc9_.§,b§();
         }
         param1.§7!=§ = null;
         param1.§5!R§ = 0;
         if(param1.§9"4§)
         {
            param1.§9"4§.§0!&§ = param1.§0!&§;
         }
         if(param1.§0!&§)
         {
            param1.§0!&§.§9"4§ = param1.§9"4§;
         }
         if(param1 == this.§;a§)
         {
            this.§;a§ = param1.§0!&§;
         }
         --this.§[f§;
      }
      
      public function §1!E§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§6!#§(param1,null);
         _loc2_.§9"4§ = null;
         _loc2_.§0!&§ = this.§2!#§;
         if(this.§2!#§)
         {
            this.§2!#§.§9"4§ = _loc2_;
         }
         this.§2!#§ = _loc2_;
         ++this.§;!"§;
         _loc2_.§4f§.§0!'§ = _loc2_;
         _loc2_.§4f§.§5"-§ = _loc2_.§]!0§;
         _loc2_.§4f§.§+!0§ = null;
         _loc2_.§4f§.next = _loc2_.§"n§.§2!#§;
         if(_loc2_.§"n§.§2!#§)
         {
            _loc2_.§"n§.§2!#§.§+!0§ = _loc2_.§4f§;
         }
         _loc2_.§"n§.§2!#§ = _loc2_.§4f§;
         _loc2_.§2W§.§0!'§ = _loc2_;
         _loc2_.§2W§.§5"-§ = _loc2_.§"n§;
         _loc2_.§2W§.§+!0§ = null;
         _loc2_.§2W§.next = _loc2_.§]!0§.§2!#§;
         if(_loc2_.§]!0§.§2!#§)
         {
            _loc2_.§]!0§.§2!#§.§+!0§ = _loc2_.§2W§;
         }
         _loc2_.§]!0§.§2!#§ = _loc2_.§2W§;
         var _loc3_:b2Body = param1.§,!K§;
         var _loc4_:b2Body = param1.§6n§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§9n§();
            while(_loc5_)
            {
               if(_loc5_.§5"-§ == _loc3_)
               {
                  _loc5_.§ ;§.§7!I§();
               }
               _loc5_ = _loc5_.next;
            }
         }
         return _loc2_;
      }
      
      public function §&!f§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§&!y§;
         if(param1.§9"4§)
         {
            param1.§9"4§.§0!&§ = param1.§0!&§;
         }
         if(param1.§0!&§)
         {
            param1.§0!&§.§9"4§ = param1.§9"4§;
         }
         if(param1 == this.§2!#§)
         {
            this.§2!#§ = param1.§0!&§;
         }
         var _loc3_:b2Body = param1.§"n§;
         var _loc4_:b2Body = param1.§]!0§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§4f§.§+!0§)
         {
            param1.§4f§.§+!0§.next = param1.§4f§.next;
         }
         if(param1.§4f§.next)
         {
            param1.§4f§.next.§+!0§ = param1.§4f§.§+!0§;
         }
         if(param1.§4f§ == _loc3_.§2!#§)
         {
            _loc3_.§2!#§ = param1.§4f§.next;
         }
         param1.§4f§.§+!0§ = null;
         param1.§4f§.next = null;
         if(param1.§2W§.§+!0§)
         {
            param1.§2W§.§+!0§.next = param1.§2W§.next;
         }
         if(param1.§2W§.next)
         {
            param1.§2W§.next.§+!0§ = param1.§2W§.§+!0§;
         }
         if(param1.§2W§ == _loc4_.§2!#§)
         {
            _loc4_.§2!#§ = param1.§2W§.next;
         }
         param1.§2W§.§+!0§ = null;
         param1.§2W§.next = null;
         b2Joint.§,b§(param1,null);
         --this.§;!"§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§9n§();
            while(_loc5_)
            {
               if(_loc5_.§5"-§ == _loc3_)
               {
                  _loc5_.§ ;§.§7!I§();
               }
               _loc5_ = _loc5_.next;
            }
         }
      }
      
      public function §8"0§(param1:b2Controller) : b2Controller
      {
         param1.§0!&§ = this.§!!1§;
         param1.§9"4§ = null;
         this.§!!1§ = param1;
         param1.m_world = this;
         ++this.§6!0§;
         return param1;
      }
      
      public function §""0§(param1:b2Controller) : void
      {
         if(param1.§9"4§)
         {
            param1.§9"4§.§0!&§ = param1.§0!&§;
         }
         if(param1.§0!&§)
         {
            param1.§0!&§.§9"4§ = param1.§9"4§;
         }
         if(this.§!!1§ == param1)
         {
            this.§!!1§ = param1.§0!&§;
         }
         --this.§6!0§;
      }
      
      public function §9L§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§0!&§ = this.§!!1§;
         param1.§9"4§ = null;
         if(this.§!!1§)
         {
            this.§!!1§.§9"4§ = param1;
         }
         this.§!!1§ = param1;
         ++this.§6!0§;
         param1.m_world = this;
         return param1;
      }
      
      public function §+!h§(param1:b2Controller) : void
      {
         param1.§4!z§();
         if(param1.§0!&§)
         {
            param1.§0!&§.§9"4§ = param1.§9"4§;
         }
         if(param1.§9"4§)
         {
            param1.§9"4§.§0!&§ = param1.§0!&§;
         }
         if(param1 == this.§!!1§)
         {
            this.§!!1§ = param1.§0!&§;
         }
         --this.§6!0§;
      }
      
      public function §&"0§(param1:Boolean) : void
      {
         § "#§ = param1;
      }
      
      public function §%!O§(param1:Boolean) : void
      {
         §"Q§ = param1;
      }
      
      public function §!!c§() : int
      {
         return this.§[f§;
      }
      
      public function §=`§() : int
      {
         return this.§;!"§;
      }
      
      public function §7!p§() : int
      {
         return this.§6]§;
      }
      
      public function §;!_§(param1:b2Vec2) : void
      {
         this.§>V§ = param1;
      }
      
      public function §4q§() : b2Vec2
      {
         return this.§>V§;
      }
      
      public function §,>§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §8C§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§<!3§ & §8!T§)
         {
            this.§ d§.§@!b§();
            this.§<!3§ &= ~§8!T§;
         }
         this.§<!3§ |= §3!+§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§&c§ = param1;
         _loc4_.§>u§ = param2;
         _loc4_.§]!s§ = param3;
         if(param1 > 0)
         {
            _loc4_.§@"!§ = 1 / param1;
         }
         else
         {
            _loc4_.§@"!§ = 0;
         }
         _loc4_.§1!m§ = this.§^U§ * param1;
         _loc4_.§'!t§ = § "#§;
         this.§ d§.§5!"§();
         if(_loc4_.§&c§ > 0)
         {
            this.§9!§(_loc4_);
         }
         if(§"Q§ && _loc4_.§&c§ > 0)
         {
            this.§;!=§(_loc4_);
         }
         if(_loc4_.§&c§ > 0)
         {
            this.§^U§ = _loc4_.§@"!§;
         }
         this.§<!3§ &= ~§3!+§;
      }
      
      public function §"!W§() : void
      {
         var _loc1_:b2Body = this.§;a§;
         while(_loc1_)
         {
            _loc1_.§8"+§.§`5§();
            _loc1_.§,!§ = 0;
            _loc1_ = _loc1_.§0!&§;
         }
      }
      
      public function §=!d§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§>"#§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§>w§ == null)
         {
            return;
         }
         this.§>w§.§9!;§.graphics.clear();
         var _loc1_:uint = this.§>w§.§7§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§@!"§)
         {
            _loc3_ = this.§;a§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§&!K§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§3L§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§6`§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§3L§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§6`§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§3L§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§3L§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§3L§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§0!&§;
               }
               _loc3_ = _loc3_.§0!&§;
            }
         }
         if(_loc1_ & b2DebugDraw.§#"6§)
         {
            _loc6_ = this.§2!#§;
            while(_loc6_)
            {
               this.§`!c§(_loc6_);
               _loc6_ = _loc6_.§0!&§;
            }
         }
         if(_loc1_ & b2DebugDraw.§""6§)
         {
            _loc16_ = this.§!!1§;
            while(_loc16_)
            {
               _loc16_.§=!F§(this.§>w§);
               _loc16_ = _loc16_.§0!&§;
            }
         }
         if(_loc1_ & b2DebugDraw.§ !g§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§ d§.§1&§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§01§();
               _loc19_ = _loc17_.§9!,§();
               _loc20_ = _loc18_.§%!x§().§-;§();
               _loc21_ = _loc19_.§%!x§().§-;§();
               this.§>w§.§<!H§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§+!E§();
            }
         }
         if(_loc1_ & b2DebugDraw.§?0§)
         {
            _loc7_ = this.§ d§.§!"+§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§;a§;
            while(_loc3_)
            {
               if(_loc3_.§&!K§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§3b§(_loc4_.§"<§);
                     _loc14_[0].Set(_loc22_.§;!q§.x,_loc22_.§;!q§.y);
                     _loc14_[1].Set(_loc22_.§!!^§.x,_loc22_.§;!q§.y);
                     _loc14_[2].Set(_loc22_.§!!^§.x,_loc22_.§!!^§.y);
                     _loc14_[3].Set(_loc22_.§;!q§.x,_loc22_.§!!^§.y);
                     this.§>w§.§?!R§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§+!E§();
                  }
               }
               _loc3_ = _loc3_.§+!E§();
            }
         }
         if(_loc1_ & b2DebugDraw.§'h§)
         {
            _loc3_ = this.§;a§;
            while(_loc3_)
            {
               (_loc11_ = §;!R§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§-]§();
               this.§>w§.§2_§(_loc11_);
               _loc3_ = _loc3_.§0!&§;
            }
         }
      }
      
      public function §+D§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§>"#§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§ d§.§!"+§;
         broadPhase.§>!L§(WorldQueryWrapper,aabb);
      }
      
      public function §%"&§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§>"#§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§?"2§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§;b§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§#&§();
         }
         broadPhase = this.§ d§.§!"+§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§>!L§(WorldQueryWrapper,aabb);
      }
      
      public function § use§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§>"#§ = null;
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
         broadPhase = this.§ d§.§!"+§;
         var aabb:b2AABB = new b2AABB();
         aabb.§;!q§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§!!^§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§>!L§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§>"#§ = null;
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
            return param1.§9![§;
         };
         broadPhase = this.§ d§.§!"+§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §-C§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §]!<§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §1!h§() : b2Body
      {
         return this.§;a§;
      }
      
      public function §%!I§() : b2Joint
      {
         return this.§2!#§;
      }
      
      public function §9n§() : b2Contact
      {
         return this.§1&§;
      }
      
      public function §4!<§() : Boolean
      {
         return (this.§<!3§ & §3!+§) > 0;
      }
      
      b2internal function §9!§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§!!1§;
         while(_loc3_)
         {
            _loc3_.§8C§(param1);
            _loc3_ = _loc3_.§0!&§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§0Y§).§7!Q§(this.§[f§,this.§6]§,this.§;!"§,null,this.§ d§.§2@§,this.§>!u§);
         _loc2_ = this.§;a§;
         while(_loc2_)
         {
            _loc2_.§<!3§ &= ~b2Body.§"=§;
            _loc2_ = _loc2_.§0!&§;
         }
         var _loc5_:b2Contact = this.§1&§;
         while(_loc5_)
         {
            _loc5_.§<!3§ &= ~b2Contact.§"=§;
            _loc5_ = _loc5_.§0!&§;
         }
         var _loc6_:b2Joint = this.§2!#§;
         while(_loc6_)
         {
            _loc6_.§+!'§ = false;
            _loc6_ = _loc6_.§0!&§;
         }
         var _loc7_:int = this.§[f§;
         var _loc8_:Vector.<b2Body> = this.§;=§;
         var _loc9_:b2Body = this.§;a§;
         while(_loc9_)
         {
            if(!(_loc9_.§<!3§ & b2Body.§"=§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§&!K§() == false))
               {
                  if(_loc9_.§6`§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§4!z§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§<!3§ |= b2Body.§"=§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§9!w§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§6`§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§1&§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§ ;§.§<!3§ & b2Contact.§"=§))
                              {
                                 if(!(_loc13_.§ ;§.§6"0§() == true || _loc13_.§ ;§.§?^§() == false || _loc13_.§ ;§.§]x§() == false))
                                 {
                                    _loc4_.§;O§(_loc13_.§ ;§);
                                    _loc13_.§ ;§.§<!3§ |= b2Contact.§"=§;
                                    if(!((_loc12_ = _loc13_.§5"-§).§<!3§ & b2Body.§"=§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§<!3§ |= b2Body.§"=§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.next;
                           }
                           _loc14_ = _loc2_.§2!#§;
                           while(_loc14_)
                           {
                              if(_loc14_.§0!'§.§+!'§ != true)
                              {
                                 if((_loc12_ = _loc14_.§5"-§).§&!K§() != false)
                                 {
                                    _loc4_.§,`§(_loc14_.§0!'§);
                                    _loc14_.§0!'§.§+!'§ = true;
                                    if(!(_loc12_.§<!3§ & b2Body.§"=§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§<!3§ |= b2Body.§"=§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.next;
                           }
                        }
                     }
                     _loc4_.§9!§(param1,this.§>V§,this.§5!+§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§[f§)
                     {
                        _loc2_ = _loc4_.§7!+§[_loc11_];
                        if(_loc2_.§6`§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§<!3§ &= ~b2Body.§"=§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§0!&§;
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
         _loc2_ = this.§;a§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§&!K§() == false))
            {
               if(_loc2_.§6`§() != b2Body.b2_staticBody)
               {
                  _loc2_.§1!q§();
               }
            }
            _loc2_ = _loc2_.§0!&§;
         }
         this.§ d§.§@!b§();
      }
      
      b2internal function §;!=§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§0Y§).§7!Q§(this.§[f§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§ d§.§2@§,this.§>!u§);
         var _loc10_:Vector.<b2Body> = §]!z§;
         _loc2_ = this.§;a§;
         while(_loc2_)
         {
            _loc2_.§<!3§ &= ~b2Body.§"=§;
            _loc2_.m_sweep.§try § = 0;
            _loc2_ = _loc2_.§0!&§;
         }
         _loc11_ = this.§1&§;
         while(_loc11_)
         {
            _loc11_.§<!3§ &= ~(b2Contact.§?!a§ | b2Contact.§"=§);
            _loc11_.§>"%§ = 1;
            _loc11_ = _loc11_.§0!&§;
         }
         _loc8_ = this.§2!#§;
         while(_loc8_)
         {
            _loc8_.§+!'§ = false;
            _loc8_ = _loc8_.§0!&§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§1&§;
            while(_loc11_)
            {
               if(!(_loc11_.§6"0§() == true || _loc11_.§?^§() == false || _loc11_.§6Z§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§<!3§ & b2Contact.§?!a§)
                  {
                     _loc19_ = _loc11_.§>"%§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§5"4§;
                     _loc4_ = _loc11_.§4!F§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§6`§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§6`§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr603:
                        _loc11_ = _loc11_.§0!&§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§try §;
                     if(_loc5_.m_sweep.§try § < _loc6_.m_sweep.§try §)
                     {
                        _loc20_ = _loc6_.m_sweep.§try §;
                        _loc5_.m_sweep.§^!f§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§try § < _loc5_.m_sweep.§try §)
                     {
                        _loc20_ = _loc5_.m_sweep.§try §;
                        _loc6_.m_sweep.§^!f§(_loc20_);
                     }
                     _loc19_ = _loc11_.§'z§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§>"%§ = _loc19_;
                     _loc11_.§<!3§ |= b2Contact.§?!a§;
                     §§goto(addr603);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr603);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§5"4§;
            _loc4_ = _loc12_.§4!F§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §<!Y§.Set(_loc5_.m_sweep);
            §!o§.Set(_loc6_.m_sweep);
            _loc5_.§^!f§(_loc13_);
            _loc6_.§^!f§(_loc13_);
            _loc12_.§'!l§(this.§ d§.§2@§);
            _loc12_.§<!3§ &= ~b2Contact.§?!a§;
            if(_loc12_.§6"0§() == true || _loc12_.§?^§() == false)
            {
               _loc5_.m_sweep.Set(§<!Y§);
               _loc6_.m_sweep.Set(§!o§);
               _loc5_.§+!8§();
               _loc6_.§+!8§();
            }
            else if(_loc12_.§]x§() != false)
            {
               if((_loc14_ = _loc5_).§6`§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§4!z§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§<!3§ |= b2Body.§"=§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§9!w§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§6`§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§1&§;
                     while(_loc7_)
                     {
                        if(_loc9_.§6]§ == _loc9_.§0!w§)
                        {
                           break;
                        }
                        if(!(_loc7_.§ ;§.§<!3§ & b2Contact.§"=§))
                        {
                           if(!(_loc7_.§ ;§.§6"0§() == true || _loc7_.§ ;§.§?^§() == false || _loc7_.§ ;§.§]x§() == false))
                           {
                              _loc9_.§;O§(_loc7_.§ ;§);
                              _loc7_.§ ;§.§<!3§ |= b2Contact.§"=§;
                              if(!((_loc22_ = _loc7_.§5"-§).§<!3§ & b2Body.§"=§))
                              {
                                 if(_loc22_.§6`§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§^!f§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§<!3§ |= b2Body.§"=§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.next;
                     }
                     _loc21_ = _loc2_.§2!#§;
                     while(_loc21_)
                     {
                        if(_loc9_.§;!"§ != _loc9_.§1!§)
                        {
                           if(_loc21_.§0!'§.§+!'§ != true)
                           {
                              if((_loc22_ = _loc21_.§5"-§).§&!K§() != false)
                              {
                                 _loc9_.§,`§(_loc21_.§0!'§);
                                 _loc21_.§0!'§.§+!'§ = true;
                                 if(!(_loc22_.§<!3§ & b2Body.§"=§))
                                 {
                                    if(_loc22_.§6`§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§^!f§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§<!3§ |= b2Body.§"=§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.next;
                     }
                  }
               }
               (_loc17_ = §%s§).§'!t§ = false;
               _loc17_.§&c§ = (1 - _loc13_) * param1.§&c§;
               _loc17_.§@"!§ = 1 / _loc17_.§&c§;
               _loc17_.§1!m§ = 1;
               _loc17_.§>u§ = param1.§>u§;
               _loc17_.§]!s§ = param1.§]!s§;
               _loc9_.§;!=§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§[f§)
               {
                  _loc2_ = _loc9_.§7!+§[_loc18_];
                  _loc2_.§<!3§ &= ~b2Body.§"=§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§6`§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§1!q§();
                        _loc7_ = _loc2_.§1&§;
                        while(_loc7_)
                        {
                           _loc7_.§ ;§.§<!3§ &= ~b2Contact.§?!a§;
                           _loc7_ = _loc7_.next;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§6]§)
               {
                  _loc11_ = _loc9_.§@"&§[_loc18_];
                  _loc11_.§<!3§ &= ~(b2Contact.§?!a§ | b2Contact.§"=§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§;!"§)
               {
                  (_loc8_ = _loc9_.§7H§[_loc18_]).§+!'§ = false;
                  _loc18_++;
               }
               this.§ d§.§@!b§();
            }
         }
      }
      
      b2internal function §`!c§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§@R§();
         var _loc3_:b2Body = param1.§,[§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §2o§;
         switch(param1.§%"+§)
         {
            case b2Joint.§5!r§:
               this.§>w§.§<!H§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§,!f§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§4e§();
               _loc13_ = _loc11_.§%!k§();
               this.§>w§.§<!H§(_loc12_,_loc8_,_loc10_);
               this.§>w§.§<!H§(_loc13_,_loc9_,_loc10_);
               this.§>w§.§<!H§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§;!U§:
               this.§>w§.§<!H§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§>w§.§<!H§(_loc6_,_loc8_,_loc10_);
               }
               this.§>w§.§<!H§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§>w§.§<!H§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §3L§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§%"+§)
         {
            case b2Shape.§>!D§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§!!b§(param2,_loc4_.§#F§);
               _loc6_ = _loc4_.§;J§;
               _loc7_ = param2.R.col1;
               this.§>w§.§[t§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§3!f§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§<y§();
               _loc11_ = _loc9_.§;!^§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§!!b§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§>w§.§6"#§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§!!>§:
               _loc13_ = param1 as b2EdgeShape;
               this.§>w§.§<!H§(b2Math.§!!b§(param2,_loc13_.GetVertex1()),b2Math.§!!b§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

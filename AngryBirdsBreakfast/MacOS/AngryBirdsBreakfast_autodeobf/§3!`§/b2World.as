package §3!`§
{
   import §"y§.*;
   import §'F§.*;
   import §+C§.*;
   import §-"&§.*;
   import §6Z§.*;
   import §@0§.b2Controller;
   import §@0§.b2ControllerEdge;
   import §^9§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §;S§:b2Transform = new b2Transform();
      
      private static var §"E§:b2Sweep = new b2Sweep();
      
      private static var §"1§:b2Sweep = new b2Sweep();
      
      private static var §@",§:b2TimeStep = new b2TimeStep();
      
      private static var §;w§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §^3§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §,!p§:Boolean;
      
      private static var §3Q§:Boolean;
      
      public static const §+!P§:int = 1;
      
      public static const §8"§:int = 2;
       
      
      private var §]8§:Vector.<b2Body>;
      
      b2internal var §,[§:int;
      
      b2internal var §1C§:b2ContactManager;
      
      private var §?!?§:b2ContactSolver;
      
      private var § !7§:b2Island;
      
      b2internal var §>L§:b2Body;
      
      private var §4!Z§:b2Joint;
      
      b2internal var §]J§:b2Contact;
      
      private var §3"'§:int;
      
      b2internal var §<$§:int;
      
      private var §"F§:int;
      
      private var §9"&§:b2Controller;
      
      private var §,!l§:int;
      
      private var §<!O§:b2Vec2;
      
      private var §^!W§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §"$§:b2DestructionListener;
      
      private var §#"+§:b2DebugDraw;
      
      private var §-0§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§]8§ = new Vector.<b2Body>();
         this.§1C§ = new b2ContactManager();
         this.§?!?§ = new b2ContactSolver();
         this.§ !7§ = new b2Island();
         super();
         this.§"$§ = null;
         this.§#"+§ = null;
         this.§>L§ = null;
         this.§]J§ = null;
         this.§4!Z§ = null;
         this.§9"&§ = null;
         this.§3"'§ = 0;
         this.§<$§ = 0;
         this.§"F§ = 0;
         this.§,!l§ = 0;
         §,!p§ = true;
         §3Q§ = true;
         this.§^!W§ = param2;
         this.§<!O§ = param1;
         this.§-0§ = 0;
         this.§1C§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §1!e§(param1:b2DestructionListener) : void
      {
         this.§"$§ = param1;
      }
      
      public function §5=§(param1:b2ContactFilter) : void
      {
         this.§1C§.§<"$§ = param1;
      }
      
      public function §,V§(param1:b2ContactListener) : void
      {
         this.§1C§.§&6§ = param1;
      }
      
      public function §]!y§(param1:b2DebugDraw) : void
      {
         this.§#"+§ = param1;
      }
      
      public function §8!d§(param1:§`c§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§`c§ = this.§1C§.§9!V§;
         this.§1C§.§9!V§ = param1;
         var _loc3_:b2Body = this.§>L§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§'e§;
            while(_loc4_)
            {
               _loc4_.§1! § = param1.§]!J§(_loc2_.§25§(_loc4_.§1! §),_loc4_);
               _loc4_ = _loc4_.§0!>§;
            }
            _loc3_ = _loc3_.§0!>§;
         }
      }
      
      public function §`!n§() : void
      {
         this.§1C§.§9!V§.§`!n§();
      }
      
      public function §<!v§() : int
      {
         return this.§1C§.§9!V§.§<!v§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§6"+§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§0!^§ = null;
         _loc2_.§0!>§ = this.§>L§;
         if(this.§>L§)
         {
            this.§>L§.§0!^§ = _loc2_;
         }
         this.§>L§ = _loc2_;
         ++this.§3"'§;
         return _loc2_;
      }
      
      public function §-7§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§6"+§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§4!Z§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.next;
            if(this.§"$§)
            {
               this.§"$§.§,"&§(_loc6_.§`!g§);
            }
            this.§=!"§(_loc6_.§`!g§);
         }
         var _loc3_:b2ControllerEdge = param1.§9"&§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§4!m§;
            _loc7_.controller.§2!U§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§]J§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.next;
            this.§1C§.§5f§(_loc8_.§;%§);
         }
         param1.§]J§ = null;
         var _loc5_:b2Fixture = param1.§'e§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§0!>§;
            if(this.§"$§)
            {
               this.§"$§.§!9§(_loc9_);
            }
            _loc9_.§5!k§(this.§1C§.§9!V§);
            _loc9_.§5f§();
         }
         param1.§'e§ = null;
         param1.§]! § = 0;
         if(param1.§0!^§)
         {
            param1.§0!^§.§0!>§ = param1.§0!>§;
         }
         if(param1.§0!>§)
         {
            param1.§0!>§.§0!^§ = param1.§0!^§;
         }
         if(param1 == this.§>L§)
         {
            this.§>L§ = param1.§0!>§;
         }
         --this.§3"'§;
      }
      
      public function §6`§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§2#§(param1,null);
         _loc2_.§0!^§ = null;
         _loc2_.§0!>§ = this.§4!Z§;
         if(this.§4!Z§)
         {
            this.§4!Z§.§0!^§ = _loc2_;
         }
         this.§4!Z§ = _loc2_;
         ++this.§"F§;
         _loc2_.§]!%§.§`!g§ = _loc2_;
         _loc2_.§]!%§.§-!3§ = _loc2_.§8!F§;
         _loc2_.§]!%§.§9!b§ = null;
         _loc2_.§]!%§.next = _loc2_.§[Z§.§4!Z§;
         if(_loc2_.§[Z§.§4!Z§)
         {
            _loc2_.§[Z§.§4!Z§.§9!b§ = _loc2_.§]!%§;
         }
         _loc2_.§[Z§.§4!Z§ = _loc2_.§]!%§;
         _loc2_.§@!d§.§`!g§ = _loc2_;
         _loc2_.§@!d§.§-!3§ = _loc2_.§[Z§;
         _loc2_.§@!d§.§9!b§ = null;
         _loc2_.§@!d§.next = _loc2_.§8!F§.§4!Z§;
         if(_loc2_.§8!F§.§4!Z§)
         {
            _loc2_.§8!F§.§4!Z§.§9!b§ = _loc2_.§@!d§;
         }
         _loc2_.§8!F§.§4!Z§ = _loc2_.§@!d§;
         var _loc3_:b2Body = param1.§'!n§;
         var _loc4_:b2Body = param1.§ 5§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§9'§();
            while(_loc5_)
            {
               if(_loc5_.§-!3§ == _loc3_)
               {
                  _loc5_.§;%§.§<t§();
               }
               _loc5_ = _loc5_.next;
            }
         }
         return _loc2_;
      }
      
      public function §=!"§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§>!!§;
         if(param1.§0!^§)
         {
            param1.§0!^§.§0!>§ = param1.§0!>§;
         }
         if(param1.§0!>§)
         {
            param1.§0!>§.§0!^§ = param1.§0!^§;
         }
         if(param1 == this.§4!Z§)
         {
            this.§4!Z§ = param1.§0!>§;
         }
         var _loc3_:b2Body = param1.§[Z§;
         var _loc4_:b2Body = param1.§8!F§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§]!%§.§9!b§)
         {
            param1.§]!%§.§9!b§.next = param1.§]!%§.next;
         }
         if(param1.§]!%§.next)
         {
            param1.§]!%§.next.§9!b§ = param1.§]!%§.§9!b§;
         }
         if(param1.§]!%§ == _loc3_.§4!Z§)
         {
            _loc3_.§4!Z§ = param1.§]!%§.next;
         }
         param1.§]!%§.§9!b§ = null;
         param1.§]!%§.next = null;
         if(param1.§@!d§.§9!b§)
         {
            param1.§@!d§.§9!b§.next = param1.§@!d§.next;
         }
         if(param1.§@!d§.next)
         {
            param1.§@!d§.next.§9!b§ = param1.§@!d§.§9!b§;
         }
         if(param1.§@!d§ == _loc4_.§4!Z§)
         {
            _loc4_.§4!Z§ = param1.§@!d§.next;
         }
         param1.§@!d§.§9!b§ = null;
         param1.§@!d§.next = null;
         b2Joint.§5f§(param1,null);
         --this.§"F§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§9'§();
            while(_loc5_)
            {
               if(_loc5_.§-!3§ == _loc3_)
               {
                  _loc5_.§;%§.§<t§();
               }
               _loc5_ = _loc5_.next;
            }
         }
      }
      
      public function §,s§(param1:b2Controller) : b2Controller
      {
         param1.§0!>§ = this.§9"&§;
         param1.§0!^§ = null;
         this.§9"&§ = param1;
         param1.m_world = this;
         ++this.§,!l§;
         return param1;
      }
      
      public function §@!i§(param1:b2Controller) : void
      {
         if(param1.§0!^§)
         {
            param1.§0!^§.§0!>§ = param1.§0!>§;
         }
         if(param1.§0!>§)
         {
            param1.§0!>§.§0!^§ = param1.§0!^§;
         }
         if(this.§9"&§ == param1)
         {
            this.§9"&§ = param1.§0!>§;
         }
         --this.§,!l§;
      }
      
      public function §1!v§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§0!>§ = this.§9"&§;
         param1.§0!^§ = null;
         if(this.§9"&§)
         {
            this.§9"&§.§0!^§ = param1;
         }
         this.§9"&§ = param1;
         ++this.§,!l§;
         param1.m_world = this;
         return param1;
      }
      
      public function §!T§(param1:b2Controller) : void
      {
         param1.§,A§();
         if(param1.§0!>§)
         {
            param1.§0!>§.§0!^§ = param1.§0!^§;
         }
         if(param1.§0!^§)
         {
            param1.§0!^§.§0!>§ = param1.§0!>§;
         }
         if(param1 == this.§9"&§)
         {
            this.§9"&§ = param1.§0!>§;
         }
         --this.§,!l§;
      }
      
      public function §[§(param1:Boolean) : void
      {
         §,!p§ = param1;
      }
      
      public function §,!6§(param1:Boolean) : void
      {
         §3Q§ = param1;
      }
      
      public function §9!4§() : int
      {
         return this.§3"'§;
      }
      
      public function §4!l§() : int
      {
         return this.§"F§;
      }
      
      public function §2g§() : int
      {
         return this.§<$§;
      }
      
      public function §^!p§(param1:b2Vec2) : void
      {
         this.§<!O§ = param1;
      }
      
      public function §,§() : b2Vec2
      {
         return this.§<!O§;
      }
      
      public function §35§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §4!6§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§,[§ & §+!P§)
         {
            this.§1C§.§>"+§();
            this.§,[§ &= ~§+!P§;
         }
         this.§,[§ |= §8"§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§`!9§ = param1;
         _loc4_.§#!Y§ = param2;
         _loc4_.§5!6§ = param3;
         if(param1 > 0)
         {
            _loc4_.§4!z§ = 1 / param1;
         }
         else
         {
            _loc4_.§4!z§ = 0;
         }
         _loc4_.§-k§ = this.§-0§ * param1;
         _loc4_.§?j§ = §,!p§;
         this.§1C§.§-"%§();
         if(_loc4_.§`!9§ > 0)
         {
            this.§=^§(_loc4_);
         }
         if(§3Q§ && _loc4_.§`!9§ > 0)
         {
            this.§+Q§(_loc4_);
         }
         if(_loc4_.§`!9§ > 0)
         {
            this.§-0§ = _loc4_.§4!z§;
         }
         this.§,[§ &= ~§8"§;
      }
      
      public function §&",§() : void
      {
         var _loc1_:b2Body = this.§>L§;
         while(_loc1_)
         {
            _loc1_.§-[§.§5!H§();
            _loc1_.§#!K§ = 0;
            _loc1_ = _loc1_.§0!>§;
         }
      }
      
      public function §]"$§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§`c§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§#"+§ == null)
         {
            return;
         }
         this.§#"+§.§0C§.graphics.clear();
         var _loc1_:uint = this.§#"+§.§^!L§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§2!L§)
         {
            _loc3_ = this.§>L§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§3!z§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§,!F§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§<!A§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§,!F§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§<!A§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§,!F§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§,!F§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§,!F§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§0!>§;
               }
               _loc3_ = _loc3_.§0!>§;
            }
         }
         if(_loc1_ & b2DebugDraw.§ !5§)
         {
            _loc6_ = this.§4!Z§;
            while(_loc6_)
            {
               this.§;;§(_loc6_);
               _loc6_ = _loc6_.§0!>§;
            }
         }
         if(_loc1_ & b2DebugDraw.§!!a§)
         {
            _loc16_ = this.§9"&§;
            while(_loc16_)
            {
               _loc16_.§>"&§(this.§#"+§);
               _loc16_ = _loc16_.§0!>§;
            }
         }
         if(_loc1_ & b2DebugDraw.§-!2§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§1C§.§]J§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§&R§();
               _loc19_ = _loc17_.§@!,§();
               _loc20_ = _loc18_.§#!,§().§`!8§();
               _loc21_ = _loc19_.§#!,§().§`!8§();
               this.§#"+§.§ >§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§>X§();
            }
         }
         if(_loc1_ & b2DebugDraw.§<v§)
         {
            _loc7_ = this.§1C§.§9!V§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§>L§;
            while(_loc3_)
            {
               if(_loc3_.§3!z§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§25§(_loc4_.§1! §);
                     _loc14_[0].Set(_loc22_.§?J§.x,_loc22_.§?J§.y);
                     _loc14_[1].Set(_loc22_.§1^§.x,_loc22_.§?J§.y);
                     _loc14_[2].Set(_loc22_.§1^§.x,_loc22_.§1^§.y);
                     _loc14_[3].Set(_loc22_.§?J§.x,_loc22_.§1^§.y);
                     this.§#"+§.§;!`§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§>X§();
                  }
               }
               _loc3_ = _loc3_.§>X§();
            }
         }
         if(_loc1_ & b2DebugDraw.§"!k§)
         {
            _loc3_ = this.§>L§;
            while(_loc3_)
            {
               (_loc11_ = §;S§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§#!0§();
               this.§#"+§.§@x§(_loc11_);
               _loc3_ = _loc3_.§0!>§;
            }
         }
      }
      
      public function §@Z§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§`c§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§1C§.§9!V§;
         broadPhase.§ var§(WorldQueryWrapper,aabb);
      }
      
      public function §;q§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§`c§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§]",§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§#%§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§&w§();
         }
         broadPhase = this.§1C§.§9!V§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§ var§(WorldQueryWrapper,aabb);
      }
      
      public function §"!z§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§`c§ = null;
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
         broadPhase = this.§1C§.§9!V§;
         var aabb:b2AABB = new b2AABB();
         aabb.§?J§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§1^§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§ var§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§`c§ = null;
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
            return param1.§]!4§;
         };
         broadPhase = this.§1C§.§9!V§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §6g§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §=!i§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §`K§() : b2Body
      {
         return this.§>L§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§4!Z§;
      }
      
      public function §9'§() : b2Contact
      {
         return this.§]J§;
      }
      
      public function §6"+§() : Boolean
      {
         return (this.§,[§ & §8"§) > 0;
      }
      
      b2internal function §=^§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§9"&§;
         while(_loc3_)
         {
            _loc3_.§4!6§(param1);
            _loc3_ = _loc3_.§0!>§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§ !7§).§",§(this.§3"'§,this.§<$§,this.§"F§,null,this.§1C§.§&6§,this.§?!?§);
         _loc2_ = this.§>L§;
         while(_loc2_)
         {
            _loc2_.§,[§ &= ~b2Body.§24§;
            _loc2_ = _loc2_.§0!>§;
         }
         var _loc5_:b2Contact = this.§]J§;
         while(_loc5_)
         {
            _loc5_.§,[§ &= ~b2Contact.§24§;
            _loc5_ = _loc5_.§0!>§;
         }
         var _loc6_:b2Joint = this.§4!Z§;
         while(_loc6_)
         {
            _loc6_.§><§ = false;
            _loc6_ = _loc6_.§0!>§;
         }
         var _loc7_:int = this.§3"'§;
         var _loc8_:Vector.<b2Body> = this.§]8§;
         var _loc9_:b2Body = this.§>L§;
         while(_loc9_)
         {
            if(!(_loc9_.§,[§ & b2Body.§24§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§3!z§() == false))
               {
                  if(_loc9_.§<!A§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§,A§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§,[§ |= b2Body.§24§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§<",§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§<!A§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§]J§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§;%§.§,[§ & b2Contact.§24§))
                              {
                                 if(!(_loc13_.§;%§.§'5§() == true || _loc13_.§;%§.§'9§() == false || _loc13_.§;%§.§0&§() == false))
                                 {
                                    _loc4_.§@!#§(_loc13_.§;%§);
                                    _loc13_.§;%§.§,[§ |= b2Contact.§24§;
                                    if(!((_loc12_ = _loc13_.§-!3§).§,[§ & b2Body.§24§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§,[§ |= b2Body.§24§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.next;
                           }
                           _loc14_ = _loc2_.§4!Z§;
                           while(_loc14_)
                           {
                              if(_loc14_.§`!g§.§><§ != true)
                              {
                                 if((_loc12_ = _loc14_.§-!3§).§3!z§() != false)
                                 {
                                    _loc4_.§]!C§(_loc14_.§`!g§);
                                    _loc14_.§`!g§.§><§ = true;
                                    if(!(_loc12_.§,[§ & b2Body.§24§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§,[§ |= b2Body.§24§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.next;
                           }
                        }
                     }
                     _loc4_.§=^§(param1,this.§<!O§,this.§^!W§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§3"'§)
                     {
                        _loc2_ = _loc4_.§0p§[_loc11_];
                        if(_loc2_.§<!A§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§,[§ &= ~b2Body.§24§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§0!>§;
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
         _loc2_ = this.§>L§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§3!z§() == false))
            {
               if(_loc2_.§<!A§() != b2Body.b2_staticBody)
               {
                  _loc2_.§[!r§();
               }
            }
            _loc2_ = _loc2_.§0!>§;
         }
         this.§1C§.§>"+§();
      }
      
      b2internal function §+Q§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§ !7§).§",§(this.§3"'§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§1C§.§&6§,this.§?!?§);
         var _loc10_:Vector.<b2Body> = §;w§;
         _loc2_ = this.§>L§;
         while(_loc2_)
         {
            _loc2_.§,[§ &= ~b2Body.§24§;
            _loc2_.m_sweep.§+%§ = 0;
            _loc2_ = _loc2_.§0!>§;
         }
         _loc11_ = this.§]J§;
         while(_loc11_)
         {
            _loc11_.§,[§ &= ~(b2Contact.§,"-§ | b2Contact.§24§);
            _loc11_.§!S§ = 1;
            _loc11_ = _loc11_.§0!>§;
         }
         _loc8_ = this.§4!Z§;
         while(_loc8_)
         {
            _loc8_.§><§ = false;
            _loc8_ = _loc8_.§0!>§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§]J§;
            for(; _loc11_; _loc11_ = _loc11_.§0!>§)
            {
               if(!(_loc11_.§'5§() == true || _loc11_.§'9§() == false || _loc11_.§8!6§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§,[§ & b2Contact.§,"-§)
                  {
                     _loc19_ = _loc11_.§!S§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§]R§;
                     _loc4_ = _loc11_.§7!&§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§<!A§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§<!A§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§+%§;
                     if(_loc5_.m_sweep.§+%§ < _loc6_.m_sweep.§+%§)
                     {
                        _loc20_ = _loc6_.m_sweep.§+%§;
                        _loc5_.m_sweep.§#!§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§+%§ < _loc5_.m_sweep.§+%§)
                     {
                        _loc20_ = _loc5_.m_sweep.§+%§;
                        _loc6_.m_sweep.§#!§(_loc20_);
                     }
                     _loc19_ = _loc11_.§1!$§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§!S§ = _loc19_;
                     _loc11_.§,[§ |= b2Contact.§,"-§;
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
            _loc3_ = _loc12_.§]R§;
            _loc4_ = _loc12_.§7!&§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §"E§.Set(_loc5_.m_sweep);
            §"1§.Set(_loc6_.m_sweep);
            _loc5_.§#!§(_loc13_);
            _loc6_.§#!§(_loc13_);
            _loc12_.§3v§(this.§1C§.§&6§);
            _loc12_.§,[§ &= ~b2Contact.§,"-§;
            if(_loc12_.§'5§() == true || _loc12_.§'9§() == false)
            {
               _loc5_.m_sweep.Set(§"E§);
               _loc6_.m_sweep.Set(§"1§);
               _loc5_.§-F§();
               _loc6_.§-F§();
            }
            else if(_loc12_.§0&§() != false)
            {
               if((_loc14_ = _loc5_).§<!A§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§,A§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§,[§ |= b2Body.§24§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§<",§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§<!A§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§]J§;
                     while(_loc7_)
                     {
                        if(_loc9_.§<$§ == _loc9_.§!q§)
                        {
                           break;
                        }
                        if(!(_loc7_.§;%§.§,[§ & b2Contact.§24§))
                        {
                           if(!(_loc7_.§;%§.§'5§() == true || _loc7_.§;%§.§'9§() == false || _loc7_.§;%§.§0&§() == false))
                           {
                              _loc9_.§@!#§(_loc7_.§;%§);
                              _loc7_.§;%§.§,[§ |= b2Contact.§24§;
                              if(!((_loc22_ = _loc7_.§-!3§).§,[§ & b2Body.§24§))
                              {
                                 if(_loc22_.§<!A§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§#!§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§,[§ |= b2Body.§24§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.next;
                     }
                     _loc21_ = _loc2_.§4!Z§;
                     while(_loc21_)
                     {
                        if(_loc9_.§"F§ != _loc9_.§&!t§)
                        {
                           if(_loc21_.§`!g§.§><§ != true)
                           {
                              if((_loc22_ = _loc21_.§-!3§).§3!z§() != false)
                              {
                                 _loc9_.§]!C§(_loc21_.§`!g§);
                                 _loc21_.§`!g§.§><§ = true;
                                 if(!(_loc22_.§,[§ & b2Body.§24§))
                                 {
                                    if(_loc22_.§<!A§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§#!§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§,[§ |= b2Body.§24§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.next;
                     }
                  }
               }
               (_loc17_ = §@",§).§?j§ = false;
               _loc17_.§`!9§ = (1 - _loc13_) * param1.§`!9§;
               _loc17_.§4!z§ = 1 / _loc17_.§`!9§;
               _loc17_.§-k§ = 1;
               _loc17_.§#!Y§ = param1.§#!Y§;
               _loc17_.§5!6§ = param1.§5!6§;
               _loc9_.§+Q§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§3"'§)
               {
                  _loc2_ = _loc9_.§0p§[_loc18_];
                  _loc2_.§,[§ &= ~b2Body.§24§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§<!A§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§[!r§();
                        _loc7_ = _loc2_.§]J§;
                        while(_loc7_)
                        {
                           _loc7_.§;%§.§,[§ &= ~b2Contact.§,"-§;
                           _loc7_ = _loc7_.next;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§<$§)
               {
                  _loc11_ = _loc9_.§7!K§[_loc18_];
                  _loc11_.§,[§ &= ~(b2Contact.§,"-§ | b2Contact.§24§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§"F§)
               {
                  (_loc8_ = _loc9_.§6w§[_loc18_]).§><§ = false;
                  _loc18_++;
               }
               this.§1C§.§>"+§();
            }
         }
      }
      
      b2internal function §;;§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§[d§();
         var _loc3_:b2Body = param1.§#E§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §^3§;
         switch(param1.§6m§)
         {
            case b2Joint.§'G§:
               this.§#"+§.§ >§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§[!0§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§?!@§();
               _loc13_ = _loc11_.§ !j§();
               this.§#"+§.§ >§(_loc12_,_loc8_,_loc10_);
               this.§#"+§.§ >§(_loc13_,_loc9_,_loc10_);
               this.§#"+§.§ >§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§6!+§:
               this.§#"+§.§ >§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§#"+§.§ >§(_loc6_,_loc8_,_loc10_);
               }
               this.§#"+§.§ >§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§#"+§.§ >§(_loc7_,_loc9_,_loc10_);
               }
         }
      }
      
      b2internal function §,!F§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§6m§)
         {
            case b2Shape.§9_§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§!v§(param2,_loc4_.§4b§);
               _loc6_ = _loc4_.§,!;§;
               _loc7_ = param2.R.col1;
               this.§#"+§.§=!]§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§2e§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§@c§();
               _loc11_ = _loc9_.§%Y§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§!v§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§#"+§.§6T§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§[!Q§:
               _loc13_ = param1 as b2EdgeShape;
               this.§#"+§.§ >§(b2Math.§!v§(param2,_loc13_.GetVertex1()),b2Math.§!v§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

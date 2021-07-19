package §0"!§
{
   import §!§.*;
   import §'!_§.*;
   import §23§.*;
   import §=!!§.*;
   import §?!V§.b2Controller;
   import §?!V§.b2ControllerEdge;
   import §@!E§.*;
   import §@h§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §>!Q§:b2Transform = new b2Transform();
      
      private static var §each §:b2Sweep = new b2Sweep();
      
      private static var §!!`§:b2Sweep = new b2Sweep();
      
      private static var §4!^§:b2TimeStep = new b2TimeStep();
      
      private static var §0!v§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §0S§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §3"%§:Boolean;
      
      private static var §-E§:Boolean;
      
      public static const §&i§:int = 1;
      
      public static const §[?§:int = 2;
       
      
      private var §%!6§:Vector.<b2Body>;
      
      b2internal var §1!h§:int;
      
      b2internal var §`Q§:b2ContactManager;
      
      private var §^_§:b2ContactSolver;
      
      private var §`!p§:b2Island;
      
      b2internal var §4m§:b2Body;
      
      private var §=!U§:b2Joint;
      
      b2internal var § if§:b2Contact;
      
      private var §1a§:int;
      
      b2internal var §^" §:int;
      
      private var § !%§:int;
      
      private var §8!@§:b2Controller;
      
      private var §#k§:int;
      
      private var §]!%§:b2Vec2;
      
      private var § !b§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §1<§:b2DestructionListener;
      
      private var § !W§:b2DebugDraw;
      
      private var §`m§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§%!6§ = new Vector.<b2Body>();
         this.§`Q§ = new b2ContactManager();
         this.§^_§ = new b2ContactSolver();
         this.§`!p§ = new b2Island();
         super();
         this.§1<§ = null;
         this.§ !W§ = null;
         this.§4m§ = null;
         this.§ if§ = null;
         this.§=!U§ = null;
         this.§8!@§ = null;
         this.§1a§ = 0;
         this.§^" § = 0;
         this.§ !%§ = 0;
         this.§#k§ = 0;
         §3"%§ = true;
         §-E§ = true;
         this.§ !b§ = param2;
         this.§]!%§ = param1;
         this.§`m§ = 0;
         this.§`Q§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §,W§(param1:b2DestructionListener) : void
      {
         this.§1<§ = param1;
      }
      
      public function §'!X§(param1:b2ContactFilter) : void
      {
         this.§`Q§.§&!W§ = param1;
      }
      
      public function §!k§(param1:b2ContactListener) : void
      {
         this.§`Q§.§>l§ = param1;
      }
      
      public function §]X§(param1:b2DebugDraw) : void
      {
         this.§ !W§ = param1;
      }
      
      public function §#§(param1:§5!u§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§5!u§ = this.§`Q§.§"V§;
         this.§`Q§.§"V§ = param1;
         var _loc3_:b2Body = this.§4m§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§%!y§;
            while(_loc4_)
            {
               _loc4_.§^!N§ = param1.§=!b§(_loc2_.dynamic(_loc4_.§^!N§),_loc4_);
               _loc4_ = _loc4_.§6!c§;
            }
            _loc3_ = _loc3_.§6!c§;
         }
      }
      
      public function §@2§() : void
      {
         this.§`Q§.§"V§.§@2§();
      }
      
      public function §7!W§() : int
      {
         return this.§`Q§.§"V§.§7!W§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§8=§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§,!>§ = null;
         _loc2_.§6!c§ = this.§4m§;
         if(this.§4m§)
         {
            this.§4m§.§,!>§ = _loc2_;
         }
         this.§4m§ = _loc2_;
         ++this.§1a§;
         return _loc2_;
      }
      
      public function §@W§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§8=§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§=!U§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.next;
            if(this.§1<§)
            {
               this.§1<§.§[!t§(_loc6_.§@P§);
            }
            this.§!U§(_loc6_.§@P§);
         }
         var _loc3_:b2ControllerEdge = param1.§8!@§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§"!f§;
            _loc7_.controller.§2!R§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§ if§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.next;
            this.§`Q§.§7!d§(_loc8_.§@"6§);
         }
         param1.§ if§ = null;
         var _loc5_:b2Fixture = param1.§%!y§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§6!c§;
            if(this.§1<§)
            {
               this.§1<§.§#"5§(_loc9_);
            }
            _loc9_.§4d§(this.§`Q§.§"V§);
            _loc9_.§7!d§();
         }
         param1.§%!y§ = null;
         param1.§3s§ = 0;
         if(param1.§,!>§)
         {
            param1.§,!>§.§6!c§ = param1.§6!c§;
         }
         if(param1.§6!c§)
         {
            param1.§6!c§.§,!>§ = param1.§,!>§;
         }
         if(param1 == this.§4m§)
         {
            this.§4m§ = param1.§6!c§;
         }
         --this.§1a§;
      }
      
      public function §>!g§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§'!D§(param1,null);
         _loc2_.§,!>§ = null;
         _loc2_.§6!c§ = this.§=!U§;
         if(this.§=!U§)
         {
            this.§=!U§.§,!>§ = _loc2_;
         }
         this.§=!U§ = _loc2_;
         ++this.§ !%§;
         _loc2_.§,!s§.§@P§ = _loc2_;
         _loc2_.§,!s§.§"l§ = _loc2_.§[!n§;
         _loc2_.§,!s§.§3!B§ = null;
         _loc2_.§,!s§.next = _loc2_.§9!F§.§=!U§;
         if(_loc2_.§9!F§.§=!U§)
         {
            _loc2_.§9!F§.§=!U§.§3!B§ = _loc2_.§,!s§;
         }
         _loc2_.§9!F§.§=!U§ = _loc2_.§,!s§;
         _loc2_.§9U§.§@P§ = _loc2_;
         _loc2_.§9U§.§"l§ = _loc2_.§9!F§;
         _loc2_.§9U§.§3!B§ = null;
         _loc2_.§9U§.next = _loc2_.§[!n§.§=!U§;
         if(_loc2_.§[!n§.§=!U§)
         {
            _loc2_.§[!n§.§=!U§.§3!B§ = _loc2_.§9U§;
         }
         _loc2_.§[!n§.§=!U§ = _loc2_.§9U§;
         var _loc3_:b2Body = param1.§9!w§;
         var _loc4_:b2Body = param1.§>!W§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§@d§();
            while(_loc5_)
            {
               if(_loc5_.§"l§ == _loc3_)
               {
                  _loc5_.§@"6§.§]!V§();
               }
               _loc5_ = _loc5_.next;
            }
         }
         return _loc2_;
      }
      
      public function §!U§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§ !,§;
         if(param1.§,!>§)
         {
            param1.§,!>§.§6!c§ = param1.§6!c§;
         }
         if(param1.§6!c§)
         {
            param1.§6!c§.§,!>§ = param1.§,!>§;
         }
         if(param1 == this.§=!U§)
         {
            this.§=!U§ = param1.§6!c§;
         }
         var _loc3_:b2Body = param1.§9!F§;
         var _loc4_:b2Body = param1.§[!n§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§,!s§.§3!B§)
         {
            param1.§,!s§.§3!B§.next = param1.§,!s§.next;
         }
         if(param1.§,!s§.next)
         {
            param1.§,!s§.next.§3!B§ = param1.§,!s§.§3!B§;
         }
         if(param1.§,!s§ == _loc3_.§=!U§)
         {
            _loc3_.§=!U§ = param1.§,!s§.next;
         }
         param1.§,!s§.§3!B§ = null;
         param1.§,!s§.next = null;
         if(param1.§9U§.§3!B§)
         {
            param1.§9U§.§3!B§.next = param1.§9U§.next;
         }
         if(param1.§9U§.next)
         {
            param1.§9U§.next.§3!B§ = param1.§9U§.§3!B§;
         }
         if(param1.§9U§ == _loc4_.§=!U§)
         {
            _loc4_.§=!U§ = param1.§9U§.next;
         }
         param1.§9U§.§3!B§ = null;
         param1.§9U§.next = null;
         b2Joint.§7!d§(param1,null);
         --this.§ !%§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§@d§();
            while(_loc5_)
            {
               if(_loc5_.§"l§ == _loc3_)
               {
                  _loc5_.§@"6§.§]!V§();
               }
               _loc5_ = _loc5_.next;
            }
         }
      }
      
      public function §&!8§(param1:b2Controller) : b2Controller
      {
         param1.§6!c§ = this.§8!@§;
         param1.§,!>§ = null;
         this.§8!@§ = param1;
         param1.m_world = this;
         ++this.§#k§;
         return param1;
      }
      
      public function §5Y§(param1:b2Controller) : void
      {
         if(param1.§,!>§)
         {
            param1.§,!>§.§6!c§ = param1.§6!c§;
         }
         if(param1.§6!c§)
         {
            param1.§6!c§.§,!>§ = param1.§,!>§;
         }
         if(this.§8!@§ == param1)
         {
            this.§8!@§ = param1.§6!c§;
         }
         --this.§#k§;
      }
      
      public function §8"#§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§6!c§ = this.§8!@§;
         param1.§,!>§ = null;
         if(this.§8!@§)
         {
            this.§8!@§.§,!>§ = param1;
         }
         this.§8!@§ = param1;
         ++this.§#k§;
         param1.m_world = this;
         return param1;
      }
      
      public function §""$§(param1:b2Controller) : void
      {
         param1.§7Y§();
         if(param1.§6!c§)
         {
            param1.§6!c§.§,!>§ = param1.§,!>§;
         }
         if(param1.§,!>§)
         {
            param1.§,!>§.§6!c§ = param1.§6!c§;
         }
         if(param1 == this.§8!@§)
         {
            this.§8!@§ = param1.§6!c§;
         }
         --this.§#k§;
      }
      
      public function §`!G§(param1:Boolean) : void
      {
         §3"%§ = param1;
      }
      
      public function §<!V§(param1:Boolean) : void
      {
         §-E§ = param1;
      }
      
      public function §@<§() : int
      {
         return this.§1a§;
      }
      
      public function §<2§() : int
      {
         return this.§ !%§;
      }
      
      public function §9W§() : int
      {
         return this.§^" §;
      }
      
      public function §<!K§(param1:b2Vec2) : void
      {
         this.§]!%§ = param1;
      }
      
      public function §2§() : b2Vec2
      {
         return this.§]!%§;
      }
      
      public function §]!J§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §5!I§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§1!h§ & §&i§)
         {
            this.§`Q§.§+!`§();
            this.§1!h§ &= ~§&i§;
         }
         this.§1!h§ |= §[?§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§"!n§ = param1;
         _loc4_.§]!X§ = param2;
         _loc4_.§5"2§ = param3;
         if(param1 > 0)
         {
            _loc4_.§=!9§ = 1 / param1;
         }
         else
         {
            _loc4_.§=!9§ = 0;
         }
         _loc4_.§`!s§ = this.§`m§ * param1;
         _loc4_.§-"'§ = §3"%§;
         this.§`Q§.§`!w§();
         if(_loc4_.§"!n§ > 0)
         {
            this.§`"5§(_loc4_);
         }
         if(§-E§ && _loc4_.§"!n§ > 0)
         {
            this.§04§(_loc4_);
         }
         if(_loc4_.§"!n§ > 0)
         {
            this.§`m§ = _loc4_.§=!9§;
         }
         this.§1!h§ &= ~§[?§;
      }
      
      public function §3W§() : void
      {
         var _loc1_:b2Body = this.§4m§;
         while(_loc1_)
         {
            _loc1_.§6",§.§>![§();
            _loc1_.§?!u§ = 0;
            _loc1_ = _loc1_.§6!c§;
         }
      }
      
      public function §@U§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§5!u§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§ !W§ == null)
         {
            return;
         }
         this.§ !W§.§@! §.graphics.clear();
         var _loc1_:uint = this.§ !W§.§`!?§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§5!j§)
         {
            _loc3_ = this.§4m§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§>!-§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§"!h§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§4!v§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§"!h§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§4!v§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§"!h§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§"!h§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§"!h§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§6!c§;
               }
               _loc3_ = _loc3_.§6!c§;
            }
         }
         if(_loc1_ & b2DebugDraw.§7!8§)
         {
            _loc6_ = this.§=!U§;
            while(_loc6_)
            {
               this.§9!d§(_loc6_);
               _loc6_ = _loc6_.§6!c§;
            }
         }
         if(_loc1_ & b2DebugDraw.§6o§)
         {
            _loc16_ = this.§8!@§;
            while(_loc16_)
            {
               _loc16_.§&!I§(this.§ !W§);
               _loc16_ = _loc16_.§6!c§;
            }
         }
         if(_loc1_ & b2DebugDraw.§9§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§`Q§.§ if§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§6!'§();
               _loc19_ = _loc17_.§]O§();
               _loc20_ = _loc18_.§5=§().§!!<§();
               _loc21_ = _loc19_.§5=§().§!!<§();
               this.§ !W§.§9!U§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§2!9§();
            }
         }
         if(_loc1_ & b2DebugDraw.§;"-§)
         {
            _loc7_ = this.§`Q§.§"V§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§4m§;
            while(_loc3_)
            {
               if(_loc3_.§>!-§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.dynamic(_loc4_.§^!N§);
                     _loc14_[0].Set(_loc22_.§&1§.x,_loc22_.§&1§.y);
                     _loc14_[1].Set(_loc22_.§3!E§.x,_loc22_.§&1§.y);
                     _loc14_[2].Set(_loc22_.§3!E§.x,_loc22_.§3!E§.y);
                     _loc14_[3].Set(_loc22_.§&1§.x,_loc22_.§3!E§.y);
                     this.§ !W§.§&!,§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§2!9§();
                  }
               }
               _loc3_ = _loc3_.§2!9§();
            }
         }
         if(_loc1_ & b2DebugDraw.§&!C§)
         {
            _loc3_ = this.§4m§;
            while(_loc3_)
            {
               (_loc11_ = §>!Q§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§#!Y§();
               this.§ !W§.§^c§(_loc11_);
               _loc3_ = _loc3_.§6!c§;
            }
         }
      }
      
      public function §;G§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§5!u§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§`Q§.§"V§;
         broadPhase.§^C§(WorldQueryWrapper,aabb);
      }
      
      public function §!"8§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§5!u§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§4I§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§%X§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§^!-§();
         }
         broadPhase = this.§`Q§.§"V§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§^C§(WorldQueryWrapper,aabb);
      }
      
      public function §]!u§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§5!u§ = null;
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
         broadPhase = this.§`Q§.§"V§;
         var aabb:b2AABB = new b2AABB();
         aabb.§&1§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§3!E§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§^C§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§5!u§ = null;
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
            return param1.§9!Y§;
         };
         broadPhase = this.§`Q§.§"V§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §^!H§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §!!e§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §#"1§() : b2Body
      {
         return this.§4m§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§=!U§;
      }
      
      public function §@d§() : b2Contact
      {
         return this.§ if§;
      }
      
      public function §8=§() : Boolean
      {
         return (this.§1!h§ & §[?§) > 0;
      }
      
      b2internal function §`"5§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§8!@§;
         while(_loc3_)
         {
            _loc3_.§5!I§(param1);
            _loc3_ = _loc3_.§6!c§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§`!p§).§6R§(this.§1a§,this.§^" §,this.§ !%§,null,this.§`Q§.§>l§,this.§^_§);
         _loc2_ = this.§4m§;
         while(_loc2_)
         {
            _loc2_.§1!h§ &= ~b2Body.§@F§;
            _loc2_ = _loc2_.§6!c§;
         }
         var _loc5_:b2Contact = this.§ if§;
         while(_loc5_)
         {
            _loc5_.§1!h§ &= ~b2Contact.§@F§;
            _loc5_ = _loc5_.§6!c§;
         }
         var _loc6_:b2Joint = this.§=!U§;
         while(_loc6_)
         {
            _loc6_.§2?§ = false;
            _loc6_ = _loc6_.§6!c§;
         }
         var _loc7_:int = this.§1a§;
         var _loc8_:Vector.<b2Body> = this.§%!6§;
         var _loc9_:b2Body = this.§4m§;
         while(_loc9_)
         {
            if(!(_loc9_.§1!h§ & b2Body.§@F§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§>!-§() == false))
               {
                  if(_loc9_.§4!v§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§7Y§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§1!h§ |= b2Body.§@F§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§#!K§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§4!v§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§ if§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§@"6§.§1!h§ & b2Contact.§@F§))
                              {
                                 if(!(_loc13_.§@"6§.§5!V§() == true || _loc13_.§@"6§.§7^§() == false || _loc13_.§@"6§.§>k§() == false))
                                 {
                                    _loc4_.§'<§(_loc13_.§@"6§);
                                    _loc13_.§@"6§.§1!h§ |= b2Contact.§@F§;
                                    if(!((_loc12_ = _loc13_.§"l§).§1!h§ & b2Body.§@F§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§1!h§ |= b2Body.§@F§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.next;
                           }
                           _loc14_ = _loc2_.§=!U§;
                           while(_loc14_)
                           {
                              if(_loc14_.§@P§.§2?§ != true)
                              {
                                 if((_loc12_ = _loc14_.§"l§).§>!-§() != false)
                                 {
                                    _loc4_.§<>§(_loc14_.§@P§);
                                    _loc14_.§@P§.§2?§ = true;
                                    if(!(_loc12_.§1!h§ & b2Body.§@F§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§1!h§ |= b2Body.§@F§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.next;
                           }
                        }
                     }
                     _loc4_.§`"5§(param1,this.§]!%§,this.§ !b§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§1a§)
                     {
                        _loc2_ = _loc4_.§1!]§[_loc11_];
                        if(_loc2_.§4!v§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§1!h§ &= ~b2Body.§@F§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§6!c§;
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
         _loc2_ = this.§4m§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§>!-§() == false))
            {
               if(_loc2_.§4!v§() != b2Body.b2_staticBody)
               {
                  _loc2_.§+!c§();
               }
            }
            _loc2_ = _loc2_.§6!c§;
         }
         this.§`Q§.§+!`§();
      }
      
      b2internal function §04§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§`!p§).§6R§(this.§1a§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§`Q§.§>l§,this.§^_§);
         var _loc10_:Vector.<b2Body> = §0!v§;
         _loc2_ = this.§4m§;
         while(_loc2_)
         {
            _loc2_.§1!h§ &= ~b2Body.§@F§;
            _loc2_.m_sweep.§+!U§ = 0;
            _loc2_ = _loc2_.§6!c§;
         }
         _loc11_ = this.§ if§;
         while(_loc11_)
         {
            _loc11_.§1!h§ &= ~(b2Contact.§+!L§ | b2Contact.§@F§);
            _loc11_.§%!U§ = 1;
            _loc11_ = _loc11_.§6!c§;
         }
         _loc8_ = this.§=!U§;
         while(_loc8_)
         {
            _loc8_.§2?§ = false;
            _loc8_ = _loc8_.§6!c§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§ if§;
            for(; _loc11_; _loc11_ = _loc11_.§6!c§)
            {
               if(!(_loc11_.§5!V§() == true || _loc11_.§7^§() == false || _loc11_.§@M§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§1!h§ & b2Contact.§+!L§)
                  {
                     _loc19_ = _loc11_.§%!U§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§2!k§;
                     _loc4_ = _loc11_.§4!l§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§4!v§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§4!v§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§+!U§;
                     if(_loc5_.m_sweep.§+!U§ < _loc6_.m_sweep.§+!U§)
                     {
                        _loc20_ = _loc6_.m_sweep.§+!U§;
                        _loc5_.m_sweep.§!&§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§+!U§ < _loc5_.m_sweep.§+!U§)
                     {
                        _loc20_ = _loc5_.m_sweep.§+!U§;
                        _loc6_.m_sweep.§!&§(_loc20_);
                     }
                     _loc19_ = _loc11_.§'>§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§%!U§ = _loc19_;
                     _loc11_.§1!h§ |= b2Contact.§+!L§;
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
            _loc3_ = _loc12_.§2!k§;
            _loc4_ = _loc12_.§4!l§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §each §.Set(_loc5_.m_sweep);
            §!!`§.Set(_loc6_.m_sweep);
            _loc5_.§!&§(_loc13_);
            _loc6_.§!&§(_loc13_);
            _loc12_.§%3§(this.§`Q§.§>l§);
            _loc12_.§1!h§ &= ~b2Contact.§+!L§;
            if(_loc12_.§5!V§() == true || _loc12_.§7^§() == false)
            {
               _loc5_.m_sweep.Set(§each §);
               _loc6_.m_sweep.Set(§!!`§);
               _loc5_.§+!X§();
               _loc6_.§+!X§();
            }
            else if(_loc12_.§>k§() != false)
            {
               if((_loc14_ = _loc5_).§4!v§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§7Y§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§1!h§ |= b2Body.§@F§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§#!K§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§4!v§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§ if§;
                     while(_loc7_)
                     {
                        if(_loc9_.§^" § == _loc9_.§>J§)
                        {
                           break;
                        }
                        if(!(_loc7_.§@"6§.§1!h§ & b2Contact.§@F§))
                        {
                           if(!(_loc7_.§@"6§.§5!V§() == true || _loc7_.§@"6§.§7^§() == false || _loc7_.§@"6§.§>k§() == false))
                           {
                              _loc9_.§'<§(_loc7_.§@"6§);
                              _loc7_.§@"6§.§1!h§ |= b2Contact.§@F§;
                              if(!((_loc22_ = _loc7_.§"l§).§1!h§ & b2Body.§@F§))
                              {
                                 if(_loc22_.§4!v§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§!&§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§1!h§ |= b2Body.§@F§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.next;
                     }
                     _loc21_ = _loc2_.§=!U§;
                     while(_loc21_)
                     {
                        if(_loc9_.§ !%§ != _loc9_.§3y§)
                        {
                           if(_loc21_.§@P§.§2?§ != true)
                           {
                              if((_loc22_ = _loc21_.§"l§).§>!-§() != false)
                              {
                                 _loc9_.§<>§(_loc21_.§@P§);
                                 _loc21_.§@P§.§2?§ = true;
                                 if(!(_loc22_.§1!h§ & b2Body.§@F§))
                                 {
                                    if(_loc22_.§4!v§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§!&§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§1!h§ |= b2Body.§@F§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.next;
                     }
                  }
               }
               (_loc17_ = §4!^§).§-"'§ = false;
               _loc17_.§"!n§ = (1 - _loc13_) * param1.§"!n§;
               _loc17_.§=!9§ = 1 / _loc17_.§"!n§;
               _loc17_.§`!s§ = 1;
               _loc17_.§]!X§ = param1.§]!X§;
               _loc17_.§5"2§ = param1.§5"2§;
               _loc9_.§04§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§1a§)
               {
                  _loc2_ = _loc9_.§1!]§[_loc18_];
                  _loc2_.§1!h§ &= ~b2Body.§@F§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§4!v§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§+!c§();
                        _loc7_ = _loc2_.§ if§;
                        while(_loc7_)
                        {
                           _loc7_.§@"6§.§1!h§ &= ~b2Contact.§+!L§;
                           _loc7_ = _loc7_.next;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§^" §)
               {
                  _loc11_ = _loc9_.§]J§[_loc18_];
                  _loc11_.§1!h§ &= ~(b2Contact.§+!L§ | b2Contact.§@F§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§ !%§)
               {
                  (_loc8_ = _loc9_.§@I§[_loc18_]).§2?§ = false;
                  _loc18_++;
               }
               this.§`Q§.§+!`§();
            }
         }
      }
      
      b2internal function §9!d§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§>!y§();
         var _loc3_:b2Body = param1.§5!0§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §0S§;
         switch(param1.§5Q§)
         {
            case b2Joint.§4!-§:
               this.§ !W§.§9!U§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§1!P§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§0!g§();
               _loc13_ = _loc11_.§?3§();
               this.§ !W§.§9!U§(_loc12_,_loc8_,_loc10_);
               this.§ !W§.§9!U§(_loc13_,_loc9_,_loc10_);
               this.§ !W§.§9!U§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§@!Q§:
               this.§ !W§.§9!U§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§ !W§.§9!U§(_loc6_,_loc8_,_loc10_);
               }
               this.§ !W§.§9!U§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§ !W§.§9!U§(_loc7_,_loc9_,_loc10_);
               }
         }
      }
      
      b2internal function §"!h§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§5Q§)
         {
            case b2Shape.§+!B§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§#@§(param2,_loc4_.§[N§);
               _loc6_ = _loc4_.§>!M§;
               _loc7_ = param2.R.col1;
               this.§ !W§.§7H§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§3!;§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§@!D§();
               _loc11_ = _loc9_.§;!r§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§#@§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§ !W§.§,X§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§ 8§:
               _loc13_ = param1 as b2EdgeShape;
               this.§ !W§.§9!U§(b2Math.§#@§(param2,_loc13_.GetVertex1()),b2Math.§#@§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

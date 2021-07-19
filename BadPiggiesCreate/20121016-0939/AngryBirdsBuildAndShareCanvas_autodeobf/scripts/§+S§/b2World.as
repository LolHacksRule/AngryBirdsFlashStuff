package §+S§
{
   import § !V§.*;
   import §"!9§.*;
   import §2"=§.*;
   import §5!o§.*;
   import §;T§.*;
   import §=!z§.b2Controller;
   import §=!z§.b2ControllerEdge;
   import §=o§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §'!7§:b2Transform = new b2Transform();
      
      private static var §9V§:b2Sweep = new b2Sweep();
      
      private static var §&n§:b2Sweep = new b2Sweep();
      
      private static var §"'§:b2TimeStep = new b2TimeStep();
      
      private static var §@!Y§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §?W§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §^!T§:Boolean;
      
      private static var §[!^§:Boolean;
      
      public static const §;!4§:int = 1;
      
      public static const §'!X§:int = 2;
       
      
      private var §?r§:Vector.<b2Body>;
      
      b2internal var §`"8§:int;
      
      b2internal var §&!L§:b2ContactManager;
      
      private var § !"§:b2ContactSolver;
      
      private var §-!h§:b2Island;
      
      b2internal var §03§:b2Body;
      
      private var §-y§:b2Joint;
      
      b2internal var §]8§:b2Contact;
      
      private var §&z§:int;
      
      b2internal var §3!Z§:int;
      
      private var §,i§:int;
      
      private var §!n§:b2Controller;
      
      private var §;"<§:int;
      
      private var §%!S§:b2Vec2;
      
      private var §-!T§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §@"7§:b2DestructionListener;
      
      private var §0"!§:b2DebugDraw;
      
      private var §>";§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§?r§ = new Vector.<b2Body>();
         this.§&!L§ = new b2ContactManager();
         this.§ !"§ = new b2ContactSolver();
         this.§-!h§ = new b2Island();
         super();
         this.§@"7§ = null;
         this.§0"!§ = null;
         this.§03§ = null;
         this.§]8§ = null;
         this.§-y§ = null;
         this.§!n§ = null;
         this.§&z§ = 0;
         this.§3!Z§ = 0;
         this.§,i§ = 0;
         this.§;"<§ = 0;
         §^!T§ = true;
         §[!^§ = true;
         this.§-!T§ = param2;
         this.§%!S§ = param1;
         this.§>";§ = 0;
         this.§&!L§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§6!E§(_loc3_);
      }
      
      public function §-K§(param1:b2DestructionListener) : void
      {
         this.§@"7§ = param1;
      }
      
      public function §'!#§(param1:b2ContactFilter) : void
      {
         this.§&!L§.§"!V§ = param1;
      }
      
      public function §@"8§(param1:b2ContactListener) : void
      {
         this.§&!L§.§@<§ = param1;
      }
      
      public function §0!o§(param1:b2DebugDraw) : void
      {
         this.§0"!§ = param1;
      }
      
      public function §]!H§(param1:§#!M§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§#!M§ = this.§&!L§.§9n§;
         this.§&!L§.§9n§ = param1;
         var _loc3_:b2Body = this.§03§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§&f§;
            while(_loc4_)
            {
               _loc4_.§-!]§ = param1.§>!#§(_loc2_.§1c§(_loc4_.§-!]§),_loc4_);
               _loc4_ = _loc4_.§>""§;
            }
            _loc3_ = _loc3_.§>""§;
         }
      }
      
      public function §6! §() : void
      {
         this.§&!L§.§9n§.§6! §();
      }
      
      public function §;"=§() : int
      {
         return this.§&!L§.§9n§.§;"=§();
      }
      
      public function §6!E§(param1:b2BodyDef) : b2Body
      {
         if(this.§=W§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§7b§ = null;
         _loc2_.§>""§ = this.§03§;
         if(this.§03§)
         {
            this.§03§.§7b§ = _loc2_;
         }
         this.§03§ = _loc2_;
         ++this.§&z§;
         return _loc2_;
      }
      
      public function §0!k§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§=W§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§-y§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§9!V§;
            if(this.§@"7§)
            {
               this.§@"7§.§ !b§(_loc6_.§?!'§);
            }
            this.§%!A§(_loc6_.§?!'§);
         }
         var _loc3_:b2ControllerEdge = param1.§!n§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§=t§;
            _loc7_.§#H§.§-A§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§]8§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§9!V§;
            this.§&!L§.§;&§(_loc8_.§3w§);
         }
         param1.§]8§ = null;
         var _loc5_:b2Fixture = param1.§&f§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§>""§;
            if(this.§@"7§)
            {
               this.§@"7§.§7!W§(_loc9_);
            }
            _loc9_.§`4§(this.§&!L§.§9n§);
            _loc9_.§;&§();
         }
         param1.§&f§ = null;
         param1.§+w§ = 0;
         if(param1.§7b§)
         {
            param1.§7b§.§>""§ = param1.§>""§;
         }
         if(param1.§>""§)
         {
            param1.§>""§.§7b§ = param1.§7b§;
         }
         if(param1 == this.§03§)
         {
            this.§03§ = param1.§>""§;
         }
         --this.§&z§;
      }
      
      public function §[?§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§-!x§(param1,null);
         _loc2_.§7b§ = null;
         _loc2_.§>""§ = this.§-y§;
         if(this.§-y§)
         {
            this.§-y§.§7b§ = _loc2_;
         }
         this.§-y§ = _loc2_;
         ++this.§,i§;
         _loc2_.§%;§.§?!'§ = _loc2_;
         _loc2_.§%;§.§!!m§ = _loc2_.§ `§;
         _loc2_.§%;§.§["'§ = null;
         _loc2_.§%;§.§9!V§ = _loc2_.§0"7§.§-y§;
         if(_loc2_.§0"7§.§-y§)
         {
            _loc2_.§0"7§.§-y§.§["'§ = _loc2_.§%;§;
         }
         _loc2_.§0"7§.§-y§ = _loc2_.§%;§;
         _loc2_.§!4§.§?!'§ = _loc2_;
         _loc2_.§!4§.§!!m§ = _loc2_.§0"7§;
         _loc2_.§!4§.§["'§ = null;
         _loc2_.§!4§.§9!V§ = _loc2_.§ `§.§-y§;
         if(_loc2_.§ `§.§-y§)
         {
            _loc2_.§ `§.§-y§.§["'§ = _loc2_.§!4§;
         }
         _loc2_.§ `§.§-y§ = _loc2_.§!4§;
         var _loc3_:b2Body = param1.§@!<§;
         var _loc4_:b2Body = param1.§3j§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§4!T§();
            while(_loc5_)
            {
               if(_loc5_.§!!m§ == _loc3_)
               {
                  _loc5_.§3w§.§6L§();
               }
               _loc5_ = _loc5_.§9!V§;
            }
         }
         return _loc2_;
      }
      
      public function §%!A§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§1!-§;
         if(param1.§7b§)
         {
            param1.§7b§.§>""§ = param1.§>""§;
         }
         if(param1.§>""§)
         {
            param1.§>""§.§7b§ = param1.§7b§;
         }
         if(param1 == this.§-y§)
         {
            this.§-y§ = param1.§>""§;
         }
         var _loc3_:b2Body = param1.§0"7§;
         var _loc4_:b2Body = param1.§ `§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§%;§.§["'§)
         {
            param1.§%;§.§["'§.§9!V§ = param1.§%;§.§9!V§;
         }
         if(param1.§%;§.§9!V§)
         {
            param1.§%;§.§9!V§.§["'§ = param1.§%;§.§["'§;
         }
         if(param1.§%;§ == _loc3_.§-y§)
         {
            _loc3_.§-y§ = param1.§%;§.§9!V§;
         }
         param1.§%;§.§["'§ = null;
         param1.§%;§.§9!V§ = null;
         if(param1.§!4§.§["'§)
         {
            param1.§!4§.§["'§.§9!V§ = param1.§!4§.§9!V§;
         }
         if(param1.§!4§.§9!V§)
         {
            param1.§!4§.§9!V§.§["'§ = param1.§!4§.§["'§;
         }
         if(param1.§!4§ == _loc4_.§-y§)
         {
            _loc4_.§-y§ = param1.§!4§.§9!V§;
         }
         param1.§!4§.§["'§ = null;
         param1.§!4§.§9!V§ = null;
         b2Joint.§;&§(param1,null);
         --this.§,i§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§4!T§();
            while(_loc5_)
            {
               if(_loc5_.§!!m§ == _loc3_)
               {
                  _loc5_.§3w§.§6L§();
               }
               _loc5_ = _loc5_.§9!V§;
            }
         }
      }
      
      public function §>!0§(param1:b2Controller) : b2Controller
      {
         param1.§>""§ = this.§!n§;
         param1.§7b§ = null;
         this.§!n§ = param1;
         param1.m_world = this;
         ++this.§;"<§;
         return param1;
      }
      
      public function §[M§(param1:b2Controller) : void
      {
         if(param1.§7b§)
         {
            param1.§7b§.§>""§ = param1.§>""§;
         }
         if(param1.§>""§)
         {
            param1.§>""§.§7b§ = param1.§7b§;
         }
         if(this.§!n§ == param1)
         {
            this.§!n§ = param1.§>""§;
         }
         --this.§;"<§;
      }
      
      public function §@j§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§>""§ = this.§!n§;
         param1.§7b§ = null;
         if(this.§!n§)
         {
            this.§!n§.§7b§ = param1;
         }
         this.§!n§ = param1;
         ++this.§;"<§;
         param1.m_world = this;
         return param1;
      }
      
      public function §8!=§(param1:b2Controller) : void
      {
         param1.§^S§();
         if(param1.§>""§)
         {
            param1.§>""§.§7b§ = param1.§7b§;
         }
         if(param1.§7b§)
         {
            param1.§7b§.§>""§ = param1.§>""§;
         }
         if(param1 == this.§!n§)
         {
            this.§!n§ = param1.§>""§;
         }
         --this.§;"<§;
      }
      
      public function §+"7§(param1:Boolean) : void
      {
         §^!T§ = param1;
      }
      
      public function §-M§(param1:Boolean) : void
      {
         §[!^§ = param1;
      }
      
      public function §1!S§() : int
      {
         return this.§&z§;
      }
      
      public function §6">§() : int
      {
         return this.§,i§;
      }
      
      public function § !%§() : int
      {
         return this.§3!Z§;
      }
      
      public function §8!W§(param1:b2Vec2) : void
      {
         this.§%!S§ = param1;
      }
      
      public function §9F§() : b2Vec2
      {
         return this.§%!S§;
      }
      
      public function §<X§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §+!M§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§`"8§ & §;!4§)
         {
            this.§&!L§.§+"-§();
            this.§`"8§ &= ~§;!4§;
         }
         this.§`"8§ |= §'!X§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§+z§ = param1;
         _loc4_.§?l§ = param2;
         _loc4_.§@!C§ = param3;
         if(param1 > 0)
         {
            _loc4_.§1!4§ = 1 / param1;
         }
         else
         {
            _loc4_.§1!4§ = 0;
         }
         _loc4_.§<3§ = this.§>";§ * param1;
         _loc4_.§1!w§ = §^!T§;
         this.§&!L§.§1!]§();
         if(_loc4_.§+z§ > 0)
         {
            this.§=F§(_loc4_);
         }
         if(§[!^§ && _loc4_.§+z§ > 0)
         {
            this.§!!a§(_loc4_);
         }
         if(_loc4_.§+z§ > 0)
         {
            this.§>";§ = _loc4_.§1!4§;
         }
         this.§`"8§ &= ~§'!X§;
      }
      
      public function §"!^§() : void
      {
         var _loc1_:b2Body = this.§03§;
         while(_loc1_)
         {
            _loc1_.§2!d§.§@!s§();
            _loc1_.§?6§ = 0;
            _loc1_ = _loc1_.§>""§;
         }
      }
      
      public function §^p§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§#!M§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§0"!§ == null)
         {
            return;
         }
         this.§0"!§.§'y§.graphics.clear();
         var _loc1_:uint = this.§0"!§.§8!0§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§9<§)
         {
            _loc3_ = this.§03§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§9!9§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§=u§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§+!O§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§=u§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§+!O§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§=u§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§=u§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§=u§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§>""§;
               }
               _loc3_ = _loc3_.§>""§;
            }
         }
         if(_loc1_ & b2DebugDraw.§=f§)
         {
            _loc6_ = this.§-y§;
            while(_loc6_)
            {
               this.§5!M§(_loc6_);
               _loc6_ = _loc6_.§>""§;
            }
         }
         if(_loc1_ & b2DebugDraw.§#V§)
         {
            _loc16_ = this.§!n§;
            while(_loc16_)
            {
               _loc16_.§=d§(this.§0"!§);
               _loc16_ = _loc16_.§>""§;
            }
         }
         if(_loc1_ & b2DebugDraw.§^!$§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§&!L§.§]8§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§=!'§();
               _loc19_ = _loc17_.§&O§();
               _loc20_ = _loc18_.§1!^§().§]t§();
               _loc21_ = _loc19_.§1!^§().§]t§();
               this.§0"!§.§3!`§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§'!q§();
            }
         }
         if(_loc1_ & b2DebugDraw.§ " §)
         {
            _loc7_ = this.§&!L§.§9n§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§03§;
            while(_loc3_)
            {
               if(_loc3_.§9!9§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§1c§(_loc4_.§-!]§);
                     _loc14_[0].Set(_loc22_.§8! §.x,_loc22_.§8! §.y);
                     _loc14_[1].Set(_loc22_.§;R§.x,_loc22_.§8! §.y);
                     _loc14_[2].Set(_loc22_.§;R§.x,_loc22_.§;R§.y);
                     _loc14_[3].Set(_loc22_.§8! §.x,_loc22_.§;R§.y);
                     this.§0"!§.§^g§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§'!q§();
                  }
               }
               _loc3_ = _loc3_.§'!q§();
            }
         }
         if(_loc1_ & b2DebugDraw.§4!=§)
         {
            _loc3_ = this.§03§;
            while(_loc3_)
            {
               (_loc11_ = §'!7§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§=!q§();
               this.§0"!§.§,S§(_loc11_);
               _loc3_ = _loc3_.§>""§;
            }
         }
      }
      
      public function §,n§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§#!M§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§&!L§.§9n§;
         broadPhase.§'!!§(WorldQueryWrapper,aabb);
      }
      
      public function §"!I§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§#!M§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§;c§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§?^§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§,`§();
         }
         broadPhase = this.§&!L§.§9n§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§'!!§(WorldQueryWrapper,aabb);
      }
      
      public function §?x§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§#!M§ = null;
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
         broadPhase = this.§&!L§.§9n§;
         var aabb:b2AABB = new b2AABB();
         aabb.§8! §.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§;R§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§'!!§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§#!M§ = null;
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
            return param1.§8"!§;
         };
         broadPhase = this.§&!L§.§9n§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §]!j§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §@!V§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §6"$§() : b2Body
      {
         return this.§03§;
      }
      
      public function §>!`§() : b2Joint
      {
         return this.§-y§;
      }
      
      public function §4!T§() : b2Contact
      {
         return this.§]8§;
      }
      
      public function §=W§() : Boolean
      {
         return (this.§`"8§ & §'!X§) > 0;
      }
      
      b2internal function §=F§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§!n§;
         while(_loc3_)
         {
            _loc3_.§+!M§(param1);
            _loc3_ = _loc3_.§>""§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§-!h§).§1o§(this.§&z§,this.§3!Z§,this.§,i§,null,this.§&!L§.§@<§,this.§ !"§);
         _loc2_ = this.§03§;
         while(_loc2_)
         {
            _loc2_.§`"8§ &= ~b2Body.§`Y§;
            _loc2_ = _loc2_.§>""§;
         }
         var _loc5_:b2Contact = this.§]8§;
         while(_loc5_)
         {
            _loc5_.§`"8§ &= ~b2Contact.§`Y§;
            _loc5_ = _loc5_.§>""§;
         }
         var _loc6_:b2Joint = this.§-y§;
         while(_loc6_)
         {
            _loc6_.§`!s§ = false;
            _loc6_ = _loc6_.§>""§;
         }
         var _loc7_:int = this.§&z§;
         var _loc8_:Vector.<b2Body> = this.§?r§;
         var _loc9_:b2Body = this.§03§;
         while(_loc9_)
         {
            if(!(_loc9_.§`"8§ & b2Body.§`Y§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§9!9§() == false))
               {
                  if(_loc9_.§+!O§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§^S§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§`"8§ |= b2Body.§`Y§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§"[§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§+!O§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§]8§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§3w§.§`"8§ & b2Contact.§`Y§))
                              {
                                 if(!(_loc13_.§3w§.§]!h§() == true || _loc13_.§3w§.§@k§() == false || _loc13_.§3w§.§%!1§() == false))
                                 {
                                    _loc4_.§2"2§(_loc13_.§3w§);
                                    _loc13_.§3w§.§`"8§ |= b2Contact.§`Y§;
                                    if(!((_loc12_ = _loc13_.§!!m§).§`"8§ & b2Body.§`Y§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§`"8§ |= b2Body.§`Y§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§9!V§;
                           }
                           _loc14_ = _loc2_.§-y§;
                           while(_loc14_)
                           {
                              if(_loc14_.§?!'§.§`!s§ != true)
                              {
                                 if((_loc12_ = _loc14_.§!!m§).§9!9§() != false)
                                 {
                                    _loc4_.§6E§(_loc14_.§?!'§);
                                    _loc14_.§?!'§.§`!s§ = true;
                                    if(!(_loc12_.§`"8§ & b2Body.§`Y§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§`"8§ |= b2Body.§`Y§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§9!V§;
                           }
                        }
                     }
                     _loc4_.§=F§(param1,this.§%!S§,this.§-!T§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§&z§)
                     {
                        _loc2_ = _loc4_.§;!j§[_loc11_];
                        if(_loc2_.§+!O§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§`"8§ &= ~b2Body.§`Y§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§>""§;
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
         _loc2_ = this.§03§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§9!9§() == false))
            {
               if(_loc2_.§+!O§() != b2Body.b2_staticBody)
               {
                  _loc2_.§1"4§();
               }
            }
            _loc2_ = _loc2_.§>""§;
         }
         this.§&!L§.§+"-§();
      }
      
      b2internal function §!!a§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§-!h§).§1o§(this.§&z§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§&!L§.§@<§,this.§ !"§);
         var _loc10_:Vector.<b2Body> = §@!Y§;
         _loc2_ = this.§03§;
         while(_loc2_)
         {
            _loc2_.§`"8§ &= ~b2Body.§`Y§;
            _loc2_.m_sweep.§`!e§ = 0;
            _loc2_ = _loc2_.§>""§;
         }
         _loc11_ = this.§]8§;
         while(_loc11_)
         {
            _loc11_.§`"8§ &= ~(b2Contact.§7!0§ | b2Contact.§`Y§);
            _loc11_ = _loc11_.§>""§;
         }
         _loc8_ = this.§-y§;
         while(_loc8_)
         {
            _loc8_.§`!s§ = false;
            _loc8_ = _loc8_.§>""§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§]8§;
            for(; _loc11_; _loc11_ = _loc11_.§>""§)
            {
               if(!(_loc11_.§]!h§() == true || _loc11_.§@k§() == false || _loc11_.§7!&§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§`"8§ & b2Contact.§7!0§)
                  {
                     _loc19_ = _loc11_.§0"2§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§5"$§;
                     _loc4_ = _loc11_.dynamic;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§+!O§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§+!O§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§`!e§;
                     if(_loc5_.m_sweep.§`!e§ < _loc6_.m_sweep.§`!e§)
                     {
                        _loc20_ = _loc6_.m_sweep.§`!e§;
                        _loc5_.m_sweep.§-9§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§`!e§ < _loc5_.m_sweep.§`!e§)
                     {
                        _loc20_ = _loc5_.m_sweep.§`!e§;
                        _loc6_.m_sweep.§-9§(_loc20_);
                     }
                     _loc19_ = _loc11_.§!Q§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§0"2§ = _loc19_;
                     _loc11_.§`"8§ |= b2Contact.§7!0§;
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
            _loc3_ = _loc12_.§5"$§;
            _loc4_ = _loc12_.dynamic;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §9V§.Set(_loc5_.m_sweep);
            §&n§.Set(_loc6_.m_sweep);
            _loc5_.§-9§(_loc13_);
            _loc6_.§-9§(_loc13_);
            _loc12_.§?L§(this.§&!L§.§@<§);
            _loc12_.§`"8§ &= ~b2Contact.§7!0§;
            if(_loc12_.§]!h§() == true || _loc12_.§@k§() == false)
            {
               _loc5_.m_sweep.Set(§9V§);
               _loc6_.m_sweep.Set(§&n§);
               _loc5_.§#!k§();
               _loc6_.§#!k§();
            }
            else if(_loc12_.§%!1§() != false)
            {
               if((_loc14_ = _loc5_).§+!O§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§^S§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§`"8§ |= b2Body.§`Y§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§"[§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§+!O§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§]8§;
                     while(_loc7_)
                     {
                        if(_loc9_.§3!Z§ == _loc9_.§]";§)
                        {
                           break;
                        }
                        if(!(_loc7_.§3w§.§`"8§ & b2Contact.§`Y§))
                        {
                           if(!(_loc7_.§3w§.§]!h§() == true || _loc7_.§3w§.§@k§() == false || _loc7_.§3w§.§%!1§() == false))
                           {
                              _loc9_.§2"2§(_loc7_.§3w§);
                              _loc7_.§3w§.§`"8§ |= b2Contact.§`Y§;
                              if(!((_loc22_ = _loc7_.§!!m§).§`"8§ & b2Body.§`Y§))
                              {
                                 if(_loc22_.§+!O§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§-9§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§`"8§ |= b2Body.§`Y§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§9!V§;
                     }
                     _loc21_ = _loc2_.§-y§;
                     while(_loc21_)
                     {
                        if(_loc9_.§,i§ != _loc9_.§]!n§)
                        {
                           if(_loc21_.§?!'§.§`!s§ != true)
                           {
                              if((_loc22_ = _loc21_.§!!m§).§9!9§() != false)
                              {
                                 _loc9_.§6E§(_loc21_.§?!'§);
                                 _loc21_.§?!'§.§`!s§ = true;
                                 if(!(_loc22_.§`"8§ & b2Body.§`Y§))
                                 {
                                    if(_loc22_.§+!O§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§-9§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§`"8§ |= b2Body.§`Y§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§9!V§;
                     }
                  }
               }
               (_loc17_ = §"'§).§1!w§ = false;
               _loc17_.§+z§ = (1 - _loc13_) * param1.§+z§;
               _loc17_.§1!4§ = 1 / _loc17_.§+z§;
               _loc17_.§<3§ = 0;
               _loc17_.§?l§ = param1.§?l§;
               _loc17_.§@!C§ = param1.§@!C§;
               _loc9_.§!!a§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§&z§)
               {
                  _loc2_ = _loc9_.§;!j§[_loc18_];
                  _loc2_.§`"8§ &= ~b2Body.§`Y§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§+!O§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§1"4§();
                        _loc7_ = _loc2_.§]8§;
                        while(_loc7_)
                        {
                           _loc7_.§3w§.§`"8§ &= ~b2Contact.§7!0§;
                           _loc7_ = _loc7_.§9!V§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§3!Z§)
               {
                  _loc11_ = _loc9_.§1f§[_loc18_];
                  _loc11_.§`"8§ &= ~(b2Contact.§7!0§ | b2Contact.§`Y§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§,i§)
               {
                  (_loc8_ = _loc9_.§4!L§[_loc18_]).§`!s§ = false;
                  _loc18_++;
               }
               this.§&!L§.§+"-§();
            }
         }
      }
      
      b2internal function §5!M§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§]"$§();
         var _loc3_:b2Body = param1.§5v§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §?W§;
         switch(param1.§="1§)
         {
            case b2Joint.§9!T§:
               this.§0"!§.§3!`§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§2!D§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§?§();
               _loc13_ = _loc11_.§%C§();
               this.§0"!§.§3!`§(_loc12_,_loc8_,_loc10_);
               this.§0"!§.§3!`§(_loc13_,_loc9_,_loc10_);
               this.§0"!§.§3!`§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§=J§:
               this.§0"!§.§3!`§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§0"!§.§3!`§(_loc6_,_loc8_,_loc10_);
               }
               this.§0"!§.§3!`§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§0"!§.§3!`§(_loc7_,_loc9_,_loc10_);
               }
         }
      }
      
      b2internal function §=u§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§="1§)
         {
            case b2Shape.§[x§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§>!C§(param2,_loc4_.§6!B§);
               _loc6_ = _loc4_.§;$§;
               _loc7_ = param2.R.col1;
               this.§0"!§.§`!#§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§4A§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§6"9§();
               _loc11_ = _loc9_.§-"=§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§>!C§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§0"!§.§+r§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§;!O§:
               _loc13_ = param1 as b2EdgeShape;
               this.§0"!§.§3!`§(b2Math.§>!C§(param2,_loc13_.GetVertex1()),b2Math.§>!C§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

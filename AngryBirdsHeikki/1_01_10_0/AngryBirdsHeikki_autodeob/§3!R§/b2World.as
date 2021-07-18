package §3!R§
{
   import §!4§.*;
   import §"d§.*;
   import §6A§.*;
   import §7q§.*;
   import §=0§.*;
   import §]!8§.b2Controller;
   import §]!8§.b2ControllerEdge;
   import §^P§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §`!S§:b2Transform = new b2Transform();
      
      private static var §6t§:b2Sweep = new b2Sweep();
      
      private static var §7§:b2Sweep = new b2Sweep();
      
      private static var §8!7§:b2TimeStep = new b2TimeStep();
      
      private static var §]!!§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §&j§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §5!-§:Boolean;
      
      private static var §4!1§:Boolean;
      
      public static const § z§:int = 1;
      
      public static const §@!V§:int = 2;
       
      
      private var §6!1§:Vector.<b2Body>;
      
      b2internal var §5!5§:int;
      
      b2internal var §"s§:b2ContactManager;
      
      private var §?k§:b2ContactSolver;
      
      private var §`8§:b2Island;
      
      b2internal var §^`§:b2Body;
      
      private var §4b§:b2Joint;
      
      b2internal var §`W§:b2Contact;
      
      private var §7!6§:int;
      
      b2internal var § !N§:int;
      
      private var §>#§:int;
      
      private var §2w§:b2Controller;
      
      private var §'D§:int;
      
      private var §5!"§:b2Vec2;
      
      private var §>3§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §@!S§:b2DestructionListener;
      
      private var §0Y§:b2DebugDraw;
      
      private var §0!6§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§6!1§ = new Vector.<b2Body>();
         this.§"s§ = new b2ContactManager();
         this.§?k§ = new b2ContactSolver();
         this.§`8§ = new b2Island();
         super();
         this.§@!S§ = null;
         this.§0Y§ = null;
         this.§^`§ = null;
         this.§`W§ = null;
         this.§4b§ = null;
         this.§2w§ = null;
         this.§7!6§ = 0;
         this.§ !N§ = 0;
         this.§>#§ = 0;
         this.§'D§ = 0;
         §5!-§ = true;
         §4!1§ = true;
         this.§>3§ = param2;
         this.§5!"§ = param1;
         this.§0!6§ = 0;
         this.§"s§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§#m§(_loc3_);
      }
      
      public function § !J§(param1:b2DestructionListener) : void
      {
         this.§@!S§ = param1;
      }
      
      public function §%!2§(param1:b2ContactFilter) : void
      {
         this.§"s§.§=n§ = param1;
      }
      
      public function §6C§(param1:b2ContactListener) : void
      {
         this.§"s§.§;!5§ = param1;
      }
      
      public function §>]§(param1:b2DebugDraw) : void
      {
         this.§0Y§ = param1;
      }
      
      public function §%!#§(param1:§!s§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§!s§ = this.§"s§.§-E§;
         this.§"s§.§-E§ = param1;
         var _loc3_:b2Body = this.§^`§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§%c§;
            while(_loc4_)
            {
               _loc4_.§&<§ = param1.§+!#§(_loc2_.§,,§(_loc4_.§&<§),_loc4_);
               _loc4_ = _loc4_.§>W§;
            }
            _loc3_ = _loc3_.§>W§;
         }
      }
      
      public function §6k§() : void
      {
         this.§"s§.§-E§.§6k§();
      }
      
      public function §-s§() : int
      {
         return this.§"s§.§-E§.§-s§();
      }
      
      public function §#m§(param1:b2BodyDef) : b2Body
      {
         if(this.§-!§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§8s§ = null;
         _loc2_.§>W§ = this.§^`§;
         if(this.§^`§)
         {
            this.§^`§.§8s§ = _loc2_;
         }
         this.§^`§ = _loc2_;
         ++this.§7!6§;
         return _loc2_;
      }
      
      public function §3![§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§-!§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§4b§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§+m§;
            if(this.§@!S§)
            {
               this.§@!S§.§0y§(_loc6_.dynamic);
            }
            this.§#O§(_loc6_.dynamic);
         }
         var _loc3_:b2ControllerEdge = param1.§2w§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§&e§;
            _loc7_.§]O§.§^%§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§`W§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§+m§;
            this.§"s§.§;!^§(_loc8_.§-!$§);
         }
         param1.§`W§ = null;
         var _loc5_:b2Fixture = param1.§%c§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§>W§;
            if(this.§@!S§)
            {
               this.§@!S§.§!!e§(_loc9_);
            }
            _loc9_.§&R§(this.§"s§.§-E§);
            _loc9_.§;!^§();
         }
         param1.§%c§ = null;
         param1.§]>§ = 0;
         if(param1.§8s§)
         {
            param1.§8s§.§>W§ = param1.§>W§;
         }
         if(param1.§>W§)
         {
            param1.§>W§.§8s§ = param1.§8s§;
         }
         if(param1 == this.§^`§)
         {
            this.§^`§ = param1.§>W§;
         }
         --this.§7!6§;
      }
      
      public function §^8§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§;O§(param1,null);
         _loc2_.§8s§ = null;
         _loc2_.§>W§ = this.§4b§;
         if(this.§4b§)
         {
            this.§4b§.§8s§ = _loc2_;
         }
         this.§4b§ = _loc2_;
         ++this.§>#§;
         _loc2_.§9w§.dynamic = _loc2_;
         _loc2_.§9w§.§=!"§ = _loc2_.§2!`§;
         _loc2_.§9w§.§ true§ = null;
         _loc2_.§9w§.§+m§ = _loc2_.§#A§.§4b§;
         if(_loc2_.§#A§.§4b§)
         {
            _loc2_.§#A§.§4b§.§ true§ = _loc2_.§9w§;
         }
         _loc2_.§#A§.§4b§ = _loc2_.§9w§;
         _loc2_.§1]§.dynamic = _loc2_;
         _loc2_.§1]§.§=!"§ = _loc2_.§#A§;
         _loc2_.§1]§.§ true§ = null;
         _loc2_.§1]§.§+m§ = _loc2_.§2!`§.§4b§;
         if(_loc2_.§2!`§.§4b§)
         {
            _loc2_.§2!`§.§4b§.§ true§ = _loc2_.§1]§;
         }
         _loc2_.§2!`§.§4b§ = _loc2_.§1]§;
         var _loc3_:b2Body = param1.§&]§;
         var _loc4_:b2Body = param1.§+0§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§!+§();
            while(_loc5_)
            {
               if(_loc5_.§=!"§ == _loc3_)
               {
                  _loc5_.§-!$§.§[!R§();
               }
               _loc5_ = _loc5_.§+m§;
            }
         }
         return _loc2_;
      }
      
      public function §#O§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§1S§;
         if(param1.§8s§)
         {
            param1.§8s§.§>W§ = param1.§>W§;
         }
         if(param1.§>W§)
         {
            param1.§>W§.§8s§ = param1.§8s§;
         }
         if(param1 == this.§4b§)
         {
            this.§4b§ = param1.§>W§;
         }
         var _loc3_:b2Body = param1.§#A§;
         var _loc4_:b2Body = param1.§2!`§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§9w§.§ true§)
         {
            param1.§9w§.§ true§.§+m§ = param1.§9w§.§+m§;
         }
         if(param1.§9w§.§+m§)
         {
            param1.§9w§.§+m§.§ true§ = param1.§9w§.§ true§;
         }
         if(param1.§9w§ == _loc3_.§4b§)
         {
            _loc3_.§4b§ = param1.§9w§.§+m§;
         }
         param1.§9w§.§ true§ = null;
         param1.§9w§.§+m§ = null;
         if(param1.§1]§.§ true§)
         {
            param1.§1]§.§ true§.§+m§ = param1.§1]§.§+m§;
         }
         if(param1.§1]§.§+m§)
         {
            param1.§1]§.§+m§.§ true§ = param1.§1]§.§ true§;
         }
         if(param1.§1]§ == _loc4_.§4b§)
         {
            _loc4_.§4b§ = param1.§1]§.§+m§;
         }
         param1.§1]§.§ true§ = null;
         param1.§1]§.§+m§ = null;
         b2Joint.§;!^§(param1,null);
         --this.§>#§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§!+§();
            while(_loc5_)
            {
               if(_loc5_.§=!"§ == _loc3_)
               {
                  _loc5_.§-!$§.§[!R§();
               }
               _loc5_ = _loc5_.§+m§;
            }
         }
      }
      
      public function §[!F§(param1:b2Controller) : b2Controller
      {
         param1.§>W§ = this.§2w§;
         param1.§8s§ = null;
         this.§2w§ = param1;
         param1.m_world = this;
         ++this.§'D§;
         return param1;
      }
      
      public function §0g§(param1:b2Controller) : void
      {
         if(param1.§8s§)
         {
            param1.§8s§.§>W§ = param1.§>W§;
         }
         if(param1.§>W§)
         {
            param1.§>W§.§8s§ = param1.§8s§;
         }
         if(this.§2w§ == param1)
         {
            this.§2w§ = param1.§>W§;
         }
         --this.§'D§;
      }
      
      public function §5^§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§>W§ = this.§2w§;
         param1.§8s§ = null;
         if(this.§2w§)
         {
            this.§2w§.§8s§ = param1;
         }
         this.§2w§ = param1;
         ++this.§'D§;
         param1.m_world = this;
         return param1;
      }
      
      public function §!d§(param1:b2Controller) : void
      {
         param1.§?P§();
         if(param1.§>W§)
         {
            param1.§>W§.§8s§ = param1.§8s§;
         }
         if(param1.§8s§)
         {
            param1.§8s§.§>W§ = param1.§>W§;
         }
         if(param1 == this.§2w§)
         {
            this.§2w§ = param1.§>W§;
         }
         --this.§'D§;
      }
      
      public function §7=§(param1:Boolean) : void
      {
         §5!-§ = param1;
      }
      
      public function §`+§(param1:Boolean) : void
      {
         §4!1§ = param1;
      }
      
      public function §`;§() : int
      {
         return this.§7!6§;
      }
      
      public function §0!N§() : int
      {
         return this.§>#§;
      }
      
      public function §5$§() : int
      {
         return this.§ !N§;
      }
      
      public function §+!@§(param1:b2Vec2) : void
      {
         this.§5!"§ = param1;
      }
      
      public function §52§() : b2Vec2
      {
         return this.§5!"§;
      }
      
      public function §%E§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §00§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§5!5§ & § z§)
         {
            this.§"s§.§<o§();
            this.§5!5§ &= ~§ z§;
         }
         this.§5!5§ |= §@!V§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§?u§ = param1;
         _loc4_.§-7§ = param2;
         _loc4_.§'P§ = param3;
         if(param1 > 0)
         {
            _loc4_.§?o§ = 1 / param1;
         }
         else
         {
            _loc4_.§?o§ = 0;
         }
         _loc4_.§const§ = this.§0!6§ * param1;
         _loc4_.§?S§ = §5!-§;
         this.§"s§.§!J§();
         if(_loc4_.§?u§ > 0)
         {
            this.§]!G§(_loc4_);
         }
         if(§4!1§ && _loc4_.§?u§ > 0)
         {
            this.§=!P§(_loc4_);
         }
         if(_loc4_.§?u§ > 0)
         {
            this.§0!6§ = _loc4_.§?o§;
         }
         this.§5!5§ &= ~§@!V§;
      }
      
      public function §3r§() : void
      {
         var _loc1_:b2Body = this.§^`§;
         while(_loc1_)
         {
            _loc1_.§5l§.§^!,§();
            _loc1_.§'!K§ = 0;
            _loc1_ = _loc1_.§>W§;
         }
      }
      
      public function §'W§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§!s§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§0Y§ == null)
         {
            return;
         }
         this.§0Y§.§`S§.graphics.clear();
         var _loc1_:uint = this.§0Y§.§8c§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§8!+§)
         {
            _loc3_ = this.§^`§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§=!?§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§5!B§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§@!6§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§0i§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§@!6§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§0i§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§@!6§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§@!6§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§@!6§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§>W§;
               }
               _loc3_ = _loc3_.§>W§;
            }
         }
         if(_loc1_ & b2DebugDraw.§;!@§)
         {
            _loc6_ = this.§4b§;
            while(_loc6_)
            {
               this.§`?§(_loc6_);
               _loc6_ = _loc6_.§>W§;
            }
         }
         if(_loc1_ & b2DebugDraw.§`!"§)
         {
            _loc16_ = this.§2w§;
            while(_loc16_)
            {
               _loc16_.§];§(this.§0Y§);
               _loc16_ = _loc16_.§>W§;
            }
         }
         if(_loc1_ & b2DebugDraw.§&!^§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§"s§.§`W§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§#!D§();
               _loc19_ = _loc17_.§''§();
               _loc20_ = _loc18_.§;!V§().§>O§();
               _loc21_ = _loc19_.§;!V§().§>O§();
               this.§0Y§.§6[§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§5!J§();
            }
         }
         if(_loc1_ & b2DebugDraw.§5<§)
         {
            _loc7_ = this.§"s§.§-E§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§^`§;
            while(_loc3_)
            {
               if(_loc3_.§5!B§() != false)
               {
                  _loc4_ = _loc3_.§=!?§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§,,§(_loc4_.§&<§);
                     _loc14_[0].Set(_loc22_.§?`§.x,_loc22_.§?`§.y);
                     _loc14_[1].Set(_loc22_.§[O§.x,_loc22_.§?`§.y);
                     _loc14_[2].Set(_loc22_.§[O§.x,_loc22_.§[O§.y);
                     _loc14_[3].Set(_loc22_.§?`§.x,_loc22_.§[O§.y);
                     this.§0Y§.§^!E§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§5!J§();
                  }
               }
               _loc3_ = _loc3_.§5!J§();
            }
         }
         if(_loc1_ & b2DebugDraw.§-g§)
         {
            _loc3_ = this.§^`§;
            while(_loc3_)
            {
               (_loc11_ = §`!S§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§ g§();
               this.§0Y§.§@w§(_loc11_);
               _loc3_ = _loc3_.§>W§;
            }
         }
      }
      
      public function §%!J§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§!s§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§"s§.§-E§;
         broadPhase.§&!K§(WorldQueryWrapper,aabb);
      }
      
      public function §'8§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§!s§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§+!;§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§6V§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§%N§();
         }
         broadPhase = this.§"s§.§-E§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§&!K§(WorldQueryWrapper,aabb);
      }
      
      public function §17§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§!s§ = null;
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
         broadPhase = this.§"s§.§-E§;
         var aabb:b2AABB = new b2AABB();
         aabb.§?`§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§[O§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§&!K§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§!s§ = null;
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
            return param1.§!!O§;
         };
         broadPhase = this.§"s§.§-E§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §>=§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §;!Y§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §4!Z§() : b2Body
      {
         return this.§^`§;
      }
      
      public function §!O§() : b2Joint
      {
         return this.§4b§;
      }
      
      public function §!+§() : b2Contact
      {
         return this.§`W§;
      }
      
      public function §-!§() : Boolean
      {
         return (this.§5!5§ & §@!V§) > 0;
      }
      
      b2internal function §]!G§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§2w§;
         while(_loc3_)
         {
            _loc3_.§00§(param1);
            _loc3_ = _loc3_.§>W§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§`8§).§';§(this.§7!6§,this.§ !N§,this.§>#§,null,this.§"s§.§;!5§,this.§?k§);
         _loc2_ = this.§^`§;
         while(_loc2_)
         {
            _loc2_.§5!5§ &= ~b2Body.§!3§;
            _loc2_ = _loc2_.§>W§;
         }
         var _loc5_:b2Contact = this.§`W§;
         while(_loc5_)
         {
            _loc5_.§5!5§ &= ~b2Contact.§!3§;
            _loc5_ = _loc5_.§>W§;
         }
         var _loc6_:b2Joint = this.§4b§;
         while(_loc6_)
         {
            _loc6_.§#[§ = false;
            _loc6_ = _loc6_.§>W§;
         }
         var _loc7_:int = this.§7!6§;
         var _loc8_:Vector.<b2Body> = this.§6!1§;
         var _loc9_:b2Body = this.§^`§;
         while(_loc9_)
         {
            if(!(_loc9_.§5!5§ & b2Body.§!3§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§5!B§() == false))
               {
                  if(_loc9_.§0i§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§?P§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§5!5§ |= b2Body.§!3§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§']§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§0i§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§`W§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§-!$§.§5!5§ & b2Contact.§!3§))
                              {
                                 if(!(_loc13_.§-!$§.§4!B§() == true || _loc13_.§-!$§.§;%§() == false || _loc13_.§-!$§.§1h§() == false))
                                 {
                                    _loc4_.§#5§(_loc13_.§-!$§);
                                    _loc13_.§-!$§.§5!5§ |= b2Contact.§!3§;
                                    if(!((_loc12_ = _loc13_.§=!"§).§5!5§ & b2Body.§!3§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§5!5§ |= b2Body.§!3§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§+m§;
                           }
                           _loc14_ = _loc2_.§4b§;
                           while(_loc14_)
                           {
                              if(_loc14_.dynamic.§#[§ != true)
                              {
                                 if((_loc12_ = _loc14_.§=!"§).§5!B§() != false)
                                 {
                                    _loc4_.§!Q§(_loc14_.dynamic);
                                    _loc14_.dynamic.§#[§ = true;
                                    if(!(_loc12_.§5!5§ & b2Body.§!3§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§5!5§ |= b2Body.§!3§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§+m§;
                           }
                        }
                     }
                     _loc4_.§]!G§(param1,this.§5!"§,this.§>3§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§7!6§)
                     {
                        _loc2_ = _loc4_.§<7§[_loc11_];
                        if(_loc2_.§0i§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§5!5§ &= ~b2Body.§!3§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§>W§;
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
         _loc2_ = this.§^`§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§5!B§() == false))
            {
               if(_loc2_.§0i§() != b2Body.b2_staticBody)
               {
                  _loc2_.§@i§();
               }
            }
            _loc2_ = _loc2_.§>W§;
         }
         this.§"s§.§<o§();
      }
      
      b2internal function §=!P§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§`8§).§';§(this.§7!6§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§"s§.§;!5§,this.§?k§);
         var _loc10_:Vector.<b2Body> = §]!!§;
         _loc2_ = this.§^`§;
         while(_loc2_)
         {
            _loc2_.§5!5§ &= ~b2Body.§!3§;
            _loc2_.m_sweep.§#z§ = 0;
            _loc2_ = _loc2_.§>W§;
         }
         _loc11_ = this.§`W§;
         while(_loc11_)
         {
            _loc11_.§5!5§ &= ~(b2Contact.§<!D§ | b2Contact.§!3§);
            _loc11_ = _loc11_.§>W§;
         }
         _loc8_ = this.§4b§;
         while(_loc8_)
         {
            _loc8_.§#[§ = false;
            _loc8_ = _loc8_.§>W§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§`W§;
            for(; _loc11_; _loc11_ = _loc11_.§>W§)
            {
               if(!(_loc11_.§4!B§() == true || _loc11_.§;%§() == false || _loc11_.§,!,§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§5!5§ & b2Contact.§<!D§)
                  {
                     _loc19_ = _loc11_.§5j§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§&4§;
                     _loc4_ = _loc11_.§;,§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§0i§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§0i§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§#z§;
                     if(_loc5_.m_sweep.§#z§ < _loc6_.m_sweep.§#z§)
                     {
                        _loc20_ = _loc6_.m_sweep.§#z§;
                        _loc5_.m_sweep.§3!Z§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§#z§ < _loc5_.m_sweep.§#z§)
                     {
                        _loc20_ = _loc5_.m_sweep.§#z§;
                        _loc6_.m_sweep.§3!Z§(_loc20_);
                     }
                     _loc19_ = _loc11_.§;!§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§5j§ = _loc19_;
                     _loc11_.§5!5§ |= b2Contact.§<!D§;
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
            _loc3_ = _loc12_.§&4§;
            _loc4_ = _loc12_.§;,§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §6t§.Set(_loc5_.m_sweep);
            §7§.Set(_loc6_.m_sweep);
            _loc5_.§3!Z§(_loc13_);
            _loc6_.§3!Z§(_loc13_);
            _loc12_.§?!§(this.§"s§.§;!5§);
            _loc12_.§5!5§ &= ~b2Contact.§<!D§;
            if(_loc12_.§4!B§() == true || _loc12_.§;%§() == false)
            {
               _loc5_.m_sweep.Set(§6t§);
               _loc6_.m_sweep.Set(§7§);
               _loc5_.§-W§();
               _loc6_.§-W§();
            }
            else if(_loc12_.§1h§() != false)
            {
               if((_loc14_ = _loc5_).§0i§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§?P§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§5!5§ |= b2Body.§!3§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§']§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§0i§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§`W§;
                     while(_loc7_)
                     {
                        if(_loc9_.§ !N§ == _loc9_.§8!2§)
                        {
                           break;
                        }
                        if(!(_loc7_.§-!$§.§5!5§ & b2Contact.§!3§))
                        {
                           if(!(_loc7_.§-!$§.§4!B§() == true || _loc7_.§-!$§.§;%§() == false || _loc7_.§-!$§.§1h§() == false))
                           {
                              _loc9_.§#5§(_loc7_.§-!$§);
                              _loc7_.§-!$§.§5!5§ |= b2Contact.§!3§;
                              if(!((_loc22_ = _loc7_.§=!"§).§5!5§ & b2Body.§!3§))
                              {
                                 if(_loc22_.§0i§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§3!Z§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§5!5§ |= b2Body.§!3§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§+m§;
                     }
                     _loc21_ = _loc2_.§4b§;
                     while(_loc21_)
                     {
                        if(_loc9_.§>#§ != _loc9_.§2!d§)
                        {
                           if(_loc21_.dynamic.§#[§ != true)
                           {
                              if((_loc22_ = _loc21_.§=!"§).§5!B§() != false)
                              {
                                 _loc9_.§!Q§(_loc21_.dynamic);
                                 _loc21_.dynamic.§#[§ = true;
                                 if(!(_loc22_.§5!5§ & b2Body.§!3§))
                                 {
                                    if(_loc22_.§0i§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§3!Z§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§5!5§ |= b2Body.§!3§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§+m§;
                     }
                  }
               }
               (_loc17_ = §8!7§).§?S§ = false;
               _loc17_.§?u§ = (1 - _loc13_) * param1.§?u§;
               _loc17_.§?o§ = 1 / _loc17_.§?u§;
               _loc17_.§const§ = 0;
               _loc17_.§-7§ = param1.§-7§;
               _loc17_.§'P§ = param1.§'P§;
               _loc9_.§=!P§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§7!6§)
               {
                  _loc2_ = _loc9_.§<7§[_loc18_];
                  _loc2_.§5!5§ &= ~b2Body.§!3§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§0i§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§@i§();
                        _loc7_ = _loc2_.§`W§;
                        while(_loc7_)
                        {
                           _loc7_.§-!$§.§5!5§ &= ~b2Contact.§<!D§;
                           _loc7_ = _loc7_.§+m§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§ !N§)
               {
                  _loc11_ = _loc9_.§ i§[_loc18_];
                  _loc11_.§5!5§ &= ~(b2Contact.§<!D§ | b2Contact.§!3§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§>#§)
               {
                  (_loc8_ = _loc9_.§&!H§[_loc18_]).§#[§ = false;
                  _loc18_++;
               }
               this.§"s§.§<o§();
            }
         }
      }
      
      b2internal function §`?§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§]!X§();
         var _loc3_:b2Body = param1.§+4§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §&j§;
         switch(param1.§2!]§)
         {
            case b2Joint.§0=§:
               this.§0Y§.§6[§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§ h§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§`!H§();
               _loc13_ = _loc11_.§@K§();
               this.§0Y§.§6[§(_loc12_,_loc8_,_loc10_);
               this.§0Y§.§6[§(_loc13_,_loc9_,_loc10_);
               this.§0Y§.§6[§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§^a§:
               this.§0Y§.§6[§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§0Y§.§6[§(_loc6_,_loc8_,_loc10_);
               }
               this.§0Y§.§6[§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§0Y§.§6[§(_loc7_,_loc9_,_loc10_);
               }
         }
      }
      
      b2internal function §@!6§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§2!]§)
         {
            case b2Shape.§,!#§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§,p§(param2,_loc4_.§7]§);
               _loc6_ = _loc4_.§'m§;
               _loc7_ = param2.R.col1;
               this.§0Y§.§`!7§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§=!'§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§7T§();
               _loc11_ = _loc9_.§<Q§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§,p§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§0Y§.§<@§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§%m§:
               _loc13_ = param1 as b2EdgeShape;
               this.§0Y§.§6[§(b2Math.§,p§(param2,_loc13_.GetVertex1()),b2Math.§,p§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

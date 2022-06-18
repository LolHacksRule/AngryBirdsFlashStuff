package §9t§
{
   import §!!#§.*;
   import §!!L§.b2Controller;
   import §!!L§.b2ControllerEdge;
   import §4! §.*;
   import §=!P§.*;
   import §[!E§.*;
   import §[-§.*;
   import §^q§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var § !V§:b2Transform = new b2Transform();
      
      private static var §?Z§:b2Sweep = new b2Sweep();
      
      private static var §'k§:b2Sweep = new b2Sweep();
      
      private static var §,r§:b2TimeStep = new b2TimeStep();
      
      private static var §,T§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §@L§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §9[§:Boolean;
      
      private static var §!i§:Boolean;
      
      public static const §9+§:int = 1;
      
      public static const §?!5§:int = 2;
       
      
      private var §#9§:Vector.<b2Body>;
      
      b2internal var § -§:int;
      
      b2internal var §5L§:b2ContactManager;
      
      private var §>!F§:b2ContactSolver;
      
      private var §!!-§:b2Island;
      
      b2internal var §5g§:b2Body;
      
      private var §-!@§:b2Joint;
      
      b2internal var §]=§:b2Contact;
      
      private var §&y§:int;
      
      b2internal var §2+§:int;
      
      private var §+!U§:int;
      
      private var §,!+§:b2Controller;
      
      private var §7%§:int;
      
      private var §2E§:b2Vec2;
      
      private var §]r§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §#s§:b2DestructionListener;
      
      private var § !U§:b2DebugDraw;
      
      private var §5!?§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§#9§ = new Vector.<b2Body>();
         this.§5L§ = new b2ContactManager();
         this.§>!F§ = new b2ContactSolver();
         this.§!!-§ = new b2Island();
         super();
         this.§#s§ = null;
         this.§ !U§ = null;
         this.§5g§ = null;
         this.§]=§ = null;
         this.§-!@§ = null;
         this.§,!+§ = null;
         this.§&y§ = 0;
         this.§2+§ = 0;
         this.§+!U§ = 0;
         this.§7%§ = 0;
         §9[§ = true;
         §!i§ = true;
         this.§]r§ = param2;
         this.§2E§ = param1;
         this.§5!?§ = 0;
         this.§5L§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§&X§(_loc3_);
      }
      
      public function §<y§(param1:b2DestructionListener) : void
      {
         this.§#s§ = param1;
      }
      
      public function §`W§(param1:b2ContactFilter) : void
      {
         this.§5L§.§0p§ = param1;
      }
      
      public function §null §(param1:b2ContactListener) : void
      {
         this.§5L§.§;E§ = param1;
      }
      
      public function §!!V§(param1:b2DebugDraw) : void
      {
         this.§ !U§ = param1;
      }
      
      public function §>h§(param1:§4!b§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§4!b§ = this.§5L§.§8Z§;
         this.§5L§.§8Z§ = param1;
         var _loc3_:b2Body = this.§5g§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§9w§;
            while(_loc4_)
            {
               _loc4_.§!!]§ = param1.§+2§(_loc2_.§"z§(_loc4_.§!!]§),_loc4_);
               _loc4_ = _loc4_.§%m§;
            }
            _loc3_ = _loc3_.§%m§;
         }
      }
      
      public function §``§() : void
      {
         this.§5L§.§8Z§.§``§();
      }
      
      public function §[A§() : int
      {
         return this.§5L§.§8Z§.§[A§();
      }
      
      public function §&X§(param1:b2BodyDef) : b2Body
      {
         if(this.§6!2§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§&J§ = null;
         _loc2_.§%m§ = this.§5g§;
         if(this.§5g§)
         {
            this.§5g§.§&J§ = _loc2_;
         }
         this.§5g§ = _loc2_;
         ++this.§&y§;
         return _loc2_;
      }
      
      public function §@r§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§6!2§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§-!@§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§1!V§;
            if(this.§#s§)
            {
               this.§#s§.§finally§(_loc6_.§'!B§);
            }
            this.§55§(_loc6_.§'!B§);
         }
         var _loc3_:b2ControllerEdge = param1.§,!+§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§&!F§;
            _loc7_.§;§.§"!O§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§]=§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§1!V§;
            this.§5L§.§88§(_loc8_.§2L§);
         }
         param1.§]=§ = null;
         var _loc5_:b2Fixture = param1.§9w§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§%m§;
            if(this.§#s§)
            {
               this.§#s§.§'@§(_loc9_);
            }
            _loc9_.§52§(this.§5L§.§8Z§);
            _loc9_.§88§();
         }
         param1.§9w§ = null;
         param1.§^!;§ = 0;
         if(param1.§&J§)
         {
            param1.§&J§.§%m§ = param1.§%m§;
         }
         if(param1.§%m§)
         {
            param1.§%m§.§&J§ = param1.§&J§;
         }
         if(param1 == this.§5g§)
         {
            this.§5g§ = param1.§%m§;
         }
         --this.§&y§;
      }
      
      public function §&u§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§1P§(param1,null);
         _loc2_.§&J§ = null;
         _loc2_.§%m§ = this.§-!@§;
         if(this.§-!@§)
         {
            this.§-!@§.§&J§ = _loc2_;
         }
         this.§-!@§ = _loc2_;
         ++this.§+!U§;
         _loc2_.§5!3§.§'!B§ = _loc2_;
         _loc2_.§5!3§.§5C§ = _loc2_.§!!c§;
         _loc2_.§5!3§.§3t§ = null;
         _loc2_.§5!3§.§1!V§ = _loc2_.§&!?§.§-!@§;
         if(_loc2_.§&!?§.§-!@§)
         {
            _loc2_.§&!?§.§-!@§.§3t§ = _loc2_.§5!3§;
         }
         _loc2_.§&!?§.§-!@§ = _loc2_.§5!3§;
         _loc2_.§"!5§.§'!B§ = _loc2_;
         _loc2_.§"!5§.§5C§ = _loc2_.§&!?§;
         _loc2_.§"!5§.§3t§ = null;
         _loc2_.§"!5§.§1!V§ = _loc2_.§!!c§.§-!@§;
         if(_loc2_.§!!c§.§-!@§)
         {
            _loc2_.§!!c§.§-!@§.§3t§ = _loc2_.§"!5§;
         }
         _loc2_.§!!c§.§-!@§ = _loc2_.§"!5§;
         var _loc3_:b2Body = param1.§ !,§;
         var _loc4_:b2Body = param1.§]z§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§!u§();
            while(_loc5_)
            {
               if(_loc5_.§5C§ == _loc3_)
               {
                  _loc5_.§2L§.§0!3§();
               }
               _loc5_ = _loc5_.§1!V§;
            }
         }
         return _loc2_;
      }
      
      public function §55§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§;!Q§;
         if(param1.§&J§)
         {
            param1.§&J§.§%m§ = param1.§%m§;
         }
         if(param1.§%m§)
         {
            param1.§%m§.§&J§ = param1.§&J§;
         }
         if(param1 == this.§-!@§)
         {
            this.§-!@§ = param1.§%m§;
         }
         var _loc3_:b2Body = param1.§&!?§;
         var _loc4_:b2Body = param1.§!!c§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§5!3§.§3t§)
         {
            param1.§5!3§.§3t§.§1!V§ = param1.§5!3§.§1!V§;
         }
         if(param1.§5!3§.§1!V§)
         {
            param1.§5!3§.§1!V§.§3t§ = param1.§5!3§.§3t§;
         }
         if(param1.§5!3§ == _loc3_.§-!@§)
         {
            _loc3_.§-!@§ = param1.§5!3§.§1!V§;
         }
         param1.§5!3§.§3t§ = null;
         param1.§5!3§.§1!V§ = null;
         if(param1.§"!5§.§3t§)
         {
            param1.§"!5§.§3t§.§1!V§ = param1.§"!5§.§1!V§;
         }
         if(param1.§"!5§.§1!V§)
         {
            param1.§"!5§.§1!V§.§3t§ = param1.§"!5§.§3t§;
         }
         if(param1.§"!5§ == _loc4_.§-!@§)
         {
            _loc4_.§-!@§ = param1.§"!5§.§1!V§;
         }
         param1.§"!5§.§3t§ = null;
         param1.§"!5§.§1!V§ = null;
         b2Joint.§88§(param1,null);
         --this.§+!U§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§!u§();
            while(_loc5_)
            {
               if(_loc5_.§5C§ == _loc3_)
               {
                  _loc5_.§2L§.§0!3§();
               }
               _loc5_ = _loc5_.§1!V§;
            }
         }
      }
      
      public function §+?§(param1:b2Controller) : b2Controller
      {
         param1.§%m§ = this.§,!+§;
         param1.§&J§ = null;
         this.§,!+§ = param1;
         param1.m_world = this;
         ++this.§7%§;
         return param1;
      }
      
      public function §1>§(param1:b2Controller) : void
      {
         if(param1.§&J§)
         {
            param1.§&J§.§%m§ = param1.§%m§;
         }
         if(param1.§%m§)
         {
            param1.§%m§.§&J§ = param1.§&J§;
         }
         if(this.§,!+§ == param1)
         {
            this.§,!+§ = param1.§%m§;
         }
         --this.§7%§;
      }
      
      public function §"Q§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§%m§ = this.§,!+§;
         param1.§&J§ = null;
         if(this.§,!+§)
         {
            this.§,!+§.§&J§ = param1;
         }
         this.§,!+§ = param1;
         ++this.§7%§;
         param1.m_world = this;
         return param1;
      }
      
      public function §[!N§(param1:b2Controller) : void
      {
         param1.§-N§();
         if(param1.§%m§)
         {
            param1.§%m§.§&J§ = param1.§&J§;
         }
         if(param1.§&J§)
         {
            param1.§&J§.§%m§ = param1.§%m§;
         }
         if(param1 == this.§,!+§)
         {
            this.§,!+§ = param1.§%m§;
         }
         --this.§7%§;
      }
      
      public function §70§(param1:Boolean) : void
      {
         §9[§ = param1;
      }
      
      public function §[!>§(param1:Boolean) : void
      {
         §!i§ = param1;
      }
      
      public function §4-§() : int
      {
         return this.§&y§;
      }
      
      public function § r§() : int
      {
         return this.§+!U§;
      }
      
      public function §7r§() : int
      {
         return this.§2+§;
      }
      
      public function §4!]§(param1:b2Vec2) : void
      {
         this.§2E§ = param1;
      }
      
      public function §<X§() : b2Vec2
      {
         return this.§2E§;
      }
      
      public function §+y§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §'!'§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§ -§ & §9+§)
         {
            this.§5L§.§6!>§();
            this.§ -§ &= ~§9+§;
         }
         this.§ -§ |= §?!5§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§7!H§ = param1;
         _loc4_.§;x§ = param2;
         _loc4_.§@w§ = param3;
         if(param1 > 0)
         {
            _loc4_.§,!_§ = 1 / param1;
         }
         else
         {
            _loc4_.§,!_§ = 0;
         }
         _loc4_.§8B§ = this.§5!?§ * param1;
         _loc4_.§3!S§ = §9[§;
         this.§5L§.§=!B§();
         if(_loc4_.§7!H§ > 0)
         {
            this.§#p§(_loc4_);
         }
         if(§!i§ && _loc4_.§7!H§ > 0)
         {
            this.§>Z§(_loc4_);
         }
         if(_loc4_.§7!H§ > 0)
         {
            this.§5!?§ = _loc4_.§,!_§;
         }
         this.§ -§ &= ~§?!5§;
      }
      
      public function §4!@§() : void
      {
         var _loc1_:b2Body = this.§5g§;
         while(_loc1_)
         {
            _loc1_.§]W§.§0q§();
            _loc1_.§7!Q§ = 0;
            _loc1_ = _loc1_.§%m§;
         }
      }
      
      public function §63§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§4!b§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§ !U§ == null)
         {
            return;
         }
         this.§ !U§.§1X§.graphics.clear();
         var _loc1_:uint = this.§ !U§.§0!T§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§-r§)
         {
            _loc3_ = this.§5g§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§%!@§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§<l§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§9P§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§<l§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§9P§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§<l§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§<l§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§<l§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§%m§;
               }
               _loc3_ = _loc3_.§%m§;
            }
         }
         if(_loc1_ & b2DebugDraw.§7t§)
         {
            _loc6_ = this.§-!@§;
            while(_loc6_)
            {
               this.§4U§(_loc6_);
               _loc6_ = _loc6_.§%m§;
            }
         }
         if(_loc1_ & b2DebugDraw.§=!0§)
         {
            _loc16_ = this.§,!+§;
            while(_loc16_)
            {
               _loc16_.§9!6§(this.§ !U§);
               _loc16_ = _loc16_.§%m§;
            }
         }
         if(_loc1_ & b2DebugDraw.§2$§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§5L§.§]=§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§>!b§();
               _loc19_ = _loc17_.§1t§();
               _loc20_ = _loc18_.§8V§().final();
               _loc21_ = _loc19_.§8V§().final();
               this.§ !U§.§!!J§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§&!V§();
            }
         }
         if(_loc1_ & b2DebugDraw.§[x§)
         {
            _loc7_ = this.§5L§.§8Z§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§5g§;
            while(_loc3_)
            {
               if(_loc3_.§%!@§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§"z§(_loc4_.§!!]§);
                     _loc14_[0].Set(_loc22_.§?J§.x,_loc22_.§?J§.y);
                     _loc14_[1].Set(_loc22_.§@9§.x,_loc22_.§?J§.y);
                     _loc14_[2].Set(_loc22_.§@9§.x,_loc22_.§@9§.y);
                     _loc14_[3].Set(_loc22_.§?J§.x,_loc22_.§@9§.y);
                     this.§ !U§.§throw§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§&!V§();
                  }
               }
               _loc3_ = _loc3_.§&!V§();
            }
         }
         if(_loc1_ & b2DebugDraw.§`H§)
         {
            _loc3_ = this.§5g§;
            while(_loc3_)
            {
               (_loc11_ = § !V§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§]&§();
               this.§ !U§.§&O§(_loc11_);
               _loc3_ = _loc3_.§%m§;
            }
         }
      }
      
      public function §];§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§4!b§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§5L§.§8Z§;
         broadPhase.§!!,§(WorldQueryWrapper,aabb);
      }
      
      public function §-!!§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§4!b§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§?`§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§%!c§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§@K§();
         }
         broadPhase = this.§5L§.§8Z§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§!!,§(WorldQueryWrapper,aabb);
      }
      
      public function §24§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§4!b§ = null;
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
         broadPhase = this.§5L§.§8Z§;
         var aabb:b2AABB = new b2AABB();
         aabb.§?J§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§@9§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§!!,§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§4!b§ = null;
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
            return param1.§%K§;
         };
         broadPhase = this.§5L§.§8Z§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §<!_§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §6!R§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §;!S§() : b2Body
      {
         return this.§5g§;
      }
      
      public function §=!!§() : b2Joint
      {
         return this.§-!@§;
      }
      
      public function §!u§() : b2Contact
      {
         return this.§]=§;
      }
      
      public function §6!2§() : Boolean
      {
         return (this.§ -§ & §?!5§) > 0;
      }
      
      b2internal function §#p§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§,!+§;
         while(_loc3_)
         {
            _loc3_.§'!'§(param1);
            _loc3_ = _loc3_.§%m§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§!!-§).§in §(this.§&y§,this.§2+§,this.§+!U§,null,this.§5L§.§;E§,this.§>!F§);
         _loc2_ = this.§5g§;
         while(_loc2_)
         {
            _loc2_.§ -§ &= ~b2Body.§"`§;
            _loc2_ = _loc2_.§%m§;
         }
         var _loc5_:b2Contact = this.§]=§;
         while(_loc5_)
         {
            _loc5_.§ -§ &= ~b2Contact.§"`§;
            _loc5_ = _loc5_.§%m§;
         }
         var _loc6_:b2Joint = this.§-!@§;
         while(_loc6_)
         {
            _loc6_.§6-§ = false;
            _loc6_ = _loc6_.§%m§;
         }
         var _loc7_:int = this.§&y§;
         var _loc8_:Vector.<b2Body> = this.§#9§;
         var _loc9_:b2Body = this.§5g§;
         while(_loc9_)
         {
            if(!(_loc9_.§ -§ & b2Body.§"`§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§%!@§() == false))
               {
                  if(_loc9_.§9P§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§-N§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§ -§ |= b2Body.§"`§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§9!P§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§9P§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§]=§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§2L§.§ -§ & b2Contact.§"`§))
                              {
                                 if(!(_loc13_.§2L§.§@M§() == true || _loc13_.§2L§.§2<§() == false || _loc13_.§2L§.§3C§() == false))
                                 {
                                    _loc4_.§9T§(_loc13_.§2L§);
                                    _loc13_.§2L§.§ -§ |= b2Contact.§"`§;
                                    if(!((_loc12_ = _loc13_.§5C§).§ -§ & b2Body.§"`§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§ -§ |= b2Body.§"`§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§1!V§;
                           }
                           _loc14_ = _loc2_.§-!@§;
                           while(_loc14_)
                           {
                              if(_loc14_.§'!B§.§6-§ != true)
                              {
                                 if((_loc12_ = _loc14_.§5C§).§%!@§() != false)
                                 {
                                    _loc4_.§=!4§(_loc14_.§'!B§);
                                    _loc14_.§'!B§.§6-§ = true;
                                    if(!(_loc12_.§ -§ & b2Body.§"`§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§ -§ |= b2Body.§"`§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§1!V§;
                           }
                        }
                     }
                     _loc4_.§#p§(param1,this.§2E§,this.§]r§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§&y§)
                     {
                        _loc2_ = _loc4_.§!!7§[_loc11_];
                        if(_loc2_.§9P§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§ -§ &= ~b2Body.§"`§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§%m§;
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
         _loc2_ = this.§5g§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§%!@§() == false))
            {
               if(_loc2_.§9P§() != b2Body.b2_staticBody)
               {
                  _loc2_.§;4§();
               }
            }
            _loc2_ = _loc2_.§%m§;
         }
         this.§5L§.§6!>§();
      }
      
      b2internal function §>Z§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§!!-§).§in §(this.§&y§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§5L§.§;E§,this.§>!F§);
         var _loc10_:Vector.<b2Body> = §,T§;
         _loc2_ = this.§5g§;
         while(_loc2_)
         {
            _loc2_.§ -§ &= ~b2Body.§"`§;
            _loc2_.m_sweep.§0N§ = 0;
            _loc2_ = _loc2_.§%m§;
         }
         _loc11_ = this.§]=§;
         while(_loc11_)
         {
            _loc11_.§ -§ &= ~(b2Contact.§;p§ | b2Contact.§"`§);
            _loc11_ = _loc11_.§%m§;
         }
         _loc8_ = this.§-!@§;
         while(_loc8_)
         {
            _loc8_.§6-§ = false;
            _loc8_ = _loc8_.§%m§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§]=§;
            while(_loc11_)
            {
               if(!(_loc11_.§@M§() == true || _loc11_.§2<§() == false || _loc11_.§,t§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§ -§ & b2Contact.§;p§)
                  {
                     _loc19_ = _loc11_.§!!Q§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§@! §;
                     _loc4_ = _loc11_.§>d§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§9P§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§9P§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr611:
                        _loc11_ = _loc11_.§%m§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§0N§;
                     if(_loc5_.m_sweep.§0N§ < _loc6_.m_sweep.§0N§)
                     {
                        _loc20_ = _loc6_.m_sweep.§0N§;
                        _loc5_.m_sweep.§]^§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§0N§ < _loc5_.m_sweep.§0N§)
                     {
                        _loc20_ = _loc5_.m_sweep.§0N§;
                        _loc6_.m_sweep.§]^§(_loc20_);
                     }
                     _loc19_ = _loc11_.§?!"§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§!!Q§ = _loc19_;
                     _loc11_.§ -§ |= b2Contact.§;p§;
                     §§goto(addr611);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr611);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§@! §;
            _loc4_ = _loc12_.§>d§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §?Z§.Set(_loc5_.m_sweep);
            §'k§.Set(_loc6_.m_sweep);
            _loc5_.§]^§(_loc13_);
            _loc6_.§]^§(_loc13_);
            _loc12_.§%M§(this.§5L§.§;E§);
            _loc12_.§ -§ &= ~b2Contact.§;p§;
            if(_loc12_.§@M§() == true || _loc12_.§2<§() == false)
            {
               _loc5_.m_sweep.Set(§?Z§);
               _loc6_.m_sweep.Set(§'k§);
               _loc5_.§`%§();
               _loc6_.§`%§();
            }
            else if(_loc12_.§3C§() != false)
            {
               if((_loc14_ = _loc5_).§9P§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§-N§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§ -§ |= b2Body.§"`§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§9!P§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§9P§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§]=§;
                     while(_loc7_)
                     {
                        if(_loc9_.§2+§ == _loc9_.§`4§)
                        {
                           break;
                        }
                        if(!(_loc7_.§2L§.§ -§ & b2Contact.§"`§))
                        {
                           if(!(_loc7_.§2L§.§@M§() == true || _loc7_.§2L§.§2<§() == false || _loc7_.§2L§.§3C§() == false))
                           {
                              _loc9_.§9T§(_loc7_.§2L§);
                              _loc7_.§2L§.§ -§ |= b2Contact.§"`§;
                              if(!((_loc22_ = _loc7_.§5C§).§ -§ & b2Body.§"`§))
                              {
                                 if(_loc22_.§9P§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§]^§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§ -§ |= b2Body.§"`§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§1!V§;
                     }
                     _loc21_ = _loc2_.§-!@§;
                     while(_loc21_)
                     {
                        if(_loc9_.§+!U§ != _loc9_.§^!D§)
                        {
                           if(_loc21_.§'!B§.§6-§ != true)
                           {
                              if((_loc22_ = _loc21_.§5C§).§%!@§() != false)
                              {
                                 _loc9_.§=!4§(_loc21_.§'!B§);
                                 _loc21_.§'!B§.§6-§ = true;
                                 if(!(_loc22_.§ -§ & b2Body.§"`§))
                                 {
                                    if(_loc22_.§9P§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§]^§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§ -§ |= b2Body.§"`§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§1!V§;
                     }
                  }
               }
               (_loc17_ = §,r§).§3!S§ = false;
               _loc17_.§7!H§ = (1 - _loc13_) * param1.§7!H§;
               _loc17_.§,!_§ = 1 / _loc17_.§7!H§;
               _loc17_.§8B§ = 0;
               _loc17_.§;x§ = param1.§;x§;
               _loc17_.§@w§ = param1.§@w§;
               _loc9_.§>Z§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§&y§)
               {
                  _loc2_ = _loc9_.§!!7§[_loc18_];
                  _loc2_.§ -§ &= ~b2Body.§"`§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§9P§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§;4§();
                        _loc7_ = _loc2_.§]=§;
                        while(_loc7_)
                        {
                           _loc7_.§2L§.§ -§ &= ~b2Contact.§;p§;
                           _loc7_ = _loc7_.§1!V§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§2+§)
               {
                  _loc11_ = _loc9_.§6!3§[_loc18_];
                  _loc11_.§ -§ &= ~(b2Contact.§;p§ | b2Contact.§"`§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§+!U§)
               {
                  (_loc8_ = _loc9_.§6!b§[_loc18_]).§6-§ = false;
                  _loc18_++;
               }
               this.§5L§.§6!>§();
            }
         }
      }
      
      b2internal function §4U§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§#!!§();
         var _loc3_:b2Body = param1.§+!I§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §@L§;
         switch(param1.§3;§)
         {
            case b2Joint.§&_§:
               this.§ !U§.§!!J§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§^!#§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§3K§();
               _loc13_ = _loc11_.§]A§();
               this.§ !U§.§!!J§(_loc12_,_loc8_,_loc10_);
               this.§ !U§.§!!J§(_loc13_,_loc9_,_loc10_);
               this.§ !U§.§!!J§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§'B§:
               this.§ !U§.§!!J§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§ !U§.§!!J§(_loc6_,_loc8_,_loc10_);
               }
               this.§ !U§.§!!J§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§ !U§.§!!J§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §<l§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§3;§)
         {
            case b2Shape.§5E§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§1L§(param2,_loc4_.§"! §);
               _loc6_ = _loc4_.§9@§;
               _loc7_ = param2.R.col1;
               this.§ !U§.§7#§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§+4§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§!=§();
               _loc11_ = _loc9_.§4!'§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§1L§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§ !U§.§9!&§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§!d§:
               _loc13_ = param1 as b2EdgeShape;
               this.§ !U§.§!!J§(b2Math.§1L§(param2,_loc13_.GetVertex1()),b2Math.§1L§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

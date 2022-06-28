package §#V§
{
   import §&a§.*;
   import §,C§.*;
   import §,G§.*;
   import §0<§.b2Controller;
   import §0<§.b2ControllerEdge;
   import §3!m§.*;
   import §8w§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §0!"§:b2Transform = new b2Transform();
      
      private static var §;!@§:b2Sweep = new b2Sweep();
      
      private static var §9!`§:b2Sweep = new b2Sweep();
      
      private static var §+!I§:b2TimeStep = new b2TimeStep();
      
      private static var § Y§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §-!§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §,N§:Boolean;
      
      private static var §>m§:Boolean;
      
      public static const §&`§:int = 1;
      
      public static const §;9§:int = 2;
       
      
      private var §2D§:Vector.<b2Body>;
      
      b2internal var §]!p§:int;
      
      b2internal var §`N§:b2ContactManager;
      
      private var §@d§:b2ContactSolver;
      
      private var §1c§:b2Island;
      
      b2internal var §4!B§:b2Body;
      
      private var §,!K§:b2Joint;
      
      b2internal var §<!7§:b2Contact;
      
      private var §2R§:int;
      
      b2internal var §?o§:int;
      
      private var §+i§:int;
      
      private var §+!f§:b2Controller;
      
      private var §2&§:int;
      
      private var §1'§:b2Vec2;
      
      private var §[>§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §`!Z§:b2DestructionListener;
      
      private var §`M§:b2DebugDraw;
      
      private var §0z§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§2D§ = new Vector.<b2Body>();
         this.§`N§ = new b2ContactManager();
         this.§@d§ = new b2ContactSolver();
         this.§1c§ = new b2Island();
         super();
         this.§`!Z§ = null;
         this.§`M§ = null;
         this.§4!B§ = null;
         this.§<!7§ = null;
         this.§,!K§ = null;
         this.§+!f§ = null;
         this.§2R§ = 0;
         this.§?o§ = 0;
         this.§+i§ = 0;
         this.§2&§ = 0;
         §,N§ = true;
         §>m§ = true;
         this.§[>§ = param2;
         this.§1'§ = param1;
         this.§0z§ = 0;
         this.§`N§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§!!$§(_loc3_);
      }
      
      public function §5o§(param1:b2DestructionListener) : void
      {
         this.§`!Z§ = param1;
      }
      
      public function §1Q§(param1:b2ContactFilter) : void
      {
         this.§`N§.§!!q§ = param1;
      }
      
      public function §8!B§(param1:b2ContactListener) : void
      {
         this.§`N§.§"s§ = param1;
      }
      
      public function §;A§(param1:b2DebugDraw) : void
      {
         this.§`M§ = param1;
      }
      
      public function §,!'§(param1:§2U§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§2U§ = this.§`N§.§0!f§;
         this.§`N§.§0!f§ = param1;
         var _loc3_:b2Body = this.§4!B§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§6!s§;
            while(_loc4_)
            {
               _loc4_.§ !P§ = param1.§1!@§(_loc2_.§8!W§(_loc4_.§ !P§),_loc4_);
               _loc4_ = _loc4_.§@o§;
            }
            _loc3_ = _loc3_.§@o§;
         }
      }
      
      public function §]!b§() : void
      {
         this.§`N§.§0!f§.§]!b§();
      }
      
      public function §92§() : int
      {
         return this.§`N§.§0!f§.§92§();
      }
      
      public function §!!$§(param1:b2BodyDef) : b2Body
      {
         if(this.§+!#§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§[2§ = null;
         _loc2_.§@o§ = this.§4!B§;
         if(this.§4!B§)
         {
            this.§4!B§.§[2§ = _loc2_;
         }
         this.§4!B§ = _loc2_;
         ++this.§2R§;
         return _loc2_;
      }
      
      public function §`f§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§+!#§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§,!K§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§#!R§;
            if(this.§`!Z§)
            {
               this.§`!Z§.§<!S§(_loc6_.§!!d§);
            }
            this.§12§(_loc6_.§!!d§);
         }
         var _loc3_:b2ControllerEdge = param1.§+!f§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§^!K§;
            _loc7_.§-U§.§[T§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§<!7§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§#!R§;
            this.§`N§.§,!W§(_loc8_.§80§);
         }
         param1.§<!7§ = null;
         var _loc5_:b2Fixture = param1.§6!s§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§@o§;
            if(this.§`!Z§)
            {
               this.§`!Z§.§1!^§(_loc9_);
            }
            _loc9_.§for §(this.§`N§.§0!f§);
            _loc9_.§,!W§();
         }
         param1.§6!s§ = null;
         param1.§!H§ = 0;
         if(param1.§[2§)
         {
            param1.§[2§.§@o§ = param1.§@o§;
         }
         if(param1.§@o§)
         {
            param1.§@o§.§[2§ = param1.§[2§;
         }
         if(param1 == this.§4!B§)
         {
            this.§4!B§ = param1.§@o§;
         }
         --this.§2R§;
      }
      
      public function §%!w§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§1#§(param1,null);
         _loc2_.§[2§ = null;
         _loc2_.§@o§ = this.§,!K§;
         if(this.§,!K§)
         {
            this.§,!K§.§[2§ = _loc2_;
         }
         this.§,!K§ = _loc2_;
         ++this.§+i§;
         _loc2_.§>v§.§!!d§ = _loc2_;
         _loc2_.§>v§.§9"§ = _loc2_.§[=§;
         _loc2_.§>v§.§%E§ = null;
         _loc2_.§>v§.§#!R§ = _loc2_.§>0§.§,!K§;
         if(_loc2_.§>0§.§,!K§)
         {
            _loc2_.§>0§.§,!K§.§%E§ = _loc2_.§>v§;
         }
         _loc2_.§>0§.§,!K§ = _loc2_.§>v§;
         _loc2_.§?!>§.§!!d§ = _loc2_;
         _loc2_.§?!>§.§9"§ = _loc2_.§>0§;
         _loc2_.§?!>§.§%E§ = null;
         _loc2_.§?!>§.§#!R§ = _loc2_.§[=§.§,!K§;
         if(_loc2_.§[=§.§,!K§)
         {
            _loc2_.§[=§.§,!K§.§%E§ = _loc2_.§?!>§;
         }
         _loc2_.§[=§.§,!K§ = _loc2_.§?!>§;
         var _loc3_:b2Body = param1.§0w§;
         var _loc4_:b2Body = param1.§^2§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§ !S§();
            while(_loc5_)
            {
               if(_loc5_.§9"§ == _loc3_)
               {
                  _loc5_.§80§.§9!E§();
               }
               _loc5_ = _loc5_.§#!R§;
            }
         }
         return _loc2_;
      }
      
      public function §12§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§ "§;
         if(param1.§[2§)
         {
            param1.§[2§.§@o§ = param1.§@o§;
         }
         if(param1.§@o§)
         {
            param1.§@o§.§[2§ = param1.§[2§;
         }
         if(param1 == this.§,!K§)
         {
            this.§,!K§ = param1.§@o§;
         }
         var _loc3_:b2Body = param1.§>0§;
         var _loc4_:b2Body = param1.§[=§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§>v§.§%E§)
         {
            param1.§>v§.§%E§.§#!R§ = param1.§>v§.§#!R§;
         }
         if(param1.§>v§.§#!R§)
         {
            param1.§>v§.§#!R§.§%E§ = param1.§>v§.§%E§;
         }
         if(param1.§>v§ == _loc3_.§,!K§)
         {
            _loc3_.§,!K§ = param1.§>v§.§#!R§;
         }
         param1.§>v§.§%E§ = null;
         param1.§>v§.§#!R§ = null;
         if(param1.§?!>§.§%E§)
         {
            param1.§?!>§.§%E§.§#!R§ = param1.§?!>§.§#!R§;
         }
         if(param1.§?!>§.§#!R§)
         {
            param1.§?!>§.§#!R§.§%E§ = param1.§?!>§.§%E§;
         }
         if(param1.§?!>§ == _loc4_.§,!K§)
         {
            _loc4_.§,!K§ = param1.§?!>§.§#!R§;
         }
         param1.§?!>§.§%E§ = null;
         param1.§?!>§.§#!R§ = null;
         b2Joint.§,!W§(param1,null);
         --this.§+i§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§ !S§();
            while(_loc5_)
            {
               if(_loc5_.§9"§ == _loc3_)
               {
                  _loc5_.§80§.§9!E§();
               }
               _loc5_ = _loc5_.§#!R§;
            }
         }
      }
      
      public function §?f§(param1:b2Controller) : b2Controller
      {
         param1.§@o§ = this.§+!f§;
         param1.§[2§ = null;
         this.§+!f§ = param1;
         param1.m_world = this;
         ++this.§2&§;
         return param1;
      }
      
      public function §[!F§(param1:b2Controller) : void
      {
         if(param1.§[2§)
         {
            param1.§[2§.§@o§ = param1.§@o§;
         }
         if(param1.§@o§)
         {
            param1.§@o§.§[2§ = param1.§[2§;
         }
         if(this.§+!f§ == param1)
         {
            this.§+!f§ = param1.§@o§;
         }
         --this.§2&§;
      }
      
      public function §7!E§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§@o§ = this.§+!f§;
         param1.§[2§ = null;
         if(this.§+!f§)
         {
            this.§+!f§.§[2§ = param1;
         }
         this.§+!f§ = param1;
         ++this.§2&§;
         param1.m_world = this;
         return param1;
      }
      
      public function §8z§(param1:b2Controller) : void
      {
         param1.§-6§();
         if(param1.§@o§)
         {
            param1.§@o§.§[2§ = param1.§[2§;
         }
         if(param1.§[2§)
         {
            param1.§[2§.§@o§ = param1.§@o§;
         }
         if(param1 == this.§+!f§)
         {
            this.§+!f§ = param1.§@o§;
         }
         --this.§2&§;
      }
      
      public function §+!>§(param1:Boolean) : void
      {
         §,N§ = param1;
      }
      
      public function § 0§(param1:Boolean) : void
      {
         §>m§ = param1;
      }
      
      public function § =§() : int
      {
         return this.§2R§;
      }
      
      public function §"n§() : int
      {
         return this.§+i§;
      }
      
      public function §1!J§() : int
      {
         return this.§?o§;
      }
      
      public function §3L§(param1:b2Vec2) : void
      {
         this.§1'§ = param1;
      }
      
      public function §'9§() : b2Vec2
      {
         return this.§1'§;
      }
      
      public function §5w§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §8y§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§]!p§ & §&`§)
         {
            this.§`N§.§,K§();
            this.§]!p§ &= ~§&`§;
         }
         this.§]!p§ |= §;9§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§&!'§ = param1;
         _loc4_.§,!v§ = param2;
         _loc4_.§-!x§ = param3;
         if(param1 > 0)
         {
            _loc4_.§-!i§ = 1 / param1;
         }
         else
         {
            _loc4_.§-!i§ = 0;
         }
         _loc4_.§ !o§ = this.§0z§ * param1;
         _loc4_.§#!P§ = §,N§;
         this.§`N§.§,!t§();
         if(_loc4_.§&!'§ > 0)
         {
            this.§-,§(_loc4_);
         }
         if(§>m§ && _loc4_.§&!'§ > 0)
         {
            this.§0!-§(_loc4_);
         }
         if(_loc4_.§&!'§ > 0)
         {
            this.§0z§ = _loc4_.§-!i§;
         }
         this.§]!p§ &= ~§;9§;
      }
      
      public function §7!A§() : void
      {
         var _loc1_:b2Body = this.§4!B§;
         while(_loc1_)
         {
            _loc1_.§^!L§.§&!K§();
            _loc1_.§%&§ = 0;
            _loc1_ = _loc1_.§@o§;
         }
      }
      
      public function §?Z§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§2U§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§`M§ == null)
         {
            return;
         }
         this.§`M§.§4@§.graphics.clear();
         var _loc1_:uint = this.§`M§.§!5§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§ J§)
         {
            _loc3_ = this.§4!B§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§,!H§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§89§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§@0§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§'!_§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§@0§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§'!_§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§@0§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§@0§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§@0§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§@o§;
               }
               _loc3_ = _loc3_.§@o§;
            }
         }
         if(_loc1_ & b2DebugDraw.§]!G§)
         {
            _loc6_ = this.§,!K§;
            while(_loc6_)
            {
               this.§^!p§(_loc6_);
               _loc6_ = _loc6_.§@o§;
            }
         }
         if(_loc1_ & b2DebugDraw.§<b§)
         {
            _loc16_ = this.§+!f§;
            while(_loc16_)
            {
               _loc16_.§<9§(this.§`M§);
               _loc16_ = _loc16_.§@o§;
            }
         }
         if(_loc1_ & b2DebugDraw.§<!x§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§`N§.§<!7§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§68§();
               _loc19_ = _loc17_.§[t§();
               _loc20_ = _loc18_.§"Y§().§,!8§();
               _loc21_ = _loc19_.§"Y§().§,!8§();
               this.§`M§.§@!7§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§>H§();
            }
         }
         if(_loc1_ & b2DebugDraw.§3T§)
         {
            _loc7_ = this.§`N§.§0!f§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§4!B§;
            while(_loc3_)
            {
               if(_loc3_.§89§() != false)
               {
                  _loc4_ = _loc3_.§,!H§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§8!W§(_loc4_.§ !P§);
                     _loc14_[0].Set(_loc22_.§+!`§.x,_loc22_.§+!`§.y);
                     _loc14_[1].Set(_loc22_.§"W§.x,_loc22_.§+!`§.y);
                     _loc14_[2].Set(_loc22_.§"W§.x,_loc22_.§"W§.y);
                     _loc14_[3].Set(_loc22_.§+!`§.x,_loc22_.§"W§.y);
                     this.§`M§.§6!@§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§>H§();
                  }
               }
               _loc3_ = _loc3_.§>H§();
            }
         }
         if(_loc1_ & b2DebugDraw.§9v§)
         {
            _loc3_ = this.§4!B§;
            while(_loc3_)
            {
               (_loc11_ = §0!"§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§64§();
               this.§`M§.§<G§(_loc11_);
               _loc3_ = _loc3_.§@o§;
            }
         }
      }
      
      public function §%p§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§2U§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§`N§.§0!f§;
         broadPhase.§4!3§(WorldQueryWrapper,aabb);
      }
      
      public function §return§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§2U§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§3!V§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§7§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§9!O§();
         }
         broadPhase = this.§`N§.§0!f§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§4!3§(WorldQueryWrapper,aabb);
      }
      
      public function §]!'§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§2U§ = null;
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
         broadPhase = this.§`N§.§0!f§;
         var aabb:b2AABB = new b2AABB();
         aabb.§+!`§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§"W§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§4!3§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§2U§ = null;
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
            return param1.§[n§;
         };
         broadPhase = this.§`N§.§0!f§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §,!%§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §4S§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §;1§() : b2Body
      {
         return this.§4!B§;
      }
      
      public function §%[§() : b2Joint
      {
         return this.§,!K§;
      }
      
      public function § !S§() : b2Contact
      {
         return this.§<!7§;
      }
      
      public function §+!#§() : Boolean
      {
         return (this.§]!p§ & §;9§) > 0;
      }
      
      b2internal function §-,§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§+!f§;
         while(_loc3_)
         {
            _loc3_.§8y§(param1);
            _loc3_ = _loc3_.§@o§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§1c§).§'K§(this.§2R§,this.§?o§,this.§+i§,null,this.§`N§.§"s§,this.§@d§);
         _loc2_ = this.§4!B§;
         while(_loc2_)
         {
            _loc2_.§]!p§ &= ~b2Body.§6!I§;
            _loc2_ = _loc2_.§@o§;
         }
         var _loc5_:b2Contact = this.§<!7§;
         while(_loc5_)
         {
            _loc5_.§]!p§ &= ~b2Contact.§6!I§;
            _loc5_ = _loc5_.§@o§;
         }
         var _loc6_:b2Joint = this.§,!K§;
         while(_loc6_)
         {
            _loc6_.§%!'§ = false;
            _loc6_ = _loc6_.§@o§;
         }
         var _loc7_:int = this.§2R§;
         var _loc8_:Vector.<b2Body> = this.§2D§;
         var _loc9_:b2Body = this.§4!B§;
         while(_loc9_)
         {
            if(!(_loc9_.§]!p§ & b2Body.§6!I§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§89§() == false))
               {
                  if(_loc9_.§'!_§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§-6§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§]!p§ |= b2Body.§6!I§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§@O§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§'!_§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§<!7§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§80§.§]!p§ & b2Contact.§6!I§))
                              {
                                 if(!(_loc13_.§80§.§0S§() == true || _loc13_.§80§.§;!R§() == false || _loc13_.§80§.§]i§() == false))
                                 {
                                    _loc4_.§6w§(_loc13_.§80§);
                                    _loc13_.§80§.§]!p§ |= b2Contact.§6!I§;
                                    if(!((_loc12_ = _loc13_.§9"§).§]!p§ & b2Body.§6!I§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§]!p§ |= b2Body.§6!I§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§#!R§;
                           }
                           _loc14_ = _loc2_.§,!K§;
                           while(_loc14_)
                           {
                              if(_loc14_.§!!d§.§%!'§ != true)
                              {
                                 if((_loc12_ = _loc14_.§9"§).§89§() != false)
                                 {
                                    _loc4_.§5q§(_loc14_.§!!d§);
                                    _loc14_.§!!d§.§%!'§ = true;
                                    if(!(_loc12_.§]!p§ & b2Body.§6!I§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§]!p§ |= b2Body.§6!I§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§#!R§;
                           }
                        }
                     }
                     _loc4_.§-,§(param1,this.§1'§,this.§[>§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§2R§)
                     {
                        _loc2_ = _loc4_.§[_§[_loc11_];
                        if(_loc2_.§'!_§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§]!p§ &= ~b2Body.§6!I§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§@o§;
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
         _loc2_ = this.§4!B§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§89§() == false))
            {
               if(_loc2_.§'!_§() != b2Body.b2_staticBody)
               {
                  _loc2_.§9%§();
               }
            }
            _loc2_ = _loc2_.§@o§;
         }
         this.§`N§.§,K§();
      }
      
      b2internal function §0!-§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§1c§).§'K§(this.§2R§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§`N§.§"s§,this.§@d§);
         var _loc10_:Vector.<b2Body> = § Y§;
         _loc2_ = this.§4!B§;
         while(_loc2_)
         {
            _loc2_.§]!p§ &= ~b2Body.§6!I§;
            _loc2_.m_sweep.§!%§ = 0;
            _loc2_ = _loc2_.§@o§;
         }
         _loc11_ = this.§<!7§;
         while(_loc11_)
         {
            _loc11_.§]!p§ &= ~(b2Contact.§use § | b2Contact.§6!I§);
            _loc11_ = _loc11_.§@o§;
         }
         _loc8_ = this.§,!K§;
         while(_loc8_)
         {
            _loc8_.§%!'§ = false;
            _loc8_ = _loc8_.§@o§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§<!7§;
            while(_loc11_)
            {
               if(!(_loc11_.§0S§() == true || _loc11_.§;!R§() == false || _loc11_.§;!u§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§]!p§ & b2Contact.§use §)
                  {
                     _loc19_ = _loc11_.§`!U§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§3t§;
                     _loc4_ = _loc11_.§[i§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§'!_§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§'!_§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr615:
                        _loc11_ = _loc11_.§@o§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§!%§;
                     if(_loc5_.m_sweep.§!%§ < _loc6_.m_sweep.§!%§)
                     {
                        _loc20_ = _loc6_.m_sweep.§!%§;
                        _loc5_.m_sweep.§#B§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§!%§ < _loc5_.m_sweep.§!%§)
                     {
                        _loc20_ = _loc5_.m_sweep.§!%§;
                        _loc6_.m_sweep.§#B§(_loc20_);
                     }
                     _loc19_ = _loc11_.§9C§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§`!U§ = _loc19_;
                     _loc11_.§]!p§ |= b2Contact.§use §;
                     §§goto(addr615);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr615);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§3t§;
            _loc4_ = _loc12_.§[i§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §;!@§.Set(_loc5_.m_sweep);
            §9!`§.Set(_loc6_.m_sweep);
            _loc5_.§#B§(_loc13_);
            _loc6_.§#B§(_loc13_);
            _loc12_.§8!s§(this.§`N§.§"s§);
            _loc12_.§]!p§ &= ~b2Contact.§use §;
            if(_loc12_.§0S§() == true || _loc12_.§;!R§() == false)
            {
               _loc5_.m_sweep.Set(§;!@§);
               _loc6_.m_sweep.Set(§9!`§);
               _loc5_.§#3§();
               _loc6_.§#3§();
            }
            else if(_loc12_.§]i§() != false)
            {
               if((_loc14_ = _loc5_).§'!_§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§-6§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§]!p§ |= b2Body.§6!I§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§@O§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§'!_§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§<!7§;
                     while(_loc7_)
                     {
                        if(_loc9_.§?o§ == _loc9_.§2!l§)
                        {
                           break;
                        }
                        if(!(_loc7_.§80§.§]!p§ & b2Contact.§6!I§))
                        {
                           if(!(_loc7_.§80§.§0S§() == true || _loc7_.§80§.§;!R§() == false || _loc7_.§80§.§]i§() == false))
                           {
                              _loc9_.§6w§(_loc7_.§80§);
                              _loc7_.§80§.§]!p§ |= b2Contact.§6!I§;
                              if(!((_loc22_ = _loc7_.§9"§).§]!p§ & b2Body.§6!I§))
                              {
                                 if(_loc22_.§'!_§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§#B§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§]!p§ |= b2Body.§6!I§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§#!R§;
                     }
                     _loc21_ = _loc2_.§,!K§;
                     while(_loc21_)
                     {
                        if(_loc9_.§+i§ != _loc9_.§]!S§)
                        {
                           if(_loc21_.§!!d§.§%!'§ != true)
                           {
                              if((_loc22_ = _loc21_.§9"§).§89§() != false)
                              {
                                 _loc9_.§5q§(_loc21_.§!!d§);
                                 _loc21_.§!!d§.§%!'§ = true;
                                 if(!(_loc22_.§]!p§ & b2Body.§6!I§))
                                 {
                                    if(_loc22_.§'!_§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§#B§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§]!p§ |= b2Body.§6!I§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§#!R§;
                     }
                  }
               }
               (_loc17_ = §+!I§).§#!P§ = false;
               _loc17_.§&!'§ = (1 - _loc13_) * param1.§&!'§;
               _loc17_.§-!i§ = 1 / _loc17_.§&!'§;
               _loc17_.§ !o§ = 0;
               _loc17_.§,!v§ = param1.§,!v§;
               _loc17_.§-!x§ = param1.§-!x§;
               _loc9_.§0!-§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§2R§)
               {
                  _loc2_ = _loc9_.§[_§[_loc18_];
                  _loc2_.§]!p§ &= ~b2Body.§6!I§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§'!_§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§9%§();
                        _loc7_ = _loc2_.§<!7§;
                        while(_loc7_)
                        {
                           _loc7_.§80§.§]!p§ &= ~b2Contact.§use §;
                           _loc7_ = _loc7_.§#!R§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§?o§)
               {
                  _loc11_ = _loc9_.§!!f§[_loc18_];
                  _loc11_.§]!p§ &= ~(b2Contact.§use § | b2Contact.§6!I§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§+i§)
               {
                  (_loc8_ = _loc9_.§-E§[_loc18_]).§%!'§ = false;
                  _loc18_++;
               }
               this.§`N§.§,K§();
            }
         }
      }
      
      b2internal function §^!p§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§>!0§();
         var _loc3_:b2Body = param1.§&@§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §-!§;
         switch(param1.§"_§)
         {
            case b2Joint.§&!D§:
               this.§`M§.§@!7§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§-L§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§8H§();
               _loc13_ = _loc11_.§]!7§();
               this.§`M§.§@!7§(_loc12_,_loc8_,_loc10_);
               this.§`M§.§@!7§(_loc13_,_loc9_,_loc10_);
               this.§`M§.§@!7§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§5!?§:
               this.§`M§.§@!7§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§`M§.§@!7§(_loc6_,_loc8_,_loc10_);
               }
               this.§`M§.§@!7§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§`M§.§@!7§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §@0§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§"_§)
         {
            case b2Shape.§1"§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§#!<§(param2,_loc4_.§^!I§);
               _loc6_ = _loc4_.§?!X§;
               _loc7_ = param2.R.col1;
               this.§`M§.§,%§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§+!N§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§5B§();
               _loc11_ = _loc9_.§^3§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§#!<§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§`M§.§%!e§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§`!<§:
               _loc13_ = param1 as b2EdgeShape;
               this.§`M§.§@!7§(b2Math.§#!<§(param2,_loc13_.GetVertex1()),b2Math.§#!<§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

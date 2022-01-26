package §!!B§
{
   import §!H§.*;
   import §3!&§.*;
   import §5!A§.b2Controller;
   import §5!A§.b2ControllerEdge;
   import §5p§.*;
   import §7S§.*;
   import §;0§.*;
   import §;U§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §5!F§:b2Transform = new b2Transform();
      
      private static var §%!%§:b2Sweep = new b2Sweep();
      
      private static var § u§:b2Sweep = new b2Sweep();
      
      private static var §>G§:b2TimeStep = new b2TimeStep();
      
      private static var §@!3§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §"'§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §1<§:Boolean;
      
      private static var §5![§:Boolean;
      
      public static const §3W§:int = 1;
      
      public static const §+!+§:int = 2;
       
      
      private var §,!H§:Vector.<b2Body>;
      
      b2internal var §5!9§:int;
      
      b2internal var §&!O§:b2ContactManager;
      
      private var §%F§:b2ContactSolver;
      
      private var §0!>§:b2Island;
      
      b2internal var §#!W§:b2Body;
      
      private var §!!T§:b2Joint;
      
      b2internal var §%u§:b2Contact;
      
      private var §@!5§:int;
      
      b2internal var §=!B§:int;
      
      private var §!J§:int;
      
      private var §;!-§:b2Controller;
      
      private var §+K§:int;
      
      private var §+a§:b2Vec2;
      
      private var §%_§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §^!Z§:b2DestructionListener;
      
      private var §^t§:b2DebugDraw;
      
      private var §0!I§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§,!H§ = new Vector.<b2Body>();
         this.§&!O§ = new b2ContactManager();
         this.§%F§ = new b2ContactSolver();
         this.§0!>§ = new b2Island();
         super();
         this.§^!Z§ = null;
         this.§^t§ = null;
         this.§#!W§ = null;
         this.§%u§ = null;
         this.§!!T§ = null;
         this.§;!-§ = null;
         this.§@!5§ = 0;
         this.§=!B§ = 0;
         this.§!J§ = 0;
         this.§+K§ = 0;
         §1<§ = true;
         §5![§ = true;
         this.§%_§ = param2;
         this.§+a§ = param1;
         this.§0!I§ = 0;
         this.§&!O§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§;f§(_loc3_);
      }
      
      public function §#!&§(param1:b2DestructionListener) : void
      {
         this.§^!Z§ = param1;
      }
      
      public function §?!`§(param1:b2ContactFilter) : void
      {
         this.§&!O§.§<-§ = param1;
      }
      
      public function §]w§(param1:b2ContactListener) : void
      {
         this.§&!O§.§;=§ = param1;
      }
      
      public function §2!a§(param1:b2DebugDraw) : void
      {
         this.§^t§ = param1;
      }
      
      public function §7!S§(param1:§"!P§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§"!P§ = this.§&!O§.§1k§;
         this.§&!O§.§1k§ = param1;
         var _loc3_:b2Body = this.§#!W§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§0#§;
            while(_loc4_)
            {
               _loc4_.§3T§ = param1.§0!3§(_loc2_.§5!]§(_loc4_.§3T§),_loc4_);
               _loc4_ = _loc4_.§6!#§;
            }
            _loc3_ = _loc3_.§6!#§;
         }
      }
      
      public function §`!Q§() : void
      {
         this.§&!O§.§1k§.§`!Q§();
      }
      
      public function §+L§() : int
      {
         return this.§&!O§.§1k§.§+L§();
      }
      
      public function §;f§(param1:b2BodyDef) : b2Body
      {
         if(this.§0!M§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§6+§ = null;
         _loc2_.§6!#§ = this.§#!W§;
         if(this.§#!W§)
         {
            this.§#!W§.§6+§ = _loc2_;
         }
         this.§#!W§ = _loc2_;
         ++this.§@!5§;
         return _loc2_;
      }
      
      public function §%![§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§0!M§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§!!T§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§@!I§;
            if(this.§^!Z§)
            {
               this.§^!Z§.§#D§(_loc6_.§8p§);
            }
            this.§'B§(_loc6_.§8p§);
         }
         var _loc3_:b2ControllerEdge = param1.§;!-§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§;A§;
            _loc7_.§@!H§.§0!W§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§%u§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§@!I§;
            this.§&!O§.§true§(_loc8_.§ C§);
         }
         param1.§%u§ = null;
         var _loc5_:b2Fixture = param1.§0#§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§6!#§;
            if(this.§^!Z§)
            {
               this.§^!Z§.§ !$§(_loc9_);
            }
            _loc9_.§3N§(this.§&!O§.§1k§);
            _loc9_.§true§();
         }
         param1.§0#§ = null;
         param1.§`!Z§ = 0;
         if(param1.§6+§)
         {
            param1.§6+§.§6!#§ = param1.§6!#§;
         }
         if(param1.§6!#§)
         {
            param1.§6!#§.§6+§ = param1.§6+§;
         }
         if(param1 == this.§#!W§)
         {
            this.§#!W§ = param1.§6!#§;
         }
         --this.§@!5§;
      }
      
      public function §&!L§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§=S§(param1,null);
         _loc2_.§6+§ = null;
         _loc2_.§6!#§ = this.§!!T§;
         if(this.§!!T§)
         {
            this.§!!T§.§6+§ = _loc2_;
         }
         this.§!!T§ = _loc2_;
         ++this.§!J§;
         _loc2_.§,!_§.§8p§ = _loc2_;
         _loc2_.§,!_§.§%-§ = _loc2_.§%!§;
         _loc2_.§,!_§.§+!E§ = null;
         _loc2_.§,!_§.§@!I§ = _loc2_.§!!!§.§!!T§;
         if(_loc2_.§!!!§.§!!T§)
         {
            _loc2_.§!!!§.§!!T§.§+!E§ = _loc2_.§,!_§;
         }
         _loc2_.§!!!§.§!!T§ = _loc2_.§,!_§;
         _loc2_.§>T§.§8p§ = _loc2_;
         _loc2_.§>T§.§%-§ = _loc2_.§!!!§;
         _loc2_.§>T§.§+!E§ = null;
         _loc2_.§>T§.§@!I§ = _loc2_.§%!§.§!!T§;
         if(_loc2_.§%!§.§!!T§)
         {
            _loc2_.§%!§.§!!T§.§+!E§ = _loc2_.§>T§;
         }
         _loc2_.§%!§.§!!T§ = _loc2_.§>T§;
         var _loc3_:b2Body = param1.§1U§;
         var _loc4_:b2Body = param1.§"=§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§""§();
            while(_loc5_)
            {
               if(_loc5_.§%-§ == _loc3_)
               {
                  _loc5_.§ C§.§4y§();
               }
               _loc5_ = _loc5_.§@!I§;
            }
         }
         return _loc2_;
      }
      
      public function §'B§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§'!_§;
         if(param1.§6+§)
         {
            param1.§6+§.§6!#§ = param1.§6!#§;
         }
         if(param1.§6!#§)
         {
            param1.§6!#§.§6+§ = param1.§6+§;
         }
         if(param1 == this.§!!T§)
         {
            this.§!!T§ = param1.§6!#§;
         }
         var _loc3_:b2Body = param1.§!!!§;
         var _loc4_:b2Body = param1.§%!§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§,!_§.§+!E§)
         {
            param1.§,!_§.§+!E§.§@!I§ = param1.§,!_§.§@!I§;
         }
         if(param1.§,!_§.§@!I§)
         {
            param1.§,!_§.§@!I§.§+!E§ = param1.§,!_§.§+!E§;
         }
         if(param1.§,!_§ == _loc3_.§!!T§)
         {
            _loc3_.§!!T§ = param1.§,!_§.§@!I§;
         }
         param1.§,!_§.§+!E§ = null;
         param1.§,!_§.§@!I§ = null;
         if(param1.§>T§.§+!E§)
         {
            param1.§>T§.§+!E§.§@!I§ = param1.§>T§.§@!I§;
         }
         if(param1.§>T§.§@!I§)
         {
            param1.§>T§.§@!I§.§+!E§ = param1.§>T§.§+!E§;
         }
         if(param1.§>T§ == _loc4_.§!!T§)
         {
            _loc4_.§!!T§ = param1.§>T§.§@!I§;
         }
         param1.§>T§.§+!E§ = null;
         param1.§>T§.§@!I§ = null;
         b2Joint.§true§(param1,null);
         --this.§!J§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§""§();
            while(_loc5_)
            {
               if(_loc5_.§%-§ == _loc3_)
               {
                  _loc5_.§ C§.§4y§();
               }
               _loc5_ = _loc5_.§@!I§;
            }
         }
      }
      
      public function §09§(param1:b2Controller) : b2Controller
      {
         param1.§6!#§ = this.§;!-§;
         param1.§6+§ = null;
         this.§;!-§ = param1;
         param1.m_world = this;
         ++this.§+K§;
         return param1;
      }
      
      public function §`!C§(param1:b2Controller) : void
      {
         if(param1.§6+§)
         {
            param1.§6+§.§6!#§ = param1.§6!#§;
         }
         if(param1.§6!#§)
         {
            param1.§6!#§.§6+§ = param1.§6+§;
         }
         if(this.§;!-§ == param1)
         {
            this.§;!-§ = param1.§6!#§;
         }
         --this.§+K§;
      }
      
      public function §;7§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§6!#§ = this.§;!-§;
         param1.§6+§ = null;
         if(this.§;!-§)
         {
            this.§;!-§.§6+§ = param1;
         }
         this.§;!-§ = param1;
         ++this.§+K§;
         param1.m_world = this;
         return param1;
      }
      
      public function §#V§(param1:b2Controller) : void
      {
         param1.§"R§();
         if(param1.§6!#§)
         {
            param1.§6!#§.§6+§ = param1.§6+§;
         }
         if(param1.§6+§)
         {
            param1.§6+§.§6!#§ = param1.§6!#§;
         }
         if(param1 == this.§;!-§)
         {
            this.§;!-§ = param1.§6!#§;
         }
         --this.§+K§;
      }
      
      public function §&!?§(param1:Boolean) : void
      {
         §1<§ = param1;
      }
      
      public function §`D§(param1:Boolean) : void
      {
         §5![§ = param1;
      }
      
      public function §6!L§() : int
      {
         return this.§@!5§;
      }
      
      public function §function§() : int
      {
         return this.§!J§;
      }
      
      public function §>!,§() : int
      {
         return this.§=!B§;
      }
      
      public function §'L§(param1:b2Vec2) : void
      {
         this.§+a§ = param1;
      }
      
      public function §90§() : b2Vec2
      {
         return this.§+a§;
      }
      
      public function §"! §() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §]^§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§5!9§ & §3W§)
         {
            this.§&!O§.§@!!§();
            this.§5!9§ &= ~§3W§;
         }
         this.§5!9§ |= §+!+§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§1-§ = param1;
         _loc4_.§&U§ = param2;
         _loc4_.§ J§ = param3;
         if(param1 > 0)
         {
            _loc4_.§5Q§ = 1 / param1;
         }
         else
         {
            _loc4_.§5Q§ = 0;
         }
         _loc4_.§+k§ = this.§0!I§ * param1;
         _loc4_.§7!Z§ = §1<§;
         this.§&!O§.§7!§();
         if(_loc4_.§1-§ > 0)
         {
            this.§??§(_loc4_);
         }
         if(§5![§ && _loc4_.§1-§ > 0)
         {
            this.§`b§(_loc4_);
         }
         if(_loc4_.§1-§ > 0)
         {
            this.§0!I§ = _loc4_.§5Q§;
         }
         this.§5!9§ &= ~§+!+§;
      }
      
      public function §1P§() : void
      {
         var _loc1_:b2Body = this.§#!W§;
         while(_loc1_)
         {
            _loc1_.§;"§.§4S§();
            _loc1_.§;!9§ = 0;
            _loc1_ = _loc1_.§6!#§;
         }
      }
      
      public function §2!D§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§"!P§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§^t§ == null)
         {
            return;
         }
         this.§^t§.§>!9§.graphics.clear();
         var _loc1_:uint = this.§^t§.§<!#§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§6! §)
         {
            _loc3_ = this.§#!W§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§for §();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§3!§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§2!9§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§9o§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§2!9§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§9o§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§2!9§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§2!9§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§2!9§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§6!#§;
               }
               _loc3_ = _loc3_.§6!#§;
            }
         }
         if(_loc1_ & b2DebugDraw.§?e§)
         {
            _loc6_ = this.§!!T§;
            while(_loc6_)
            {
               this.§!G§(_loc6_);
               _loc6_ = _loc6_.§6!#§;
            }
         }
         if(_loc1_ & b2DebugDraw.§<!N§)
         {
            _loc16_ = this.§;!-§;
            while(_loc16_)
            {
               _loc16_.§-f§(this.§^t§);
               _loc16_ = _loc16_.§6!#§;
            }
         }
         if(_loc1_ & b2DebugDraw.§1!]§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§&!O§.§%u§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§-!V§();
               _loc19_ = _loc17_.§0&§();
               _loc20_ = _loc18_.§`X§().§"!3§();
               _loc21_ = _loc19_.§`X§().§"!3§();
               this.§^t§.§ N§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§3q§();
            }
         }
         if(_loc1_ & b2DebugDraw.§`_§)
         {
            _loc7_ = this.§&!O§.§1k§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§#!W§;
            while(_loc3_)
            {
               if(_loc3_.§3!§() != false)
               {
                  _loc4_ = _loc3_.§for §();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§5!]§(_loc4_.§3T§);
                     _loc14_[0].Set(_loc22_.§%!6§.x,_loc22_.§%!6§.y);
                     _loc14_[1].Set(_loc22_.§4!=§.x,_loc22_.§%!6§.y);
                     _loc14_[2].Set(_loc22_.§4!=§.x,_loc22_.§4!=§.y);
                     _loc14_[3].Set(_loc22_.§%!6§.x,_loc22_.§4!=§.y);
                     this.§^t§.§"i§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§3q§();
                  }
               }
               _loc3_ = _loc3_.§3q§();
            }
         }
         if(_loc1_ & b2DebugDraw.§<s§)
         {
            _loc3_ = this.§#!W§;
            while(_loc3_)
            {
               (_loc11_ = §5!F§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§8Y§();
               this.§^t§.§1!9§(_loc11_);
               _loc3_ = _loc3_.§6!#§;
            }
         }
      }
      
      public function §39§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§"!P§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§&!O§.§1k§;
         broadPhase.§=x§(WorldQueryWrapper,aabb);
      }
      
      public function §&!B§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§"!P§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§=o§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§4>§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§3x§();
         }
         broadPhase = this.§&!O§.§1k§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§=x§(WorldQueryWrapper,aabb);
      }
      
      public function §2! §(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§"!P§ = null;
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
         broadPhase = this.§&!O§.§1k§;
         var aabb:b2AABB = new b2AABB();
         aabb.§%!6§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§4!=§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§=x§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§"!P§ = null;
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
            return param1.§5v§;
         };
         broadPhase = this.§&!O§.§1k§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §7!Y§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §?C§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §@+§() : b2Body
      {
         return this.§#!W§;
      }
      
      public function §2!Y§() : b2Joint
      {
         return this.§!!T§;
      }
      
      public function §""§() : b2Contact
      {
         return this.§%u§;
      }
      
      public function §0!M§() : Boolean
      {
         return (this.§5!9§ & §+!+§) > 0;
      }
      
      b2internal function §??§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§;!-§;
         while(_loc3_)
         {
            _loc3_.§]^§(param1);
            _loc3_ = _loc3_.§6!#§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§0!>§).§`!0§(this.§@!5§,this.§=!B§,this.§!J§,null,this.§&!O§.§;=§,this.§%F§);
         _loc2_ = this.§#!W§;
         while(_loc2_)
         {
            _loc2_.§5!9§ &= ~b2Body.§0§;
            _loc2_ = _loc2_.§6!#§;
         }
         var _loc5_:b2Contact = this.§%u§;
         while(_loc5_)
         {
            _loc5_.§5!9§ &= ~b2Contact.§0§;
            _loc5_ = _loc5_.§6!#§;
         }
         var _loc6_:b2Joint = this.§!!T§;
         while(_loc6_)
         {
            _loc6_.§"J§ = false;
            _loc6_ = _loc6_.§6!#§;
         }
         var _loc7_:int = this.§@!5§;
         var _loc8_:Vector.<b2Body> = this.§,!H§;
         var _loc9_:b2Body = this.§#!W§;
         while(_loc9_)
         {
            if(!(_loc9_.§5!9§ & b2Body.§0§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§3!§() == false))
               {
                  if(_loc9_.§9o§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§"R§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§5!9§ |= b2Body.§0§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§%K§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§9o§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§%u§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§ C§.§5!9§ & b2Contact.§0§))
                              {
                                 if(!(_loc13_.§ C§.§&!'§() == true || _loc13_.§ C§.§6b§() == false || _loc13_.§ C§.§"!A§() == false))
                                 {
                                    _loc4_.§6-§(_loc13_.§ C§);
                                    _loc13_.§ C§.§5!9§ |= b2Contact.§0§;
                                    if(!((_loc12_ = _loc13_.§%-§).§5!9§ & b2Body.§0§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§5!9§ |= b2Body.§0§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§@!I§;
                           }
                           _loc14_ = _loc2_.§!!T§;
                           while(_loc14_)
                           {
                              if(_loc14_.§8p§.§"J§ != true)
                              {
                                 if((_loc12_ = _loc14_.§%-§).§3!§() != false)
                                 {
                                    _loc4_.§9t§(_loc14_.§8p§);
                                    _loc14_.§8p§.§"J§ = true;
                                    if(!(_loc12_.§5!9§ & b2Body.§0§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§5!9§ |= b2Body.§0§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§@!I§;
                           }
                        }
                     }
                     _loc4_.§??§(param1,this.§+a§,this.§%_§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§@!5§)
                     {
                        _loc2_ = _loc4_.§ c§[_loc11_];
                        if(_loc2_.§9o§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§5!9§ &= ~b2Body.§0§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§6!#§;
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
         _loc2_ = this.§#!W§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§3!§() == false))
            {
               if(_loc2_.§9o§() != b2Body.b2_staticBody)
               {
                  _loc2_.§5!5§();
               }
            }
            _loc2_ = _loc2_.§6!#§;
         }
         this.§&!O§.§@!!§();
      }
      
      b2internal function §`b§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§0!>§).§`!0§(this.§@!5§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§&!O§.§;=§,this.§%F§);
         var _loc10_:Vector.<b2Body> = §@!3§;
         _loc2_ = this.§#!W§;
         while(_loc2_)
         {
            _loc2_.§5!9§ &= ~b2Body.§0§;
            _loc2_.m_sweep.§7!G§ = 0;
            _loc2_ = _loc2_.§6!#§;
         }
         _loc11_ = this.§%u§;
         while(_loc11_)
         {
            _loc11_.§5!9§ &= ~(b2Contact.§>!>§ | b2Contact.§0§);
            _loc11_ = _loc11_.§6!#§;
         }
         _loc8_ = this.§!!T§;
         while(_loc8_)
         {
            _loc8_.§"J§ = false;
            _loc8_ = _loc8_.§6!#§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§%u§;
            while(_loc11_)
            {
               if(!(_loc11_.§&!'§() == true || _loc11_.§6b§() == false || _loc11_.§#_§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§5!9§ & b2Contact.§>!>§)
                  {
                     _loc19_ = _loc11_.§"!S§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§=N§;
                     _loc4_ = _loc11_.§?P§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§9o§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§9o§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr616:
                        _loc11_ = _loc11_.§6!#§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§7!G§;
                     if(_loc5_.m_sweep.§7!G§ < _loc6_.m_sweep.§7!G§)
                     {
                        _loc20_ = _loc6_.m_sweep.§7!G§;
                        _loc5_.m_sweep.§#!<§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§7!G§ < _loc5_.m_sweep.§7!G§)
                     {
                        _loc20_ = _loc5_.m_sweep.§7!G§;
                        _loc6_.m_sweep.§#!<§(_loc20_);
                     }
                     _loc19_ = _loc11_.§]c§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§"!S§ = _loc19_;
                     _loc11_.§5!9§ |= b2Contact.§>!>§;
                     §§goto(addr616);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr616);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§=N§;
            _loc4_ = _loc12_.§?P§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §%!%§.Set(_loc5_.m_sweep);
            § u§.Set(_loc6_.m_sweep);
            _loc5_.§#!<§(_loc13_);
            _loc6_.§#!<§(_loc13_);
            _loc12_.§2!X§(this.§&!O§.§;=§);
            _loc12_.§5!9§ &= ~b2Contact.§>!>§;
            if(_loc12_.§&!'§() == true || _loc12_.§6b§() == false)
            {
               _loc5_.m_sweep.Set(§%!%§);
               _loc6_.m_sweep.Set(§ u§);
               _loc5_.§9!8§();
               _loc6_.§9!8§();
            }
            else if(_loc12_.§"!A§() != false)
            {
               if((_loc14_ = _loc5_).§9o§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§"R§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§5!9§ |= b2Body.§0§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§%K§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§9o§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§%u§;
                     while(_loc7_)
                     {
                        if(_loc9_.§=!B§ == _loc9_.§3!P§)
                        {
                           break;
                        }
                        if(!(_loc7_.§ C§.§5!9§ & b2Contact.§0§))
                        {
                           if(!(_loc7_.§ C§.§&!'§() == true || _loc7_.§ C§.§6b§() == false || _loc7_.§ C§.§"!A§() == false))
                           {
                              _loc9_.§6-§(_loc7_.§ C§);
                              _loc7_.§ C§.§5!9§ |= b2Contact.§0§;
                              if(!((_loc22_ = _loc7_.§%-§).§5!9§ & b2Body.§0§))
                              {
                                 if(_loc22_.§9o§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§#!<§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§5!9§ |= b2Body.§0§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§@!I§;
                     }
                     _loc21_ = _loc2_.§!!T§;
                     while(_loc21_)
                     {
                        if(_loc9_.§!J§ != _loc9_.§`!^§)
                        {
                           if(_loc21_.§8p§.§"J§ != true)
                           {
                              if((_loc22_ = _loc21_.§%-§).§3!§() != false)
                              {
                                 _loc9_.§9t§(_loc21_.§8p§);
                                 _loc21_.§8p§.§"J§ = true;
                                 if(!(_loc22_.§5!9§ & b2Body.§0§))
                                 {
                                    if(_loc22_.§9o§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§#!<§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§5!9§ |= b2Body.§0§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§@!I§;
                     }
                  }
               }
               (_loc17_ = §>G§).§7!Z§ = false;
               _loc17_.§1-§ = (1 - _loc13_) * param1.§1-§;
               _loc17_.§5Q§ = 1 / _loc17_.§1-§;
               _loc17_.§+k§ = 0;
               _loc17_.§&U§ = param1.§&U§;
               _loc17_.§ J§ = param1.§ J§;
               _loc9_.§`b§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§@!5§)
               {
                  _loc2_ = _loc9_.§ c§[_loc18_];
                  _loc2_.§5!9§ &= ~b2Body.§0§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§9o§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§5!5§();
                        _loc7_ = _loc2_.§%u§;
                        while(_loc7_)
                        {
                           _loc7_.§ C§.§5!9§ &= ~b2Contact.§>!>§;
                           _loc7_ = _loc7_.§@!I§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§=!B§)
               {
                  _loc11_ = _loc9_.§6<§[_loc18_];
                  _loc11_.§5!9§ &= ~(b2Contact.§>!>§ | b2Contact.§0§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§!J§)
               {
                  (_loc8_ = _loc9_.§catch§[_loc18_]).§"J§ = false;
                  _loc18_++;
               }
               this.§&!O§.§@!!§();
            }
         }
      }
      
      b2internal function §!G§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§<"§();
         var _loc3_:b2Body = param1.§ !M§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §"'§;
         switch(param1.§@!_§)
         {
            case b2Joint.§ Q§:
               this.§^t§.§ N§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§1+§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§-m§();
               _loc13_ = _loc11_.§!!U§();
               this.§^t§.§ N§(_loc12_,_loc8_,_loc10_);
               this.§^t§.§ N§(_loc13_,_loc9_,_loc10_);
               this.§^t§.§ N§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§#!8§:
               this.§^t§.§ N§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§^t§.§ N§(_loc6_,_loc8_,_loc10_);
               }
               this.§^t§.§ N§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§^t§.§ N§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §2!9§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§@!_§)
         {
            case b2Shape.§!E§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§'?§(param2,_loc4_.§%!G§);
               _loc6_ = _loc4_.§8!!§;
               _loc7_ = param2.R.col1;
               this.§^t§.§<G§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§%1§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§?@§();
               _loc11_ = _loc9_.§!!6§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§'?§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§^t§.§4U§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§9!M§:
               _loc13_ = param1 as b2EdgeShape;
               this.§^t§.§ N§(b2Math.§'?§(param2,_loc13_.GetVertex1()),b2Math.§'?§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

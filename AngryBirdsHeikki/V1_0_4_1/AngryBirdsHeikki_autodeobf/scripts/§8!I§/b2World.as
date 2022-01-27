package §8!I§
{
   import §+!b§.*;
   import §4x§.*;
   import §6>§.*;
   import §<"§.*;
   import §=i§.*;
   import §?@§.b2Controller;
   import §?@§.b2ControllerEdge;
   import §@!a§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §&q§:b2Transform = new b2Transform();
      
      private static var §"g§:b2Sweep = new b2Sweep();
      
      private static var §6!§:b2Sweep = new b2Sweep();
      
      private static var §6e§:b2TimeStep = new b2TimeStep();
      
      private static var §^Y§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §%!3§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §0!7§:Boolean;
      
      private static var §8!4§:Boolean;
      
      public static const §,"§:int = 1;
      
      public static const §8h§:int = 2;
       
      
      private var §!!2§:Vector.<b2Body>;
      
      b2internal var §4!-§:int;
      
      b2internal var §'!R§:b2ContactManager;
      
      private var §1!^§:b2ContactSolver;
      
      private var §2!0§:b2Island;
      
      b2internal var §-!3§:b2Body;
      
      private var § set§:b2Joint;
      
      b2internal var §0-§:b2Contact;
      
      private var §7X§:int;
      
      b2internal var §1!F§:int;
      
      private var §4z§:int;
      
      private var §6!`§:b2Controller;
      
      private var §]n§:int;
      
      private var §+!'§:b2Vec2;
      
      private var §2![§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §!U§:b2DestructionListener;
      
      private var §1Q§:b2DebugDraw;
      
      private var §-!F§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§!!2§ = new Vector.<b2Body>();
         this.§'!R§ = new b2ContactManager();
         this.§1!^§ = new b2ContactSolver();
         this.§2!0§ = new b2Island();
         super();
         this.§!U§ = null;
         this.§1Q§ = null;
         this.§-!3§ = null;
         this.§0-§ = null;
         this.§ set§ = null;
         this.§6!`§ = null;
         this.§7X§ = 0;
         this.§1!F§ = 0;
         this.§4z§ = 0;
         this.§]n§ = 0;
         §0!7§ = true;
         §8!4§ = true;
         this.§2![§ = param2;
         this.§+!'§ = param1;
         this.§-!F§ = 0;
         this.§'!R§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§?]§(_loc3_);
      }
      
      public function §>!A§(param1:b2DestructionListener) : void
      {
         this.§!U§ = param1;
      }
      
      public function §,Y§(param1:b2ContactFilter) : void
      {
         this.§'!R§.§`"§ = param1;
      }
      
      public function §0!]§(param1:b2ContactListener) : void
      {
         this.§'!R§.§#l§ = param1;
      }
      
      public function §#!O§(param1:b2DebugDraw) : void
      {
         this.§1Q§ = param1;
      }
      
      public function §7!b§(param1:§+!5§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§+!5§ = this.§'!R§.§?D§;
         this.§'!R§.§?D§ = param1;
         var _loc3_:b2Body = this.§-!3§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§8!-§;
            while(_loc4_)
            {
               _loc4_.§8!^§ = param1.§"^§(_loc2_.§6z§(_loc4_.§8!^§),_loc4_);
               _loc4_ = _loc4_.§,C§;
            }
            _loc3_ = _loc3_.§,C§;
         }
      }
      
      public function §68§() : void
      {
         this.§'!R§.§?D§.§68§();
      }
      
      public function §;!?§() : int
      {
         return this.§'!R§.§?D§.§;!?§();
      }
      
      public function §?]§(param1:b2BodyDef) : b2Body
      {
         if(this.§1h§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§5E§ = null;
         _loc2_.§,C§ = this.§-!3§;
         if(this.§-!3§)
         {
            this.§-!3§.§5E§ = _loc2_;
         }
         this.§-!3§ = _loc2_;
         ++this.§7X§;
         return _loc2_;
      }
      
      public function §"E§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§1h§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§ set§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§>;§;
            if(this.§!U§)
            {
               this.§!U§.§8E§(_loc6_.§@<§);
            }
            this.§ !Z§(_loc6_.§@<§);
         }
         var _loc3_:b2ControllerEdge = param1.§6!`§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§2,§;
            _loc7_.§6!L§.§>M§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§0-§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§>;§;
            this.§'!R§.§%!`§(_loc8_.§ M§);
         }
         param1.§0-§ = null;
         var _loc5_:b2Fixture = param1.§8!-§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§,C§;
            if(this.§!U§)
            {
               this.§!U§.§ !F§(_loc9_);
            }
            _loc9_.§-0§(this.§'!R§.§?D§);
            _loc9_.§%!`§();
         }
         param1.§8!-§ = null;
         param1.§8<§ = 0;
         if(param1.§5E§)
         {
            param1.§5E§.§,C§ = param1.§,C§;
         }
         if(param1.§,C§)
         {
            param1.§,C§.§5E§ = param1.§5E§;
         }
         if(param1 == this.§-!3§)
         {
            this.§-!3§ = param1.§,C§;
         }
         --this.§7X§;
      }
      
      public function §%y§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§ `§(param1,null);
         _loc2_.§5E§ = null;
         _loc2_.§,C§ = this.§ set§;
         if(this.§ set§)
         {
            this.§ set§.§5E§ = _loc2_;
         }
         this.§ set§ = _loc2_;
         ++this.§4z§;
         _loc2_.§>!3§.§@<§ = _loc2_;
         _loc2_.§>!3§.§0z§ = _loc2_.§@;§;
         _loc2_.§>!3§.§5>§ = null;
         _loc2_.§>!3§.§>;§ = _loc2_.§+!N§.§ set§;
         if(_loc2_.§+!N§.§ set§)
         {
            _loc2_.§+!N§.§ set§.§5>§ = _loc2_.§>!3§;
         }
         _loc2_.§+!N§.§ set§ = _loc2_.§>!3§;
         _loc2_.§,V§.§@<§ = _loc2_;
         _loc2_.§,V§.§0z§ = _loc2_.§+!N§;
         _loc2_.§,V§.§5>§ = null;
         _loc2_.§,V§.§>;§ = _loc2_.§@;§.§ set§;
         if(_loc2_.§@;§.§ set§)
         {
            _loc2_.§@;§.§ set§.§5>§ = _loc2_.§,V§;
         }
         _loc2_.§@;§.§ set§ = _loc2_.§,V§;
         var _loc3_:b2Body = param1.§;0§;
         var _loc4_:b2Body = param1.§+4§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§,;§();
            while(_loc5_)
            {
               if(_loc5_.§0z§ == _loc3_)
               {
                  _loc5_.§ M§.§%&§();
               }
               _loc5_ = _loc5_.§>;§;
            }
         }
         return _loc2_;
      }
      
      public function § !Z§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§@!]§;
         if(param1.§5E§)
         {
            param1.§5E§.§,C§ = param1.§,C§;
         }
         if(param1.§,C§)
         {
            param1.§,C§.§5E§ = param1.§5E§;
         }
         if(param1 == this.§ set§)
         {
            this.§ set§ = param1.§,C§;
         }
         var _loc3_:b2Body = param1.§+!N§;
         var _loc4_:b2Body = param1.§@;§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§>!3§.§5>§)
         {
            param1.§>!3§.§5>§.§>;§ = param1.§>!3§.§>;§;
         }
         if(param1.§>!3§.§>;§)
         {
            param1.§>!3§.§>;§.§5>§ = param1.§>!3§.§5>§;
         }
         if(param1.§>!3§ == _loc3_.§ set§)
         {
            _loc3_.§ set§ = param1.§>!3§.§>;§;
         }
         param1.§>!3§.§5>§ = null;
         param1.§>!3§.§>;§ = null;
         if(param1.§,V§.§5>§)
         {
            param1.§,V§.§5>§.§>;§ = param1.§,V§.§>;§;
         }
         if(param1.§,V§.§>;§)
         {
            param1.§,V§.§>;§.§5>§ = param1.§,V§.§5>§;
         }
         if(param1.§,V§ == _loc4_.§ set§)
         {
            _loc4_.§ set§ = param1.§,V§.§>;§;
         }
         param1.§,V§.§5>§ = null;
         param1.§,V§.§>;§ = null;
         b2Joint.§%!`§(param1,null);
         --this.§4z§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§,;§();
            while(_loc5_)
            {
               if(_loc5_.§0z§ == _loc3_)
               {
                  _loc5_.§ M§.§%&§();
               }
               _loc5_ = _loc5_.§>;§;
            }
         }
      }
      
      public function §1A§(param1:b2Controller) : b2Controller
      {
         param1.§,C§ = this.§6!`§;
         param1.§5E§ = null;
         this.§6!`§ = param1;
         param1.m_world = this;
         ++this.§]n§;
         return param1;
      }
      
      public function § +§(param1:b2Controller) : void
      {
         if(param1.§5E§)
         {
            param1.§5E§.§,C§ = param1.§,C§;
         }
         if(param1.§,C§)
         {
            param1.§,C§.§5E§ = param1.§5E§;
         }
         if(this.§6!`§ == param1)
         {
            this.§6!`§ = param1.§,C§;
         }
         --this.§]n§;
      }
      
      public function §7!]§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§,C§ = this.§6!`§;
         param1.§5E§ = null;
         if(this.§6!`§)
         {
            this.§6!`§.§5E§ = param1;
         }
         this.§6!`§ = param1;
         ++this.§]n§;
         param1.m_world = this;
         return param1;
      }
      
      public function §3!=§(param1:b2Controller) : void
      {
         param1.§,@§();
         if(param1.§,C§)
         {
            param1.§,C§.§5E§ = param1.§5E§;
         }
         if(param1.§5E§)
         {
            param1.§5E§.§,C§ = param1.§,C§;
         }
         if(param1 == this.§6!`§)
         {
            this.§6!`§ = param1.§,C§;
         }
         --this.§]n§;
      }
      
      public function §[!D§(param1:Boolean) : void
      {
         §0!7§ = param1;
      }
      
      public function §3f§(param1:Boolean) : void
      {
         §8!4§ = param1;
      }
      
      public function §^E§() : int
      {
         return this.§7X§;
      }
      
      public function §,k§() : int
      {
         return this.§4z§;
      }
      
      public function §?!J§() : int
      {
         return this.§1!F§;
      }
      
      public function §2!5§(param1:b2Vec2) : void
      {
         this.§+!'§ = param1;
      }
      
      public function §;Q§() : b2Vec2
      {
         return this.§+!'§;
      }
      
      public function §6![§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §@%§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§4!-§ & §,"§)
         {
            this.§'!R§.§8y§();
            this.§4!-§ &= ~§,"§;
         }
         this.§4!-§ |= §8h§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§5!8§ = param1;
         _loc4_.§;!2§ = param2;
         _loc4_.§4R§ = param3;
         if(param1 > 0)
         {
            _loc4_.§0!_§ = 1 / param1;
         }
         else
         {
            _loc4_.§0!_§ = 0;
         }
         _loc4_.§^!Y§ = this.§-!F§ * param1;
         _loc4_.§%r§ = §0!7§;
         this.§'!R§.§`!b§();
         if(_loc4_.§5!8§ > 0)
         {
            this.§6!W§(_loc4_);
         }
         if(§8!4§ && _loc4_.§5!8§ > 0)
         {
            this.§?!a§(_loc4_);
         }
         if(_loc4_.§5!8§ > 0)
         {
            this.§-!F§ = _loc4_.§0!_§;
         }
         this.§4!-§ &= ~§8h§;
      }
      
      public function §5k§() : void
      {
         var _loc1_:b2Body = this.§-!3§;
         while(_loc1_)
         {
            _loc1_.§80§.§0!=§();
            _loc1_.§^X§ = 0;
            _loc1_ = _loc1_.§,C§;
         }
      }
      
      public function § !X§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§+!5§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§1Q§ == null)
         {
            return;
         }
         this.§1Q§.§?!@§.graphics.clear();
         var _loc1_:uint = this.§1Q§.§@!D§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§7!6§)
         {
            _loc3_ = this.§-!3§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§>!G§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§4@§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§=!+§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§<!M§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§=!+§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§<!M§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§=!+§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§=!+§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§=!+§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§,C§;
               }
               _loc3_ = _loc3_.§,C§;
            }
         }
         if(_loc1_ & b2DebugDraw.§'r§)
         {
            _loc6_ = this.§ set§;
            while(_loc6_)
            {
               this.§9! §(_loc6_);
               _loc6_ = _loc6_.§,C§;
            }
         }
         if(_loc1_ & b2DebugDraw.§7!4§)
         {
            _loc16_ = this.§6!`§;
            while(_loc16_)
            {
               _loc16_.§]!,§(this.§1Q§);
               _loc16_ = _loc16_.§,C§;
            }
         }
         if(_loc1_ & b2DebugDraw.§<B§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§'!R§.§0-§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§#!Z§();
               _loc19_ = _loc17_.§5A§();
               _loc20_ = _loc18_.§"p§().§#h§();
               _loc21_ = _loc19_.§"p§().§#h§();
               this.§1Q§.§%!0§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§]S§();
            }
         }
         if(_loc1_ & b2DebugDraw.§^§)
         {
            _loc7_ = this.§'!R§.§?D§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§-!3§;
            while(_loc3_)
            {
               if(_loc3_.§4@§() != false)
               {
                  _loc4_ = _loc3_.§>!G§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§6z§(_loc4_.§8!^§);
                     _loc14_[0].Set(_loc22_.§3-§.x,_loc22_.§3-§.y);
                     _loc14_[1].Set(_loc22_.§]s§.x,_loc22_.§3-§.y);
                     _loc14_[2].Set(_loc22_.§]s§.x,_loc22_.§]s§.y);
                     _loc14_[3].Set(_loc22_.§3-§.x,_loc22_.§]s§.y);
                     this.§1Q§.§%a§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§]S§();
                  }
               }
               _loc3_ = _loc3_.§]S§();
            }
         }
         if(_loc1_ & b2DebugDraw.§+t§)
         {
            _loc3_ = this.§-!3§;
            while(_loc3_)
            {
               (_loc11_ = §&q§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§3e§();
               this.§1Q§.§3!"§(_loc11_);
               _loc3_ = _loc3_.§,C§;
            }
         }
      }
      
      public function §<!'§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§+!5§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§'!R§.§?D§;
         broadPhase.§1!B§(WorldQueryWrapper,aabb);
      }
      
      public function §5!%§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§+!5§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§!!D§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§0c§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§^!"§();
         }
         broadPhase = this.§'!R§.§?D§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§1!B§(WorldQueryWrapper,aabb);
      }
      
      public function §!>§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§+!5§ = null;
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
         broadPhase = this.§'!R§.§?D§;
         var aabb:b2AABB = new b2AABB();
         aabb.§3-§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§]s§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§1!B§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§+!5§ = null;
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
            return param1.§]]§;
         };
         broadPhase = this.§'!R§.§?D§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §3s§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §[$§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §+v§() : b2Body
      {
         return this.§-!3§;
      }
      
      public function §6f§() : b2Joint
      {
         return this.§ set§;
      }
      
      public function §,;§() : b2Contact
      {
         return this.§0-§;
      }
      
      public function §1h§() : Boolean
      {
         return (this.§4!-§ & §8h§) > 0;
      }
      
      b2internal function §6!W§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§6!`§;
         while(_loc3_)
         {
            _loc3_.§@%§(param1);
            _loc3_ = _loc3_.§,C§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§2!0§).§;!%§(this.§7X§,this.§1!F§,this.§4z§,null,this.§'!R§.§#l§,this.§1!^§);
         _loc2_ = this.§-!3§;
         while(_loc2_)
         {
            _loc2_.§4!-§ &= ~b2Body.§;i§;
            _loc2_ = _loc2_.§,C§;
         }
         var _loc5_:b2Contact = this.§0-§;
         while(_loc5_)
         {
            _loc5_.§4!-§ &= ~b2Contact.§;i§;
            _loc5_ = _loc5_.§,C§;
         }
         var _loc6_:b2Joint = this.§ set§;
         while(_loc6_)
         {
            _loc6_.§%!^§ = false;
            _loc6_ = _loc6_.§,C§;
         }
         var _loc7_:int = this.§7X§;
         var _loc8_:Vector.<b2Body> = this.§!!2§;
         var _loc9_:b2Body = this.§-!3§;
         while(_loc9_)
         {
            if(!(_loc9_.§4!-§ & b2Body.§;i§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§4@§() == false))
               {
                  if(_loc9_.§<!M§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§,@§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§4!-§ |= b2Body.§;i§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§0!Z§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§<!M§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§0-§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§ M§.§4!-§ & b2Contact.§;i§))
                              {
                                 if(!(_loc13_.§ M§.§^&§() == true || _loc13_.§ M§.§;-§() == false || _loc13_.§ M§.§6,§() == false))
                                 {
                                    _loc4_.§?n§(_loc13_.§ M§);
                                    _loc13_.§ M§.§4!-§ |= b2Contact.§;i§;
                                    if(!((_loc12_ = _loc13_.§0z§).§4!-§ & b2Body.§;i§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§4!-§ |= b2Body.§;i§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§>;§;
                           }
                           _loc14_ = _loc2_.§ set§;
                           while(_loc14_)
                           {
                              if(_loc14_.§@<§.§%!^§ != true)
                              {
                                 if((_loc12_ = _loc14_.§0z§).§4@§() != false)
                                 {
                                    _loc4_.§,'§(_loc14_.§@<§);
                                    _loc14_.§@<§.§%!^§ = true;
                                    if(!(_loc12_.§4!-§ & b2Body.§;i§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§4!-§ |= b2Body.§;i§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§>;§;
                           }
                        }
                     }
                     _loc4_.§6!W§(param1,this.§+!'§,this.§2![§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§7X§)
                     {
                        _loc2_ = _loc4_.§=!K§[_loc11_];
                        if(_loc2_.§<!M§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§4!-§ &= ~b2Body.§;i§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§,C§;
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
         _loc2_ = this.§-!3§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§4@§() == false))
            {
               if(_loc2_.§<!M§() != b2Body.b2_staticBody)
               {
                  _loc2_.§2!a§();
               }
            }
            _loc2_ = _loc2_.§,C§;
         }
         this.§'!R§.§8y§();
      }
      
      b2internal function §?!a§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§2!0§).§;!%§(this.§7X§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§'!R§.§#l§,this.§1!^§);
         var _loc10_:Vector.<b2Body> = §^Y§;
         _loc2_ = this.§-!3§;
         while(_loc2_)
         {
            _loc2_.§4!-§ &= ~b2Body.§;i§;
            _loc2_.m_sweep.§]!c§ = 0;
            _loc2_ = _loc2_.§,C§;
         }
         _loc11_ = this.§0-§;
         while(_loc11_)
         {
            _loc11_.§4!-§ &= ~(b2Contact.§<P§ | b2Contact.§;i§);
            _loc11_ = _loc11_.§,C§;
         }
         _loc8_ = this.§ set§;
         while(_loc8_)
         {
            _loc8_.§%!^§ = false;
            _loc8_ = _loc8_.§,C§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§0-§;
            while(_loc11_)
            {
               if(!(_loc11_.§^&§() == true || _loc11_.§;-§() == false || _loc11_.§>!6§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§4!-§ & b2Contact.§<P§)
                  {
                     _loc19_ = _loc11_.§?7§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§]![§;
                     _loc4_ = _loc11_.§11§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§<!M§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§<!M§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr615:
                        _loc11_ = _loc11_.§,C§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§]!c§;
                     if(_loc5_.m_sweep.§]!c§ < _loc6_.m_sweep.§]!c§)
                     {
                        _loc20_ = _loc6_.m_sweep.§]!c§;
                        _loc5_.m_sweep.§`K§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§]!c§ < _loc5_.m_sweep.§]!c§)
                     {
                        _loc20_ = _loc5_.m_sweep.§]!c§;
                        _loc6_.m_sweep.§`K§(_loc20_);
                     }
                     _loc19_ = _loc11_.§8x§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§?7§ = _loc19_;
                     _loc11_.§4!-§ |= b2Contact.§<P§;
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
            _loc3_ = _loc12_.§]![§;
            _loc4_ = _loc12_.§11§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §"g§.Set(_loc5_.m_sweep);
            §6!§.Set(_loc6_.m_sweep);
            _loc5_.§`K§(_loc13_);
            _loc6_.§`K§(_loc13_);
            _loc12_.§%!W§(this.§'!R§.§#l§);
            _loc12_.§4!-§ &= ~b2Contact.§<P§;
            if(_loc12_.§^&§() == true || _loc12_.§;-§() == false)
            {
               _loc5_.m_sweep.Set(§"g§);
               _loc6_.m_sweep.Set(§6!§);
               _loc5_.§,M§();
               _loc6_.§,M§();
            }
            else if(_loc12_.§6,§() != false)
            {
               if((_loc14_ = _loc5_).§<!M§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§,@§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§4!-§ |= b2Body.§;i§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§0!Z§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§<!M§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§0-§;
                     while(_loc7_)
                     {
                        if(_loc9_.§1!F§ == _loc9_.§&! §)
                        {
                           break;
                        }
                        if(!(_loc7_.§ M§.§4!-§ & b2Contact.§;i§))
                        {
                           if(!(_loc7_.§ M§.§^&§() == true || _loc7_.§ M§.§;-§() == false || _loc7_.§ M§.§6,§() == false))
                           {
                              _loc9_.§?n§(_loc7_.§ M§);
                              _loc7_.§ M§.§4!-§ |= b2Contact.§;i§;
                              if(!((_loc22_ = _loc7_.§0z§).§4!-§ & b2Body.§;i§))
                              {
                                 if(_loc22_.§<!M§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§`K§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§4!-§ |= b2Body.§;i§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§>;§;
                     }
                     _loc21_ = _loc2_.§ set§;
                     while(_loc21_)
                     {
                        if(_loc9_.§4z§ != _loc9_.§!!H§)
                        {
                           if(_loc21_.§@<§.§%!^§ != true)
                           {
                              if((_loc22_ = _loc21_.§0z§).§4@§() != false)
                              {
                                 _loc9_.§,'§(_loc21_.§@<§);
                                 _loc21_.§@<§.§%!^§ = true;
                                 if(!(_loc22_.§4!-§ & b2Body.§;i§))
                                 {
                                    if(_loc22_.§<!M§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§`K§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§4!-§ |= b2Body.§;i§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§>;§;
                     }
                  }
               }
               (_loc17_ = §6e§).§%r§ = false;
               _loc17_.§5!8§ = (1 - _loc13_) * param1.§5!8§;
               _loc17_.§0!_§ = 1 / _loc17_.§5!8§;
               _loc17_.§^!Y§ = 0;
               _loc17_.§;!2§ = param1.§;!2§;
               _loc17_.§4R§ = param1.§4R§;
               _loc9_.§?!a§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§7X§)
               {
                  _loc2_ = _loc9_.§=!K§[_loc18_];
                  _loc2_.§4!-§ &= ~b2Body.§;i§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§<!M§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§2!a§();
                        _loc7_ = _loc2_.§0-§;
                        while(_loc7_)
                        {
                           _loc7_.§ M§.§4!-§ &= ~b2Contact.§<P§;
                           _loc7_ = _loc7_.§>;§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§1!F§)
               {
                  _loc11_ = _loc9_.§-!b§[_loc18_];
                  _loc11_.§4!-§ &= ~(b2Contact.§<P§ | b2Contact.§;i§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§4z§)
               {
                  (_loc8_ = _loc9_.§>m§[_loc18_]).§%!^§ = false;
                  _loc18_++;
               }
               this.§'!R§.§8y§();
            }
         }
      }
      
      b2internal function §9! §(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§+!T§();
         var _loc3_:b2Body = param1.§3!S§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §%!3§;
         switch(param1.§'A§)
         {
            case b2Joint.§,n§:
               this.§1Q§.§%!0§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§#!@§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§4!'§();
               _loc13_ = _loc11_.§;@§();
               this.§1Q§.§%!0§(_loc12_,_loc8_,_loc10_);
               this.§1Q§.§%!0§(_loc13_,_loc9_,_loc10_);
               this.§1Q§.§%!0§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§5!Y§:
               this.§1Q§.§%!0§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§1Q§.§%!0§(_loc6_,_loc8_,_loc10_);
               }
               this.§1Q§.§%!0§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§1Q§.§%!0§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §=!+§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§'A§)
         {
            case b2Shape.§2!Q§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§]x§(param2,_loc4_.§7V§);
               _loc6_ = _loc4_.§6x§;
               _loc7_ = param2.R.col1;
               this.§1Q§.§!S§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§-§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§=r§();
               _loc11_ = _loc9_.§=3§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§]x§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§1Q§.§`!7§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§9^§:
               _loc13_ = param1 as b2EdgeShape;
               this.§1Q§.§%!0§(b2Math.§]x§(param2,_loc13_.GetVertex1()),b2Math.§]x§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

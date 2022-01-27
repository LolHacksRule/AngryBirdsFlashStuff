package §^!Z§
{
   import § !_§.*;
   import § X§.b2Controller;
   import § X§.b2ControllerEdge;
   import §+&§.*;
   import §-!!§.*;
   import §3!A§.*;
   import §=_§.*;
   import §^t§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §6!@§:b2Transform = new b2Transform();
      
      private static var §#N§:b2Sweep = new b2Sweep();
      
      private static var §-S§:b2Sweep = new b2Sweep();
      
      private static var §2!2§:b2TimeStep = new b2TimeStep();
      
      private static var §7!I§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §"<§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §@!9§:Boolean;
      
      private static var §2!T§:Boolean;
      
      public static const §2!_§:int = 1;
      
      public static const §&!-§:int = 2;
       
      
      private var §?U§:Vector.<b2Body>;
      
      b2internal var §=?§:int;
      
      b2internal var §]y§:b2ContactManager;
      
      private var §&!#§:b2ContactSolver;
      
      private var §>!K§:b2Island;
      
      b2internal var §@!T§:b2Body;
      
      private var §@!7§:b2Joint;
      
      b2internal var §4!D§:b2Contact;
      
      private var §2Q§:int;
      
      b2internal var §default§:int;
      
      private var §9!3§:int;
      
      private var §,%§:b2Controller;
      
      private var §=!'§:int;
      
      private var §,!`§:b2Vec2;
      
      private var §%!6§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §,N§:b2DestructionListener;
      
      private var §"m§:b2DebugDraw;
      
      private var §&'§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§?U§ = new Vector.<b2Body>();
         this.§]y§ = new b2ContactManager();
         this.§&!#§ = new b2ContactSolver();
         this.§>!K§ = new b2Island();
         super();
         this.§,N§ = null;
         this.§"m§ = null;
         this.§@!T§ = null;
         this.§4!D§ = null;
         this.§@!7§ = null;
         this.§,%§ = null;
         this.§2Q§ = 0;
         this.§default§ = 0;
         this.§9!3§ = 0;
         this.§=!'§ = 0;
         §@!9§ = true;
         §2!T§ = true;
         this.§%!6§ = param2;
         this.§,!`§ = param1;
         this.§&'§ = 0;
         this.§]y§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§;!"§(_loc3_);
      }
      
      public function §+r§(param1:b2DestructionListener) : void
      {
         this.§,N§ = param1;
      }
      
      public function §&g§(param1:b2ContactFilter) : void
      {
         this.§]y§.§2!M§ = param1;
      }
      
      public function §9!L§(param1:b2ContactListener) : void
      {
         this.§]y§.§ !f§ = param1;
      }
      
      public function §;Z§(param1:b2DebugDraw) : void
      {
         this.§"m§ = param1;
      }
      
      public function §0#§(param1:§8]§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§8]§ = this.§]y§.§ @§;
         this.§]y§.§ @§ = param1;
         var _loc3_:b2Body = this.§@!T§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§7!J§;
            while(_loc4_)
            {
               _loc4_.§77§ = param1.§'W§(_loc2_.§[Q§(_loc4_.§77§),_loc4_);
               _loc4_ = _loc4_.§]!8§;
            }
            _loc3_ = _loc3_.§]!8§;
         }
      }
      
      public function §0![§() : void
      {
         this.§]y§.§ @§.§0![§();
      }
      
      public function §+#§() : int
      {
         return this.§]y§.§ @§.§+#§();
      }
      
      public function §;!"§(param1:b2BodyDef) : b2Body
      {
         if(this.§@j§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§9!@§ = null;
         _loc2_.§]!8§ = this.§@!T§;
         if(this.§@!T§)
         {
            this.§@!T§.§9!@§ = _loc2_;
         }
         this.§@!T§ = _loc2_;
         ++this.§2Q§;
         return _loc2_;
      }
      
      public function §5M§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§@j§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§@!7§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§9e§;
            if(this.§,N§)
            {
               this.§,N§.§^!;§(_loc6_.§[!_§);
            }
            this.§>%§(_loc6_.§[!_§);
         }
         var _loc3_:b2ControllerEdge = param1.§,%§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§>P§;
            _loc7_.§[-§.§`h§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§4!D§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§9e§;
            this.§]y§.§<a§(_loc8_.§6!e§);
         }
         param1.§4!D§ = null;
         var _loc5_:b2Fixture = param1.§7!J§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§]!8§;
            if(this.§,N§)
            {
               this.§,N§.§%!!§(_loc9_);
            }
            _loc9_.§+!%§(this.§]y§.§ @§);
            _loc9_.§<a§();
         }
         param1.§7!J§ = null;
         param1.§#_§ = 0;
         if(param1.§9!@§)
         {
            param1.§9!@§.§]!8§ = param1.§]!8§;
         }
         if(param1.§]!8§)
         {
            param1.§]!8§.§9!@§ = param1.§9!@§;
         }
         if(param1 == this.§@!T§)
         {
            this.§@!T§ = param1.§]!8§;
         }
         --this.§2Q§;
      }
      
      public function §>!G§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§8b§(param1,null);
         _loc2_.§9!@§ = null;
         _loc2_.§]!8§ = this.§@!7§;
         if(this.§@!7§)
         {
            this.§@!7§.§9!@§ = _loc2_;
         }
         this.§@!7§ = _loc2_;
         ++this.§9!3§;
         _loc2_.§%!G§.§[!_§ = _loc2_;
         _loc2_.§%!G§.§-!_§ = _loc2_.§,g§;
         _loc2_.§%!G§.§]!Q§ = null;
         _loc2_.§%!G§.§9e§ = _loc2_.§,"§.§@!7§;
         if(_loc2_.§,"§.§@!7§)
         {
            _loc2_.§,"§.§@!7§.§]!Q§ = _loc2_.§%!G§;
         }
         _loc2_.§,"§.§@!7§ = _loc2_.§%!G§;
         _loc2_.§3T§.§[!_§ = _loc2_;
         _loc2_.§3T§.§-!_§ = _loc2_.§,"§;
         _loc2_.§3T§.§]!Q§ = null;
         _loc2_.§3T§.§9e§ = _loc2_.§,g§.§@!7§;
         if(_loc2_.§,g§.§@!7§)
         {
            _loc2_.§,g§.§@!7§.§]!Q§ = _loc2_.§3T§;
         }
         _loc2_.§,g§.§@!7§ = _loc2_.§3T§;
         var _loc3_:b2Body = param1.§[!N§;
         var _loc4_:b2Body = param1.§0!'§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§>v§();
            while(_loc5_)
            {
               if(_loc5_.§-!_§ == _loc3_)
               {
                  _loc5_.§6!e§.§#!N§();
               }
               _loc5_ = _loc5_.§9e§;
            }
         }
         return _loc2_;
      }
      
      public function §>%§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§+!+§;
         if(param1.§9!@§)
         {
            param1.§9!@§.§]!8§ = param1.§]!8§;
         }
         if(param1.§]!8§)
         {
            param1.§]!8§.§9!@§ = param1.§9!@§;
         }
         if(param1 == this.§@!7§)
         {
            this.§@!7§ = param1.§]!8§;
         }
         var _loc3_:b2Body = param1.§,"§;
         var _loc4_:b2Body = param1.§,g§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§%!G§.§]!Q§)
         {
            param1.§%!G§.§]!Q§.§9e§ = param1.§%!G§.§9e§;
         }
         if(param1.§%!G§.§9e§)
         {
            param1.§%!G§.§9e§.§]!Q§ = param1.§%!G§.§]!Q§;
         }
         if(param1.§%!G§ == _loc3_.§@!7§)
         {
            _loc3_.§@!7§ = param1.§%!G§.§9e§;
         }
         param1.§%!G§.§]!Q§ = null;
         param1.§%!G§.§9e§ = null;
         if(param1.§3T§.§]!Q§)
         {
            param1.§3T§.§]!Q§.§9e§ = param1.§3T§.§9e§;
         }
         if(param1.§3T§.§9e§)
         {
            param1.§3T§.§9e§.§]!Q§ = param1.§3T§.§]!Q§;
         }
         if(param1.§3T§ == _loc4_.§@!7§)
         {
            _loc4_.§@!7§ = param1.§3T§.§9e§;
         }
         param1.§3T§.§]!Q§ = null;
         param1.§3T§.§9e§ = null;
         b2Joint.§<a§(param1,null);
         --this.§9!3§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§>v§();
            while(_loc5_)
            {
               if(_loc5_.§-!_§ == _loc3_)
               {
                  _loc5_.§6!e§.§#!N§();
               }
               _loc5_ = _loc5_.§9e§;
            }
         }
      }
      
      public function § !+§(param1:b2Controller) : b2Controller
      {
         param1.§]!8§ = this.§,%§;
         param1.§9!@§ = null;
         this.§,%§ = param1;
         param1.m_world = this;
         ++this.§=!'§;
         return param1;
      }
      
      public function §^!R§(param1:b2Controller) : void
      {
         if(param1.§9!@§)
         {
            param1.§9!@§.§]!8§ = param1.§]!8§;
         }
         if(param1.§]!8§)
         {
            param1.§]!8§.§9!@§ = param1.§9!@§;
         }
         if(this.§,%§ == param1)
         {
            this.§,%§ = param1.§]!8§;
         }
         --this.§=!'§;
      }
      
      public function §7c§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§]!8§ = this.§,%§;
         param1.§9!@§ = null;
         if(this.§,%§)
         {
            this.§,%§.§9!@§ = param1;
         }
         this.§,%§ = param1;
         ++this.§=!'§;
         param1.m_world = this;
         return param1;
      }
      
      public function §>1§(param1:b2Controller) : void
      {
         param1.§9!2§();
         if(param1.§]!8§)
         {
            param1.§]!8§.§9!@§ = param1.§9!@§;
         }
         if(param1.§9!@§)
         {
            param1.§9!@§.§]!8§ = param1.§]!8§;
         }
         if(param1 == this.§,%§)
         {
            this.§,%§ = param1.§]!8§;
         }
         --this.§=!'§;
      }
      
      public function §8?§(param1:Boolean) : void
      {
         §@!9§ = param1;
      }
      
      public function §]6§(param1:Boolean) : void
      {
         §2!T§ = param1;
      }
      
      public function §=!^§() : int
      {
         return this.§2Q§;
      }
      
      public function §,! §() : int
      {
         return this.§9!3§;
      }
      
      public function § 8§() : int
      {
         return this.§default§;
      }
      
      public function §^!8§(param1:b2Vec2) : void
      {
         this.§,!`§ = param1;
      }
      
      public function §<!8§() : b2Vec2
      {
         return this.§,!`§;
      }
      
      public function §@`§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §@!D§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§=?§ & §2!_§)
         {
            this.§]y§.§2a§();
            this.§=?§ &= ~§2!_§;
         }
         this.§=?§ |= §&!-§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§]!"§ = param1;
         _loc4_.§>G§ = param2;
         _loc4_.§"!E§ = param3;
         if(param1 > 0)
         {
            _loc4_.§ B§ = 1 / param1;
         }
         else
         {
            _loc4_.§ B§ = 0;
         }
         _loc4_.§>x§ = this.§&'§ * param1;
         _loc4_.§9!N§ = §@!9§;
         this.§]y§.§3!<§();
         if(_loc4_.§]!"§ > 0)
         {
            this.§<!B§(_loc4_);
         }
         if(§2!T§ && _loc4_.§]!"§ > 0)
         {
            this.§^!$§(_loc4_);
         }
         if(_loc4_.§]!"§ > 0)
         {
            this.§&'§ = _loc4_.§ B§;
         }
         this.§=?§ &= ~§&!-§;
      }
      
      public function §>!"§() : void
      {
         var _loc1_:b2Body = this.§@!T§;
         while(_loc1_)
         {
            _loc1_.§3Z§.§>!T§();
            _loc1_.§`n§ = 0;
            _loc1_ = _loc1_.§]!8§;
         }
      }
      
      public function §^e§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§8]§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§"m§ == null)
         {
            return;
         }
         this.§"m§.§4!'§.graphics.clear();
         var _loc1_:uint = this.§"m§.§<!§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§#!9§)
         {
            _loc3_ = this.§@!T§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§5X§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§0!Q§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§6<§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§6+§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§6<§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§6+§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§6<§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§6<§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§6<§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§]!8§;
               }
               _loc3_ = _loc3_.§]!8§;
            }
         }
         if(_loc1_ & b2DebugDraw.§=!`§)
         {
            _loc6_ = this.§@!7§;
            while(_loc6_)
            {
               this.§4>§(_loc6_);
               _loc6_ = _loc6_.§]!8§;
            }
         }
         if(_loc1_ & b2DebugDraw.§4!!§)
         {
            _loc16_ = this.§,%§;
            while(_loc16_)
            {
               _loc16_.§'^§(this.§"m§);
               _loc16_ = _loc16_.§]!8§;
            }
         }
         if(_loc1_ & b2DebugDraw.§ V§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§]y§.§4!D§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§]!4§();
               _loc19_ = _loc17_.§5#§();
               _loc20_ = _loc18_.§0$§().§7g§();
               _loc21_ = _loc19_.§0$§().§7g§();
               this.§"m§.§5?§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§1![§();
            }
         }
         if(_loc1_ & b2DebugDraw.§9r§)
         {
            _loc7_ = this.§]y§.§ @§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§@!T§;
            while(_loc3_)
            {
               if(_loc3_.§0!Q§() != false)
               {
                  _loc4_ = _loc3_.§5X§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§[Q§(_loc4_.§77§);
                     _loc14_[0].Set(_loc22_.§@![§.x,_loc22_.§@![§.y);
                     _loc14_[1].Set(_loc22_.§+![§.x,_loc22_.§@![§.y);
                     _loc14_[2].Set(_loc22_.§+![§.x,_loc22_.§+![§.y);
                     _loc14_[3].Set(_loc22_.§@![§.x,_loc22_.§+![§.y);
                     this.§"m§.§[H§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§1![§();
                  }
               }
               _loc3_ = _loc3_.§1![§();
            }
         }
         if(_loc1_ & b2DebugDraw.§=;§)
         {
            _loc3_ = this.§@!T§;
            while(_loc3_)
            {
               (_loc11_ = §6!@§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§#!R§();
               this.§"m§.§-!6§(_loc11_);
               _loc3_ = _loc3_.§]!8§;
            }
         }
      }
      
      public function §3!e§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§8]§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§]y§.§ @§;
         broadPhase.§;k§(WorldQueryWrapper,aabb);
      }
      
      public function §0!]§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§8]§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§"!=§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§<!2§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§<!T§();
         }
         broadPhase = this.§]y§.§ @§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§;k§(WorldQueryWrapper,aabb);
      }
      
      public function §?Q§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§8]§ = null;
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
         broadPhase = this.§]y§.§ @§;
         var aabb:b2AABB = new b2AABB();
         aabb.§@![§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§+![§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§;k§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§8]§ = null;
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
            return param1.§9!<§;
         };
         broadPhase = this.§]y§.§ @§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §&!U§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §0!M§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §<!O§() : b2Body
      {
         return this.§@!T§;
      }
      
      public function §%!#§() : b2Joint
      {
         return this.§@!7§;
      }
      
      public function §>v§() : b2Contact
      {
         return this.§4!D§;
      }
      
      public function §@j§() : Boolean
      {
         return (this.§=?§ & §&!-§) > 0;
      }
      
      b2internal function §<!B§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§,%§;
         while(_loc3_)
         {
            _loc3_.§@!D§(param1);
            _loc3_ = _loc3_.§]!8§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§>!K§).§8_§(this.§2Q§,this.§default§,this.§9!3§,null,this.§]y§.§ !f§,this.§&!#§);
         _loc2_ = this.§@!T§;
         while(_loc2_)
         {
            _loc2_.§=?§ &= ~b2Body.§ !5§;
            _loc2_ = _loc2_.§]!8§;
         }
         var _loc5_:b2Contact = this.§4!D§;
         while(_loc5_)
         {
            _loc5_.§=?§ &= ~b2Contact.§ !5§;
            _loc5_ = _loc5_.§]!8§;
         }
         var _loc6_:b2Joint = this.§@!7§;
         while(_loc6_)
         {
            _loc6_.§=![§ = false;
            _loc6_ = _loc6_.§]!8§;
         }
         var _loc7_:int = this.§2Q§;
         var _loc8_:Vector.<b2Body> = this.§?U§;
         var _loc9_:b2Body = this.§@!T§;
         while(_loc9_)
         {
            if(!(_loc9_.§=?§ & b2Body.§ !5§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§0!Q§() == false))
               {
                  if(_loc9_.§6+§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§9!2§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§=?§ |= b2Body.§ !5§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§1!]§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§6+§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§4!D§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§6!e§.§=?§ & b2Contact.§ !5§))
                              {
                                 if(!(_loc13_.§6!e§.§1!4§() == true || _loc13_.§6!e§.§+!N§() == false || _loc13_.§6!e§.§5!!§() == false))
                                 {
                                    _loc4_.§7!P§(_loc13_.§6!e§);
                                    _loc13_.§6!e§.§=?§ |= b2Contact.§ !5§;
                                    if(!((_loc12_ = _loc13_.§-!_§).§=?§ & b2Body.§ !5§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§=?§ |= b2Body.§ !5§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§9e§;
                           }
                           _loc14_ = _loc2_.§@!7§;
                           while(_loc14_)
                           {
                              if(_loc14_.§[!_§.§=![§ != true)
                              {
                                 if((_loc12_ = _loc14_.§-!_§).§0!Q§() != false)
                                 {
                                    _loc4_.§3k§(_loc14_.§[!_§);
                                    _loc14_.§[!_§.§=![§ = true;
                                    if(!(_loc12_.§=?§ & b2Body.§ !5§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§=?§ |= b2Body.§ !5§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§9e§;
                           }
                        }
                     }
                     _loc4_.§<!B§(param1,this.§,!`§,this.§%!6§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§2Q§)
                     {
                        _loc2_ = _loc4_.§7x§[_loc11_];
                        if(_loc2_.§6+§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§=?§ &= ~b2Body.§ !5§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§]!8§;
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
         _loc2_ = this.§@!T§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§0!Q§() == false))
            {
               if(_loc2_.§6+§() != b2Body.b2_staticBody)
               {
                  _loc2_.§'!Q§();
               }
            }
            _loc2_ = _loc2_.§]!8§;
         }
         this.§]y§.§2a§();
      }
      
      b2internal function §^!$§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§>!K§).§8_§(this.§2Q§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§]y§.§ !f§,this.§&!#§);
         var _loc10_:Vector.<b2Body> = §7!I§;
         _loc2_ = this.§@!T§;
         while(_loc2_)
         {
            _loc2_.§=?§ &= ~b2Body.§ !5§;
            _loc2_.m_sweep.§=<§ = 0;
            _loc2_ = _loc2_.§]!8§;
         }
         _loc11_ = this.§4!D§;
         while(_loc11_)
         {
            _loc11_.§=?§ &= ~(b2Contact.§+!,§ | b2Contact.§ !5§);
            _loc11_ = _loc11_.§]!8§;
         }
         _loc8_ = this.§@!7§;
         while(_loc8_)
         {
            _loc8_.§=![§ = false;
            _loc8_ = _loc8_.§]!8§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§4!D§;
            while(_loc11_)
            {
               if(!(_loc11_.§1!4§() == true || _loc11_.§+!N§() == false || _loc11_.§5s§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§=?§ & b2Contact.§+!,§)
                  {
                     _loc19_ = _loc11_.§%0§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§"!V§;
                     _loc4_ = _loc11_.§[!§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§6+§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§6+§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr644:
                        _loc11_ = _loc11_.§]!8§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§=<§;
                     if(_loc5_.m_sweep.§=<§ < _loc6_.m_sweep.§=<§)
                     {
                        _loc20_ = _loc6_.m_sweep.§=<§;
                        _loc5_.m_sweep.§<R§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§=<§ < _loc5_.m_sweep.§=<§)
                     {
                        _loc20_ = _loc5_.m_sweep.§=<§;
                        _loc6_.m_sweep.§<R§(_loc20_);
                     }
                     _loc19_ = _loc11_.§`R§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§%0§ = _loc19_;
                     _loc11_.§=?§ |= b2Contact.§+!,§;
                     §§goto(addr644);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr644);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§"!V§;
            _loc4_ = _loc12_.§[!§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §#N§.Set(_loc5_.m_sweep);
            §-S§.Set(_loc6_.m_sweep);
            _loc5_.§<R§(_loc13_);
            _loc6_.§<R§(_loc13_);
            _loc12_.§;!&§(this.§]y§.§ !f§);
            _loc12_.§=?§ &= ~b2Contact.§+!,§;
            if(_loc12_.§1!4§() == true || _loc12_.§+!N§() == false)
            {
               _loc5_.m_sweep.Set(§#N§);
               _loc6_.m_sweep.Set(§-S§);
               _loc5_.§1&§();
               _loc6_.§1&§();
            }
            else if(_loc12_.§5!!§() != false)
            {
               if((_loc14_ = _loc5_).§6+§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§9!2§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§=?§ |= b2Body.§ !5§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§1!]§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§6+§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§4!D§;
                     while(_loc7_)
                     {
                        if(_loc9_.§default§ == _loc9_.§!!M§)
                        {
                           break;
                        }
                        if(!(_loc7_.§6!e§.§=?§ & b2Contact.§ !5§))
                        {
                           if(!(_loc7_.§6!e§.§1!4§() == true || _loc7_.§6!e§.§+!N§() == false || _loc7_.§6!e§.§5!!§() == false))
                           {
                              _loc9_.§7!P§(_loc7_.§6!e§);
                              _loc7_.§6!e§.§=?§ |= b2Contact.§ !5§;
                              if(!((_loc22_ = _loc7_.§-!_§).§=?§ & b2Body.§ !5§))
                              {
                                 if(_loc22_.§6+§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§<R§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§=?§ |= b2Body.§ !5§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§9e§;
                     }
                     _loc21_ = _loc2_.§@!7§;
                     while(_loc21_)
                     {
                        if(_loc9_.§9!3§ != _loc9_.§@E§)
                        {
                           if(_loc21_.§[!_§.§=![§ != true)
                           {
                              if((_loc22_ = _loc21_.§-!_§).§0!Q§() != false)
                              {
                                 _loc9_.§3k§(_loc21_.§[!_§);
                                 _loc21_.§[!_§.§=![§ = true;
                                 if(!(_loc22_.§=?§ & b2Body.§ !5§))
                                 {
                                    if(_loc22_.§6+§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§<R§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§=?§ |= b2Body.§ !5§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§9e§;
                     }
                  }
               }
               (_loc17_ = §2!2§).§9!N§ = false;
               _loc17_.§]!"§ = (1 - _loc13_) * param1.§]!"§;
               _loc17_.§ B§ = 1 / _loc17_.§]!"§;
               _loc17_.§>x§ = 0;
               _loc17_.§>G§ = param1.§>G§;
               _loc17_.§"!E§ = param1.§"!E§;
               _loc9_.§^!$§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§2Q§)
               {
                  _loc2_ = _loc9_.§7x§[_loc18_];
                  _loc2_.§=?§ &= ~b2Body.§ !5§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§6+§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§'!Q§();
                        _loc7_ = _loc2_.§4!D§;
                        while(_loc7_)
                        {
                           _loc7_.§6!e§.§=?§ &= ~b2Contact.§+!,§;
                           _loc7_ = _loc7_.§9e§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§default§)
               {
                  _loc11_ = _loc9_.§8d§[_loc18_];
                  _loc11_.§=?§ &= ~(b2Contact.§+!,§ | b2Contact.§ !5§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§9!3§)
               {
                  (_loc8_ = _loc9_.§3m§[_loc18_]).§=![§ = false;
                  _loc18_++;
               }
               this.§]y§.§2a§();
            }
         }
      }
      
      b2internal function §4>§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§=!e§();
         var _loc3_:b2Body = param1.§^5§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §"<§;
         switch(param1.§3!a§)
         {
            case b2Joint.§&!`§:
               this.§"m§.§5?§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§=q§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§>!_§();
               _loc13_ = _loc11_.§70§();
               this.§"m§.§5?§(_loc12_,_loc8_,_loc10_);
               this.§"m§.§5?§(_loc13_,_loc9_,_loc10_);
               this.§"m§.§5?§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§<!_§:
               this.§"m§.§5?§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§"m§.§5?§(_loc6_,_loc8_,_loc10_);
               }
               this.§"m§.§5?§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§"m§.§5?§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §6<§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§3!a§)
         {
            case b2Shape.§2T§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§8!&§(param2,_loc4_.§3!=§);
               _loc6_ = _loc4_.§?T§;
               _loc7_ = param2.R.col1;
               this.§"m§.§`f§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§>H§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§&t§();
               _loc11_ = _loc9_.§[!=§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§8!&§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§"m§.§+Q§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§>"§:
               _loc13_ = param1 as b2EdgeShape;
               this.§"m§.§5?§(b2Math.§8!&§(param2,_loc13_.GetVertex1()),b2Math.§8!&§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

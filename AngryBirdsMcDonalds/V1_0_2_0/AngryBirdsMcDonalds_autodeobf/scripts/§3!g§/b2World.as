package §3!g§
{
   import §"U§.*;
   import §'!9§.*;
   import §,7§.*;
   import §<!!§.*;
   import §=!X§.*;
   import §]!?§.b2Controller;
   import §]!?§.b2ControllerEdge;
   import §`!Z§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §?!j§:b2Transform = new b2Transform();
      
      private static var §>!h§:b2Sweep = new b2Sweep();
      
      private static var §;V§:b2Sweep = new b2Sweep();
      
      private static var §!! §:b2TimeStep = new b2TimeStep();
      
      private static var §7c§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §6!i§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §;!!§:Boolean;
      
      private static var §,r§:Boolean;
      
      public static const §=§:int = 1;
      
      public static const §+!+§:int = 2;
       
      
      private var §7!§:Vector.<b2Body>;
      
      b2internal var §9!U§:int;
      
      b2internal var §%X§:b2ContactManager;
      
      private var §6r§:b2ContactSolver;
      
      private var §`!I§:b2Island;
      
      b2internal var §,6§:b2Body;
      
      private var §9P§:b2Joint;
      
      b2internal var §`!K§:b2Contact;
      
      private var §1]§:int;
      
      b2internal var §,!7§:int;
      
      private var §"`§:int;
      
      private var §6! §:b2Controller;
      
      private var §9Y§:int;
      
      private var §6E§:b2Vec2;
      
      private var § #§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §-!-§:b2DestructionListener;
      
      private var §9X§:b2DebugDraw;
      
      private var §=!3§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§7!§ = new Vector.<b2Body>();
         this.§%X§ = new b2ContactManager();
         this.§6r§ = new b2ContactSolver();
         this.§`!I§ = new b2Island();
         super();
         this.§-!-§ = null;
         this.§9X§ = null;
         this.§,6§ = null;
         this.§`!K§ = null;
         this.§9P§ = null;
         this.§6! § = null;
         this.§1]§ = 0;
         this.§,!7§ = 0;
         this.§"`§ = 0;
         this.§9Y§ = 0;
         §;!!§ = true;
         §,r§ = true;
         this.§ #§ = param2;
         this.§6E§ = param1;
         this.§=!3§ = 0;
         this.§%X§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§&!7§(_loc3_);
      }
      
      public function §&1§(param1:b2DestructionListener) : void
      {
         this.§-!-§ = param1;
      }
      
      public function §7-§(param1:b2ContactFilter) : void
      {
         this.§%X§.§8p§ = param1;
      }
      
      public function §]!k§(param1:b2ContactListener) : void
      {
         this.§%X§.§,l§ = param1;
      }
      
      public function §5F§(param1:b2DebugDraw) : void
      {
         this.§9X§ = param1;
      }
      
      public function §9!-§(param1:§]!H§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§]!H§ = this.§%X§.§`!!§;
         this.§%X§.§`!!§ = param1;
         var _loc3_:b2Body = this.§,6§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§ !A§;
            while(_loc4_)
            {
               _loc4_.§3r§ = param1.§4f§(_loc2_.§6!^§(_loc4_.§3r§),_loc4_);
               _loc4_ = _loc4_.§ set§;
            }
            _loc3_ = _loc3_.§ set§;
         }
      }
      
      public function §3,§() : void
      {
         this.§%X§.§`!!§.§3,§();
      }
      
      public function §+!c§() : int
      {
         return this.§%X§.§`!!§.§+!c§();
      }
      
      public function §&!7§(param1:b2BodyDef) : b2Body
      {
         if(this.§,m§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§4W§ = null;
         _loc2_.§ set§ = this.§,6§;
         if(this.§,6§)
         {
            this.§,6§.§4W§ = _loc2_;
         }
         this.§,6§ = _loc2_;
         ++this.§1]§;
         return _loc2_;
      }
      
      public function §1l§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§,m§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§9P§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§[8§;
            if(this.§-!-§)
            {
               this.§-!-§.§8K§(_loc6_.§+T§);
            }
            this.§,y§(_loc6_.§+T§);
         }
         var _loc3_:b2ControllerEdge = param1.§6! §;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§4!U§;
            _loc7_.§>!b§.§0b§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§`!K§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§[8§;
            this.§%X§.§+$§(_loc8_.§!R§);
         }
         param1.§`!K§ = null;
         var _loc5_:b2Fixture = param1.§ !A§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§ set§;
            if(this.§-!-§)
            {
               this.§-!-§.§&W§(_loc9_);
            }
            _loc9_.§+!g§(this.§%X§.§`!!§);
            _loc9_.§+$§();
         }
         param1.§ !A§ = null;
         param1.§`!<§ = 0;
         if(param1.§4W§)
         {
            param1.§4W§.§ set§ = param1.§ set§;
         }
         if(param1.§ set§)
         {
            param1.§ set§.§4W§ = param1.§4W§;
         }
         if(param1 == this.§,6§)
         {
            this.§,6§ = param1.§ set§;
         }
         --this.§1]§;
      }
      
      public function §%!o§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§ 9§(param1,null);
         _loc2_.§4W§ = null;
         _loc2_.§ set§ = this.§9P§;
         if(this.§9P§)
         {
            this.§9P§.§4W§ = _loc2_;
         }
         this.§9P§ = _loc2_;
         ++this.§"`§;
         _loc2_.§ t§.§+T§ = _loc2_;
         _loc2_.§ t§.§ O§ = _loc2_.§'!?§;
         _loc2_.§ t§.§@7§ = null;
         _loc2_.§ t§.§[8§ = _loc2_.§5!$§.§9P§;
         if(_loc2_.§5!$§.§9P§)
         {
            _loc2_.§5!$§.§9P§.§@7§ = _loc2_.§ t§;
         }
         _loc2_.§5!$§.§9P§ = _loc2_.§ t§;
         _loc2_.§%!Z§.§+T§ = _loc2_;
         _loc2_.§%!Z§.§ O§ = _loc2_.§5!$§;
         _loc2_.§%!Z§.§@7§ = null;
         _loc2_.§%!Z§.§[8§ = _loc2_.§'!?§.§9P§;
         if(_loc2_.§'!?§.§9P§)
         {
            _loc2_.§'!?§.§9P§.§@7§ = _loc2_.§%!Z§;
         }
         _loc2_.§'!?§.§9P§ = _loc2_.§%!Z§;
         var _loc3_:b2Body = param1.§+!#§;
         var _loc4_:b2Body = param1.§1!K§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§]!@§();
            while(_loc5_)
            {
               if(_loc5_.§ O§ == _loc3_)
               {
                  _loc5_.§!R§.§2s§();
               }
               _loc5_ = _loc5_.§[8§;
            }
         }
         return _loc2_;
      }
      
      public function §,y§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§1D§;
         if(param1.§4W§)
         {
            param1.§4W§.§ set§ = param1.§ set§;
         }
         if(param1.§ set§)
         {
            param1.§ set§.§4W§ = param1.§4W§;
         }
         if(param1 == this.§9P§)
         {
            this.§9P§ = param1.§ set§;
         }
         var _loc3_:b2Body = param1.§5!$§;
         var _loc4_:b2Body = param1.§'!?§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§ t§.§@7§)
         {
            param1.§ t§.§@7§.§[8§ = param1.§ t§.§[8§;
         }
         if(param1.§ t§.§[8§)
         {
            param1.§ t§.§[8§.§@7§ = param1.§ t§.§@7§;
         }
         if(param1.§ t§ == _loc3_.§9P§)
         {
            _loc3_.§9P§ = param1.§ t§.§[8§;
         }
         param1.§ t§.§@7§ = null;
         param1.§ t§.§[8§ = null;
         if(param1.§%!Z§.§@7§)
         {
            param1.§%!Z§.§@7§.§[8§ = param1.§%!Z§.§[8§;
         }
         if(param1.§%!Z§.§[8§)
         {
            param1.§%!Z§.§[8§.§@7§ = param1.§%!Z§.§@7§;
         }
         if(param1.§%!Z§ == _loc4_.§9P§)
         {
            _loc4_.§9P§ = param1.§%!Z§.§[8§;
         }
         param1.§%!Z§.§@7§ = null;
         param1.§%!Z§.§[8§ = null;
         b2Joint.§+$§(param1,null);
         --this.§"`§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§]!@§();
            while(_loc5_)
            {
               if(_loc5_.§ O§ == _loc3_)
               {
                  _loc5_.§!R§.§2s§();
               }
               _loc5_ = _loc5_.§[8§;
            }
         }
      }
      
      public function §@c§(param1:b2Controller) : b2Controller
      {
         param1.§ set§ = this.§6! §;
         param1.§4W§ = null;
         this.§6! § = param1;
         param1.m_world = this;
         ++this.§9Y§;
         return param1;
      }
      
      public function §&!O§(param1:b2Controller) : void
      {
         if(param1.§4W§)
         {
            param1.§4W§.§ set§ = param1.§ set§;
         }
         if(param1.§ set§)
         {
            param1.§ set§.§4W§ = param1.§4W§;
         }
         if(this.§6! § == param1)
         {
            this.§6! § = param1.§ set§;
         }
         --this.§9Y§;
      }
      
      public function §3!3§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§ set§ = this.§6! §;
         param1.§4W§ = null;
         if(this.§6! §)
         {
            this.§6! §.§4W§ = param1;
         }
         this.§6! § = param1;
         ++this.§9Y§;
         param1.m_world = this;
         return param1;
      }
      
      public function §=o§(param1:b2Controller) : void
      {
         param1.§-!<§();
         if(param1.§ set§)
         {
            param1.§ set§.§4W§ = param1.§4W§;
         }
         if(param1.§4W§)
         {
            param1.§4W§.§ set§ = param1.§ set§;
         }
         if(param1 == this.§6! §)
         {
            this.§6! § = param1.§ set§;
         }
         --this.§9Y§;
      }
      
      public function §2!g§(param1:Boolean) : void
      {
         §;!!§ = param1;
      }
      
      public function §@!K§(param1:Boolean) : void
      {
         §,r§ = param1;
      }
      
      public function §#$§() : int
      {
         return this.§1]§;
      }
      
      public function §extends§() : int
      {
         return this.§"`§;
      }
      
      public function §38§() : int
      {
         return this.§,!7§;
      }
      
      public function §?!X§(param1:b2Vec2) : void
      {
         this.§6E§ = param1;
      }
      
      public function §;&§() : b2Vec2
      {
         return this.§6E§;
      }
      
      public function § use§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §4!@§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§9!U§ & §=§)
         {
            this.§%X§.§,!U§();
            this.§9!U§ &= ~§=§;
         }
         this.§9!U§ |= §+!+§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§+n§ = param1;
         _loc4_.§=B§ = param2;
         _loc4_.§0y§ = param3;
         if(param1 > 0)
         {
            _loc4_.§#!7§ = 1 / param1;
         }
         else
         {
            _loc4_.§#!7§ = 0;
         }
         _loc4_.§2!=§ = this.§=!3§ * param1;
         _loc4_.§%!C§ = §;!!§;
         this.§%X§.§1L§();
         if(_loc4_.§+n§ > 0)
         {
            this.§`D§(_loc4_);
         }
         if(§,r§ && _loc4_.§+n§ > 0)
         {
            this.§+!S§(_loc4_);
         }
         if(_loc4_.§+n§ > 0)
         {
            this.§=!3§ = _loc4_.§#!7§;
         }
         this.§9!U§ &= ~§+!+§;
      }
      
      public function §9>§() : void
      {
         var _loc1_:b2Body = this.§,6§;
         while(_loc1_)
         {
            _loc1_.§0!-§.§1!=§();
            _loc1_.§+!N§ = 0;
            _loc1_ = _loc1_.§ set§;
         }
      }
      
      public function §`!R§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§]!H§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§9X§ == null)
         {
            return;
         }
         this.§9X§.§%!P§.graphics.clear();
         var _loc1_:uint = this.§9X§.§2!e§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§6!;§)
         {
            _loc3_ = this.§,6§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.each();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.IsActive() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§1![§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§^!A§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§1![§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§^!A§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§1![§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§1![§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§1![§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§ set§;
               }
               _loc3_ = _loc3_.§ set§;
            }
         }
         if(_loc1_ & b2DebugDraw.§-[§)
         {
            _loc6_ = this.§9P§;
            while(_loc6_)
            {
               this.§&!#§(_loc6_);
               _loc6_ = _loc6_.§ set§;
            }
         }
         if(_loc1_ & b2DebugDraw.§?E§)
         {
            _loc16_ = this.§6! §;
            while(_loc16_)
            {
               _loc16_.§+!L§(this.§9X§);
               _loc16_ = _loc16_.§ set§;
            }
         }
         if(_loc1_ & b2DebugDraw.§&Q§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§%X§.§`!K§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§'C§();
               _loc19_ = _loc17_.§<!n§();
               _loc20_ = _loc18_.§;"§().§#!^§();
               _loc21_ = _loc19_.§;"§().§#!^§();
               this.§9X§.§[!4§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§%H§();
            }
         }
         if(_loc1_ & b2DebugDraw.§#A§)
         {
            _loc7_ = this.§%X§.§`!!§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§,6§;
            while(_loc3_)
            {
               if(_loc3_.IsActive() != false)
               {
                  _loc4_ = _loc3_.each();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§6!^§(_loc4_.§3r§);
                     _loc14_[0].Set(_loc22_.§"!^§.x,_loc22_.§"!^§.y);
                     _loc14_[1].Set(_loc22_.§6L§.x,_loc22_.§"!^§.y);
                     _loc14_[2].Set(_loc22_.§6L§.x,_loc22_.§6L§.y);
                     _loc14_[3].Set(_loc22_.§"!^§.x,_loc22_.§6L§.y);
                     this.§9X§.§@J§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§%H§();
                  }
               }
               _loc3_ = _loc3_.§%H§();
            }
         }
         if(_loc1_ & b2DebugDraw.§>!,§)
         {
            _loc3_ = this.§,6§;
            while(_loc3_)
            {
               (_loc11_ = §?!j§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§9X§.§!M§(_loc11_);
               _loc3_ = _loc3_.§ set§;
            }
         }
      }
      
      public function §]!%§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§]!H§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§%X§.§`!!§;
         broadPhase.§0x§(WorldQueryWrapper,aabb);
      }
      
      public function §3![§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§]!H§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§;l§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§=q§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§5!4§();
         }
         broadPhase = this.§%X§.§`!!§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§0x§(WorldQueryWrapper,aabb);
      }
      
      public function §9&§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§]!H§ = null;
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
         broadPhase = this.§%X§.§`!!§;
         var aabb:b2AABB = new b2AABB();
         aabb.§"!^§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§6L§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§0x§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§]!H§ = null;
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
            return param1.§^!=§;
         };
         broadPhase = this.§%X§.§`!!§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §@z§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §]!m§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §3!=§() : b2Body
      {
         return this.§,6§;
      }
      
      public function § c§() : b2Joint
      {
         return this.§9P§;
      }
      
      public function §]!@§() : b2Contact
      {
         return this.§`!K§;
      }
      
      public function §,m§() : Boolean
      {
         return (this.§9!U§ & §+!+§) > 0;
      }
      
      b2internal function §`D§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§6! §;
         while(_loc3_)
         {
            _loc3_.§4!@§(param1);
            _loc3_ = _loc3_.§ set§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§`!I§).§6!_§(this.§1]§,this.§,!7§,this.§"`§,null,this.§%X§.§,l§,this.§6r§);
         _loc2_ = this.§,6§;
         while(_loc2_)
         {
            _loc2_.§9!U§ &= ~b2Body.§'!J§;
            _loc2_ = _loc2_.§ set§;
         }
         var _loc5_:b2Contact = this.§`!K§;
         while(_loc5_)
         {
            _loc5_.§9!U§ &= ~b2Contact.§'!J§;
            _loc5_ = _loc5_.§ set§;
         }
         var _loc6_:b2Joint = this.§9P§;
         while(_loc6_)
         {
            _loc6_.§;t§ = false;
            _loc6_ = _loc6_.§ set§;
         }
         var _loc7_:int = this.§1]§;
         var _loc8_:Vector.<b2Body> = this.§7!§;
         var _loc9_:b2Body = this.§,6§;
         while(_loc9_)
         {
            if(!(_loc9_.§9!U§ & b2Body.§'!J§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.IsActive() == false))
               {
                  if(_loc9_.§^!A§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§-!<§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§9!U§ |= b2Body.§'!J§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§&8§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§^!A§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§`!K§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§!R§.§9!U§ & b2Contact.§'!J§))
                              {
                                 if(!(_loc13_.§!R§.§&?§() == true || _loc13_.§!R§.§=O§() == false || _loc13_.§!R§.§`T§() == false))
                                 {
                                    _loc4_.§<v§(_loc13_.§!R§);
                                    _loc13_.§!R§.§9!U§ |= b2Contact.§'!J§;
                                    if(!((_loc12_ = _loc13_.§ O§).§9!U§ & b2Body.§'!J§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§9!U§ |= b2Body.§'!J§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§[8§;
                           }
                           _loc14_ = _loc2_.§9P§;
                           while(_loc14_)
                           {
                              if(_loc14_.§+T§.§;t§ != true)
                              {
                                 if((_loc12_ = _loc14_.§ O§).IsActive() != false)
                                 {
                                    _loc4_.§7k§(_loc14_.§+T§);
                                    _loc14_.§+T§.§;t§ = true;
                                    if(!(_loc12_.§9!U§ & b2Body.§'!J§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§9!U§ |= b2Body.§'!J§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§[8§;
                           }
                        }
                     }
                     _loc4_.§`D§(param1,this.§6E§,this.§ #§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§1]§)
                     {
                        _loc2_ = _loc4_.§9!F§[_loc11_];
                        if(_loc2_.§^!A§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§9!U§ &= ~b2Body.§'!J§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§ set§;
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
         _loc2_ = this.§,6§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.IsActive() == false))
            {
               if(_loc2_.§^!A§() != b2Body.b2_staticBody)
               {
                  _loc2_.§+![§();
               }
            }
            _loc2_ = _loc2_.§ set§;
         }
         this.§%X§.§,!U§();
      }
      
      b2internal function §+!S§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§`!I§).§6!_§(this.§1]§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§%X§.§,l§,this.§6r§);
         var _loc10_:Vector.<b2Body> = §7c§;
         _loc2_ = this.§,6§;
         while(_loc2_)
         {
            _loc2_.§9!U§ &= ~b2Body.§'!J§;
            _loc2_.m_sweep.§throw§ = 0;
            _loc2_ = _loc2_.§ set§;
         }
         _loc11_ = this.§`!K§;
         while(_loc11_)
         {
            _loc11_.§9!U§ &= ~(b2Contact.§ ?§ | b2Contact.§'!J§);
            _loc11_ = _loc11_.§ set§;
         }
         _loc8_ = this.§9P§;
         while(_loc8_)
         {
            _loc8_.§;t§ = false;
            _loc8_ = _loc8_.§ set§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§`!K§;
            while(_loc11_)
            {
               if(!(_loc11_.§&?§() == true || _loc11_.§=O§() == false || _loc11_.§^!#§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§9!U§ & b2Contact.§ ?§)
                  {
                     _loc19_ = _loc11_.§'!F§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§2!G§;
                     _loc4_ = _loc11_.§#!S§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§^!A§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§^!A§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr619:
                        _loc11_ = _loc11_.§ set§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§throw§;
                     if(_loc5_.m_sweep.§throw§ < _loc6_.m_sweep.§throw§)
                     {
                        _loc20_ = _loc6_.m_sweep.§throw§;
                        _loc5_.m_sweep.§6>§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§throw§ < _loc5_.m_sweep.§throw§)
                     {
                        _loc20_ = _loc5_.m_sweep.§throw§;
                        _loc6_.m_sweep.§6>§(_loc20_);
                     }
                     _loc19_ = _loc11_.§6!4§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§'!F§ = _loc19_;
                     _loc11_.§9!U§ |= b2Contact.§ ?§;
                     §§goto(addr619);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr619);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§2!G§;
            _loc4_ = _loc12_.§#!S§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §>!h§.Set(_loc5_.m_sweep);
            §;V§.Set(_loc6_.m_sweep);
            _loc5_.§6>§(_loc13_);
            _loc6_.§6>§(_loc13_);
            _loc12_.§"!M§(this.§%X§.§,l§);
            _loc12_.§9!U§ &= ~b2Contact.§ ?§;
            if(_loc12_.§&?§() == true || _loc12_.§=O§() == false)
            {
               _loc5_.m_sweep.Set(§>!h§);
               _loc6_.m_sweep.Set(§;V§);
               _loc5_.§4j§();
               _loc6_.§4j§();
            }
            else if(_loc12_.§`T§() != false)
            {
               if((_loc14_ = _loc5_).§^!A§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§-!<§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§9!U§ |= b2Body.§'!J§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§&8§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§^!A§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§`!K§;
                     while(_loc7_)
                     {
                        if(_loc9_.§,!7§ == _loc9_.§+S§)
                        {
                           break;
                        }
                        if(!(_loc7_.§!R§.§9!U§ & b2Contact.§'!J§))
                        {
                           if(!(_loc7_.§!R§.§&?§() == true || _loc7_.§!R§.§=O§() == false || _loc7_.§!R§.§`T§() == false))
                           {
                              _loc9_.§<v§(_loc7_.§!R§);
                              _loc7_.§!R§.§9!U§ |= b2Contact.§'!J§;
                              if(!((_loc22_ = _loc7_.§ O§).§9!U§ & b2Body.§'!J§))
                              {
                                 if(_loc22_.§^!A§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§6>§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§9!U§ |= b2Body.§'!J§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§[8§;
                     }
                     _loc21_ = _loc2_.§9P§;
                     while(_loc21_)
                     {
                        if(_loc9_.§"`§ != _loc9_.§]r§)
                        {
                           if(_loc21_.§+T§.§;t§ != true)
                           {
                              if((_loc22_ = _loc21_.§ O§).IsActive() != false)
                              {
                                 _loc9_.§7k§(_loc21_.§+T§);
                                 _loc21_.§+T§.§;t§ = true;
                                 if(!(_loc22_.§9!U§ & b2Body.§'!J§))
                                 {
                                    if(_loc22_.§^!A§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§6>§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§9!U§ |= b2Body.§'!J§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§[8§;
                     }
                  }
               }
               (_loc17_ = §!! §).§%!C§ = false;
               _loc17_.§+n§ = (1 - _loc13_) * param1.§+n§;
               _loc17_.§#!7§ = 1 / _loc17_.§+n§;
               _loc17_.§2!=§ = 0;
               _loc17_.§=B§ = param1.§=B§;
               _loc17_.§0y§ = param1.§0y§;
               _loc9_.§+!S§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§1]§)
               {
                  _loc2_ = _loc9_.§9!F§[_loc18_];
                  _loc2_.§9!U§ &= ~b2Body.§'!J§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§^!A§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§+![§();
                        _loc7_ = _loc2_.§`!K§;
                        while(_loc7_)
                        {
                           _loc7_.§!R§.§9!U§ &= ~b2Contact.§ ?§;
                           _loc7_ = _loc7_.§[8§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§,!7§)
               {
                  _loc11_ = _loc9_.§7!<§[_loc18_];
                  _loc11_.§9!U§ &= ~(b2Contact.§ ?§ | b2Contact.§'!J§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§"`§)
               {
                  (_loc8_ = _loc9_.§7_§[_loc18_]).§;t§ = false;
                  _loc18_++;
               }
               this.§%X§.§,!U§();
            }
         }
      }
      
      b2internal function §&!#§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§,A§();
         var _loc3_:b2Body = param1.§^u§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §6!i§;
         switch(param1.§+k§)
         {
            case b2Joint.§#F§:
               this.§9X§.§[!4§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§#4§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§!!p§();
               _loc13_ = _loc11_.§ !%§();
               this.§9X§.§[!4§(_loc12_,_loc8_,_loc10_);
               this.§9X§.§[!4§(_loc13_,_loc9_,_loc10_);
               this.§9X§.§[!4§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§^T§:
               this.§9X§.§[!4§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§9X§.§[!4§(_loc6_,_loc8_,_loc10_);
               }
               this.§9X§.§[!4§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§9X§.§[!4§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §1![§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§+k§)
         {
            case b2Shape.§%b§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§<!E§(param2,_loc4_.§--§);
               _loc6_ = _loc4_.§^!c§;
               _loc7_ = param2.R.col1;
               this.§9X§.§%!,§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§0!7§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§&!o§();
               _loc11_ = _loc9_.§[N§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§<!E§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§9X§.§1F§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§ h§:
               _loc13_ = param1 as b2EdgeShape;
               this.§9X§.§[!4§(b2Math.§<!E§(param2,_loc13_.GetVertex1()),b2Math.§<!E§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

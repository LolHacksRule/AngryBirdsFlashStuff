package §&x§
{
   import §!4§.*;
   import §'!J§.*;
   import §-!T§.*;
   import §0,§.*;
   import §3o§.*;
   import §5!A§.b2Controller;
   import §5!A§.b2ControllerEdge;
   import §8!b§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §%!5§:b2Transform = new b2Transform();
      
      private static var §9!p§:b2Sweep = new b2Sweep();
      
      private static var §`&§:b2Sweep = new b2Sweep();
      
      private static var §7!i§:b2TimeStep = new b2TimeStep();
      
      private static var §#!&§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §>!I§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §>s§:Boolean;
      
      private static var §>d§:Boolean;
      
      public static const §9D§:int = 1;
      
      public static const §4&§:int = 2;
       
      
      private var §,f§:Vector.<b2Body>;
      
      b2internal var § 3§:int;
      
      b2internal var §=!;§:b2ContactManager;
      
      private var §'S§:b2ContactSolver;
      
      private var §#!^§:b2Island;
      
      b2internal var §0!,§:b2Body;
      
      private var §#!%§:b2Joint;
      
      b2internal var §1"§:b2Contact;
      
      private var §7!N§:int;
      
      b2internal var §=?§:int;
      
      private var §`N§:int;
      
      private var §`J§:b2Controller;
      
      private var §^y§:int;
      
      private var §<U§:b2Vec2;
      
      private var §3!2§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §=!9§:b2DestructionListener;
      
      private var §`e§:b2DebugDraw;
      
      private var §^#§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§,f§ = new Vector.<b2Body>();
         this.§=!;§ = new b2ContactManager();
         this.§'S§ = new b2ContactSolver();
         this.§#!^§ = new b2Island();
         super();
         this.§=!9§ = null;
         this.§`e§ = null;
         this.§0!,§ = null;
         this.§1"§ = null;
         this.§#!%§ = null;
         this.§`J§ = null;
         this.§7!N§ = 0;
         this.§=?§ = 0;
         this.§`N§ = 0;
         this.§^y§ = 0;
         §>s§ = true;
         §>d§ = true;
         this.§3!2§ = param2;
         this.§<U§ = param1;
         this.§^#§ = 0;
         this.§=!;§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§ V§(_loc3_);
      }
      
      public function §!l§(param1:b2DestructionListener) : void
      {
         this.§=!9§ = param1;
      }
      
      public function §9!C§(param1:b2ContactFilter) : void
      {
         this.§=!;§.§#N§ = param1;
      }
      
      public function §7!#§(param1:b2ContactListener) : void
      {
         this.§=!;§.§#!"§ = param1;
      }
      
      public function §8f§(param1:b2DebugDraw) : void
      {
         this.§`e§ = param1;
      }
      
      public function §,o§(param1:§2!W§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§2!W§ = this.§=!;§.§2!E§;
         this.§=!;§.§2!E§ = param1;
         var _loc3_:b2Body = this.§0!,§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§8$§;
            while(_loc4_)
            {
               _loc4_.§0!=§ = param1.§&t§(_loc2_.§6!6§(_loc4_.§0!=§),_loc4_);
               _loc4_ = _loc4_.§18§;
            }
            _loc3_ = _loc3_.§18§;
         }
      }
      
      public function §<!T§() : void
      {
         this.§=!;§.§2!E§.§<!T§();
      }
      
      public function §74§() : int
      {
         return this.§=!;§.§2!E§.§74§();
      }
      
      public function § V§(param1:b2BodyDef) : b2Body
      {
         if(this.§#!X§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§=!W§ = null;
         _loc2_.§18§ = this.§0!,§;
         if(this.§0!,§)
         {
            this.§0!,§.§=!W§ = _loc2_;
         }
         this.§0!,§ = _loc2_;
         ++this.§7!N§;
         return _loc2_;
      }
      
      public function §6!m§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§#!X§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§#!%§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§1t§;
            if(this.§=!9§)
            {
               this.§=!9§.§>'§(_loc6_.§,^§);
            }
            this.§%G§(_loc6_.§,^§);
         }
         var _loc3_:b2ControllerEdge = param1.§`J§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§>!B§;
            _loc7_.§[I§.§!!a§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§1"§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§1t§;
            this.§=!;§.§ ;§(_loc8_.§&!L§);
         }
         param1.§1"§ = null;
         var _loc5_:b2Fixture = param1.§8$§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§18§;
            if(this.§=!9§)
            {
               this.§=!9§.§9!h§(_loc9_);
            }
            _loc9_.§!!E§(this.§=!;§.§2!E§);
            _loc9_.§ ;§();
         }
         param1.§8$§ = null;
         param1.§=9§ = 0;
         if(param1.§=!W§)
         {
            param1.§=!W§.§18§ = param1.§18§;
         }
         if(param1.§18§)
         {
            param1.§18§.§=!W§ = param1.§=!W§;
         }
         if(param1 == this.§0!,§)
         {
            this.§0!,§ = param1.§18§;
         }
         --this.§7!N§;
      }
      
      public function §0"§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§;!1§(param1,null);
         _loc2_.§=!W§ = null;
         _loc2_.§18§ = this.§#!%§;
         if(this.§#!%§)
         {
            this.§#!%§.§=!W§ = _loc2_;
         }
         this.§#!%§ = _loc2_;
         ++this.§`N§;
         _loc2_.§,7§.§,^§ = _loc2_;
         _loc2_.§,7§.§ W§ = _loc2_.§"!§;
         _loc2_.§,7§.§"!6§ = null;
         _loc2_.§,7§.§1t§ = _loc2_.§=s§.§#!%§;
         if(_loc2_.§=s§.§#!%§)
         {
            _loc2_.§=s§.§#!%§.§"!6§ = _loc2_.§,7§;
         }
         _loc2_.§=s§.§#!%§ = _loc2_.§,7§;
         _loc2_.§8!`§.§,^§ = _loc2_;
         _loc2_.§8!`§.§ W§ = _loc2_.§=s§;
         _loc2_.§8!`§.§"!6§ = null;
         _loc2_.§8!`§.§1t§ = _loc2_.§"!§.§#!%§;
         if(_loc2_.§"!§.§#!%§)
         {
            _loc2_.§"!§.§#!%§.§"!6§ = _loc2_.§8!`§;
         }
         _loc2_.§"!§.§#!%§ = _loc2_.§8!`§;
         var _loc3_:b2Body = param1.§@!F§;
         var _loc4_:b2Body = param1.§9!T§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§%F§();
            while(_loc5_)
            {
               if(_loc5_.§ W§ == _loc3_)
               {
                  _loc5_.§&!L§.§>T§();
               }
               _loc5_ = _loc5_.§1t§;
            }
         }
         return _loc2_;
      }
      
      public function §%G§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§"!-§;
         if(param1.§=!W§)
         {
            param1.§=!W§.§18§ = param1.§18§;
         }
         if(param1.§18§)
         {
            param1.§18§.§=!W§ = param1.§=!W§;
         }
         if(param1 == this.§#!%§)
         {
            this.§#!%§ = param1.§18§;
         }
         var _loc3_:b2Body = param1.§=s§;
         var _loc4_:b2Body = param1.§"!§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§,7§.§"!6§)
         {
            param1.§,7§.§"!6§.§1t§ = param1.§,7§.§1t§;
         }
         if(param1.§,7§.§1t§)
         {
            param1.§,7§.§1t§.§"!6§ = param1.§,7§.§"!6§;
         }
         if(param1.§,7§ == _loc3_.§#!%§)
         {
            _loc3_.§#!%§ = param1.§,7§.§1t§;
         }
         param1.§,7§.§"!6§ = null;
         param1.§,7§.§1t§ = null;
         if(param1.§8!`§.§"!6§)
         {
            param1.§8!`§.§"!6§.§1t§ = param1.§8!`§.§1t§;
         }
         if(param1.§8!`§.§1t§)
         {
            param1.§8!`§.§1t§.§"!6§ = param1.§8!`§.§"!6§;
         }
         if(param1.§8!`§ == _loc4_.§#!%§)
         {
            _loc4_.§#!%§ = param1.§8!`§.§1t§;
         }
         param1.§8!`§.§"!6§ = null;
         param1.§8!`§.§1t§ = null;
         b2Joint.§ ;§(param1,null);
         --this.§`N§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§%F§();
            while(_loc5_)
            {
               if(_loc5_.§ W§ == _loc3_)
               {
                  _loc5_.§&!L§.§>T§();
               }
               _loc5_ = _loc5_.§1t§;
            }
         }
      }
      
      public function §]!l§(param1:b2Controller) : b2Controller
      {
         param1.§18§ = this.§`J§;
         param1.§=!W§ = null;
         this.§`J§ = param1;
         param1.m_world = this;
         ++this.§^y§;
         return param1;
      }
      
      public function §]O§(param1:b2Controller) : void
      {
         if(param1.§=!W§)
         {
            param1.§=!W§.§18§ = param1.§18§;
         }
         if(param1.§18§)
         {
            param1.§18§.§=!W§ = param1.§=!W§;
         }
         if(this.§`J§ == param1)
         {
            this.§`J§ = param1.§18§;
         }
         --this.§^y§;
      }
      
      public function §#S§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§18§ = this.§`J§;
         param1.§=!W§ = null;
         if(this.§`J§)
         {
            this.§`J§.§=!W§ = param1;
         }
         this.§`J§ = param1;
         ++this.§^y§;
         param1.m_world = this;
         return param1;
      }
      
      public function §"<§(param1:b2Controller) : void
      {
         param1.§^6§();
         if(param1.§18§)
         {
            param1.§18§.§=!W§ = param1.§=!W§;
         }
         if(param1.§=!W§)
         {
            param1.§=!W§.§18§ = param1.§18§;
         }
         if(param1 == this.§`J§)
         {
            this.§`J§ = param1.§18§;
         }
         --this.§^y§;
      }
      
      public function §@1§(param1:Boolean) : void
      {
         §>s§ = param1;
      }
      
      public function §3!N§(param1:Boolean) : void
      {
         §>d§ = param1;
      }
      
      public function §7!§() : int
      {
         return this.§7!N§;
      }
      
      public function §=%§() : int
      {
         return this.§`N§;
      }
      
      public function §=!>§() : int
      {
         return this.§=?§;
      }
      
      public function §%!9§(param1:b2Vec2) : void
      {
         this.§<U§ = param1;
      }
      
      public function §!!2§() : b2Vec2
      {
         return this.§<U§;
      }
      
      public function §5X§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §4s§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§ 3§ & §9D§)
         {
            this.§=!;§.§`o§();
            this.§ 3§ &= ~§9D§;
         }
         this.§ 3§ |= §4&§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§"!?§ = param1;
         _loc4_.§>!i§ = param2;
         _loc4_.§#P§ = param3;
         if(param1 > 0)
         {
            _loc4_.§9j§ = 1 / param1;
         }
         else
         {
            _loc4_.§9j§ = 0;
         }
         _loc4_.§,!m§ = this.§^#§ * param1;
         _loc4_.§8!&§ = §>s§;
         this.§=!;§.§?w§();
         if(_loc4_.§"!?§ > 0)
         {
            this.§'s§(_loc4_);
         }
         if(§>d§ && _loc4_.§"!?§ > 0)
         {
            this.§"D§(_loc4_);
         }
         if(_loc4_.§"!?§ > 0)
         {
            this.§^#§ = _loc4_.§9j§;
         }
         this.§ 3§ &= ~§4&§;
      }
      
      public function §@!<§() : void
      {
         var _loc1_:b2Body = this.§0!,§;
         while(_loc1_)
         {
            _loc1_.§<!1§.§ !b§();
            _loc1_.§=!?§ = 0;
            _loc1_ = _loc1_.§18§;
         }
      }
      
      public function §'n§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§2!W§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§`e§ == null)
         {
            return;
         }
         this.§`e§.§<!2§.graphics.clear();
         var _loc1_:uint = this.§`e§.§]!1§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§#!7§)
         {
            _loc3_ = this.§0!,§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§0!T§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.IsActive() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§]g§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§"!I§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§]g§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§"!I§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§]g§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§]g§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§]g§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§18§;
               }
               _loc3_ = _loc3_.§18§;
            }
         }
         if(_loc1_ & b2DebugDraw.§0!b§)
         {
            _loc6_ = this.§#!%§;
            while(_loc6_)
            {
               this.§^!$§(_loc6_);
               _loc6_ = _loc6_.§18§;
            }
         }
         if(_loc1_ & b2DebugDraw.§6!0§)
         {
            _loc16_ = this.§`J§;
            while(_loc16_)
            {
               _loc16_.§?!;§(this.§`e§);
               _loc16_ = _loc16_.§18§;
            }
         }
         if(_loc1_ & b2DebugDraw.§1!-§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§=!;§.§1"§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§+!m§();
               _loc19_ = _loc17_.§4j§();
               _loc20_ = _loc18_.§6!L§().§>N§();
               _loc21_ = _loc19_.§6!L§().§>N§();
               this.§`e§.§4!4§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§@!^§();
            }
         }
         if(_loc1_ & b2DebugDraw.§-y§)
         {
            _loc7_ = this.§=!;§.§2!E§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§0!,§;
            while(_loc3_)
            {
               if(_loc3_.IsActive() != false)
               {
                  _loc4_ = _loc3_.§0!T§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§6!6§(_loc4_.§0!=§);
                     _loc14_[0].Set(_loc22_.§3=§.x,_loc22_.§3=§.y);
                     _loc14_[1].Set(_loc22_.§5V§.x,_loc22_.§3=§.y);
                     _loc14_[2].Set(_loc22_.§5V§.x,_loc22_.§5V§.y);
                     _loc14_[3].Set(_loc22_.§3=§.x,_loc22_.§5V§.y);
                     this.§`e§.set(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§@!^§();
                  }
               }
               _loc3_ = _loc3_.§@!^§();
            }
         }
         if(_loc1_ & b2DebugDraw.§2>§)
         {
            _loc3_ = this.§0!,§;
            while(_loc3_)
            {
               (_loc11_ = §%!5§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§`e§.§ [§(_loc11_);
               _loc3_ = _loc3_.§18§;
            }
         }
      }
      
      public function §5!@§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§2!W§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§=!;§.§2!E§;
         broadPhase.§^q§(WorldQueryWrapper,aabb);
      }
      
      public function §%P§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§2!W§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§7q§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§<9§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§1Q§();
         }
         broadPhase = this.§=!;§.§2!E§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§^q§(WorldQueryWrapper,aabb);
      }
      
      public function §"!X§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§2!W§ = null;
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
         broadPhase = this.§=!;§.§2!E§;
         var aabb:b2AABB = new b2AABB();
         aabb.§3=§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§5V§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§^q§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§2!W§ = null;
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
            return param1.§4!f§;
         };
         broadPhase = this.§=!;§.§2!E§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §?!&§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §;!C§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §#s§() : b2Body
      {
         return this.§0!,§;
      }
      
      public function § _§() : b2Joint
      {
         return this.§#!%§;
      }
      
      public function §%F§() : b2Contact
      {
         return this.§1"§;
      }
      
      public function §#!X§() : Boolean
      {
         return (this.§ 3§ & §4&§) > 0;
      }
      
      b2internal function §'s§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§`J§;
         while(_loc3_)
         {
            _loc3_.§4s§(param1);
            _loc3_ = _loc3_.§18§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§#!^§).§,!p§(this.§7!N§,this.§=?§,this.§`N§,null,this.§=!;§.§#!"§,this.§'S§);
         _loc2_ = this.§0!,§;
         while(_loc2_)
         {
            _loc2_.§ 3§ &= ~b2Body.§=7§;
            _loc2_ = _loc2_.§18§;
         }
         var _loc5_:b2Contact = this.§1"§;
         while(_loc5_)
         {
            _loc5_.§ 3§ &= ~b2Contact.§=7§;
            _loc5_ = _loc5_.§18§;
         }
         var _loc6_:b2Joint = this.§#!%§;
         while(_loc6_)
         {
            _loc6_.§&!>§ = false;
            _loc6_ = _loc6_.§18§;
         }
         var _loc7_:int = this.§7!N§;
         var _loc8_:Vector.<b2Body> = this.§,f§;
         var _loc9_:b2Body = this.§0!,§;
         while(_loc9_)
         {
            if(!(_loc9_.§ 3§ & b2Body.§=7§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.IsActive() == false))
               {
                  if(_loc9_.§"!I§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§^6§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§ 3§ |= b2Body.§=7§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§[w§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§"!I§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§1"§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§&!L§.§ 3§ & b2Contact.§=7§))
                              {
                                 if(!(_loc13_.§&!L§.§#K§() == true || _loc13_.§&!L§.§%0§() == false || _loc13_.§&!L§.§@`§() == false))
                                 {
                                    _loc4_.§9!B§(_loc13_.§&!L§);
                                    _loc13_.§&!L§.§ 3§ |= b2Contact.§=7§;
                                    if(!((_loc12_ = _loc13_.§ W§).§ 3§ & b2Body.§=7§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§ 3§ |= b2Body.§=7§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§1t§;
                           }
                           _loc14_ = _loc2_.§#!%§;
                           while(_loc14_)
                           {
                              if(_loc14_.§,^§.§&!>§ != true)
                              {
                                 if((_loc12_ = _loc14_.§ W§).IsActive() != false)
                                 {
                                    _loc4_.§]!,§(_loc14_.§,^§);
                                    _loc14_.§,^§.§&!>§ = true;
                                    if(!(_loc12_.§ 3§ & b2Body.§=7§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§ 3§ |= b2Body.§=7§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§1t§;
                           }
                        }
                     }
                     _loc4_.§'s§(param1,this.§<U§,this.§3!2§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§7!N§)
                     {
                        _loc2_ = _loc4_.§<!O§[_loc11_];
                        if(_loc2_.§"!I§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§ 3§ &= ~b2Body.§=7§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§18§;
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
         _loc2_ = this.§0!,§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.IsActive() == false))
            {
               if(_loc2_.§"!I§() != b2Body.b2_staticBody)
               {
                  _loc2_.§`2§();
               }
            }
            _loc2_ = _loc2_.§18§;
         }
         this.§=!;§.§`o§();
      }
      
      b2internal function §"D§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§#!^§).§,!p§(this.§7!N§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§=!;§.§#!"§,this.§'S§);
         var _loc10_:Vector.<b2Body> = §#!&§;
         _loc2_ = this.§0!,§;
         while(_loc2_)
         {
            _loc2_.§ 3§ &= ~b2Body.§=7§;
            _loc2_.m_sweep.§5!`§ = 0;
            _loc2_ = _loc2_.§18§;
         }
         _loc11_ = this.§1"§;
         while(_loc11_)
         {
            _loc11_.§ 3§ &= ~(b2Contact.§#[§ | b2Contact.§=7§);
            _loc11_ = _loc11_.§18§;
         }
         _loc8_ = this.§#!%§;
         while(_loc8_)
         {
            _loc8_.§&!>§ = false;
            _loc8_ = _loc8_.§18§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§1"§;
            while(_loc11_)
            {
               if(!(_loc11_.§#K§() == true || _loc11_.§%0§() == false || _loc11_.§ true§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§ 3§ & b2Contact.§#[§)
                  {
                     _loc19_ = _loc11_.§[Q§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§ `§;
                     _loc4_ = _loc11_.§"!9§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§"!I§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§"!I§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr616:
                        _loc11_ = _loc11_.§18§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§5!`§;
                     if(_loc5_.m_sweep.§5!`§ < _loc6_.m_sweep.§5!`§)
                     {
                        _loc20_ = _loc6_.m_sweep.§5!`§;
                        _loc5_.m_sweep.§2v§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§5!`§ < _loc5_.m_sweep.§5!`§)
                     {
                        _loc20_ = _loc5_.m_sweep.§5!`§;
                        _loc6_.m_sweep.§2v§(_loc20_);
                     }
                     _loc19_ = _loc11_.§`d§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§[Q§ = _loc19_;
                     _loc11_.§ 3§ |= b2Contact.§#[§;
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
            _loc3_ = _loc12_.§ `§;
            _loc4_ = _loc12_.§"!9§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §9!p§.Set(_loc5_.m_sweep);
            §`&§.Set(_loc6_.m_sweep);
            _loc5_.§2v§(_loc13_);
            _loc6_.§2v§(_loc13_);
            _loc12_.§3!P§(this.§=!;§.§#!"§);
            _loc12_.§ 3§ &= ~b2Contact.§#[§;
            if(_loc12_.§#K§() == true || _loc12_.§%0§() == false)
            {
               _loc5_.m_sweep.Set(§9!p§);
               _loc6_.m_sweep.Set(§`&§);
               _loc5_.§4l§();
               _loc6_.§4l§();
            }
            else if(_loc12_.§@`§() != false)
            {
               if((_loc14_ = _loc5_).§"!I§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§^6§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§ 3§ |= b2Body.§=7§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§[w§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§"!I§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§1"§;
                     while(_loc7_)
                     {
                        if(_loc9_.§=?§ == _loc9_.§>;§)
                        {
                           break;
                        }
                        if(!(_loc7_.§&!L§.§ 3§ & b2Contact.§=7§))
                        {
                           if(!(_loc7_.§&!L§.§#K§() == true || _loc7_.§&!L§.§%0§() == false || _loc7_.§&!L§.§@`§() == false))
                           {
                              _loc9_.§9!B§(_loc7_.§&!L§);
                              _loc7_.§&!L§.§ 3§ |= b2Contact.§=7§;
                              if(!((_loc22_ = _loc7_.§ W§).§ 3§ & b2Body.§=7§))
                              {
                                 if(_loc22_.§"!I§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§2v§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§ 3§ |= b2Body.§=7§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§1t§;
                     }
                     _loc21_ = _loc2_.§#!%§;
                     while(_loc21_)
                     {
                        if(_loc9_.§`N§ != _loc9_.§9I§)
                        {
                           if(_loc21_.§,^§.§&!>§ != true)
                           {
                              if((_loc22_ = _loc21_.§ W§).IsActive() != false)
                              {
                                 _loc9_.§]!,§(_loc21_.§,^§);
                                 _loc21_.§,^§.§&!>§ = true;
                                 if(!(_loc22_.§ 3§ & b2Body.§=7§))
                                 {
                                    if(_loc22_.§"!I§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§2v§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§ 3§ |= b2Body.§=7§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§1t§;
                     }
                  }
               }
               (_loc17_ = §7!i§).§8!&§ = false;
               _loc17_.§"!?§ = (1 - _loc13_) * param1.§"!?§;
               _loc17_.§9j§ = 1 / _loc17_.§"!?§;
               _loc17_.§,!m§ = 0;
               _loc17_.§>!i§ = param1.§>!i§;
               _loc17_.§#P§ = param1.§#P§;
               _loc9_.§"D§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§7!N§)
               {
                  _loc2_ = _loc9_.§<!O§[_loc18_];
                  _loc2_.§ 3§ &= ~b2Body.§=7§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§"!I§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§`2§();
                        _loc7_ = _loc2_.§1"§;
                        while(_loc7_)
                        {
                           _loc7_.§&!L§.§ 3§ &= ~b2Contact.§#[§;
                           _loc7_ = _loc7_.§1t§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§=?§)
               {
                  _loc11_ = _loc9_.§=!7§[_loc18_];
                  _loc11_.§ 3§ &= ~(b2Contact.§#[§ | b2Contact.§=7§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§`N§)
               {
                  (_loc8_ = _loc9_.§8!c§[_loc18_]).§&!>§ = false;
                  _loc18_++;
               }
               this.§=!;§.§`o§();
            }
         }
      }
      
      b2internal function §^!$§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§&!F§();
         var _loc3_:b2Body = param1.§7c§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §>!I§;
         switch(param1.§5!a§)
         {
            case b2Joint.§`O§:
               this.§`e§.§4!4§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§[!a§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§2w§();
               _loc13_ = _loc11_.§[?§();
               this.§`e§.§4!4§(_loc12_,_loc8_,_loc10_);
               this.§`e§.§4!4§(_loc13_,_loc9_,_loc10_);
               this.§`e§.§4!4§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§&b§:
               this.§`e§.§4!4§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§`e§.§4!4§(_loc6_,_loc8_,_loc10_);
               }
               this.§`e§.§4!4§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§`e§.§4!4§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §]g§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§5!a§)
         {
            case b2Shape.§<7§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§,z§(param2,_loc4_.§?!d§);
               _loc6_ = _loc4_.§=V§;
               _loc7_ = param2.R.col1;
               this.§`e§.§3!b§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§5!e§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§7K§();
               _loc11_ = _loc9_.§^P§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§,z§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§`e§.§2!H§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§7H§:
               _loc13_ = param1 as b2EdgeShape;
               this.§`e§.§4!4§(b2Math.§,z§(param2,_loc13_.GetVertex1()),b2Math.§,z§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

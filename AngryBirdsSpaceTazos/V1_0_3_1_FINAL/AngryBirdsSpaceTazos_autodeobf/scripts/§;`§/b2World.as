package §;`§
{
   import §"!w§.*;
   import §'!^§.*;
   import §8K§.*;
   import §>!F§.b2Controller;
   import §>!F§.b2ControllerEdge;
   import §>!m§.*;
   import §?"#§.*;
   import §[!f§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §-!,§:b2Transform = new b2Transform();
      
      private static var §="C§:b2Sweep = new b2Sweep();
      
      private static var §?!d§:b2Sweep = new b2Sweep();
      
      private static var §2F§:b2TimeStep = new b2TimeStep();
      
      private static var §8!!§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §%"'§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §8N§:Boolean;
      
      private static var §>"=§:Boolean;
      
      public static const §`+§:int = 1;
      
      public static const § "$§:int = 2;
       
      
      private var §!!m§:Vector.<b2Body>;
      
      b2internal var §4C§:int;
      
      b2internal var §3!y§:b2ContactManager;
      
      private var §`A§:b2ContactSolver;
      
      private var §7!F§:b2Island;
      
      b2internal var §[!C§:b2Body;
      
      private var §2!n§:b2Joint;
      
      b2internal var §7! §:b2Contact;
      
      private var §9!n§:int;
      
      b2internal var §1A§:int;
      
      private var §2y§:int;
      
      private var §+]§:b2Controller;
      
      private var § !Y§:int;
      
      private var §<!;§:b2Vec2;
      
      private var §0! §:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §&!`§:b2DestructionListener;
      
      private var §-!U§:b2DebugDraw;
      
      private var §%!U§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§!!m§ = new Vector.<b2Body>();
         this.§3!y§ = new b2ContactManager();
         this.§`A§ = new b2ContactSolver();
         this.§7!F§ = new b2Island();
         super();
         this.§&!`§ = null;
         this.§-!U§ = null;
         this.§[!C§ = null;
         this.§7! § = null;
         this.§2!n§ = null;
         this.§+]§ = null;
         this.§9!n§ = 0;
         this.§1A§ = 0;
         this.§2y§ = 0;
         this.§ !Y§ = 0;
         §8N§ = true;
         §>"=§ = true;
         this.§0! § = param2;
         this.§<!;§ = param1;
         this.§%!U§ = 0;
         this.§3!y§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §9P§(param1:b2DestructionListener) : void
      {
         this.§&!`§ = param1;
      }
      
      public function §!" §(param1:b2ContactFilter) : void
      {
         this.§3!y§.§'T§ = param1;
      }
      
      public function § R§(param1:b2ContactListener) : void
      {
         this.§3!y§.§,h§ = param1;
      }
      
      public function §`!8§(param1:b2DebugDraw) : void
      {
         this.§-!U§ = param1;
      }
      
      public function §10§(param1:§,t§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§,t§ = this.§3!y§.§%C§;
         this.§3!y§.§%C§ = param1;
         var _loc3_:b2Body = this.§[!C§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§2§;
            while(_loc4_)
            {
               _loc4_.§9f§ = param1.§=!o§(_loc2_.§9h§(_loc4_.§9f§),_loc4_);
               _loc4_ = _loc4_.§+!>§;
            }
            _loc3_ = _loc3_.§+!>§;
         }
      }
      
      public function §&!_§() : void
      {
         this.§3!y§.§%C§.§&!_§();
      }
      
      public function §@!@§() : int
      {
         return this.§3!y§.§%C§.§@!@§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§]!H§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§#!o§ = null;
         _loc2_.§+!>§ = this.§[!C§;
         if(this.§[!C§)
         {
            this.§[!C§.§#!o§ = _loc2_;
         }
         this.§[!C§ = _loc2_;
         ++this.§9!n§;
         return _loc2_;
      }
      
      public function §8"C§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§]!H§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§2!n§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§@!6§;
            if(this.§&!`§)
            {
               this.§&!`§.§5Q§(_loc6_.§2">§);
            }
            this.§7!o§(_loc6_.§2">§);
         }
         var _loc3_:b2ControllerEdge = param1.§+]§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§&<§;
            _loc7_.§79§.§]b§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§7! §;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§@!6§;
            this.§3!y§.§<!p§(_loc8_.§9!G§);
         }
         param1.§7! § = null;
         var _loc5_:b2Fixture = param1.§2§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§+!>§;
            if(this.§&!`§)
            {
               this.§&!`§.§8b§(_loc9_);
            }
            _loc9_.§4x§(this.§3!y§.§%C§);
            _loc9_.§<!p§();
         }
         param1.§2§ = null;
         param1.§@!h§ = 0;
         if(param1.§#!o§)
         {
            param1.§#!o§.§+!>§ = param1.§+!>§;
         }
         if(param1.§+!>§)
         {
            param1.§+!>§.§#!o§ = param1.§#!o§;
         }
         if(param1 == this.§[!C§)
         {
            this.§[!C§ = param1.§+!>§;
         }
         --this.§9!n§;
      }
      
      public function §;""§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§&!L§(param1,null);
         _loc2_.§#!o§ = null;
         _loc2_.§+!>§ = this.§2!n§;
         if(this.§2!n§)
         {
            this.§2!n§.§#!o§ = _loc2_;
         }
         this.§2!n§ = _loc2_;
         ++this.§2y§;
         _loc2_.§2H§.§2">§ = _loc2_;
         _loc2_.§2H§.§%4§ = _loc2_.§8"?§;
         _loc2_.§2H§.§+!1§ = null;
         _loc2_.§2H§.§@!6§ = _loc2_.§8!M§.§2!n§;
         if(_loc2_.§8!M§.§2!n§)
         {
            _loc2_.§8!M§.§2!n§.§+!1§ = _loc2_.§2H§;
         }
         _loc2_.§8!M§.§2!n§ = _loc2_.§2H§;
         _loc2_.§null §.§2">§ = _loc2_;
         _loc2_.§null §.§%4§ = _loc2_.§8!M§;
         _loc2_.§null §.§+!1§ = null;
         _loc2_.§null §.§@!6§ = _loc2_.§8"?§.§2!n§;
         if(_loc2_.§8"?§.§2!n§)
         {
            _loc2_.§8"?§.§2!n§.§+!1§ = _loc2_.§null §;
         }
         _loc2_.§8"?§.§2!n§ = _loc2_.§null §;
         var _loc3_:b2Body = param1.§>!&§;
         var _loc4_:b2Body = param1.§^!r§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§"R§();
            while(_loc5_)
            {
               if(_loc5_.§%4§ == _loc3_)
               {
                  _loc5_.§9!G§.§'$§();
               }
               _loc5_ = _loc5_.§@!6§;
            }
         }
         return _loc2_;
      }
      
      public function §7!o§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§^!]§;
         if(param1.§#!o§)
         {
            param1.§#!o§.§+!>§ = param1.§+!>§;
         }
         if(param1.§+!>§)
         {
            param1.§+!>§.§#!o§ = param1.§#!o§;
         }
         if(param1 == this.§2!n§)
         {
            this.§2!n§ = param1.§+!>§;
         }
         var _loc3_:b2Body = param1.§8!M§;
         var _loc4_:b2Body = param1.§8"?§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§2H§.§+!1§)
         {
            param1.§2H§.§+!1§.§@!6§ = param1.§2H§.§@!6§;
         }
         if(param1.§2H§.§@!6§)
         {
            param1.§2H§.§@!6§.§+!1§ = param1.§2H§.§+!1§;
         }
         if(param1.§2H§ == _loc3_.§2!n§)
         {
            _loc3_.§2!n§ = param1.§2H§.§@!6§;
         }
         param1.§2H§.§+!1§ = null;
         param1.§2H§.§@!6§ = null;
         if(param1.§null §.§+!1§)
         {
            param1.§null §.§+!1§.§@!6§ = param1.§null §.§@!6§;
         }
         if(param1.§null §.§@!6§)
         {
            param1.§null §.§@!6§.§+!1§ = param1.§null §.§+!1§;
         }
         if(param1.§null § == _loc4_.§2!n§)
         {
            _loc4_.§2!n§ = param1.§null §.§@!6§;
         }
         param1.§null §.§+!1§ = null;
         param1.§null §.§@!6§ = null;
         b2Joint.§<!p§(param1,null);
         --this.§2y§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§"R§();
            while(_loc5_)
            {
               if(_loc5_.§%4§ == _loc3_)
               {
                  _loc5_.§9!G§.§'$§();
               }
               _loc5_ = _loc5_.§@!6§;
            }
         }
      }
      
      public function §"!o§(param1:b2Controller) : b2Controller
      {
         param1.§+!>§ = this.§+]§;
         param1.§#!o§ = null;
         this.§+]§ = param1;
         param1.m_world = this;
         ++this.§ !Y§;
         return param1;
      }
      
      public function §?!F§(param1:b2Controller) : void
      {
         if(param1.§#!o§)
         {
            param1.§#!o§.§+!>§ = param1.§+!>§;
         }
         if(param1.§+!>§)
         {
            param1.§+!>§.§#!o§ = param1.§#!o§;
         }
         if(this.§+]§ == param1)
         {
            this.§+]§ = param1.§+!>§;
         }
         --this.§ !Y§;
      }
      
      public function §8!y§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§+!>§ = this.§+]§;
         param1.§#!o§ = null;
         if(this.§+]§)
         {
            this.§+]§.§#!o§ = param1;
         }
         this.§+]§ = param1;
         ++this.§ !Y§;
         param1.m_world = this;
         return param1;
      }
      
      public function §!!&§(param1:b2Controller) : void
      {
         param1.§""G§();
         if(param1.§+!>§)
         {
            param1.§+!>§.§#!o§ = param1.§#!o§;
         }
         if(param1.§#!o§)
         {
            param1.§#!o§.§+!>§ = param1.§+!>§;
         }
         if(param1 == this.§+]§)
         {
            this.§+]§ = param1.§+!>§;
         }
         --this.§ !Y§;
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         §8N§ = param1;
      }
      
      public function §;!i§(param1:Boolean) : void
      {
         §>"=§ = param1;
      }
      
      public function §8!N§() : int
      {
         return this.§9!n§;
      }
      
      public function §4G§() : int
      {
         return this.§2y§;
      }
      
      public function §&!n§() : int
      {
         return this.§1A§;
      }
      
      public function SetGravity(param1:b2Vec2) : void
      {
         this.§<!;§ = param1;
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.§<!;§;
      }
      
      public function §-!D§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         if(this.§4C§ & §`+§)
         {
            this.§3!y§.§2!d§();
            this.§4C§ &= ~§`+§;
         }
         this.§4C§ |= § "$§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§;!!§ = param1;
         _loc4_.§6!B§ = param2;
         _loc4_.§-"'§ = param3;
         if(param1 > 0)
         {
            _loc4_.§&"=§ = 1 / param1;
         }
         else
         {
            _loc4_.§&"=§ = 0;
         }
         _loc4_.§0!`§ = this.§%!U§ * param1;
         _loc4_.§%Z§ = §8N§;
         this.§3!y§.§]!7§();
         if(_loc4_.§;!!§ > 0)
         {
            this.§][§(_loc4_);
         }
         if(§>"=§ && _loc4_.§;!!§ > 0)
         {
            this.§'s§(_loc4_);
         }
         if(_loc4_.§;!!§ > 0)
         {
            this.§%!U§ = _loc4_.§&"=§;
         }
         this.§4C§ &= ~§ "$§;
      }
      
      public function ClearForces() : void
      {
         var _loc1_:b2Body = this.§[!C§;
         while(_loc1_)
         {
            _loc1_.§5!@§.§]#§();
            _loc1_.§]"@§ = 0;
            _loc1_ = _loc1_.§+!>§;
         }
      }
      
      public function §`!b§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§,t§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§-!U§ == null)
         {
            return;
         }
         this.§-!U§.§&§.graphics.clear();
         var _loc1_:uint = this.§-!U§.§%8§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§"J§)
         {
            _loc3_ = this.§[!C§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§@!b§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§2d§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§]!§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§^![§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§]!§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§^![§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§]!§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§]!§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§]!§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§+!>§;
               }
               _loc3_ = _loc3_.§+!>§;
            }
         }
         if(_loc1_ & b2DebugDraw.§&!f§)
         {
            _loc6_ = this.§2!n§;
            while(_loc6_)
            {
               this.§'j§(_loc6_);
               _loc6_ = _loc6_.§+!>§;
            }
         }
         if(_loc1_ & b2DebugDraw.§%!1§)
         {
            _loc16_ = this.§+]§;
            while(_loc16_)
            {
               _loc16_.§@!&§(this.§-!U§);
               _loc16_ = _loc16_.§+!>§;
            }
         }
         if(_loc1_ & b2DebugDraw.§4H§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§3!y§.§7! §;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§']§();
               _loc19_ = _loc17_.§]J§();
               _loc20_ = _loc18_.§@"+§().§&y§();
               _loc21_ = _loc19_.§@"+§().§&y§();
               this.§-!U§.§2R§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§0!7§();
            }
         }
         if(_loc1_ & b2DebugDraw.§-"-§)
         {
            _loc7_ = this.§3!y§.§%C§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§[!C§;
            while(_loc3_)
            {
               if(_loc3_.§2d§() != false)
               {
                  _loc4_ = _loc3_.§@!b§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§9h§(_loc4_.§9f§);
                     _loc14_[0].Set(_loc22_.§5!v§.x,_loc22_.§5!v§.y);
                     _loc14_[1].Set(_loc22_.§4r§.x,_loc22_.§5!v§.y);
                     _loc14_[2].Set(_loc22_.§4r§.x,_loc22_.§4r§.y);
                     _loc14_[3].Set(_loc22_.§5!v§.x,_loc22_.§4r§.y);
                     this.§-!U§.§2U§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§0!7§();
                  }
               }
               _loc3_ = _loc3_.§0!7§();
            }
         }
         if(_loc1_ & b2DebugDraw.§'>§)
         {
            _loc3_ = this.§[!C§;
            while(_loc3_)
            {
               (_loc11_ = §-!,§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§-b§();
               this.§-!U§.§!c§(_loc11_);
               _loc3_ = _loc3_.§+!>§;
            }
         }
      }
      
      public function QueryAABB(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§,t§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§3!y§.§%C§;
         broadPhase.§0O§(WorldQueryWrapper,aabb);
      }
      
      public function §%!q§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§,t§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§ "B§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§[!1§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§8!X§();
         }
         broadPhase = this.§3!y§.§%C§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§0O§(WorldQueryWrapper,aabb);
      }
      
      public function §4u§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§,t§ = null;
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
         broadPhase = this.§3!y§.§%C§;
         var aabb:b2AABB = new b2AABB();
         aabb.§5!v§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§4r§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§0O§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§,t§ = null;
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
            return param1.§^!g§;
         };
         broadPhase = this.§3!y§.§%C§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §4!Y§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §?!%§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §7!z§() : b2Body
      {
         return this.§[!C§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§2!n§;
      }
      
      public function §"R§() : b2Contact
      {
         return this.§7! §;
      }
      
      public function §]!H§() : Boolean
      {
         return (this.§4C§ & § "$§) > 0;
      }
      
      b2internal function §][§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§+]§;
         while(_loc3_)
         {
            _loc3_.Step(param1);
            _loc3_ = _loc3_.§+!>§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§7!F§).§'m§(this.§9!n§,this.§1A§,this.§2y§,null,this.§3!y§.§,h§,this.§`A§);
         _loc2_ = this.§[!C§;
         while(_loc2_)
         {
            _loc2_.§4C§ &= ~b2Body.§'!§;
            _loc2_ = _loc2_.§+!>§;
         }
         var _loc5_:b2Contact = this.§7! §;
         while(_loc5_)
         {
            _loc5_.§4C§ &= ~b2Contact.§'!§;
            _loc5_ = _loc5_.§+!>§;
         }
         var _loc6_:b2Joint = this.§2!n§;
         while(_loc6_)
         {
            _loc6_.§?!t§ = false;
            _loc6_ = _loc6_.§+!>§;
         }
         var _loc7_:int = this.§9!n§;
         var _loc8_:Vector.<b2Body> = this.§!!m§;
         var _loc9_:b2Body = this.§[!C§;
         while(_loc9_)
         {
            if(!(_loc9_.§4C§ & b2Body.§'!§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§2d§() == false))
               {
                  if(_loc9_.§^![§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§""G§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§4C§ |= b2Body.§'!§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§%!F§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§^![§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§7! §;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§9!G§.§4C§ & b2Contact.§'!§))
                              {
                                 if(!(_loc13_.§9!G§.§-T§() == true || _loc13_.§9!G§.§?!'§() == false || _loc13_.§9!G§.§54§() == false))
                                 {
                                    _loc4_.§;J§(_loc13_.§9!G§);
                                    _loc13_.§9!G§.§4C§ |= b2Contact.§'!§;
                                    if(!((_loc12_ = _loc13_.§%4§).§4C§ & b2Body.§'!§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§4C§ |= b2Body.§'!§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§@!6§;
                           }
                           _loc14_ = _loc2_.§2!n§;
                           while(_loc14_)
                           {
                              if(_loc14_.§2">§.§?!t§ != true)
                              {
                                 if((_loc12_ = _loc14_.§%4§).§2d§() != false)
                                 {
                                    _loc4_.§7!]§(_loc14_.§2">§);
                                    _loc14_.§2">§.§?!t§ = true;
                                    if(!(_loc12_.§4C§ & b2Body.§'!§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§4C§ |= b2Body.§'!§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§@!6§;
                           }
                        }
                     }
                     _loc4_.§][§(param1,this.§<!;§,this.§0! §);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§9!n§)
                     {
                        _loc2_ = _loc4_.§="D§[_loc11_];
                        if(_loc2_.§^![§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§4C§ &= ~b2Body.§'!§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§+!>§;
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
         _loc2_ = this.§[!C§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§2d§() == false))
            {
               if(_loc2_.§^![§() != b2Body.b2_staticBody)
               {
                  _loc2_.§>z§();
               }
            }
            _loc2_ = _loc2_.§+!>§;
         }
         this.§3!y§.§2!d§();
      }
      
      b2internal function §'s§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§7!F§).§'m§(this.§9!n§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§3!y§.§,h§,this.§`A§);
         var _loc10_:Vector.<b2Body> = §8!!§;
         _loc2_ = this.§[!C§;
         while(_loc2_)
         {
            _loc2_.§4C§ &= ~b2Body.§'!§;
            _loc2_.m_sweep.§6!5§ = 0;
            _loc2_ = _loc2_.§+!>§;
         }
         _loc11_ = this.§7! §;
         while(_loc11_)
         {
            _loc11_.§4C§ &= ~(b2Contact.§4_§ | b2Contact.§'!§);
            _loc11_.§!f§ = 1;
            _loc11_ = _loc11_.§+!>§;
         }
         _loc8_ = this.§2!n§;
         while(_loc8_)
         {
            _loc8_.§?!t§ = false;
            _loc8_ = _loc8_.§+!>§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§7! §;
            while(_loc11_)
            {
               if(!(_loc11_.§-T§() == true || _loc11_.§?!'§() == false || _loc11_.§2"#§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§4C§ & b2Contact.§4_§)
                  {
                     _loc19_ = _loc11_.§!f§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§@!y§;
                     _loc4_ = _loc11_.§0!O§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§^![§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§^![§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr635:
                        _loc11_ = _loc11_.§+!>§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§6!5§;
                     if(_loc5_.m_sweep.§6!5§ < _loc6_.m_sweep.§6!5§)
                     {
                        _loc20_ = _loc6_.m_sweep.§6!5§;
                        _loc5_.m_sweep.§?!Y§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§6!5§ < _loc5_.m_sweep.§6!5§)
                     {
                        _loc20_ = _loc5_.m_sweep.§6!5§;
                        _loc6_.m_sweep.§?!Y§(_loc20_);
                     }
                     _loc19_ = _loc11_.§ ! §(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§!f§ = _loc19_;
                     _loc11_.§4C§ |= b2Contact.§4_§;
                     §§goto(addr635);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr635);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§@!y§;
            _loc4_ = _loc12_.§0!O§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §="C§.Set(_loc5_.m_sweep);
            §?!d§.Set(_loc6_.m_sweep);
            _loc5_.§?!Y§(_loc13_);
            _loc6_.§?!Y§(_loc13_);
            _loc12_.§["@§(this.§3!y§.§,h§);
            _loc12_.§4C§ &= ~b2Contact.§4_§;
            if(_loc12_.§-T§() == true || _loc12_.§?!'§() == false)
            {
               _loc5_.m_sweep.Set(§="C§);
               _loc6_.m_sweep.Set(§?!d§);
               _loc5_.§"t§();
               _loc6_.§"t§();
            }
            else if(_loc12_.§54§() != false)
            {
               if((_loc14_ = _loc5_).§^![§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§""G§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§4C§ |= b2Body.§'!§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§%!F§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§^![§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§7! §;
                     while(_loc7_)
                     {
                        if(_loc9_.§1A§ == _loc9_.§%P§)
                        {
                           break;
                        }
                        if(!(_loc7_.§9!G§.§4C§ & b2Contact.§'!§))
                        {
                           if(!(_loc7_.§9!G§.§-T§() == true || _loc7_.§9!G§.§?!'§() == false || _loc7_.§9!G§.§54§() == false))
                           {
                              _loc9_.§;J§(_loc7_.§9!G§);
                              _loc7_.§9!G§.§4C§ |= b2Contact.§'!§;
                              if(!((_loc22_ = _loc7_.§%4§).§4C§ & b2Body.§'!§))
                              {
                                 if(_loc22_.§^![§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§?!Y§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§4C§ |= b2Body.§'!§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§@!6§;
                     }
                     _loc21_ = _loc2_.§2!n§;
                     while(_loc21_)
                     {
                        if(_loc9_.§2y§ != _loc9_.§""D§)
                        {
                           if(_loc21_.§2">§.§?!t§ != true)
                           {
                              if((_loc22_ = _loc21_.§%4§).§2d§() != false)
                              {
                                 _loc9_.§7!]§(_loc21_.§2">§);
                                 _loc21_.§2">§.§?!t§ = true;
                                 if(!(_loc22_.§4C§ & b2Body.§'!§))
                                 {
                                    if(_loc22_.§^![§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§?!Y§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§4C§ |= b2Body.§'!§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§@!6§;
                     }
                  }
               }
               (_loc17_ = §2F§).§%Z§ = false;
               _loc17_.§;!!§ = (1 - _loc13_) * param1.§;!!§;
               _loc17_.§&"=§ = 1 / _loc17_.§;!!§;
               _loc17_.§0!`§ = 1;
               _loc17_.§6!B§ = param1.§6!B§;
               _loc17_.§-"'§ = param1.§-"'§;
               _loc9_.§'s§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§9!n§)
               {
                  _loc2_ = _loc9_.§="D§[_loc18_];
                  _loc2_.§4C§ &= ~b2Body.§'!§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§^![§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§>z§();
                        _loc7_ = _loc2_.§7! §;
                        while(_loc7_)
                        {
                           _loc7_.§9!G§.§4C§ &= ~b2Contact.§4_§;
                           _loc7_ = _loc7_.§@!6§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§1A§)
               {
                  _loc11_ = _loc9_.§#I§[_loc18_];
                  _loc11_.§4C§ &= ~(b2Contact.§4_§ | b2Contact.§'!§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§2y§)
               {
                  (_loc8_ = _loc9_.§;">§[_loc18_]).§?!t§ = false;
                  _loc18_++;
               }
               this.§3!y§.§2!d§();
            }
         }
      }
      
      b2internal function §'j§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§&H§();
         var _loc3_:b2Body = param1.§[D§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §%"'§;
         switch(param1.§9!w§)
         {
            case b2Joint.§[!Y§:
               this.§-!U§.§2R§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§1!I§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§7?§();
               _loc13_ = _loc11_.§=n§();
               this.§-!U§.§2R§(_loc12_,_loc8_,_loc10_);
               this.§-!U§.§2R§(_loc13_,_loc9_,_loc10_);
               this.§-!U§.§2R§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§]e§:
               this.§-!U§.§2R§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§-!U§.§2R§(_loc6_,_loc8_,_loc10_);
               }
               this.§-!U§.§2R§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§-!U§.§2R§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §]!§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§9!w§)
         {
            case b2Shape.§?!<§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§>">§(param2,_loc4_.§2O§);
               _loc6_ = _loc4_.§^!G§;
               _loc7_ = param2.R.col1;
               this.§-!U§.§true§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§7!D§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§>^§();
               _loc11_ = _loc9_.§1!r§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§>">§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§-!U§.§1!B§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§]!1§:
               _loc13_ = param1 as b2EdgeShape;
               this.§-!U§.§2R§(b2Math.§>">§(param2,_loc13_.GetVertex1()),b2Math.§>">§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

package §0!?§
{
   import §!O§.*;
   import §%!H§.b2Controller;
   import §%!H§.b2ControllerEdge;
   import §0!=§.*;
   import §0^§.*;
   import §8<§.*;
   import §;!U§.*;
   import §`!E§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §'f§:b2Transform = new b2Transform();
      
      private static var §0@§:b2Sweep = new b2Sweep();
      
      private static var §;!$§:b2Sweep = new b2Sweep();
      
      private static var §^r§:b2TimeStep = new b2TimeStep();
      
      private static var §#!a§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §;1§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §[N§:Boolean;
      
      private static var §`y§:Boolean;
      
      public static const §?S§:int = 1;
      
      public static const §%!0§:int = 2;
       
      
      private var §'!R§:Vector.<b2Body>;
      
      b2internal var §&W§:int;
      
      b2internal var §<!8§:b2ContactManager;
      
      private var §6;§:b2ContactSolver;
      
      private var §]!A§:b2Island;
      
      b2internal var §6y§:b2Body;
      
      private var §1=§:b2Joint;
      
      b2internal var §+!D§:b2Contact;
      
      private var §8a§:int;
      
      b2internal var §6!I§:int;
      
      private var §^;§:int;
      
      private var §<!X§:b2Controller;
      
      private var §^c§:int;
      
      private var §<W§:b2Vec2;
      
      private var §0`§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §&!R§:b2DestructionListener;
      
      private var §3!1§:b2DebugDraw;
      
      private var §^!e§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§'!R§ = new Vector.<b2Body>();
         this.§<!8§ = new b2ContactManager();
         this.§6;§ = new b2ContactSolver();
         this.§]!A§ = new b2Island();
         super();
         this.§&!R§ = null;
         this.§3!1§ = null;
         this.§6y§ = null;
         this.§+!D§ = null;
         this.§1=§ = null;
         this.§<!X§ = null;
         this.§8a§ = 0;
         this.§6!I§ = 0;
         this.§^;§ = 0;
         this.§^c§ = 0;
         §[N§ = true;
         §`y§ = true;
         this.§0`§ = param2;
         this.§<W§ = param1;
         this.§^!e§ = 0;
         this.§<!8§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§4'§(_loc3_);
      }
      
      public function §`!8§(param1:b2DestructionListener) : void
      {
         this.§&!R§ = param1;
      }
      
      public function §3%§(param1:b2ContactFilter) : void
      {
         this.§<!8§.§7!C§ = param1;
      }
      
      public function §1!`§(param1:b2ContactListener) : void
      {
         this.§<!8§.§!g§ = param1;
      }
      
      public function §'`§(param1:b2DebugDraw) : void
      {
         this.§3!1§ = param1;
      }
      
      public function §'C§(param1:§'e§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§'e§ = this.§<!8§.§;t§;
         this.§<!8§.§;t§ = param1;
         var _loc3_:b2Body = this.§6y§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§&c§;
            while(_loc4_)
            {
               _loc4_.§6&§ = param1.§<R§(_loc2_.§?]§(_loc4_.§6&§),_loc4_);
               _loc4_ = _loc4_.§=!T§;
            }
            _loc3_ = _loc3_.§=!T§;
         }
      }
      
      public function §,V§() : void
      {
         this.§<!8§.§;t§.§,V§();
      }
      
      public function §9!0§() : int
      {
         return this.§<!8§.§;t§.§9!0§();
      }
      
      public function §4'§(param1:b2BodyDef) : b2Body
      {
         if(this.§%X§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§4!_§ = null;
         _loc2_.§=!T§ = this.§6y§;
         if(this.§6y§)
         {
            this.§6y§.§4!_§ = _loc2_;
         }
         this.§6y§ = _loc2_;
         ++this.§8a§;
         return _loc2_;
      }
      
      public function §<I§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§%X§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§1=§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§^T§;
            if(this.§&!R§)
            {
               this.§&!R§.§8>§(_loc6_.§3C§);
            }
            this.§[!%§(_loc6_.§3C§);
         }
         var _loc3_:b2ControllerEdge = param1.§<!X§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§7N§;
            _loc7_.§7=§.§?1§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§+!D§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§^T§;
            this.§<!8§.§>s§(_loc8_.§<!C§);
         }
         param1.§+!D§ = null;
         var _loc5_:b2Fixture = param1.§&c§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§=!T§;
            if(this.§&!R§)
            {
               this.§&!R§.§,q§(_loc9_);
            }
            _loc9_.§'!F§(this.§<!8§.§;t§);
            _loc9_.§>s§();
         }
         param1.§&c§ = null;
         param1.§2H§ = 0;
         if(param1.§4!_§)
         {
            param1.§4!_§.§=!T§ = param1.§=!T§;
         }
         if(param1.§=!T§)
         {
            param1.§=!T§.§4!_§ = param1.§4!_§;
         }
         if(param1 == this.§6y§)
         {
            this.§6y§ = param1.§=!T§;
         }
         --this.§8a§;
      }
      
      public function §+w§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§6>§(param1,null);
         _loc2_.§4!_§ = null;
         _loc2_.§=!T§ = this.§1=§;
         if(this.§1=§)
         {
            this.§1=§.§4!_§ = _loc2_;
         }
         this.§1=§ = _loc2_;
         ++this.§^;§;
         _loc2_.§8![§.§3C§ = _loc2_;
         _loc2_.§8![§.§5d§ = _loc2_.§!N§;
         _loc2_.§8![§.§1!"§ = null;
         _loc2_.§8![§.§^T§ = _loc2_.§?2§.§1=§;
         if(_loc2_.§?2§.§1=§)
         {
            _loc2_.§?2§.§1=§.§1!"§ = _loc2_.§8![§;
         }
         _loc2_.§?2§.§1=§ = _loc2_.§8![§;
         _loc2_.§=!Q§.§3C§ = _loc2_;
         _loc2_.§=!Q§.§5d§ = _loc2_.§?2§;
         _loc2_.§=!Q§.§1!"§ = null;
         _loc2_.§=!Q§.§^T§ = _loc2_.§!N§.§1=§;
         if(_loc2_.§!N§.§1=§)
         {
            _loc2_.§!N§.§1=§.§1!"§ = _loc2_.§=!Q§;
         }
         _loc2_.§!N§.§1=§ = _loc2_.§=!Q§;
         var _loc3_:b2Body = param1.§?$§;
         var _loc4_:b2Body = param1.§%!§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§+!1§();
            while(_loc5_)
            {
               if(_loc5_.§5d§ == _loc3_)
               {
                  _loc5_.§<!C§.§#<§();
               }
               _loc5_ = _loc5_.§^T§;
            }
         }
         return _loc2_;
      }
      
      public function §[!%§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§?4§;
         if(param1.§4!_§)
         {
            param1.§4!_§.§=!T§ = param1.§=!T§;
         }
         if(param1.§=!T§)
         {
            param1.§=!T§.§4!_§ = param1.§4!_§;
         }
         if(param1 == this.§1=§)
         {
            this.§1=§ = param1.§=!T§;
         }
         var _loc3_:b2Body = param1.§?2§;
         var _loc4_:b2Body = param1.§!N§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§8![§.§1!"§)
         {
            param1.§8![§.§1!"§.§^T§ = param1.§8![§.§^T§;
         }
         if(param1.§8![§.§^T§)
         {
            param1.§8![§.§^T§.§1!"§ = param1.§8![§.§1!"§;
         }
         if(param1.§8![§ == _loc3_.§1=§)
         {
            _loc3_.§1=§ = param1.§8![§.§^T§;
         }
         param1.§8![§.§1!"§ = null;
         param1.§8![§.§^T§ = null;
         if(param1.§=!Q§.§1!"§)
         {
            param1.§=!Q§.§1!"§.§^T§ = param1.§=!Q§.§^T§;
         }
         if(param1.§=!Q§.§^T§)
         {
            param1.§=!Q§.§^T§.§1!"§ = param1.§=!Q§.§1!"§;
         }
         if(param1.§=!Q§ == _loc4_.§1=§)
         {
            _loc4_.§1=§ = param1.§=!Q§.§^T§;
         }
         param1.§=!Q§.§1!"§ = null;
         param1.§=!Q§.§^T§ = null;
         b2Joint.§>s§(param1,null);
         --this.§^;§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§+!1§();
            while(_loc5_)
            {
               if(_loc5_.§5d§ == _loc3_)
               {
                  _loc5_.§<!C§.§#<§();
               }
               _loc5_ = _loc5_.§^T§;
            }
         }
      }
      
      public function §4![§(param1:b2Controller) : b2Controller
      {
         param1.§=!T§ = this.§<!X§;
         param1.§4!_§ = null;
         this.§<!X§ = param1;
         param1.m_world = this;
         ++this.§^c§;
         return param1;
      }
      
      public function §9!$§(param1:b2Controller) : void
      {
         if(param1.§4!_§)
         {
            param1.§4!_§.§=!T§ = param1.§=!T§;
         }
         if(param1.§=!T§)
         {
            param1.§=!T§.§4!_§ = param1.§4!_§;
         }
         if(this.§<!X§ == param1)
         {
            this.§<!X§ = param1.§=!T§;
         }
         --this.§^c§;
      }
      
      public function §7!&§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§=!T§ = this.§<!X§;
         param1.§4!_§ = null;
         if(this.§<!X§)
         {
            this.§<!X§.§4!_§ = param1;
         }
         this.§<!X§ = param1;
         ++this.§^c§;
         param1.m_world = this;
         return param1;
      }
      
      public function §,#§(param1:b2Controller) : void
      {
         param1.§@!U§();
         if(param1.§=!T§)
         {
            param1.§=!T§.§4!_§ = param1.§4!_§;
         }
         if(param1.§4!_§)
         {
            param1.§4!_§.§=!T§ = param1.§=!T§;
         }
         if(param1 == this.§<!X§)
         {
            this.§<!X§ = param1.§=!T§;
         }
         --this.§^c§;
      }
      
      public function §2E§(param1:Boolean) : void
      {
         §[N§ = param1;
      }
      
      public function §4!Q§(param1:Boolean) : void
      {
         §`y§ = param1;
      }
      
      public function §^!P§() : int
      {
         return this.§8a§;
      }
      
      public function §"!8§() : int
      {
         return this.§^;§;
      }
      
      public function §!!-§() : int
      {
         return this.§6!I§;
      }
      
      public function §"E§(param1:b2Vec2) : void
      {
         this.§<W§ = param1;
      }
      
      public function §5!@§() : b2Vec2
      {
         return this.§<W§;
      }
      
      public function §1!>§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §2!"§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§&W§ & §?S§)
         {
            this.§<!8§.§%!"§();
            this.§&W§ &= ~§?S§;
         }
         this.§&W§ |= §%!0§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§<G§ = param1;
         _loc4_.§-!A§ = param2;
         _loc4_.§[S§ = param3;
         if(param1 > 0)
         {
            _loc4_.§[!F§ = 1 / param1;
         }
         else
         {
            _loc4_.§[!F§ = 0;
         }
         _loc4_.§1J§ = this.§^!e§ * param1;
         _loc4_.§7U§ = §[N§;
         this.§<!8§.§]o§();
         if(_loc4_.§<G§ > 0)
         {
            this.§@L§(_loc4_);
         }
         if(§`y§ && _loc4_.§<G§ > 0)
         {
            this.§%!e§(_loc4_);
         }
         if(_loc4_.§<G§ > 0)
         {
            this.§^!e§ = _loc4_.§[!F§;
         }
         this.§&W§ &= ~§%!0§;
      }
      
      public function §9!_§() : void
      {
         var _loc1_:b2Body = this.§6y§;
         while(_loc1_)
         {
            _loc1_.§%!3§.§0'§();
            _loc1_.§24§ = 0;
            _loc1_ = _loc1_.§=!T§;
         }
      }
      
      public function §<t§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§'e§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§3!1§ == null)
         {
            return;
         }
         this.§3!1§.§7V§.graphics.clear();
         var _loc1_:uint = this.§3!1§.§6S§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§-!>§)
         {
            _loc3_ = this.§6y§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§09§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§5!`§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§-k§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§7"§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§-k§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§7"§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§-k§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§-k§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§-k§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§=!T§;
               }
               _loc3_ = _loc3_.§=!T§;
            }
         }
         if(_loc1_ & b2DebugDraw.§"&§)
         {
            _loc6_ = this.§1=§;
            while(_loc6_)
            {
               this.§%6§(_loc6_);
               _loc6_ = _loc6_.§=!T§;
            }
         }
         if(_loc1_ & b2DebugDraw.§&!3§)
         {
            _loc16_ = this.§<!X§;
            while(_loc16_)
            {
               _loc16_.§5-§(this.§3!1§);
               _loc16_ = _loc16_.§=!T§;
            }
         }
         if(_loc1_ & b2DebugDraw.§"!K§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§<!8§.§+!D§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§!^§();
               _loc19_ = _loc17_.§"P§();
               _loc20_ = _loc18_.§="§().§"N§();
               _loc21_ = _loc19_.§="§().§"N§();
               this.§3!1§.§`!S§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§=t§();
            }
         }
         if(_loc1_ & b2DebugDraw.§`J§)
         {
            _loc7_ = this.§<!8§.§;t§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§6y§;
            while(_loc3_)
            {
               if(_loc3_.§5!`§() != false)
               {
                  _loc4_ = _loc3_.§09§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§?]§(_loc4_.§6&§);
                     _loc14_[0].Set(_loc22_.§9!^§.x,_loc22_.§9!^§.y);
                     _loc14_[1].Set(_loc22_.§ I§.x,_loc22_.§9!^§.y);
                     _loc14_[2].Set(_loc22_.§ I§.x,_loc22_.§ I§.y);
                     _loc14_[3].Set(_loc22_.§9!^§.x,_loc22_.§ I§.y);
                     this.§3!1§.§%z§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§=t§();
                  }
               }
               _loc3_ = _loc3_.§=t§();
            }
         }
         if(_loc1_ & b2DebugDraw.§^!1§)
         {
            _loc3_ = this.§6y§;
            while(_loc3_)
            {
               (_loc11_ = §'f§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§^l§();
               this.§3!1§.§-!_§(_loc11_);
               _loc3_ = _loc3_.§=!T§;
            }
         }
      }
      
      public function §<!1§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§'e§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§<!8§.§;t§;
         broadPhase.§@!I§(WorldQueryWrapper,aabb);
      }
      
      public function §"5§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§'e§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§&!?§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§6!a§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§]G§();
         }
         broadPhase = this.§<!8§.§;t§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§@!I§(WorldQueryWrapper,aabb);
      }
      
      public function § !<§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§'e§ = null;
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
         broadPhase = this.§<!8§.§;t§;
         var aabb:b2AABB = new b2AABB();
         aabb.§9!^§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§ I§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§@!I§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§'e§ = null;
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
            return param1.§^f§;
         };
         broadPhase = this.§<!8§.§;t§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §[!S§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §^b§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §8S§() : b2Body
      {
         return this.§6y§;
      }
      
      public function §>§() : b2Joint
      {
         return this.§1=§;
      }
      
      public function §+!1§() : b2Contact
      {
         return this.§+!D§;
      }
      
      public function §%X§() : Boolean
      {
         return (this.§&W§ & §%!0§) > 0;
      }
      
      b2internal function §@L§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§<!X§;
         while(_loc3_)
         {
            _loc3_.§2!"§(param1);
            _loc3_ = _loc3_.§=!T§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§]!A§).§8!6§(this.§8a§,this.§6!I§,this.§^;§,null,this.§<!8§.§!g§,this.§6;§);
         _loc2_ = this.§6y§;
         while(_loc2_)
         {
            _loc2_.§&W§ &= ~b2Body.§^n§;
            _loc2_ = _loc2_.§=!T§;
         }
         var _loc5_:b2Contact = this.§+!D§;
         while(_loc5_)
         {
            _loc5_.§&W§ &= ~b2Contact.§^n§;
            _loc5_ = _loc5_.§=!T§;
         }
         var _loc6_:b2Joint = this.§1=§;
         while(_loc6_)
         {
            _loc6_.§;_§ = false;
            _loc6_ = _loc6_.§=!T§;
         }
         var _loc7_:int = this.§8a§;
         var _loc8_:Vector.<b2Body> = this.§'!R§;
         var _loc9_:b2Body = this.§6y§;
         while(_loc9_)
         {
            if(!(_loc9_.§&W§ & b2Body.§^n§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§5!`§() == false))
               {
                  if(_loc9_.§7"§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§@!U§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§&W§ |= b2Body.§^n§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§45§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§7"§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§+!D§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§<!C§.§&W§ & b2Contact.§^n§))
                              {
                                 if(!(_loc13_.§<!C§.§5M§() == true || _loc13_.§<!C§.§ !f§() == false || _loc13_.§<!C§.§%j§() == false))
                                 {
                                    _loc4_.§2n§(_loc13_.§<!C§);
                                    _loc13_.§<!C§.§&W§ |= b2Contact.§^n§;
                                    if(!((_loc12_ = _loc13_.§5d§).§&W§ & b2Body.§^n§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§&W§ |= b2Body.§^n§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§^T§;
                           }
                           _loc14_ = _loc2_.§1=§;
                           while(_loc14_)
                           {
                              if(_loc14_.§3C§.§;_§ != true)
                              {
                                 if((_loc12_ = _loc14_.§5d§).§5!`§() != false)
                                 {
                                    _loc4_.§%J§(_loc14_.§3C§);
                                    _loc14_.§3C§.§;_§ = true;
                                    if(!(_loc12_.§&W§ & b2Body.§^n§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§&W§ |= b2Body.§^n§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§^T§;
                           }
                        }
                     }
                     _loc4_.§@L§(param1,this.§<W§,this.§0`§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§8a§)
                     {
                        _loc2_ = _loc4_.§^!3§[_loc11_];
                        if(_loc2_.§7"§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§&W§ &= ~b2Body.§^n§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§=!T§;
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
         _loc2_ = this.§6y§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§5!`§() == false))
            {
               if(_loc2_.§7"§() != b2Body.b2_staticBody)
               {
                  _loc2_.§=+§();
               }
            }
            _loc2_ = _loc2_.§=!T§;
         }
         this.§<!8§.§%!"§();
      }
      
      b2internal function §%!e§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§]!A§).§8!6§(this.§8a§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§<!8§.§!g§,this.§6;§);
         var _loc10_:Vector.<b2Body> = §#!a§;
         _loc2_ = this.§6y§;
         while(_loc2_)
         {
            _loc2_.§&W§ &= ~b2Body.§^n§;
            _loc2_.m_sweep.§5!K§ = 0;
            _loc2_ = _loc2_.§=!T§;
         }
         _loc11_ = this.§+!D§;
         while(_loc11_)
         {
            _loc11_.§&W§ &= ~(b2Contact.§<u§ | b2Contact.§^n§);
            _loc11_ = _loc11_.§=!T§;
         }
         _loc8_ = this.§1=§;
         while(_loc8_)
         {
            _loc8_.§;_§ = false;
            _loc8_ = _loc8_.§=!T§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§+!D§;
            while(_loc11_)
            {
               if(!(_loc11_.§5M§() == true || _loc11_.§ !f§() == false || _loc11_.§3l§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§&W§ & b2Contact.§<u§)
                  {
                     _loc19_ = _loc11_.§%!^§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§&'§;
                     _loc4_ = _loc11_.§[!d§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§7"§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§7"§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr639:
                        _loc11_ = _loc11_.§=!T§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§5!K§;
                     if(_loc5_.m_sweep.§5!K§ < _loc6_.m_sweep.§5!K§)
                     {
                        _loc20_ = _loc6_.m_sweep.§5!K§;
                        _loc5_.m_sweep.§<!&§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§5!K§ < _loc5_.m_sweep.§5!K§)
                     {
                        _loc20_ = _loc5_.m_sweep.§5!K§;
                        _loc6_.m_sweep.§<!&§(_loc20_);
                     }
                     _loc19_ = _loc11_.§[+§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§%!^§ = _loc19_;
                     _loc11_.§&W§ |= b2Contact.§<u§;
                     §§goto(addr639);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr639);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§&'§;
            _loc4_ = _loc12_.§[!d§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §0@§.Set(_loc5_.m_sweep);
            §;!$§.Set(_loc6_.m_sweep);
            _loc5_.§<!&§(_loc13_);
            _loc6_.§<!&§(_loc13_);
            _loc12_.§7!Q§(this.§<!8§.§!g§);
            _loc12_.§&W§ &= ~b2Contact.§<u§;
            if(_loc12_.§5M§() == true || _loc12_.§ !f§() == false)
            {
               _loc5_.m_sweep.Set(§0@§);
               _loc6_.m_sweep.Set(§;!$§);
               _loc5_.§ L§();
               _loc6_.§ L§();
            }
            else if(_loc12_.§%j§() != false)
            {
               if((_loc14_ = _loc5_).§7"§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§@!U§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§&W§ |= b2Body.§^n§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§45§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§7"§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§+!D§;
                     while(_loc7_)
                     {
                        if(_loc9_.§6!I§ == _loc9_.§^!R§)
                        {
                           break;
                        }
                        if(!(_loc7_.§<!C§.§&W§ & b2Contact.§^n§))
                        {
                           if(!(_loc7_.§<!C§.§5M§() == true || _loc7_.§<!C§.§ !f§() == false || _loc7_.§<!C§.§%j§() == false))
                           {
                              _loc9_.§2n§(_loc7_.§<!C§);
                              _loc7_.§<!C§.§&W§ |= b2Contact.§^n§;
                              if(!((_loc22_ = _loc7_.§5d§).§&W§ & b2Body.§^n§))
                              {
                                 if(_loc22_.§7"§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§<!&§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§&W§ |= b2Body.§^n§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§^T§;
                     }
                     _loc21_ = _loc2_.§1=§;
                     while(_loc21_)
                     {
                        if(_loc9_.§^;§ != _loc9_.§6!=§)
                        {
                           if(_loc21_.§3C§.§;_§ != true)
                           {
                              if((_loc22_ = _loc21_.§5d§).§5!`§() != false)
                              {
                                 _loc9_.§%J§(_loc21_.§3C§);
                                 _loc21_.§3C§.§;_§ = true;
                                 if(!(_loc22_.§&W§ & b2Body.§^n§))
                                 {
                                    if(_loc22_.§7"§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§<!&§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§&W§ |= b2Body.§^n§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§^T§;
                     }
                  }
               }
               (_loc17_ = §^r§).§7U§ = false;
               _loc17_.§<G§ = (1 - _loc13_) * param1.§<G§;
               _loc17_.§[!F§ = 1 / _loc17_.§<G§;
               _loc17_.§1J§ = 0;
               _loc17_.§-!A§ = param1.§-!A§;
               _loc17_.§[S§ = param1.§[S§;
               _loc9_.§%!e§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§8a§)
               {
                  _loc2_ = _loc9_.§^!3§[_loc18_];
                  _loc2_.§&W§ &= ~b2Body.§^n§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§7"§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§=+§();
                        _loc7_ = _loc2_.§+!D§;
                        while(_loc7_)
                        {
                           _loc7_.§<!C§.§&W§ &= ~b2Contact.§<u§;
                           _loc7_ = _loc7_.§^T§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§6!I§)
               {
                  _loc11_ = _loc9_.§,!!§[_loc18_];
                  _loc11_.§&W§ &= ~(b2Contact.§<u§ | b2Contact.§^n§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§^;§)
               {
                  (_loc8_ = _loc9_.§=!S§[_loc18_]).§;_§ = false;
                  _loc18_++;
               }
               this.§<!8§.§%!"§();
            }
         }
      }
      
      b2internal function §%6§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§0Q§();
         var _loc3_:b2Body = param1.§<o§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §;1§;
         switch(param1.§%P§)
         {
            case b2Joint.§`T§:
               this.§3!1§.§`!S§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§@e§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§#E§();
               _loc13_ = _loc11_.§!§();
               this.§3!1§.§`!S§(_loc12_,_loc8_,_loc10_);
               this.§3!1§.§`!S§(_loc13_,_loc9_,_loc10_);
               this.§3!1§.§`!S§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§<!U§:
               this.§3!1§.§`!S§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§3!1§.§`!S§(_loc6_,_loc8_,_loc10_);
               }
               this.§3!1§.§`!S§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§3!1§.§`!S§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §-k§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§%P§)
         {
            case b2Shape.§8!%§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§]!O§(param2,_loc4_.§>!D§);
               _loc6_ = _loc4_.§]!5§;
               _loc7_ = param2.R.col1;
               this.§3!1§.§%x§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§ !T§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§6@§();
               _loc11_ = _loc9_.§^!%§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§]!O§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§3!1§.§>G§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§,z§:
               _loc13_ = param1 as b2EdgeShape;
               this.§3!1§.§`!S§(b2Math.§]!O§(param2,_loc13_.GetVertex1()),b2Math.§]!O§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

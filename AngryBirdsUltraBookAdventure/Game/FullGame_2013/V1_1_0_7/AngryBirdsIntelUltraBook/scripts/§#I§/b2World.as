package §#I§
{
   import §&H§.*;
   import §2!'§.*;
   import §3b§.*;
   import §4]§.*;
   import §>!Z§.*;
   import §@!3§.*;
   import §`L§.b2Controller;
   import §`L§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var § d§:b2Transform = new b2Transform();
      
      private static var § "$§:b2Sweep = new b2Sweep();
      
      private static var §;&§:b2Sweep = new b2Sweep();
      
      private static var §+M§:b2TimeStep = new b2TimeStep();
      
      private static var §?"#§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §#6§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §!t§:Boolean;
      
      private static var §1!$§:Boolean;
      
      public static const §&r§:int = 1;
      
      public static const §"!U§:int = 2;
       
      
      private var §^!2§:Vector.<b2Body>;
      
      b2internal var §[B§:int;
      
      b2internal var §5!>§:b2ContactManager;
      
      private var §[!§:b2ContactSolver;
      
      private var §9i§:b2Island;
      
      b2internal var § set§:b2Body;
      
      private var §8!I§:b2Joint;
      
      b2internal var §0!?§:b2Contact;
      
      private var §=!t§:int;
      
      b2internal var §,l§:int;
      
      private var §9f§:int;
      
      private var §'z§:b2Controller;
      
      private var §8H§:int;
      
      private var §^""§:b2Vec2;
      
      private var §!S§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §%!Z§:b2DestructionListener;
      
      private var §4!%§:b2DebugDraw;
      
      private var §@D§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§^!2§ = new Vector.<b2Body>();
         this.§5!>§ = new b2ContactManager();
         this.§[!§ = new b2ContactSolver();
         this.§9i§ = new b2Island();
         super();
         this.§%!Z§ = null;
         this.§4!%§ = null;
         this.§ set§ = null;
         this.§0!?§ = null;
         this.§8!I§ = null;
         this.§'z§ = null;
         this.§=!t§ = 0;
         this.§,l§ = 0;
         this.§9f§ = 0;
         this.§8H§ = 0;
         §!t§ = true;
         §1!$§ = true;
         this.§!S§ = param2;
         this.§^""§ = param1;
         this.§@D§ = 0;
         this.§5!>§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§4!H§(_loc3_);
      }
      
      public function §9!p§(param1:b2DestructionListener) : void
      {
         this.§%!Z§ = param1;
      }
      
      public function §9[§(param1:b2ContactFilter) : void
      {
         this.§5!>§.§?Z§ = param1;
      }
      
      public function §?!p§(param1:b2ContactListener) : void
      {
         this.§5!>§.§;!#§ = param1;
      }
      
      public function §9#§(param1:b2DebugDraw) : void
      {
         this.§4!%§ = param1;
      }
      
      public function §,!<§(param1:§<P§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§<P§ = this.§5!>§.§,>§;
         this.§5!>§.§,>§ = param1;
         var _loc3_:b2Body = this.§ set§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§>"#§;
            while(_loc4_)
            {
               _loc4_.§8""§ = param1.§[E§(_loc2_.§8"§(_loc4_.§8""§),_loc4_);
               _loc4_ = _loc4_.§=!8§;
            }
            _loc3_ = _loc3_.§=!8§;
         }
      }
      
      public function §4!B§() : void
      {
         this.§5!>§.§,>§.§4!B§();
      }
      
      public function §^!A§() : int
      {
         return this.§5!>§.§,>§.§^!A§();
      }
      
      public function §4!H§(param1:b2BodyDef) : b2Body
      {
         if(this.§@%§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§+!3§ = null;
         _loc2_.§=!8§ = this.§ set§;
         if(this.§ set§)
         {
            this.§ set§.§+!3§ = _loc2_;
         }
         this.§ set§ = _loc2_;
         ++this.§=!t§;
         return _loc2_;
      }
      
      public function §],§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§@%§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§8!I§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§`!w§;
            if(this.§%!Z§)
            {
               this.§%!Z§.§'!P§(_loc6_.§@"!§);
            }
            this.§<!]§(_loc6_.§@"!§);
         }
         var _loc3_:b2ControllerEdge = param1.§'z§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§1p§;
            _loc7_.§ Q§.§]>§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§0!?§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§`!w§;
            this.§5!>§.§=_§(_loc8_.§8!m§);
         }
         param1.§0!?§ = null;
         var _loc5_:b2Fixture = param1.§>"#§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§=!8§;
            if(this.§%!Z§)
            {
               this.§%!Z§.§`_§(_loc9_);
            }
            _loc9_.§#i§(this.§5!>§.§,>§);
            _loc9_.§=_§();
         }
         param1.§>"#§ = null;
         param1.§9!;§ = 0;
         if(param1.§+!3§)
         {
            param1.§+!3§.§=!8§ = param1.§=!8§;
         }
         if(param1.§=!8§)
         {
            param1.§=!8§.§+!3§ = param1.§+!3§;
         }
         if(param1 == this.§ set§)
         {
            this.§ set§ = param1.§=!8§;
         }
         --this.§=!t§;
      }
      
      public function §!<§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§1!Y§(param1,null);
         _loc2_.§+!3§ = null;
         _loc2_.§=!8§ = this.§8!I§;
         if(this.§8!I§)
         {
            this.§8!I§.§+!3§ = _loc2_;
         }
         this.§8!I§ = _loc2_;
         ++this.§9f§;
         _loc2_.§2a§.§@"!§ = _loc2_;
         _loc2_.§2a§.§<!M§ = _loc2_.§4!d§;
         _loc2_.§2a§.§!!m§ = null;
         _loc2_.§2a§.§`!w§ = _loc2_.§&A§.§8!I§;
         if(_loc2_.§&A§.§8!I§)
         {
            _loc2_.§&A§.§8!I§.§!!m§ = _loc2_.§2a§;
         }
         _loc2_.§&A§.§8!I§ = _loc2_.§2a§;
         _loc2_.§]^§.§@"!§ = _loc2_;
         _loc2_.§]^§.§<!M§ = _loc2_.§&A§;
         _loc2_.§]^§.§!!m§ = null;
         _loc2_.§]^§.§`!w§ = _loc2_.§4!d§.§8!I§;
         if(_loc2_.§4!d§.§8!I§)
         {
            _loc2_.§4!d§.§8!I§.§!!m§ = _loc2_.§]^§;
         }
         _loc2_.§4!d§.§8!I§ = _loc2_.§]^§;
         var _loc3_:b2Body = param1.§19§;
         var _loc4_:b2Body = param1.§"@§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§>!3§();
            while(_loc5_)
            {
               if(_loc5_.§<!M§ == _loc3_)
               {
                  _loc5_.§8!m§.§+q§();
               }
               _loc5_ = _loc5_.§`!w§;
            }
         }
         return _loc2_;
      }
      
      public function §<!]§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§7u§;
         if(param1.§+!3§)
         {
            param1.§+!3§.§=!8§ = param1.§=!8§;
         }
         if(param1.§=!8§)
         {
            param1.§=!8§.§+!3§ = param1.§+!3§;
         }
         if(param1 == this.§8!I§)
         {
            this.§8!I§ = param1.§=!8§;
         }
         var _loc3_:b2Body = param1.§&A§;
         var _loc4_:b2Body = param1.§4!d§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§2a§.§!!m§)
         {
            param1.§2a§.§!!m§.§`!w§ = param1.§2a§.§`!w§;
         }
         if(param1.§2a§.§`!w§)
         {
            param1.§2a§.§`!w§.§!!m§ = param1.§2a§.§!!m§;
         }
         if(param1.§2a§ == _loc3_.§8!I§)
         {
            _loc3_.§8!I§ = param1.§2a§.§`!w§;
         }
         param1.§2a§.§!!m§ = null;
         param1.§2a§.§`!w§ = null;
         if(param1.§]^§.§!!m§)
         {
            param1.§]^§.§!!m§.§`!w§ = param1.§]^§.§`!w§;
         }
         if(param1.§]^§.§`!w§)
         {
            param1.§]^§.§`!w§.§!!m§ = param1.§]^§.§!!m§;
         }
         if(param1.§]^§ == _loc4_.§8!I§)
         {
            _loc4_.§8!I§ = param1.§]^§.§`!w§;
         }
         param1.§]^§.§!!m§ = null;
         param1.§]^§.§`!w§ = null;
         b2Joint.§=_§(param1,null);
         --this.§9f§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§>!3§();
            while(_loc5_)
            {
               if(_loc5_.§<!M§ == _loc3_)
               {
                  _loc5_.§8!m§.§+q§();
               }
               _loc5_ = _loc5_.§`!w§;
            }
         }
      }
      
      public function §%2§(param1:b2Controller) : b2Controller
      {
         param1.§=!8§ = this.§'z§;
         param1.§+!3§ = null;
         this.§'z§ = param1;
         param1.m_world = this;
         ++this.§8H§;
         return param1;
      }
      
      public function §<!8§(param1:b2Controller) : void
      {
         if(param1.§+!3§)
         {
            param1.§+!3§.§=!8§ = param1.§=!8§;
         }
         if(param1.§=!8§)
         {
            param1.§=!8§.§+!3§ = param1.§+!3§;
         }
         if(this.§'z§ == param1)
         {
            this.§'z§ = param1.§=!8§;
         }
         --this.§8H§;
      }
      
      public function §<!<§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§=!8§ = this.§'z§;
         param1.§+!3§ = null;
         if(this.§'z§)
         {
            this.§'z§.§+!3§ = param1;
         }
         this.§'z§ = param1;
         ++this.§8H§;
         param1.m_world = this;
         return param1;
      }
      
      public function §^u§(param1:b2Controller) : void
      {
         param1.§6!6§();
         if(param1.§=!8§)
         {
            param1.§=!8§.§+!3§ = param1.§+!3§;
         }
         if(param1.§+!3§)
         {
            param1.§+!3§.§=!8§ = param1.§=!8§;
         }
         if(param1 == this.§'z§)
         {
            this.§'z§ = param1.§=!8§;
         }
         --this.§8H§;
      }
      
      public function §7t§(param1:Boolean) : void
      {
         §!t§ = param1;
      }
      
      public function §##§(param1:Boolean) : void
      {
         §1!$§ = param1;
      }
      
      public function §=x§() : int
      {
         return this.§=!t§;
      }
      
      public function §`!;§() : int
      {
         return this.§9f§;
      }
      
      public function §&!1§() : int
      {
         return this.§,l§;
      }
      
      public function §#a§(param1:b2Vec2) : void
      {
         this.§^""§ = param1;
      }
      
      public function §!-§() : b2Vec2
      {
         return this.§^""§;
      }
      
      public function §;!p§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §8!&§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§[B§ & §&r§)
         {
            this.§5!>§.§-!V§();
            this.§[B§ &= ~§&r§;
         }
         this.§[B§ |= §"!U§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§?!C§ = param1;
         _loc4_.§7q§ = param2;
         _loc4_.§7!?§ = param3;
         if(param1 > 0)
         {
            _loc4_.§!!<§ = 1 / param1;
         }
         else
         {
            _loc4_.§!!<§ = 0;
         }
         _loc4_.§[!4§ = this.§@D§ * param1;
         _loc4_.§9!w§ = §!t§;
         this.§5!>§.§7@§();
         if(_loc4_.§?!C§ > 0)
         {
            this.§,!&§(_loc4_);
         }
         if(§1!$§ && _loc4_.§?!C§ > 0)
         {
            this.§%!@§(_loc4_);
         }
         if(_loc4_.§?!C§ > 0)
         {
            this.§@D§ = _loc4_.§!!<§;
         }
         this.§[B§ &= ~§"!U§;
      }
      
      public function §3#§() : void
      {
         var _loc1_:b2Body = this.§ set§;
         while(_loc1_)
         {
            _loc1_.§76§.§+J§();
            _loc1_.§5n§ = 0;
            _loc1_ = _loc1_.§=!8§;
         }
      }
      
      public function §["!§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§<P§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§4!%§ == null)
         {
            return;
         }
         this.§4!%§.§^D§.graphics.clear();
         var _loc1_:uint = this.§4!%§.§!!^§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§6!t§)
         {
            _loc3_ = this.§ set§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§3!C§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§?;§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§ 5§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§?;§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§ 5§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§?;§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§?;§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§?;§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§=!8§;
               }
               _loc3_ = _loc3_.§=!8§;
            }
         }
         if(_loc1_ & b2DebugDraw.§5!?§)
         {
            _loc6_ = this.§8!I§;
            while(_loc6_)
            {
               this.§0!9§(_loc6_);
               _loc6_ = _loc6_.§=!8§;
            }
         }
         if(_loc1_ & b2DebugDraw.§9,§)
         {
            _loc16_ = this.§'z§;
            while(_loc16_)
            {
               _loc16_.§3P§(this.§4!%§);
               _loc16_ = _loc16_.§=!8§;
            }
         }
         if(_loc1_ & b2DebugDraw.§0Y§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§5!>§.§0!?§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§`!a§();
               _loc19_ = _loc17_.§2!s§();
               _loc20_ = _loc18_.§<!-§().§?!b§();
               _loc21_ = _loc19_.§<!-§().§?!b§();
               this.§4!%§.§-!E§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§?!^§();
            }
         }
         if(_loc1_ & b2DebugDraw.§]U§)
         {
            _loc7_ = this.§5!>§.§,>§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§ set§;
            while(_loc3_)
            {
               if(_loc3_.§3!C§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§8"§(_loc4_.§8""§);
                     _loc14_[0].Set(_loc22_.§>h§.x,_loc22_.§>h§.y);
                     _loc14_[1].Set(_loc22_.§^!z§.x,_loc22_.§>h§.y);
                     _loc14_[2].Set(_loc22_.§^!z§.x,_loc22_.§^!z§.y);
                     _loc14_[3].Set(_loc22_.§>h§.x,_loc22_.§^!z§.y);
                     this.§4!%§.§6!s§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§?!^§();
                  }
               }
               _loc3_ = _loc3_.§?!^§();
            }
         }
         if(_loc1_ & b2DebugDraw.§]c§)
         {
            _loc3_ = this.§ set§;
            while(_loc3_)
            {
               (_loc11_ = § d§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§58§();
               this.§4!%§.§+6§(_loc11_);
               _loc3_ = _loc3_.§=!8§;
            }
         }
      }
      
      public function § b§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§<P§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§5!>§.§,>§;
         broadPhase.§ [§(WorldQueryWrapper,aabb);
      }
      
      public function §88§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§<P§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§]I§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§%J§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§3!-§();
         }
         broadPhase = this.§5!>§.§,>§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§ [§(WorldQueryWrapper,aabb);
      }
      
      public function §1S§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§<P§ = null;
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
         broadPhase = this.§5!>§.§,>§;
         var aabb:b2AABB = new b2AABB();
         aabb.§>h§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§^!z§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§ [§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§<P§ = null;
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
            return param1.§%[§;
         };
         broadPhase = this.§5!>§.§,>§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §?!!§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §"!x§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §2x§() : b2Body
      {
         return this.§ set§;
      }
      
      public function §86§() : b2Joint
      {
         return this.§8!I§;
      }
      
      public function §>!3§() : b2Contact
      {
         return this.§0!?§;
      }
      
      public function §@%§() : Boolean
      {
         return (this.§[B§ & §"!U§) > 0;
      }
      
      b2internal function §,!&§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§'z§;
         while(_loc3_)
         {
            _loc3_.§8!&§(param1);
            _loc3_ = _loc3_.§=!8§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§9i§).§`!D§(this.§=!t§,this.§,l§,this.§9f§,null,this.§5!>§.§;!#§,this.§[!§);
         _loc2_ = this.§ set§;
         while(_loc2_)
         {
            _loc2_.§[B§ &= ~b2Body.§0V§;
            _loc2_ = _loc2_.§=!8§;
         }
         var _loc5_:b2Contact = this.§0!?§;
         while(_loc5_)
         {
            _loc5_.§[B§ &= ~b2Contact.§0V§;
            _loc5_ = _loc5_.§=!8§;
         }
         var _loc6_:b2Joint = this.§8!I§;
         while(_loc6_)
         {
            _loc6_.§1v§ = false;
            _loc6_ = _loc6_.§=!8§;
         }
         var _loc7_:int = this.§=!t§;
         var _loc8_:Vector.<b2Body> = this.§^!2§;
         var _loc9_:b2Body = this.§ set§;
         while(_loc9_)
         {
            if(!(_loc9_.§[B§ & b2Body.§0V§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§3!C§() == false))
               {
                  if(_loc9_.§ 5§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§6!6§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§[B§ |= b2Body.§0V§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§`!n§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§ 5§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§0!?§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§8!m§.§[B§ & b2Contact.§0V§))
                              {
                                 if(!(_loc13_.§8!m§.§%u§() == true || _loc13_.§8!m§.§<s§() == false || _loc13_.§8!m§.§>5§() == false))
                                 {
                                    _loc4_.§4N§(_loc13_.§8!m§);
                                    _loc13_.§8!m§.§[B§ |= b2Contact.§0V§;
                                    if(!((_loc12_ = _loc13_.§<!M§).§[B§ & b2Body.§0V§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§[B§ |= b2Body.§0V§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§`!w§;
                           }
                           _loc14_ = _loc2_.§8!I§;
                           while(_loc14_)
                           {
                              if(_loc14_.§@"!§.§1v§ != true)
                              {
                                 if((_loc12_ = _loc14_.§<!M§).§3!C§() != false)
                                 {
                                    _loc4_.§8!c§(_loc14_.§@"!§);
                                    _loc14_.§@"!§.§1v§ = true;
                                    if(!(_loc12_.§[B§ & b2Body.§0V§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§[B§ |= b2Body.§0V§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§`!w§;
                           }
                        }
                     }
                     _loc4_.§,!&§(param1,this.§^""§,this.§!S§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§=!t§)
                     {
                        _loc2_ = _loc4_.§?m§[_loc11_];
                        if(_loc2_.§ 5§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§[B§ &= ~b2Body.§0V§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§=!8§;
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
         _loc2_ = this.§ set§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§3!C§() == false))
            {
               if(_loc2_.§ 5§() != b2Body.b2_staticBody)
               {
                  _loc2_.§%y§();
               }
            }
            _loc2_ = _loc2_.§=!8§;
         }
         this.§5!>§.§-!V§();
      }
      
      b2internal function §%!@§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§9i§).§`!D§(this.§=!t§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§5!>§.§;!#§,this.§[!§);
         var _loc10_:Vector.<b2Body> = §?"#§;
         _loc2_ = this.§ set§;
         while(_loc2_)
         {
            _loc2_.§[B§ &= ~b2Body.§0V§;
            _loc2_.m_sweep.§3J§ = 0;
            _loc2_ = _loc2_.§=!8§;
         }
         _loc11_ = this.§0!?§;
         while(_loc11_)
         {
            _loc11_.§[B§ &= ~(b2Contact.§[§ | b2Contact.§0V§);
            _loc11_ = _loc11_.§=!8§;
         }
         _loc8_ = this.§8!I§;
         while(_loc8_)
         {
            _loc8_.§1v§ = false;
            _loc8_ = _loc8_.§=!8§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§0!?§;
            while(_loc11_)
            {
               if(!(_loc11_.§%u§() == true || _loc11_.§<s§() == false || _loc11_.§-g§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§[B§ & b2Contact.§[§)
                  {
                     _loc19_ = _loc11_.§]H§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§]V§;
                     _loc4_ = _loc11_.§!j§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§ 5§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§ 5§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr636:
                        _loc11_ = _loc11_.§=!8§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§3J§;
                     if(_loc5_.m_sweep.§3J§ < _loc6_.m_sweep.§3J§)
                     {
                        _loc20_ = _loc6_.m_sweep.§3J§;
                        _loc5_.m_sweep.§5!4§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§3J§ < _loc5_.m_sweep.§3J§)
                     {
                        _loc20_ = _loc5_.m_sweep.§3J§;
                        _loc6_.m_sweep.§5!4§(_loc20_);
                     }
                     _loc19_ = _loc11_.§&!=§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§]H§ = _loc19_;
                     _loc11_.§[B§ |= b2Contact.§[§;
                     §§goto(addr636);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr636);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§]V§;
            _loc4_ = _loc12_.§!j§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            § "$§.Set(_loc5_.m_sweep);
            §;&§.Set(_loc6_.m_sweep);
            _loc5_.§5!4§(_loc13_);
            _loc6_.§5!4§(_loc13_);
            _loc12_.§3!r§(this.§5!>§.§;!#§);
            _loc12_.§[B§ &= ~b2Contact.§[§;
            if(_loc12_.§%u§() == true || _loc12_.§<s§() == false)
            {
               _loc5_.m_sweep.Set(§ "$§);
               _loc6_.m_sweep.Set(§;&§);
               _loc5_.§@!1§();
               _loc6_.§@!1§();
            }
            else if(_loc12_.§>5§() != false)
            {
               if((_loc14_ = _loc5_).§ 5§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§6!6§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§[B§ |= b2Body.§0V§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§`!n§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§ 5§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§0!?§;
                     while(_loc7_)
                     {
                        if(_loc9_.§,l§ == _loc9_.§6%§)
                        {
                           break;
                        }
                        if(!(_loc7_.§8!m§.§[B§ & b2Contact.§0V§))
                        {
                           if(!(_loc7_.§8!m§.§%u§() == true || _loc7_.§8!m§.§<s§() == false || _loc7_.§8!m§.§>5§() == false))
                           {
                              _loc9_.§4N§(_loc7_.§8!m§);
                              _loc7_.§8!m§.§[B§ |= b2Contact.§0V§;
                              if(!((_loc22_ = _loc7_.§<!M§).§[B§ & b2Body.§0V§))
                              {
                                 if(_loc22_.§ 5§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§5!4§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§[B§ |= b2Body.§0V§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§`!w§;
                     }
                     _loc21_ = _loc2_.§8!I§;
                     while(_loc21_)
                     {
                        if(_loc9_.§9f§ != _loc9_.§ !3§)
                        {
                           if(_loc21_.§@"!§.§1v§ != true)
                           {
                              if((_loc22_ = _loc21_.§<!M§).§3!C§() != false)
                              {
                                 _loc9_.§8!c§(_loc21_.§@"!§);
                                 _loc21_.§@"!§.§1v§ = true;
                                 if(!(_loc22_.§[B§ & b2Body.§0V§))
                                 {
                                    if(_loc22_.§ 5§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§5!4§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§[B§ |= b2Body.§0V§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§`!w§;
                     }
                  }
               }
               (_loc17_ = §+M§).§9!w§ = false;
               _loc17_.§?!C§ = (1 - _loc13_) * param1.§?!C§;
               _loc17_.§!!<§ = 1 / _loc17_.§?!C§;
               _loc17_.§[!4§ = 0;
               _loc17_.§7q§ = param1.§7q§;
               _loc17_.§7!?§ = param1.§7!?§;
               _loc9_.§%!@§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§=!t§)
               {
                  _loc2_ = _loc9_.§?m§[_loc18_];
                  _loc2_.§[B§ &= ~b2Body.§0V§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§ 5§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§%y§();
                        _loc7_ = _loc2_.§0!?§;
                        while(_loc7_)
                        {
                           _loc7_.§8!m§.§[B§ &= ~b2Contact.§[§;
                           _loc7_ = _loc7_.§`!w§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§,l§)
               {
                  _loc11_ = _loc9_.§"!V§[_loc18_];
                  _loc11_.§[B§ &= ~(b2Contact.§[§ | b2Contact.§0V§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§9f§)
               {
                  (_loc8_ = _loc9_.§"!2§[_loc18_]).§1v§ = false;
                  _loc18_++;
               }
               this.§5!>§.§-!V§();
            }
         }
      }
      
      b2internal function §0!9§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§&,§();
         var _loc3_:b2Body = param1.§<! §();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §#6§;
         switch(param1.§3r§)
         {
            case b2Joint.§8-§:
               this.§4!%§.§-!E§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§3!+§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§&!f§();
               _loc13_ = _loc11_.§?i§();
               this.§4!%§.§-!E§(_loc12_,_loc8_,_loc10_);
               this.§4!%§.§-!E§(_loc13_,_loc9_,_loc10_);
               this.§4!%§.§-!E§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§%![§:
               this.§4!%§.§-!E§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§4!%§.§-!E§(_loc6_,_loc8_,_loc10_);
               }
               this.§4!%§.§-!E§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§4!%§.§-!E§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §?;§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§3r§)
         {
            case b2Shape.§^!6§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§%!r§(param2,_loc4_.§`3§);
               _loc6_ = _loc4_.§ !c§;
               _loc7_ = param2.R.col1;
               this.§4!%§.§ !z§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§=&§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§!G§();
               _loc11_ = _loc9_.§1!l§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§%!r§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§4!%§.§#b§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§=n§:
               _loc13_ = param1 as b2EdgeShape;
               this.§4!%§.§-!E§(b2Math.§%!r§(param2,_loc13_.GetVertex1()),b2Math.§%!r§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

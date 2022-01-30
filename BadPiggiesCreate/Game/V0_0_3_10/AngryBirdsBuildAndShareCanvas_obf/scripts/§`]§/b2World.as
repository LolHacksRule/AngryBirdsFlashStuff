package §`]§
{
   import §!S§.*;
   import §"!t§.b2Controller;
   import §"!t§.b2ControllerEdge;
   import §1!1§.*;
   import §2!+§.*;
   import §6U§.*;
   import §?!h§.*;
   import §^!2§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §;#§:b2Transform = new b2Transform();
      
      private static var §]!b§:b2Sweep = new b2Sweep();
      
      private static var §9k§:b2Sweep = new b2Sweep();
      
      private static var §'x§:b2TimeStep = new b2TimeStep();
      
      private static var §0!r§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §9"9§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §=!Z§:Boolean;
      
      private static var §+!x§:Boolean;
      
      public static const §`v§:int = 1;
      
      public static const §&!4§:int = 2;
       
      
      private var §9!D§:Vector.<b2Body>;
      
      b2internal var §3u§:int;
      
      b2internal var §8e§:b2ContactManager;
      
      private var §&9§:b2ContactSolver;
      
      private var §-$§:b2Island;
      
      b2internal var §44§:b2Body;
      
      private var §[!_§:b2Joint;
      
      b2internal var §<",§:b2Contact;
      
      private var §5K§:int;
      
      b2internal var §`!&§:int;
      
      private var §=!>§:int;
      
      private var §1!3§:b2Controller;
      
      private var §2&§:int;
      
      private var §&%§:b2Vec2;
      
      private var §#!P§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §5!U§:b2DestructionListener;
      
      private var §>!?§:b2DebugDraw;
      
      private var §7!_§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§9!D§ = new Vector.<b2Body>();
         this.§8e§ = new b2ContactManager();
         this.§&9§ = new b2ContactSolver();
         this.§-$§ = new b2Island();
         super();
         this.§5!U§ = null;
         this.§>!?§ = null;
         this.§44§ = null;
         this.§<",§ = null;
         this.§[!_§ = null;
         this.§1!3§ = null;
         this.§5K§ = 0;
         this.§`!&§ = 0;
         this.§=!>§ = 0;
         this.§2&§ = 0;
         §=!Z§ = true;
         §+!x§ = true;
         this.§#!P§ = param2;
         this.§&%§ = param1;
         this.§7!_§ = 0;
         this.§8e§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§%[§(_loc3_);
      }
      
      public function §8"6§(param1:b2DestructionListener) : void
      {
         this.§5!U§ = param1;
      }
      
      public function §[;§(param1:b2ContactFilter) : void
      {
         this.§8e§.§="+§ = param1;
      }
      
      public function §4!P§(param1:b2ContactListener) : void
      {
         this.§8e§.§ var§ = param1;
      }
      
      public function §4x§(param1:b2DebugDraw) : void
      {
         this.§>!?§ = param1;
      }
      
      public function §4'§(param1:§0!6§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§0!6§ = this.§8e§.§`o§;
         this.§8e§.§`o§ = param1;
         var _loc3_:b2Body = this.§44§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§7!g§;
            while(_loc4_)
            {
               _loc4_.§6!b§ = param1.§6!2§(_loc2_.§,&§(_loc4_.§6!b§),_loc4_);
               _loc4_ = _loc4_.§7<§;
            }
            _loc3_ = _loc3_.§7<§;
         }
      }
      
      public function §-c§() : void
      {
         this.§8e§.§`o§.§-c§();
      }
      
      public function §=!w§() : int
      {
         return this.§8e§.§`o§.§=!w§();
      }
      
      public function §%[§(param1:b2BodyDef) : b2Body
      {
         if(this.§"!_§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§0"+§ = null;
         _loc2_.§7<§ = this.§44§;
         if(this.§44§)
         {
            this.§44§.§0"+§ = _loc2_;
         }
         this.§44§ = _loc2_;
         ++this.§5K§;
         return _loc2_;
      }
      
      public function §3<§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§"!_§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§[!_§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§4!e§;
            if(this.§5!U§)
            {
               this.§5!U§.§2!=§(_loc6_.§5!z§);
            }
            this.§?!-§(_loc6_.§5!z§);
         }
         var _loc3_:b2ControllerEdge = param1.§1!3§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§68§;
            _loc7_.§ !o§.§!!#§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§<",§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§4!e§;
            this.§8e§.§=!!§(_loc8_.§!B§);
         }
         param1.§<",§ = null;
         var _loc5_:b2Fixture = param1.§7!g§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§7<§;
            if(this.§5!U§)
            {
               this.§5!U§.§;!O§(_loc9_);
            }
            _loc9_.§"!T§(this.§8e§.§`o§);
            _loc9_.§=!!§();
         }
         param1.§7!g§ = null;
         param1.§%!;§ = 0;
         if(param1.§0"+§)
         {
            param1.§0"+§.§7<§ = param1.§7<§;
         }
         if(param1.§7<§)
         {
            param1.§7<§.§0"+§ = param1.§0"+§;
         }
         if(param1 == this.§44§)
         {
            this.§44§ = param1.§7<§;
         }
         --this.§5K§;
      }
      
      public function §^!y§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§6t§(param1,null);
         _loc2_.§0"+§ = null;
         _loc2_.§7<§ = this.§[!_§;
         if(this.§[!_§)
         {
            this.§[!_§.§0"+§ = _loc2_;
         }
         this.§[!_§ = _loc2_;
         ++this.§=!>§;
         _loc2_.§2!O§.§5!z§ = _loc2_;
         _loc2_.§2!O§.§47§ = _loc2_.§?!&§;
         _loc2_.§2!O§.§8!U§ = null;
         _loc2_.§2!O§.§4!e§ = _loc2_.§5'§.§[!_§;
         if(_loc2_.§5'§.§[!_§)
         {
            _loc2_.§5'§.§[!_§.§8!U§ = _loc2_.§2!O§;
         }
         _loc2_.§5'§.§[!_§ = _loc2_.§2!O§;
         _loc2_.§-s§.§5!z§ = _loc2_;
         _loc2_.§-s§.§47§ = _loc2_.§5'§;
         _loc2_.§-s§.§8!U§ = null;
         _loc2_.§-s§.§4!e§ = _loc2_.§?!&§.§[!_§;
         if(_loc2_.§?!&§.§[!_§)
         {
            _loc2_.§?!&§.§[!_§.§8!U§ = _loc2_.§-s§;
         }
         _loc2_.§?!&§.§[!_§ = _loc2_.§-s§;
         var _loc3_:b2Body = param1.§`!z§;
         var _loc4_:b2Body = param1.§#!3§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§3!_§();
            while(_loc5_)
            {
               if(_loc5_.§47§ == _loc3_)
               {
                  _loc5_.§!B§.§%T§();
               }
               _loc5_ = _loc5_.§4!e§;
            }
         }
         return _loc2_;
      }
      
      public function §?!-§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§!R§;
         if(param1.§0"+§)
         {
            param1.§0"+§.§7<§ = param1.§7<§;
         }
         if(param1.§7<§)
         {
            param1.§7<§.§0"+§ = param1.§0"+§;
         }
         if(param1 == this.§[!_§)
         {
            this.§[!_§ = param1.§7<§;
         }
         var _loc3_:b2Body = param1.§5'§;
         var _loc4_:b2Body = param1.§?!&§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§2!O§.§8!U§)
         {
            param1.§2!O§.§8!U§.§4!e§ = param1.§2!O§.§4!e§;
         }
         if(param1.§2!O§.§4!e§)
         {
            param1.§2!O§.§4!e§.§8!U§ = param1.§2!O§.§8!U§;
         }
         if(param1.§2!O§ == _loc3_.§[!_§)
         {
            _loc3_.§[!_§ = param1.§2!O§.§4!e§;
         }
         param1.§2!O§.§8!U§ = null;
         param1.§2!O§.§4!e§ = null;
         if(param1.§-s§.§8!U§)
         {
            param1.§-s§.§8!U§.§4!e§ = param1.§-s§.§4!e§;
         }
         if(param1.§-s§.§4!e§)
         {
            param1.§-s§.§4!e§.§8!U§ = param1.§-s§.§8!U§;
         }
         if(param1.§-s§ == _loc4_.§[!_§)
         {
            _loc4_.§[!_§ = param1.§-s§.§4!e§;
         }
         param1.§-s§.§8!U§ = null;
         param1.§-s§.§4!e§ = null;
         b2Joint.§=!!§(param1,null);
         --this.§=!>§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§3!_§();
            while(_loc5_)
            {
               if(_loc5_.§47§ == _loc3_)
               {
                  _loc5_.§!B§.§%T§();
               }
               _loc5_ = _loc5_.§4!e§;
            }
         }
      }
      
      public function §#"6§(param1:b2Controller) : b2Controller
      {
         param1.§7<§ = this.§1!3§;
         param1.§0"+§ = null;
         this.§1!3§ = param1;
         param1.m_world = this;
         ++this.§2&§;
         return param1;
      }
      
      public function § "5§(param1:b2Controller) : void
      {
         if(param1.§0"+§)
         {
            param1.§0"+§.§7<§ = param1.§7<§;
         }
         if(param1.§7<§)
         {
            param1.§7<§.§0"+§ = param1.§0"+§;
         }
         if(this.§1!3§ == param1)
         {
            this.§1!3§ = param1.§7<§;
         }
         --this.§2&§;
      }
      
      public function §7!p§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§7<§ = this.§1!3§;
         param1.§0"+§ = null;
         if(this.§1!3§)
         {
            this.§1!3§.§0"+§ = param1;
         }
         this.§1!3§ = param1;
         ++this.§2&§;
         param1.m_world = this;
         return param1;
      }
      
      public function §3!S§(param1:b2Controller) : void
      {
         param1.§]I§();
         if(param1.§7<§)
         {
            param1.§7<§.§0"+§ = param1.§0"+§;
         }
         if(param1.§0"+§)
         {
            param1.§0"+§.§7<§ = param1.§7<§;
         }
         if(param1 == this.§1!3§)
         {
            this.§1!3§ = param1.§7<§;
         }
         --this.§2&§;
      }
      
      public function §2V§(param1:Boolean) : void
      {
         §=!Z§ = param1;
      }
      
      public function §;!S§(param1:Boolean) : void
      {
         §+!x§ = param1;
      }
      
      public function §6!,§() : int
      {
         return this.§5K§;
      }
      
      public function §`!%§() : int
      {
         return this.§=!>§;
      }
      
      public function §3!W§() : int
      {
         return this.§`!&§;
      }
      
      public function § I§(param1:b2Vec2) : void
      {
         this.§&%§ = param1;
      }
      
      public function §<"'§() : b2Vec2
      {
         return this.§&%§;
      }
      
      public function §6g§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §?!K§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§3u§ & §`v§)
         {
            this.§8e§.§'!5§();
            this.§3u§ &= ~§`v§;
         }
         this.§3u§ |= §&!4§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§7"2§ = param1;
         _loc4_.§&Y§ = param2;
         _loc4_.§,h§ = param3;
         if(param1 > 0)
         {
            _loc4_.§2"0§ = 1 / param1;
         }
         else
         {
            _loc4_.§2"0§ = 0;
         }
         _loc4_.§]"5§ = this.§7!_§ * param1;
         _loc4_.§@!-§ = §=!Z§;
         this.§8e§.§5!g§();
         if(_loc4_.§7"2§ > 0)
         {
            this.§8",§(_loc4_);
         }
         if(§+!x§ && _loc4_.§7"2§ > 0)
         {
            this.§06§(_loc4_);
         }
         if(_loc4_.§7"2§ > 0)
         {
            this.§7!_§ = _loc4_.§2"0§;
         }
         this.§3u§ &= ~§&!4§;
      }
      
      public function §6""§() : void
      {
         var _loc1_:b2Body = this.§44§;
         while(_loc1_)
         {
            _loc1_.§'%§.§+Z§();
            _loc1_.§9!j§ = 0;
            _loc1_ = _loc1_.§7<§;
         }
      }
      
      public function §&"&§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§0!6§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§>!?§ == null)
         {
            return;
         }
         this.§>!?§.§2!7§.graphics.clear();
         var _loc1_:uint = this.§>!?§.§6v§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§<!!§)
         {
            _loc3_ = this.§44§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§?&§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§^w§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§+!J§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§8!d§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§+!J§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§8!d§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§+!J§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§+!J§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§+!J§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§7<§;
               }
               _loc3_ = _loc3_.§7<§;
            }
         }
         if(_loc1_ & b2DebugDraw.§'#§)
         {
            _loc6_ = this.§[!_§;
            while(_loc6_)
            {
               this.§<4§(_loc6_);
               _loc6_ = _loc6_.§7<§;
            }
         }
         if(_loc1_ & b2DebugDraw.§#!p§)
         {
            _loc16_ = this.§1!3§;
            while(_loc16_)
            {
               _loc16_.§6#§(this.§>!?§);
               _loc16_ = _loc16_.§7<§;
            }
         }
         if(_loc1_ & b2DebugDraw.§3i§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§8e§.§<",§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§1'§();
               _loc19_ = _loc17_.§?"-§();
               _loc20_ = _loc18_.§`"&§().§7X§();
               _loc21_ = _loc19_.§`"&§().§7X§();
               this.§>!?§.§8!P§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§&!=§();
            }
         }
         if(_loc1_ & b2DebugDraw.§5!R§)
         {
            _loc7_ = this.§8e§.§`o§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§44§;
            while(_loc3_)
            {
               if(_loc3_.§^w§() != false)
               {
                  _loc4_ = _loc3_.§?&§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§,&§(_loc4_.§6!b§);
                     _loc14_[0].Set(_loc22_.§=!8§.x,_loc22_.§=!8§.y);
                     _loc14_[1].Set(_loc22_.§28§.x,_loc22_.§=!8§.y);
                     _loc14_[2].Set(_loc22_.§28§.x,_loc22_.§28§.y);
                     _loc14_[3].Set(_loc22_.§=!8§.x,_loc22_.§28§.y);
                     this.§>!?§.§1N§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§&!=§();
                  }
               }
               _loc3_ = _loc3_.§&!=§();
            }
         }
         if(_loc1_ & b2DebugDraw.§5!!§)
         {
            _loc3_ = this.§44§;
            while(_loc3_)
            {
               (_loc11_ = §;#§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§^§();
               this.§>!?§.§6!T§(_loc11_);
               _loc3_ = _loc3_.§7<§;
            }
         }
      }
      
      public function §4+§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§0!6§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§8e§.§`o§;
         broadPhase.§0!c§(WorldQueryWrapper,aabb);
      }
      
      public function § Y§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§0!6§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§;!p§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§!!f§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§'U§();
         }
         broadPhase = this.§8e§.§`o§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§0!c§(WorldQueryWrapper,aabb);
      }
      
      public function §=!n§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§0!6§ = null;
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
         broadPhase = this.§8e§.§`o§;
         var aabb:b2AABB = new b2AABB();
         aabb.§=!8§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§28§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§0!c§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§0!6§ = null;
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
            return param1.§1>§;
         };
         broadPhase = this.§8e§.§`o§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §'"§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §0!T§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §5?§() : b2Body
      {
         return this.§44§;
      }
      
      public function §=+§() : b2Joint
      {
         return this.§[!_§;
      }
      
      public function §3!_§() : b2Contact
      {
         return this.§<",§;
      }
      
      public function §"!_§() : Boolean
      {
         return (this.§3u§ & §&!4§) > 0;
      }
      
      b2internal function §8",§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§1!3§;
         while(_loc3_)
         {
            _loc3_.§?!K§(param1);
            _loc3_ = _loc3_.§7<§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§-$§).§6"8§(this.§5K§,this.§`!&§,this.§=!>§,null,this.§8e§.§ var§,this.§&9§);
         _loc2_ = this.§44§;
         while(_loc2_)
         {
            _loc2_.§3u§ &= ~b2Body.§7!u§;
            _loc2_ = _loc2_.§7<§;
         }
         var _loc5_:b2Contact = this.§<",§;
         while(_loc5_)
         {
            _loc5_.§3u§ &= ~b2Contact.§7!u§;
            _loc5_ = _loc5_.§7<§;
         }
         var _loc6_:b2Joint = this.§[!_§;
         while(_loc6_)
         {
            _loc6_.§`f§ = false;
            _loc6_ = _loc6_.§7<§;
         }
         var _loc7_:int = this.§5K§;
         var _loc8_:Vector.<b2Body> = this.§9!D§;
         var _loc9_:b2Body = this.§44§;
         while(_loc9_)
         {
            if(!(_loc9_.§3u§ & b2Body.§7!u§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§^w§() == false))
               {
                  if(_loc9_.§8!d§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§]I§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§3u§ |= b2Body.§7!u§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§0z§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§8!d§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§<",§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§!B§.§3u§ & b2Contact.§7!u§))
                              {
                                 if(!(_loc13_.§!B§.§#!m§() == true || _loc13_.§!B§.§^!v§() == false || _loc13_.§!B§.§-"9§() == false))
                                 {
                                    _loc4_.§#!B§(_loc13_.§!B§);
                                    _loc13_.§!B§.§3u§ |= b2Contact.§7!u§;
                                    if(!((_loc12_ = _loc13_.§47§).§3u§ & b2Body.§7!u§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§3u§ |= b2Body.§7!u§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§4!e§;
                           }
                           _loc14_ = _loc2_.§[!_§;
                           while(_loc14_)
                           {
                              if(_loc14_.§5!z§.§`f§ != true)
                              {
                                 if((_loc12_ = _loc14_.§47§).§^w§() != false)
                                 {
                                    _loc4_.§'b§(_loc14_.§5!z§);
                                    _loc14_.§5!z§.§`f§ = true;
                                    if(!(_loc12_.§3u§ & b2Body.§7!u§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§3u§ |= b2Body.§7!u§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§4!e§;
                           }
                        }
                     }
                     _loc4_.§8",§(param1,this.§&%§,this.§#!P§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§5K§)
                     {
                        _loc2_ = _loc4_.§>!3§[_loc11_];
                        if(_loc2_.§8!d§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§3u§ &= ~b2Body.§7!u§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§7<§;
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
         _loc2_ = this.§44§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§^w§() == false))
            {
               if(_loc2_.§8!d§() != b2Body.b2_staticBody)
               {
                  _loc2_.§<"5§();
               }
            }
            _loc2_ = _loc2_.§7<§;
         }
         this.§8e§.§'!5§();
      }
      
      b2internal function §06§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§-$§).§6"8§(this.§5K§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§8e§.§ var§,this.§&9§);
         var _loc10_:Vector.<b2Body> = §0!r§;
         _loc2_ = this.§44§;
         while(_loc2_)
         {
            _loc2_.§3u§ &= ~b2Body.§7!u§;
            _loc2_.m_sweep.§^a§ = 0;
            _loc2_ = _loc2_.§7<§;
         }
         _loc11_ = this.§<",§;
         while(_loc11_)
         {
            _loc11_.§3u§ &= ~(b2Contact.§-!M§ | b2Contact.§7!u§);
            _loc11_ = _loc11_.§7<§;
         }
         _loc8_ = this.§[!_§;
         while(_loc8_)
         {
            _loc8_.§`f§ = false;
            _loc8_ = _loc8_.§7<§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§<",§;
            while(_loc11_)
            {
               if(!(_loc11_.§#!m§() == true || _loc11_.§^!v§() == false || _loc11_.§5T§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§3u§ & b2Contact.§-!M§)
                  {
                     _loc19_ = _loc11_.§]!?§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§"!1§;
                     _loc4_ = _loc11_.§5!K§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§8!d§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§8!d§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr632:
                        _loc11_ = _loc11_.§7<§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§^a§;
                     if(_loc5_.m_sweep.§^a§ < _loc6_.m_sweep.§^a§)
                     {
                        _loc20_ = _loc6_.m_sweep.§^a§;
                        _loc5_.m_sweep.§6F§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§^a§ < _loc5_.m_sweep.§^a§)
                     {
                        _loc20_ = _loc5_.m_sweep.§^a§;
                        _loc6_.m_sweep.§6F§(_loc20_);
                     }
                     _loc19_ = _loc11_.§5F§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§]!?§ = _loc19_;
                     _loc11_.§3u§ |= b2Contact.§-!M§;
                     §§goto(addr632);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr632);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§"!1§;
            _loc4_ = _loc12_.§5!K§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §]!b§.Set(_loc5_.m_sweep);
            §9k§.Set(_loc6_.m_sweep);
            _loc5_.§6F§(_loc13_);
            _loc6_.§6F§(_loc13_);
            _loc12_.§;Y§(this.§8e§.§ var§);
            _loc12_.§3u§ &= ~b2Contact.§-!M§;
            if(_loc12_.§#!m§() == true || _loc12_.§^!v§() == false)
            {
               _loc5_.m_sweep.Set(§]!b§);
               _loc6_.m_sweep.Set(§9k§);
               _loc5_.§^&§();
               _loc6_.§^&§();
            }
            else if(_loc12_.§-"9§() != false)
            {
               if((_loc14_ = _loc5_).§8!d§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§]I§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§3u§ |= b2Body.§7!u§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§0z§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§8!d§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§<",§;
                     while(_loc7_)
                     {
                        if(_loc9_.§`!&§ == _loc9_.§`"!§)
                        {
                           break;
                        }
                        if(!(_loc7_.§!B§.§3u§ & b2Contact.§7!u§))
                        {
                           if(!(_loc7_.§!B§.§#!m§() == true || _loc7_.§!B§.§^!v§() == false || _loc7_.§!B§.§-"9§() == false))
                           {
                              _loc9_.§#!B§(_loc7_.§!B§);
                              _loc7_.§!B§.§3u§ |= b2Contact.§7!u§;
                              if(!((_loc22_ = _loc7_.§47§).§3u§ & b2Body.§7!u§))
                              {
                                 if(_loc22_.§8!d§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§6F§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§3u§ |= b2Body.§7!u§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§4!e§;
                     }
                     _loc21_ = _loc2_.§[!_§;
                     while(_loc21_)
                     {
                        if(_loc9_.§=!>§ != _loc9_.§"!u§)
                        {
                           if(_loc21_.§5!z§.§`f§ != true)
                           {
                              if((_loc22_ = _loc21_.§47§).§^w§() != false)
                              {
                                 _loc9_.§'b§(_loc21_.§5!z§);
                                 _loc21_.§5!z§.§`f§ = true;
                                 if(!(_loc22_.§3u§ & b2Body.§7!u§))
                                 {
                                    if(_loc22_.§8!d§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§6F§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§3u§ |= b2Body.§7!u§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§4!e§;
                     }
                  }
               }
               (_loc17_ = §'x§).§@!-§ = false;
               _loc17_.§7"2§ = (1 - _loc13_) * param1.§7"2§;
               _loc17_.§2"0§ = 1 / _loc17_.§7"2§;
               _loc17_.§]"5§ = 0;
               _loc17_.§&Y§ = param1.§&Y§;
               _loc17_.§,h§ = param1.§,h§;
               _loc9_.§06§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§5K§)
               {
                  _loc2_ = _loc9_.§>!3§[_loc18_];
                  _loc2_.§3u§ &= ~b2Body.§7!u§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§8!d§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§<"5§();
                        _loc7_ = _loc2_.§<",§;
                        while(_loc7_)
                        {
                           _loc7_.§!B§.§3u§ &= ~b2Contact.§-!M§;
                           _loc7_ = _loc7_.§4!e§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§`!&§)
               {
                  _loc11_ = _loc9_.§%h§[_loc18_];
                  _loc11_.§3u§ &= ~(b2Contact.§-!M§ | b2Contact.§7!u§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§=!>§)
               {
                  (_loc8_ = _loc9_.§8!F§[_loc18_]).§`f§ = false;
                  _loc18_++;
               }
               this.§8e§.§'!5§();
            }
         }
      }
      
      b2internal function §<4§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§6!$§();
         var _loc3_:b2Body = param1.§=!y§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §9"9§;
         switch(param1.§""#§)
         {
            case b2Joint.§'!0§:
               this.§>!?§.§8!P§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§0!$§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§ r§();
               _loc13_ = _loc11_.§1!i§();
               this.§>!?§.§8!P§(_loc12_,_loc8_,_loc10_);
               this.§>!?§.§8!P§(_loc13_,_loc9_,_loc10_);
               this.§>!?§.§8!P§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§!!?§:
               this.§>!?§.§8!P§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§>!?§.§8!P§(_loc6_,_loc8_,_loc10_);
               }
               this.§>!?§.§8!P§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§>!?§.§8!P§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §+!J§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§""#§)
         {
            case b2Shape.§^C§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§>w§(param2,_loc4_.§]z§);
               _loc6_ = _loc4_.§'O§;
               _loc7_ = param2.R.col1;
               this.§>!?§.§<!I§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§`"6§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§"-§();
               _loc11_ = _loc9_.§>4§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§>w§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§>!?§.§,-§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§?!M§:
               _loc13_ = param1 as b2EdgeShape;
               this.§>!?§.§8!P§(b2Math.§>w§(param2,_loc13_.GetVertex1()),b2Math.§>w§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

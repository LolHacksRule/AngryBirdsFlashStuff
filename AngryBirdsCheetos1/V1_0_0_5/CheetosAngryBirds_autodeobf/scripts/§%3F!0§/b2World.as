package §?!0§
{
   import § 2§.b2Controller;
   import § 2§.b2ControllerEdge;
   import §0!2§.*;
   import §1!H§.*;
   import §3g§.*;
   import §69§.*;
   import §;]§.*;
   import §=E§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §%V§:b2Transform = new b2Transform();
      
      private static var §&!%§:b2Sweep = new b2Sweep();
      
      private static var §8G§:b2Sweep = new b2Sweep();
      
      private static var §1!,§:b2TimeStep = new b2TimeStep();
      
      private static var §7]§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §]E§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §[^§:Boolean;
      
      private static var §3!M§:Boolean;
      
      public static const §`Z§:int = 1;
      
      public static const §8$§:int = 2;
       
      
      private var §@-§:Vector.<b2Body>;
      
      b2internal var §?z§:int;
      
      b2internal var §?V§:b2ContactManager;
      
      private var § t§:b2ContactSolver;
      
      private var § !%§:b2Island;
      
      b2internal var §;+§:b2Body;
      
      private var §&!,§:b2Joint;
      
      b2internal var §>9§:b2Contact;
      
      private var § R§:int;
      
      b2internal var §3!1§:int;
      
      private var §4!D§:int;
      
      private var §>k§:b2Controller;
      
      private var §8r§:int;
      
      private var §5&§:b2Vec2;
      
      private var §7C§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §'[§:b2DestructionListener;
      
      private var §2!7§:b2DebugDraw;
      
      private var §'3§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§@-§ = new Vector.<b2Body>();
         this.§?V§ = new b2ContactManager();
         this.§ t§ = new b2ContactSolver();
         this.§ !%§ = new b2Island();
         super();
         this.§'[§ = null;
         this.§2!7§ = null;
         this.§;+§ = null;
         this.§>9§ = null;
         this.§&!,§ = null;
         this.§>k§ = null;
         this.§ R§ = 0;
         this.§3!1§ = 0;
         this.§4!D§ = 0;
         this.§8r§ = 0;
         §[^§ = true;
         §3!M§ = true;
         this.§7C§ = param2;
         this.§5&§ = param1;
         this.§'3§ = 0;
         this.§?V§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§1[§(_loc3_);
      }
      
      public function §=!Q§(param1:b2DestructionListener) : void
      {
         this.§'[§ = param1;
      }
      
      public function §[0§(param1:b2ContactFilter) : void
      {
         this.§?V§.§+o§ = param1;
      }
      
      public function §`j§(param1:b2ContactListener) : void
      {
         this.§?V§.§6!$§ = param1;
      }
      
      public function §"x§(param1:b2DebugDraw) : void
      {
         this.§2!7§ = param1;
      }
      
      public function §#f§(param1:§ G§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§ G§ = this.§?V§.§+@§;
         this.§?V§.§+@§ = param1;
         var _loc3_:b2Body = this.§;+§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§&m§;
            while(_loc4_)
            {
               _loc4_.§#2§ = param1.§+P§(_loc2_.§]!T§(_loc4_.§#2§),_loc4_);
               _loc4_ = _loc4_.§0]§;
            }
            _loc3_ = _loc3_.§0]§;
         }
      }
      
      public function §0-§() : void
      {
         this.§?V§.§+@§.§0-§();
      }
      
      public function §1X§() : int
      {
         return this.§?V§.§+@§.§1X§();
      }
      
      public function §1[§(param1:b2BodyDef) : b2Body
      {
         if(this.§!-§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§3U§ = null;
         _loc2_.§0]§ = this.§;+§;
         if(this.§;+§)
         {
            this.§;+§.§3U§ = _loc2_;
         }
         this.§;+§ = _loc2_;
         ++this.§ R§;
         return _loc2_;
      }
      
      public function §&!Y§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§!-§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§&!,§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§8L§;
            if(this.§'[§)
            {
               this.§'[§.§%!+§(_loc6_.§#y§);
            }
            this.§,!R§(_loc6_.§#y§);
         }
         var _loc3_:b2ControllerEdge = param1.§>k§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§;b§;
            _loc7_.§&#§.§3J§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§>9§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§8L§;
            this.§?V§.§4!L§(_loc8_.§^<§);
         }
         param1.§>9§ = null;
         var _loc5_:b2Fixture = param1.§&m§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§0]§;
            if(this.§'[§)
            {
               this.§'[§.§ null§(_loc9_);
            }
            _loc9_.§7=§(this.§?V§.§+@§);
            _loc9_.§4!L§();
         }
         param1.§&m§ = null;
         param1.§&!R§ = 0;
         if(param1.§3U§)
         {
            param1.§3U§.§0]§ = param1.§0]§;
         }
         if(param1.§0]§)
         {
            param1.§0]§.§3U§ = param1.§3U§;
         }
         if(param1 == this.§;+§)
         {
            this.§;+§ = param1.§0]§;
         }
         --this.§ R§;
      }
      
      public function §#!P§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§?!@§(param1,null);
         _loc2_.§3U§ = null;
         _loc2_.§0]§ = this.§&!,§;
         if(this.§&!,§)
         {
            this.§&!,§.§3U§ = _loc2_;
         }
         this.§&!,§ = _loc2_;
         ++this.§4!D§;
         _loc2_.§7s§.§#y§ = _loc2_;
         _loc2_.§7s§.§!!Y§ = _loc2_.§;B§;
         _loc2_.§7s§.§"W§ = null;
         _loc2_.§7s§.§8L§ = _loc2_.§2!D§.§&!,§;
         if(_loc2_.§2!D§.§&!,§)
         {
            _loc2_.§2!D§.§&!,§.§"W§ = _loc2_.§7s§;
         }
         _loc2_.§2!D§.§&!,§ = _loc2_.§7s§;
         _loc2_.§7!R§.§#y§ = _loc2_;
         _loc2_.§7!R§.§!!Y§ = _loc2_.§2!D§;
         _loc2_.§7!R§.§"W§ = null;
         _loc2_.§7!R§.§8L§ = _loc2_.§;B§.§&!,§;
         if(_loc2_.§;B§.§&!,§)
         {
            _loc2_.§;B§.§&!,§.§"W§ = _loc2_.§7!R§;
         }
         _loc2_.§;B§.§&!,§ = _loc2_.§7!R§;
         var _loc3_:b2Body = param1.§<§;
         var _loc4_:b2Body = param1.§,!M§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§^V§();
            while(_loc5_)
            {
               if(_loc5_.§!!Y§ == _loc3_)
               {
                  _loc5_.§^<§.§>!A§();
               }
               _loc5_ = _loc5_.§8L§;
            }
         }
         return _loc2_;
      }
      
      public function §,!R§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§"l§;
         if(param1.§3U§)
         {
            param1.§3U§.§0]§ = param1.§0]§;
         }
         if(param1.§0]§)
         {
            param1.§0]§.§3U§ = param1.§3U§;
         }
         if(param1 == this.§&!,§)
         {
            this.§&!,§ = param1.§0]§;
         }
         var _loc3_:b2Body = param1.§2!D§;
         var _loc4_:b2Body = param1.§;B§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§7s§.§"W§)
         {
            param1.§7s§.§"W§.§8L§ = param1.§7s§.§8L§;
         }
         if(param1.§7s§.§8L§)
         {
            param1.§7s§.§8L§.§"W§ = param1.§7s§.§"W§;
         }
         if(param1.§7s§ == _loc3_.§&!,§)
         {
            _loc3_.§&!,§ = param1.§7s§.§8L§;
         }
         param1.§7s§.§"W§ = null;
         param1.§7s§.§8L§ = null;
         if(param1.§7!R§.§"W§)
         {
            param1.§7!R§.§"W§.§8L§ = param1.§7!R§.§8L§;
         }
         if(param1.§7!R§.§8L§)
         {
            param1.§7!R§.§8L§.§"W§ = param1.§7!R§.§"W§;
         }
         if(param1.§7!R§ == _loc4_.§&!,§)
         {
            _loc4_.§&!,§ = param1.§7!R§.§8L§;
         }
         param1.§7!R§.§"W§ = null;
         param1.§7!R§.§8L§ = null;
         b2Joint.§4!L§(param1,null);
         --this.§4!D§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§^V§();
            while(_loc5_)
            {
               if(_loc5_.§!!Y§ == _loc3_)
               {
                  _loc5_.§^<§.§>!A§();
               }
               _loc5_ = _loc5_.§8L§;
            }
         }
      }
      
      public function §+`§(param1:b2Controller) : b2Controller
      {
         param1.§0]§ = this.§>k§;
         param1.§3U§ = null;
         this.§>k§ = param1;
         param1.m_world = this;
         ++this.§8r§;
         return param1;
      }
      
      public function §=?§(param1:b2Controller) : void
      {
         if(param1.§3U§)
         {
            param1.§3U§.§0]§ = param1.§0]§;
         }
         if(param1.§0]§)
         {
            param1.§0]§.§3U§ = param1.§3U§;
         }
         if(this.§>k§ == param1)
         {
            this.§>k§ = param1.§0]§;
         }
         --this.§8r§;
      }
      
      public function §0U§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§0]§ = this.§>k§;
         param1.§3U§ = null;
         if(this.§>k§)
         {
            this.§>k§.§3U§ = param1;
         }
         this.§>k§ = param1;
         ++this.§8r§;
         param1.m_world = this;
         return param1;
      }
      
      public function §+!E§(param1:b2Controller) : void
      {
         param1.§5!&§();
         if(param1.§0]§)
         {
            param1.§0]§.§3U§ = param1.§3U§;
         }
         if(param1.§3U§)
         {
            param1.§3U§.§0]§ = param1.§0]§;
         }
         if(param1 == this.§>k§)
         {
            this.§>k§ = param1.§0]§;
         }
         --this.§8r§;
      }
      
      public function §"b§(param1:Boolean) : void
      {
         §[^§ = param1;
      }
      
      public function §2m§(param1:Boolean) : void
      {
         §3!M§ = param1;
      }
      
      public function §<B§() : int
      {
         return this.§ R§;
      }
      
      public function §9z§() : int
      {
         return this.§4!D§;
      }
      
      public function §8f§() : int
      {
         return this.§3!1§;
      }
      
      public function §8+§(param1:b2Vec2) : void
      {
         this.§5&§ = param1;
      }
      
      public function § S§() : b2Vec2
      {
         return this.§5&§;
      }
      
      public function §8Q§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §%;§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§?z§ & §`Z§)
         {
            this.§?V§.§,Q§();
            this.§?z§ &= ~§`Z§;
         }
         this.§?z§ |= §8$§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§7?§ = param1;
         _loc4_.§#b§ = param2;
         _loc4_.§-!>§ = param3;
         if(param1 > 0)
         {
            _loc4_.§%G§ = 1 / param1;
         }
         else
         {
            _loc4_.§%G§ = 0;
         }
         _loc4_.§5!B§ = this.§'3§ * param1;
         _loc4_.§<W§ = §[^§;
         this.§?V§.§ b§();
         if(_loc4_.§7?§ > 0)
         {
            this.§]!7§(_loc4_);
         }
         if(§3!M§ && _loc4_.§7?§ > 0)
         {
            this.§;w§(_loc4_);
         }
         if(_loc4_.§7?§ > 0)
         {
            this.§'3§ = _loc4_.§%G§;
         }
         this.§?z§ &= ~§8$§;
      }
      
      public function §1^§() : void
      {
         var _loc1_:b2Body = this.§;+§;
         while(_loc1_)
         {
            _loc1_.§%=§.§^!#§();
            _loc1_.§-U§ = 0;
            _loc1_ = _loc1_.§0]§;
         }
      }
      
      public function §6b§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§ G§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§2!7§ == null)
         {
            return;
         }
         this.§2!7§.§&!H§.graphics.clear();
         var _loc1_:uint = this.§2!7§.§for §();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§-!=§)
         {
            _loc3_ = this.§;+§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§`A§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§7"§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§0`§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§0!$§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§0`§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§0!$§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§0`§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§0`§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§0`§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§0]§;
               }
               _loc3_ = _loc3_.§0]§;
            }
         }
         if(_loc1_ & b2DebugDraw.§3Q§)
         {
            _loc6_ = this.§&!,§;
            while(_loc6_)
            {
               this.§%d§(_loc6_);
               _loc6_ = _loc6_.§0]§;
            }
         }
         if(_loc1_ & b2DebugDraw.§`!1§)
         {
            _loc16_ = this.§>k§;
            while(_loc16_)
            {
               _loc16_.§<!P§(this.§2!7§);
               _loc16_ = _loc16_.§0]§;
            }
         }
         if(_loc1_ & b2DebugDraw.§ Y§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§?V§.§>9§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§"&§();
               _loc19_ = _loc17_.§7!Z§();
               _loc20_ = _loc18_.§3-§().§`!8§();
               _loc21_ = _loc19_.§3-§().§`!8§();
               this.§2!7§.§^2§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§`!R§();
            }
         }
         if(_loc1_ & b2DebugDraw.§5h§)
         {
            _loc7_ = this.§?V§.§+@§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§;+§;
            while(_loc3_)
            {
               if(_loc3_.§7"§() != false)
               {
                  _loc4_ = _loc3_.§`A§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§]!T§(_loc4_.§#2§);
                     _loc14_[0].Set(_loc22_.§]!6§.x,_loc22_.§]!6§.y);
                     _loc14_[1].Set(_loc22_.§ 1§.x,_loc22_.§]!6§.y);
                     _loc14_[2].Set(_loc22_.§ 1§.x,_loc22_.§ 1§.y);
                     _loc14_[3].Set(_loc22_.§]!6§.x,_loc22_.§ 1§.y);
                     this.§2!7§.§6#§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§`!R§();
                  }
               }
               _loc3_ = _loc3_.§`!R§();
            }
         }
         if(_loc1_ & b2DebugDraw.§&I§)
         {
            _loc3_ = this.§;+§;
            while(_loc3_)
            {
               (_loc11_ = §%V§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§!j§();
               this.§2!7§.§0C§(_loc11_);
               _loc3_ = _loc3_.§0]§;
            }
         }
      }
      
      public function §?5§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§ G§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§?V§.§+@§;
         broadPhase.§,!<§(WorldQueryWrapper,aabb);
      }
      
      public function §+!P§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§ G§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§=!W§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§ T§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§;q§();
         }
         broadPhase = this.§?V§.§+@§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§,!<§(WorldQueryWrapper,aabb);
      }
      
      public function §6T§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§ G§ = null;
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
         broadPhase = this.§?V§.§+@§;
         var aabb:b2AABB = new b2AABB();
         aabb.§]!6§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§ 1§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§,!<§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§ G§ = null;
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
            return param1.§,e§;
         };
         broadPhase = this.§?V§.§+@§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §0!3§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §]1§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §4!@§() : b2Body
      {
         return this.§;+§;
      }
      
      public function §3E§() : b2Joint
      {
         return this.§&!,§;
      }
      
      public function §^V§() : b2Contact
      {
         return this.§>9§;
      }
      
      public function §!-§() : Boolean
      {
         return (this.§?z§ & §8$§) > 0;
      }
      
      b2internal function §]!7§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§>k§;
         while(_loc3_)
         {
            _loc3_.§%;§(param1);
            _loc3_ = _loc3_.§0]§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§ !%§).§1D§(this.§ R§,this.§3!1§,this.§4!D§,null,this.§?V§.§6!$§,this.§ t§);
         _loc2_ = this.§;+§;
         while(_loc2_)
         {
            _loc2_.§?z§ &= ~b2Body.§"!X§;
            _loc2_ = _loc2_.§0]§;
         }
         var _loc5_:b2Contact = this.§>9§;
         while(_loc5_)
         {
            _loc5_.§?z§ &= ~b2Contact.§"!X§;
            _loc5_ = _loc5_.§0]§;
         }
         var _loc6_:b2Joint = this.§&!,§;
         while(_loc6_)
         {
            _loc6_.§!#§ = false;
            _loc6_ = _loc6_.§0]§;
         }
         var _loc7_:int = this.§ R§;
         var _loc8_:Vector.<b2Body> = this.§@-§;
         var _loc9_:b2Body = this.§;+§;
         while(_loc9_)
         {
            if(!(_loc9_.§?z§ & b2Body.§"!X§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§7"§() == false))
               {
                  if(_loc9_.§0!$§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§5!&§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§?z§ |= b2Body.§"!X§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§2!9§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§0!$§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§>9§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§^<§.§?z§ & b2Contact.§"!X§))
                              {
                                 if(!(_loc13_.§^<§.§2'§() == true || _loc13_.§^<§.§!C§() == false || _loc13_.§^<§.§ !I§() == false))
                                 {
                                    _loc4_.§1! §(_loc13_.§^<§);
                                    _loc13_.§^<§.§?z§ |= b2Contact.§"!X§;
                                    if(!((_loc12_ = _loc13_.§!!Y§).§?z§ & b2Body.§"!X§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§?z§ |= b2Body.§"!X§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§8L§;
                           }
                           _loc14_ = _loc2_.§&!,§;
                           while(_loc14_)
                           {
                              if(_loc14_.§#y§.§!#§ != true)
                              {
                                 if((_loc12_ = _loc14_.§!!Y§).§7"§() != false)
                                 {
                                    _loc4_.§-!R§(_loc14_.§#y§);
                                    _loc14_.§#y§.§!#§ = true;
                                    if(!(_loc12_.§?z§ & b2Body.§"!X§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§?z§ |= b2Body.§"!X§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§8L§;
                           }
                        }
                     }
                     _loc4_.§]!7§(param1,this.§5&§,this.§7C§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§ R§)
                     {
                        _loc2_ = _loc4_.§+4§[_loc11_];
                        if(_loc2_.§0!$§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§?z§ &= ~b2Body.§"!X§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§0]§;
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
         _loc2_ = this.§;+§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§7"§() == false))
            {
               if(_loc2_.§0!$§() != b2Body.b2_staticBody)
               {
                  _loc2_.§4@§();
               }
            }
            _loc2_ = _loc2_.§0]§;
         }
         this.§?V§.§,Q§();
      }
      
      b2internal function §;w§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§ !%§).§1D§(this.§ R§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§?V§.§6!$§,this.§ t§);
         var _loc10_:Vector.<b2Body> = §7]§;
         _loc2_ = this.§;+§;
         while(_loc2_)
         {
            _loc2_.§?z§ &= ~b2Body.§"!X§;
            _loc2_.m_sweep.§[d§ = 0;
            _loc2_ = _loc2_.§0]§;
         }
         _loc11_ = this.§>9§;
         while(_loc11_)
         {
            _loc11_.§?z§ &= ~(b2Contact.§0N§ | b2Contact.§"!X§);
            _loc11_ = _loc11_.§0]§;
         }
         _loc8_ = this.§&!,§;
         while(_loc8_)
         {
            _loc8_.§!#§ = false;
            _loc8_ = _loc8_.§0]§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§>9§;
            while(_loc11_)
            {
               if(!(_loc11_.§2'§() == true || _loc11_.§!C§() == false || _loc11_.§[!X§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§?z§ & b2Contact.§0N§)
                  {
                     _loc19_ = _loc11_.§3!8§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§<D§;
                     _loc4_ = _loc11_.§+p§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§0!$§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§0!$§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr595:
                        _loc11_ = _loc11_.§0]§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§[d§;
                     if(_loc5_.m_sweep.§[d§ < _loc6_.m_sweep.§[d§)
                     {
                        _loc20_ = _loc6_.m_sweep.§[d§;
                        _loc5_.m_sweep.§>B§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§[d§ < _loc5_.m_sweep.§[d§)
                     {
                        _loc20_ = _loc5_.m_sweep.§[d§;
                        _loc6_.m_sweep.§>B§(_loc20_);
                     }
                     _loc19_ = _loc11_.§,"§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§3!8§ = _loc19_;
                     _loc11_.§?z§ |= b2Contact.§0N§;
                     §§goto(addr595);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr595);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§<D§;
            _loc4_ = _loc12_.§+p§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §&!%§.Set(_loc5_.m_sweep);
            §8G§.Set(_loc6_.m_sweep);
            _loc5_.§>B§(_loc13_);
            _loc6_.§>B§(_loc13_);
            _loc12_.§8!C§(this.§?V§.§6!$§);
            _loc12_.§?z§ &= ~b2Contact.§0N§;
            if(_loc12_.§2'§() == true || _loc12_.§!C§() == false)
            {
               _loc5_.m_sweep.Set(§&!%§);
               _loc6_.m_sweep.Set(§8G§);
               _loc5_.§-D§();
               _loc6_.§-D§();
            }
            else if(_loc12_.§ !I§() != false)
            {
               if((_loc14_ = _loc5_).§0!$§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§5!&§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§?z§ |= b2Body.§"!X§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§2!9§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§0!$§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§>9§;
                     while(_loc7_)
                     {
                        if(_loc9_.§3!1§ == _loc9_.§`n§)
                        {
                           break;
                        }
                        if(!(_loc7_.§^<§.§?z§ & b2Contact.§"!X§))
                        {
                           if(!(_loc7_.§^<§.§2'§() == true || _loc7_.§^<§.§!C§() == false || _loc7_.§^<§.§ !I§() == false))
                           {
                              _loc9_.§1! §(_loc7_.§^<§);
                              _loc7_.§^<§.§?z§ |= b2Contact.§"!X§;
                              if(!((_loc22_ = _loc7_.§!!Y§).§?z§ & b2Body.§"!X§))
                              {
                                 if(_loc22_.§0!$§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§>B§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§?z§ |= b2Body.§"!X§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§8L§;
                     }
                     _loc21_ = _loc2_.§&!,§;
                     while(_loc21_)
                     {
                        if(_loc9_.§4!D§ != _loc9_.§%!P§)
                        {
                           if(_loc21_.§#y§.§!#§ != true)
                           {
                              if((_loc22_ = _loc21_.§!!Y§).§7"§() != false)
                              {
                                 _loc9_.§-!R§(_loc21_.§#y§);
                                 _loc21_.§#y§.§!#§ = true;
                                 if(!(_loc22_.§?z§ & b2Body.§"!X§))
                                 {
                                    if(_loc22_.§0!$§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§>B§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§?z§ |= b2Body.§"!X§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§8L§;
                     }
                  }
               }
               (_loc17_ = §1!,§).§<W§ = false;
               _loc17_.§7?§ = (1 - _loc13_) * param1.§7?§;
               _loc17_.§%G§ = 1 / _loc17_.§7?§;
               _loc17_.§5!B§ = 0;
               _loc17_.§#b§ = param1.§#b§;
               _loc17_.§-!>§ = param1.§-!>§;
               _loc9_.§;w§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§ R§)
               {
                  _loc2_ = _loc9_.§+4§[_loc18_];
                  _loc2_.§?z§ &= ~b2Body.§"!X§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§0!$§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§4@§();
                        _loc7_ = _loc2_.§>9§;
                        while(_loc7_)
                        {
                           _loc7_.§^<§.§?z§ &= ~b2Contact.§0N§;
                           _loc7_ = _loc7_.§8L§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§3!1§)
               {
                  _loc11_ = _loc9_.§!D§[_loc18_];
                  _loc11_.§?z§ &= ~(b2Contact.§0N§ | b2Contact.§"!X§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§4!D§)
               {
                  (_loc8_ = _loc9_.§"V§[_loc18_]).§!#§ = false;
                  _loc18_++;
               }
               this.§?V§.§,Q§();
            }
         }
      }
      
      b2internal function §%d§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§,y§();
         var _loc3_:b2Body = param1.§%!3§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §]E§;
         switch(param1.§3c§)
         {
            case b2Joint.§-!§:
               this.§2!7§.§^2§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§+!2§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§4!5§();
               _loc13_ = _loc11_.§9F§();
               this.§2!7§.§^2§(_loc12_,_loc8_,_loc10_);
               this.§2!7§.§^2§(_loc13_,_loc9_,_loc10_);
               this.§2!7§.§^2§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§-!2§:
               this.§2!7§.§^2§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§2!7§.§^2§(_loc6_,_loc8_,_loc10_);
               }
               this.§2!7§.§^2§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§2!7§.§^2§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §0`§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§3c§)
         {
            case b2Shape.§8;§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§1!F§(param2,_loc4_.§>w§);
               _loc6_ = _loc4_.§-!C§;
               _loc7_ = param2.R.col1;
               this.§2!7§.§&!!§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§9!T§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§!;§();
               _loc11_ = _loc9_.§>!2§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§1!F§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§2!7§.§7b§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§;!5§:
               _loc13_ = param1 as b2EdgeShape;
               this.§2!7§.§^2§(b2Math.§1!F§(param2,_loc13_.GetVertex1()),b2Math.§1!F§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

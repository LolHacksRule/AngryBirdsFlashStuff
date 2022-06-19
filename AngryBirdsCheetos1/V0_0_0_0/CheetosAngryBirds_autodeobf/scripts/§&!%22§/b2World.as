package §&!"§
{
   import § G§.*;
   import §+I§.b2Controller;
   import §+I§.b2ControllerEdge;
   import §-!C§.*;
   import §3g§.*;
   import §69§.*;
   import §9"§.*;
   import §>!@§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §&!%§:b2Transform = new b2Transform();
      
      private static var §8G§:b2Sweep = new b2Sweep();
      
      private static var §1!,§:b2Sweep = new b2Sweep();
      
      private static var §7]§:b2TimeStep = new b2TimeStep();
      
      private static var §]E§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §[^§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §3!M§:Boolean;
      
      private static var §`Z§:Boolean;
      
      public static const §8$§:int = 1;
      
      public static const §-K§:int = 2;
       
      
      private var §;w§:Vector.<b2Body>;
      
      b2internal var §?z§:int;
      
      b2internal var § t§:b2ContactManager;
      
      private var § !%§:b2ContactSolver;
      
      private var §&!,§:b2Island;
      
      b2internal var § R§:b2Body;
      
      private var §>9§:b2Joint;
      
      b2internal var §3!1§:b2Contact;
      
      private var §-!N§:int;
      
      b2internal var §4!D§:int;
      
      private var §>k§:int;
      
      private var §8r§:b2Controller;
      
      private var §5&§:int;
      
      private var §7C§:b2Vec2;
      
      private var §'[§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §2!7§:b2DestructionListener;
      
      private var §'3§:b2DebugDraw;
      
      private var §%V§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§;w§ = new Vector.<b2Body>();
         this.§ t§ = new b2ContactManager();
         this.§ !%§ = new b2ContactSolver();
         this.§&!,§ = new b2Island();
         super();
         this.§2!7§ = null;
         this.§'3§ = null;
         this.§ R§ = null;
         this.§3!1§ = null;
         this.§>9§ = null;
         this.§8r§ = null;
         this.§-!N§ = 0;
         this.§4!D§ = 0;
         this.§>k§ = 0;
         this.§5&§ = 0;
         §3!M§ = true;
         §`Z§ = true;
         this.§'[§ = param2;
         this.§7C§ = param1;
         this.§%V§ = 0;
         this.§ t§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§&!Y§(_loc3_);
      }
      
      public function §[0§(param1:b2DestructionListener) : void
      {
         this.§2!7§ = param1;
      }
      
      public function §`j§(param1:b2ContactFilter) : void
      {
         this.§ t§.§6!$§ = param1;
      }
      
      public function §"x§(param1:b2ContactListener) : void
      {
         this.§ t§.§8X§ = param1;
      }
      
      public function §#f§(param1:b2DebugDraw) : void
      {
         this.§'3§ = param1;
      }
      
      public function §1X§(param1:§3!>§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§3!>§ = this.§ t§.§+o§;
         this.§ t§.§+o§ = param1;
         var _loc3_:b2Body = this.§ R§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§&!R§;
            while(_loc4_)
            {
               _loc4_.§]j§ = param1.§7=§(_loc2_.§^y§(_loc4_.§]j§),_loc4_);
               _loc4_ = _loc4_.§0]§;
            }
            _loc3_ = _loc3_.§0]§;
         }
      }
      
      public function §;g§() : void
      {
         this.§ t§.§+o§.§;g§();
      }
      
      public function §1[§() : int
      {
         return this.§ t§.§+o§.§1[§();
      }
      
      public function §&!Y§(param1:b2BodyDef) : b2Body
      {
         if(this.§@-§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§3U§ = null;
         _loc2_.§0]§ = this.§ R§;
         if(this.§ R§)
         {
            this.§ R§.§3U§ = _loc2_;
         }
         this.§ R§ = _loc2_;
         ++this.§-!N§;
         return _loc2_;
      }
      
      public function §#!P§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§@-§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§>9§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§8L§;
            if(this.§2!7§)
            {
               this.§2!7§.§ null§(_loc6_.§#y§);
            }
            this.§+`§(_loc6_.§#y§);
         }
         var _loc3_:b2ControllerEdge = param1.§8r§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§%;§;
            _loc7_.§&#§.§5!&§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§3!1§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§8L§;
            this.§ t§.§4!L§(_loc8_.§^<§);
         }
         param1.§3!1§ = null;
         var _loc5_:b2Fixture = param1.§&!R§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§0]§;
            if(this.§2!7§)
            {
               this.§2!7§.§?o§(_loc9_);
            }
            _loc9_.§'!F§(this.§ t§.§+o§);
            _loc9_.§4!L§();
         }
         param1.§&!R§ = null;
         param1.§9g§ = 0;
         if(param1.§3U§)
         {
            param1.§3U§.§0]§ = param1.§0]§;
         }
         if(param1.§0]§)
         {
            param1.§0]§.§3U§ = param1.§3U§;
         }
         if(param1 == this.§ R§)
         {
            this.§ R§ = param1.§0]§;
         }
         --this.§-!N§;
      }
      
      public function §,!R§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§?!@§(param1,null);
         _loc2_.§3U§ = null;
         _loc2_.§0]§ = this.§>9§;
         if(this.§>9§)
         {
            this.§>9§.§3U§ = _loc2_;
         }
         this.§>9§ = _loc2_;
         ++this.§>k§;
         _loc2_.§7s§.§#y§ = _loc2_;
         _loc2_.§7s§.§!!Y§ = _loc2_.§;B§;
         _loc2_.§7s§.§"W§ = null;
         _loc2_.§7s§.§8L§ = _loc2_.§2!D§.§>9§;
         if(_loc2_.§2!D§.§>9§)
         {
            _loc2_.§2!D§.§>9§.§"W§ = _loc2_.§7s§;
         }
         _loc2_.§2!D§.§>9§ = _loc2_.§7s§;
         _loc2_.§7!R§.§#y§ = _loc2_;
         _loc2_.§7!R§.§!!Y§ = _loc2_.§2!D§;
         _loc2_.§7!R§.§"W§ = null;
         _loc2_.§7!R§.§8L§ = _loc2_.§;B§.§>9§;
         if(_loc2_.§;B§.§>9§)
         {
            _loc2_.§;B§.§>9§.§"W§ = _loc2_.§7!R§;
         }
         _loc2_.§;B§.§>9§ = _loc2_.§7!R§;
         var _loc3_:b2Body = param1.§<§;
         var _loc4_:b2Body = param1.§,!M§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§!-§();
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
      
      public function §+`§(param1:b2Joint) : void
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
         if(param1 == this.§>9§)
         {
            this.§>9§ = param1.§0]§;
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
         if(param1.§7s§ == _loc3_.§>9§)
         {
            _loc3_.§>9§ = param1.§7s§.§8L§;
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
         if(param1.§7!R§ == _loc4_.§>9§)
         {
            _loc4_.§>9§ = param1.§7!R§.§8L§;
         }
         param1.§7!R§.§"W§ = null;
         param1.§7!R§.§8L§ = null;
         b2Joint.§4!L§(param1,null);
         --this.§>k§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§!-§();
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
      
      public function §=?§(param1:b2Controller) : b2Controller
      {
         param1.§0]§ = this.§8r§;
         param1.§3U§ = null;
         this.§8r§ = param1;
         param1.m_world = this;
         ++this.§5&§;
         return param1;
      }
      
      public function §0U§(param1:b2Controller) : void
      {
         if(param1.§3U§)
         {
            param1.§3U§.§0]§ = param1.§0]§;
         }
         if(param1.§0]§)
         {
            param1.§0]§.§3U§ = param1.§3U§;
         }
         if(this.§8r§ == param1)
         {
            this.§8r§ = param1.§0]§;
         }
         --this.§5&§;
      }
      
      public function §+!E§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§0]§ = this.§8r§;
         param1.§3U§ = null;
         if(this.§8r§)
         {
            this.§8r§.§3U§ = param1;
         }
         this.§8r§ = param1;
         ++this.§5&§;
         param1.m_world = this;
         return param1;
      }
      
      public function §"b§(param1:b2Controller) : void
      {
         param1.§`Y§();
         if(param1.§0]§)
         {
            param1.§0]§.§3U§ = param1.§3U§;
         }
         if(param1.§3U§)
         {
            param1.§3U§.§0]§ = param1.§0]§;
         }
         if(param1 == this.§8r§)
         {
            this.§8r§ = param1.§0]§;
         }
         --this.§5&§;
      }
      
      public function §2m§(param1:Boolean) : void
      {
         §3!M§ = param1;
      }
      
      public function §<B§(param1:Boolean) : void
      {
         §`Z§ = param1;
      }
      
      public function §9z§() : int
      {
         return this.§-!N§;
      }
      
      public function §8f§() : int
      {
         return this.§>k§;
      }
      
      public function §8+§() : int
      {
         return this.§4!D§;
      }
      
      public function § S§(param1:b2Vec2) : void
      {
         this.§7C§ = param1;
      }
      
      public function §8Q§() : b2Vec2
      {
         return this.§7C§;
      }
      
      public function §1^§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §<!P§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§?z§ & §8$§)
         {
            this.§ t§.§ b§();
            this.§?z§ &= ~§8$§;
         }
         this.§?z§ |= §-K§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§%G§ = param1;
         _loc4_.§-!>§ = param2;
         _loc4_.§<W§ = param3;
         if(param1 > 0)
         {
            _loc4_.§5!B§ = 1 / param1;
         }
         else
         {
            _loc4_.§5!B§ = 0;
         }
         _loc4_.§#b§ = this.§%V§ * param1;
         _loc4_.§%!+§ = §3!M§;
         this.§ t§.§+@§();
         if(_loc4_.§%G§ > 0)
         {
            this.§;!D§(_loc4_);
         }
         if(§`Z§ && _loc4_.§%G§ > 0)
         {
            this.§%d§(_loc4_);
         }
         if(_loc4_.§%G§ > 0)
         {
            this.§%V§ = _loc4_.§5!B§;
         }
         this.§?z§ &= ~§-K§;
      }
      
      public function §6b§() : void
      {
         var _loc1_:b2Body = this.§ R§;
         while(_loc1_)
         {
            _loc1_.§-U§.§^!#§();
            _loc1_.§&m§ = 0;
            _loc1_ = _loc1_.§0]§;
         }
      }
      
      public function §?5§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§3!>§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§'3§ == null)
         {
            return;
         }
         this.§'3§.§42§.graphics.clear();
         var _loc1_:uint = this.§'3§.§0T§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§3Q§)
         {
            _loc3_ = this.§ R§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§4!%§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§7"§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§?V§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§0!$§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§?V§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§0!$§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§?V§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§?V§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§?V§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§0]§;
               }
               _loc3_ = _loc3_.§0]§;
            }
         }
         if(_loc1_ & b2DebugDraw.§5h§)
         {
            _loc6_ = this.§>9§;
            while(_loc6_)
            {
               this.§0`§(_loc6_);
               _loc6_ = _loc6_.§0]§;
            }
         }
         if(_loc1_ & b2DebugDraw.§!%§)
         {
            _loc16_ = this.§8r§;
            while(_loc16_)
            {
               _loc16_.§2!9§(this.§'3§);
               _loc16_ = _loc16_.§0]§;
            }
         }
         if(_loc1_ & b2DebugDraw.§&I§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§ t§.§3!1§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§"&§();
               _loc19_ = _loc17_.§7!Z§();
               _loc20_ = _loc18_.§+P§().§&&§();
               _loc21_ = _loc19_.§+P§().§&&§();
               this.§'3§.§0C§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§`!R§();
            }
         }
         if(_loc1_ & b2DebugDraw.§ Y§)
         {
            _loc7_ = this.§ t§.§+o§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§ R§;
            while(_loc3_)
            {
               if(_loc3_.§7"§() != false)
               {
                  _loc4_ = _loc3_.§4!%§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§^y§(_loc4_.§]j§);
                     _loc14_[0].Set(_loc22_.§ 1§.x,_loc22_.§ 1§.y);
                     _loc14_[1].Set(_loc22_.§,e§.x,_loc22_.§ 1§.y);
                     _loc14_[2].Set(_loc22_.§,e§.x,_loc22_.§,e§.y);
                     _loc14_[3].Set(_loc22_.§ 1§.x,_loc22_.§,e§.y);
                     this.§'3§.§7b§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§`!R§();
                  }
               }
               _loc3_ = _loc3_.§`!R§();
            }
         }
         if(_loc1_ & b2DebugDraw.§`!1§)
         {
            _loc3_ = this.§ R§;
            while(_loc3_)
            {
               (_loc11_ = §&!%§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§05§();
               this.§'3§.§,!I§(_loc11_);
               _loc3_ = _loc3_.§0]§;
            }
         }
      }
      
      public function §+!P§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§3!>§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§ t§.§+o§;
         broadPhase.§;!@§(WorldQueryWrapper,aabb);
      }
      
      public function §6T§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§3!>§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§;!4§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§>B§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§0d§();
         }
         broadPhase = this.§ t§.§+o§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§;!@§(WorldQueryWrapper,aabb);
      }
      
      public function §0!3§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§3!>§ = null;
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
         broadPhase = this.§ t§.§+o§;
         var aabb:b2AABB = new b2AABB();
         aabb.§ 1§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§,e§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§;!@§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§3!>§ = null;
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
            return param1.§79§;
         };
         broadPhase = this.§ t§.§+o§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §]1§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §3E§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §;+§() : b2Body
      {
         return this.§ R§;
      }
      
      public function §^V§() : b2Joint
      {
         return this.§>9§;
      }
      
      public function §!-§() : b2Contact
      {
         return this.§3!1§;
      }
      
      public function §@-§() : Boolean
      {
         return (this.§?z§ & §-K§) > 0;
      }
      
      b2internal function §;!D§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§8r§;
         while(_loc3_)
         {
            _loc3_.§<!P§(param1);
            _loc3_ = _loc3_.§0]§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§&!,§).§1D§(this.§-!N§,this.§4!D§,this.§>k§,null,this.§ t§.§8X§,this.§ !%§);
         _loc2_ = this.§ R§;
         while(_loc2_)
         {
            _loc2_.§?z§ &= ~b2Body.§"!X§;
            _loc2_ = _loc2_.§0]§;
         }
         var _loc5_:b2Contact = this.§3!1§;
         while(_loc5_)
         {
            _loc5_.§?z§ &= ~b2Contact.§"!X§;
            _loc5_ = _loc5_.§0]§;
         }
         var _loc6_:b2Joint = this.§>9§;
         while(_loc6_)
         {
            _loc6_.§!#§ = false;
            _loc6_ = _loc6_.§0]§;
         }
         var _loc7_:int = this.§-!N§;
         var _loc8_:Vector.<b2Body> = this.§;w§;
         var _loc9_:b2Body = this.§ R§;
         while(_loc9_)
         {
            if(!(_loc9_.§?z§ & b2Body.§"!X§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§7"§() == false))
               {
                  if(_loc9_.§0!$§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§`Y§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§?z§ |= b2Body.§"!X§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§3J§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§0!$§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§3!1§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§^<§.§?z§ & b2Contact.§"!X§))
                              {
                                 if(!(_loc13_.§^<§.§2'§() == true || _loc13_.§^<§.§!C§() == false || _loc13_.§^<§.§ !I§() == false))
                                 {
                                    _loc4_.§-!R§(_loc13_.§^<§);
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
                           _loc14_ = _loc2_.§>9§;
                           while(_loc14_)
                           {
                              if(_loc14_.§#y§.§!#§ != true)
                              {
                                 if((_loc12_ = _loc14_.§!!Y§).§7"§() != false)
                                 {
                                    _loc4_.§-!T§(_loc14_.§#y§);
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
                     _loc4_.§;!D§(param1,this.§7C§,this.§'[§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§-!N§)
                     {
                        _loc2_ = _loc4_.§!D§[_loc11_];
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
         _loc2_ = this.§ R§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§7"§() == false))
            {
               if(_loc2_.§0!$§() != b2Body.b2_staticBody)
               {
                  _loc2_.§-D§();
               }
            }
            _loc2_ = _loc2_.§0]§;
         }
         this.§ t§.§ b§();
      }
      
      b2internal function §%d§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§&!,§).§1D§(this.§-!N§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§ t§.§8X§,this.§ !%§);
         var _loc10_:Vector.<b2Body> = §]E§;
         _loc2_ = this.§ R§;
         while(_loc2_)
         {
            _loc2_.§?z§ &= ~b2Body.§"!X§;
            _loc2_.m_sweep.§2g§ = 0;
            _loc2_ = _loc2_.§0]§;
         }
         _loc11_ = this.§3!1§;
         while(_loc11_)
         {
            _loc11_.§?z§ &= ~(b2Contact.§0N§ | b2Contact.§"!X§);
            _loc11_ = _loc11_.§0]§;
         }
         _loc8_ = this.§>9§;
         while(_loc8_)
         {
            _loc8_.§!#§ = false;
            _loc8_ = _loc8_.§0]§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§3!1§;
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
                     _loc20_ = _loc5_.m_sweep.§2g§;
                     if(_loc5_.m_sweep.§2g§ < _loc6_.m_sweep.§2g§)
                     {
                        _loc20_ = _loc6_.m_sweep.§2g§;
                        _loc5_.m_sweep.§[d§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§2g§ < _loc5_.m_sweep.§2g§)
                     {
                        _loc20_ = _loc5_.m_sweep.§2g§;
                        _loc6_.m_sweep.§[d§(_loc20_);
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
            §8G§.Set(_loc5_.m_sweep);
            §1!,§.Set(_loc6_.m_sweep);
            _loc5_.§[d§(_loc13_);
            _loc6_.§[d§(_loc13_);
            _loc12_.§8!C§(this.§ t§.§8X§);
            _loc12_.§?z§ &= ~b2Contact.§0N§;
            if(_loc12_.§2'§() == true || _loc12_.§!C§() == false)
            {
               _loc5_.m_sweep.Set(§8G§);
               _loc6_.m_sweep.Set(§1!,§);
               _loc5_.§,M§();
               _loc6_.§,M§();
            }
            else if(_loc12_.§ !I§() != false)
            {
               if((_loc14_ = _loc5_).§0!$§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§`Y§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§?z§ |= b2Body.§"!X§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§3J§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§0!$§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§3!1§;
                     while(_loc7_)
                     {
                        if(_loc9_.§4!D§ == _loc9_.§%!P§)
                        {
                           break;
                        }
                        if(!(_loc7_.§^<§.§?z§ & b2Contact.§"!X§))
                        {
                           if(!(_loc7_.§^<§.§2'§() == true || _loc7_.§^<§.§!C§() == false || _loc7_.§^<§.§ !I§() == false))
                           {
                              _loc9_.§-!R§(_loc7_.§^<§);
                              _loc7_.§^<§.§?z§ |= b2Contact.§"!X§;
                              if(!((_loc22_ = _loc7_.§!!Y§).§?z§ & b2Body.§"!X§))
                              {
                                 if(_loc22_.§0!$§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§[d§(_loc13_);
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
                     _loc21_ = _loc2_.§>9§;
                     while(_loc21_)
                     {
                        if(_loc9_.§>k§ != _loc9_.§#$§)
                        {
                           if(_loc21_.§#y§.§!#§ != true)
                           {
                              if((_loc22_ = _loc21_.§!!Y§).§7"§() != false)
                              {
                                 _loc9_.§-!T§(_loc21_.§#y§);
                                 _loc21_.§#y§.§!#§ = true;
                                 if(!(_loc22_.§?z§ & b2Body.§"!X§))
                                 {
                                    if(_loc22_.§0!$§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§[d§(_loc13_);
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
               (_loc17_ = §7]§).§%!+§ = false;
               _loc17_.§%G§ = (1 - _loc13_) * param1.§%G§;
               _loc17_.§5!B§ = 1 / _loc17_.§%G§;
               _loc17_.§#b§ = 0;
               _loc17_.§-!>§ = param1.§-!>§;
               _loc17_.§<W§ = param1.§<W§;
               _loc9_.§%d§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§-!N§)
               {
                  _loc2_ = _loc9_.§!D§[_loc18_];
                  _loc2_.§?z§ &= ~b2Body.§"!X§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§0!$§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§-D§();
                        _loc7_ = _loc2_.§3!1§;
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
               while(_loc18_ < _loc9_.§4!D§)
               {
                  _loc11_ = _loc9_.§"V§[_loc18_];
                  _loc11_.§?z§ &= ~(b2Contact.§0N§ | b2Contact.§"!X§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§>k§)
               {
                  (_loc8_ = _loc9_.§,D§[_loc18_]).§!#§ = false;
                  _loc18_++;
               }
               this.§ t§.§ b§();
            }
         }
      }
      
      b2internal function §0`§(param1:b2Joint) : void
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
         var _loc10_:b2Color = §[^§;
         switch(param1.§3c§)
         {
            case b2Joint.§-!§:
               this.§'3§.§0C§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§+!2§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§4!5§();
               _loc13_ = _loc11_.§9F§();
               this.§'3§.§0C§(_loc12_,_loc8_,_loc10_);
               this.§'3§.§0C§(_loc13_,_loc9_,_loc10_);
               this.§'3§.§0C§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§-!2§:
               this.§'3§.§0C§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§'3§.§0C§(_loc6_,_loc8_,_loc10_);
               }
               this.§'3§.§0C§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§'3§.§0C§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §?V§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
            case b2Shape.§9!T§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§&B§(param2,_loc4_.§?8§);
               _loc6_ = _loc4_.§=!W§;
               _loc7_ = param2.R.col1;
               this.§'3§.§^2§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§;!5§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§>!2§();
               _loc11_ = _loc9_.§,n§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§&B§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§'3§.§6w§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§"?§:
               _loc13_ = param1 as b2EdgeShape;
               this.§'3§.§0C§(b2Math.§&B§(param2,_loc13_.GetVertex1()),b2Math.§&B§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

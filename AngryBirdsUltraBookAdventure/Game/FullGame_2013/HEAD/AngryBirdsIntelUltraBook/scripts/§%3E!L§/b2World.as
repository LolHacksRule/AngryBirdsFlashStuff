package §>!L§
{
   import §!m§.*;
   import §#!0§.*;
   import §+!g§.*;
   import §0!3§.*;
   import §9!+§.b2Controller;
   import §9!+§.b2ControllerEdge;
   import §=;§.*;
   import §>!8§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §^!T§:b2Transform = new b2Transform();
      
      private static var §0!,§:b2Sweep = new b2Sweep();
      
      private static var §7!3§:b2Sweep = new b2Sweep();
      
      private static var §-+§:b2TimeStep = new b2TimeStep();
      
      private static var §5!5§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §8q§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §1+§:Boolean;
      
      private static var §,0§:Boolean;
      
      public static const §=k§:int = 1;
      
      public static const §!!W§:int = 2;
       
      
      private var §+n§:Vector.<b2Body>;
      
      b2internal var §]!D§:int;
      
      b2internal var §%]§:b2ContactManager;
      
      private var §%A§:b2ContactSolver;
      
      private var §'q§:b2Island;
      
      b2internal var §;;§:b2Body;
      
      private var §8_§:b2Joint;
      
      b2internal var §7!V§:b2Contact;
      
      private var §+C§:int;
      
      b2internal var § !Q§:int;
      
      private var § var§:int;
      
      private var §@!U§:b2Controller;
      
      private var §<!-§:int;
      
      private var §#!P§:b2Vec2;
      
      private var §[!%§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §9!Y§:b2DestructionListener;
      
      private var §2%§:b2DebugDraw;
      
      private var §!1§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§+n§ = new Vector.<b2Body>();
         this.§%]§ = new b2ContactManager();
         this.§%A§ = new b2ContactSolver();
         this.§'q§ = new b2Island();
         super();
         this.§9!Y§ = null;
         this.§2%§ = null;
         this.§;;§ = null;
         this.§7!V§ = null;
         this.§8_§ = null;
         this.§@!U§ = null;
         this.§+C§ = 0;
         this.§ !Q§ = 0;
         this.§ var§ = 0;
         this.§<!-§ = 0;
         §1+§ = true;
         §,0§ = true;
         this.§[!%§ = param2;
         this.§#!P§ = param1;
         this.§!1§ = 0;
         this.§%]§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§1!-§(_loc3_);
      }
      
      public function §'!E§(param1:b2DestructionListener) : void
      {
         this.§9!Y§ = param1;
      }
      
      public function §4z§(param1:b2ContactFilter) : void
      {
         this.§%]§.§!!'§ = param1;
      }
      
      public function §;!M§(param1:b2ContactListener) : void
      {
         this.§%]§.§'!j§ = param1;
      }
      
      public function §"5§(param1:b2DebugDraw) : void
      {
         this.§2%§ = param1;
      }
      
      public function §0!2§(param1:§"%§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§"%§ = this.§%]§.§%%§;
         this.§%]§.§%%§ = param1;
         var _loc3_:b2Body = this.§;;§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§ 7§;
            while(_loc4_)
            {
               _loc4_.§;1§ = param1.§>!I§(_loc2_.§9!X§(_loc4_.§;1§),_loc4_);
               _loc4_ = _loc4_.§,!Z§;
            }
            _loc3_ = _loc3_.§,!Z§;
         }
      }
      
      public function §7v§() : void
      {
         this.§%]§.§%%§.§7v§();
      }
      
      public function §,A§() : int
      {
         return this.§%]§.§%%§.§,A§();
      }
      
      public function §1!-§(param1:b2BodyDef) : b2Body
      {
         if(this.§;M§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§<!9§ = null;
         _loc2_.§,!Z§ = this.§;;§;
         if(this.§;;§)
         {
            this.§;;§.§<!9§ = _loc2_;
         }
         this.§;;§ = _loc2_;
         ++this.§+C§;
         return _loc2_;
      }
      
      public function §=!]§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§;M§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§8_§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§<!D§;
            if(this.§9!Y§)
            {
               this.§9!Y§.§%!f§(_loc6_.§9&§);
            }
            this.§24§(_loc6_.§9&§);
         }
         var _loc3_:b2ControllerEdge = param1.§@!U§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§2e§;
            _loc7_.controller.§>!F§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§7!V§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§<!D§;
            this.§%]§.§"G§(_loc8_.§7![§);
         }
         param1.§7!V§ = null;
         var _loc5_:b2Fixture = param1.§ 7§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§,!Z§;
            if(this.§9!Y§)
            {
               this.§9!Y§.§3!!§(_loc9_);
            }
            _loc9_.§,!c§(this.§%]§.§%%§);
            _loc9_.§"G§();
         }
         param1.§ 7§ = null;
         param1.§4$§ = 0;
         if(param1.§<!9§)
         {
            param1.§<!9§.§,!Z§ = param1.§,!Z§;
         }
         if(param1.§,!Z§)
         {
            param1.§,!Z§.§<!9§ = param1.§<!9§;
         }
         if(param1 == this.§;;§)
         {
            this.§;;§ = param1.§,!Z§;
         }
         --this.§+C§;
      }
      
      public function §%!A§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§@!L§(param1,null);
         _loc2_.§<!9§ = null;
         _loc2_.§,!Z§ = this.§8_§;
         if(this.§8_§)
         {
            this.§8_§.§<!9§ = _loc2_;
         }
         this.§8_§ = _loc2_;
         ++this.§ var§;
         _loc2_.§56§.§9&§ = _loc2_;
         _loc2_.§56§.§@X§ = _loc2_.§`x§;
         _loc2_.§56§.§3!j§ = null;
         _loc2_.§56§.§<!D§ = _loc2_.§-;§.§8_§;
         if(_loc2_.§-;§.§8_§)
         {
            _loc2_.§-;§.§8_§.§3!j§ = _loc2_.§56§;
         }
         _loc2_.§-;§.§8_§ = _loc2_.§56§;
         _loc2_.§1b§.§9&§ = _loc2_;
         _loc2_.§1b§.§@X§ = _loc2_.§-;§;
         _loc2_.§1b§.§3!j§ = null;
         _loc2_.§1b§.§<!D§ = _loc2_.§`x§.§8_§;
         if(_loc2_.§`x§.§8_§)
         {
            _loc2_.§`x§.§8_§.§3!j§ = _loc2_.§1b§;
         }
         _loc2_.§`x§.§8_§ = _loc2_.§1b§;
         var _loc3_:b2Body = param1.§7l§;
         var _loc4_:b2Body = param1.§<H§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§2!c§();
            while(_loc5_)
            {
               if(_loc5_.§@X§ == _loc3_)
               {
                  _loc5_.§7![§.§"T§();
               }
               _loc5_ = _loc5_.§<!D§;
            }
         }
         return _loc2_;
      }
      
      public function §24§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§[[§;
         if(param1.§<!9§)
         {
            param1.§<!9§.§,!Z§ = param1.§,!Z§;
         }
         if(param1.§,!Z§)
         {
            param1.§,!Z§.§<!9§ = param1.§<!9§;
         }
         if(param1 == this.§8_§)
         {
            this.§8_§ = param1.§,!Z§;
         }
         var _loc3_:b2Body = param1.§-;§;
         var _loc4_:b2Body = param1.§`x§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§56§.§3!j§)
         {
            param1.§56§.§3!j§.§<!D§ = param1.§56§.§<!D§;
         }
         if(param1.§56§.§<!D§)
         {
            param1.§56§.§<!D§.§3!j§ = param1.§56§.§3!j§;
         }
         if(param1.§56§ == _loc3_.§8_§)
         {
            _loc3_.§8_§ = param1.§56§.§<!D§;
         }
         param1.§56§.§3!j§ = null;
         param1.§56§.§<!D§ = null;
         if(param1.§1b§.§3!j§)
         {
            param1.§1b§.§3!j§.§<!D§ = param1.§1b§.§<!D§;
         }
         if(param1.§1b§.§<!D§)
         {
            param1.§1b§.§<!D§.§3!j§ = param1.§1b§.§3!j§;
         }
         if(param1.§1b§ == _loc4_.§8_§)
         {
            _loc4_.§8_§ = param1.§1b§.§<!D§;
         }
         param1.§1b§.§3!j§ = null;
         param1.§1b§.§<!D§ = null;
         b2Joint.§"G§(param1,null);
         --this.§ var§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§2!c§();
            while(_loc5_)
            {
               if(_loc5_.§@X§ == _loc3_)
               {
                  _loc5_.§7![§.§"T§();
               }
               _loc5_ = _loc5_.§<!D§;
            }
         }
      }
      
      public function §&9§(param1:b2Controller) : b2Controller
      {
         param1.§,!Z§ = this.§@!U§;
         param1.§<!9§ = null;
         this.§@!U§ = param1;
         param1.m_world = this;
         ++this.§<!-§;
         return param1;
      }
      
      public function §!!6§(param1:b2Controller) : void
      {
         if(param1.§<!9§)
         {
            param1.§<!9§.§,!Z§ = param1.§,!Z§;
         }
         if(param1.§,!Z§)
         {
            param1.§,!Z§.§<!9§ = param1.§<!9§;
         }
         if(this.§@!U§ == param1)
         {
            this.§@!U§ = param1.§,!Z§;
         }
         --this.§<!-§;
      }
      
      public function § =§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§,!Z§ = this.§@!U§;
         param1.§<!9§ = null;
         if(this.§@!U§)
         {
            this.§@!U§.§<!9§ = param1;
         }
         this.§@!U§ = param1;
         ++this.§<!-§;
         param1.m_world = this;
         return param1;
      }
      
      public function §`P§(param1:b2Controller) : void
      {
         param1.§-!g§();
         if(param1.§,!Z§)
         {
            param1.§,!Z§.§<!9§ = param1.§<!9§;
         }
         if(param1.§<!9§)
         {
            param1.§<!9§.§,!Z§ = param1.§,!Z§;
         }
         if(param1 == this.§@!U§)
         {
            this.§@!U§ = param1.§,!Z§;
         }
         --this.§<!-§;
      }
      
      public function §6'§(param1:Boolean) : void
      {
         §1+§ = param1;
      }
      
      public function §7s§(param1:Boolean) : void
      {
         §,0§ = param1;
      }
      
      public function §@!1§() : int
      {
         return this.§+C§;
      }
      
      public function §'!G§() : int
      {
         return this.§ var§;
      }
      
      public function §6W§() : int
      {
         return this.§ !Q§;
      }
      
      public function §2!7§(param1:b2Vec2) : void
      {
         this.§#!P§ = param1;
      }
      
      public function §8<§() : b2Vec2
      {
         return this.§#!P§;
      }
      
      public function §@!#§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §<!;§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§]!D§ & §=k§)
         {
            this.§%]§.§default§();
            this.§]!D§ &= ~§=k§;
         }
         this.§]!D§ |= §!!W§;
         var _loc4_:b2TimeStep = s_timestep2;
         _loc4_.§`M§ = param1;
         _loc4_.§[Z§ = param2;
         _loc4_.§@<§ = param3;
         if(param1 > 0)
         {
            _loc4_.§^!_§ = 1 / param1;
         }
         else
         {
            _loc4_.§^!_§ = 0;
         }
         _loc4_.§&s§ = this.§!1§ * param1;
         _loc4_.§-K§ = §1+§;
         this.§%]§.§;T§();
         if(_loc4_.§`M§ > 0)
         {
            this.§]j§(_loc4_);
         }
         if(§,0§ && _loc4_.§`M§ > 0)
         {
            this.§`k§(_loc4_);
         }
         if(_loc4_.§`M§ > 0)
         {
            this.§!1§ = _loc4_.§^!_§;
         }
         this.§]!D§ &= ~§!!W§;
      }
      
      public function §^z§() : void
      {
         var _loc1_:b2Body = this.§;;§;
         while(_loc1_)
         {
            _loc1_.§4!&§.§@!;§();
            _loc1_.§`!c§ = 0;
            _loc1_ = _loc1_.§,!Z§;
         }
      }
      
      public function §!!9§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§"%§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§2%§ == null)
         {
            return;
         }
         this.§2%§.§3t§.graphics.clear();
         var _loc1_:uint = this.§2%§.§,s§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§,x§)
         {
            _loc3_ = this.§;;§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§super§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§7!S§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§8!!§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§6!-§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§8!!§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§6!-§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§8!!§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§8!!§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§8!!§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§,!Z§;
               }
               _loc3_ = _loc3_.§,!Z§;
            }
         }
         if(_loc1_ & b2DebugDraw.§`h§)
         {
            _loc6_ = this.§8_§;
            while(_loc6_)
            {
               this.§][§(_loc6_);
               _loc6_ = _loc6_.§,!Z§;
            }
         }
         if(_loc1_ & b2DebugDraw.§-C§)
         {
            _loc16_ = this.§@!U§;
            while(_loc16_)
            {
               _loc16_.§<!f§(this.§2%§);
               _loc16_ = _loc16_.§,!Z§;
            }
         }
         if(_loc1_ & b2DebugDraw.§=!Z§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§%]§.§7!V§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§'$§();
               _loc19_ = _loc17_.§<!2§();
               _loc20_ = _loc18_.§#Y§().§0!8§();
               _loc21_ = _loc19_.§#Y§().§0!8§();
               this.§2%§.§-!!§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§'!;§();
            }
         }
         if(_loc1_ & b2DebugDraw.§@S§)
         {
            _loc7_ = this.§%]§.§%%§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§;;§;
            while(_loc3_)
            {
               if(_loc3_.§7!S§() != false)
               {
                  _loc4_ = _loc3_.§super§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§9!X§(_loc4_.§;1§);
                     _loc14_[0].Set(_loc22_.§4m§.x,_loc22_.§4m§.y);
                     _loc14_[1].Set(_loc22_.§=!`§.x,_loc22_.§4m§.y);
                     _loc14_[2].Set(_loc22_.§=!`§.x,_loc22_.§=!`§.y);
                     _loc14_[3].Set(_loc22_.§4m§.x,_loc22_.§=!`§.y);
                     this.§2%§.§]!2§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§'!;§();
                  }
               }
               _loc3_ = _loc3_.§'!;§();
            }
         }
         if(_loc1_ & b2DebugDraw.§^!a§)
         {
            _loc3_ = this.§;;§;
            while(_loc3_)
            {
               _loc11_ = §^!T§;
               _loc11_.R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§"!'§();
               this.§2%§.§%j§(_loc11_);
               _loc3_ = _loc3_.§,!Z§;
            }
         }
      }
      
      public function §@!<§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§"%§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§%]§.§%%§;
         broadPhase.§99§(WorldQueryWrapper,aabb);
      }
      
      public function §#!_§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§"%§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§ V§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§1?§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§?!"§();
         }
         broadPhase = this.§%]§.§%%§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§99§(WorldQueryWrapper,aabb);
      }
      
      public function §`z§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§"%§ = null;
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
         broadPhase = this.§%]§.§%%§;
         var aabb:b2AABB = new b2AABB();
         aabb.§4m§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§=!`§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§99§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§"%§ = null;
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
            var _loc4_:b2Fixture = _loc3_ as b2Fixture;
            var _loc5_:Boolean = _loc4_.RayCast(output,param1);
            if(_loc5_)
            {
               _loc6_ = output.fraction;
               _loc7_ = new b2Vec2((1 - _loc6_) * point1.x + _loc6_ * point2.x,(1 - _loc6_) * point1.y + _loc6_ * point2.y);
               return callback(_loc4_,_loc7_,output.normal,_loc6_);
            }
            return param1.§-Q§;
         };
         broadPhase = this.§%]§.§%%§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §?x§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §[!§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §%f§() : b2Body
      {
         return this.§;;§;
      }
      
      public function §@!§() : b2Joint
      {
         return this.§8_§;
      }
      
      public function §2!c§() : b2Contact
      {
         return this.§7!V§;
      }
      
      public function §;M§() : Boolean
      {
         return (this.§]!D§ & §!!W§) > 0;
      }
      
      b2internal function §]j§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§@!U§;
         while(_loc3_)
         {
            _loc3_.§<!;§(param1);
            _loc3_ = _loc3_.§,!Z§;
         }
         var _loc4_:b2Island = this.§'q§;
         _loc4_.§2@§(this.§+C§,this.§ !Q§,this.§ var§,null,this.§%]§.§'!j§,this.§%A§);
         _loc2_ = this.§;;§;
         while(_loc2_)
         {
            _loc2_.§]!D§ &= ~b2Body.§%!d§;
            _loc2_ = _loc2_.§,!Z§;
         }
         var _loc5_:b2Contact = this.§7!V§;
         while(_loc5_)
         {
            _loc5_.§]!D§ &= ~b2Contact.§%!d§;
            _loc5_ = _loc5_.§,!Z§;
         }
         var _loc6_:b2Joint = this.§8_§;
         while(_loc6_)
         {
            _loc6_.§#!7§ = false;
            _loc6_ = _loc6_.§,!Z§;
         }
         var _loc7_:int = this.§+C§;
         var _loc8_:Vector.<b2Body> = this.§+n§;
         var _loc9_:b2Body = this.§;;§;
         while(_loc9_)
         {
            if(!(_loc9_.§]!D§ & b2Body.§%!d§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§7!S§() == false))
               {
                  if(_loc9_.§6!-§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§-!g§();
                     _loc10_ = 0;
                     var _loc15_:* = _loc10_++;
                     _loc8_[_loc15_] = _loc9_;
                     _loc9_.§]!D§ |= b2Body.§%!d§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§0!Y§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§6!-§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§7!V§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§7![§.§]!D§ & b2Contact.§%!d§))
                              {
                                 if(!(_loc13_.§7![§.§[j§() == true || _loc13_.§7![§.§`-§() == false || _loc13_.§7![§.§%&§() == false))
                                 {
                                    _loc4_.§^]§(_loc13_.§7![§);
                                    _loc13_.§7![§.§]!D§ |= b2Contact.§%!d§;
                                    _loc12_ = _loc13_.§@X§;
                                    if(!(_loc12_.§]!D§ & b2Body.§%!d§))
                                    {
                                       var _loc16_:* = _loc10_++;
                                       _loc8_[_loc16_] = _loc12_;
                                       _loc12_.§]!D§ |= b2Body.§%!d§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§<!D§;
                           }
                           _loc14_ = _loc2_.§8_§;
                           while(_loc14_)
                           {
                              if(_loc14_.§9&§.§#!7§ != true)
                              {
                                 _loc12_ = _loc14_.§@X§;
                                 if(_loc12_.§7!S§() != false)
                                 {
                                    _loc4_.§5p§(_loc14_.§9&§);
                                    _loc14_.§9&§.§#!7§ = true;
                                    if(!(_loc12_.§]!D§ & b2Body.§%!d§))
                                    {
                                       _loc16_ = _loc10_++;
                                       _loc8_[_loc16_] = _loc12_;
                                       _loc12_.§]!D§ |= b2Body.§%!d§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§<!D§;
                           }
                        }
                     }
                     _loc4_.§]j§(param1,this.§#!P§,this.§[!%§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§+C§)
                     {
                        _loc2_ = _loc4_.§,!<§[_loc11_];
                        if(_loc2_.§6!-§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§]!D§ &= ~b2Body.§%!d§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§,!Z§;
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
         _loc2_ = this.§;;§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§7!S§() == false))
            {
               if(_loc2_.§6!-§() != b2Body.b2_staticBody)
               {
                  _loc2_.§]!-§();
               }
            }
            _loc2_ = _loc2_.§,!Z§;
         }
         this.§%]§.§default§();
      }
      
      b2internal function §`k§(param1:b2TimeStep) : void
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
         var _loc9_:b2Island = this.§'q§;
         _loc9_.§2@§(this.§+C§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§%]§.§'!j§,this.§%A§);
         var _loc10_:Vector.<b2Body> = §5!5§;
         _loc2_ = this.§;;§;
         while(_loc2_)
         {
            _loc2_.§]!D§ &= ~b2Body.§%!d§;
            _loc2_.m_sweep.§#K§ = 0;
            _loc2_ = _loc2_.§,!Z§;
         }
         _loc11_ = this.§7!V§;
         while(_loc11_)
         {
            _loc11_.§]!D§ &= ~(b2Contact.§;![§ | b2Contact.§%!d§);
            _loc11_ = _loc11_.§,!Z§;
         }
         _loc8_ = this.§8_§;
         while(_loc8_)
         {
            _loc8_.§#!7§ = false;
            _loc8_ = _loc8_.§,!Z§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§7!V§;
            for(; _loc11_; _loc11_ = _loc11_.§,!Z§)
            {
               if(!(_loc11_.§[j§() == true || _loc11_.§`-§() == false || _loc11_.§<!P§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§]!D§ & b2Contact.§;![§)
                  {
                     _loc19_ = _loc11_.§+!E§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§7d§;
                     _loc4_ = _loc11_.§-F§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§6!-§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§6!-§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§#K§;
                     if(_loc5_.m_sweep.§#K§ < _loc6_.m_sweep.§#K§)
                     {
                        _loc20_ = _loc6_.m_sweep.§#K§;
                        _loc5_.m_sweep.§6!1§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§#K§ < _loc5_.m_sweep.§#K§)
                     {
                        _loc20_ = _loc5_.m_sweep.§#K§;
                        _loc6_.m_sweep.§6!1§(_loc20_);
                     }
                     _loc19_ = _loc11_.§with§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        _loc19_ = (1 - _loc19_) * _loc20_ + _loc19_;
                        if(_loc19_ > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§+!E§ = _loc19_;
                     _loc11_.§]!D§ |= b2Contact.§;![§;
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§7d§;
            _loc4_ = _loc12_.§-F§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §0!,§.Set(_loc5_.m_sweep);
            §7!3§.Set(_loc6_.m_sweep);
            _loc5_.§6!1§(_loc13_);
            _loc6_.§6!1§(_loc13_);
            _loc12_.§%!-§(this.§%]§.§'!j§);
            _loc12_.§]!D§ &= ~b2Contact.§;![§;
            if(_loc12_.§[j§() == true || _loc12_.§`-§() == false)
            {
               _loc5_.m_sweep.Set(§0!,§);
               _loc6_.m_sweep.Set(§7!3§);
               _loc5_.§"!_§();
               _loc6_.§"!_§();
            }
            else if(_loc12_.§%&§() != false)
            {
               _loc14_ = _loc5_;
               if(_loc14_.§6!-§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§-!g§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§]!D§ |= b2Body.§%!d§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§0!Y§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§6!-§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§7!V§;
                     while(_loc7_)
                     {
                        if(_loc9_.§ !Q§ == _loc9_.§6_§)
                        {
                           break;
                        }
                        if(!(_loc7_.§7![§.§]!D§ & b2Contact.§%!d§))
                        {
                           if(!(_loc7_.§7![§.§[j§() == true || _loc7_.§7![§.§`-§() == false || _loc7_.§7![§.§%&§() == false))
                           {
                              _loc9_.§^]§(_loc7_.§7![§);
                              _loc7_.§7![§.§]!D§ |= b2Contact.§%!d§;
                              _loc22_ = _loc7_.§@X§;
                              if(!(_loc22_.§]!D§ & b2Body.§%!d§))
                              {
                                 if(_loc22_.§6!-§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§6!1§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§]!D§ |= b2Body.§%!d§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§<!D§;
                     }
                     _loc21_ = _loc2_.§8_§;
                     while(_loc21_)
                     {
                        if(_loc9_.§ var§ != _loc9_.§>P§)
                        {
                           if(_loc21_.§9&§.§#!7§ != true)
                           {
                              _loc22_ = _loc21_.§@X§;
                              if(_loc22_.§7!S§() != false)
                              {
                                 _loc9_.§5p§(_loc21_.§9&§);
                                 _loc21_.§9&§.§#!7§ = true;
                                 if(!(_loc22_.§]!D§ & b2Body.§%!d§))
                                 {
                                    if(_loc22_.§6!-§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§6!1§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§]!D§ |= b2Body.§%!d§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§<!D§;
                     }
                  }
               }
               _loc17_ = §-+§;
               _loc17_.§-K§ = false;
               _loc17_.§`M§ = (1 - _loc13_) * param1.§`M§;
               _loc17_.§^!_§ = 1 / _loc17_.§`M§;
               _loc17_.§&s§ = 0;
               _loc17_.§[Z§ = param1.§[Z§;
               _loc17_.§@<§ = param1.§@<§;
               _loc9_.§`k§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§+C§)
               {
                  _loc2_ = _loc9_.§,!<§[_loc18_];
                  _loc2_.§]!D§ &= ~b2Body.§%!d§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§6!-§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§]!-§();
                        _loc7_ = _loc2_.§7!V§;
                        while(_loc7_)
                        {
                           _loc7_.§7![§.§]!D§ &= ~b2Contact.§;![§;
                           _loc7_ = _loc7_.§<!D§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§ !Q§)
               {
                  _loc11_ = _loc9_.§`!4§[_loc18_];
                  _loc11_.§]!D§ &= ~(b2Contact.§;![§ | b2Contact.§%!d§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§ var§)
               {
                  _loc8_ = _loc9_.§0!a§[_loc18_];
                  _loc8_.§#!7§ = false;
                  _loc18_++;
               }
               this.§%]§.§default§();
            }
         }
      }
      
      b2internal function §][§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§0!M§();
         var _loc3_:b2Body = param1.§,n§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §8q§;
         switch(param1.§2!5§)
         {
            case b2Joint.§@5§:
               this.§2%§.§-!!§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§9!c§:
               _loc11_ = param1 as b2PulleyJoint;
               _loc12_ = _loc11_.§5C§();
               _loc13_ = _loc11_.§@!N§();
               this.§2%§.§-!!§(_loc12_,_loc8_,_loc10_);
               this.§2%§.§-!!§(_loc13_,_loc9_,_loc10_);
               this.§2%§.§-!!§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§9!C§:
               this.§2%§.§-!!§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§2%§.§-!!§(_loc6_,_loc8_,_loc10_);
               }
               this.§2%§.§-!!§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§2%§.§-!!§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §8!!§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§2!5§)
         {
            case b2Shape.§^%§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§&!M§(param2,_loc4_.§,!2§);
               _loc6_ = _loc4_.§!@§;
               _loc7_ = param2.R.col1;
               this.§2%§.§>g§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§9Q§:
               _loc9_ = param1 as b2PolygonShape;
               _loc10_ = _loc9_.§8!g§();
               _loc11_ = _loc9_.§64§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§&!M§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§2%§.§`w§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§#[§:
               _loc13_ = param1 as b2EdgeShape;
               this.§2%§.§-!!§(b2Math.§&!M§(param2,_loc13_.GetVertex1()),b2Math.§&!M§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

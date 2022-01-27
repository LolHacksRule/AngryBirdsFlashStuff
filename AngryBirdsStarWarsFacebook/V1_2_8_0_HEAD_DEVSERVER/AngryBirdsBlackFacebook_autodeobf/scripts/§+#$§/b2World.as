package §+#$§
{
   import §1!2§.*;
   import §3"5§.*;
   import §4!$§.*;
   import §5"i§.*;
   import §8[§.*;
   import §["3§.b2Controller;
   import §["3§.b2ControllerEdge;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §!!+§:b2Transform = new b2Transform();
      
      private static var §;"`§:b2Sweep = new b2Sweep();
      
      private static var §^=§:b2Sweep = new b2Sweep();
      
      private static var §;"C§:b2TimeStep = new b2TimeStep();
      
      private static var §7!7§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §@!]§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var § M§:Boolean;
      
      private static var §%!J§:Boolean;
      
      public static const §#h§:int = 1;
      
      public static const §+"z§:int = 2;
       
      
      private var §7I§:Vector.<b2Body>;
      
      b2internal var §6b§:int;
      
      b2internal var §1P§:b2ContactManager;
      
      private var §"!k§:b2ContactSolver;
      
      private var §"x§:b2Island;
      
      b2internal var §,!A§:b2Body;
      
      private var §%#J§:b2Joint;
      
      b2internal var §'#H§:b2Contact;
      
      private var §9#,§:int;
      
      b2internal var §1N§:int;
      
      private var §5!I§:int;
      
      private var §?`§:b2Controller;
      
      private var §'"g§:int;
      
      private var §@!>§:b2Vec2;
      
      private var §`";§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §@#I§:b2DestructionListener;
      
      private var §@#J§:b2DebugDraw;
      
      private var §%"@§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§7I§ = new Vector.<b2Body>();
         this.§1P§ = new b2ContactManager();
         this.§"!k§ = new b2ContactSolver();
         this.§"x§ = new b2Island();
         super();
         this.§@#I§ = null;
         this.§@#J§ = null;
         this.§,!A§ = null;
         this.§'#H§ = null;
         this.§%#J§ = null;
         this.§?`§ = null;
         this.§9#,§ = 0;
         this.§1N§ = 0;
         this.§5!I§ = 0;
         this.§'"g§ = 0;
         § M§ = true;
         §%!J§ = true;
         this.§`";§ = param2;
         this.§@!>§ = param1;
         this.§%"@§ = 0;
         this.§1P§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §2"3§(param1:b2DestructionListener) : void
      {
         this.§@#I§ = param1;
      }
      
      public function §1""§(param1:b2ContactFilter) : void
      {
         this.§1P§.§7l§ = param1;
      }
      
      public function §4!O§(param1:b2ContactListener) : void
      {
         this.§1P§.§?O§ = param1;
      }
      
      public function §0=§(param1:b2DebugDraw) : void
      {
         this.§@#J§ = param1;
      }
      
      public function §`-§(param1:§8t§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§8t§ = this.§1P§.§7#U§;
         this.§1P§.§7#U§ = param1;
         var _loc3_:b2Body = this.§,!A§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§<"v§;
            while(_loc4_)
            {
               _loc4_.§4"t§ = param1.§ #Q§(_loc2_.§1"§(_loc4_.§4"t§),_loc4_);
               _loc4_ = _loc4_.§!"!§;
            }
            _loc3_ = _loc3_.§!"!§;
         }
      }
      
      public function §%!&§() : void
      {
         this.§1P§.§7#U§.§%!&§();
      }
      
      public function §<§() : int
      {
         return this.§1P§.§7#U§.§<§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§]#`§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§ #&§ = null;
         _loc2_.§!"!§ = this.§,!A§;
         if(this.§,!A§)
         {
            this.§,!A§.§ #&§ = _loc2_;
         }
         this.§,!A§ = _loc2_;
         ++this.§9#,§;
         return _loc2_;
      }
      
      public function DestroyBody(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§]#`§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§%#J§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§]!D§;
            if(this.§@#I§)
            {
               this.§@#I§.§,"$§(_loc6_.joint);
            }
            this.DestroyJoint(_loc6_.joint);
         }
         var _loc3_:b2ControllerEdge = param1.§?`§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§7"!§;
            _loc7_.§>k§.§<?§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§'#H§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§]!D§;
            this.§1P§.§;!"§(_loc8_.§>"6§);
         }
         param1.§'#H§ = null;
         var _loc5_:b2Fixture = param1.§<"v§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§!"!§;
            if(this.§@#I§)
            {
               this.§@#I§.§,!=§(_loc9_);
            }
            _loc9_.§,X§(this.§1P§.§7#U§);
            _loc9_.§;!"§();
         }
         param1.§<"v§ = null;
         param1.§?"m§ = 0;
         if(param1.§ #&§)
         {
            param1.§ #&§.§!"!§ = param1.§!"!§;
         }
         if(param1.§!"!§)
         {
            param1.§!"!§.§ #&§ = param1.§ #&§;
         }
         if(param1 == this.§,!A§)
         {
            this.§,!A§ = param1.§!"!§;
         }
         --this.§9#,§;
      }
      
      public function CreateJoint(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§=!S§(param1,null);
         _loc2_.§ #&§ = null;
         _loc2_.§!"!§ = this.§%#J§;
         if(this.§%#J§)
         {
            this.§%#J§.§ #&§ = _loc2_;
         }
         this.§%#J§ = _loc2_;
         ++this.§5!I§;
         _loc2_.§>"-§.joint = _loc2_;
         _loc2_.§>"-§.other = _loc2_.§ "z§;
         _loc2_.§>"-§.§-B§ = null;
         _loc2_.§>"-§.§]!D§ = _loc2_.§2!g§.§%#J§;
         if(_loc2_.§2!g§.§%#J§)
         {
            _loc2_.§2!g§.§%#J§.§-B§ = _loc2_.§>"-§;
         }
         _loc2_.§2!g§.§%#J§ = _loc2_.§>"-§;
         _loc2_.§<!$§.joint = _loc2_;
         _loc2_.§<!$§.other = _loc2_.§2!g§;
         _loc2_.§<!$§.§-B§ = null;
         _loc2_.§<!$§.§]!D§ = _loc2_.§ "z§.§%#J§;
         if(_loc2_.§ "z§.§%#J§)
         {
            _loc2_.§ "z§.§%#J§.§-B§ = _loc2_.§<!$§;
         }
         _loc2_.§ "z§.§%#J§ = _loc2_.§<!$§;
         var _loc3_:b2Body = param1.§9"P§;
         var _loc4_:b2Body = param1.§continue§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§9!K§();
            while(_loc5_)
            {
               if(_loc5_.other == _loc3_)
               {
                  _loc5_.§>"6§.§=y§();
               }
               _loc5_ = _loc5_.§]!D§;
            }
         }
         return _loc2_;
      }
      
      public function DestroyJoint(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§6"m§;
         if(param1.§ #&§)
         {
            param1.§ #&§.§!"!§ = param1.§!"!§;
         }
         if(param1.§!"!§)
         {
            param1.§!"!§.§ #&§ = param1.§ #&§;
         }
         if(param1 == this.§%#J§)
         {
            this.§%#J§ = param1.§!"!§;
         }
         var _loc3_:b2Body = param1.§2!g§;
         var _loc4_:b2Body = param1.§ "z§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§>"-§.§-B§)
         {
            param1.§>"-§.§-B§.§]!D§ = param1.§>"-§.§]!D§;
         }
         if(param1.§>"-§.§]!D§)
         {
            param1.§>"-§.§]!D§.§-B§ = param1.§>"-§.§-B§;
         }
         if(param1.§>"-§ == _loc3_.§%#J§)
         {
            _loc3_.§%#J§ = param1.§>"-§.§]!D§;
         }
         param1.§>"-§.§-B§ = null;
         param1.§>"-§.§]!D§ = null;
         if(param1.§<!$§.§-B§)
         {
            param1.§<!$§.§-B§.§]!D§ = param1.§<!$§.§]!D§;
         }
         if(param1.§<!$§.§]!D§)
         {
            param1.§<!$§.§]!D§.§-B§ = param1.§<!$§.§-B§;
         }
         if(param1.§<!$§ == _loc4_.§%#J§)
         {
            _loc4_.§%#J§ = param1.§<!$§.§]!D§;
         }
         param1.§<!$§.§-B§ = null;
         param1.§<!$§.§]!D§ = null;
         b2Joint.§;!"§(param1,null);
         --this.§5!I§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§9!K§();
            while(_loc5_)
            {
               if(_loc5_.other == _loc3_)
               {
                  _loc5_.§>"6§.§=y§();
               }
               _loc5_ = _loc5_.§]!D§;
            }
         }
      }
      
      public function § #<§(param1:b2Controller) : b2Controller
      {
         param1.§!"!§ = this.§?`§;
         param1.§ #&§ = null;
         this.§?`§ = param1;
         param1.m_world = this;
         ++this.§'"g§;
         return param1;
      }
      
      public function §3!Z§(param1:b2Controller) : void
      {
         if(param1.§ #&§)
         {
            param1.§ #&§.§!"!§ = param1.§!"!§;
         }
         if(param1.§!"!§)
         {
            param1.§!"!§.§ #&§ = param1.§ #&§;
         }
         if(this.§?`§ == param1)
         {
            this.§?`§ = param1.§!"!§;
         }
         --this.§'"g§;
      }
      
      public function §#"W§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§!"!§ = this.§?`§;
         param1.§ #&§ = null;
         if(this.§?`§)
         {
            this.§?`§.§ #&§ = param1;
         }
         this.§?`§ = param1;
         ++this.§'"g§;
         param1.m_world = this;
         return param1;
      }
      
      public function §+!i§(param1:b2Controller) : void
      {
         param1.§#u§();
         if(param1.§!"!§)
         {
            param1.§!"!§.§ #&§ = param1.§ #&§;
         }
         if(param1.§ #&§)
         {
            param1.§ #&§.§!"!§ = param1.§!"!§;
         }
         if(param1 == this.§?`§)
         {
            this.§?`§ = param1.§!"!§;
         }
         --this.§'"g§;
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         § M§ = param1;
      }
      
      public function §#"J§(param1:Boolean) : void
      {
         §%!J§ = param1;
      }
      
      public function §^>§() : int
      {
         return this.§9#,§;
      }
      
      public function §<"#§() : int
      {
         return this.§5!I§;
      }
      
      public function §?!L§() : int
      {
         return this.§1N§;
      }
      
      public function SetGravity(param1:b2Vec2) : void
      {
         this.§@!>§ = param1;
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.§@!>§;
      }
      
      public function §3&§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         if(this.§6b§ & §#h§)
         {
            this.§1P§.§7"D§();
            this.§6b§ &= ~§#h§;
         }
         this.§6b§ |= §+"z§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§1!O§ = param1;
         _loc4_.§,H§ = param2;
         _loc4_.§5"A§ = param3;
         if(param1 > 0)
         {
            _loc4_.§4"r§ = 1 / param1;
         }
         else
         {
            _loc4_.§4"r§ = 0;
         }
         _loc4_.§8"]§ = this.§%"@§ * param1;
         _loc4_.§-'§ = § M§;
         this.§1P§.§9#Z§();
         if(_loc4_.§1!O§ > 0)
         {
            this.§=#6§(_loc4_);
         }
         if(§%!J§ && _loc4_.§1!O§ > 0)
         {
            this.§,!x§(_loc4_);
         }
         if(_loc4_.§1!O§ > 0)
         {
            this.§%"@§ = _loc4_.§4"r§;
         }
         this.§6b§ &= ~§+"z§;
      }
      
      public function ClearForces() : void
      {
         var _loc1_:b2Body = this.§,!A§;
         while(_loc1_)
         {
            _loc1_.§#r§.§&"Q§();
            _loc1_.§?"4§ = 0;
            _loc1_ = _loc1_.§!"!§;
         }
      }
      
      public function §`!<§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§8t§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§@#J§ == null)
         {
            return;
         }
         this.§@#J§.§3"k§.graphics.clear();
         var _loc1_:uint = this.§@#J§.§0"k§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§;#F§)
         {
            _loc3_ = this.§,!A§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§%!L§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§56§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§8! §() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§56§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§8! §() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§56§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§56§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§56§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§!"!§;
               }
               _loc3_ = _loc3_.§!"!§;
            }
         }
         if(_loc1_ & b2DebugDraw.§'"l§)
         {
            _loc6_ = this.§%#J§;
            while(_loc6_)
            {
               this.§#"2§(_loc6_);
               _loc6_ = _loc6_.§!"!§;
            }
         }
         if(_loc1_ & b2DebugDraw.§@# §)
         {
            _loc16_ = this.§?`§;
            while(_loc16_)
            {
               _loc16_.§>"#§(this.§@#J§);
               _loc16_ = _loc16_.§!"!§;
            }
         }
         if(_loc1_ & b2DebugDraw.§]5§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§1P§.§'#H§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§?!@§();
               _loc19_ = _loc17_.§;"R§();
               _loc20_ = _loc18_.§8# §().§&!m§();
               _loc21_ = _loc19_.§8# §().§&!m§();
               this.§@#J§.§,"B§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§>!>§();
            }
         }
         if(_loc1_ & b2DebugDraw.§##Q§)
         {
            _loc7_ = this.§1P§.§7#U§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§,!A§;
            while(_loc3_)
            {
               if(_loc3_.§%!L§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§1"§(_loc4_.§4"t§);
                     _loc14_[0].Set(_loc22_.§1!,§.x,_loc22_.§1!,§.y);
                     _loc14_[1].Set(_loc22_.§ D§.x,_loc22_.§1!,§.y);
                     _loc14_[2].Set(_loc22_.§ D§.x,_loc22_.§ D§.y);
                     _loc14_[3].Set(_loc22_.§1!,§.x,_loc22_.§ D§.y);
                     this.§@#J§.§2=§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§>!>§();
                  }
               }
               _loc3_ = _loc3_.§>!>§();
            }
         }
         if(_loc1_ & b2DebugDraw.§>"v§)
         {
            _loc3_ = this.§,!A§;
            while(_loc3_)
            {
               (_loc11_ = §!!+§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§;#&§();
               this.§@#J§.§?!G§(_loc11_);
               _loc3_ = _loc3_.§!"!§;
            }
         }
      }
      
      public function QueryAABB(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§8t§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§1P§.§7#U§;
         broadPhase.§in§(WorldQueryWrapper,aabb);
      }
      
      public function §%"a§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§8t§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§?#S§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().GetTransform()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§^!D§();
         }
         broadPhase = this.§1P§.§7#U§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§in§(WorldQueryWrapper,aabb);
      }
      
      public function §-"g§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§8t§ = null;
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
         broadPhase = this.§1P§.§7#U§;
         var aabb:b2AABB = new b2AABB();
         aabb.§1!,§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§ D§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§in§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§8t§ = null;
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
            return param1.§%#8§;
         };
         broadPhase = this.§1P§.§7#U§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §9!%§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §+#]§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §^!&§() : b2Body
      {
         return this.§,!A§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§%#J§;
      }
      
      public function §9!K§() : b2Contact
      {
         return this.§'#H§;
      }
      
      public function §]#`§() : Boolean
      {
         return (this.§6b§ & §+"z§) > 0;
      }
      
      b2internal function §=#6§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§?`§;
         while(_loc3_)
         {
            _loc3_.Step(param1);
            _loc3_ = _loc3_.§!"!§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§"x§).§8#5§(this.§9#,§,this.§1N§,this.§5!I§,null,this.§1P§.§?O§,this.§"!k§);
         _loc2_ = this.§,!A§;
         while(_loc2_)
         {
            _loc2_.§6b§ &= ~b2Body.§96§;
            _loc2_ = _loc2_.§!"!§;
         }
         var _loc5_:b2Contact = this.§'#H§;
         while(_loc5_)
         {
            _loc5_.§6b§ &= ~b2Contact.§96§;
            _loc5_ = _loc5_.§!"!§;
         }
         var _loc6_:b2Joint = this.§%#J§;
         while(_loc6_)
         {
            _loc6_.§'!z§ = false;
            _loc6_ = _loc6_.§!"!§;
         }
         var _loc7_:int = this.§9#,§;
         var _loc8_:Vector.<b2Body> = this.§7I§;
         var _loc9_:b2Body = this.§,!A§;
         while(_loc9_)
         {
            if(!(_loc9_.§6b§ & b2Body.§96§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§%!L§() == false))
               {
                  if(_loc9_.§8! §() != b2Body.b2_staticBody)
                  {
                     _loc4_.§#u§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§6b§ |= b2Body.§96§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§%j§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§8! §() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§'#H§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§>"6§.§6b§ & b2Contact.§96§))
                              {
                                 if(!(_loc13_.§>"6§.§!W§() == true || _loc13_.§>"6§.§0"p§() == false || _loc13_.§>"6§.§[#B§() == false))
                                 {
                                    _loc4_.§`"Q§(_loc13_.§>"6§);
                                    _loc13_.§>"6§.§6b§ |= b2Contact.§96§;
                                    if(!((_loc12_ = _loc13_.other).§6b§ & b2Body.§96§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§6b§ |= b2Body.§96§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§]!D§;
                           }
                           _loc14_ = _loc2_.§%#J§;
                           while(_loc14_)
                           {
                              if(_loc14_.joint.§'!z§ != true)
                              {
                                 if((_loc12_ = _loc14_.other).§%!L§() != false)
                                 {
                                    _loc4_.§^#1§(_loc14_.joint);
                                    _loc14_.joint.§'!z§ = true;
                                    if(!(_loc12_.§6b§ & b2Body.§96§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§6b§ |= b2Body.§96§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§]!D§;
                           }
                        }
                     }
                     _loc4_.§=#6§(param1,this.§@!>§,this.§`";§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§9#,§)
                     {
                        _loc2_ = _loc4_.§%6§[_loc11_];
                        if(_loc2_.§8! §() == b2Body.b2_staticBody)
                        {
                           _loc2_.§6b§ &= ~b2Body.§96§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§!"!§;
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
         _loc2_ = this.§,!A§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§%!L§() == false))
            {
               if(_loc2_.§8! §() != b2Body.b2_staticBody)
               {
                  _loc2_.§7,§();
               }
            }
            _loc2_ = _loc2_.§!"!§;
         }
         this.§1P§.§7"D§();
      }
      
      b2internal function §,!x§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§"x§).§8#5§(this.§9#,§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§1P§.§?O§,this.§"!k§);
         var _loc10_:Vector.<b2Body> = §7!7§;
         _loc2_ = this.§,!A§;
         while(_loc2_)
         {
            _loc2_.§6b§ &= ~b2Body.§96§;
            _loc2_.m_sweep.§ #L§ = 0;
            _loc2_ = _loc2_.§!"!§;
         }
         _loc11_ = this.§'#H§;
         while(_loc11_)
         {
            _loc11_.§6b§ &= ~(b2Contact.§##R§ | b2Contact.§96§);
            _loc11_.§8"J§ = 1;
            _loc11_ = _loc11_.§!"!§;
         }
         _loc8_ = this.§%#J§;
         while(_loc8_)
         {
            _loc8_.§'!z§ = false;
            _loc8_ = _loc8_.§!"!§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§'#H§;
            while(_loc11_)
            {
               if(!(_loc11_.§!W§() == true || _loc11_.§0"p§() == false || _loc11_.§;!g§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§6b§ & b2Contact.§##R§)
                  {
                     _loc19_ = _loc11_.§8"J§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§8"Q§;
                     _loc4_ = _loc11_.§?# §;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§8! §() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§8! §() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr646:
                        _loc11_ = _loc11_.§!"!§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§ #L§;
                     if(_loc5_.m_sweep.§ #L§ < _loc6_.m_sweep.§ #L§)
                     {
                        _loc20_ = _loc6_.m_sweep.§ #L§;
                        _loc5_.m_sweep.§?!'§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§ #L§ < _loc5_.m_sweep.§ #L§)
                     {
                        _loc20_ = _loc5_.m_sweep.§ #L§;
                        _loc6_.m_sweep.§?!'§(_loc20_);
                     }
                     _loc19_ = _loc11_.§]"C§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§8"J§ = _loc19_;
                     _loc11_.§6b§ |= b2Contact.§##R§;
                     §§goto(addr646);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr646);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§8"Q§;
            _loc4_ = _loc12_.§?# §;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §;"`§.Set(_loc5_.m_sweep);
            §^=§.Set(_loc6_.m_sweep);
            _loc5_.§?!'§(_loc13_);
            _loc6_.§?!'§(_loc13_);
            _loc12_.§%!q§(this.§1P§.§?O§);
            _loc12_.§6b§ &= ~b2Contact.§##R§;
            if(_loc12_.§!W§() == true || _loc12_.§0"p§() == false)
            {
               _loc5_.m_sweep.Set(§;"`§);
               _loc6_.m_sweep.Set(§^=§);
               _loc5_.§`"a§();
               _loc6_.§`"a§();
            }
            else if(_loc12_.§[#B§() != false)
            {
               if((_loc14_ = _loc5_).§8! §() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§#u§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§6b§ |= b2Body.§96§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§%j§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§8! §() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§'#H§;
                     while(_loc7_)
                     {
                        if(_loc9_.§1N§ == _loc9_.§5"x§)
                        {
                           break;
                        }
                        if(!(_loc7_.§>"6§.§6b§ & b2Contact.§96§))
                        {
                           if(!(_loc7_.§>"6§.§!W§() == true || _loc7_.§>"6§.§0"p§() == false || _loc7_.§>"6§.§[#B§() == false))
                           {
                              _loc9_.§`"Q§(_loc7_.§>"6§);
                              _loc7_.§>"6§.§6b§ |= b2Contact.§96§;
                              if(!((_loc22_ = _loc7_.other).§6b§ & b2Body.§96§))
                              {
                                 if(_loc22_.§8! §() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§?!'§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§6b§ |= b2Body.§96§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§]!D§;
                     }
                     _loc21_ = _loc2_.§%#J§;
                     while(_loc21_)
                     {
                        if(_loc9_.§5!I§ != _loc9_.§=!I§)
                        {
                           if(_loc21_.joint.§'!z§ != true)
                           {
                              if((_loc22_ = _loc21_.other).§%!L§() != false)
                              {
                                 _loc9_.§^#1§(_loc21_.joint);
                                 _loc21_.joint.§'!z§ = true;
                                 if(!(_loc22_.§6b§ & b2Body.§96§))
                                 {
                                    if(_loc22_.§8! §() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§?!'§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§6b§ |= b2Body.§96§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§]!D§;
                     }
                  }
               }
               (_loc17_ = §;"C§).§-'§ = false;
               _loc17_.§1!O§ = (1 - _loc13_) * param1.§1!O§;
               _loc17_.§4"r§ = 1 / _loc17_.§1!O§;
               _loc17_.§8"]§ = 1;
               _loc17_.§,H§ = param1.§,H§;
               _loc17_.§5"A§ = param1.§5"A§;
               _loc9_.§,!x§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§9#,§)
               {
                  _loc2_ = _loc9_.§%6§[_loc18_];
                  _loc2_.§6b§ &= ~b2Body.§96§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§8! §() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§7,§();
                        _loc7_ = _loc2_.§'#H§;
                        while(_loc7_)
                        {
                           _loc7_.§>"6§.§6b§ &= ~b2Contact.§##R§;
                           _loc7_ = _loc7_.§]!D§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§1N§)
               {
                  _loc11_ = _loc9_.§+"C§[_loc18_];
                  _loc11_.§6b§ &= ~(b2Contact.§##R§ | b2Contact.§96§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§5!I§)
               {
                  (_loc8_ = _loc9_.§8!s§[_loc18_]).§'!z§ = false;
                  _loc18_++;
               }
               this.§1P§.§7"D§();
            }
         }
      }
      
      b2internal function §#"2§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§;!`§();
         var _loc3_:b2Body = param1.§8!'§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §@!]§;
         switch(param1.§%!9§)
         {
            case b2Joint.§83§:
               this.§@#J§.§,"B§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§ "j§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§-#6§();
               _loc13_ = _loc11_.§=!V§();
               this.§@#J§.§,"B§(_loc12_,_loc8_,_loc10_);
               this.§@#J§.§,"B§(_loc13_,_loc9_,_loc10_);
               this.§@#J§.§,"B§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§4#T§:
               this.§@#J§.§,"B§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§@#J§.§,"B§(_loc6_,_loc8_,_loc10_);
               }
               this.§@#J§.§,"B§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§@#J§.§,"B§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §56§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§%!9§)
         {
            case b2Shape.§;!T§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§""$§(param2,_loc4_.§&!i§);
               _loc6_ = _loc4_.§ "^§;
               _loc7_ = param2.R.col1;
               this.§@#J§.§=! §(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§ !7§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§4#_§();
               _loc11_ = _loc9_.§!"-§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§""$§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§@#J§.§3"<§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§5"l§:
               _loc13_ = param1 as b2EdgeShape;
               this.§@#J§.§,"B§(b2Math.§""$§(param2,_loc13_.GetVertex1()),b2Math.§""$§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

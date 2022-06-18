package §8#t§
{
   import §0"=§.*;
   import §0# §.*;
   import §0J§.*;
   import §?!h§.b2Controller;
   import §?!h§.b2ControllerEdge;
   import §[!3§.*;
   import §]!o§.*;
   import §`# §.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      protected static var §@#b§:b2Transform = new b2Transform();
      
      private static var §'$0§:b2Sweep = new b2Sweep();
      
      private static var §@#A§:b2Sweep = new b2Sweep();
      
      private static var §9W§:b2TimeStep = new b2TimeStep();
      
      private static var §04§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §6A§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §&!4§:Boolean;
      
      private static var §@3§:Boolean;
      
      public static const §`"H§:int = 1;
      
      public static const §;"u§:int = 2;
       
      
      private var §'!Z§:Vector.<b2Body>;
      
      b2internal var §;!O§:int;
      
      b2internal var §7"t§:b2ContactManager;
      
      private var §%$%§:b2ContactSolver;
      
      private var §""R§:b2Island;
      
      b2internal var §,!x§:b2Body;
      
      protected var §!#M§:b2Joint;
      
      b2internal var §<!t§:b2Contact;
      
      protected var §3$1§:int;
      
      b2internal var §@O§:int;
      
      protected var §!§:int;
      
      protected var §,,§:b2Controller;
      
      private var §]$A§:int;
      
      private var §&#x§:b2Vec2;
      
      private var §4!s§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §<!1§:b2DestructionListener;
      
      protected var §3!T§:b2DebugDraw;
      
      private var §%p§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§'!Z§ = new Vector.<b2Body>();
         this.§7"t§ = new b2ContactManager();
         this.§%$%§ = new b2ContactSolver();
         this.§""R§ = new b2Island();
         super();
         this.§<!1§ = null;
         this.§3!T§ = null;
         this.§,!x§ = null;
         this.§<!t§ = null;
         this.§!#M§ = null;
         this.§,,§ = null;
         this.§3$1§ = 0;
         this.§@O§ = 0;
         this.§!§ = 0;
         this.§]$A§ = 0;
         §&!4§ = true;
         §@3§ = true;
         this.§4!s§ = param2;
         this.§&#x§ = param1;
         this.§%p§ = 0;
         this.§7"t§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §,$D§(param1:b2DestructionListener) : void
      {
         this.§<!1§ = param1;
      }
      
      public function §4!m§(param1:b2ContactFilter) : void
      {
         this.§7"t§.§!"<§ = param1;
      }
      
      public function §3#W§(param1:b2ContactListener) : void
      {
         this.§7"t§.§ "]§ = param1;
      }
      
      public function §4!j§(param1:b2DebugDraw) : void
      {
         this.§3!T§ = param1;
      }
      
      public function §`!k§(param1:§"#O§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§"#O§ = this.§7"t§.§@!3§;
         this.§7"t§.§@!3§ = param1;
         var _loc3_:b2Body = this.§,!x§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§+z§;
            while(_loc4_)
            {
               _loc4_.§>#+§ = param1.§-"g§(_loc2_.§9!&§(_loc4_.§>#+§),_loc4_);
               _loc4_ = _loc4_.§0$9§;
            }
            _loc3_ = _loc3_.§0$9§;
         }
      }
      
      public function §5l§() : void
      {
         this.§7"t§.§@!3§.§5l§();
      }
      
      public function §["2§() : int
      {
         return this.§7"t§.§@!3§.§["2§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§@!Q§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§@!w§ = null;
         _loc2_.§0$9§ = this.§,!x§;
         if(this.§,!x§)
         {
            this.§,!x§.§@!w§ = _loc2_;
         }
         this.§,!x§ = _loc2_;
         ++this.§3$1§;
         return _loc2_;
      }
      
      public function DestroyBody(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§@!Q§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§!#M§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§0!>§;
            if(this.§<!1§)
            {
               this.§<!1§.§5"X§(_loc6_.joint);
            }
            this.§;"C§(_loc6_.joint);
         }
         var _loc3_:b2ControllerEdge = param1.§,,§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§""T§;
            _loc7_.§+"M§.§="o§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§<!t§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§0!>§;
            this.§7"t§.§-!2§(_loc8_.§?"B§);
         }
         param1.§<!t§ = null;
         var _loc5_:b2Fixture = param1.§+z§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§0$9§;
            if(this.§<!1§)
            {
               this.§<!1§.§^#Q§(_loc9_);
            }
            _loc9_.§<v§(this.§7"t§.§@!3§);
            _loc9_.§-!2§();
         }
         param1.§+z§ = null;
         param1.§`#v§ = 0;
         if(param1.§@!w§)
         {
            param1.§@!w§.§0$9§ = param1.§0$9§;
         }
         if(param1.§0$9§)
         {
            param1.§0$9§.§@!w§ = param1.§@!w§;
         }
         if(param1 == this.§,!x§)
         {
            this.§,!x§ = param1.§0$9§;
         }
         --this.§3$1§;
      }
      
      public function §9"^§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§9b§(param1,null);
         _loc2_.§@!w§ = null;
         _loc2_.§0$9§ = this.§!#M§;
         if(this.§!#M§)
         {
            this.§!#M§.§@!w§ = _loc2_;
         }
         this.§!#M§ = _loc2_;
         ++this.§!§;
         _loc2_.§[$-§.joint = _loc2_;
         _loc2_.§[$-§.§2#§ = _loc2_.§;$6§;
         _loc2_.§[$-§.§5§ = null;
         _loc2_.§[$-§.§0!>§ = _loc2_.§?#E§.§!#M§;
         if(_loc2_.§?#E§.§!#M§)
         {
            _loc2_.§?#E§.§!#M§.§5§ = _loc2_.§[$-§;
         }
         _loc2_.§?#E§.§!#M§ = _loc2_.§[$-§;
         _loc2_.§'a§.joint = _loc2_;
         _loc2_.§'a§.§2#§ = _loc2_.§?#E§;
         _loc2_.§'a§.§5§ = null;
         _loc2_.§'a§.§0!>§ = _loc2_.§;$6§.§!#M§;
         if(_loc2_.§;$6§.§!#M§)
         {
            _loc2_.§;$6§.§!#M§.§5§ = _loc2_.§'a§;
         }
         _loc2_.§;$6§.§!#M§ = _loc2_.§'a§;
         var _loc3_:b2Body = param1.§%#&§;
         var _loc4_:b2Body = param1.§8V§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§+$$§();
            while(_loc5_)
            {
               if(_loc5_.§2#§ == _loc3_)
               {
                  _loc5_.§?"B§.§?"8§();
               }
               _loc5_ = _loc5_.§0!>§;
            }
         }
         return _loc2_;
      }
      
      public function §;"C§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§6" §;
         if(param1.§@!w§)
         {
            param1.§@!w§.§0$9§ = param1.§0$9§;
         }
         if(param1.§0$9§)
         {
            param1.§0$9§.§@!w§ = param1.§@!w§;
         }
         if(param1 == this.§!#M§)
         {
            this.§!#M§ = param1.§0$9§;
         }
         var _loc3_:b2Body = param1.§?#E§;
         var _loc4_:b2Body = param1.§;$6§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§[$-§.§5§)
         {
            param1.§[$-§.§5§.§0!>§ = param1.§[$-§.§0!>§;
         }
         if(param1.§[$-§.§0!>§)
         {
            param1.§[$-§.§0!>§.§5§ = param1.§[$-§.§5§;
         }
         if(param1.§[$-§ == _loc3_.§!#M§)
         {
            _loc3_.§!#M§ = param1.§[$-§.§0!>§;
         }
         param1.§[$-§.§5§ = null;
         param1.§[$-§.§0!>§ = null;
         if(param1.§'a§.§5§)
         {
            param1.§'a§.§5§.§0!>§ = param1.§'a§.§0!>§;
         }
         if(param1.§'a§.§0!>§)
         {
            param1.§'a§.§0!>§.§5§ = param1.§'a§.§5§;
         }
         if(param1.§'a§ == _loc4_.§!#M§)
         {
            _loc4_.§!#M§ = param1.§'a§.§0!>§;
         }
         param1.§'a§.§5§ = null;
         param1.§'a§.§0!>§ = null;
         b2Joint.§-!2§(param1,null);
         --this.§!§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§+$$§();
            while(_loc5_)
            {
               if(_loc5_.§2#§ == _loc3_)
               {
                  _loc5_.§?"B§.§?"8§();
               }
               _loc5_ = _loc5_.§0!>§;
            }
         }
      }
      
      public function §5!U§(param1:b2Controller) : b2Controller
      {
         param1.§0$9§ = this.§,,§;
         param1.§@!w§ = null;
         this.§,,§ = param1;
         param1.m_world = this;
         ++this.§]$A§;
         return param1;
      }
      
      public function §&"F§(param1:b2Controller) : void
      {
         if(param1.§@!w§)
         {
            param1.§@!w§.§0$9§ = param1.§0$9§;
         }
         if(param1.§0$9§)
         {
            param1.§0$9§.§@!w§ = param1.§@!w§;
         }
         if(this.§,,§ == param1)
         {
            this.§,,§ = param1.§0$9§;
         }
         --this.§]$A§;
      }
      
      public function §&[§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§0$9§ = this.§,,§;
         param1.§@!w§ = null;
         if(this.§,,§)
         {
            this.§,,§.§@!w§ = param1;
         }
         this.§,,§ = param1;
         ++this.§]$A§;
         param1.m_world = this;
         return param1;
      }
      
      public function §]#7§(param1:b2Controller) : void
      {
         param1.§;"l§();
         if(param1.§0$9§)
         {
            param1.§0$9§.§@!w§ = param1.§@!w§;
         }
         if(param1.§@!w§)
         {
            param1.§@!w§.§0$9§ = param1.§0$9§;
         }
         if(param1 == this.§,,§)
         {
            this.§,,§ = param1.§0$9§;
         }
         --this.§]$A§;
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         §&!4§ = param1;
      }
      
      public function §-#[§(param1:Boolean) : void
      {
         §@3§ = param1;
      }
      
      public function §!!&§() : int
      {
         return this.§3$1§;
      }
      
      public function §7"8§() : int
      {
         return this.§!§;
      }
      
      public function §[#w§() : int
      {
         return this.§@O§;
      }
      
      public function SetGravity(param1:b2Vec2) : void
      {
         this.§&#x§ = param1;
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.§&#x§;
      }
      
      public function §#"d§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         if(this.§;!O§ & §`"H§)
         {
            this.§7"t§.§4!X§();
            this.§;!O§ &= ~§`"H§;
         }
         this.§;!O§ |= §;"u§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).dt = param1;
         _loc4_.§"#Q§ = param2;
         _loc4_.§2#U§ = param3;
         if(param1 > 0)
         {
            _loc4_.§`"7§ = 1 / param1;
         }
         else
         {
            _loc4_.§`"7§ = 0;
         }
         _loc4_.§9]§ = this.§%p§ * param1;
         _loc4_.§`#=§ = §&!4§;
         this.§7"t§.§,"_§();
         if(_loc4_.dt > 0)
         {
            this.§]<§(_loc4_);
         }
         if(§@3§ && _loc4_.dt > 0)
         {
            this.§?$C§(_loc4_);
         }
         if(_loc4_.dt > 0)
         {
            this.§%p§ = _loc4_.§`"7§;
         }
         this.§;!O§ &= ~§;"u§;
      }
      
      public function ClearForces() : void
      {
         var _loc1_:b2Body = this.§,!x§;
         while(_loc1_)
         {
            _loc1_.§[#T§.§5J§();
            _loc1_.§>p§ = 0;
            _loc1_ = _loc1_.§0$9§;
         }
      }
      
      public function §+"r§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§"#O§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§3!T§ == null)
         {
            return;
         }
         this.§3!T§.§^"@§.graphics.clear();
         var _loc1_:uint = this.§3!T§.§@!`§();
         new b2Vec2();
         new b2Vec2();
         new b2Vec2();
         new b2AABB();
         new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§]!B§)
         {
            _loc3_ = this.§,!x§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§6!1§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§>D§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§52§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§>D§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§52§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§>D§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§>D§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§>D§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§0$9§;
               }
               _loc3_ = _loc3_.§0$9§;
            }
         }
         if(_loc1_ & b2DebugDraw.§?!5§)
         {
            _loc6_ = this.§!#M§;
            while(_loc6_)
            {
               this.§7"v§(_loc6_);
               _loc6_ = _loc6_.§0$9§;
            }
         }
         if(_loc1_ & b2DebugDraw.§&!Y§)
         {
            _loc16_ = this.§,,§;
            while(_loc16_)
            {
               _loc16_.§7!<§(this.§3!T§);
               _loc16_ = _loc16_.§0$9§;
            }
         }
         if(_loc1_ & b2DebugDraw.§;!D§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§7"t§.§<!t§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§7"-§();
               _loc19_ = _loc17_.§5"7§();
               _loc20_ = _loc18_.§<4§().§&p§();
               _loc21_ = _loc19_.§<4§().§&p§();
               this.§3!T§.§;$D§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§+c§();
            }
         }
         if(_loc1_ & b2DebugDraw.§[!Y§)
         {
            _loc7_ = this.§7"t§.§@!3§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§,!x§;
            while(_loc3_)
            {
               if(_loc3_.§6!1§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§9!&§(_loc4_.§>#+§);
                     _loc14_[0].Set(_loc22_.§3"]§.x,_loc22_.§3"]§.y);
                     _loc14_[1].Set(_loc22_.§='§.x,_loc22_.§3"]§.y);
                     _loc14_[2].Set(_loc22_.§='§.x,_loc22_.§='§.y);
                     _loc14_[3].Set(_loc22_.§3"]§.x,_loc22_.§='§.y);
                     this.§3!T§.§4#%§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§+c§();
                  }
               }
               _loc3_ = _loc3_.§+c§();
            }
         }
         if(_loc1_ & b2DebugDraw.§+8§)
         {
            _loc3_ = this.§,!x§;
            while(_loc3_)
            {
               (_loc11_ = §@#b§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§3!T§.§2!f§(_loc11_);
               _loc3_ = _loc3_.§0$9§;
            }
         }
      }
      
      public function §63§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§"#O§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§7"t§.§@!3§;
         broadPhase.§0!8§(WorldQueryWrapper,aabb);
      }
      
      public function §4!&§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§"#O§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§!"5§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().GetTransform()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§5!L§();
         }
         broadPhase = this.§7"t§.§@!3§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§0!8§(WorldQueryWrapper,aabb);
      }
      
      public function §^!e§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§"#O§ = null;
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
         broadPhase = this.§7"t§.§@!3§;
         var aabb:b2AABB = new b2AABB();
         aabb.§3"]§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§='§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§0!8§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§"#O§ = null;
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
            var _loc4_:b2Fixture;
            if((_loc4_ = _loc3_ as b2Fixture).RayCast(output,param1))
            {
               _loc6_ = output.fraction;
               _loc7_ = new b2Vec2((1 - _loc6_) * point1.x + _loc6_ * point2.x,(1 - _loc6_) * point1.y + _loc6_ * point2.y);
               return callback(_loc4_,_loc7_,output.normal,_loc6_);
            }
            return param1.§6!I§;
         };
         broadPhase = this.§7"t§.§@!3§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §7$#§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §4"h§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §4!J§() : b2Body
      {
         return this.§,!x§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§!#M§;
      }
      
      public function §+$$§() : b2Contact
      {
         return this.§<!t§;
      }
      
      public function §@!Q§() : Boolean
      {
         return (this.§;!O§ & §;"u§) > 0;
      }
      
      b2internal function §]<§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§,,§;
         while(_loc3_)
         {
            _loc3_.Step(param1);
            _loc3_ = _loc3_.§0$9§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§""R§).§7##§(this.§3$1§,this.§@O§,this.§!§,null,this.§7"t§.§ "]§,this.§%$%§);
         _loc2_ = this.§,!x§;
         while(_loc2_)
         {
            _loc2_.§;!O§ &= ~b2Body.§'#L§;
            _loc2_ = _loc2_.§0$9§;
         }
         var _loc5_:b2Contact = this.§<!t§;
         while(_loc5_)
         {
            _loc5_.§;!O§ &= ~b2Contact.§'#L§;
            _loc5_ = _loc5_.§0$9§;
         }
         var _loc6_:b2Joint = this.§!#M§;
         while(_loc6_)
         {
            _loc6_.§,!U§ = false;
            _loc6_ = _loc6_.§0$9§;
         }
         int(this.§3$1§);
         var _loc8_:Vector.<b2Body> = this.§'!Z§;
         var _loc9_:b2Body = this.§,!x§;
         while(_loc9_)
         {
            if(!(_loc9_.§;!O§ & b2Body.§'#L§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§6!1§() == false))
               {
                  if(_loc9_.§52§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§;"l§();
                     _loc10_ = 0;
                     _loc8_[_loc10_++] = _loc9_;
                     _loc9_.§;!O§ |= b2Body.§'#L§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§ ?§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§52§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§<!t§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§?"B§.§;!O§ & b2Contact.§'#L§))
                              {
                                 if(!(_loc13_.§?"B§.§?"]§() == true || _loc13_.§?"B§.§@!v§() == false || _loc13_.§?"B§.§9r§() == false))
                                 {
                                    _loc4_.§0"S§(_loc13_.§?"B§);
                                    _loc13_.§?"B§.§;!O§ |= b2Contact.§'#L§;
                                    if(!((_loc12_ = _loc13_.§2#§).§;!O§ & b2Body.§'#L§))
                                    {
                                       _loc8_[_loc10_++] = _loc12_;
                                       _loc12_.§;!O§ |= b2Body.§'#L§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§0!>§;
                           }
                           _loc14_ = _loc2_.§!#M§;
                           while(_loc14_)
                           {
                              if(_loc14_.joint.§,!U§ != true)
                              {
                                 if((_loc12_ = _loc14_.§2#§).§6!1§() != false)
                                 {
                                    _loc4_.§1!X§(_loc14_.joint);
                                    _loc14_.joint.§,!U§ = true;
                                    if(!(_loc12_.§;!O§ & b2Body.§'#L§))
                                    {
                                       _loc8_[_loc10_++] = _loc12_;
                                       _loc12_.§;!O§ |= b2Body.§'#L§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§0!>§;
                           }
                        }
                     }
                     _loc4_.§]<§(param1,this.§&#x§,this.§4!s§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§3$1§)
                     {
                        _loc2_ = _loc4_.§,"0§[_loc11_];
                        if(_loc2_.§52§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§;!O§ &= ~b2Body.§'#L§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§0$9§;
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
         _loc2_ = this.§,!x§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§6!1§() == false))
            {
               if(_loc2_.§52§() != b2Body.b2_staticBody)
               {
                  _loc2_.§8" §();
               }
            }
            _loc2_ = _loc2_.§0$9§;
         }
         this.§7"t§.§4!X§();
      }
      
      b2internal function §?$C§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§""R§).§7##§(this.§3$1§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§7"t§.§ "]§,this.§%$%§);
         var _loc10_:Vector.<b2Body> = §04§;
         _loc2_ = this.§,!x§;
         while(_loc2_)
         {
            _loc2_.§;!O§ &= ~b2Body.§'#L§;
            _loc2_.m_sweep.§>#2§ = 0;
            _loc2_ = _loc2_.§0$9§;
         }
         _loc11_ = this.§<!t§;
         while(_loc11_)
         {
            _loc11_.§;!O§ &= ~(b2Contact.§>E§ | b2Contact.§'#L§);
            _loc11_.§%"B§ = 1;
            _loc11_ = _loc11_.§0$9§;
         }
         _loc8_ = this.§!#M§;
         while(_loc8_)
         {
            _loc8_.§,!U§ = false;
            _loc8_ = _loc8_.§0$9§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§<!t§;
            while(_loc11_)
            {
               if(!(_loc11_.§?"]§() == true || _loc11_.§@!v§() == false || _loc11_.§+$!§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§;!O§ & b2Contact.§>E§)
                  {
                     _loc19_ = _loc11_.§%"B§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§7";§;
                     _loc4_ = _loc11_.§4"J§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§52§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§52§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr597:
                        _loc11_ = _loc11_.§0$9§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§>#2§;
                     if(_loc5_.m_sweep.§>#2§ < _loc6_.m_sweep.§>#2§)
                     {
                        _loc20_ = _loc6_.m_sweep.§>#2§;
                        _loc5_.m_sweep.§=!&§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§>#2§ < _loc5_.m_sweep.§>#2§)
                     {
                        _loc20_ = _loc5_.m_sweep.§>#2§;
                        _loc6_.m_sweep.§=!&§(_loc20_);
                     }
                     _loc19_ = _loc11_.§5#%§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§%"B§ = _loc19_;
                     _loc11_.§;!O§ |= b2Contact.§>E§;
                     §§goto(addr597);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr597);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§7";§;
            _loc4_ = _loc12_.§4"J§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §'$0§.Set(_loc5_.m_sweep);
            §@#A§.Set(_loc6_.m_sweep);
            _loc5_.§=!&§(_loc13_);
            _loc6_.§=!&§(_loc13_);
            _loc12_.§-"$§(this.§7"t§.§ "]§);
            _loc12_.§;!O§ &= ~b2Contact.§>E§;
            if(_loc12_.§?"]§() == true || _loc12_.§@!v§() == false)
            {
               _loc5_.m_sweep.Set(§'$0§);
               _loc6_.m_sweep.Set(§@#A§);
               _loc5_.§8$0§();
               _loc6_.§8$0§();
            }
            else if(_loc12_.§9r§() != false)
            {
               if((_loc14_ = _loc5_).§52§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§;"l§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§;!O§ |= b2Body.§'#L§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§ ?§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§52§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§<!t§;
                     while(_loc7_)
                     {
                        if(_loc9_.§@O§ == _loc9_.§2#2§)
                        {
                           break;
                        }
                        if(!(_loc7_.§?"B§.§;!O§ & b2Contact.§'#L§))
                        {
                           if(!(_loc7_.§?"B§.§?"]§() == true || _loc7_.§?"B§.§@!v§() == false || _loc7_.§?"B§.§9r§() == false))
                           {
                              _loc9_.§0"S§(_loc7_.§?"B§);
                              _loc7_.§?"B§.§;!O§ |= b2Contact.§'#L§;
                              if(!((_loc22_ = _loc7_.§2#§).§;!O§ & b2Body.§'#L§))
                              {
                                 if(_loc22_.§52§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§=!&§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§;!O§ |= b2Body.§'#L§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§0!>§;
                     }
                     _loc21_ = _loc2_.§!#M§;
                     while(_loc21_)
                     {
                        if(_loc9_.§!§ != _loc9_.§0!g§)
                        {
                           if(_loc21_.joint.§,!U§ != true)
                           {
                              if((_loc22_ = _loc21_.§2#§).§6!1§() != false)
                              {
                                 _loc9_.§1!X§(_loc21_.joint);
                                 _loc21_.joint.§,!U§ = true;
                                 if(!(_loc22_.§;!O§ & b2Body.§'#L§))
                                 {
                                    if(_loc22_.§52§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§=!&§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§;!O§ |= b2Body.§'#L§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§0!>§;
                     }
                  }
               }
               (_loc17_ = §9W§).§`#=§ = false;
               _loc17_.dt = (1 - _loc13_) * param1.dt;
               _loc17_.§`"7§ = 1 / _loc17_.dt;
               _loc17_.§9]§ = 1;
               _loc17_.§"#Q§ = param1.§"#Q§;
               _loc17_.§2#U§ = param1.§2#U§;
               _loc9_.§?$C§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§3$1§)
               {
                  _loc2_ = _loc9_.§,"0§[_loc18_];
                  _loc2_.§;!O§ &= ~b2Body.§'#L§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§52§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§8" §();
                        _loc7_ = _loc2_.§<!t§;
                        while(_loc7_)
                        {
                           _loc7_.§?"B§.§;!O§ &= ~b2Contact.§>E§;
                           _loc7_ = _loc7_.§0!>§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§@O§)
               {
                  _loc11_ = _loc9_.§<!E§[_loc18_];
                  _loc11_.§;!O§ &= ~(b2Contact.§>E§ | b2Contact.§'#L§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§!§)
               {
                  (_loc8_ = _loc9_.§>$,§[_loc18_]).§,!U§ = false;
                  _loc18_++;
               }
               this.§7"t§.§4!X§();
            }
         }
      }
      
      b2internal function §7"v§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§&$#§();
         var _loc3_:b2Body = param1.§&!u§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §6A§;
         switch(param1.§'!A§)
         {
            case b2Joint.§-t§:
               this.§3!T§.§;$D§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§@!g§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§<!I§();
               _loc13_ = _loc11_.§!"2§();
               this.§3!T§.§;$D§(_loc12_,_loc8_,_loc10_);
               this.§3!T§.§;$D§(_loc13_,_loc9_,_loc10_);
               this.§3!T§.§;$D§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§?#z§:
               this.§3!T§.§;$D§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§3!T§.§;$D§(_loc6_,_loc8_,_loc10_);
               }
               this.§3!T§.§;$D§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§3!T§.§;$D§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §>D§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§'!A§)
         {
            case b2Shape.§=#T§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§=!t§(param2,_loc4_.§5!A§);
               _loc6_ = _loc4_.§,"k§;
               _loc7_ = param2.R.col1;
               this.§3!T§.§0#8§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§]#6§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§2$!§();
               _loc11_ = _loc9_.§[f§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§=!t§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§3!T§.§+"!§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§+v§:
               _loc13_ = param1 as b2EdgeShape;
               this.§3!T§.§;$D§(b2Math.§=!t§(param2,_loc13_.GetVertex1()),b2Math.§=!t§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

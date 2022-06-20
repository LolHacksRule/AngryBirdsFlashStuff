package §3#h§
{
   import §,!T§.*;
   import §1#F§.*;
   import §5$C§.b2Controller;
   import §5$C§.b2ControllerEdge;
   import §5v§.*;
   import §6!R§.*;
   import §6"0§.*;
   import §9$A§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      protected static var §!"#§:b2Transform = new b2Transform();
      
      private static var §@#z§:b2Sweep = new b2Sweep();
      
      private static var §7#U§:b2Sweep = new b2Sweep();
      
      private static var §9!]§:b2TimeStep = new b2TimeStep();
      
      private static var §"P§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §;[§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §6!u§:Boolean;
      
      private static var §+!W§:Boolean;
      
      public static const §3",§:int = 1;
      
      public static const §7$§:int = 2;
       
      
      private var §["9§:Vector.<b2Body>;
      
      b2internal var §#!E§:int;
      
      b2internal var §@k§:b2ContactManager;
      
      private var §7#4§:b2ContactSolver;
      
      private var §4#j§:b2Island;
      
      b2internal var §`I§:b2Body;
      
      protected var §+"C§:b2Joint;
      
      b2internal var §?!Q§:b2Contact;
      
      protected var §[!a§:int;
      
      b2internal var §%8§:int;
      
      protected var §1#i§:int;
      
      protected var §`#6§:b2Controller;
      
      private var §4"5§:int;
      
      private var §!"+§:b2Vec2;
      
      private var §<c§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §#$'§:b2DestructionListener;
      
      protected var §3" §:b2DebugDraw;
      
      private var §@# §:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§["9§ = new Vector.<b2Body>();
         this.§@k§ = new b2ContactManager();
         this.§7#4§ = new b2ContactSolver();
         this.§4#j§ = new b2Island();
         super();
         this.§#$'§ = null;
         this.§3" § = null;
         this.§`I§ = null;
         this.§?!Q§ = null;
         this.§+"C§ = null;
         this.§`#6§ = null;
         this.§[!a§ = 0;
         this.§%8§ = 0;
         this.§1#i§ = 0;
         this.§4"5§ = 0;
         §6!u§ = true;
         §+!W§ = true;
         this.§<c§ = param2;
         this.§!"+§ = param1;
         this.§@# § = 0;
         this.§@k§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function § "n§(param1:b2DestructionListener) : void
      {
         this.§#$'§ = param1;
      }
      
      public function §3$"§(param1:b2ContactFilter) : void
      {
         this.§@k§.§24§ = param1;
      }
      
      public function §3"&§(param1:b2ContactListener) : void
      {
         this.§@k§.§8#<§ = param1;
      }
      
      public function §<"%§(param1:b2DebugDraw) : void
      {
         this.§3" § = param1;
      }
      
      public function §6#7§(param1:§]"-§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§]"-§ = this.§@k§.§4g§;
         this.§@k§.§4g§ = param1;
         var _loc3_:b2Body = this.§`I§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§!!,§;
            while(_loc4_)
            {
               _loc4_.§@#s§ = param1.§^$7§(_loc2_.§%V§(_loc4_.§@#s§),_loc4_);
               _loc4_ = _loc4_.§7<§;
            }
            _loc3_ = _loc3_.§7<§;
         }
      }
      
      public function §!!W§() : void
      {
         this.§@k§.§4g§.§!!W§();
      }
      
      public function §3!o§() : int
      {
         return this.§@k§.§4g§.§3!o§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§5"X§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§2Y§ = null;
         _loc2_.§7<§ = this.§`I§;
         if(this.§`I§)
         {
            this.§`I§.§2Y§ = _loc2_;
         }
         this.§`I§ = _loc2_;
         ++this.§[!a§;
         return _loc2_;
      }
      
      public function DestroyBody(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§5"X§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§+"C§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.next;
            if(this.§#$'§)
            {
               this.§#$'§.§;"B§(_loc6_.joint);
            }
            this.§<"<§(_loc6_.joint);
         }
         var _loc3_:b2ControllerEdge = param1.§`#6§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§8#5§;
            _loc7_.§-#W§.§4!R§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§?!Q§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.next;
            this.§@k§.§0"y§(_loc8_.§&$-§);
         }
         param1.§?!Q§ = null;
         var _loc5_:b2Fixture = param1.§!!,§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§7<§;
            if(this.§#$'§)
            {
               this.§#$'§.§2"<§(_loc9_);
            }
            _loc9_.§@!v§(this.§@k§.§4g§);
            _loc9_.§0"y§();
         }
         param1.§!!,§ = null;
         param1.§!!p§ = 0;
         if(param1.§2Y§)
         {
            param1.§2Y§.§7<§ = param1.§7<§;
         }
         if(param1.§7<§)
         {
            param1.§7<§.§2Y§ = param1.§2Y§;
         }
         if(param1 == this.§`I§)
         {
            this.§`I§ = param1.§7<§;
         }
         --this.§[!a§;
      }
      
      public function §@Z§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§'#q§(param1,null);
         _loc2_.§2Y§ = null;
         _loc2_.§7<§ = this.§+"C§;
         if(this.§+"C§)
         {
            this.§+"C§.§2Y§ = _loc2_;
         }
         this.§+"C§ = _loc2_;
         ++this.§1#i§;
         _loc2_.§6!j§.joint = _loc2_;
         _loc2_.§6!j§.§5"&§ = _loc2_.§ #q§;
         _loc2_.§6!j§.§^!p§ = null;
         _loc2_.§6!j§.next = _loc2_.§ ?§.§+"C§;
         if(_loc2_.§ ?§.§+"C§)
         {
            _loc2_.§ ?§.§+"C§.§^!p§ = _loc2_.§6!j§;
         }
         _loc2_.§ ?§.§+"C§ = _loc2_.§6!j§;
         _loc2_.§@!]§.joint = _loc2_;
         _loc2_.§@!]§.§5"&§ = _loc2_.§ ?§;
         _loc2_.§@!]§.§^!p§ = null;
         _loc2_.§@!]§.next = _loc2_.§ #q§.§+"C§;
         if(_loc2_.§ #q§.§+"C§)
         {
            _loc2_.§ #q§.§+"C§.§^!p§ = _loc2_.§@!]§;
         }
         _loc2_.§ #q§.§+"C§ = _loc2_.§@!]§;
         var _loc3_:b2Body = param1.§,E§;
         var _loc4_:b2Body = param1.§&$7§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§`!V§();
            while(_loc5_)
            {
               if(_loc5_.§5"&§ == _loc3_)
               {
                  _loc5_.§&$-§.§4"[§();
               }
               _loc5_ = _loc5_.next;
            }
         }
         return _loc2_;
      }
      
      public function §<"<§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§##h§;
         if(param1.§2Y§)
         {
            param1.§2Y§.§7<§ = param1.§7<§;
         }
         if(param1.§7<§)
         {
            param1.§7<§.§2Y§ = param1.§2Y§;
         }
         if(param1 == this.§+"C§)
         {
            this.§+"C§ = param1.§7<§;
         }
         var _loc3_:b2Body = param1.§ ?§;
         var _loc4_:b2Body = param1.§ #q§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§6!j§.§^!p§)
         {
            param1.§6!j§.§^!p§.next = param1.§6!j§.next;
         }
         if(param1.§6!j§.next)
         {
            param1.§6!j§.next.§^!p§ = param1.§6!j§.§^!p§;
         }
         if(param1.§6!j§ == _loc3_.§+"C§)
         {
            _loc3_.§+"C§ = param1.§6!j§.next;
         }
         param1.§6!j§.§^!p§ = null;
         param1.§6!j§.next = null;
         if(param1.§@!]§.§^!p§)
         {
            param1.§@!]§.§^!p§.next = param1.§@!]§.next;
         }
         if(param1.§@!]§.next)
         {
            param1.§@!]§.next.§^!p§ = param1.§@!]§.§^!p§;
         }
         if(param1.§@!]§ == _loc4_.§+"C§)
         {
            _loc4_.§+"C§ = param1.§@!]§.next;
         }
         param1.§@!]§.§^!p§ = null;
         param1.§@!]§.next = null;
         b2Joint.§0"y§(param1,null);
         --this.§1#i§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§`!V§();
            while(_loc5_)
            {
               if(_loc5_.§5"&§ == _loc3_)
               {
                  _loc5_.§&$-§.§4"[§();
               }
               _loc5_ = _loc5_.next;
            }
         }
      }
      
      public function §#!D§(param1:b2Controller) : b2Controller
      {
         param1.§7<§ = this.§`#6§;
         param1.§2Y§ = null;
         this.§`#6§ = param1;
         param1.m_world = this;
         ++this.§4"5§;
         return param1;
      }
      
      public function §2"E§(param1:b2Controller) : void
      {
         if(param1.§2Y§)
         {
            param1.§2Y§.§7<§ = param1.§7<§;
         }
         if(param1.§7<§)
         {
            param1.§7<§.§2Y§ = param1.§2Y§;
         }
         if(this.§`#6§ == param1)
         {
            this.§`#6§ = param1.§7<§;
         }
         --this.§4"5§;
      }
      
      public function §&#0§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§7<§ = this.§`#6§;
         param1.§2Y§ = null;
         if(this.§`#6§)
         {
            this.§`#6§.§2Y§ = param1;
         }
         this.§`#6§ = param1;
         ++this.§4"5§;
         param1.m_world = this;
         return param1;
      }
      
      public function §6"m§(param1:b2Controller) : void
      {
         param1.§[!U§();
         if(param1.§7<§)
         {
            param1.§7<§.§2Y§ = param1.§2Y§;
         }
         if(param1.§2Y§)
         {
            param1.§2Y§.§7<§ = param1.§7<§;
         }
         if(param1 == this.§`#6§)
         {
            this.§`#6§ = param1.§7<§;
         }
         --this.§4"5§;
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         §6!u§ = param1;
      }
      
      public function §5!j§(param1:Boolean) : void
      {
         §+!W§ = param1;
      }
      
      public function §@"O§() : int
      {
         return this.§[!a§;
      }
      
      public function §&5§() : int
      {
         return this.§1#i§;
      }
      
      public function §6;§() : int
      {
         return this.§%8§;
      }
      
      public function SetGravity(param1:b2Vec2) : void
      {
         this.§!"+§ = param1;
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.§!"+§;
      }
      
      public function §9"O§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         if(this.§#!E§ & §3",§)
         {
            this.§@k§.§;!;§();
            this.§#!E§ &= ~§3",§;
         }
         this.§#!E§ |= §7$§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).dt = param1;
         _loc4_.§^#%§ = param2;
         _loc4_.§27§ = param3;
         if(param1 > 0)
         {
            _loc4_.§;#R§ = 1 / param1;
         }
         else
         {
            _loc4_.§;#R§ = 0;
         }
         _loc4_.§1$5§ = this.§@# § * param1;
         _loc4_.§+L§ = §6!u§;
         this.§@k§.§@#_§();
         if(_loc4_.dt > 0)
         {
            this.§5R§(_loc4_);
         }
         if(§+!W§ && _loc4_.dt > 0)
         {
            this.§?"M§(_loc4_);
         }
         if(_loc4_.dt > 0)
         {
            this.§@# § = _loc4_.§;#R§;
         }
         this.§#!E§ &= ~§7$§;
      }
      
      public function ClearForces() : void
      {
         var _loc1_:b2Body = this.§`I§;
         while(_loc1_)
         {
            _loc1_.§2#A§.§%"N§();
            _loc1_.§5"S§ = 0;
            _loc1_ = _loc1_.§7<§;
         }
      }
      
      public function §6!9§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§]"-§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§3" § == null)
         {
            return;
         }
         this.§3" §.§'h§.graphics.clear();
         var _loc1_:uint = this.§3" §.§%"2§();
         new b2Vec2();
         new b2Vec2();
         new b2Vec2();
         new b2AABB();
         new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§ !m§)
         {
            _loc3_ = this.§`I§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§1!a§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§+$?§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§!"k§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§+$?§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§!"k§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§+$?§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§+$?§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§+$?§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§7<§;
               }
               _loc3_ = _loc3_.§7<§;
            }
         }
         if(_loc1_ & b2DebugDraw.§#!V§)
         {
            _loc6_ = this.§+"C§;
            while(_loc6_)
            {
               this.§=y§(_loc6_);
               _loc6_ = _loc6_.§7<§;
            }
         }
         if(_loc1_ & b2DebugDraw.§-"4§)
         {
            _loc16_ = this.§`#6§;
            while(_loc16_)
            {
               _loc16_.§>#6§(this.§3" §);
               _loc16_ = _loc16_.§7<§;
            }
         }
         if(_loc1_ & b2DebugDraw.§<#9§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§@k§.§?!Q§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§#"^§();
               _loc19_ = _loc17_.§4$E§();
               _loc20_ = _loc18_.§4!E§().§8#p§();
               _loc21_ = _loc19_.§4!E§().§8#p§();
               this.§3" §.§;#I§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§6"t§();
            }
         }
         if(_loc1_ & b2DebugDraw.§&w§)
         {
            _loc7_ = this.§@k§.§4g§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§`I§;
            while(_loc3_)
            {
               if(_loc3_.§1!a§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§%V§(_loc4_.§@#s§);
                     _loc14_[0].Set(_loc22_.§4#1§.x,_loc22_.§4#1§.y);
                     _loc14_[1].Set(_loc22_.§,!W§.x,_loc22_.§4#1§.y);
                     _loc14_[2].Set(_loc22_.§,!W§.x,_loc22_.§,!W§.y);
                     _loc14_[3].Set(_loc22_.§4#1§.x,_loc22_.§,!W§.y);
                     this.§3" §.§%"3§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§6"t§();
                  }
               }
               _loc3_ = _loc3_.§6"t§();
            }
         }
         if(_loc1_ & b2DebugDraw.§3#3§)
         {
            _loc3_ = this.§`I§;
            while(_loc3_)
            {
               (_loc11_ = §!"#§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§3" §.§ !2§(_loc11_);
               _loc3_ = _loc3_.§7<§;
            }
         }
      }
      
      public function §3!9§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§]"-§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§@k§.§4g§;
         broadPhase.§ "^§(WorldQueryWrapper,aabb);
      }
      
      public function §-=§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§]"-§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§!"j§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().GetTransform()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§7%§();
         }
         broadPhase = this.§@k§.§4g§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§ "^§(WorldQueryWrapper,aabb);
      }
      
      public function §2#;§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§]"-§ = null;
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
         broadPhase = this.§@k§.§4g§;
         var aabb:b2AABB = new b2AABB();
         aabb.§4#1§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§,!W§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§ "^§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§]"-§ = null;
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
            return param1.§4$$§;
         };
         broadPhase = this.§@k§.§4g§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §!Z§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §5#D§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §3"!§() : b2Body
      {
         return this.§`I§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§+"C§;
      }
      
      public function §`!V§() : b2Contact
      {
         return this.§?!Q§;
      }
      
      public function §5"X§() : Boolean
      {
         return (this.§#!E§ & §7$§) > 0;
      }
      
      b2internal function §5R§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§`#6§;
         while(_loc3_)
         {
            _loc3_.Step(param1);
            _loc3_ = _loc3_.§7<§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§4#j§).§80§(this.§[!a§,this.§%8§,this.§1#i§,null,this.§@k§.§8#<§,this.§7#4§);
         _loc2_ = this.§`I§;
         while(_loc2_)
         {
            _loc2_.§#!E§ &= ~b2Body.§#"L§;
            _loc2_ = _loc2_.§7<§;
         }
         var _loc5_:b2Contact = this.§?!Q§;
         while(_loc5_)
         {
            _loc5_.§#!E§ &= ~b2Contact.§#"L§;
            _loc5_ = _loc5_.§7<§;
         }
         var _loc6_:b2Joint = this.§+"C§;
         while(_loc6_)
         {
            _loc6_.§-!5§ = false;
            _loc6_ = _loc6_.§7<§;
         }
         int(this.§[!a§);
         var _loc8_:Vector.<b2Body> = this.§["9§;
         var _loc9_:b2Body = this.§`I§;
         while(_loc9_)
         {
            if(!(_loc9_.§#!E§ & b2Body.§#"L§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§1!a§() == false))
               {
                  if(_loc9_.§!"k§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§[!U§();
                     _loc10_ = 0;
                     _loc8_[_loc10_++] = _loc9_;
                     _loc9_.§#!E§ |= b2Body.§#"L§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§0q§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§!"k§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§?!Q§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§&$-§.§#!E§ & b2Contact.§#"L§))
                              {
                                 if(!(_loc13_.§&$-§.§9D§() == true || _loc13_.§&$-§.§%#I§() == false || _loc13_.§&$-§.§;#9§() == false))
                                 {
                                    _loc4_.§<h§(_loc13_.§&$-§);
                                    _loc13_.§&$-§.§#!E§ |= b2Contact.§#"L§;
                                    if(!((_loc12_ = _loc13_.§5"&§).§#!E§ & b2Body.§#"L§))
                                    {
                                       _loc8_[_loc10_++] = _loc12_;
                                       _loc12_.§#!E§ |= b2Body.§#"L§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.next;
                           }
                           _loc14_ = _loc2_.§+"C§;
                           while(_loc14_)
                           {
                              if(_loc14_.joint.§-!5§ != true)
                              {
                                 if((_loc12_ = _loc14_.§5"&§).§1!a§() != false)
                                 {
                                    _loc4_.§#"A§(_loc14_.joint);
                                    _loc14_.joint.§-!5§ = true;
                                    if(!(_loc12_.§#!E§ & b2Body.§#"L§))
                                    {
                                       _loc8_[_loc10_++] = _loc12_;
                                       _loc12_.§#!E§ |= b2Body.§#"L§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.next;
                           }
                        }
                     }
                     _loc4_.§5R§(param1,this.§!"+§,this.§<c§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§[!a§)
                     {
                        _loc2_ = _loc4_.§%!H§[_loc11_];
                        if(_loc2_.§!"k§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§#!E§ &= ~b2Body.§#"L§;
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
         _loc2_ = this.§`I§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§1!a§() == false))
            {
               if(_loc2_.§!"k§() != b2Body.b2_staticBody)
               {
                  _loc2_.§ #U§();
               }
            }
            _loc2_ = _loc2_.§7<§;
         }
         this.§@k§.§;!;§();
      }
      
      b2internal function §?"M§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§4#j§).§80§(this.§[!a§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§@k§.§8#<§,this.§7#4§);
         var _loc10_:Vector.<b2Body> = §"P§;
         _loc2_ = this.§`I§;
         while(_loc2_)
         {
            _loc2_.§#!E§ &= ~b2Body.§#"L§;
            _loc2_.m_sweep.§1!U§ = 0;
            _loc2_ = _loc2_.§7<§;
         }
         _loc11_ = this.§?!Q§;
         while(_loc11_)
         {
            _loc11_.§#!E§ &= ~(b2Contact.§-s§ | b2Contact.§#"L§);
            _loc11_.§+#]§ = 1;
            _loc11_ = _loc11_.§7<§;
         }
         _loc8_ = this.§+"C§;
         while(_loc8_)
         {
            _loc8_.§-!5§ = false;
            _loc8_ = _loc8_.§7<§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§?!Q§;
            while(_loc11_)
            {
               if(!(_loc11_.§9D§() == true || _loc11_.§%#I§() == false || _loc11_.§7#m§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§#!E§ & b2Contact.§-s§)
                  {
                     _loc19_ = _loc11_.§+#]§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§#";§;
                     _loc4_ = _loc11_.§0#0§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§!"k§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§!"k§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr597:
                        _loc11_ = _loc11_.§7<§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§1!U§;
                     if(_loc5_.m_sweep.§1!U§ < _loc6_.m_sweep.§1!U§)
                     {
                        _loc20_ = _loc6_.m_sweep.§1!U§;
                        _loc5_.m_sweep.§2#Q§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§1!U§ < _loc5_.m_sweep.§1!U§)
                     {
                        _loc20_ = _loc5_.m_sweep.§1!U§;
                        _loc6_.m_sweep.§2#Q§(_loc20_);
                     }
                     _loc19_ = _loc11_.§";§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§+#]§ = _loc19_;
                     _loc11_.§#!E§ |= b2Contact.§-s§;
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
            _loc3_ = _loc12_.§#";§;
            _loc4_ = _loc12_.§0#0§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §@#z§.Set(_loc5_.m_sweep);
            §7#U§.Set(_loc6_.m_sweep);
            _loc5_.§2#Q§(_loc13_);
            _loc6_.§2#Q§(_loc13_);
            _loc12_.§&#`§(this.§@k§.§8#<§);
            _loc12_.§#!E§ &= ~b2Contact.§-s§;
            if(_loc12_.§9D§() == true || _loc12_.§%#I§() == false)
            {
               _loc5_.m_sweep.Set(§@#z§);
               _loc6_.m_sweep.Set(§7#U§);
               _loc5_.§[!C§();
               _loc6_.§[!C§();
            }
            else if(_loc12_.§;#9§() != false)
            {
               if((_loc14_ = _loc5_).§!"k§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§[!U§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§#!E§ |= b2Body.§#"L§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§0q§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§!"k§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§?!Q§;
                     while(_loc7_)
                     {
                        if(_loc9_.§%8§ == _loc9_.§8"I§)
                        {
                           break;
                        }
                        if(!(_loc7_.§&$-§.§#!E§ & b2Contact.§#"L§))
                        {
                           if(!(_loc7_.§&$-§.§9D§() == true || _loc7_.§&$-§.§%#I§() == false || _loc7_.§&$-§.§;#9§() == false))
                           {
                              _loc9_.§<h§(_loc7_.§&$-§);
                              _loc7_.§&$-§.§#!E§ |= b2Contact.§#"L§;
                              if(!((_loc22_ = _loc7_.§5"&§).§#!E§ & b2Body.§#"L§))
                              {
                                 if(_loc22_.§!"k§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§2#Q§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§#!E§ |= b2Body.§#"L§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.next;
                     }
                     _loc21_ = _loc2_.§+"C§;
                     while(_loc21_)
                     {
                        if(_loc9_.§1#i§ != _loc9_.§3"y§)
                        {
                           if(_loc21_.joint.§-!5§ != true)
                           {
                              if((_loc22_ = _loc21_.§5"&§).§1!a§() != false)
                              {
                                 _loc9_.§#"A§(_loc21_.joint);
                                 _loc21_.joint.§-!5§ = true;
                                 if(!(_loc22_.§#!E§ & b2Body.§#"L§))
                                 {
                                    if(_loc22_.§!"k§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§2#Q§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§#!E§ |= b2Body.§#"L§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.next;
                     }
                  }
               }
               (_loc17_ = §9!]§).§+L§ = false;
               _loc17_.dt = (1 - _loc13_) * param1.dt;
               _loc17_.§;#R§ = 1 / _loc17_.dt;
               _loc17_.§1$5§ = 1;
               _loc17_.§^#%§ = param1.§^#%§;
               _loc17_.§27§ = param1.§27§;
               _loc9_.§?"M§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§[!a§)
               {
                  _loc2_ = _loc9_.§%!H§[_loc18_];
                  _loc2_.§#!E§ &= ~b2Body.§#"L§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§!"k§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§ #U§();
                        _loc7_ = _loc2_.§?!Q§;
                        while(_loc7_)
                        {
                           _loc7_.§&$-§.§#!E§ &= ~b2Contact.§-s§;
                           _loc7_ = _loc7_.next;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§%8§)
               {
                  _loc11_ = _loc9_.§1!#§[_loc18_];
                  _loc11_.§#!E§ &= ~(b2Contact.§-s§ | b2Contact.§#"L§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§1#i§)
               {
                  (_loc8_ = _loc9_.§2p§[_loc18_]).§-!5§ = false;
                  _loc18_++;
               }
               this.§@k§.§;!;§();
            }
         }
      }
      
      b2internal function §=y§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§""V§();
         var _loc3_:b2Body = param1.§""?§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §;[§;
         switch(param1.§ "u§)
         {
            case b2Joint.§9"w§:
               this.§3" §.§;#I§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§5"J§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§4w§();
               _loc13_ = _loc11_.§]$0§();
               this.§3" §.§;#I§(_loc12_,_loc8_,_loc10_);
               this.§3" §.§;#I§(_loc13_,_loc9_,_loc10_);
               this.§3" §.§;#I§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§=#+§:
               this.§3" §.§;#I§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§3" §.§;#I§(_loc6_,_loc8_,_loc10_);
               }
               this.§3" §.§;#I§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§3" §.§;#I§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §+$?§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§ "u§)
         {
            case b2Shape.§?#n§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§6#k§(param2,_loc4_.§>4§);
               _loc6_ = _loc4_.§?#o§;
               _loc7_ = param2.R.col1;
               this.§3" §.§!b§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§!"Q§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§4#g§();
               _loc11_ = _loc9_.§;"j§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§6#k§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§3" §.§ #h§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§ #W§:
               _loc13_ = param1 as b2EdgeShape;
               this.§3" §.§;#I§(b2Math.§6#k§(param2,_loc13_.GetVertex1()),b2Math.§6#k§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

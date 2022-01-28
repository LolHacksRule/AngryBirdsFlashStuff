package §@!S§
{
   import § !g§.b2Controller;
   import § !g§.b2ControllerEdge;
   import §!H§.*;
   import §1#]§.*;
   import §2_§.*;
   import §4$E§.*;
   import §?!C§.*;
   import §?N§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      protected static var §"#]§:b2Transform = new b2Transform();
      
      private static var §>"t§:b2Sweep = new b2Sweep();
      
      private static var §default§:b2Sweep = new b2Sweep();
      
      private static var §3"N§:b2TimeStep = new b2TimeStep();
      
      private static var §=A§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §9e§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §##Q§:Boolean;
      
      private static var §4"n§:Boolean;
      
      public static const §?$!§:int = 1;
      
      public static const §2C§:int = 2;
       
      
      private var §]$2§:Vector.<b2Body>;
      
      b2internal var §!#z§:int;
      
      b2internal var §@"<§:b2ContactManager;
      
      private var §`#c§:b2ContactSolver;
      
      private var §[!h§:b2Island;
      
      b2internal var §<P§:b2Body;
      
      protected var §@"G§:b2Joint;
      
      b2internal var §<!a§:b2Contact;
      
      protected var §^#[§:int;
      
      b2internal var §=!D§:int;
      
      protected var §%N§:int;
      
      protected var §,!V§:b2Controller;
      
      private var §?#6§:int;
      
      private var §=!9§:b2Vec2;
      
      private var §2!L§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §^"A§:b2DestructionListener;
      
      protected var §`";§:b2DebugDraw;
      
      private var §9"S§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§]$2§ = new Vector.<b2Body>();
         this.§@"<§ = new b2ContactManager();
         this.§`#c§ = new b2ContactSolver();
         this.§[!h§ = new b2Island();
         super();
         this.§^"A§ = null;
         this.§`";§ = null;
         this.§<P§ = null;
         this.§<!a§ = null;
         this.§@"G§ = null;
         this.§,!V§ = null;
         this.§^#[§ = 0;
         this.§=!D§ = 0;
         this.§%N§ = 0;
         this.§?#6§ = 0;
         §##Q§ = true;
         §4"n§ = true;
         this.§2!L§ = param2;
         this.§=!9§ = param1;
         this.§9"S§ = 0;
         this.§@"<§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §3a§(param1:b2DestructionListener) : void
      {
         this.§^"A§ = param1;
      }
      
      public function §9#u§(param1:b2ContactFilter) : void
      {
         this.§@"<§.§0!n§ = param1;
      }
      
      public function §=]§(param1:b2ContactListener) : void
      {
         this.§@"<§.§,!G§ = param1;
      }
      
      public function §"#R§(param1:b2DebugDraw) : void
      {
         this.§`";§ = param1;
      }
      
      public function §,!f§(param1:§2!I§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§2!I§ = this.§@"<§.§&# §;
         this.§@"<§.§&# § = param1;
         var _loc3_:b2Body = this.§<P§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§3D§;
            while(_loc4_)
            {
               _loc4_.§;_§ = param1.§@7§(_loc2_.§'"O§(_loc4_.§;_§),_loc4_);
               _loc4_ = _loc4_.§@W§;
            }
            _loc3_ = _loc3_.§@W§;
         }
      }
      
      public function §@$A§() : void
      {
         this.§@"<§.§&# §.§@$A§();
      }
      
      public function §if§() : int
      {
         return this.§@"<§.§&# §.§if§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§4"B§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§@"4§ = null;
         _loc2_.§@W§ = this.§<P§;
         if(this.§<P§)
         {
            this.§<P§.§@"4§ = _loc2_;
         }
         this.§<P§ = _loc2_;
         ++this.§^#[§;
         return _loc2_;
      }
      
      public function DestroyBody(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§4"B§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§@"G§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.next;
            if(this.§^"A§)
            {
               this.§^"A§.§7!Z§(_loc6_.joint);
            }
            this.§>"Q§(_loc6_.joint);
         }
         var _loc3_:b2ControllerEdge = param1.§,!V§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§1!4§;
            _loc7_.§ "'§.§`"q§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§<!a§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.next;
            this.§@"<§.§;"@§(_loc8_.§4E§);
         }
         param1.§<!a§ = null;
         var _loc5_:b2Fixture = param1.§3D§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§@W§;
            if(this.§^"A§)
            {
               this.§^"A§.§'$A§(_loc9_);
            }
            _loc9_.§=K§(this.§@"<§.§&# §);
            _loc9_.§;"@§();
         }
         param1.§3D§ = null;
         param1.§^$%§ = 0;
         if(param1.§@"4§)
         {
            param1.§@"4§.§@W§ = param1.§@W§;
         }
         if(param1.§@W§)
         {
            param1.§@W§.§@"4§ = param1.§@"4§;
         }
         if(param1 == this.§<P§)
         {
            this.§<P§ = param1.§@W§;
         }
         --this.§^#[§;
      }
      
      public function §8"u§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§,"h§(param1,null);
         _loc2_.§@"4§ = null;
         _loc2_.§@W§ = this.§@"G§;
         if(this.§@"G§)
         {
            this.§@"G§.§@"4§ = _loc2_;
         }
         this.§@"G§ = _loc2_;
         ++this.§%N§;
         _loc2_.§""V§.joint = _loc2_;
         _loc2_.§""V§.§import§ = _loc2_.§"$'§;
         _loc2_.§""V§.§!$%§ = null;
         _loc2_.§""V§.next = _loc2_.§]!"§.§@"G§;
         if(_loc2_.§]!"§.§@"G§)
         {
            _loc2_.§]!"§.§@"G§.§!$%§ = _loc2_.§""V§;
         }
         _loc2_.§]!"§.§@"G§ = _loc2_.§""V§;
         _loc2_.§4"r§.joint = _loc2_;
         _loc2_.§4"r§.§import§ = _loc2_.§]!"§;
         _loc2_.§4"r§.§!$%§ = null;
         _loc2_.§4"r§.next = _loc2_.§"$'§.§@"G§;
         if(_loc2_.§"$'§.§@"G§)
         {
            _loc2_.§"$'§.§@"G§.§!$%§ = _loc2_.§4"r§;
         }
         _loc2_.§"$'§.§@"G§ = _loc2_.§4"r§;
         var _loc3_:b2Body = param1.§;#X§;
         var _loc4_:b2Body = param1.§`7§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§5!A§();
            while(_loc5_)
            {
               if(_loc5_.§import§ == _loc3_)
               {
                  _loc5_.§4E§.§>$6§();
               }
               _loc5_ = _loc5_.next;
            }
         }
         return _loc2_;
      }
      
      public function §>"Q§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§>#E§;
         if(param1.§@"4§)
         {
            param1.§@"4§.§@W§ = param1.§@W§;
         }
         if(param1.§@W§)
         {
            param1.§@W§.§@"4§ = param1.§@"4§;
         }
         if(param1 == this.§@"G§)
         {
            this.§@"G§ = param1.§@W§;
         }
         var _loc3_:b2Body = param1.§]!"§;
         var _loc4_:b2Body = param1.§"$'§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§""V§.§!$%§)
         {
            param1.§""V§.§!$%§.next = param1.§""V§.next;
         }
         if(param1.§""V§.next)
         {
            param1.§""V§.next.§!$%§ = param1.§""V§.§!$%§;
         }
         if(param1.§""V§ == _loc3_.§@"G§)
         {
            _loc3_.§@"G§ = param1.§""V§.next;
         }
         param1.§""V§.§!$%§ = null;
         param1.§""V§.next = null;
         if(param1.§4"r§.§!$%§)
         {
            param1.§4"r§.§!$%§.next = param1.§4"r§.next;
         }
         if(param1.§4"r§.next)
         {
            param1.§4"r§.next.§!$%§ = param1.§4"r§.§!$%§;
         }
         if(param1.§4"r§ == _loc4_.§@"G§)
         {
            _loc4_.§@"G§ = param1.§4"r§.next;
         }
         param1.§4"r§.§!$%§ = null;
         param1.§4"r§.next = null;
         b2Joint.§;"@§(param1,null);
         --this.§%N§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§5!A§();
            while(_loc5_)
            {
               if(_loc5_.§import§ == _loc3_)
               {
                  _loc5_.§4E§.§>$6§();
               }
               _loc5_ = _loc5_.next;
            }
         }
      }
      
      public function §6"P§(param1:b2Controller) : b2Controller
      {
         param1.§@W§ = this.§,!V§;
         param1.§@"4§ = null;
         this.§,!V§ = param1;
         param1.m_world = this;
         ++this.§?#6§;
         return param1;
      }
      
      public function §@!Q§(param1:b2Controller) : void
      {
         if(param1.§@"4§)
         {
            param1.§@"4§.§@W§ = param1.§@W§;
         }
         if(param1.§@W§)
         {
            param1.§@W§.§@"4§ = param1.§@"4§;
         }
         if(this.§,!V§ == param1)
         {
            this.§,!V§ = param1.§@W§;
         }
         --this.§?#6§;
      }
      
      public function §!#§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§@W§ = this.§,!V§;
         param1.§@"4§ = null;
         if(this.§,!V§)
         {
            this.§,!V§.§@"4§ = param1;
         }
         this.§,!V§ = param1;
         ++this.§?#6§;
         param1.m_world = this;
         return param1;
      }
      
      public function §'-§(param1:b2Controller) : void
      {
         param1.§!!<§();
         if(param1.§@W§)
         {
            param1.§@W§.§@"4§ = param1.§@"4§;
         }
         if(param1.§@"4§)
         {
            param1.§@"4§.§@W§ = param1.§@W§;
         }
         if(param1 == this.§,!V§)
         {
            this.§,!V§ = param1.§@W§;
         }
         --this.§?#6§;
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         §##Q§ = param1;
      }
      
      public function § g§(param1:Boolean) : void
      {
         §4"n§ = param1;
      }
      
      public function §>^§() : int
      {
         return this.§^#[§;
      }
      
      public function §4"R§() : int
      {
         return this.§%N§;
      }
      
      public function §4!1§() : int
      {
         return this.§=!D§;
      }
      
      public function SetGravity(param1:b2Vec2) : void
      {
         this.§=!9§ = param1;
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.§=!9§;
      }
      
      public function §[O§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         if(this.§!#z§ & §?$!§)
         {
            this.§@"<§.§2"9§();
            this.§!#z§ &= ~§?$!§;
         }
         this.§!#z§ |= §2C§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).dt = param1;
         _loc4_.§%s§ = param2;
         _loc4_.§""?§ = param3;
         if(param1 > 0)
         {
            _loc4_.§%z§ = 1 / param1;
         }
         else
         {
            _loc4_.§%z§ = 0;
         }
         _loc4_.§+!y§ = this.§9"S§ * param1;
         _loc4_.§,#g§ = §##Q§;
         this.§@"<§.§?!V§();
         if(_loc4_.dt > 0)
         {
            this.§%!_§(_loc4_);
         }
         if(§4"n§ && _loc4_.dt > 0)
         {
            this.§2!S§(_loc4_);
         }
         if(_loc4_.dt > 0)
         {
            this.§9"S§ = _loc4_.§%z§;
         }
         this.§!#z§ &= ~§2C§;
      }
      
      public function ClearForces() : void
      {
         var _loc1_:b2Body = this.§<P§;
         while(_loc1_)
         {
            _loc1_.§2!#§.§1c§();
            _loc1_.§+!C§ = 0;
            _loc1_ = _loc1_.§@W§;
         }
      }
      
      public function §!4§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§2!I§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§`";§ == null)
         {
            return;
         }
         this.§`";§.§9!@§.graphics.clear();
         var _loc1_:uint = this.§`";§.§!!!§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§!$&§)
         {
            _loc3_ = this.§<P§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§,%§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§0S§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§8!p§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§0S§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§8!p§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§0S§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§0S§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§0S§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§@W§;
               }
               _loc3_ = _loc3_.§@W§;
            }
         }
         if(_loc1_ & b2DebugDraw.§9#l§)
         {
            _loc6_ = this.§@"G§;
            while(_loc6_)
            {
               this.§8a§(_loc6_);
               _loc6_ = _loc6_.§@W§;
            }
         }
         if(_loc1_ & b2DebugDraw.§2!v§)
         {
            _loc16_ = this.§,!V§;
            while(_loc16_)
            {
               _loc16_.§ !O§(this.§`";§);
               _loc16_ = _loc16_.§@W§;
            }
         }
         if(_loc1_ & b2DebugDraw.§0#O§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§@"<§.§<!a§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§9$ §();
               _loc19_ = _loc17_.§@!D§();
               _loc20_ = _loc18_.§&#?§().§]§();
               _loc21_ = _loc19_.§&#?§().§]§();
               this.§`";§.§0#4§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§%$>§();
            }
         }
         if(_loc1_ & b2DebugDraw.§@E§)
         {
            _loc7_ = this.§@"<§.§&# §;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§<P§;
            while(_loc3_)
            {
               if(_loc3_.§,%§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§'"O§(_loc4_.§;_§);
                     _loc14_[0].Set(_loc22_.§@`§.x,_loc22_.§@`§.y);
                     _loc14_[1].Set(_loc22_.§=!F§.x,_loc22_.§@`§.y);
                     _loc14_[2].Set(_loc22_.§=!F§.x,_loc22_.§=!F§.y);
                     _loc14_[3].Set(_loc22_.§@`§.x,_loc22_.§=!F§.y);
                     this.§`";§.§^$!§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§%$>§();
                  }
               }
               _loc3_ = _loc3_.§%$>§();
            }
         }
         if(_loc1_ & b2DebugDraw.§,!s§)
         {
            _loc3_ = this.§<P§;
            while(_loc3_)
            {
               (_loc11_ = §"#]§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§`";§.§?!#§(_loc11_);
               _loc3_ = _loc3_.§@W§;
            }
         }
      }
      
      public function §1"f§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§2!I§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§@"<§.§&# §;
         broadPhase.§^#E§(WorldQueryWrapper,aabb);
      }
      
      public function §4^§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§2!I§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§9#]§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().GetTransform()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§4#,§();
         }
         broadPhase = this.§@"<§.§&# §;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§^#E§(WorldQueryWrapper,aabb);
      }
      
      public function § "§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§2!I§ = null;
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
         broadPhase = this.§@"<§.§&# §;
         var aabb:b2AABB = new b2AABB();
         aabb.§@`§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§=!F§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§^#E§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§2!I§ = null;
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
            return param1.§^#V§;
         };
         broadPhase = this.§@"<§.§&# §;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §0#%§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §+"P§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §+7§() : b2Body
      {
         return this.§<P§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§@"G§;
      }
      
      public function §5!A§() : b2Contact
      {
         return this.§<!a§;
      }
      
      public function §4"B§() : Boolean
      {
         return (this.§!#z§ & §2C§) > 0;
      }
      
      b2internal function §%!_§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§,!V§;
         while(_loc3_)
         {
            _loc3_.Step(param1);
            _loc3_ = _loc3_.§@W§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§[!h§).§1!W§(this.§^#[§,this.§=!D§,this.§%N§,null,this.§@"<§.§,!G§,this.§`#c§);
         _loc2_ = this.§<P§;
         while(_loc2_)
         {
            _loc2_.§!#z§ &= ~b2Body.§"!Z§;
            _loc2_ = _loc2_.§@W§;
         }
         var _loc5_:b2Contact = this.§<!a§;
         while(_loc5_)
         {
            _loc5_.§!#z§ &= ~b2Contact.§"!Z§;
            _loc5_ = _loc5_.§@W§;
         }
         var _loc6_:b2Joint = this.§@"G§;
         while(_loc6_)
         {
            _loc6_.§4W§ = false;
            _loc6_ = _loc6_.§@W§;
         }
         var _loc7_:int = this.§^#[§;
         var _loc8_:Vector.<b2Body> = this.§]$2§;
         var _loc9_:b2Body = this.§<P§;
         while(_loc9_)
         {
            if(!(_loc9_.§!#z§ & b2Body.§"!Z§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§,%§() == false))
               {
                  if(_loc9_.§8!p§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§!!<§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§!#z§ |= b2Body.§"!Z§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§2!2§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§8!p§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§<!a§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§4E§.§!#z§ & b2Contact.§"!Z§))
                              {
                                 if(!(_loc13_.§4E§.§"!,§() == true || _loc13_.§4E§.§##?§() == false || _loc13_.§4E§.§]!#§() == false))
                                 {
                                    _loc4_.§'!W§(_loc13_.§4E§);
                                    _loc13_.§4E§.§!#z§ |= b2Contact.§"!Z§;
                                    if(!((_loc12_ = _loc13_.§import§).§!#z§ & b2Body.§"!Z§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§!#z§ |= b2Body.§"!Z§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.next;
                           }
                           _loc14_ = _loc2_.§@"G§;
                           while(_loc14_)
                           {
                              if(_loc14_.joint.§4W§ != true)
                              {
                                 if((_loc12_ = _loc14_.§import§).§,%§() != false)
                                 {
                                    _loc4_.§>!`§(_loc14_.joint);
                                    _loc14_.joint.§4W§ = true;
                                    if(!(_loc12_.§!#z§ & b2Body.§"!Z§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§!#z§ |= b2Body.§"!Z§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.next;
                           }
                        }
                     }
                     _loc4_.§%!_§(param1,this.§=!9§,this.§2!L§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§^#[§)
                     {
                        _loc2_ = _loc4_.§9#@§[_loc11_];
                        if(_loc2_.§8!p§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§!#z§ &= ~b2Body.§"!Z§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§@W§;
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
         _loc2_ = this.§<P§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§,%§() == false))
            {
               if(_loc2_.§8!p§() != b2Body.b2_staticBody)
               {
                  _loc2_.§9"]§();
               }
            }
            _loc2_ = _loc2_.§@W§;
         }
         this.§@"<§.§2"9§();
      }
      
      b2internal function §2!S§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§[!h§).§1!W§(this.§^#[§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§@"<§.§,!G§,this.§`#c§);
         var _loc10_:Vector.<b2Body> = §=A§;
         _loc2_ = this.§<P§;
         while(_loc2_)
         {
            _loc2_.§!#z§ &= ~b2Body.§"!Z§;
            _loc2_.m_sweep.§3$A§ = 0;
            _loc2_ = _loc2_.§@W§;
         }
         _loc11_ = this.§<!a§;
         while(_loc11_)
         {
            _loc11_.§!#z§ &= ~(b2Contact.§<"L§ | b2Contact.§"!Z§);
            _loc11_.§#$?§ = 1;
            _loc11_ = _loc11_.§@W§;
         }
         _loc8_ = this.§@"G§;
         while(_loc8_)
         {
            _loc8_.§4W§ = false;
            _loc8_ = _loc8_.§@W§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§<!a§;
            while(_loc11_)
            {
               if(!(_loc11_.§"!,§() == true || _loc11_.§##?§() == false || _loc11_.§3!+§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§!#z§ & b2Contact.§<"L§)
                  {
                     _loc19_ = _loc11_.§#$?§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§-!-§;
                     _loc4_ = _loc11_.§^y§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§8!p§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§8!p§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr635:
                        _loc11_ = _loc11_.§@W§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§3$A§;
                     if(_loc5_.m_sweep.§3$A§ < _loc6_.m_sweep.§3$A§)
                     {
                        _loc20_ = _loc6_.m_sweep.§3$A§;
                        _loc5_.m_sweep.§&!O§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§3$A§ < _loc5_.m_sweep.§3$A§)
                     {
                        _loc20_ = _loc5_.m_sweep.§3$A§;
                        _loc6_.m_sweep.§&!O§(_loc20_);
                     }
                     _loc19_ = _loc11_.§>#d§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§#$?§ = _loc19_;
                     _loc11_.§!#z§ |= b2Contact.§<"L§;
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
            _loc3_ = _loc12_.§-!-§;
            _loc4_ = _loc12_.§^y§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §>"t§.Set(_loc5_.m_sweep);
            §default§.Set(_loc6_.m_sweep);
            _loc5_.§&!O§(_loc13_);
            _loc6_.§&!O§(_loc13_);
            _loc12_.§&R§(this.§@"<§.§,!G§);
            _loc12_.§!#z§ &= ~b2Contact.§<"L§;
            if(_loc12_.§"!,§() == true || _loc12_.§##?§() == false)
            {
               _loc5_.m_sweep.Set(§>"t§);
               _loc6_.m_sweep.Set(§default§);
               _loc5_.§[X§();
               _loc6_.§[X§();
            }
            else if(_loc12_.§]!#§() != false)
            {
               if((_loc14_ = _loc5_).§8!p§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§!!<§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§!#z§ |= b2Body.§"!Z§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§2!2§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§8!p§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§<!a§;
                     while(_loc7_)
                     {
                        if(_loc9_.§=!D§ == _loc9_.§#r§)
                        {
                           break;
                        }
                        if(!(_loc7_.§4E§.§!#z§ & b2Contact.§"!Z§))
                        {
                           if(!(_loc7_.§4E§.§"!,§() == true || _loc7_.§4E§.§##?§() == false || _loc7_.§4E§.§]!#§() == false))
                           {
                              _loc9_.§'!W§(_loc7_.§4E§);
                              _loc7_.§4E§.§!#z§ |= b2Contact.§"!Z§;
                              if(!((_loc22_ = _loc7_.§import§).§!#z§ & b2Body.§"!Z§))
                              {
                                 if(_loc22_.§8!p§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§&!O§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§!#z§ |= b2Body.§"!Z§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.next;
                     }
                     _loc21_ = _loc2_.§@"G§;
                     while(_loc21_)
                     {
                        if(_loc9_.§%N§ != _loc9_.§ ""§)
                        {
                           if(_loc21_.joint.§4W§ != true)
                           {
                              if((_loc22_ = _loc21_.§import§).§,%§() != false)
                              {
                                 _loc9_.§>!`§(_loc21_.joint);
                                 _loc21_.joint.§4W§ = true;
                                 if(!(_loc22_.§!#z§ & b2Body.§"!Z§))
                                 {
                                    if(_loc22_.§8!p§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§&!O§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§!#z§ |= b2Body.§"!Z§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.next;
                     }
                  }
               }
               (_loc17_ = §3"N§).§,#g§ = false;
               _loc17_.dt = (1 - _loc13_) * param1.dt;
               _loc17_.§%z§ = 1 / _loc17_.dt;
               _loc17_.§+!y§ = 1;
               _loc17_.§%s§ = param1.§%s§;
               _loc17_.§""?§ = param1.§""?§;
               _loc9_.§2!S§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§^#[§)
               {
                  _loc2_ = _loc9_.§9#@§[_loc18_];
                  _loc2_.§!#z§ &= ~b2Body.§"!Z§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§8!p§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§9"]§();
                        _loc7_ = _loc2_.§<!a§;
                        while(_loc7_)
                        {
                           _loc7_.§4E§.§!#z§ &= ~b2Contact.§<"L§;
                           _loc7_ = _loc7_.next;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§=!D§)
               {
                  _loc11_ = _loc9_.§8W§[_loc18_];
                  _loc11_.§!#z§ &= ~(b2Contact.§<"L§ | b2Contact.§"!Z§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§%N§)
               {
                  (_loc8_ = _loc9_.§`!N§[_loc18_]).§4W§ = false;
                  _loc18_++;
               }
               this.§@"<§.§2"9§();
            }
         }
      }
      
      b2internal function §8a§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§"#2§();
         var _loc3_:b2Body = param1.§1"z§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §9e§;
         switch(param1.§5"F§)
         {
            case b2Joint.§#"=§:
               this.§`";§.§0#4§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§`"U§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§;"P§();
               _loc13_ = _loc11_.§0$-§();
               this.§`";§.§0#4§(_loc12_,_loc8_,_loc10_);
               this.§`";§.§0#4§(_loc13_,_loc9_,_loc10_);
               this.§`";§.§0#4§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§9O§:
               this.§`";§.§0#4§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§`";§.§0#4§(_loc6_,_loc8_,_loc10_);
               }
               this.§`";§.§0#4§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§`";§.§0#4§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §0S§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§5"F§)
         {
            case b2Shape.§"$E§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§9!0§(param2,_loc4_.§>#>§);
               _loc6_ = _loc4_.§5#n§;
               _loc7_ = param2.R.col1;
               this.§`";§.§0!Z§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§?6§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§5S§();
               _loc11_ = _loc9_.§'#K§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§9!0§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§`";§.§?f§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§#!-§:
               _loc13_ = param1 as b2EdgeShape;
               this.§`";§.§0#4§(b2Math.§9!0§(param2,_loc13_.GetVertex1()),b2Math.§9!0§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

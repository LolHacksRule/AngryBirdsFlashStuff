package §9!K§
{
   import §'!a§.*;
   import §4!W§.*;
   import §6!n§.*;
   import §;!Z§.*;
   import §=-§.b2Controller;
   import §=-§.b2ControllerEdge;
   import §>6§.*;
   import §[9§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §?!9§:b2Transform = new b2Transform();
      
      private static var §%"@§:b2Sweep = new b2Sweep();
      
      private static var §`!&§:b2Sweep = new b2Sweep();
      
      private static var §@!#§:b2TimeStep = new b2TimeStep();
      
      private static var §7!k§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §2!i§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §,!U§:Boolean;
      
      private static var §%d§:Boolean;
      
      public static const §,"2§:int = 1;
      
      public static const §#!U§:int = 2;
       
      
      private var §,!`§:Vector.<b2Body>;
      
      b2internal var §true§:int;
      
      b2internal var §-`§:b2ContactManager;
      
      private var §1!u§:b2ContactSolver;
      
      private var §"U§:b2Island;
      
      b2internal var §5!!§:b2Body;
      
      private var §]!G§:b2Joint;
      
      b2internal var §7!X§:b2Contact;
      
      private var §3" §:int;
      
      b2internal var §9K§:int;
      
      private var §@S§:int;
      
      private var §5T§:b2Controller;
      
      private var §4!a§:int;
      
      private var §^^§:b2Vec2;
      
      private var §?c§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §6C§:b2DestructionListener;
      
      private var §8^§:b2DebugDraw;
      
      private var §``§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§,!`§ = new Vector.<b2Body>();
         this.§-`§ = new b2ContactManager();
         this.§1!u§ = new b2ContactSolver();
         this.§"U§ = new b2Island();
         super();
         this.§6C§ = null;
         this.§8^§ = null;
         this.§5!!§ = null;
         this.§7!X§ = null;
         this.§]!G§ = null;
         this.§5T§ = null;
         this.§3" § = 0;
         this.§9K§ = 0;
         this.§@S§ = 0;
         this.§4!a§ = 0;
         §,!U§ = true;
         §%d§ = true;
         this.§?c§ = param2;
         this.§^^§ = param1;
         this.§``§ = 0;
         this.§-`§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §!" §(param1:b2DestructionListener) : void
      {
         this.§6C§ = param1;
      }
      
      public function §""9§(param1:b2ContactFilter) : void
      {
         this.§-`§.§<!F§ = param1;
      }
      
      public function §11§(param1:b2ContactListener) : void
      {
         this.§-`§.§,"E§ = param1;
      }
      
      public function §&q§(param1:b2DebugDraw) : void
      {
         this.§8^§ = param1;
      }
      
      public function §<!K§(param1:§#"D§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§#"D§ = this.§-`§.§8!1§;
         this.§-`§.§8!1§ = param1;
         var _loc3_:b2Body = this.§5!!§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§9G§;
            while(_loc4_)
            {
               _loc4_.§04§ = param1.§0!E§(_loc2_.§1?§(_loc4_.§04§),_loc4_);
               _loc4_ = _loc4_.§&!6§;
            }
            _loc3_ = _loc3_.§&!6§;
         }
      }
      
      public function §1H§() : void
      {
         this.§-`§.§8!1§.§1H§();
      }
      
      public function § p§() : int
      {
         return this.§-`§.§8!1§.§ p§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§,!s§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§9!§ = null;
         _loc2_.§&!6§ = this.§5!!§;
         if(this.§5!!§)
         {
            this.§5!!§.§9!§ = _loc2_;
         }
         this.§5!!§ = _loc2_;
         ++this.§3" §;
         return _loc2_;
      }
      
      public function §3!_§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§,!s§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§]!G§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§7$§;
            if(this.§6C§)
            {
               this.§6C§.§5!?§(_loc6_.§+q§);
            }
            this.§+"@§(_loc6_.§+q§);
         }
         var _loc3_:b2ControllerEdge = param1.§5T§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§]w§;
            _loc7_.§0!Q§.§<p§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§7!X§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§7$§;
            this.§-`§.§7"'§(_loc8_.§ 5§);
         }
         param1.§7!X§ = null;
         var _loc5_:b2Fixture = param1.§9G§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§&!6§;
            if(this.§6C§)
            {
               this.§6C§.§!;§(_loc9_);
            }
            _loc9_.§>!u§(this.§-`§.§8!1§);
            _loc9_.§7"'§();
         }
         param1.§9G§ = null;
         param1.§-H§ = 0;
         if(param1.§9!§)
         {
            param1.§9!§.§&!6§ = param1.§&!6§;
         }
         if(param1.§&!6§)
         {
            param1.§&!6§.§9!§ = param1.§9!§;
         }
         if(param1 == this.§5!!§)
         {
            this.§5!!§ = param1.§&!6§;
         }
         --this.§3" §;
      }
      
      public function §>!f§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§7;§(param1,null);
         _loc2_.§9!§ = null;
         _loc2_.§&!6§ = this.§]!G§;
         if(this.§]!G§)
         {
            this.§]!G§.§9!§ = _loc2_;
         }
         this.§]!G§ = _loc2_;
         ++this.§@S§;
         _loc2_.§1"-§.§+q§ = _loc2_;
         _loc2_.§1"-§.§]9§ = _loc2_.§,!Q§;
         _loc2_.§1"-§.§5!S§ = null;
         _loc2_.§1"-§.§7$§ = _loc2_.§[F§.§]!G§;
         if(_loc2_.§[F§.§]!G§)
         {
            _loc2_.§[F§.§]!G§.§5!S§ = _loc2_.§1"-§;
         }
         _loc2_.§[F§.§]!G§ = _loc2_.§1"-§;
         _loc2_.§5!V§.§+q§ = _loc2_;
         _loc2_.§5!V§.§]9§ = _loc2_.§[F§;
         _loc2_.§5!V§.§5!S§ = null;
         _loc2_.§5!V§.§7$§ = _loc2_.§,!Q§.§]!G§;
         if(_loc2_.§,!Q§.§]!G§)
         {
            _loc2_.§,!Q§.§]!G§.§5!S§ = _loc2_.§5!V§;
         }
         _loc2_.§,!Q§.§]!G§ = _loc2_.§5!V§;
         var _loc3_:b2Body = param1.§0f§;
         var _loc4_:b2Body = param1.§>F§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§6!o§();
            while(_loc5_)
            {
               if(_loc5_.§]9§ == _loc3_)
               {
                  _loc5_.§ 5§.§="1§();
               }
               _loc5_ = _loc5_.§7$§;
            }
         }
         return _loc2_;
      }
      
      public function §+"@§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§"=§;
         if(param1.§9!§)
         {
            param1.§9!§.§&!6§ = param1.§&!6§;
         }
         if(param1.§&!6§)
         {
            param1.§&!6§.§9!§ = param1.§9!§;
         }
         if(param1 == this.§]!G§)
         {
            this.§]!G§ = param1.§&!6§;
         }
         var _loc3_:b2Body = param1.§[F§;
         var _loc4_:b2Body = param1.§,!Q§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§1"-§.§5!S§)
         {
            param1.§1"-§.§5!S§.§7$§ = param1.§1"-§.§7$§;
         }
         if(param1.§1"-§.§7$§)
         {
            param1.§1"-§.§7$§.§5!S§ = param1.§1"-§.§5!S§;
         }
         if(param1.§1"-§ == _loc3_.§]!G§)
         {
            _loc3_.§]!G§ = param1.§1"-§.§7$§;
         }
         param1.§1"-§.§5!S§ = null;
         param1.§1"-§.§7$§ = null;
         if(param1.§5!V§.§5!S§)
         {
            param1.§5!V§.§5!S§.§7$§ = param1.§5!V§.§7$§;
         }
         if(param1.§5!V§.§7$§)
         {
            param1.§5!V§.§7$§.§5!S§ = param1.§5!V§.§5!S§;
         }
         if(param1.§5!V§ == _loc4_.§]!G§)
         {
            _loc4_.§]!G§ = param1.§5!V§.§7$§;
         }
         param1.§5!V§.§5!S§ = null;
         param1.§5!V§.§7$§ = null;
         b2Joint.§7"'§(param1,null);
         --this.§@S§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§6!o§();
            while(_loc5_)
            {
               if(_loc5_.§]9§ == _loc3_)
               {
                  _loc5_.§ 5§.§="1§();
               }
               _loc5_ = _loc5_.§7$§;
            }
         }
      }
      
      public function §#"E§(param1:b2Controller) : b2Controller
      {
         param1.§&!6§ = this.§5T§;
         param1.§9!§ = null;
         this.§5T§ = param1;
         param1.m_world = this;
         ++this.§4!a§;
         return param1;
      }
      
      public function §'[§(param1:b2Controller) : void
      {
         if(param1.§9!§)
         {
            param1.§9!§.§&!6§ = param1.§&!6§;
         }
         if(param1.§&!6§)
         {
            param1.§&!6§.§9!§ = param1.§9!§;
         }
         if(this.§5T§ == param1)
         {
            this.§5T§ = param1.§&!6§;
         }
         --this.§4!a§;
      }
      
      public function §"!J§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§&!6§ = this.§5T§;
         param1.§9!§ = null;
         if(this.§5T§)
         {
            this.§5T§.§9!§ = param1;
         }
         this.§5T§ = param1;
         ++this.§4!a§;
         param1.m_world = this;
         return param1;
      }
      
      public function §[!=§(param1:b2Controller) : void
      {
         param1.§6!Y§();
         if(param1.§&!6§)
         {
            param1.§&!6§.§9!§ = param1.§9!§;
         }
         if(param1.§9!§)
         {
            param1.§9!§.§&!6§ = param1.§&!6§;
         }
         if(param1 == this.§5T§)
         {
            this.§5T§ = param1.§&!6§;
         }
         --this.§4!a§;
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         §,!U§ = param1;
      }
      
      public function §2!M§(param1:Boolean) : void
      {
         §%d§ = param1;
      }
      
      public function §,@§() : int
      {
         return this.§3" §;
      }
      
      public function §!!'§() : int
      {
         return this.§@S§;
      }
      
      public function §4x§() : int
      {
         return this.§9K§;
      }
      
      public function SetGravity(param1:b2Vec2) : void
      {
         this.§^^§ = param1;
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.§^^§;
      }
      
      public function § W§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         if(this.§true§ & §,"2§)
         {
            this.§-`§.§9!^§();
            this.§true§ &= ~§,"2§;
         }
         this.§true§ |= §#!U§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§;@§ = param1;
         _loc4_.§?!l§ = param2;
         _loc4_.§,!-§ = param3;
         if(param1 > 0)
         {
            _loc4_.§ j§ = 1 / param1;
         }
         else
         {
            _loc4_.§ j§ = 0;
         }
         _loc4_.§?!$§ = this.§``§ * param1;
         _loc4_.§'!t§ = §,!U§;
         this.§-`§.§ !e§();
         if(_loc4_.§;@§ > 0)
         {
            this.§;#§(_loc4_);
         }
         if(§%d§ && _loc4_.§;@§ > 0)
         {
            this.§@!<§(_loc4_);
         }
         if(_loc4_.§;@§ > 0)
         {
            this.§``§ = _loc4_.§ j§;
         }
         this.§true§ &= ~§#!U§;
      }
      
      public function ClearForces() : void
      {
         var _loc1_:b2Body = this.§5!!§;
         while(_loc1_)
         {
            _loc1_.§1"$§.§58§();
            _loc1_.§4!N§ = 0;
            _loc1_ = _loc1_.§&!6§;
         }
      }
      
      public function §-s§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§#"D§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§8^§ == null)
         {
            return;
         }
         this.§8^§.§+L§.graphics.clear();
         var _loc1_:uint = this.§8^§.§#"2§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§8!u§)
         {
            _loc3_ = this.§5!!§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§!Y§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§`H§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§4"2§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§finally§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§4"2§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§finally§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§4"2§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§4"2§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§4"2§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§&!6§;
               }
               _loc3_ = _loc3_.§&!6§;
            }
         }
         if(_loc1_ & b2DebugDraw.§ "B§)
         {
            _loc6_ = this.§]!G§;
            while(_loc6_)
            {
               this.§`">§(_loc6_);
               _loc6_ = _loc6_.§&!6§;
            }
         }
         if(_loc1_ & b2DebugDraw.§!"H§)
         {
            _loc16_ = this.§5T§;
            while(_loc16_)
            {
               _loc16_.§ !F§(this.§8^§);
               _loc16_ = _loc16_.§&!6§;
            }
         }
         if(_loc1_ & b2DebugDraw.§@!Y§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§-`§.§7!X§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§[!_§();
               _loc19_ = _loc17_.§6!6§();
               _loc20_ = _loc18_.§0!u§().§,!V§();
               _loc21_ = _loc19_.§0!u§().§,!V§();
               this.§8^§.§3"B§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§1§();
            }
         }
         if(_loc1_ & b2DebugDraw.§4Q§)
         {
            _loc7_ = this.§-`§.§8!1§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§5!!§;
            while(_loc3_)
            {
               if(_loc3_.§`H§() != false)
               {
                  _loc4_ = _loc3_.§!Y§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§1?§(_loc4_.§04§);
                     _loc14_[0].Set(_loc22_.§'!l§.x,_loc22_.§'!l§.y);
                     _loc14_[1].Set(_loc22_.§?i§.x,_loc22_.§'!l§.y);
                     _loc14_[2].Set(_loc22_.§?i§.x,_loc22_.§?i§.y);
                     _loc14_[3].Set(_loc22_.§'!l§.x,_loc22_.§?i§.y);
                     this.§8^§.§7C§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§1§();
                  }
               }
               _loc3_ = _loc3_.§1§();
            }
         }
         if(_loc1_ & b2DebugDraw.§"6§)
         {
            _loc3_ = this.§5!!§;
            while(_loc3_)
            {
               (_loc11_ = §?!9§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§2=§();
               this.§8^§.§@"=§(_loc11_);
               _loc3_ = _loc3_.§&!6§;
            }
         }
      }
      
      public function QueryAABB(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§#"D§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§-`§.§8!1§;
         broadPhase.§`!$§(WorldQueryWrapper,aabb);
      }
      
      public function §'!@§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§#"D§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§1'§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§]!>§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§!!c§();
         }
         broadPhase = this.§-`§.§8!1§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§`!$§(WorldQueryWrapper,aabb);
      }
      
      public function §]!A§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§#"D§ = null;
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
         broadPhase = this.§-`§.§8!1§;
         var aabb:b2AABB = new b2AABB();
         aabb.§'!l§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§?i§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§`!$§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§#"D§ = null;
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
            return param1.§[!o§;
         };
         broadPhase = this.§-`§.§8!1§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §@H§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §0!b§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §1!B§() : b2Body
      {
         return this.§5!!§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§]!G§;
      }
      
      public function §6!o§() : b2Contact
      {
         return this.§7!X§;
      }
      
      public function §,!s§() : Boolean
      {
         return (this.§true§ & §#!U§) > 0;
      }
      
      b2internal function §;#§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§5T§;
         while(_loc3_)
         {
            _loc3_.Step(param1);
            _loc3_ = _loc3_.§&!6§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§"U§).§break§(this.§3" §,this.§9K§,this.§@S§,null,this.§-`§.§,"E§,this.§1!u§);
         _loc2_ = this.§5!!§;
         while(_loc2_)
         {
            _loc2_.§true§ &= ~b2Body.§^!4§;
            _loc2_ = _loc2_.§&!6§;
         }
         var _loc5_:b2Contact = this.§7!X§;
         while(_loc5_)
         {
            _loc5_.§true§ &= ~b2Contact.§^!4§;
            _loc5_ = _loc5_.§&!6§;
         }
         var _loc6_:b2Joint = this.§]!G§;
         while(_loc6_)
         {
            _loc6_.§^!Y§ = false;
            _loc6_ = _loc6_.§&!6§;
         }
         var _loc7_:int = this.§3" §;
         var _loc8_:Vector.<b2Body> = this.§,!`§;
         var _loc9_:b2Body = this.§5!!§;
         while(_loc9_)
         {
            if(!(_loc9_.§true§ & b2Body.§^!4§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§`H§() == false))
               {
                  if(_loc9_.§finally§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§6!Y§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§true§ |= b2Body.§^!4§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§^!-§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§finally§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§7!X§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§ 5§.§true§ & b2Contact.§^!4§))
                              {
                                 if(!(_loc13_.§ 5§.§7!5§() == true || _loc13_.§ 5§.§6!@§() == false || _loc13_.§ 5§.§60§() == false))
                                 {
                                    _loc4_.§#!3§(_loc13_.§ 5§);
                                    _loc13_.§ 5§.§true§ |= b2Contact.§^!4§;
                                    if(!((_loc12_ = _loc13_.§]9§).§true§ & b2Body.§^!4§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§true§ |= b2Body.§^!4§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§7$§;
                           }
                           _loc14_ = _loc2_.§]!G§;
                           while(_loc14_)
                           {
                              if(_loc14_.§+q§.§^!Y§ != true)
                              {
                                 if((_loc12_ = _loc14_.§]9§).§`H§() != false)
                                 {
                                    _loc4_.§@!"§(_loc14_.§+q§);
                                    _loc14_.§+q§.§^!Y§ = true;
                                    if(!(_loc12_.§true§ & b2Body.§^!4§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§true§ |= b2Body.§^!4§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§7$§;
                           }
                        }
                     }
                     _loc4_.§;#§(param1,this.§^^§,this.§?c§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§3" §)
                     {
                        _loc2_ = _loc4_.§0!]§[_loc11_];
                        if(_loc2_.§finally§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§true§ &= ~b2Body.§^!4§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§&!6§;
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
         _loc2_ = this.§5!!§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§`H§() == false))
            {
               if(_loc2_.§finally§() != b2Body.b2_staticBody)
               {
                  _loc2_.§9>§();
               }
            }
            _loc2_ = _loc2_.§&!6§;
         }
         this.§-`§.§9!^§();
      }
      
      b2internal function §@!<§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§"U§).§break§(this.§3" §,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§-`§.§,"E§,this.§1!u§);
         var _loc10_:Vector.<b2Body> = §7!k§;
         _loc2_ = this.§5!!§;
         while(_loc2_)
         {
            _loc2_.§true§ &= ~b2Body.§^!4§;
            _loc2_.m_sweep.§0!F§ = 0;
            _loc2_ = _loc2_.§&!6§;
         }
         _loc11_ = this.§7!X§;
         while(_loc11_)
         {
            _loc11_.§true§ &= ~(b2Contact.§0!`§ | b2Contact.§^!4§);
            _loc11_.§#!1§ = 1;
            _loc11_ = _loc11_.§&!6§;
         }
         _loc8_ = this.§]!G§;
         while(_loc8_)
         {
            _loc8_.§^!Y§ = false;
            _loc8_ = _loc8_.§&!6§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§7!X§;
            while(_loc11_)
            {
               if(!(_loc11_.§7!5§() == true || _loc11_.§6!@§() == false || _loc11_.§@!A§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§true§ & b2Contact.§0!`§)
                  {
                     _loc19_ = _loc11_.§#!1§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§1!g§;
                     _loc4_ = _loc11_.§@4§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§finally§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§finally§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr627:
                        _loc11_ = _loc11_.§&!6§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§0!F§;
                     if(_loc5_.m_sweep.§0!F§ < _loc6_.m_sweep.§0!F§)
                     {
                        _loc20_ = _loc6_.m_sweep.§0!F§;
                        _loc5_.m_sweep.§4i§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§0!F§ < _loc5_.m_sweep.§0!F§)
                     {
                        _loc20_ = _loc5_.m_sweep.§0!F§;
                        _loc6_.m_sweep.§4i§(_loc20_);
                     }
                     _loc19_ = _loc11_.§'&§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§#!1§ = _loc19_;
                     _loc11_.§true§ |= b2Contact.§0!`§;
                     §§goto(addr627);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr627);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§1!g§;
            _loc4_ = _loc12_.§@4§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §%"@§.Set(_loc5_.m_sweep);
            §`!&§.Set(_loc6_.m_sweep);
            _loc5_.§4i§(_loc13_);
            _loc6_.§4i§(_loc13_);
            _loc12_.§7!M§(this.§-`§.§,"E§);
            _loc12_.§true§ &= ~b2Contact.§0!`§;
            if(_loc12_.§7!5§() == true || _loc12_.§6!@§() == false)
            {
               _loc5_.m_sweep.Set(§%"@§);
               _loc6_.m_sweep.Set(§`!&§);
               _loc5_.§>!b§();
               _loc6_.§>!b§();
            }
            else if(_loc12_.§60§() != false)
            {
               if((_loc14_ = _loc5_).§finally§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§6!Y§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§true§ |= b2Body.§^!4§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§^!-§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§finally§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§7!X§;
                     while(_loc7_)
                     {
                        if(_loc9_.§9K§ == _loc9_.§2%§)
                        {
                           break;
                        }
                        if(!(_loc7_.§ 5§.§true§ & b2Contact.§^!4§))
                        {
                           if(!(_loc7_.§ 5§.§7!5§() == true || _loc7_.§ 5§.§6!@§() == false || _loc7_.§ 5§.§60§() == false))
                           {
                              _loc9_.§#!3§(_loc7_.§ 5§);
                              _loc7_.§ 5§.§true§ |= b2Contact.§^!4§;
                              if(!((_loc22_ = _loc7_.§]9§).§true§ & b2Body.§^!4§))
                              {
                                 if(_loc22_.§finally§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§4i§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§true§ |= b2Body.§^!4§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§7$§;
                     }
                     _loc21_ = _loc2_.§]!G§;
                     while(_loc21_)
                     {
                        if(_loc9_.§@S§ != _loc9_.§[5§)
                        {
                           if(_loc21_.§+q§.§^!Y§ != true)
                           {
                              if((_loc22_ = _loc21_.§]9§).§`H§() != false)
                              {
                                 _loc9_.§@!"§(_loc21_.§+q§);
                                 _loc21_.§+q§.§^!Y§ = true;
                                 if(!(_loc22_.§true§ & b2Body.§^!4§))
                                 {
                                    if(_loc22_.§finally§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§4i§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§true§ |= b2Body.§^!4§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§7$§;
                     }
                  }
               }
               (_loc17_ = §@!#§).§'!t§ = false;
               _loc17_.§;@§ = (1 - _loc13_) * param1.§;@§;
               _loc17_.§ j§ = 1 / _loc17_.§;@§;
               _loc17_.§?!$§ = 1;
               _loc17_.§?!l§ = param1.§?!l§;
               _loc17_.§,!-§ = param1.§,!-§;
               _loc9_.§@!<§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§3" §)
               {
                  _loc2_ = _loc9_.§0!]§[_loc18_];
                  _loc2_.§true§ &= ~b2Body.§^!4§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§finally§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§9>§();
                        _loc7_ = _loc2_.§7!X§;
                        while(_loc7_)
                        {
                           _loc7_.§ 5§.§true§ &= ~b2Contact.§0!`§;
                           _loc7_ = _loc7_.§7$§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§9K§)
               {
                  _loc11_ = _loc9_.§9!Q§[_loc18_];
                  _loc11_.§true§ &= ~(b2Contact.§0!`§ | b2Contact.§^!4§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§@S§)
               {
                  (_loc8_ = _loc9_.§2S§[_loc18_]).§^!Y§ = false;
                  _loc18_++;
               }
               this.§-`§.§9!^§();
            }
         }
      }
      
      b2internal function §`">§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§>!=§();
         var _loc3_:b2Body = param1.§>1§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §2!i§;
         switch(param1.§`K§)
         {
            case b2Joint.§7!t§:
               this.§8^§.§3"B§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§-"3§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§5B§();
               _loc13_ = _loc11_.§]J§();
               this.§8^§.§3"B§(_loc12_,_loc8_,_loc10_);
               this.§8^§.§3"B§(_loc13_,_loc9_,_loc10_);
               this.§8^§.§3"B§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§[!Q§:
               this.§8^§.§3"B§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§8^§.§3"B§(_loc6_,_loc8_,_loc10_);
               }
               this.§8^§.§3"B§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§8^§.§3"B§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §4"2§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§`K§)
         {
            case b2Shape.§9t§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§<!-§(param2,_loc4_.§#!=§);
               _loc6_ = _loc4_.§!!l§;
               _loc7_ = param2.R.col1;
               this.§8^§.§=!1§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§>b§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§8"G§();
               _loc11_ = _loc9_.§4m§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§<!-§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§8^§.§2;§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§[!e§:
               _loc13_ = param1 as b2EdgeShape;
               this.§8^§.§3"B§(b2Math.§<!-§(param2,_loc13_.GetVertex1()),b2Math.§<!-§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

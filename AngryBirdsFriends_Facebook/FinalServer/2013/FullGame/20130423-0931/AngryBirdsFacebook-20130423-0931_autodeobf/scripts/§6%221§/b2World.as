package §6"1§
{
   import §!"3§.*;
   import §'"-§.*;
   import §'"6§.*;
   import §,"[§.*;
   import §,,§.*;
   import §6!^§.*;
   import §?D§.b2Controller;
   import §?D§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §?n§:b2Transform = new b2Transform();
      
      private static var §'!E§:b2Sweep = new b2Sweep();
      
      private static var §-"#§:b2Sweep = new b2Sweep();
      
      private static var §@!,§:b2TimeStep = new b2TimeStep();
      
      private static var §-!<§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §<g§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var § !D§:Boolean;
      
      private static var §^!O§:Boolean;
      
      public static const §-!M§:int = 1;
      
      public static const §'!w§:int = 2;
       
      
      private var §%"&§:Vector.<b2Body>;
      
      b2internal var §2"B§:int;
      
      b2internal var §9s§:b2ContactManager;
      
      private var §,"V§:b2ContactSolver;
      
      private var §8!J§:b2Island;
      
      b2internal var §6t§:b2Body;
      
      private var §@!g§:b2Joint;
      
      b2internal var §>"K§:b2Contact;
      
      private var §;0§:int;
      
      b2internal var §%!0§:int;
      
      private var §<!y§:int;
      
      private var §]!5§:b2Controller;
      
      private var §>+§:int;
      
      private var §!F§:b2Vec2;
      
      private var §,!T§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §4"<§:b2DestructionListener;
      
      private var §1s§:b2DebugDraw;
      
      private var §4!Z§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§%"&§ = new Vector.<b2Body>();
         this.§9s§ = new b2ContactManager();
         this.§,"V§ = new b2ContactSolver();
         this.§8!J§ = new b2Island();
         super();
         this.§4"<§ = null;
         this.§1s§ = null;
         this.§6t§ = null;
         this.§>"K§ = null;
         this.§@!g§ = null;
         this.§]!5§ = null;
         this.§;0§ = 0;
         this.§%!0§ = 0;
         this.§<!y§ = 0;
         this.§>+§ = 0;
         § !D§ = true;
         §^!O§ = true;
         this.§,!T§ = param2;
         this.§!F§ = param1;
         this.§4!Z§ = 0;
         this.§9s§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§@H§(_loc3_);
      }
      
      public function §["Y§(param1:b2DestructionListener) : void
      {
         this.§4"<§ = param1;
      }
      
      public function §=!Q§(param1:b2ContactFilter) : void
      {
         this.§9s§.§]"B§ = param1;
      }
      
      public function § "Q§(param1:b2ContactListener) : void
      {
         this.§9s§.§4!O§ = param1;
      }
      
      public function §@!C§(param1:b2DebugDraw) : void
      {
         this.§1s§ = param1;
      }
      
      public function §6'§(param1:§3Q§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§3Q§ = this.§9s§.§9"§;
         this.§9s§.§9"§ = param1;
         var _loc3_:b2Body = this.§6t§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§64§;
            while(_loc4_)
            {
               _loc4_.§2!x§ = param1.§!!$§(_loc2_.§""8§(_loc4_.§2!x§),_loc4_);
               _loc4_ = _loc4_.§?!g§;
            }
            _loc3_ = _loc3_.§?!g§;
         }
      }
      
      public function §8!V§() : void
      {
         this.§9s§.§9"§.§8!V§();
      }
      
      public function §4!>§() : int
      {
         return this.§9s§.§9"§.§4!>§();
      }
      
      public function §@H§(param1:b2BodyDef) : b2Body
      {
         if(this.§?"A§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§;<§ = null;
         _loc2_.§?!g§ = this.§6t§;
         if(this.§6t§)
         {
            this.§6t§.§;<§ = _loc2_;
         }
         this.§6t§ = _loc2_;
         ++this.§;0§;
         return _loc2_;
      }
      
      public function §#!O§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§?"A§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§@!g§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§3u§;
            if(this.§4"<§)
            {
               this.§4"<§.§'!K§(_loc6_.§<S§);
            }
            this.§0§(_loc6_.§<S§);
         }
         var _loc3_:b2ControllerEdge = param1.§]!5§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§@!'§;
            _loc7_.§5-§.§!!z§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§>"K§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§3u§;
            this.§9s§.§2!s§(_loc8_.§-"G§);
         }
         param1.§>"K§ = null;
         var _loc5_:b2Fixture = param1.§64§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§?!g§;
            if(this.§4"<§)
            {
               this.§4"<§.§,"H§(_loc9_);
            }
            _loc9_.§&-§(this.§9s§.§9"§);
            _loc9_.§2!s§();
         }
         param1.§64§ = null;
         param1.§&!I§ = 0;
         if(param1.§;<§)
         {
            param1.§;<§.§?!g§ = param1.§?!g§;
         }
         if(param1.§?!g§)
         {
            param1.§?!g§.§;<§ = param1.§;<§;
         }
         if(param1 == this.§6t§)
         {
            this.§6t§ = param1.§?!g§;
         }
         --this.§;0§;
      }
      
      public function §]"&§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§3!N§(param1,null);
         _loc2_.§;<§ = null;
         _loc2_.§?!g§ = this.§@!g§;
         if(this.§@!g§)
         {
            this.§@!g§.§;<§ = _loc2_;
         }
         this.§@!g§ = _loc2_;
         ++this.§<!y§;
         _loc2_.§,E§.§<S§ = _loc2_;
         _loc2_.§,E§.§[!!§ = _loc2_.§5!§;
         _loc2_.§,E§.§ " § = null;
         _loc2_.§,E§.§3u§ = _loc2_.§3"X§.§@!g§;
         if(_loc2_.§3"X§.§@!g§)
         {
            _loc2_.§3"X§.§@!g§.§ " § = _loc2_.§,E§;
         }
         _loc2_.§3"X§.§@!g§ = _loc2_.§,E§;
         _loc2_.§?!B§.§<S§ = _loc2_;
         _loc2_.§?!B§.§[!!§ = _loc2_.§3"X§;
         _loc2_.§?!B§.§ " § = null;
         _loc2_.§?!B§.§3u§ = _loc2_.§5!§.§@!g§;
         if(_loc2_.§5!§.§@!g§)
         {
            _loc2_.§5!§.§@!g§.§ " § = _loc2_.§?!B§;
         }
         _loc2_.§5!§.§@!g§ = _loc2_.§?!B§;
         var _loc3_:b2Body = param1.§`y§;
         var _loc4_:b2Body = param1.§8!7§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§0!z§();
            while(_loc5_)
            {
               if(_loc5_.§[!!§ == _loc3_)
               {
                  _loc5_.§-"G§.§^e§();
               }
               _loc5_ = _loc5_.§3u§;
            }
         }
         return _loc2_;
      }
      
      public function §0§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§8_§;
         if(param1.§;<§)
         {
            param1.§;<§.§?!g§ = param1.§?!g§;
         }
         if(param1.§?!g§)
         {
            param1.§?!g§.§;<§ = param1.§;<§;
         }
         if(param1 == this.§@!g§)
         {
            this.§@!g§ = param1.§?!g§;
         }
         var _loc3_:b2Body = param1.§3"X§;
         var _loc4_:b2Body = param1.§5!§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§,E§.§ " §)
         {
            param1.§,E§.§ " §.§3u§ = param1.§,E§.§3u§;
         }
         if(param1.§,E§.§3u§)
         {
            param1.§,E§.§3u§.§ " § = param1.§,E§.§ " §;
         }
         if(param1.§,E§ == _loc3_.§@!g§)
         {
            _loc3_.§@!g§ = param1.§,E§.§3u§;
         }
         param1.§,E§.§ " § = null;
         param1.§,E§.§3u§ = null;
         if(param1.§?!B§.§ " §)
         {
            param1.§?!B§.§ " §.§3u§ = param1.§?!B§.§3u§;
         }
         if(param1.§?!B§.§3u§)
         {
            param1.§?!B§.§3u§.§ " § = param1.§?!B§.§ " §;
         }
         if(param1.§?!B§ == _loc4_.§@!g§)
         {
            _loc4_.§@!g§ = param1.§?!B§.§3u§;
         }
         param1.§?!B§.§ " § = null;
         param1.§?!B§.§3u§ = null;
         b2Joint.§2!s§(param1,null);
         --this.§<!y§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§0!z§();
            while(_loc5_)
            {
               if(_loc5_.§[!!§ == _loc3_)
               {
                  _loc5_.§-"G§.§^e§();
               }
               _loc5_ = _loc5_.§3u§;
            }
         }
      }
      
      public function §%"D§(param1:b2Controller) : b2Controller
      {
         param1.§?!g§ = this.§]!5§;
         param1.§;<§ = null;
         this.§]!5§ = param1;
         param1.m_world = this;
         ++this.§>+§;
         return param1;
      }
      
      public function §%H§(param1:b2Controller) : void
      {
         if(param1.§;<§)
         {
            param1.§;<§.§?!g§ = param1.§?!g§;
         }
         if(param1.§?!g§)
         {
            param1.§?!g§.§;<§ = param1.§;<§;
         }
         if(this.§]!5§ == param1)
         {
            this.§]!5§ = param1.§?!g§;
         }
         --this.§>+§;
      }
      
      public function §8Y§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§?!g§ = this.§]!5§;
         param1.§;<§ = null;
         if(this.§]!5§)
         {
            this.§]!5§.§;<§ = param1;
         }
         this.§]!5§ = param1;
         ++this.§>+§;
         param1.m_world = this;
         return param1;
      }
      
      public function §=!n§(param1:b2Controller) : void
      {
         param1.§7!P§();
         if(param1.§?!g§)
         {
            param1.§?!g§.§;<§ = param1.§;<§;
         }
         if(param1.§;<§)
         {
            param1.§;<§.§?!g§ = param1.§?!g§;
         }
         if(param1 == this.§]!5§)
         {
            this.§]!5§ = param1.§?!g§;
         }
         --this.§>+§;
      }
      
      public function §<!!§(param1:Boolean) : void
      {
         § !D§ = param1;
      }
      
      public function §;!b§(param1:Boolean) : void
      {
         §^!O§ = param1;
      }
      
      public function §!!&§() : int
      {
         return this.§;0§;
      }
      
      public function §-=§() : int
      {
         return this.§<!y§;
      }
      
      public function §`!^§() : int
      {
         return this.§%!0§;
      }
      
      public function §&!@§(param1:b2Vec2) : void
      {
         this.§!F§ = param1;
      }
      
      public function §1_§() : b2Vec2
      {
         return this.§!F§;
      }
      
      public function §?!3§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §=m§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§2"B§ & §-!M§)
         {
            this.§9s§.§+!l§();
            this.§2"B§ &= ~§-!M§;
         }
         this.§2"B§ |= §'!w§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§;J§ = param1;
         _loc4_.§;N§ = param2;
         _loc4_.§="W§ = param3;
         if(param1 > 0)
         {
            _loc4_.§9n§ = 1 / param1;
         }
         else
         {
            _loc4_.§9n§ = 0;
         }
         _loc4_.§]'§ = this.§4!Z§ * param1;
         _loc4_.§@I§ = § !D§;
         this.§9s§.§+"M§();
         if(_loc4_.§;J§ > 0)
         {
            this.§+!o§(_loc4_);
         }
         if(§^!O§ && _loc4_.§;J§ > 0)
         {
            this.§7!_§(_loc4_);
         }
         if(_loc4_.§;J§ > 0)
         {
            this.§4!Z§ = _loc4_.§9n§;
         }
         this.§2"B§ &= ~§'!w§;
      }
      
      public function §6!h§() : void
      {
         var _loc1_:b2Body = this.§6t§;
         while(_loc1_)
         {
            _loc1_.§8"?§.§%y§();
            _loc1_.§1"@§ = 0;
            _loc1_ = _loc1_.§?!g§;
         }
      }
      
      public function §else§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§3Q§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§1s§ == null)
         {
            return;
         }
         this.§1s§.§5!t§.graphics.clear();
         var _loc1_:uint = this.§1s§.§6"Q§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§?O§)
         {
            _loc3_ = this.§6t§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§,"G§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§["4§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§>!f§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§["4§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§>!f§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§["4§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§["4§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§["4§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§?!g§;
               }
               _loc3_ = _loc3_.§?!g§;
            }
         }
         if(_loc1_ & b2DebugDraw.§12§)
         {
            _loc6_ = this.§@!g§;
            while(_loc6_)
            {
               this.§="I§(_loc6_);
               _loc6_ = _loc6_.§?!g§;
            }
         }
         if(_loc1_ & b2DebugDraw.§1!L§)
         {
            _loc16_ = this.§]!5§;
            while(_loc16_)
            {
               _loc16_.§5""§(this.§1s§);
               _loc16_ = _loc16_.§?!g§;
            }
         }
         if(_loc1_ & b2DebugDraw.§in§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§9s§.§>"K§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§]!A§();
               _loc19_ = _loc17_.§3!]§();
               _loc20_ = _loc18_.§+""§().§4P§();
               _loc21_ = _loc19_.§+""§().§4P§();
               this.§1s§.§%!2§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§>!v§();
            }
         }
         if(_loc1_ & b2DebugDraw.§9Q§)
         {
            _loc7_ = this.§9s§.§9"§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§6t§;
            while(_loc3_)
            {
               if(_loc3_.§,"G§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§""8§(_loc4_.§2!x§);
                     _loc14_[0].Set(_loc22_.§8"S§.x,_loc22_.§8"S§.y);
                     _loc14_[1].Set(_loc22_.§4B§.x,_loc22_.§8"S§.y);
                     _loc14_[2].Set(_loc22_.§4B§.x,_loc22_.§4B§.y);
                     _loc14_[3].Set(_loc22_.§8"S§.x,_loc22_.§4B§.y);
                     this.§1s§.§2!W§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§>!v§();
                  }
               }
               _loc3_ = _loc3_.§>!v§();
            }
         }
         if(_loc1_ & b2DebugDraw.§7#§)
         {
            _loc3_ = this.§6t§;
            while(_loc3_)
            {
               (_loc11_ = §?n§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§2]§();
               this.§1s§.§>"Z§(_loc11_);
               _loc3_ = _loc3_.§?!g§;
            }
         }
      }
      
      public function §"4§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§3Q§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§9s§.§9"§;
         broadPhase.§^"Y§(WorldQueryWrapper,aabb);
      }
      
      public function §!c§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§3Q§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§9e§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§!"0§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§75§();
         }
         broadPhase = this.§9s§.§9"§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§^"Y§(WorldQueryWrapper,aabb);
      }
      
      public function §6N§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§3Q§ = null;
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
         broadPhase = this.§9s§.§9"§;
         var aabb:b2AABB = new b2AABB();
         aabb.§8"S§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§4B§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§^"Y§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§3Q§ = null;
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
            return param1.§;"I§;
         };
         broadPhase = this.§9s§.§9"§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §]O§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §%"I§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §4"-§() : b2Body
      {
         return this.§6t§;
      }
      
      public function §5,§() : b2Joint
      {
         return this.§@!g§;
      }
      
      public function §0!z§() : b2Contact
      {
         return this.§>"K§;
      }
      
      public function §?"A§() : Boolean
      {
         return (this.§2"B§ & §'!w§) > 0;
      }
      
      b2internal function §+!o§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§]!5§;
         while(_loc3_)
         {
            _loc3_.§=m§(param1);
            _loc3_ = _loc3_.§?!g§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§8!J§).§6!Q§(this.§;0§,this.§%!0§,this.§<!y§,null,this.§9s§.§4!O§,this.§,"V§);
         _loc2_ = this.§6t§;
         while(_loc2_)
         {
            _loc2_.§2"B§ &= ~b2Body.§>7§;
            _loc2_ = _loc2_.§?!g§;
         }
         var _loc5_:b2Contact = this.§>"K§;
         while(_loc5_)
         {
            _loc5_.§2"B§ &= ~b2Contact.§>7§;
            _loc5_ = _loc5_.§?!g§;
         }
         var _loc6_:b2Joint = this.§@!g§;
         while(_loc6_)
         {
            _loc6_.§9!v§ = false;
            _loc6_ = _loc6_.§?!g§;
         }
         var _loc7_:int = this.§;0§;
         var _loc8_:Vector.<b2Body> = this.§%"&§;
         var _loc9_:b2Body = this.§6t§;
         while(_loc9_)
         {
            if(!(_loc9_.§2"B§ & b2Body.§>7§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§,"G§() == false))
               {
                  if(_loc9_.§>!f§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§7!P§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§2"B§ |= b2Body.§>7§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§'!$§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§>!f§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§>"K§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§-"G§.§2"B§ & b2Contact.§>7§))
                              {
                                 if(!(_loc13_.§-"G§.§0d§() == true || _loc13_.§-"G§.§;!S§() == false || _loc13_.§-"G§.§3"I§() == false))
                                 {
                                    _loc4_.§87§(_loc13_.§-"G§);
                                    _loc13_.§-"G§.§2"B§ |= b2Contact.§>7§;
                                    if(!((_loc12_ = _loc13_.§[!!§).§2"B§ & b2Body.§>7§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§2"B§ |= b2Body.§>7§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§3u§;
                           }
                           _loc14_ = _loc2_.§@!g§;
                           while(_loc14_)
                           {
                              if(_loc14_.§<S§.§9!v§ != true)
                              {
                                 if((_loc12_ = _loc14_.§[!!§).§,"G§() != false)
                                 {
                                    _loc4_.§@"9§(_loc14_.§<S§);
                                    _loc14_.§<S§.§9!v§ = true;
                                    if(!(_loc12_.§2"B§ & b2Body.§>7§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§2"B§ |= b2Body.§>7§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§3u§;
                           }
                        }
                     }
                     _loc4_.§+!o§(param1,this.§!F§,this.§,!T§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§;0§)
                     {
                        _loc2_ = _loc4_.§;"[§[_loc11_];
                        if(_loc2_.§>!f§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§2"B§ &= ~b2Body.§>7§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§?!g§;
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
         _loc2_ = this.§6t§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§,"G§() == false))
            {
               if(_loc2_.§>!f§() != b2Body.b2_staticBody)
               {
                  _loc2_.§-! §();
               }
            }
            _loc2_ = _loc2_.§?!g§;
         }
         this.§9s§.§+!l§();
      }
      
      b2internal function §7!_§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§8!J§).§6!Q§(this.§;0§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§9s§.§4!O§,this.§,"V§);
         var _loc10_:Vector.<b2Body> = §-!<§;
         _loc2_ = this.§6t§;
         while(_loc2_)
         {
            _loc2_.§2"B§ &= ~b2Body.§>7§;
            _loc2_.m_sweep.§6!0§ = 0;
            _loc2_ = _loc2_.§?!g§;
         }
         _loc11_ = this.§>"K§;
         while(_loc11_)
         {
            _loc11_.§2"B§ &= ~(b2Contact.§?!$§ | b2Contact.§>7§);
            _loc11_ = _loc11_.§?!g§;
         }
         _loc8_ = this.§@!g§;
         while(_loc8_)
         {
            _loc8_.§9!v§ = false;
            _loc8_ = _loc8_.§?!g§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§>"K§;
            for(; _loc11_; _loc11_ = _loc11_.§?!g§)
            {
               if(!(_loc11_.§0d§() == true || _loc11_.§;!S§() == false || _loc11_.§>"2§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§2"B§ & b2Contact.§?!$§)
                  {
                     _loc19_ = _loc11_.§;"K§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§4!?§;
                     _loc4_ = _loc11_.§3!B§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§>!f§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§>!f§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§6!0§;
                     if(_loc5_.m_sweep.§6!0§ < _loc6_.m_sweep.§6!0§)
                     {
                        _loc20_ = _loc6_.m_sweep.§6!0§;
                        _loc5_.m_sweep.§'a§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§6!0§ < _loc5_.m_sweep.§6!0§)
                     {
                        _loc20_ = _loc5_.m_sweep.§6!0§;
                        _loc6_.m_sweep.§'a§(_loc20_);
                     }
                     _loc19_ = _loc11_.§2"5§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§;"K§ = _loc19_;
                     _loc11_.§2"B§ |= b2Contact.§?!$§;
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
            _loc3_ = _loc12_.§4!?§;
            _loc4_ = _loc12_.§3!B§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §'!E§.Set(_loc5_.m_sweep);
            §-"#§.Set(_loc6_.m_sweep);
            _loc5_.§'a§(_loc13_);
            _loc6_.§'a§(_loc13_);
            _loc12_.§7J§(this.§9s§.§4!O§);
            _loc12_.§2"B§ &= ~b2Contact.§?!$§;
            if(_loc12_.§0d§() == true || _loc12_.§;!S§() == false)
            {
               _loc5_.m_sweep.Set(§'!E§);
               _loc6_.m_sweep.Set(§-"#§);
               _loc5_.§+!q§();
               _loc6_.§+!q§();
            }
            else if(_loc12_.§3"I§() != false)
            {
               if((_loc14_ = _loc5_).§>!f§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§7!P§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§2"B§ |= b2Body.§>7§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§'!$§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§>!f§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§>"K§;
                     while(_loc7_)
                     {
                        if(_loc9_.§%!0§ == _loc9_.§9"3§)
                        {
                           break;
                        }
                        if(!(_loc7_.§-"G§.§2"B§ & b2Contact.§>7§))
                        {
                           if(!(_loc7_.§-"G§.§0d§() == true || _loc7_.§-"G§.§;!S§() == false || _loc7_.§-"G§.§3"I§() == false))
                           {
                              _loc9_.§87§(_loc7_.§-"G§);
                              _loc7_.§-"G§.§2"B§ |= b2Contact.§>7§;
                              if(!((_loc22_ = _loc7_.§[!!§).§2"B§ & b2Body.§>7§))
                              {
                                 if(_loc22_.§>!f§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§'a§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§2"B§ |= b2Body.§>7§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§3u§;
                     }
                     _loc21_ = _loc2_.§@!g§;
                     while(_loc21_)
                     {
                        if(_loc9_.§<!y§ != _loc9_.§9!q§)
                        {
                           if(_loc21_.§<S§.§9!v§ != true)
                           {
                              if((_loc22_ = _loc21_.§[!!§).§,"G§() != false)
                              {
                                 _loc9_.§@"9§(_loc21_.§<S§);
                                 _loc21_.§<S§.§9!v§ = true;
                                 if(!(_loc22_.§2"B§ & b2Body.§>7§))
                                 {
                                    if(_loc22_.§>!f§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§'a§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§2"B§ |= b2Body.§>7§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§3u§;
                     }
                  }
               }
               (_loc17_ = §@!,§).§@I§ = false;
               _loc17_.§;J§ = (1 - _loc13_) * param1.§;J§;
               _loc17_.§9n§ = 1 / _loc17_.§;J§;
               _loc17_.§]'§ = 0;
               _loc17_.§;N§ = param1.§;N§;
               _loc17_.§="W§ = param1.§="W§;
               _loc9_.§7!_§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§;0§)
               {
                  _loc2_ = _loc9_.§;"[§[_loc18_];
                  _loc2_.§2"B§ &= ~b2Body.§>7§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§>!f§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§-! §();
                        _loc7_ = _loc2_.§>"K§;
                        while(_loc7_)
                        {
                           _loc7_.§-"G§.§2"B§ &= ~b2Contact.§?!$§;
                           _loc7_ = _loc7_.§3u§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§%!0§)
               {
                  _loc11_ = _loc9_.§=p§[_loc18_];
                  _loc11_.§2"B§ &= ~(b2Contact.§?!$§ | b2Contact.§>7§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§<!y§)
               {
                  (_loc8_ = _loc9_.§,!f§[_loc18_]).§9!v§ = false;
                  _loc18_++;
               }
               this.§9s§.§+!l§();
            }
         }
      }
      
      b2internal function §="I§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§["H§();
         var _loc3_:b2Body = param1.§]!s§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §<g§;
         switch(param1.§<"@§)
         {
            case b2Joint.§&"W§:
               this.§1s§.§%!2§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§3`§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§8!i§();
               _loc13_ = _loc11_.§?0§();
               this.§1s§.§%!2§(_loc12_,_loc8_,_loc10_);
               this.§1s§.§%!2§(_loc13_,_loc9_,_loc10_);
               this.§1s§.§%!2§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§-m§:
               this.§1s§.§%!2§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§1s§.§%!2§(_loc6_,_loc8_,_loc10_);
               }
               this.§1s§.§%!2§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§1s§.§%!2§(_loc7_,_loc9_,_loc10_);
               }
         }
      }
      
      b2internal function §["4§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§<"@§)
         {
            case b2Shape.§ "&§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§^T§(param2,_loc4_.§2"9§);
               _loc6_ = _loc4_.§0!_§;
               _loc7_ = param2.R.col1;
               this.§1s§.§2"P§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§8x§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§"R§();
               _loc11_ = _loc9_.§,!N§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§^T§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§1s§.§2O§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§?!7§:
               _loc13_ = param1 as b2EdgeShape;
               this.§1s§.§%!2§(b2Math.§^T§(param2,_loc13_.GetVertex1()),b2Math.§^T§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

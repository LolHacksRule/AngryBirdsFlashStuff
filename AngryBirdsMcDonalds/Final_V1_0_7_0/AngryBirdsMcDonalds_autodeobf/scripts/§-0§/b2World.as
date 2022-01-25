package §-0§
{
   import §#!K§.*;
   import §&!P§.*;
   import §&!g§.b2Controller;
   import §&!g§.b2ControllerEdge;
   import §+!o§.*;
   import §4!4§.*;
   import §@g§.*;
   import §^!%§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §2X§:b2Transform = new b2Transform();
      
      private static var §7!!§:b2Sweep = new b2Sweep();
      
      private static var §'V§:b2Sweep = new b2Sweep();
      
      private static var §&k§:b2TimeStep = new b2TimeStep();
      
      private static var §;f§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §16§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §<!%§:Boolean;
      
      private static var §[!N§:Boolean;
      
      public static const §-!`§:int = 1;
      
      public static const §!Q§:int = 2;
       
      
      private var §3!§:Vector.<b2Body>;
      
      b2internal var §+! §:int;
      
      b2internal var §1'§:b2ContactManager;
      
      private var §+g§:b2ContactSolver;
      
      private var §#!H§:b2Island;
      
      b2internal var §&!E§:b2Body;
      
      private var §`A§:b2Joint;
      
      b2internal var §#![§:b2Contact;
      
      private var §>a§:int;
      
      b2internal var §>H§:int;
      
      private var §5!7§:int;
      
      private var §-e§:b2Controller;
      
      private var §]V§:int;
      
      private var §>!]§:b2Vec2;
      
      private var §4S§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §5v§:b2DestructionListener;
      
      private var §0!%§:b2DebugDraw;
      
      private var §1B§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§3!§ = new Vector.<b2Body>();
         this.§1'§ = new b2ContactManager();
         this.§+g§ = new b2ContactSolver();
         this.§#!H§ = new b2Island();
         super();
         this.§5v§ = null;
         this.§0!%§ = null;
         this.§&!E§ = null;
         this.§#![§ = null;
         this.§`A§ = null;
         this.§-e§ = null;
         this.§>a§ = 0;
         this.§>H§ = 0;
         this.§5!7§ = 0;
         this.§]V§ = 0;
         §<!%§ = true;
         §[!N§ = true;
         this.§4S§ = param2;
         this.§>!]§ = param1;
         this.§1B§ = 0;
         this.§1'§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§4F§(_loc3_);
      }
      
      public function §,X§(param1:b2DestructionListener) : void
      {
         this.§5v§ = param1;
      }
      
      public function §7j§(param1:b2ContactFilter) : void
      {
         this.§1'§.§!f§ = param1;
      }
      
      public function §3I§(param1:b2ContactListener) : void
      {
         this.§1'§.§=;§ = param1;
      }
      
      public function §-%§(param1:b2DebugDraw) : void
      {
         this.§0!%§ = param1;
      }
      
      public function §>f§(param1:§<s§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§<s§ = this.§1'§.§'!1§;
         this.§1'§.§'!1§ = param1;
         var _loc3_:b2Body = this.§&!E§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§-!A§;
            while(_loc4_)
            {
               _loc4_.§'U§ = param1.§%t§(_loc2_.§>R§(_loc4_.§'U§),_loc4_);
               _loc4_ = _loc4_.§2G§;
            }
            _loc3_ = _loc3_.§2G§;
         }
      }
      
      public function §20§() : void
      {
         this.§1'§.§'!1§.§20§();
      }
      
      public function §'A§() : int
      {
         return this.§1'§.§'!1§.§'A§();
      }
      
      public function §4F§(param1:b2BodyDef) : b2Body
      {
         if(this.§2!T§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§9!R§ = null;
         _loc2_.§2G§ = this.§&!E§;
         if(this.§&!E§)
         {
            this.§&!E§.§9!R§ = _loc2_;
         }
         this.§&!E§ = _loc2_;
         ++this.§>a§;
         return _loc2_;
      }
      
      public function §[!h§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§2!T§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§`A§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§@!A§;
            if(this.§5v§)
            {
               this.§5v§.§+z§(_loc6_.§5k§);
            }
            this.§]!i§(_loc6_.§5k§);
         }
         var _loc3_:b2ControllerEdge = param1.§-e§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§+!b§;
            _loc7_.§5F§.§#!E§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§#![§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§@!A§;
            this.§1'§.§ B§(_loc8_.§@m§);
         }
         param1.§#![§ = null;
         var _loc5_:b2Fixture = param1.§-!A§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§2G§;
            if(this.§5v§)
            {
               this.§5v§.§<v§(_loc9_);
            }
            _loc9_.§;!Q§(this.§1'§.§'!1§);
            _loc9_.§ B§();
         }
         param1.§-!A§ = null;
         param1.§!<§ = 0;
         if(param1.§9!R§)
         {
            param1.§9!R§.§2G§ = param1.§2G§;
         }
         if(param1.§2G§)
         {
            param1.§2G§.§9!R§ = param1.§9!R§;
         }
         if(param1 == this.§&!E§)
         {
            this.§&!E§ = param1.§2G§;
         }
         --this.§>a§;
      }
      
      public function §=!,§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§6j§(param1,null);
         _loc2_.§9!R§ = null;
         _loc2_.§2G§ = this.§`A§;
         if(this.§`A§)
         {
            this.§`A§.§9!R§ = _loc2_;
         }
         this.§`A§ = _loc2_;
         ++this.§5!7§;
         _loc2_.§"+§.§5k§ = _loc2_;
         _loc2_.§"+§.§1!q§ = _loc2_.§,!7§;
         _loc2_.§"+§.§%!B§ = null;
         _loc2_.§"+§.§@!A§ = _loc2_.§+!`§.§`A§;
         if(_loc2_.§+!`§.§`A§)
         {
            _loc2_.§+!`§.§`A§.§%!B§ = _loc2_.§"+§;
         }
         _loc2_.§+!`§.§`A§ = _loc2_.§"+§;
         _loc2_.§>&§.§5k§ = _loc2_;
         _loc2_.§>&§.§1!q§ = _loc2_.§+!`§;
         _loc2_.§>&§.§%!B§ = null;
         _loc2_.§>&§.§@!A§ = _loc2_.§,!7§.§`A§;
         if(_loc2_.§,!7§.§`A§)
         {
            _loc2_.§,!7§.§`A§.§%!B§ = _loc2_.§>&§;
         }
         _loc2_.§,!7§.§`A§ = _loc2_.§>&§;
         var _loc3_:b2Body = param1.§>!k§;
         var _loc4_:b2Body = param1.§<u§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§+!?§();
            while(_loc5_)
            {
               if(_loc5_.§1!q§ == _loc3_)
               {
                  _loc5_.§@m§.§>x§();
               }
               _loc5_ = _loc5_.§@!A§;
            }
         }
         return _loc2_;
      }
      
      public function §]!i§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§1a§;
         if(param1.§9!R§)
         {
            param1.§9!R§.§2G§ = param1.§2G§;
         }
         if(param1.§2G§)
         {
            param1.§2G§.§9!R§ = param1.§9!R§;
         }
         if(param1 == this.§`A§)
         {
            this.§`A§ = param1.§2G§;
         }
         var _loc3_:b2Body = param1.§+!`§;
         var _loc4_:b2Body = param1.§,!7§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§"+§.§%!B§)
         {
            param1.§"+§.§%!B§.§@!A§ = param1.§"+§.§@!A§;
         }
         if(param1.§"+§.§@!A§)
         {
            param1.§"+§.§@!A§.§%!B§ = param1.§"+§.§%!B§;
         }
         if(param1.§"+§ == _loc3_.§`A§)
         {
            _loc3_.§`A§ = param1.§"+§.§@!A§;
         }
         param1.§"+§.§%!B§ = null;
         param1.§"+§.§@!A§ = null;
         if(param1.§>&§.§%!B§)
         {
            param1.§>&§.§%!B§.§@!A§ = param1.§>&§.§@!A§;
         }
         if(param1.§>&§.§@!A§)
         {
            param1.§>&§.§@!A§.§%!B§ = param1.§>&§.§%!B§;
         }
         if(param1.§>&§ == _loc4_.§`A§)
         {
            _loc4_.§`A§ = param1.§>&§.§@!A§;
         }
         param1.§>&§.§%!B§ = null;
         param1.§>&§.§@!A§ = null;
         b2Joint.§ B§(param1,null);
         --this.§5!7§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§+!?§();
            while(_loc5_)
            {
               if(_loc5_.§1!q§ == _loc3_)
               {
                  _loc5_.§@m§.§>x§();
               }
               _loc5_ = _loc5_.§@!A§;
            }
         }
      }
      
      public function §7K§(param1:b2Controller) : b2Controller
      {
         param1.§2G§ = this.§-e§;
         param1.§9!R§ = null;
         this.§-e§ = param1;
         param1.m_world = this;
         ++this.§]V§;
         return param1;
      }
      
      public function §[;§(param1:b2Controller) : void
      {
         if(param1.§9!R§)
         {
            param1.§9!R§.§2G§ = param1.§2G§;
         }
         if(param1.§2G§)
         {
            param1.§2G§.§9!R§ = param1.§9!R§;
         }
         if(this.§-e§ == param1)
         {
            this.§-e§ = param1.§2G§;
         }
         --this.§]V§;
      }
      
      public function §,!;§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§2G§ = this.§-e§;
         param1.§9!R§ = null;
         if(this.§-e§)
         {
            this.§-e§.§9!R§ = param1;
         }
         this.§-e§ = param1;
         ++this.§]V§;
         param1.m_world = this;
         return param1;
      }
      
      public function §[!R§(param1:b2Controller) : void
      {
         param1.§<]§();
         if(param1.§2G§)
         {
            param1.§2G§.§9!R§ = param1.§9!R§;
         }
         if(param1.§9!R§)
         {
            param1.§9!R§.§2G§ = param1.§2G§;
         }
         if(param1 == this.§-e§)
         {
            this.§-e§ = param1.§2G§;
         }
         --this.§]V§;
      }
      
      public function §@!S§(param1:Boolean) : void
      {
         §<!%§ = param1;
      }
      
      public function §`!G§(param1:Boolean) : void
      {
         §[!N§ = param1;
      }
      
      public function §2w§() : int
      {
         return this.§>a§;
      }
      
      public function §-N§() : int
      {
         return this.§5!7§;
      }
      
      public function §&!f§() : int
      {
         return this.§>H§;
      }
      
      public function §?!?§(param1:b2Vec2) : void
      {
         this.§>!]§ = param1;
      }
      
      public function §<M§() : b2Vec2
      {
         return this.§>!]§;
      }
      
      public function §7k§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §&E§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§+! § & §-!`§)
         {
            this.§1'§.§>P§();
            this.§+! § &= ~§-!`§;
         }
         this.§+! § |= §!Q§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§+u§ = param1;
         _loc4_.§!l§ = param2;
         _loc4_.§]e§ = param3;
         if(param1 > 0)
         {
            _loc4_.§5i§ = 1 / param1;
         }
         else
         {
            _loc4_.§5i§ = 0;
         }
         _loc4_.§,!e§ = this.§1B§ * param1;
         _loc4_.§'!#§ = §<!%§;
         this.§1'§.§[_§();
         if(_loc4_.§+u§ > 0)
         {
            this.§6!'§(_loc4_);
         }
         if(§[!N§ && _loc4_.§+u§ > 0)
         {
            this.§%"§(_loc4_);
         }
         if(_loc4_.§+u§ > 0)
         {
            this.§1B§ = _loc4_.§5i§;
         }
         this.§+! § &= ~§!Q§;
      }
      
      public function §+q§() : void
      {
         var _loc1_:b2Body = this.§&!E§;
         while(_loc1_)
         {
            _loc1_.§<q§.§4[§();
            _loc1_.§"b§ = 0;
            _loc1_ = _loc1_.§2G§;
         }
      }
      
      public function §?z§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§<s§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§0!%§ == null)
         {
            return;
         }
         this.§0!%§.§,F§.graphics.clear();
         var _loc1_:uint = this.§0!%§.§6_§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§"a§)
         {
            _loc3_ = this.§&!E§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.IsActive() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§2c§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§use§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§2c§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§use§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§2c§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§2c§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§2c§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§2G§;
               }
               _loc3_ = _loc3_.§2G§;
            }
         }
         if(_loc1_ & b2DebugDraw.§-!7§)
         {
            _loc6_ = this.§`A§;
            while(_loc6_)
            {
               this.§"!$§(_loc6_);
               _loc6_ = _loc6_.§2G§;
            }
         }
         if(_loc1_ & b2DebugDraw.§#!§)
         {
            _loc16_ = this.§-e§;
            while(_loc16_)
            {
               _loc16_.§;!n§(this.§0!%§);
               _loc16_ = _loc16_.§2G§;
            }
         }
         if(_loc1_ & b2DebugDraw.§4!6§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§1'§.§#![§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§<D§();
               _loc19_ = _loc17_.§5!?§();
               _loc20_ = _loc18_.§#x§().§?!p§();
               _loc21_ = _loc19_.§#x§().§?!p§();
               this.§0!%§.§4O§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§2z§();
            }
         }
         if(_loc1_ & b2DebugDraw.§4P§)
         {
            _loc7_ = this.§1'§.§'!1§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§&!E§;
            while(_loc3_)
            {
               if(_loc3_.IsActive() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§>R§(_loc4_.§'U§);
                     _loc14_[0].Set(_loc22_.§4%§.x,_loc22_.§4%§.y);
                     _loc14_[1].Set(_loc22_.§!#§.x,_loc22_.§4%§.y);
                     _loc14_[2].Set(_loc22_.§!#§.x,_loc22_.§!#§.y);
                     _loc14_[3].Set(_loc22_.§4%§.x,_loc22_.§!#§.y);
                     this.§0!%§.§>!0§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§2z§();
                  }
               }
               _loc3_ = _loc3_.§2z§();
            }
         }
         if(_loc1_ & b2DebugDraw.§5!4§)
         {
            _loc3_ = this.§&!E§;
            while(_loc3_)
            {
               (_loc11_ = §2X§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§0!%§.§@s§(_loc11_);
               _loc3_ = _loc3_.§2G§;
            }
         }
      }
      
      public function §@!^§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§<s§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§1'§.§'!1§;
         broadPhase.§?!,§(WorldQueryWrapper,aabb);
      }
      
      public function §4!S§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§<s§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§`C§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§>!%§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§1!,§();
         }
         broadPhase = this.§1'§.§'!1§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§?!,§(WorldQueryWrapper,aabb);
      }
      
      public function §`!9§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§<s§ = null;
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
         broadPhase = this.§1'§.§'!1§;
         var aabb:b2AABB = new b2AABB();
         aabb.§4%§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§!#§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§?!,§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§<s§ = null;
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
            return param1.§92§;
         };
         broadPhase = this.§1'§.§'!1§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §@!T§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §>M§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §0T§() : b2Body
      {
         return this.§&!E§;
      }
      
      public function §#!=§() : b2Joint
      {
         return this.§`A§;
      }
      
      public function §+!?§() : b2Contact
      {
         return this.§#![§;
      }
      
      public function §2!T§() : Boolean
      {
         return (this.§+! § & §!Q§) > 0;
      }
      
      b2internal function §6!'§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§-e§;
         while(_loc3_)
         {
            _loc3_.§&E§(param1);
            _loc3_ = _loc3_.§2G§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§#!H§).§08§(this.§>a§,this.§>H§,this.§5!7§,null,this.§1'§.§=;§,this.§+g§);
         _loc2_ = this.§&!E§;
         while(_loc2_)
         {
            _loc2_.§+! § &= ~b2Body.§"Z§;
            _loc2_ = _loc2_.§2G§;
         }
         var _loc5_:b2Contact = this.§#![§;
         while(_loc5_)
         {
            _loc5_.§+! § &= ~b2Contact.§"Z§;
            _loc5_ = _loc5_.§2G§;
         }
         var _loc6_:b2Joint = this.§`A§;
         while(_loc6_)
         {
            _loc6_.§#8§ = false;
            _loc6_ = _loc6_.§2G§;
         }
         var _loc7_:int = this.§>a§;
         var _loc8_:Vector.<b2Body> = this.§3!§;
         var _loc9_:b2Body = this.§&!E§;
         while(_loc9_)
         {
            if(!(_loc9_.§+! § & b2Body.§"Z§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.IsActive() == false))
               {
                  if(_loc9_.§use§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§<]§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§+! § |= b2Body.§"Z§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§[X§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§use§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§#![§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§@m§.§+! § & b2Contact.§"Z§))
                              {
                                 if(!(_loc13_.§@m§.§,c§() == true || _loc13_.§@m§.§66§() == false || _loc13_.§@m§.§"!#§() == false))
                                 {
                                    _loc4_.§`!L§(_loc13_.§@m§);
                                    _loc13_.§@m§.§+! § |= b2Contact.§"Z§;
                                    if(!((_loc12_ = _loc13_.§1!q§).§+! § & b2Body.§"Z§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§+! § |= b2Body.§"Z§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§@!A§;
                           }
                           _loc14_ = _loc2_.§`A§;
                           while(_loc14_)
                           {
                              if(_loc14_.§5k§.§#8§ != true)
                              {
                                 if((_loc12_ = _loc14_.§1!q§).IsActive() != false)
                                 {
                                    _loc4_.§`3§(_loc14_.§5k§);
                                    _loc14_.§5k§.§#8§ = true;
                                    if(!(_loc12_.§+! § & b2Body.§"Z§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§+! § |= b2Body.§"Z§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§@!A§;
                           }
                        }
                     }
                     _loc4_.§6!'§(param1,this.§>!]§,this.§4S§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§>a§)
                     {
                        _loc2_ = _loc4_.§#!I§[_loc11_];
                        if(_loc2_.§use§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§+! § &= ~b2Body.§"Z§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§2G§;
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
         _loc2_ = this.§&!E§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.IsActive() == false))
            {
               if(_loc2_.§use§() != b2Body.b2_staticBody)
               {
                  _loc2_.§4l§();
               }
            }
            _loc2_ = _loc2_.§2G§;
         }
         this.§1'§.§>P§();
      }
      
      b2internal function §%"§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§#!H§).§08§(this.§>a§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§1'§.§=;§,this.§+g§);
         var _loc10_:Vector.<b2Body> = §;f§;
         _loc2_ = this.§&!E§;
         while(_loc2_)
         {
            _loc2_.§+! § &= ~b2Body.§"Z§;
            _loc2_.m_sweep.§1!_§ = 0;
            _loc2_ = _loc2_.§2G§;
         }
         _loc11_ = this.§#![§;
         while(_loc11_)
         {
            _loc11_.§+! § &= ~(b2Contact.§?&§ | b2Contact.§"Z§);
            _loc11_ = _loc11_.§2G§;
         }
         _loc8_ = this.§`A§;
         while(_loc8_)
         {
            _loc8_.§#8§ = false;
            _loc8_ = _loc8_.§2G§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§#![§;
            while(_loc11_)
            {
               if(!(_loc11_.§,c§() == true || _loc11_.§66§() == false || _loc11_.§<R§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§+! § & b2Contact.§?&§)
                  {
                     _loc19_ = _loc11_.§-!2§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§0!b§;
                     _loc4_ = _loc11_.§&a§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§use§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§use§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr611:
                        _loc11_ = _loc11_.§2G§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§1!_§;
                     if(_loc5_.m_sweep.§1!_§ < _loc6_.m_sweep.§1!_§)
                     {
                        _loc20_ = _loc6_.m_sweep.§1!_§;
                        _loc5_.m_sweep.§&!Y§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§1!_§ < _loc5_.m_sweep.§1!_§)
                     {
                        _loc20_ = _loc5_.m_sweep.§1!_§;
                        _loc6_.m_sweep.§&!Y§(_loc20_);
                     }
                     _loc19_ = _loc11_.§package§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§-!2§ = _loc19_;
                     _loc11_.§+! § |= b2Contact.§?&§;
                     §§goto(addr611);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr611);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§0!b§;
            _loc4_ = _loc12_.§&a§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §7!!§.Set(_loc5_.m_sweep);
            §'V§.Set(_loc6_.m_sweep);
            _loc5_.§&!Y§(_loc13_);
            _loc6_.§&!Y§(_loc13_);
            _loc12_.§##§(this.§1'§.§=;§);
            _loc12_.§+! § &= ~b2Contact.§?&§;
            if(_loc12_.§,c§() == true || _loc12_.§66§() == false)
            {
               _loc5_.m_sweep.Set(§7!!§);
               _loc6_.m_sweep.Set(§'V§);
               _loc5_.§]t§();
               _loc6_.§]t§();
            }
            else if(_loc12_.§"!#§() != false)
            {
               if((_loc14_ = _loc5_).§use§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§<]§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§+! § |= b2Body.§"Z§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§[X§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§use§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§#![§;
                     while(_loc7_)
                     {
                        if(_loc9_.§>H§ == _loc9_.§,0§)
                        {
                           break;
                        }
                        if(!(_loc7_.§@m§.§+! § & b2Contact.§"Z§))
                        {
                           if(!(_loc7_.§@m§.§,c§() == true || _loc7_.§@m§.§66§() == false || _loc7_.§@m§.§"!#§() == false))
                           {
                              _loc9_.§`!L§(_loc7_.§@m§);
                              _loc7_.§@m§.§+! § |= b2Contact.§"Z§;
                              if(!((_loc22_ = _loc7_.§1!q§).§+! § & b2Body.§"Z§))
                              {
                                 if(_loc22_.§use§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§&!Y§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§+! § |= b2Body.§"Z§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§@!A§;
                     }
                     _loc21_ = _loc2_.§`A§;
                     while(_loc21_)
                     {
                        if(_loc9_.§5!7§ != _loc9_.§#!>§)
                        {
                           if(_loc21_.§5k§.§#8§ != true)
                           {
                              if((_loc22_ = _loc21_.§1!q§).IsActive() != false)
                              {
                                 _loc9_.§`3§(_loc21_.§5k§);
                                 _loc21_.§5k§.§#8§ = true;
                                 if(!(_loc22_.§+! § & b2Body.§"Z§))
                                 {
                                    if(_loc22_.§use§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§&!Y§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§+! § |= b2Body.§"Z§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§@!A§;
                     }
                  }
               }
               (_loc17_ = §&k§).§'!#§ = false;
               _loc17_.§+u§ = (1 - _loc13_) * param1.§+u§;
               _loc17_.§5i§ = 1 / _loc17_.§+u§;
               _loc17_.§,!e§ = 0;
               _loc17_.§!l§ = param1.§!l§;
               _loc17_.§]e§ = param1.§]e§;
               _loc9_.§%"§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§>a§)
               {
                  _loc2_ = _loc9_.§#!I§[_loc18_];
                  _loc2_.§+! § &= ~b2Body.§"Z§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§use§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§4l§();
                        _loc7_ = _loc2_.§#![§;
                        while(_loc7_)
                        {
                           _loc7_.§@m§.§+! § &= ~b2Contact.§?&§;
                           _loc7_ = _loc7_.§@!A§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§>H§)
               {
                  _loc11_ = _loc9_.§+!n§[_loc18_];
                  _loc11_.§+! § &= ~(b2Contact.§?&§ | b2Contact.§"Z§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§5!7§)
               {
                  (_loc8_ = _loc9_.§53§[_loc18_]).§#8§ = false;
                  _loc18_++;
               }
               this.§1'§.§>P§();
            }
         }
      }
      
      b2internal function §"!$§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§@!'§();
         var _loc3_:b2Body = param1.§!!U§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §16§;
         switch(param1.§,!f§)
         {
            case b2Joint.§;V§:
               this.§0!%§.§4O§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§@_§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§+3§();
               _loc13_ = _loc11_.§?]§();
               this.§0!%§.§4O§(_loc12_,_loc8_,_loc10_);
               this.§0!%§.§4O§(_loc13_,_loc9_,_loc10_);
               this.§0!%§.§4O§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§'g§:
               this.§0!%§.§4O§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§0!%§.§4O§(_loc6_,_loc8_,_loc10_);
               }
               this.§0!%§.§4O§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§0!%§.§4O§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §2c§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§,!f§)
         {
            case b2Shape.§'B§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§=o§(param2,_loc4_.§`%§);
               _loc6_ = _loc4_.§0!B§;
               _loc7_ = param2.R.col1;
               this.§0!%§.§1N§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§@P§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§<!C§();
               _loc11_ = _loc9_.§1!3§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§=o§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§0!%§.§&p§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§@!n§:
               _loc13_ = param1 as b2EdgeShape;
               this.§0!%§.§4O§(b2Math.§=o§(param2,_loc13_.GetVertex1()),b2Math.§=o§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

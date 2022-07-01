package §7!q§
{
   import §,";§.b2Controller;
   import §,";§.b2ControllerEdge;
   import §,k§.*;
   import §-g§.*;
   import §1!z§.*;
   import §5!]§.*;
   import §[M§.*;
   import §^%§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §1",§:b2Transform = new b2Transform();
      
      private static var §<!m§:b2Sweep = new b2Sweep();
      
      private static var §,!d§:b2Sweep = new b2Sweep();
      
      private static var § !&§:b2TimeStep = new b2TimeStep();
      
      private static var §0n§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §3!5§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §6"-§:Boolean;
      
      private static var §`z§:Boolean;
      
      public static const §"![§:int = 1;
      
      public static const § !4§:int = 2;
       
      
      private var §5g§:Vector.<b2Body>;
      
      b2internal var §["0§:int;
      
      b2internal var §<!y§:b2ContactManager;
      
      private var §1!e§:b2ContactSolver;
      
      private var §3!$§:b2Island;
      
      b2internal var §'§:b2Body;
      
      private var §=l§:b2Joint;
      
      b2internal var §,!1§:b2Contact;
      
      private var §3",§:int;
      
      b2internal var §>B§:int;
      
      private var §5o§:int;
      
      private var §true§:b2Controller;
      
      private var §'>§:int;
      
      private var §-"=§:b2Vec2;
      
      private var §7!Y§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §^"'§:b2DestructionListener;
      
      private var §#k§:b2DebugDraw;
      
      private var §0!=§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§5g§ = new Vector.<b2Body>();
         this.§<!y§ = new b2ContactManager();
         this.§1!e§ = new b2ContactSolver();
         this.§3!$§ = new b2Island();
         super();
         this.§^"'§ = null;
         this.§#k§ = null;
         this.§'§ = null;
         this.§,!1§ = null;
         this.§=l§ = null;
         this.§true§ = null;
         this.§3",§ = 0;
         this.§>B§ = 0;
         this.§5o§ = 0;
         this.§'>§ = 0;
         §6"-§ = true;
         §`z§ = true;
         this.§7!Y§ = param2;
         this.§-"=§ = param1;
         this.§0!=§ = 0;
         this.§<!y§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§+!q§(_loc3_);
      }
      
      public function §%!<§(param1:b2DestructionListener) : void
      {
         this.§^"'§ = param1;
      }
      
      public function §;!5§(param1:b2ContactFilter) : void
      {
         this.§<!y§.§,!J§ = param1;
      }
      
      public function § !F§(param1:b2ContactListener) : void
      {
         this.§<!y§.§@!E§ = param1;
      }
      
      public function §`E§(param1:b2DebugDraw) : void
      {
         this.§#k§ = param1;
      }
      
      public function §&b§(param1:§<!D§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§<!D§ = this.§<!y§.§-!R§;
         this.§<!y§.§-!R§ = param1;
         var _loc3_:b2Body = this.§'§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§'!J§;
            while(_loc4_)
            {
               _loc4_.§&;§ = param1.§3p§(_loc2_.§8!r§(_loc4_.§&;§),_loc4_);
               _loc4_ = _loc4_.§,"!§;
            }
            _loc3_ = _loc3_.§,"!§;
         }
      }
      
      public function §%X§() : void
      {
         this.§<!y§.§-!R§.§%X§();
      }
      
      public function §9!-§() : int
      {
         return this.§<!y§.§-!R§.§9!-§();
      }
      
      public function §+!q§(param1:b2BodyDef) : b2Body
      {
         if(this.§3o§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§5!M§ = null;
         _loc2_.§,"!§ = this.§'§;
         if(this.§'§)
         {
            this.§'§.§5!M§ = _loc2_;
         }
         this.§'§ = _loc2_;
         ++this.§3",§;
         return _loc2_;
      }
      
      public function §2_§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§3o§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§=l§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§!",§;
            if(this.§^"'§)
            {
               this.§^"'§.§-0§(_loc6_.§2<§);
            }
            this.§6-§(_loc6_.§2<§);
         }
         var _loc3_:b2ControllerEdge = param1.§true§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§7!p§;
            _loc7_.§ !t§.§5!7§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§,!1§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§!",§;
            this.§<!y§.§,"0§(_loc8_.§9"6§);
         }
         param1.§,!1§ = null;
         var _loc5_:b2Fixture = param1.§'!J§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§,"!§;
            if(this.§^"'§)
            {
               this.§^"'§.§=!%§(_loc9_);
            }
            _loc9_.§1k§(this.§<!y§.§-!R§);
            _loc9_.§,"0§();
         }
         param1.§'!J§ = null;
         param1.§>!N§ = 0;
         if(param1.§5!M§)
         {
            param1.§5!M§.§,"!§ = param1.§,"!§;
         }
         if(param1.§,"!§)
         {
            param1.§,"!§.§5!M§ = param1.§5!M§;
         }
         if(param1 == this.§'§)
         {
            this.§'§ = param1.§,"!§;
         }
         --this.§3",§;
      }
      
      public function §]=§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§="1§(param1,null);
         _loc2_.§5!M§ = null;
         _loc2_.§,"!§ = this.§=l§;
         if(this.§=l§)
         {
            this.§=l§.§5!M§ = _loc2_;
         }
         this.§=l§ = _loc2_;
         ++this.§5o§;
         _loc2_.§-"9§.§2<§ = _loc2_;
         _loc2_.§-"9§.§#!l§ = _loc2_.§;!=§;
         _loc2_.§-"9§.§@!'§ = null;
         _loc2_.§-"9§.§!",§ = _loc2_.§9!B§.§=l§;
         if(_loc2_.§9!B§.§=l§)
         {
            _loc2_.§9!B§.§=l§.§@!'§ = _loc2_.§-"9§;
         }
         _loc2_.§9!B§.§=l§ = _loc2_.§-"9§;
         _loc2_.§24§.§2<§ = _loc2_;
         _loc2_.§24§.§#!l§ = _loc2_.§9!B§;
         _loc2_.§24§.§@!'§ = null;
         _loc2_.§24§.§!",§ = _loc2_.§;!=§.§=l§;
         if(_loc2_.§;!=§.§=l§)
         {
            _loc2_.§;!=§.§=l§.§@!'§ = _loc2_.§24§;
         }
         _loc2_.§;!=§.§=l§ = _loc2_.§24§;
         var _loc3_:b2Body = param1.§0",§;
         var _loc4_:b2Body = param1.§^W§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§2H§();
            while(_loc5_)
            {
               if(_loc5_.§#!l§ == _loc3_)
               {
                  _loc5_.§9"6§.§!!§();
               }
               _loc5_ = _loc5_.§!",§;
            }
         }
         return _loc2_;
      }
      
      public function §6-§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§ "<§;
         if(param1.§5!M§)
         {
            param1.§5!M§.§,"!§ = param1.§,"!§;
         }
         if(param1.§,"!§)
         {
            param1.§,"!§.§5!M§ = param1.§5!M§;
         }
         if(param1 == this.§=l§)
         {
            this.§=l§ = param1.§,"!§;
         }
         var _loc3_:b2Body = param1.§9!B§;
         var _loc4_:b2Body = param1.§;!=§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§-"9§.§@!'§)
         {
            param1.§-"9§.§@!'§.§!",§ = param1.§-"9§.§!",§;
         }
         if(param1.§-"9§.§!",§)
         {
            param1.§-"9§.§!",§.§@!'§ = param1.§-"9§.§@!'§;
         }
         if(param1.§-"9§ == _loc3_.§=l§)
         {
            _loc3_.§=l§ = param1.§-"9§.§!",§;
         }
         param1.§-"9§.§@!'§ = null;
         param1.§-"9§.§!",§ = null;
         if(param1.§24§.§@!'§)
         {
            param1.§24§.§@!'§.§!",§ = param1.§24§.§!",§;
         }
         if(param1.§24§.§!",§)
         {
            param1.§24§.§!",§.§@!'§ = param1.§24§.§@!'§;
         }
         if(param1.§24§ == _loc4_.§=l§)
         {
            _loc4_.§=l§ = param1.§24§.§!",§;
         }
         param1.§24§.§@!'§ = null;
         param1.§24§.§!",§ = null;
         b2Joint.§,"0§(param1,null);
         --this.§5o§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§2H§();
            while(_loc5_)
            {
               if(_loc5_.§#!l§ == _loc3_)
               {
                  _loc5_.§9"6§.§!!§();
               }
               _loc5_ = _loc5_.§!",§;
            }
         }
      }
      
      public function §3Q§(param1:b2Controller) : b2Controller
      {
         param1.§,"!§ = this.§true§;
         param1.§5!M§ = null;
         this.§true§ = param1;
         param1.m_world = this;
         ++this.§'>§;
         return param1;
      }
      
      public function §4"+§(param1:b2Controller) : void
      {
         if(param1.§5!M§)
         {
            param1.§5!M§.§,"!§ = param1.§,"!§;
         }
         if(param1.§,"!§)
         {
            param1.§,"!§.§5!M§ = param1.§5!M§;
         }
         if(this.§true§ == param1)
         {
            this.§true§ = param1.§,"!§;
         }
         --this.§'>§;
      }
      
      public function §9u§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§,"!§ = this.§true§;
         param1.§5!M§ = null;
         if(this.§true§)
         {
            this.§true§.§5!M§ = param1;
         }
         this.§true§ = param1;
         ++this.§'>§;
         param1.m_world = this;
         return param1;
      }
      
      public function §'" §(param1:b2Controller) : void
      {
         param1.§"!R§();
         if(param1.§,"!§)
         {
            param1.§,"!§.§5!M§ = param1.§5!M§;
         }
         if(param1.§5!M§)
         {
            param1.§5!M§.§,"!§ = param1.§,"!§;
         }
         if(param1 == this.§true§)
         {
            this.§true§ = param1.§,"!§;
         }
         --this.§'>§;
      }
      
      public function §@!4§(param1:Boolean) : void
      {
         §6"-§ = param1;
      }
      
      public function §1!g§(param1:Boolean) : void
      {
         §`z§ = param1;
      }
      
      public function §[e§() : int
      {
         return this.§3",§;
      }
      
      public function §4">§() : int
      {
         return this.§5o§;
      }
      
      public function § !D§() : int
      {
         return this.§>B§;
      }
      
      public function §<!K§(param1:b2Vec2) : void
      {
         this.§-"=§ = param1;
      }
      
      public function §9"8§() : b2Vec2
      {
         return this.§-"=§;
      }
      
      public function §>";§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §9>§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§["0§ & §"![§)
         {
            this.§<!y§.§-!T§();
            this.§["0§ &= ~§"![§;
         }
         this.§["0§ |= § !4§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§<e§ = param1;
         _loc4_.§&m§ = param2;
         _loc4_.§^1§ = param3;
         if(param1 > 0)
         {
            _loc4_.§#!c§ = 1 / param1;
         }
         else
         {
            _loc4_.§#!c§ = 0;
         }
         _loc4_.§`T§ = this.§0!=§ * param1;
         _loc4_.§1!$§ = §6"-§;
         this.§<!y§.§!5§();
         if(_loc4_.§<e§ > 0)
         {
            this.§7!`§(_loc4_);
         }
         if(§`z§ && _loc4_.§<e§ > 0)
         {
            this.§`",§(_loc4_);
         }
         if(_loc4_.§<e§ > 0)
         {
            this.§0!=§ = _loc4_.§#!c§;
         }
         this.§["0§ &= ~§ !4§;
      }
      
      public function §'h§() : void
      {
         var _loc1_:b2Body = this.§'§;
         while(_loc1_)
         {
            _loc1_.§8!t§.§4e§();
            _loc1_.§=!Z§ = 0;
            _loc1_ = _loc1_.§,"!§;
         }
      }
      
      public function § !n§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§<!D§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§#k§ == null)
         {
            return;
         }
         this.§#k§.§,!j§.graphics.clear();
         var _loc1_:uint = this.§#k§.§&@§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§2!L§)
         {
            _loc3_ = this.§'§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§"?§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§#j§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§7!r§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§#j§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§7!r§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§#j§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§#j§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§#j§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§,"!§;
               }
               _loc3_ = _loc3_.§,"!§;
            }
         }
         if(_loc1_ & b2DebugDraw.§7U§)
         {
            _loc6_ = this.§=l§;
            while(_loc6_)
            {
               this.§5Z§(_loc6_);
               _loc6_ = _loc6_.§,"!§;
            }
         }
         if(_loc1_ & b2DebugDraw.§import§)
         {
            _loc16_ = this.§true§;
            while(_loc16_)
            {
               _loc16_.§0f§(this.§#k§);
               _loc16_ = _loc16_.§,"!§;
            }
         }
         if(_loc1_ & b2DebugDraw.§&H§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§<!y§.§,!1§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§[u§();
               _loc19_ = _loc17_.§<j§();
               _loc20_ = _loc18_.§!!f§().§;!E§();
               _loc21_ = _loc19_.§!!f§().§;!E§();
               this.§#k§.§-F§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§5!`§();
            }
         }
         if(_loc1_ & b2DebugDraw.§!!m§)
         {
            _loc7_ = this.§<!y§.§-!R§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§'§;
            while(_loc3_)
            {
               if(_loc3_.§"?§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§8!r§(_loc4_.§&;§);
                     _loc14_[0].Set(_loc22_.§%!?§.x,_loc22_.§%!?§.y);
                     _loc14_[1].Set(_loc22_.§<h§.x,_loc22_.§%!?§.y);
                     _loc14_[2].Set(_loc22_.§<h§.x,_loc22_.§<h§.y);
                     _loc14_[3].Set(_loc22_.§%!?§.x,_loc22_.§<h§.y);
                     this.§#k§.§[$§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§5!`§();
                  }
               }
               _loc3_ = _loc3_.§5!`§();
            }
         }
         if(_loc1_ & b2DebugDraw.§-!U§)
         {
            _loc3_ = this.§'§;
            while(_loc3_)
            {
               (_loc11_ = §1",§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§<t§();
               this.§#k§.§+!o§(_loc11_);
               _loc3_ = _loc3_.§,"!§;
            }
         }
      }
      
      public function §=!`§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§<!D§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§<!y§.§-!R§;
         broadPhase.§6t§(WorldQueryWrapper,aabb);
      }
      
      public function §"D§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§<!D§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§,d§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§4!f§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§`!L§();
         }
         broadPhase = this.§<!y§.§-!R§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§6t§(WorldQueryWrapper,aabb);
      }
      
      public function §+!S§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§<!D§ = null;
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
         broadPhase = this.§<!y§.§-!R§;
         var aabb:b2AABB = new b2AABB();
         aabb.§%!?§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§<h§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§6t§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§<!D§ = null;
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
            return param1.§'Z§;
         };
         broadPhase = this.§<!y§.§-!R§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §53§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §<!$§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §#y§() : b2Body
      {
         return this.§'§;
      }
      
      public function §5! §() : b2Joint
      {
         return this.§=l§;
      }
      
      public function §2H§() : b2Contact
      {
         return this.§,!1§;
      }
      
      public function §3o§() : Boolean
      {
         return (this.§["0§ & § !4§) > 0;
      }
      
      b2internal function §7!`§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§true§;
         while(_loc3_)
         {
            _loc3_.§9>§(param1);
            _loc3_ = _loc3_.§,"!§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§3!$§).§`!O§(this.§3",§,this.§>B§,this.§5o§,null,this.§<!y§.§@!E§,this.§1!e§);
         _loc2_ = this.§'§;
         while(_loc2_)
         {
            _loc2_.§["0§ &= ~b2Body.§9P§;
            _loc2_ = _loc2_.§,"!§;
         }
         var _loc5_:b2Contact = this.§,!1§;
         while(_loc5_)
         {
            _loc5_.§["0§ &= ~b2Contact.§9P§;
            _loc5_ = _loc5_.§,"!§;
         }
         var _loc6_:b2Joint = this.§=l§;
         while(_loc6_)
         {
            _loc6_.§>u§ = false;
            _loc6_ = _loc6_.§,"!§;
         }
         var _loc7_:int = this.§3",§;
         var _loc8_:Vector.<b2Body> = this.§5g§;
         var _loc9_:b2Body = this.§'§;
         while(_loc9_)
         {
            if(!(_loc9_.§["0§ & b2Body.§9P§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§"?§() == false))
               {
                  if(_loc9_.§7!r§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§"!R§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§["0§ |= b2Body.§9P§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§3I§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§7!r§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§,!1§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§9"6§.§["0§ & b2Contact.§9P§))
                              {
                                 if(!(_loc13_.§9"6§.§;";§() == true || _loc13_.§9"6§.§7!m§() == false || _loc13_.§9"6§.§36§() == false))
                                 {
                                    _loc4_.§5@§(_loc13_.§9"6§);
                                    _loc13_.§9"6§.§["0§ |= b2Contact.§9P§;
                                    if(!((_loc12_ = _loc13_.§#!l§).§["0§ & b2Body.§9P§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§["0§ |= b2Body.§9P§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§!",§;
                           }
                           _loc14_ = _loc2_.§=l§;
                           while(_loc14_)
                           {
                              if(_loc14_.§2<§.§>u§ != true)
                              {
                                 if((_loc12_ = _loc14_.§#!l§).§"?§() != false)
                                 {
                                    _loc4_.§!!y§(_loc14_.§2<§);
                                    _loc14_.§2<§.§>u§ = true;
                                    if(!(_loc12_.§["0§ & b2Body.§9P§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§["0§ |= b2Body.§9P§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§!",§;
                           }
                        }
                     }
                     _loc4_.§7!`§(param1,this.§-"=§,this.§7!Y§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§3",§)
                     {
                        _loc2_ = _loc4_.§3-§[_loc11_];
                        if(_loc2_.§7!r§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§["0§ &= ~b2Body.§9P§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§,"!§;
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
         _loc2_ = this.§'§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§"?§() == false))
            {
               if(_loc2_.§7!r§() != b2Body.b2_staticBody)
               {
                  _loc2_.§ <§();
               }
            }
            _loc2_ = _loc2_.§,"!§;
         }
         this.§<!y§.§-!T§();
      }
      
      b2internal function §`",§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§3!$§).§`!O§(this.§3",§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§<!y§.§@!E§,this.§1!e§);
         var _loc10_:Vector.<b2Body> = §0n§;
         _loc2_ = this.§'§;
         while(_loc2_)
         {
            _loc2_.§["0§ &= ~b2Body.§9P§;
            _loc2_.m_sweep.§72§ = 0;
            _loc2_ = _loc2_.§,"!§;
         }
         _loc11_ = this.§,!1§;
         while(_loc11_)
         {
            _loc11_.§["0§ &= ~(b2Contact.§ !q§ | b2Contact.§9P§);
            _loc11_ = _loc11_.§,"!§;
         }
         _loc8_ = this.§=l§;
         while(_loc8_)
         {
            _loc8_.§>u§ = false;
            _loc8_ = _loc8_.§,"!§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§,!1§;
            while(_loc11_)
            {
               if(!(_loc11_.§;";§() == true || _loc11_.§7!m§() == false || _loc11_.§#!i§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§["0§ & b2Contact.§ !q§)
                  {
                     _loc19_ = _loc11_.§^!&§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§?a§;
                     _loc4_ = _loc11_.§;!S§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§7!r§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§7!r§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr647:
                        _loc11_ = _loc11_.§,"!§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§72§;
                     if(_loc5_.m_sweep.§72§ < _loc6_.m_sweep.§72§)
                     {
                        _loc20_ = _loc6_.m_sweep.§72§;
                        _loc5_.m_sweep.§1I§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§72§ < _loc5_.m_sweep.§72§)
                     {
                        _loc20_ = _loc5_.m_sweep.§72§;
                        _loc6_.m_sweep.§1I§(_loc20_);
                     }
                     _loc19_ = _loc11_.§3"§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§^!&§ = _loc19_;
                     _loc11_.§["0§ |= b2Contact.§ !q§;
                     §§goto(addr647);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr647);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§?a§;
            _loc4_ = _loc12_.§;!S§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §<!m§.Set(_loc5_.m_sweep);
            §,!d§.Set(_loc6_.m_sweep);
            _loc5_.§1I§(_loc13_);
            _loc6_.§1I§(_loc13_);
            _loc12_.§=!I§(this.§<!y§.§@!E§);
            _loc12_.§["0§ &= ~b2Contact.§ !q§;
            if(_loc12_.§;";§() == true || _loc12_.§7!m§() == false)
            {
               _loc5_.m_sweep.Set(§<!m§);
               _loc6_.m_sweep.Set(§,!d§);
               _loc5_.§<!S§();
               _loc6_.§<!S§();
            }
            else if(_loc12_.§36§() != false)
            {
               if((_loc14_ = _loc5_).§7!r§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§"!R§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§["0§ |= b2Body.§9P§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§3I§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§7!r§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§,!1§;
                     while(_loc7_)
                     {
                        if(_loc9_.§>B§ == _loc9_.§ !o§)
                        {
                           break;
                        }
                        if(!(_loc7_.§9"6§.§["0§ & b2Contact.§9P§))
                        {
                           if(!(_loc7_.§9"6§.§;";§() == true || _loc7_.§9"6§.§7!m§() == false || _loc7_.§9"6§.§36§() == false))
                           {
                              _loc9_.§5@§(_loc7_.§9"6§);
                              _loc7_.§9"6§.§["0§ |= b2Contact.§9P§;
                              if(!((_loc22_ = _loc7_.§#!l§).§["0§ & b2Body.§9P§))
                              {
                                 if(_loc22_.§7!r§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§1I§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§["0§ |= b2Body.§9P§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§!",§;
                     }
                     _loc21_ = _loc2_.§=l§;
                     while(_loc21_)
                     {
                        if(_loc9_.§5o§ != _loc9_.§3f§)
                        {
                           if(_loc21_.§2<§.§>u§ != true)
                           {
                              if((_loc22_ = _loc21_.§#!l§).§"?§() != false)
                              {
                                 _loc9_.§!!y§(_loc21_.§2<§);
                                 _loc21_.§2<§.§>u§ = true;
                                 if(!(_loc22_.§["0§ & b2Body.§9P§))
                                 {
                                    if(_loc22_.§7!r§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§1I§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§["0§ |= b2Body.§9P§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§!",§;
                     }
                  }
               }
               (_loc17_ = § !&§).§1!$§ = false;
               _loc17_.§<e§ = (1 - _loc13_) * param1.§<e§;
               _loc17_.§#!c§ = 1 / _loc17_.§<e§;
               _loc17_.§`T§ = 0;
               _loc17_.§&m§ = param1.§&m§;
               _loc17_.§^1§ = param1.§^1§;
               _loc9_.§`",§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§3",§)
               {
                  _loc2_ = _loc9_.§3-§[_loc18_];
                  _loc2_.§["0§ &= ~b2Body.§9P§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§7!r§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§ <§();
                        _loc7_ = _loc2_.§,!1§;
                        while(_loc7_)
                        {
                           _loc7_.§9"6§.§["0§ &= ~b2Contact.§ !q§;
                           _loc7_ = _loc7_.§!",§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§>B§)
               {
                  _loc11_ = _loc9_.§[d§[_loc18_];
                  _loc11_.§["0§ &= ~(b2Contact.§ !q§ | b2Contact.§9P§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§5o§)
               {
                  (_loc8_ = _loc9_.§0!$§[_loc18_]).§>u§ = false;
                  _loc18_++;
               }
               this.§<!y§.§-!T§();
            }
         }
      }
      
      b2internal function §5Z§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§[!N§();
         var _loc3_:b2Body = param1.§!"4§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §3!5§;
         switch(param1.§&"9§)
         {
            case b2Joint.§'!#§:
               this.§#k§.§-F§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§-f§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§<"!§();
               _loc13_ = _loc11_.§&i§();
               this.§#k§.§-F§(_loc12_,_loc8_,_loc10_);
               this.§#k§.§-F§(_loc13_,_loc9_,_loc10_);
               this.§#k§.§-F§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§#'§:
               this.§#k§.§-F§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§#k§.§-F§(_loc6_,_loc8_,_loc10_);
               }
               this.§#k§.§-F§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§#k§.§-F§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §#j§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§&"9§)
         {
            case b2Shape.§%_§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§5!V§(param2,_loc4_.§<l§);
               _loc6_ = _loc4_.§9"=§;
               _loc7_ = param2.R.col1;
               this.§#k§.§@w§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§8!3§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§^!r§();
               _loc11_ = _loc9_.§9"2§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§5!V§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§#k§.§;H§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§function§:
               _loc13_ = param1 as b2EdgeShape;
               this.§#k§.§-F§(b2Math.§5!V§(param2,_loc13_.GetVertex1()),b2Math.§5!V§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

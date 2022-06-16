package §&!Y§
{
   import § !0§.*;
   import § "D§.b2Controller;
   import § "D§.b2ControllerEdge;
   import §"G§.*;
   import §+!d§.*;
   import §4!2§.*;
   import §7F§.*;
   import §@!a§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §73§:b2Transform = new b2Transform();
      
      private static var §<!Q§:b2Sweep = new b2Sweep();
      
      private static var §#!6§:b2Sweep = new b2Sweep();
      
      private static var §<!m§:b2TimeStep = new b2TimeStep();
      
      private static var §@!u§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §+!?§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var § l§:Boolean;
      
      private static var §>+§:Boolean;
      
      public static const §8!I§:int = 1;
      
      public static const §"!§:int = 2;
       
      
      private var §%+§:Vector.<b2Body>;
      
      b2internal var §^Q§:int;
      
      b2internal var §=!1§:b2ContactManager;
      
      private var §,!a§:b2ContactSolver;
      
      private var §?P§:b2Island;
      
      b2internal var §%!>§:b2Body;
      
      private var §,!n§:b2Joint;
      
      b2internal var §;!o§:b2Contact;
      
      private var §1U§:int;
      
      b2internal var §`s§:int;
      
      private var §]M§:int;
      
      private var §1!x§:b2Controller;
      
      private var §>^§:int;
      
      private var §-!Y§:b2Vec2;
      
      private var §]"@§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §=R§:b2DestructionListener;
      
      private var §"!@§:b2DebugDraw;
      
      private var §;<§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§%+§ = new Vector.<b2Body>();
         this.§=!1§ = new b2ContactManager();
         this.§,!a§ = new b2ContactSolver();
         this.§?P§ = new b2Island();
         super();
         this.§=R§ = null;
         this.§"!@§ = null;
         this.§%!>§ = null;
         this.§;!o§ = null;
         this.§,!n§ = null;
         this.§1!x§ = null;
         this.§1U§ = 0;
         this.§`s§ = 0;
         this.§]M§ = 0;
         this.§>^§ = 0;
         § l§ = true;
         §>+§ = true;
         this.§]"@§ = param2;
         this.§-!Y§ = param1;
         this.§;<§ = 0;
         this.§=!1§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§8!^§(_loc3_);
      }
      
      public function § 6§(param1:b2DestructionListener) : void
      {
         this.§=R§ = param1;
      }
      
      public function §,B§(param1:b2ContactFilter) : void
      {
         this.§=!1§.§5!'§ = param1;
      }
      
      public function §<_§(param1:b2ContactListener) : void
      {
         this.§=!1§.§^"D§ = param1;
      }
      
      public function §>8§(param1:b2DebugDraw) : void
      {
         this.§"!@§ = param1;
      }
      
      public function §#n§(param1:§[!8§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§[!8§ = this.§=!1§.§]!;§;
         this.§=!1§.§]!;§ = param1;
         var _loc3_:b2Body = this.§%!>§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§-!<§;
            while(_loc4_)
            {
               _loc4_.§1!p§ = param1.§"!f§(_loc2_.§>!S§(_loc4_.§1!p§),_loc4_);
               _loc4_ = _loc4_.§&!n§;
            }
            _loc3_ = _loc3_.§&!n§;
         }
      }
      
      public function §3"'§() : void
      {
         this.§=!1§.§]!;§.§3"'§();
      }
      
      public function §3!X§() : int
      {
         return this.§=!1§.§]!;§.§3!X§();
      }
      
      public function §8!^§(param1:b2BodyDef) : b2Body
      {
         if(this.§!!E§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§>b§ = null;
         _loc2_.§&!n§ = this.§%!>§;
         if(this.§%!>§)
         {
            this.§%!>§.§>b§ = _loc2_;
         }
         this.§%!>§ = _loc2_;
         ++this.§1U§;
         return _loc2_;
      }
      
      public function §&"=§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§!!E§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§,!n§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§<B§;
            if(this.§=R§)
            {
               this.§=R§.§]!0§(_loc6_.§&",§);
            }
            this.§!!y§(_loc6_.§&",§);
         }
         var _loc3_:b2ControllerEdge = param1.§1!x§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§`"B§;
            _loc7_.§,!x§.§+!5§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§;!o§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§<B§;
            this.§=!1§.§]!f§(_loc8_.§7!K§);
         }
         param1.§;!o§ = null;
         var _loc5_:b2Fixture = param1.§-!<§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§&!n§;
            if(this.§=R§)
            {
               this.§=R§.§#!k§(_loc9_);
            }
            _loc9_.§="G§(this.§=!1§.§]!;§);
            _loc9_.§]!f§();
         }
         param1.§-!<§ = null;
         param1.§@! § = 0;
         if(param1.§>b§)
         {
            param1.§>b§.§&!n§ = param1.§&!n§;
         }
         if(param1.§&!n§)
         {
            param1.§&!n§.§>b§ = param1.§>b§;
         }
         if(param1 == this.§%!>§)
         {
            this.§%!>§ = param1.§&!n§;
         }
         --this.§1U§;
      }
      
      public function §,E§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§]!e§(param1,null);
         _loc2_.§>b§ = null;
         _loc2_.§&!n§ = this.§,!n§;
         if(this.§,!n§)
         {
            this.§,!n§.§>b§ = _loc2_;
         }
         this.§,!n§ = _loc2_;
         ++this.§]M§;
         _loc2_.§7s§.§&",§ = _loc2_;
         _loc2_.§7s§.§2Q§ = _loc2_.§<X§;
         _loc2_.§7s§.§2k§ = null;
         _loc2_.§7s§.§<B§ = _loc2_.§3"6§.§,!n§;
         if(_loc2_.§3"6§.§,!n§)
         {
            _loc2_.§3"6§.§,!n§.§2k§ = _loc2_.§7s§;
         }
         _loc2_.§3"6§.§,!n§ = _loc2_.§7s§;
         _loc2_.§%V§.§&",§ = _loc2_;
         _loc2_.§%V§.§2Q§ = _loc2_.§3"6§;
         _loc2_.§%V§.§2k§ = null;
         _loc2_.§%V§.§<B§ = _loc2_.§<X§.§,!n§;
         if(_loc2_.§<X§.§,!n§)
         {
            _loc2_.§<X§.§,!n§.§2k§ = _loc2_.§%V§;
         }
         _loc2_.§<X§.§,!n§ = _loc2_.§%V§;
         var _loc3_:b2Body = param1.§4"?§;
         var _loc4_:b2Body = param1.§+H§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§!!?§();
            while(_loc5_)
            {
               if(_loc5_.§2Q§ == _loc3_)
               {
                  _loc5_.§7!K§.§-g§();
               }
               _loc5_ = _loc5_.§<B§;
            }
         }
         return _loc2_;
      }
      
      public function §!!y§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§"!#§;
         if(param1.§>b§)
         {
            param1.§>b§.§&!n§ = param1.§&!n§;
         }
         if(param1.§&!n§)
         {
            param1.§&!n§.§>b§ = param1.§>b§;
         }
         if(param1 == this.§,!n§)
         {
            this.§,!n§ = param1.§&!n§;
         }
         var _loc3_:b2Body = param1.§3"6§;
         var _loc4_:b2Body = param1.§<X§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§7s§.§2k§)
         {
            param1.§7s§.§2k§.§<B§ = param1.§7s§.§<B§;
         }
         if(param1.§7s§.§<B§)
         {
            param1.§7s§.§<B§.§2k§ = param1.§7s§.§2k§;
         }
         if(param1.§7s§ == _loc3_.§,!n§)
         {
            _loc3_.§,!n§ = param1.§7s§.§<B§;
         }
         param1.§7s§.§2k§ = null;
         param1.§7s§.§<B§ = null;
         if(param1.§%V§.§2k§)
         {
            param1.§%V§.§2k§.§<B§ = param1.§%V§.§<B§;
         }
         if(param1.§%V§.§<B§)
         {
            param1.§%V§.§<B§.§2k§ = param1.§%V§.§2k§;
         }
         if(param1.§%V§ == _loc4_.§,!n§)
         {
            _loc4_.§,!n§ = param1.§%V§.§<B§;
         }
         param1.§%V§.§2k§ = null;
         param1.§%V§.§<B§ = null;
         b2Joint.§]!f§(param1,null);
         --this.§]M§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§!!?§();
            while(_loc5_)
            {
               if(_loc5_.§2Q§ == _loc3_)
               {
                  _loc5_.§7!K§.§-g§();
               }
               _loc5_ = _loc5_.§<B§;
            }
         }
      }
      
      public function §;"+§(param1:b2Controller) : b2Controller
      {
         param1.§&!n§ = this.§1!x§;
         param1.§>b§ = null;
         this.§1!x§ = param1;
         param1.m_world = this;
         ++this.§>^§;
         return param1;
      }
      
      public function §%!L§(param1:b2Controller) : void
      {
         if(param1.§>b§)
         {
            param1.§>b§.§&!n§ = param1.§&!n§;
         }
         if(param1.§&!n§)
         {
            param1.§&!n§.§>b§ = param1.§>b§;
         }
         if(this.§1!x§ == param1)
         {
            this.§1!x§ = param1.§&!n§;
         }
         --this.§>^§;
      }
      
      public function §-5§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§&!n§ = this.§1!x§;
         param1.§>b§ = null;
         if(this.§1!x§)
         {
            this.§1!x§.§>b§ = param1;
         }
         this.§1!x§ = param1;
         ++this.§>^§;
         param1.m_world = this;
         return param1;
      }
      
      public function §2!q§(param1:b2Controller) : void
      {
         param1.§2"J§();
         if(param1.§&!n§)
         {
            param1.§&!n§.§>b§ = param1.§>b§;
         }
         if(param1.§>b§)
         {
            param1.§>b§.§&!n§ = param1.§&!n§;
         }
         if(param1 == this.§1!x§)
         {
            this.§1!x§ = param1.§&!n§;
         }
         --this.§>^§;
      }
      
      public function §`!U§(param1:Boolean) : void
      {
         § l§ = param1;
      }
      
      public function §8!=§(param1:Boolean) : void
      {
         §>+§ = param1;
      }
      
      public function §;"H§() : int
      {
         return this.§1U§;
      }
      
      public function §6!T§() : int
      {
         return this.§]M§;
      }
      
      public function §;"4§() : int
      {
         return this.§`s§;
      }
      
      public function §1§(param1:b2Vec2) : void
      {
         this.§-!Y§ = param1;
      }
      
      public function §">§() : b2Vec2
      {
         return this.§-!Y§;
      }
      
      public function §!!>§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §;!z§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§^Q§ & §8!I§)
         {
            this.§=!1§.§%!"§();
            this.§^Q§ &= ~§8!I§;
         }
         this.§^Q§ |= §"!§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§&!K§ = param1;
         _loc4_.§'!S§ = param2;
         _loc4_.§5"@§ = param3;
         if(param1 > 0)
         {
            _loc4_.§`k§ = 1 / param1;
         }
         else
         {
            _loc4_.§`k§ = 0;
         }
         _loc4_.§0#§ = this.§;<§ * param1;
         _loc4_.§@"9§ = § l§;
         this.§=!1§.§ true§();
         if(_loc4_.§&!K§ > 0)
         {
            this.§3-§(_loc4_);
         }
         if(§>+§ && _loc4_.§&!K§ > 0)
         {
            this.§0"3§(_loc4_);
         }
         if(_loc4_.§&!K§ > 0)
         {
            this.§;<§ = _loc4_.§`k§;
         }
         this.§^Q§ &= ~§"!§;
      }
      
      public function §&!A§() : void
      {
         var _loc1_:b2Body = this.§%!>§;
         while(_loc1_)
         {
            _loc1_.§="F§.§%"0§();
            _loc1_.§',§ = 0;
            _loc1_ = _loc1_.§&!n§;
         }
      }
      
      public function §]"&§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§[!8§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§"!@§ == null)
         {
            return;
         }
         this.§"!@§.§!b§.graphics.clear();
         var _loc1_:uint = this.§"!@§.§0" §();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§4!c§)
         {
            _loc3_ = this.§%!>§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§!]§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§0",§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§;!w§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§0",§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§;!w§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§0",§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§0",§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§0",§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§&!n§;
               }
               _loc3_ = _loc3_.§&!n§;
            }
         }
         if(_loc1_ & b2DebugDraw.§>!@§)
         {
            _loc6_ = this.§,!n§;
            while(_loc6_)
            {
               this.§-!p§(_loc6_);
               _loc6_ = _loc6_.§&!n§;
            }
         }
         if(_loc1_ & b2DebugDraw.§ G§)
         {
            _loc16_ = this.§1!x§;
            while(_loc16_)
            {
               _loc16_.§0`§(this.§"!@§);
               _loc16_ = _loc16_.§&!n§;
            }
         }
         if(_loc1_ & b2DebugDraw.§"m§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§=!1§.§;!o§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§-!x§();
               _loc19_ = _loc17_.§6$§();
               _loc20_ = _loc18_.§!!l§().§9!B§();
               _loc21_ = _loc19_.§!!l§().§9!B§();
               this.§"!@§.§+!g§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§+U§();
            }
         }
         if(_loc1_ & b2DebugDraw.§]r§)
         {
            _loc7_ = this.§=!1§.§]!;§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§%!>§;
            while(_loc3_)
            {
               if(_loc3_.§!]§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§>!S§(_loc4_.§1!p§);
                     _loc14_[0].Set(_loc22_.§ !K§.x,_loc22_.§ !K§.y);
                     _loc14_[1].Set(_loc22_.§5!j§.x,_loc22_.§ !K§.y);
                     _loc14_[2].Set(_loc22_.§5!j§.x,_loc22_.§5!j§.y);
                     _loc14_[3].Set(_loc22_.§ !K§.x,_loc22_.§5!j§.y);
                     this.§"!@§.§>!1§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§+U§();
                  }
               }
               _loc3_ = _loc3_.§+U§();
            }
         }
         if(_loc1_ & b2DebugDraw.§@"E§)
         {
            _loc3_ = this.§%!>§;
            while(_loc3_)
            {
               (_loc11_ = §73§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§[P§();
               this.§"!@§.§-!`§(_loc11_);
               _loc3_ = _loc3_.§&!n§;
            }
         }
      }
      
      public function §6"?§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§[!8§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§=!1§.§]!;§;
         broadPhase.§6t§(WorldQueryWrapper,aabb);
      }
      
      public function §0!3§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§[!8§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§;!r§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§5j§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§1!4§();
         }
         broadPhase = this.§=!1§.§]!;§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§6t§(WorldQueryWrapper,aabb);
      }
      
      public function §]!K§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§[!8§ = null;
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
         broadPhase = this.§=!1§.§]!;§;
         var aabb:b2AABB = new b2AABB();
         aabb.§ !K§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§5!j§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§6t§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§[!8§ = null;
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
            return param1.§9!'§;
         };
         broadPhase = this.§=!1§.§]!;§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §=!A§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function § `§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §="§() : b2Body
      {
         return this.§%!>§;
      }
      
      public function §@!;§() : b2Joint
      {
         return this.§,!n§;
      }
      
      public function §!!?§() : b2Contact
      {
         return this.§;!o§;
      }
      
      public function §!!E§() : Boolean
      {
         return (this.§^Q§ & §"!§) > 0;
      }
      
      b2internal function §3-§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§1!x§;
         while(_loc3_)
         {
            _loc3_.§;!z§(param1);
            _loc3_ = _loc3_.§&!n§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§?P§).§,!9§(this.§1U§,this.§`s§,this.§]M§,null,this.§=!1§.§^"D§,this.§,!a§);
         _loc2_ = this.§%!>§;
         while(_loc2_)
         {
            _loc2_.§^Q§ &= ~b2Body.§3u§;
            _loc2_ = _loc2_.§&!n§;
         }
         var _loc5_:b2Contact = this.§;!o§;
         while(_loc5_)
         {
            _loc5_.§^Q§ &= ~b2Contact.§3u§;
            _loc5_ = _loc5_.§&!n§;
         }
         var _loc6_:b2Joint = this.§,!n§;
         while(_loc6_)
         {
            _loc6_.§84§ = false;
            _loc6_ = _loc6_.§&!n§;
         }
         var _loc7_:int = this.§1U§;
         var _loc8_:Vector.<b2Body> = this.§%+§;
         var _loc9_:b2Body = this.§%!>§;
         while(_loc9_)
         {
            if(!(_loc9_.§^Q§ & b2Body.§3u§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§!]§() == false))
               {
                  if(_loc9_.§;!w§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§2"J§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§^Q§ |= b2Body.§3u§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§0!S§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§;!w§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§;!o§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§7!K§.§^Q§ & b2Contact.§3u§))
                              {
                                 if(!(_loc13_.§7!K§.§'"E§() == true || _loc13_.§7!K§.§+""§() == false || _loc13_.§7!K§.§`!Y§() == false))
                                 {
                                    _loc4_.§4!S§(_loc13_.§7!K§);
                                    _loc13_.§7!K§.§^Q§ |= b2Contact.§3u§;
                                    if(!((_loc12_ = _loc13_.§2Q§).§^Q§ & b2Body.§3u§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§^Q§ |= b2Body.§3u§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§<B§;
                           }
                           _loc14_ = _loc2_.§,!n§;
                           while(_loc14_)
                           {
                              if(_loc14_.§&",§.§84§ != true)
                              {
                                 if((_loc12_ = _loc14_.§2Q§).§!]§() != false)
                                 {
                                    _loc4_.§3!@§(_loc14_.§&",§);
                                    _loc14_.§&",§.§84§ = true;
                                    if(!(_loc12_.§^Q§ & b2Body.§3u§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§^Q§ |= b2Body.§3u§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§<B§;
                           }
                        }
                     }
                     _loc4_.§3-§(param1,this.§-!Y§,this.§]"@§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§1U§)
                     {
                        _loc2_ = _loc4_.§+!A§[_loc11_];
                        if(_loc2_.§;!w§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§^Q§ &= ~b2Body.§3u§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§&!n§;
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
         _loc2_ = this.§%!>§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§!]§() == false))
            {
               if(_loc2_.§;!w§() != b2Body.b2_staticBody)
               {
                  _loc2_.§<!&§();
               }
            }
            _loc2_ = _loc2_.§&!n§;
         }
         this.§=!1§.§%!"§();
      }
      
      b2internal function §0"3§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§?P§).§,!9§(this.§1U§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§=!1§.§^"D§,this.§,!a§);
         var _loc10_:Vector.<b2Body> = §@!u§;
         _loc2_ = this.§%!>§;
         while(_loc2_)
         {
            _loc2_.§^Q§ &= ~b2Body.§3u§;
            _loc2_.m_sweep.§%M§ = 0;
            _loc2_ = _loc2_.§&!n§;
         }
         _loc11_ = this.§;!o§;
         while(_loc11_)
         {
            _loc11_.§^Q§ &= ~(b2Contact.§[!_§ | b2Contact.§3u§);
            _loc11_ = _loc11_.§&!n§;
         }
         _loc8_ = this.§,!n§;
         while(_loc8_)
         {
            _loc8_.§84§ = false;
            _loc8_ = _loc8_.§&!n§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§;!o§;
            while(_loc11_)
            {
               if(!(_loc11_.§'"E§() == true || _loc11_.§+""§() == false || _loc11_.§0J§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§^Q§ & b2Contact.§[!_§)
                  {
                     _loc19_ = _loc11_.§1!;§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§9!E§;
                     _loc4_ = _loc11_.§5m§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§;!w§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§;!w§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr635:
                        _loc11_ = _loc11_.§&!n§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§%M§;
                     if(_loc5_.m_sweep.§%M§ < _loc6_.m_sweep.§%M§)
                     {
                        _loc20_ = _loc6_.m_sweep.§%M§;
                        _loc5_.m_sweep.§?"H§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§%M§ < _loc5_.m_sweep.§%M§)
                     {
                        _loc20_ = _loc5_.m_sweep.§%M§;
                        _loc6_.m_sweep.§?"H§(_loc20_);
                     }
                     _loc19_ = _loc11_.§7m§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§1!;§ = _loc19_;
                     _loc11_.§^Q§ |= b2Contact.§[!_§;
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
            _loc3_ = _loc12_.§9!E§;
            _loc4_ = _loc12_.§5m§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §<!Q§.Set(_loc5_.m_sweep);
            §#!6§.Set(_loc6_.m_sweep);
            _loc5_.§?"H§(_loc13_);
            _loc6_.§?"H§(_loc13_);
            _loc12_.§@C§(this.§=!1§.§^"D§);
            _loc12_.§^Q§ &= ~b2Contact.§[!_§;
            if(_loc12_.§'"E§() == true || _loc12_.§+""§() == false)
            {
               _loc5_.m_sweep.Set(§<!Q§);
               _loc6_.m_sweep.Set(§#!6§);
               _loc5_.§-v§();
               _loc6_.§-v§();
            }
            else if(_loc12_.§`!Y§() != false)
            {
               if((_loc14_ = _loc5_).§;!w§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§2"J§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§^Q§ |= b2Body.§3u§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§0!S§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§;!w§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§;!o§;
                     while(_loc7_)
                     {
                        if(_loc9_.§`s§ == _loc9_.§"l§)
                        {
                           break;
                        }
                        if(!(_loc7_.§7!K§.§^Q§ & b2Contact.§3u§))
                        {
                           if(!(_loc7_.§7!K§.§'"E§() == true || _loc7_.§7!K§.§+""§() == false || _loc7_.§7!K§.§`!Y§() == false))
                           {
                              _loc9_.§4!S§(_loc7_.§7!K§);
                              _loc7_.§7!K§.§^Q§ |= b2Contact.§3u§;
                              if(!((_loc22_ = _loc7_.§2Q§).§^Q§ & b2Body.§3u§))
                              {
                                 if(_loc22_.§;!w§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§?"H§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§^Q§ |= b2Body.§3u§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§<B§;
                     }
                     _loc21_ = _loc2_.§,!n§;
                     while(_loc21_)
                     {
                        if(_loc9_.§]M§ != _loc9_.§#!Q§)
                        {
                           if(_loc21_.§&",§.§84§ != true)
                           {
                              if((_loc22_ = _loc21_.§2Q§).§!]§() != false)
                              {
                                 _loc9_.§3!@§(_loc21_.§&",§);
                                 _loc21_.§&",§.§84§ = true;
                                 if(!(_loc22_.§^Q§ & b2Body.§3u§))
                                 {
                                    if(_loc22_.§;!w§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§?"H§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§^Q§ |= b2Body.§3u§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§<B§;
                     }
                  }
               }
               (_loc17_ = §<!m§).§@"9§ = false;
               _loc17_.§&!K§ = (1 - _loc13_) * param1.§&!K§;
               _loc17_.§`k§ = 1 / _loc17_.§&!K§;
               _loc17_.§0#§ = 0;
               _loc17_.§'!S§ = param1.§'!S§;
               _loc17_.§5"@§ = param1.§5"@§;
               _loc9_.§0"3§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§1U§)
               {
                  _loc2_ = _loc9_.§+!A§[_loc18_];
                  _loc2_.§^Q§ &= ~b2Body.§3u§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§;!w§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§<!&§();
                        _loc7_ = _loc2_.§;!o§;
                        while(_loc7_)
                        {
                           _loc7_.§7!K§.§^Q§ &= ~b2Contact.§[!_§;
                           _loc7_ = _loc7_.§<B§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§`s§)
               {
                  _loc11_ = _loc9_.§"!-§[_loc18_];
                  _loc11_.§^Q§ &= ~(b2Contact.§[!_§ | b2Contact.§3u§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§]M§)
               {
                  (_loc8_ = _loc9_.§?" §[_loc18_]).§84§ = false;
                  _loc18_++;
               }
               this.§=!1§.§%!"§();
            }
         }
      }
      
      b2internal function §-!p§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§]!9§();
         var _loc3_:b2Body = param1.§=3§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §+!?§;
         switch(param1.§6N§)
         {
            case b2Joint.§4k§:
               this.§"!@§.§+!g§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§9r§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§<!8§();
               _loc13_ = _loc11_.§+o§();
               this.§"!@§.§+!g§(_loc12_,_loc8_,_loc10_);
               this.§"!@§.§+!g§(_loc13_,_loc9_,_loc10_);
               this.§"!@§.§+!g§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§in§:
               this.§"!@§.§+!g§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§"!@§.§+!g§(_loc6_,_loc8_,_loc10_);
               }
               this.§"!@§.§+!g§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§"!@§.§+!g§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §0",§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§6N§)
         {
            case b2Shape.§9!y§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§]D§(param2,_loc4_.§3!R§);
               _loc6_ = _loc4_.§,0§;
               _loc7_ = param2.R.col1;
               this.§"!@§.§!g§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§-c§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§1c§();
               _loc11_ = _loc9_.§`"7§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§]D§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§"!@§.§0!?§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§^"'§:
               _loc13_ = param1 as b2EdgeShape;
               this.§"!@§.§+!g§(b2Math.§]D§(param2,_loc13_.GetVertex1()),b2Math.§]D§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

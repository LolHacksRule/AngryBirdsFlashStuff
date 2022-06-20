package § !k§
{
   import §!"8§.*;
   import §&I§.*;
   import §&g§.*;
   import §6!d§.*;
   import §8!q§.b2Controller;
   import §8!q§.b2ControllerEdge;
   import §]!l§.*;
   import §in§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §]!j§:b2Transform = new b2Transform();
      
      private static var §!^§:b2Sweep = new b2Sweep();
      
      private static var §'%§:b2Sweep = new b2Sweep();
      
      private static var §,!N§:b2TimeStep = new b2TimeStep();
      
      private static var §>§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §[!o§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §,"?§:Boolean;
      
      private static var §<M§:Boolean;
      
      public static const §>R§:int = 1;
      
      public static const §'!2§:int = 2;
       
      
      private var §@!S§:Vector.<b2Body>;
      
      b2internal var §%$§:int;
      
      b2internal var §;G§:b2ContactManager;
      
      private var §implements§:b2ContactSolver;
      
      private var §>i§:b2Island;
      
      b2internal var §=0§:b2Body;
      
      private var §>!,§:b2Joint;
      
      b2internal var §@Q§:b2Contact;
      
      private var §1m§:int;
      
      b2internal var §[d§:int;
      
      private var §-!v§:int;
      
      private var §+!n§:b2Controller;
      
      private var §9y§:int;
      
      private var §>!X§:b2Vec2;
      
      private var §0T§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §]F§:b2DestructionListener;
      
      private var §2!V§:b2DebugDraw;
      
      private var §>X§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§@!S§ = new Vector.<b2Body>();
         this.§;G§ = new b2ContactManager();
         this.§implements§ = new b2ContactSolver();
         this.§>i§ = new b2Island();
         super();
         this.§]F§ = null;
         this.§2!V§ = null;
         this.§=0§ = null;
         this.§@Q§ = null;
         this.§>!,§ = null;
         this.§+!n§ = null;
         this.§1m§ = 0;
         this.§[d§ = 0;
         this.§-!v§ = 0;
         this.§9y§ = 0;
         §,"?§ = true;
         §<M§ = true;
         this.§0T§ = param2;
         this.§>!X§ = param1;
         this.§>X§ = 0;
         this.§;G§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§7!V§(_loc3_);
      }
      
      public function §>E§(param1:b2DestructionListener) : void
      {
         this.§]F§ = param1;
      }
      
      public function §9!t§(param1:b2ContactFilter) : void
      {
         this.§;G§.§+"<§ = param1;
      }
      
      public function §#a§(param1:b2ContactListener) : void
      {
         this.§;G§.§#!W§ = param1;
      }
      
      public function §;n§(param1:b2DebugDraw) : void
      {
         this.§2!V§ = param1;
      }
      
      public function §2?§(param1:§`O§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§`O§ = this.§;G§.§#!K§;
         this.§;G§.§#!K§ = param1;
         var _loc3_:b2Body = this.§=0§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§8!0§;
            while(_loc4_)
            {
               _loc4_.§@!f§ = param1.§`!;§(_loc2_.§]!1§(_loc4_.§@!f§),_loc4_);
               _loc4_ = _loc4_.§7"@§;
            }
            _loc3_ = _loc3_.§7"@§;
         }
      }
      
      public function §<!Y§() : void
      {
         this.§;G§.§#!K§.§<!Y§();
      }
      
      public function §1!R§() : int
      {
         return this.§;G§.§#!K§.§1!R§();
      }
      
      public function §7!V§(param1:b2BodyDef) : b2Body
      {
         if(this.§18§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§=>§ = null;
         _loc2_.§7"@§ = this.§=0§;
         if(this.§=0§)
         {
            this.§=0§.§=>§ = _loc2_;
         }
         this.§=0§ = _loc2_;
         ++this.§1m§;
         return _loc2_;
      }
      
      public function §4!>§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§18§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§>!,§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§%!8§;
            if(this.§]F§)
            {
               this.§]F§.§3p§(_loc6_.§?#§);
            }
            this.§5e§(_loc6_.§?#§);
         }
         var _loc3_:b2ControllerEdge = param1.§+!n§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§#"C§;
            _loc7_.§&N§.§@!u§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§@Q§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§%!8§;
            this.§;G§.§1?§(_loc8_.§4!M§);
         }
         param1.§@Q§ = null;
         var _loc5_:b2Fixture = param1.§8!0§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§7"@§;
            if(this.§]F§)
            {
               this.§]F§.§>;§(_loc9_);
            }
            _loc9_.§]o§(this.§;G§.§#!K§);
            _loc9_.§1?§();
         }
         param1.§8!0§ = null;
         param1.§1e§ = 0;
         if(param1.§=>§)
         {
            param1.§=>§.§7"@§ = param1.§7"@§;
         }
         if(param1.§7"@§)
         {
            param1.§7"@§.§=>§ = param1.§=>§;
         }
         if(param1 == this.§=0§)
         {
            this.§=0§ = param1.§7"@§;
         }
         --this.§1m§;
      }
      
      public function §]"7§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§#!b§(param1,null);
         _loc2_.§=>§ = null;
         _loc2_.§7"@§ = this.§>!,§;
         if(this.§>!,§)
         {
            this.§>!,§.§=>§ = _loc2_;
         }
         this.§>!,§ = _loc2_;
         ++this.§-!v§;
         _loc2_.§&!i§.§?#§ = _loc2_;
         _loc2_.§&!i§.§%"C§ = _loc2_.§ k§;
         _loc2_.§&!i§.§ ?§ = null;
         _loc2_.§&!i§.§%!8§ = _loc2_.§5!A§.§>!,§;
         if(_loc2_.§5!A§.§>!,§)
         {
            _loc2_.§5!A§.§>!,§.§ ?§ = _loc2_.§&!i§;
         }
         _loc2_.§5!A§.§>!,§ = _loc2_.§&!i§;
         _loc2_.§,!Q§.§?#§ = _loc2_;
         _loc2_.§,!Q§.§%"C§ = _loc2_.§5!A§;
         _loc2_.§,!Q§.§ ?§ = null;
         _loc2_.§,!Q§.§%!8§ = _loc2_.§ k§.§>!,§;
         if(_loc2_.§ k§.§>!,§)
         {
            _loc2_.§ k§.§>!,§.§ ?§ = _loc2_.§,!Q§;
         }
         _loc2_.§ k§.§>!,§ = _loc2_.§,!Q§;
         var _loc3_:b2Body = param1.§3"$§;
         var _loc4_:b2Body = param1.§?!A§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§!""§();
            while(_loc5_)
            {
               if(_loc5_.§%"C§ == _loc3_)
               {
                  _loc5_.§4!M§.§9_§();
               }
               _loc5_ = _loc5_.§%!8§;
            }
         }
         return _loc2_;
      }
      
      public function §5e§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§1c§;
         if(param1.§=>§)
         {
            param1.§=>§.§7"@§ = param1.§7"@§;
         }
         if(param1.§7"@§)
         {
            param1.§7"@§.§=>§ = param1.§=>§;
         }
         if(param1 == this.§>!,§)
         {
            this.§>!,§ = param1.§7"@§;
         }
         var _loc3_:b2Body = param1.§5!A§;
         var _loc4_:b2Body = param1.§ k§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§&!i§.§ ?§)
         {
            param1.§&!i§.§ ?§.§%!8§ = param1.§&!i§.§%!8§;
         }
         if(param1.§&!i§.§%!8§)
         {
            param1.§&!i§.§%!8§.§ ?§ = param1.§&!i§.§ ?§;
         }
         if(param1.§&!i§ == _loc3_.§>!,§)
         {
            _loc3_.§>!,§ = param1.§&!i§.§%!8§;
         }
         param1.§&!i§.§ ?§ = null;
         param1.§&!i§.§%!8§ = null;
         if(param1.§,!Q§.§ ?§)
         {
            param1.§,!Q§.§ ?§.§%!8§ = param1.§,!Q§.§%!8§;
         }
         if(param1.§,!Q§.§%!8§)
         {
            param1.§,!Q§.§%!8§.§ ?§ = param1.§,!Q§.§ ?§;
         }
         if(param1.§,!Q§ == _loc4_.§>!,§)
         {
            _loc4_.§>!,§ = param1.§,!Q§.§%!8§;
         }
         param1.§,!Q§.§ ?§ = null;
         param1.§,!Q§.§%!8§ = null;
         b2Joint.§1?§(param1,null);
         --this.§-!v§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§!""§();
            while(_loc5_)
            {
               if(_loc5_.§%"C§ == _loc3_)
               {
                  _loc5_.§4!M§.§9_§();
               }
               _loc5_ = _loc5_.§%!8§;
            }
         }
      }
      
      public function §]!a§(param1:b2Controller) : b2Controller
      {
         param1.§7"@§ = this.§+!n§;
         param1.§=>§ = null;
         this.§+!n§ = param1;
         param1.m_world = this;
         ++this.§9y§;
         return param1;
      }
      
      public function §?" §(param1:b2Controller) : void
      {
         if(param1.§=>§)
         {
            param1.§=>§.§7"@§ = param1.§7"@§;
         }
         if(param1.§7"@§)
         {
            param1.§7"@§.§=>§ = param1.§=>§;
         }
         if(this.§+!n§ == param1)
         {
            this.§+!n§ = param1.§7"@§;
         }
         --this.§9y§;
      }
      
      public function §4!n§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§7"@§ = this.§+!n§;
         param1.§=>§ = null;
         if(this.§+!n§)
         {
            this.§+!n§.§=>§ = param1;
         }
         this.§+!n§ = param1;
         ++this.§9y§;
         param1.m_world = this;
         return param1;
      }
      
      public function §,!x§(param1:b2Controller) : void
      {
         param1.§?!+§();
         if(param1.§7"@§)
         {
            param1.§7"@§.§=>§ = param1.§=>§;
         }
         if(param1.§=>§)
         {
            param1.§=>§.§7"@§ = param1.§7"@§;
         }
         if(param1 == this.§+!n§)
         {
            this.§+!n§ = param1.§7"@§;
         }
         --this.§9y§;
      }
      
      public function §=",§(param1:Boolean) : void
      {
         §,"?§ = param1;
      }
      
      public function §-!=§(param1:Boolean) : void
      {
         §<M§ = param1;
      }
      
      public function §7!&§() : int
      {
         return this.§1m§;
      }
      
      public function §5!4§() : int
      {
         return this.§-!v§;
      }
      
      public function §2!q§() : int
      {
         return this.§[d§;
      }
      
      public function §'!5§(param1:b2Vec2) : void
      {
         this.§>!X§ = param1;
      }
      
      public function §+";§() : b2Vec2
      {
         return this.§>!X§;
      }
      
      public function §-!7§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §,"9§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§%$§ & §>R§)
         {
            this.§;G§.§[f§();
            this.§%$§ &= ~§>R§;
         }
         this.§%$§ |= §'!2§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§7!x§ = param1;
         _loc4_.§super§ = param2;
         _loc4_.§"B§ = param3;
         if(param1 > 0)
         {
            _loc4_.§>!s§ = 1 / param1;
         }
         else
         {
            _loc4_.§>!s§ = 0;
         }
         _loc4_.§=G§ = this.§>X§ * param1;
         _loc4_.§+!D§ = §,"?§;
         this.§;G§.§>"1§();
         if(_loc4_.§7!x§ > 0)
         {
            this.§?q§(_loc4_);
         }
         if(§<M§ && _loc4_.§7!x§ > 0)
         {
            this.§-!&§(_loc4_);
         }
         if(_loc4_.§7!x§ > 0)
         {
            this.§>X§ = _loc4_.§>!s§;
         }
         this.§%$§ &= ~§'!2§;
      }
      
      public function §4O§() : void
      {
         var _loc1_:b2Body = this.§=0§;
         while(_loc1_)
         {
            _loc1_.§6!N§.§]!;§();
            _loc1_.§5d§ = 0;
            _loc1_ = _loc1_.§7"@§;
         }
      }
      
      public function §4G§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§`O§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§2!V§ == null)
         {
            return;
         }
         this.§2!V§.§"!p§.graphics.clear();
         var _loc1_:uint = this.§2!V§.§%V§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§ 8§)
         {
            _loc3_ = this.§=0§;
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
                     this.§+!g§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§9!j§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§+!g§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§9!j§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§+!g§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§+!g§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§+!g§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§7"@§;
               }
               _loc3_ = _loc3_.§7"@§;
            }
         }
         if(_loc1_ & b2DebugDraw.§6=§)
         {
            _loc6_ = this.§>!,§;
            while(_loc6_)
            {
               this.§-l§(_loc6_);
               _loc6_ = _loc6_.§7"@§;
            }
         }
         if(_loc1_ & b2DebugDraw.§3"!§)
         {
            _loc16_ = this.§+!n§;
            while(_loc16_)
            {
               _loc16_.§8!M§(this.§2!V§);
               _loc16_ = _loc16_.§7"@§;
            }
         }
         if(_loc1_ & b2DebugDraw.§@!$§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§;G§.§@Q§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§9!&§();
               _loc19_ = _loc17_.§2%§();
               _loc20_ = _loc18_.§!X§().§@!8§();
               _loc21_ = _loc19_.§!X§().§@!8§();
               this.§2!V§.§75§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§&A§();
            }
         }
         if(_loc1_ & b2DebugDraw.§9!<§)
         {
            _loc7_ = this.§;G§.§#!K§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§=0§;
            while(_loc3_)
            {
               if(_loc3_.IsActive() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§]!1§(_loc4_.§@!f§);
                     _loc14_[0].Set(_loc22_.§=!h§.x,_loc22_.§=!h§.y);
                     _loc14_[1].Set(_loc22_.§5"0§.x,_loc22_.§=!h§.y);
                     _loc14_[2].Set(_loc22_.§5"0§.x,_loc22_.§5"0§.y);
                     _loc14_[3].Set(_loc22_.§=!h§.x,_loc22_.§5"0§.y);
                     this.§2!V§.§@!H§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§&A§();
                  }
               }
               _loc3_ = _loc3_.§&A§();
            }
         }
         if(_loc1_ & b2DebugDraw.§8n§)
         {
            _loc3_ = this.§=0§;
            while(_loc3_)
            {
               (_loc11_ = §]!j§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§%!r§();
               this.§2!V§.§'!]§(_loc11_);
               _loc3_ = _loc3_.§7"@§;
            }
         }
      }
      
      public function §<R§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§`O§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§;G§.§#!K§;
         broadPhase.§+!M§(WorldQueryWrapper,aabb);
      }
      
      public function §@"#§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§`O§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§6!v§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§[H§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§=!P§();
         }
         broadPhase = this.§;G§.§#!K§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§+!M§(WorldQueryWrapper,aabb);
      }
      
      public function §!!G§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§`O§ = null;
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
         broadPhase = this.§;G§.§#!K§;
         var aabb:b2AABB = new b2AABB();
         aabb.§=!h§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§5"0§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§+!M§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§`O§ = null;
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
            return param1.§=#§;
         };
         broadPhase = this.§;G§.§#!K§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §4!F§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §5!z§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §8I§() : b2Body
      {
         return this.§=0§;
      }
      
      public function §,z§() : b2Joint
      {
         return this.§>!,§;
      }
      
      public function §!""§() : b2Contact
      {
         return this.§@Q§;
      }
      
      public function §18§() : Boolean
      {
         return (this.§%$§ & §'!2§) > 0;
      }
      
      b2internal function §?q§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§+!n§;
         while(_loc3_)
         {
            _loc3_.§,"9§(param1);
            _loc3_ = _loc3_.§7"@§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§>i§).§&!j§(this.§1m§,this.§[d§,this.§-!v§,null,this.§;G§.§#!W§,this.§implements§);
         _loc2_ = this.§=0§;
         while(_loc2_)
         {
            _loc2_.§%$§ &= ~b2Body.§,!v§;
            _loc2_ = _loc2_.§7"@§;
         }
         var _loc5_:b2Contact = this.§@Q§;
         while(_loc5_)
         {
            _loc5_.§%$§ &= ~b2Contact.§,!v§;
            _loc5_ = _loc5_.§7"@§;
         }
         var _loc6_:b2Joint = this.§>!,§;
         while(_loc6_)
         {
            _loc6_.§&!4§ = false;
            _loc6_ = _loc6_.§7"@§;
         }
         var _loc7_:int = this.§1m§;
         var _loc8_:Vector.<b2Body> = this.§@!S§;
         var _loc9_:b2Body = this.§=0§;
         while(_loc9_)
         {
            if(!(_loc9_.§%$§ & b2Body.§,!v§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.IsActive() == false))
               {
                  if(_loc9_.§9!j§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§?!+§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§%$§ |= b2Body.§,!v§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§;";§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§9!j§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§@Q§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§4!M§.§%$§ & b2Contact.§,!v§))
                              {
                                 if(!(_loc13_.§4!M§.§8E§() == true || _loc13_.§4!M§.§%!§() == false || _loc13_.§4!M§.§;b§() == false))
                                 {
                                    _loc4_.§=!Z§(_loc13_.§4!M§);
                                    _loc13_.§4!M§.§%$§ |= b2Contact.§,!v§;
                                    if(!((_loc12_ = _loc13_.§%"C§).§%$§ & b2Body.§,!v§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§%$§ |= b2Body.§,!v§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§%!8§;
                           }
                           _loc14_ = _loc2_.§>!,§;
                           while(_loc14_)
                           {
                              if(_loc14_.§?#§.§&!4§ != true)
                              {
                                 if((_loc12_ = _loc14_.§%"C§).IsActive() != false)
                                 {
                                    _loc4_.§#!;§(_loc14_.§?#§);
                                    _loc14_.§?#§.§&!4§ = true;
                                    if(!(_loc12_.§%$§ & b2Body.§,!v§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§%$§ |= b2Body.§,!v§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§%!8§;
                           }
                        }
                     }
                     _loc4_.§?q§(param1,this.§>!X§,this.§0T§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§1m§)
                     {
                        _loc2_ = _loc4_.§"2§[_loc11_];
                        if(_loc2_.§9!j§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§%$§ &= ~b2Body.§,!v§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§7"@§;
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
         _loc2_ = this.§=0§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.IsActive() == false))
            {
               if(_loc2_.§9!j§() != b2Body.b2_staticBody)
               {
                  _loc2_.§%!L§();
               }
            }
            _loc2_ = _loc2_.§7"@§;
         }
         this.§;G§.§[f§();
      }
      
      b2internal function §-!&§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§>i§).§&!j§(this.§1m§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§;G§.§#!W§,this.§implements§);
         var _loc10_:Vector.<b2Body> = §>§;
         _loc2_ = this.§=0§;
         while(_loc2_)
         {
            _loc2_.§%$§ &= ~b2Body.§,!v§;
            _loc2_.m_sweep.§3!s§ = 0;
            _loc2_ = _loc2_.§7"@§;
         }
         _loc11_ = this.§@Q§;
         while(_loc11_)
         {
            _loc11_.§%$§ &= ~(b2Contact.§[r§ | b2Contact.§,!v§);
            _loc11_ = _loc11_.§7"@§;
         }
         _loc8_ = this.§>!,§;
         while(_loc8_)
         {
            _loc8_.§&!4§ = false;
            _loc8_ = _loc8_.§7"@§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§@Q§;
            while(_loc11_)
            {
               if(!(_loc11_.§8E§() == true || _loc11_.§%!§() == false || _loc11_.§+g§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§%$§ & b2Contact.§[r§)
                  {
                     _loc19_ = _loc11_.§7D§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§'!u§;
                     _loc4_ = _loc11_.§ !X§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§9!j§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§9!j§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr644:
                        _loc11_ = _loc11_.§7"@§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§3!s§;
                     if(_loc5_.m_sweep.§3!s§ < _loc6_.m_sweep.§3!s§)
                     {
                        _loc20_ = _loc6_.m_sweep.§3!s§;
                        _loc5_.m_sweep.§3"?§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§3!s§ < _loc5_.m_sweep.§3!s§)
                     {
                        _loc20_ = _loc5_.m_sweep.§3!s§;
                        _loc6_.m_sweep.§3"?§(_loc20_);
                     }
                     _loc19_ = _loc11_.§-E§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§7D§ = _loc19_;
                     _loc11_.§%$§ |= b2Contact.§[r§;
                     §§goto(addr644);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr644);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§'!u§;
            _loc4_ = _loc12_.§ !X§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §!^§.Set(_loc5_.m_sweep);
            §'%§.Set(_loc6_.m_sweep);
            _loc5_.§3"?§(_loc13_);
            _loc6_.§3"?§(_loc13_);
            _loc12_.§"n§(this.§;G§.§#!W§);
            _loc12_.§%$§ &= ~b2Contact.§[r§;
            if(_loc12_.§8E§() == true || _loc12_.§%!§() == false)
            {
               _loc5_.m_sweep.Set(§!^§);
               _loc6_.m_sweep.Set(§'%§);
               _loc5_.§?=§();
               _loc6_.§?=§();
            }
            else if(_loc12_.§;b§() != false)
            {
               if((_loc14_ = _loc5_).§9!j§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§?!+§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§%$§ |= b2Body.§,!v§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§;";§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§9!j§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§@Q§;
                     while(_loc7_)
                     {
                        if(_loc9_.§[d§ == _loc9_.§0Y§)
                        {
                           break;
                        }
                        if(!(_loc7_.§4!M§.§%$§ & b2Contact.§,!v§))
                        {
                           if(!(_loc7_.§4!M§.§8E§() == true || _loc7_.§4!M§.§%!§() == false || _loc7_.§4!M§.§;b§() == false))
                           {
                              _loc9_.§=!Z§(_loc7_.§4!M§);
                              _loc7_.§4!M§.§%$§ |= b2Contact.§,!v§;
                              if(!((_loc22_ = _loc7_.§%"C§).§%$§ & b2Body.§,!v§))
                              {
                                 if(_loc22_.§9!j§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§3"?§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§%$§ |= b2Body.§,!v§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§%!8§;
                     }
                     _loc21_ = _loc2_.§>!,§;
                     while(_loc21_)
                     {
                        if(_loc9_.§-!v§ != _loc9_.§]3§)
                        {
                           if(_loc21_.§?#§.§&!4§ != true)
                           {
                              if((_loc22_ = _loc21_.§%"C§).IsActive() != false)
                              {
                                 _loc9_.§#!;§(_loc21_.§?#§);
                                 _loc21_.§?#§.§&!4§ = true;
                                 if(!(_loc22_.§%$§ & b2Body.§,!v§))
                                 {
                                    if(_loc22_.§9!j§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§3"?§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§%$§ |= b2Body.§,!v§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§%!8§;
                     }
                  }
               }
               (_loc17_ = §,!N§).§+!D§ = false;
               _loc17_.§7!x§ = (1 - _loc13_) * param1.§7!x§;
               _loc17_.§>!s§ = 1 / _loc17_.§7!x§;
               _loc17_.§=G§ = 0;
               _loc17_.§super§ = param1.§super§;
               _loc17_.§"B§ = param1.§"B§;
               _loc9_.§-!&§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§1m§)
               {
                  _loc2_ = _loc9_.§"2§[_loc18_];
                  _loc2_.§%$§ &= ~b2Body.§,!v§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§9!j§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§%!L§();
                        _loc7_ = _loc2_.§@Q§;
                        while(_loc7_)
                        {
                           _loc7_.§4!M§.§%$§ &= ~b2Contact.§[r§;
                           _loc7_ = _loc7_.§%!8§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§[d§)
               {
                  _loc11_ = _loc9_.§!-§[_loc18_];
                  _loc11_.§%$§ &= ~(b2Contact.§[r§ | b2Contact.§,!v§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§-!v§)
               {
                  (_loc8_ = _loc9_.§;&§[_loc18_]).§&!4§ = false;
                  _loc18_++;
               }
               this.§;G§.§[f§();
            }
         }
      }
      
      b2internal function §-l§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§]i§();
         var _loc3_:b2Body = param1.§>F§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §[!o§;
         switch(param1.§=""§)
         {
            case b2Joint.§&!p§:
               this.§2!V§.§75§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§[!h§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§1""§();
               _loc13_ = _loc11_.§2!5§();
               this.§2!V§.§75§(_loc12_,_loc8_,_loc10_);
               this.§2!V§.§75§(_loc13_,_loc9_,_loc10_);
               this.§2!V§.§75§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§5!y§:
               this.§2!V§.§75§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§2!V§.§75§(_loc6_,_loc8_,_loc10_);
               }
               this.§2!V§.§75§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§2!V§.§75§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §+!g§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§=""§)
         {
            case b2Shape.§-"=§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§0!6§(param2,_loc4_.§0!S§);
               _loc6_ = _loc4_.§^s§;
               _loc7_ = param2.R.col1;
               this.§2!V§.§9!W§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§?! §:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§+l§();
               _loc11_ = _loc9_.§^!9§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§0!6§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§2!V§.§+"0§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§0_§:
               _loc13_ = param1 as b2EdgeShape;
               this.§2!V§.§75§(b2Math.§0!6§(param2,_loc13_.GetVertex1()),b2Math.§0!6§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

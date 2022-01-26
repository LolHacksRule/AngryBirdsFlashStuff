package §+d§
{
   import §%E§.*;
   import §6%§.*;
   import §7!3§.*;
   import §8`§.*;
   import §9!<§.b2Controller;
   import §9!<§.b2ControllerEdge;
   import §=n§.*;
   import §`!^§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §^!X§:b2Transform = new b2Transform();
      
      private static var §+!2§:b2Sweep = new b2Sweep();
      
      private static var §5!"§:b2Sweep = new b2Sweep();
      
      private static var §,!0§:b2TimeStep = new b2TimeStep();
      
      private static var §1w§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §5!B§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §'M§:Boolean;
      
      private static var §%!&§:Boolean;
      
      public static const §'k§:int = 1;
      
      public static const §&!M§:int = 2;
       
      
      private var §&e§:Vector.<b2Body>;
      
      b2internal var §?!?§:int;
      
      b2internal var §4K§:b2ContactManager;
      
      private var §'4§:b2ContactSolver;
      
      private var §#X§:b2Island;
      
      b2internal var §%X§:b2Body;
      
      private var §>!$§:b2Joint;
      
      b2internal var §5!e§:b2Contact;
      
      private var §,1§:int;
      
      b2internal var §36§:int;
      
      private var §>!V§:int;
      
      private var §7r§:b2Controller;
      
      private var §97§:int;
      
      private var §!1§:b2Vec2;
      
      private var §'!>§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §#b§:b2DestructionListener;
      
      private var §6R§:b2DebugDraw;
      
      private var §%!+§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§&e§ = new Vector.<b2Body>();
         this.§4K§ = new b2ContactManager();
         this.§'4§ = new b2ContactSolver();
         this.§#X§ = new b2Island();
         super();
         this.§#b§ = null;
         this.§6R§ = null;
         this.§%X§ = null;
         this.§5!e§ = null;
         this.§>!$§ = null;
         this.§7r§ = null;
         this.§,1§ = 0;
         this.§36§ = 0;
         this.§>!V§ = 0;
         this.§97§ = 0;
         §'M§ = true;
         §%!&§ = true;
         this.§'!>§ = param2;
         this.§!1§ = param1;
         this.§%!+§ = 0;
         this.§4K§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§0!1§(_loc3_);
      }
      
      public function §7&§(param1:b2DestructionListener) : void
      {
         this.§#b§ = param1;
      }
      
      public function §;y§(param1:b2ContactFilter) : void
      {
         this.§4K§.§`$§ = param1;
      }
      
      public function §2o§(param1:b2ContactListener) : void
      {
         this.§4K§.§30§ = param1;
      }
      
      public function §=#§(param1:b2DebugDraw) : void
      {
         this.§6R§ = param1;
      }
      
      public function §0T§(param1:§@!C§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§@!C§ = this.§4K§.§!!D§;
         this.§4K§.§!!D§ = param1;
         var _loc3_:b2Body = this.§%X§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§&t§;
            while(_loc4_)
            {
               _loc4_.§2!=§ = param1.§%j§(_loc2_.§+!8§(_loc4_.§2!=§),_loc4_);
               _loc4_ = _loc4_.§8A§;
            }
            _loc3_ = _loc3_.§8A§;
         }
      }
      
      public function §[!§() : void
      {
         this.§4K§.§!!D§.§[!§();
      }
      
      public function §=E§() : int
      {
         return this.§4K§.§!!D§.§=E§();
      }
      
      public function §0!1§(param1:b2BodyDef) : b2Body
      {
         if(this.§%F§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§;h§ = null;
         _loc2_.§8A§ = this.§%X§;
         if(this.§%X§)
         {
            this.§%X§.§;h§ = _loc2_;
         }
         this.§%X§ = _loc2_;
         ++this.§,1§;
         return _loc2_;
      }
      
      public function §%A§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§%F§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§>!$§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§-w§;
            if(this.§#b§)
            {
               this.§#b§.§8$§(_loc6_.§1!,§);
            }
            this.§@B§(_loc6_.§1!,§);
         }
         var _loc3_:b2ControllerEdge = param1.§7r§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§'!,§;
            _loc7_.§"1§.§;Y§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§5!e§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§-w§;
            this.§4K§.§9!1§(_loc8_.§!d§);
         }
         param1.§5!e§ = null;
         var _loc5_:b2Fixture = param1.§&t§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§8A§;
            if(this.§#b§)
            {
               this.§#b§.§+!@§(_loc9_);
            }
            _loc9_.§=!=§(this.§4K§.§!!D§);
            _loc9_.§9!1§();
         }
         param1.§&t§ = null;
         param1.§41§ = 0;
         if(param1.§;h§)
         {
            param1.§;h§.§8A§ = param1.§8A§;
         }
         if(param1.§8A§)
         {
            param1.§8A§.§;h§ = param1.§;h§;
         }
         if(param1 == this.§%X§)
         {
            this.§%X§ = param1.§8A§;
         }
         --this.§,1§;
      }
      
      public function §,2§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§2!f§(param1,null);
         _loc2_.§;h§ = null;
         _loc2_.§8A§ = this.§>!$§;
         if(this.§>!$§)
         {
            this.§>!$§.§;h§ = _loc2_;
         }
         this.§>!$§ = _loc2_;
         ++this.§>!V§;
         _loc2_.§@P§.§1!,§ = _loc2_;
         _loc2_.§@P§.§ !a§ = _loc2_.§>D§;
         _loc2_.§@P§.§;8§ = null;
         _loc2_.§@P§.§-w§ = _loc2_.§5!R§.§>!$§;
         if(_loc2_.§5!R§.§>!$§)
         {
            _loc2_.§5!R§.§>!$§.§;8§ = _loc2_.§@P§;
         }
         _loc2_.§5!R§.§>!$§ = _loc2_.§@P§;
         _loc2_.§+z§.§1!,§ = _loc2_;
         _loc2_.§+z§.§ !a§ = _loc2_.§5!R§;
         _loc2_.§+z§.§;8§ = null;
         _loc2_.§+z§.§-w§ = _loc2_.§>D§.§>!$§;
         if(_loc2_.§>D§.§>!$§)
         {
            _loc2_.§>D§.§>!$§.§;8§ = _loc2_.§+z§;
         }
         _loc2_.§>D§.§>!$§ = _loc2_.§+z§;
         var _loc3_:b2Body = param1.§1!V§;
         var _loc4_:b2Body = param1.§;!?§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§#! §();
            while(_loc5_)
            {
               if(_loc5_.§ !a§ == _loc3_)
               {
                  _loc5_.§!d§.§ !6§();
               }
               _loc5_ = _loc5_.§-w§;
            }
         }
         return _loc2_;
      }
      
      public function §@B§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§&+§;
         if(param1.§;h§)
         {
            param1.§;h§.§8A§ = param1.§8A§;
         }
         if(param1.§8A§)
         {
            param1.§8A§.§;h§ = param1.§;h§;
         }
         if(param1 == this.§>!$§)
         {
            this.§>!$§ = param1.§8A§;
         }
         var _loc3_:b2Body = param1.§5!R§;
         var _loc4_:b2Body = param1.§>D§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§@P§.§;8§)
         {
            param1.§@P§.§;8§.§-w§ = param1.§@P§.§-w§;
         }
         if(param1.§@P§.§-w§)
         {
            param1.§@P§.§-w§.§;8§ = param1.§@P§.§;8§;
         }
         if(param1.§@P§ == _loc3_.§>!$§)
         {
            _loc3_.§>!$§ = param1.§@P§.§-w§;
         }
         param1.§@P§.§;8§ = null;
         param1.§@P§.§-w§ = null;
         if(param1.§+z§.§;8§)
         {
            param1.§+z§.§;8§.§-w§ = param1.§+z§.§-w§;
         }
         if(param1.§+z§.§-w§)
         {
            param1.§+z§.§-w§.§;8§ = param1.§+z§.§;8§;
         }
         if(param1.§+z§ == _loc4_.§>!$§)
         {
            _loc4_.§>!$§ = param1.§+z§.§-w§;
         }
         param1.§+z§.§;8§ = null;
         param1.§+z§.§-w§ = null;
         b2Joint.§9!1§(param1,null);
         --this.§>!V§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§#! §();
            while(_loc5_)
            {
               if(_loc5_.§ !a§ == _loc3_)
               {
                  _loc5_.§!d§.§ !6§();
               }
               _loc5_ = _loc5_.§-w§;
            }
         }
      }
      
      public function §6!@§(param1:b2Controller) : b2Controller
      {
         param1.§8A§ = this.§7r§;
         param1.§;h§ = null;
         this.§7r§ = param1;
         param1.m_world = this;
         ++this.§97§;
         return param1;
      }
      
      public function §0p§(param1:b2Controller) : void
      {
         if(param1.§;h§)
         {
            param1.§;h§.§8A§ = param1.§8A§;
         }
         if(param1.§8A§)
         {
            param1.§8A§.§;h§ = param1.§;h§;
         }
         if(this.§7r§ == param1)
         {
            this.§7r§ = param1.§8A§;
         }
         --this.§97§;
      }
      
      public function §>-§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§8A§ = this.§7r§;
         param1.§;h§ = null;
         if(this.§7r§)
         {
            this.§7r§.§;h§ = param1;
         }
         this.§7r§ = param1;
         ++this.§97§;
         param1.m_world = this;
         return param1;
      }
      
      public function §4&§(param1:b2Controller) : void
      {
         param1.§]!E§();
         if(param1.§8A§)
         {
            param1.§8A§.§;h§ = param1.§;h§;
         }
         if(param1.§;h§)
         {
            param1.§;h§.§8A§ = param1.§8A§;
         }
         if(param1 == this.§7r§)
         {
            this.§7r§ = param1.§8A§;
         }
         --this.§97§;
      }
      
      public function §6!5§(param1:Boolean) : void
      {
         §'M§ = param1;
      }
      
      public function §?H§(param1:Boolean) : void
      {
         §%!&§ = param1;
      }
      
      public function §4N§() : int
      {
         return this.§,1§;
      }
      
      public function §%!%§() : int
      {
         return this.§>!V§;
      }
      
      public function §<!C§() : int
      {
         return this.§36§;
      }
      
      public function §7O§(param1:b2Vec2) : void
      {
         this.§!1§ = param1;
      }
      
      public function §`e§() : b2Vec2
      {
         return this.§!1§;
      }
      
      public function §&&§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §7!F§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§?!?§ & §'k§)
         {
            this.§4K§.§,q§();
            this.§?!?§ &= ~§'k§;
         }
         this.§?!?§ |= §&!M§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§,>§ = param1;
         _loc4_.§&'§ = param2;
         _loc4_.§<d§ = param3;
         if(param1 > 0)
         {
            _loc4_.§=!1§ = 1 / param1;
         }
         else
         {
            _loc4_.§=!1§ = 0;
         }
         _loc4_.§"§ = this.§%!+§ * param1;
         _loc4_.§`!;§ = §'M§;
         this.§4K§.§4!"§();
         if(_loc4_.§,>§ > 0)
         {
            this.§&! §(_loc4_);
         }
         if(§%!&§ && _loc4_.§,>§ > 0)
         {
            this.§8Q§(_loc4_);
         }
         if(_loc4_.§,>§ > 0)
         {
            this.§%!+§ = _loc4_.§=!1§;
         }
         this.§?!?§ &= ~§&!M§;
      }
      
      public function §&!5§() : void
      {
         var _loc1_:b2Body = this.§%X§;
         while(_loc1_)
         {
            _loc1_.§66§.§8c§();
            _loc1_.§,!§ = 0;
            _loc1_ = _loc1_.§8A§;
         }
      }
      
      public function §<t§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§@!C§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§6R§ == null)
         {
            return;
         }
         this.§6R§.§;V§.graphics.clear();
         var _loc1_:uint = this.§6R§.§8!9§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§&!a§)
         {
            _loc3_ = this.§%X§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§-3§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§<$§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§,!d§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§<$§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§,!d§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§<$§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§<$§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§<$§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§8A§;
               }
               _loc3_ = _loc3_.§8A§;
            }
         }
         if(_loc1_ & b2DebugDraw.§5!c§)
         {
            _loc6_ = this.§>!$§;
            while(_loc6_)
            {
               this.§!f§(_loc6_);
               _loc6_ = _loc6_.§8A§;
            }
         }
         if(_loc1_ & b2DebugDraw.§[X§)
         {
            _loc16_ = this.§7r§;
            while(_loc16_)
            {
               _loc16_.§3T§(this.§6R§);
               _loc16_ = _loc16_.§8A§;
            }
         }
         if(_loc1_ & b2DebugDraw.native)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§4K§.§5!e§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§5m§();
               _loc19_ = _loc17_.§3t§();
               _loc20_ = _loc18_.§>&§().§`!O§();
               _loc21_ = _loc19_.§>&§().§`!O§();
               this.§6R§.§#+§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§%;§();
            }
         }
         if(_loc1_ & b2DebugDraw.§&!W§)
         {
            _loc7_ = this.§4K§.§!!D§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§%X§;
            while(_loc3_)
            {
               if(_loc3_.§-3§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§+!8§(_loc4_.§2!=§);
                     _loc14_[0].Set(_loc22_.§+?§.x,_loc22_.§+?§.y);
                     _loc14_[1].Set(_loc22_.§`-§.x,_loc22_.§+?§.y);
                     _loc14_[2].Set(_loc22_.§`-§.x,_loc22_.§`-§.y);
                     _loc14_[3].Set(_loc22_.§+?§.x,_loc22_.§`-§.y);
                     this.§6R§.§0$§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§%;§();
                  }
               }
               _loc3_ = _loc3_.§%;§();
            }
         }
         if(_loc1_ & b2DebugDraw.§;P§)
         {
            _loc3_ = this.§%X§;
            while(_loc3_)
            {
               (_loc11_ = §^!X§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§-!Q§();
               this.§6R§.§4§(_loc11_);
               _loc3_ = _loc3_.§8A§;
            }
         }
      }
      
      public function §?e§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§@!C§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§4K§.§!!D§;
         broadPhase.§ R§(WorldQueryWrapper,aabb);
      }
      
      public function §"!?§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§@!C§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§-!§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§3!d§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§ !;§();
         }
         broadPhase = this.§4K§.§!!D§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§ R§(WorldQueryWrapper,aabb);
      }
      
      public function §<!X§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§@!C§ = null;
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
         broadPhase = this.§4K§.§!!D§;
         var aabb:b2AABB = new b2AABB();
         aabb.§+?§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§`-§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§ R§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§@!C§ = null;
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
            return param1.§3!%§;
         };
         broadPhase = this.§4K§.§!!D§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §2R§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §=!<§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §!E§() : b2Body
      {
         return this.§%X§;
      }
      
      public function §^#§() : b2Joint
      {
         return this.§>!$§;
      }
      
      public function §#! §() : b2Contact
      {
         return this.§5!e§;
      }
      
      public function §%F§() : Boolean
      {
         return (this.§?!?§ & §&!M§) > 0;
      }
      
      b2internal function §&! §(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§7r§;
         while(_loc3_)
         {
            _loc3_.§7!F§(param1);
            _loc3_ = _loc3_.§8A§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§#X§).§9!M§(this.§,1§,this.§36§,this.§>!V§,null,this.§4K§.§30§,this.§'4§);
         _loc2_ = this.§%X§;
         while(_loc2_)
         {
            _loc2_.§?!?§ &= ~b2Body.§^!W§;
            _loc2_ = _loc2_.§8A§;
         }
         var _loc5_:b2Contact = this.§5!e§;
         while(_loc5_)
         {
            _loc5_.§?!?§ &= ~b2Contact.§^!W§;
            _loc5_ = _loc5_.§8A§;
         }
         var _loc6_:b2Joint = this.§>!$§;
         while(_loc6_)
         {
            _loc6_.§[!A§ = false;
            _loc6_ = _loc6_.§8A§;
         }
         var _loc7_:int = this.§,1§;
         var _loc8_:Vector.<b2Body> = this.§&e§;
         var _loc9_:b2Body = this.§%X§;
         while(_loc9_)
         {
            if(!(_loc9_.§?!?§ & b2Body.§^!W§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§-3§() == false))
               {
                  if(_loc9_.§,!d§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§]!E§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§?!?§ |= b2Body.§^!W§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§+"§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§,!d§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§5!e§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§!d§.§?!?§ & b2Contact.§^!W§))
                              {
                                 if(!(_loc13_.§!d§.§8f§() == true || _loc13_.§!d§.§&!=§() == false || _loc13_.§!d§.§!v§() == false))
                                 {
                                    _loc4_.§9M§(_loc13_.§!d§);
                                    _loc13_.§!d§.§?!?§ |= b2Contact.§^!W§;
                                    if(!((_loc12_ = _loc13_.§ !a§).§?!?§ & b2Body.§^!W§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§?!?§ |= b2Body.§^!W§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§-w§;
                           }
                           _loc14_ = _loc2_.§>!$§;
                           while(_loc14_)
                           {
                              if(_loc14_.§1!,§.§[!A§ != true)
                              {
                                 if((_loc12_ = _loc14_.§ !a§).§-3§() != false)
                                 {
                                    _loc4_.§2E§(_loc14_.§1!,§);
                                    _loc14_.§1!,§.§[!A§ = true;
                                    if(!(_loc12_.§?!?§ & b2Body.§^!W§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§?!?§ |= b2Body.§^!W§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§-w§;
                           }
                        }
                     }
                     _loc4_.§&! §(param1,this.§!1§,this.§'!>§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§,1§)
                     {
                        _loc2_ = _loc4_.§0!3§[_loc11_];
                        if(_loc2_.§,!d§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§?!?§ &= ~b2Body.§^!W§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§8A§;
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
         _loc2_ = this.§%X§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§-3§() == false))
            {
               if(_loc2_.§,!d§() != b2Body.b2_staticBody)
               {
                  _loc2_.§3[§();
               }
            }
            _loc2_ = _loc2_.§8A§;
         }
         this.§4K§.§,q§();
      }
      
      b2internal function §8Q§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§#X§).§9!M§(this.§,1§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§4K§.§30§,this.§'4§);
         var _loc10_:Vector.<b2Body> = §1w§;
         _loc2_ = this.§%X§;
         while(_loc2_)
         {
            _loc2_.§?!?§ &= ~b2Body.§^!W§;
            _loc2_.m_sweep.§0!E§ = 0;
            _loc2_ = _loc2_.§8A§;
         }
         _loc11_ = this.§5!e§;
         while(_loc11_)
         {
            _loc11_.§?!?§ &= ~(b2Contact.§'z§ | b2Contact.§^!W§);
            _loc11_ = _loc11_.§8A§;
         }
         _loc8_ = this.§>!$§;
         while(_loc8_)
         {
            _loc8_.§[!A§ = false;
            _loc8_ = _loc8_.§8A§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§5!e§;
            while(_loc11_)
            {
               if(!(_loc11_.§8f§() == true || _loc11_.§&!=§() == false || _loc11_.§4!U§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§?!?§ & b2Contact.§'z§)
                  {
                     _loc19_ = _loc11_.§ !c§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§[!d§;
                     _loc4_ = _loc11_.§#!^§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§,!d§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§,!d§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr607:
                        _loc11_ = _loc11_.§8A§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§0!E§;
                     if(_loc5_.m_sweep.§0!E§ < _loc6_.m_sweep.§0!E§)
                     {
                        _loc20_ = _loc6_.m_sweep.§0!E§;
                        _loc5_.m_sweep.§9!$§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§0!E§ < _loc5_.m_sweep.§0!E§)
                     {
                        _loc20_ = _loc5_.m_sweep.§0!E§;
                        _loc6_.m_sweep.§9!$§(_loc20_);
                     }
                     _loc19_ = _loc11_.§@!6§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§ !c§ = _loc19_;
                     _loc11_.§?!?§ |= b2Contact.§'z§;
                     §§goto(addr607);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr607);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§[!d§;
            _loc4_ = _loc12_.§#!^§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §+!2§.Set(_loc5_.m_sweep);
            §5!"§.Set(_loc6_.m_sweep);
            _loc5_.§9!$§(_loc13_);
            _loc6_.§9!$§(_loc13_);
            _loc12_.§ ?§(this.§4K§.§30§);
            _loc12_.§?!?§ &= ~b2Contact.§'z§;
            if(_loc12_.§8f§() == true || _loc12_.§&!=§() == false)
            {
               _loc5_.m_sweep.Set(§+!2§);
               _loc6_.m_sweep.Set(§5!"§);
               _loc5_.§%t§();
               _loc6_.§%t§();
            }
            else if(_loc12_.§!v§() != false)
            {
               if((_loc14_ = _loc5_).§,!d§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§]!E§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§?!?§ |= b2Body.§^!W§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§+"§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§,!d§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§5!e§;
                     while(_loc7_)
                     {
                        if(_loc9_.§36§ == _loc9_.§&!f§)
                        {
                           break;
                        }
                        if(!(_loc7_.§!d§.§?!?§ & b2Contact.§^!W§))
                        {
                           if(!(_loc7_.§!d§.§8f§() == true || _loc7_.§!d§.§&!=§() == false || _loc7_.§!d§.§!v§() == false))
                           {
                              _loc9_.§9M§(_loc7_.§!d§);
                              _loc7_.§!d§.§?!?§ |= b2Contact.§^!W§;
                              if(!((_loc22_ = _loc7_.§ !a§).§?!?§ & b2Body.§^!W§))
                              {
                                 if(_loc22_.§,!d§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§9!$§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§?!?§ |= b2Body.§^!W§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§-w§;
                     }
                     _loc21_ = _loc2_.§>!$§;
                     while(_loc21_)
                     {
                        if(_loc9_.§>!V§ != _loc9_.§ !&§)
                        {
                           if(_loc21_.§1!,§.§[!A§ != true)
                           {
                              if((_loc22_ = _loc21_.§ !a§).§-3§() != false)
                              {
                                 _loc9_.§2E§(_loc21_.§1!,§);
                                 _loc21_.§1!,§.§[!A§ = true;
                                 if(!(_loc22_.§?!?§ & b2Body.§^!W§))
                                 {
                                    if(_loc22_.§,!d§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§9!$§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§?!?§ |= b2Body.§^!W§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§-w§;
                     }
                  }
               }
               (_loc17_ = §,!0§).§`!;§ = false;
               _loc17_.§,>§ = (1 - _loc13_) * param1.§,>§;
               _loc17_.§=!1§ = 1 / _loc17_.§,>§;
               _loc17_.§"§ = 0;
               _loc17_.§&'§ = param1.§&'§;
               _loc17_.§<d§ = param1.§<d§;
               _loc9_.§8Q§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§,1§)
               {
                  _loc2_ = _loc9_.§0!3§[_loc18_];
                  _loc2_.§?!?§ &= ~b2Body.§^!W§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§,!d§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§3[§();
                        _loc7_ = _loc2_.§5!e§;
                        while(_loc7_)
                        {
                           _loc7_.§!d§.§?!?§ &= ~b2Contact.§'z§;
                           _loc7_ = _loc7_.§-w§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§36§)
               {
                  _loc11_ = _loc9_.§5!9§[_loc18_];
                  _loc11_.§?!?§ &= ~(b2Contact.§'z§ | b2Contact.§^!W§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§>!V§)
               {
                  (_loc8_ = _loc9_.§4E§[_loc18_]).§[!A§ = false;
                  _loc18_++;
               }
               this.§4K§.§,q§();
            }
         }
      }
      
      b2internal function §!f§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§ !I§();
         var _loc3_:b2Body = param1.§"!$§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §5!B§;
         switch(param1.§5!'§)
         {
            case b2Joint.§2!T§:
               this.§6R§.§#+§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§';§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§,§();
               _loc13_ = _loc11_.§7E§();
               this.§6R§.§#+§(_loc12_,_loc8_,_loc10_);
               this.§6R§.§#+§(_loc13_,_loc9_,_loc10_);
               this.§6R§.§#+§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§'!I§:
               this.§6R§.§#+§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§6R§.§#+§(_loc6_,_loc8_,_loc10_);
               }
               this.§6R§.§#+§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§6R§.§#+§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §<$§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§5!'§)
         {
            case b2Shape.§%!@§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§'Y§(param2,_loc4_.§8I§);
               _loc6_ = _loc4_.§]U§;
               _loc7_ = param2.R.col1;
               this.§6R§.§7Z§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§0B§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§&!X§();
               _loc11_ = _loc9_.§3'§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§'Y§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§6R§.§=!0§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§<!g§:
               _loc13_ = param1 as b2EdgeShape;
               this.§6R§.§#+§(b2Math.§'Y§(param2,_loc13_.GetVertex1()),b2Math.§'Y§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

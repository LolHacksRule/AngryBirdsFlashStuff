package §1%§
{
   import §'!@§.b2Controller;
   import §'!@§.b2ControllerEdge;
   import §,X§.*;
   import §5!_§.*;
   import §8!H§.*;
   import §>s§.*;
   import §?!&§.*;
   import §`!H§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §@S§:b2Transform = new b2Transform();
      
      private static var § §:b2Sweep = new b2Sweep();
      
      private static var §function§:b2Sweep = new b2Sweep();
      
      private static var §=!B§:b2TimeStep = new b2TimeStep();
      
      private static var §%z§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §&!@§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §#!e§:Boolean;
      
      private static var §#!=§:Boolean;
      
      public static const §?v§:int = 1;
      
      public static const §-!-§:int = 2;
       
      
      private var §7!f§:Vector.<b2Body>;
      
      b2internal var §8A§:int;
      
      b2internal var §7@§:b2ContactManager;
      
      private var §0W§:b2ContactSolver;
      
      private var §=H§:b2Island;
      
      b2internal var §2_§:b2Body;
      
      private var §>q§:b2Joint;
      
      b2internal var §;T§:b2Contact;
      
      private var §8y§:int;
      
      b2internal var §9!?§:int;
      
      private var §8%§:int;
      
      private var §>@§:b2Controller;
      
      private var §1e§:int;
      
      private var § !0§:b2Vec2;
      
      private var §8!8§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §3!V§:b2DestructionListener;
      
      private var §!x§:b2DebugDraw;
      
      private var §`]§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§7!f§ = new Vector.<b2Body>();
         this.§7@§ = new b2ContactManager();
         this.§0W§ = new b2ContactSolver();
         this.§=H§ = new b2Island();
         super();
         this.§3!V§ = null;
         this.§!x§ = null;
         this.§2_§ = null;
         this.§;T§ = null;
         this.§>q§ = null;
         this.§>@§ = null;
         this.§8y§ = 0;
         this.§9!?§ = 0;
         this.§8%§ = 0;
         this.§1e§ = 0;
         §#!e§ = true;
         §#!=§ = true;
         this.§8!8§ = param2;
         this.§ !0§ = param1;
         this.§`]§ = 0;
         this.§7@§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§,!j§(_loc3_);
      }
      
      public function §4H§(param1:b2DestructionListener) : void
      {
         this.§3!V§ = param1;
      }
      
      public function §1V§(param1:b2ContactFilter) : void
      {
         this.§7@§.§";§ = param1;
      }
      
      public function §-#§(param1:b2ContactListener) : void
      {
         this.§7@§.§-m§ = param1;
      }
      
      public function §%!7§(param1:b2DebugDraw) : void
      {
         this.§!x§ = param1;
      }
      
      public function §&J§(param1:§>u§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§>u§ = this.§7@§.§+!2§;
         this.§7@§.§+!2§ = param1;
         var _loc3_:b2Body = this.§2_§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§82§;
            while(_loc4_)
            {
               _loc4_.§#F§ = param1.§'R§(_loc2_.§6A§(_loc4_.§#F§),_loc4_);
               _loc4_ = _loc4_.§!J§;
            }
            _loc3_ = _loc3_.§!J§;
         }
      }
      
      public function §9+§() : void
      {
         this.§7@§.§+!2§.§9+§();
      }
      
      public function §2!J§() : int
      {
         return this.§7@§.§+!2§.§2!J§();
      }
      
      public function §,!j§(param1:b2BodyDef) : b2Body
      {
         if(this.§3! §() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§4!0§ = null;
         _loc2_.§!J§ = this.§2_§;
         if(this.§2_§)
         {
            this.§2_§.§4!0§ = _loc2_;
         }
         this.§2_§ = _loc2_;
         ++this.§8y§;
         return _loc2_;
      }
      
      public function §%!O§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§3! §() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§>q§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§86§;
            if(this.§3!V§)
            {
               this.§3!V§.§-!!§(_loc6_.§'#§);
            }
            this.§1#§(_loc6_.§'#§);
         }
         var _loc3_:b2ControllerEdge = param1.§>@§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§"F§;
            _loc7_.controller.§@!E§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§;T§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§86§;
            this.§7@§.§"!Q§(_loc8_.§#!#§);
         }
         param1.§;T§ = null;
         var _loc5_:b2Fixture = param1.§82§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§!J§;
            if(this.§3!V§)
            {
               this.§3!V§.§?S§(_loc9_);
            }
            _loc9_.§^!B§(this.§7@§.§+!2§);
            _loc9_.§"!Q§();
         }
         param1.§82§ = null;
         param1.§3!2§ = 0;
         if(param1.§4!0§)
         {
            param1.§4!0§.§!J§ = param1.§!J§;
         }
         if(param1.§!J§)
         {
            param1.§!J§.§4!0§ = param1.§4!0§;
         }
         if(param1 == this.§2_§)
         {
            this.§2_§ = param1.§!J§;
         }
         --this.§8y§;
      }
      
      public function §`H§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§;!]§(param1,null);
         _loc2_.§4!0§ = null;
         _loc2_.§!J§ = this.§>q§;
         if(this.§>q§)
         {
            this.§>q§.§4!0§ = _loc2_;
         }
         this.§>q§ = _loc2_;
         ++this.§8%§;
         _loc2_.§#n§.§'#§ = _loc2_;
         _loc2_.§#n§.§;-§ = _loc2_.§ X§;
         _loc2_.§#n§.§9§ = null;
         _loc2_.§#n§.§86§ = _loc2_.§,^§.§>q§;
         if(_loc2_.§,^§.§>q§)
         {
            _loc2_.§,^§.§>q§.§9§ = _loc2_.§#n§;
         }
         _loc2_.§,^§.§>q§ = _loc2_.§#n§;
         _loc2_.§2H§.§'#§ = _loc2_;
         _loc2_.§2H§.§;-§ = _loc2_.§,^§;
         _loc2_.§2H§.§9§ = null;
         _loc2_.§2H§.§86§ = _loc2_.§ X§.§>q§;
         if(_loc2_.§ X§.§>q§)
         {
            _loc2_.§ X§.§>q§.§9§ = _loc2_.§2H§;
         }
         _loc2_.§ X§.§>q§ = _loc2_.§2H§;
         var _loc3_:b2Body = param1.§7!K§;
         var _loc4_:b2Body = param1.§'P§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§"!c§();
            while(_loc5_)
            {
               if(_loc5_.§;-§ == _loc3_)
               {
                  _loc5_.§#!#§.§+! §();
               }
               _loc5_ = _loc5_.§86§;
            }
         }
         return _loc2_;
      }
      
      public function §1#§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§'!"§;
         if(param1.§4!0§)
         {
            param1.§4!0§.§!J§ = param1.§!J§;
         }
         if(param1.§!J§)
         {
            param1.§!J§.§4!0§ = param1.§4!0§;
         }
         if(param1 == this.§>q§)
         {
            this.§>q§ = param1.§!J§;
         }
         var _loc3_:b2Body = param1.§,^§;
         var _loc4_:b2Body = param1.§ X§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§#n§.§9§)
         {
            param1.§#n§.§9§.§86§ = param1.§#n§.§86§;
         }
         if(param1.§#n§.§86§)
         {
            param1.§#n§.§86§.§9§ = param1.§#n§.§9§;
         }
         if(param1.§#n§ == _loc3_.§>q§)
         {
            _loc3_.§>q§ = param1.§#n§.§86§;
         }
         param1.§#n§.§9§ = null;
         param1.§#n§.§86§ = null;
         if(param1.§2H§.§9§)
         {
            param1.§2H§.§9§.§86§ = param1.§2H§.§86§;
         }
         if(param1.§2H§.§86§)
         {
            param1.§2H§.§86§.§9§ = param1.§2H§.§9§;
         }
         if(param1.§2H§ == _loc4_.§>q§)
         {
            _loc4_.§>q§ = param1.§2H§.§86§;
         }
         param1.§2H§.§9§ = null;
         param1.§2H§.§86§ = null;
         b2Joint.§"!Q§(param1,null);
         --this.§8%§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§"!c§();
            while(_loc5_)
            {
               if(_loc5_.§;-§ == _loc3_)
               {
                  _loc5_.§#!#§.§+! §();
               }
               _loc5_ = _loc5_.§86§;
            }
         }
      }
      
      public function §?O§(param1:b2Controller) : b2Controller
      {
         param1.§!J§ = this.§>@§;
         param1.§4!0§ = null;
         this.§>@§ = param1;
         param1.m_world = this;
         ++this.§1e§;
         return param1;
      }
      
      public function §6U§(param1:b2Controller) : void
      {
         if(param1.§4!0§)
         {
            param1.§4!0§.§!J§ = param1.§!J§;
         }
         if(param1.§!J§)
         {
            param1.§!J§.§4!0§ = param1.§4!0§;
         }
         if(this.§>@§ == param1)
         {
            this.§>@§ = param1.§!J§;
         }
         --this.§1e§;
      }
      
      public function §>4§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§!J§ = this.§>@§;
         param1.§4!0§ = null;
         if(this.§>@§)
         {
            this.§>@§.§4!0§ = param1;
         }
         this.§>@§ = param1;
         ++this.§1e§;
         param1.m_world = this;
         return param1;
      }
      
      public function §4U§(param1:b2Controller) : void
      {
         param1.§^!<§();
         if(param1.§!J§)
         {
            param1.§!J§.§4!0§ = param1.§4!0§;
         }
         if(param1.§4!0§)
         {
            param1.§4!0§.§!J§ = param1.§!J§;
         }
         if(param1 == this.§>@§)
         {
            this.§>@§ = param1.§!J§;
         }
         --this.§1e§;
      }
      
      public function §%!g§(param1:Boolean) : void
      {
         §#!e§ = param1;
      }
      
      public function §`a§(param1:Boolean) : void
      {
         §#!=§ = param1;
      }
      
      public function §;!?§() : int
      {
         return this.§8y§;
      }
      
      public function §]H§() : int
      {
         return this.§8%§;
      }
      
      public function §@!c§() : int
      {
         return this.§9!?§;
      }
      
      public function §4D§(param1:b2Vec2) : void
      {
         this.§ !0§ = param1;
      }
      
      public function §!!f§() : b2Vec2
      {
         return this.§ !0§;
      }
      
      public function §]!7§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §4k§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§8A§ & §?v§)
         {
            this.§7@§.§ !§();
            this.§8A§ &= ~§?v§;
         }
         this.§8A§ |= §-!-§;
         var _loc4_:b2TimeStep = s_timestep2;
         _loc4_.§?!>§ = param1;
         _loc4_.§`!_§ = param2;
         _loc4_.§]Y§ = param3;
         if(param1 > 0)
         {
            _loc4_.§finally§ = 1 / param1;
         }
         else
         {
            _loc4_.§finally§ = 0;
         }
         _loc4_.§&l§ = this.§`]§ * param1;
         _loc4_.§3!=§ = §#!e§;
         this.§7@§.§4!C§();
         if(_loc4_.§?!>§ > 0)
         {
            this.§ M§(_loc4_);
         }
         if(§#!=§ && _loc4_.§?!>§ > 0)
         {
            this.§4!6§(_loc4_);
         }
         if(_loc4_.§?!>§ > 0)
         {
            this.§`]§ = _loc4_.§finally§;
         }
         this.§8A§ &= ~§-!-§;
      }
      
      public function §-W§() : void
      {
         var _loc1_:b2Body = this.§2_§;
         while(_loc1_)
         {
            _loc1_.§'<§.§@l§();
            _loc1_.§46§ = 0;
            _loc1_ = _loc1_.§!J§;
         }
      }
      
      public function §]i§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§>u§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§!x§ == null)
         {
            return;
         }
         this.§!x§.§ y§.graphics.clear();
         var _loc1_:uint = this.§!x§.§-r§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§'!J§)
         {
            _loc3_ = this.§2_§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§+?§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§6!%§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§2!I§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§3r§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§2!I§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§3r§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§2!I§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§2!I§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§2!I§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§!J§;
               }
               _loc3_ = _loc3_.§!J§;
            }
         }
         if(_loc1_ & b2DebugDraw.§#W§)
         {
            _loc6_ = this.§>q§;
            while(_loc6_)
            {
               this.§<!"§(_loc6_);
               _loc6_ = _loc6_.§!J§;
            }
         }
         if(_loc1_ & b2DebugDraw.§,!M§)
         {
            _loc16_ = this.§>@§;
            while(_loc16_)
            {
               _loc16_.§`!1§(this.§!x§);
               _loc16_ = _loc16_.§!J§;
            }
         }
         if(_loc1_ & b2DebugDraw.§',§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§7@§.§;T§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§%! §();
               _loc19_ = _loc17_.§4#§();
               _loc20_ = _loc18_.§6k§().§>!]§();
               _loc21_ = _loc19_.§6k§().§>!]§();
               this.§!x§.§0!3§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§5<§();
            }
         }
         if(_loc1_ & b2DebugDraw.§!V§)
         {
            _loc7_ = this.§7@§.§+!2§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§2_§;
            while(_loc3_)
            {
               if(_loc3_.§6!%§() != false)
               {
                  _loc4_ = _loc3_.§+?§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§6A§(_loc4_.§#F§);
                     _loc14_[0].Set(_loc22_.§]G§.x,_loc22_.§]G§.y);
                     _loc14_[1].Set(_loc22_.§[h§.x,_loc22_.§]G§.y);
                     _loc14_[2].Set(_loc22_.§[h§.x,_loc22_.§[h§.y);
                     _loc14_[3].Set(_loc22_.§]G§.x,_loc22_.§[h§.y);
                     this.§!x§.§6]§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§5<§();
                  }
               }
               _loc3_ = _loc3_.§5<§();
            }
         }
         if(_loc1_ & b2DebugDraw.§9!F§)
         {
            _loc3_ = this.§2_§;
            while(_loc3_)
            {
               _loc11_ = §@S§;
               _loc11_.R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§5!Q§();
               this.§!x§.§`!`§(_loc11_);
               _loc3_ = _loc3_.§!J§;
            }
         }
      }
      
      public function §7!c§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§>u§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§7@§.§+!2§;
         broadPhase.§9!e§(WorldQueryWrapper,aabb);
      }
      
      public function §'@§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§>u§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§>!N§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§?Q§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§`!5§();
         }
         broadPhase = this.§7@§.§+!2§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§9!e§(WorldQueryWrapper,aabb);
      }
      
      public function §0k§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§>u§ = null;
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
         broadPhase = this.§7@§.§+!2§;
         var aabb:b2AABB = new b2AABB();
         aabb.§]G§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§[h§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§9!e§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§>u§ = null;
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
            var _loc4_:b2Fixture = _loc3_ as b2Fixture;
            var _loc5_:Boolean = _loc4_.RayCast(output,param1);
            if(_loc5_)
            {
               _loc6_ = output.fraction;
               _loc7_ = new b2Vec2((1 - _loc6_) * point1.x + _loc6_ * point2.x,(1 - _loc6_) * point1.y + _loc6_ * point2.y);
               return callback(_loc4_,_loc7_,output.normal,_loc6_);
            }
            return param1.§&!k§;
         };
         broadPhase = this.§7@§.§+!2§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §0E§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §0c§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §'E§() : b2Body
      {
         return this.§2_§;
      }
      
      public function §&Y§() : b2Joint
      {
         return this.§>q§;
      }
      
      public function §"!c§() : b2Contact
      {
         return this.§;T§;
      }
      
      public function §3! §() : Boolean
      {
         return (this.§8A§ & §-!-§) > 0;
      }
      
      b2internal function § M§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§>@§;
         while(_loc3_)
         {
            _loc3_.§4k§(param1);
            _loc3_ = _loc3_.§!J§;
         }
         var _loc4_:b2Island = this.§=H§;
         _loc4_.§3!a§(this.§8y§,this.§9!?§,this.§8%§,null,this.§7@§.§-m§,this.§0W§);
         _loc2_ = this.§2_§;
         while(_loc2_)
         {
            _loc2_.§8A§ &= ~b2Body.§8s§;
            _loc2_ = _loc2_.§!J§;
         }
         var _loc5_:b2Contact = this.§;T§;
         while(_loc5_)
         {
            _loc5_.§8A§ &= ~b2Contact.§8s§;
            _loc5_ = _loc5_.§!J§;
         }
         var _loc6_:b2Joint = this.§>q§;
         while(_loc6_)
         {
            _loc6_.§8c§ = false;
            _loc6_ = _loc6_.§!J§;
         }
         var _loc7_:int = this.§8y§;
         var _loc8_:Vector.<b2Body> = this.§7!f§;
         var _loc9_:b2Body = this.§2_§;
         while(_loc9_)
         {
            if(!(_loc9_.§8A§ & b2Body.§8s§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§6!%§() == false))
               {
                  if(_loc9_.§3r§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§^!<§();
                     _loc10_ = 0;
                     var _loc15_:* = _loc10_++;
                     _loc8_[_loc15_] = _loc9_;
                     _loc9_.§8A§ |= b2Body.§8s§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§@4§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§3r§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§;T§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§#!#§.§8A§ & b2Contact.§8s§))
                              {
                                 if(!(_loc13_.§#!#§.§@!L§() == true || _loc13_.§#!#§.§@f§() == false || _loc13_.§#!#§.§%!T§() == false))
                                 {
                                    _loc4_.§>!=§(_loc13_.§#!#§);
                                    _loc13_.§#!#§.§8A§ |= b2Contact.§8s§;
                                    _loc12_ = _loc13_.§;-§;
                                    if(!(_loc12_.§8A§ & b2Body.§8s§))
                                    {
                                       var _loc16_:* = _loc10_++;
                                       _loc8_[_loc16_] = _loc12_;
                                       _loc12_.§8A§ |= b2Body.§8s§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§86§;
                           }
                           _loc14_ = _loc2_.§>q§;
                           while(_loc14_)
                           {
                              if(_loc14_.§'#§.§8c§ != true)
                              {
                                 _loc12_ = _loc14_.§;-§;
                                 if(_loc12_.§6!%§() != false)
                                 {
                                    _loc4_.get(_loc14_.§'#§);
                                    _loc14_.§'#§.§8c§ = true;
                                    if(!(_loc12_.§8A§ & b2Body.§8s§))
                                    {
                                       _loc16_ = _loc10_++;
                                       _loc8_[_loc16_] = _loc12_;
                                       _loc12_.§8A§ |= b2Body.§8s§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§86§;
                           }
                        }
                     }
                     _loc4_.§ M§(param1,this.§ !0§,this.§8!8§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§8y§)
                     {
                        _loc2_ = _loc4_.§6!#§[_loc11_];
                        if(_loc2_.§3r§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§8A§ &= ~b2Body.§8s§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§!J§;
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
         _loc2_ = this.§2_§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§6!%§() == false))
            {
               if(_loc2_.§3r§() != b2Body.b2_staticBody)
               {
                  _loc2_.§%t§();
               }
            }
            _loc2_ = _loc2_.§!J§;
         }
         this.§7@§.§ !§();
      }
      
      b2internal function §4!6§(param1:b2TimeStep) : void
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
         var _loc9_:b2Island = this.§=H§;
         _loc9_.§3!a§(this.§8y§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§7@§.§-m§,this.§0W§);
         var _loc10_:Vector.<b2Body> = §%z§;
         _loc2_ = this.§2_§;
         while(_loc2_)
         {
            _loc2_.§8A§ &= ~b2Body.§8s§;
            _loc2_.m_sweep.§]h§ = 0;
            _loc2_ = _loc2_.§!J§;
         }
         _loc11_ = this.§;T§;
         while(_loc11_)
         {
            _loc11_.§8A§ &= ~(b2Contact.§'!=§ | b2Contact.§8s§);
            _loc11_ = _loc11_.§!J§;
         }
         _loc8_ = this.§>q§;
         while(_loc8_)
         {
            _loc8_.§8c§ = false;
            _loc8_ = _loc8_.§!J§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§;T§;
            for(; _loc11_; _loc11_ = _loc11_.§!J§)
            {
               if(!(_loc11_.§@!L§() == true || _loc11_.§@f§() == false || _loc11_.§[!Q§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§8A§ & b2Contact.§'!=§)
                  {
                     _loc19_ = _loc11_.§?G§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§]r§;
                     _loc4_ = _loc11_.§"!F§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§3r§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§3r§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§]h§;
                     if(_loc5_.m_sweep.§]h§ < _loc6_.m_sweep.§]h§)
                     {
                        _loc20_ = _loc6_.m_sweep.§]h§;
                        _loc5_.m_sweep.§6!4§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§]h§ < _loc5_.m_sweep.§]h§)
                     {
                        _loc20_ = _loc5_.m_sweep.§]h§;
                        _loc6_.m_sweep.§6!4§(_loc20_);
                     }
                     _loc19_ = _loc11_.§+N§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        _loc19_ = (1 - _loc19_) * _loc20_ + _loc19_;
                        if(_loc19_ > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§?G§ = _loc19_;
                     _loc11_.§8A§ |= b2Contact.§'!=§;
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
            _loc3_ = _loc12_.§]r§;
            _loc4_ = _loc12_.§"!F§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            § §.Set(_loc5_.m_sweep);
            §function§.Set(_loc6_.m_sweep);
            _loc5_.§6!4§(_loc13_);
            _loc6_.§6!4§(_loc13_);
            _loc12_.§&7§(this.§7@§.§-m§);
            _loc12_.§8A§ &= ~b2Contact.§'!=§;
            if(_loc12_.§@!L§() == true || _loc12_.§@f§() == false)
            {
               _loc5_.m_sweep.Set(§ §);
               _loc6_.m_sweep.Set(§function§);
               _loc5_.§`! §();
               _loc6_.§`! §();
            }
            else if(_loc12_.§%!T§() != false)
            {
               _loc14_ = _loc5_;
               if(_loc14_.§3r§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§^!<§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§8A§ |= b2Body.§8s§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§@4§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§3r§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§;T§;
                     while(_loc7_)
                     {
                        if(_loc9_.§9!?§ == _loc9_.§8p§)
                        {
                           break;
                        }
                        if(!(_loc7_.§#!#§.§8A§ & b2Contact.§8s§))
                        {
                           if(!(_loc7_.§#!#§.§@!L§() == true || _loc7_.§#!#§.§@f§() == false || _loc7_.§#!#§.§%!T§() == false))
                           {
                              _loc9_.§>!=§(_loc7_.§#!#§);
                              _loc7_.§#!#§.§8A§ |= b2Contact.§8s§;
                              _loc22_ = _loc7_.§;-§;
                              if(!(_loc22_.§8A§ & b2Body.§8s§))
                              {
                                 if(_loc22_.§3r§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§6!4§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§8A§ |= b2Body.§8s§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§86§;
                     }
                     _loc21_ = _loc2_.§>q§;
                     while(_loc21_)
                     {
                        if(_loc9_.§8%§ != _loc9_.§0H§)
                        {
                           if(_loc21_.§'#§.§8c§ != true)
                           {
                              _loc22_ = _loc21_.§;-§;
                              if(_loc22_.§6!%§() != false)
                              {
                                 _loc9_.get(_loc21_.§'#§);
                                 _loc21_.§'#§.§8c§ = true;
                                 if(!(_loc22_.§8A§ & b2Body.§8s§))
                                 {
                                    if(_loc22_.§3r§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§6!4§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§8A§ |= b2Body.§8s§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§86§;
                     }
                  }
               }
               _loc17_ = §=!B§;
               _loc17_.§3!=§ = false;
               _loc17_.§?!>§ = (1 - _loc13_) * param1.§?!>§;
               _loc17_.§finally§ = 1 / _loc17_.§?!>§;
               _loc17_.§&l§ = 0;
               _loc17_.§`!_§ = param1.§`!_§;
               _loc17_.§]Y§ = param1.§]Y§;
               _loc9_.§4!6§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§8y§)
               {
                  _loc2_ = _loc9_.§6!#§[_loc18_];
                  _loc2_.§8A§ &= ~b2Body.§8s§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§3r§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§%t§();
                        _loc7_ = _loc2_.§;T§;
                        while(_loc7_)
                        {
                           _loc7_.§#!#§.§8A§ &= ~b2Contact.§'!=§;
                           _loc7_ = _loc7_.§86§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§9!?§)
               {
                  _loc11_ = _loc9_.§+W§[_loc18_];
                  _loc11_.§8A§ &= ~(b2Contact.§'!=§ | b2Contact.§8s§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§8%§)
               {
                  _loc8_ = _loc9_.§4!I§[_loc18_];
                  _loc8_.§8c§ = false;
                  _loc18_++;
               }
               this.§7@§.§ !§();
            }
         }
      }
      
      b2internal function §<!"§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§;!B§();
         var _loc3_:b2Body = param1.§ for§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §&!@§;
         switch(param1.§@!D§)
         {
            case b2Joint.§7z§:
               this.§!x§.§0!3§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§[!$§:
               _loc11_ = param1 as b2PulleyJoint;
               _loc12_ = _loc11_.§&!&§();
               _loc13_ = _loc11_.§2G§();
               this.§!x§.§0!3§(_loc12_,_loc8_,_loc10_);
               this.§!x§.§0!3§(_loc13_,_loc9_,_loc10_);
               this.§!x§.§0!3§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§>X§:
               this.§!x§.§0!3§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§!x§.§0!3§(_loc6_,_loc8_,_loc10_);
               }
               this.§!x§.§0!3§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§!x§.§0!3§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §2!I§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§@!D§)
         {
            case b2Shape.§'o§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§5F§(param2,_loc4_.§8!@§);
               _loc6_ = _loc4_.§&!N§;
               _loc7_ = param2.R.col1;
               this.§!x§.§[5§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§1!f§:
               _loc9_ = param1 as b2PolygonShape;
               _loc10_ = _loc9_.§'!V§();
               _loc11_ = _loc9_.§6!_§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§5F§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§!x§.§[! §(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§]&§:
               _loc13_ = param1 as b2EdgeShape;
               this.§!x§.§0!3§(b2Math.§5F§(param2,_loc13_.GetVertex1()),b2Math.§5F§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

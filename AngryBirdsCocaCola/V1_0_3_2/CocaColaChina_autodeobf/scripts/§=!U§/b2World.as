package §=!U§
{
   import §"!R§.*;
   import §'&§.*;
   import §2!2§.b2Controller;
   import §2!2§.b2ControllerEdge;
   import §4N§.*;
   import §;!7§.*;
   import §@M§.*;
   import §implements§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §%!§:b2Transform = new b2Transform();
      
      private static var §?j§:b2Sweep = new b2Sweep();
      
      private static var §8!S§:b2Sweep = new b2Sweep();
      
      private static var §'L§:b2TimeStep = new b2TimeStep();
      
      private static var §3E§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §0!"§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §7!9§:Boolean;
      
      private static var §;a§:Boolean;
      
      public static const §;!$§:int = 1;
      
      public static const §9k§:int = 2;
       
      
      private var §7Y§:Vector.<b2Body>;
      
      b2internal var §"_§:int;
      
      b2internal var §0w§:b2ContactManager;
      
      private var §,!8§:b2ContactSolver;
      
      private var §8!Z§:b2Island;
      
      b2internal var §&!2§:b2Body;
      
      private var §6R§:b2Joint;
      
      b2internal var §,!d§:b2Contact;
      
      private var §3r§:int;
      
      b2internal var § r§:int;
      
      private var §+!5§:int;
      
      private var §,h§:b2Controller;
      
      private var §%#§:int;
      
      private var §!y§:b2Vec2;
      
      private var §#?§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §!Q§:b2DestructionListener;
      
      private var §<'§:b2DebugDraw;
      
      private var §3!]§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§7Y§ = new Vector.<b2Body>();
         this.§0w§ = new b2ContactManager();
         this.§,!8§ = new b2ContactSolver();
         this.§8!Z§ = new b2Island();
         super();
         this.§!Q§ = null;
         this.§<'§ = null;
         this.§&!2§ = null;
         this.§,!d§ = null;
         this.§6R§ = null;
         this.§,h§ = null;
         this.§3r§ = 0;
         this.§ r§ = 0;
         this.§+!5§ = 0;
         this.§%#§ = 0;
         §7!9§ = true;
         §;a§ = true;
         this.§#?§ = param2;
         this.§!y§ = param1;
         this.§3!]§ = 0;
         this.§0w§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§6G§(_loc3_);
      }
      
      public function §extends§(param1:b2DestructionListener) : void
      {
         this.§!Q§ = param1;
      }
      
      public function §%;§(param1:b2ContactFilter) : void
      {
         this.§0w§.§%n§ = param1;
      }
      
      public function §1!9§(param1:b2ContactListener) : void
      {
         this.§0w§.§9c§ = param1;
      }
      
      public function §4q§(param1:b2DebugDraw) : void
      {
         this.§<'§ = param1;
      }
      
      public function §>!,§(param1:§>c§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§>c§ = this.§0w§.§6M§;
         this.§0w§.§6M§ = param1;
         var _loc3_:b2Body = this.§&!2§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§&,§;
            while(_loc4_)
            {
               _loc4_.§86§ = param1.§]!0§(_loc2_.§3;§(_loc4_.§86§),_loc4_);
               _loc4_ = _loc4_.§9`§;
            }
            _loc3_ = _loc3_.§9`§;
         }
      }
      
      public function §^!5§() : void
      {
         this.§0w§.§6M§.§^!5§();
      }
      
      public function §%!N§() : int
      {
         return this.§0w§.§6M§.§%!N§();
      }
      
      public function §6G§(param1:b2BodyDef) : b2Body
      {
         if(this.§"0§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§-s§ = null;
         _loc2_.§9`§ = this.§&!2§;
         if(this.§&!2§)
         {
            this.§&!2§.§-s§ = _loc2_;
         }
         this.§&!2§ = _loc2_;
         ++this.§3r§;
         return _loc2_;
      }
      
      public function §"!]§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§"0§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§6R§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§>C§;
            if(this.§!Q§)
            {
               this.§!Q§.§#!U§(_loc6_.§&C§);
            }
            this.§=!@§(_loc6_.§&C§);
         }
         var _loc3_:b2ControllerEdge = param1.§,h§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§8e§;
            _loc7_.§5]§.§2a§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§,!d§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§>C§;
            this.§0w§.§9!K§(_loc8_.§#^§);
         }
         param1.§,!d§ = null;
         var _loc5_:b2Fixture = param1.§&,§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§9`§;
            if(this.§!Q§)
            {
               this.§!Q§.§7j§(_loc9_);
            }
            _loc9_.§8!V§(this.§0w§.§6M§);
            _loc9_.§9!K§();
         }
         param1.§&,§ = null;
         param1.§1!N§ = 0;
         if(param1.§-s§)
         {
            param1.§-s§.§9`§ = param1.§9`§;
         }
         if(param1.§9`§)
         {
            param1.§9`§.§-s§ = param1.§-s§;
         }
         if(param1 == this.§&!2§)
         {
            this.§&!2§ = param1.§9`§;
         }
         --this.§3r§;
      }
      
      public function §&#§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§0!^§(param1,null);
         _loc2_.§-s§ = null;
         _loc2_.§9`§ = this.§6R§;
         if(this.§6R§)
         {
            this.§6R§.§-s§ = _loc2_;
         }
         this.§6R§ = _loc2_;
         ++this.§+!5§;
         _loc2_.§"!O§.§&C§ = _loc2_;
         _loc2_.§"!O§.§0!=§ = _loc2_.§1A§;
         _loc2_.§"!O§.§6!=§ = null;
         _loc2_.§"!O§.§>C§ = _loc2_.§^!N§.§6R§;
         if(_loc2_.§^!N§.§6R§)
         {
            _loc2_.§^!N§.§6R§.§6!=§ = _loc2_.§"!O§;
         }
         _loc2_.§^!N§.§6R§ = _loc2_.§"!O§;
         _loc2_.§9!X§.§&C§ = _loc2_;
         _loc2_.§9!X§.§0!=§ = _loc2_.§^!N§;
         _loc2_.§9!X§.§6!=§ = null;
         _loc2_.§9!X§.§>C§ = _loc2_.§1A§.§6R§;
         if(_loc2_.§1A§.§6R§)
         {
            _loc2_.§1A§.§6R§.§6!=§ = _loc2_.§9!X§;
         }
         _loc2_.§1A§.§6R§ = _loc2_.§9!X§;
         var _loc3_:b2Body = param1.§]!M§;
         var _loc4_:b2Body = param1.§'!Q§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§8!=§();
            while(_loc5_)
            {
               if(_loc5_.§0!=§ == _loc3_)
               {
                  _loc5_.§#^§.§%!=§();
               }
               _loc5_ = _loc5_.§>C§;
            }
         }
         return _loc2_;
      }
      
      public function §=!@§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§<!M§;
         if(param1.§-s§)
         {
            param1.§-s§.§9`§ = param1.§9`§;
         }
         if(param1.§9`§)
         {
            param1.§9`§.§-s§ = param1.§-s§;
         }
         if(param1 == this.§6R§)
         {
            this.§6R§ = param1.§9`§;
         }
         var _loc3_:b2Body = param1.§^!N§;
         var _loc4_:b2Body = param1.§1A§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§"!O§.§6!=§)
         {
            param1.§"!O§.§6!=§.§>C§ = param1.§"!O§.§>C§;
         }
         if(param1.§"!O§.§>C§)
         {
            param1.§"!O§.§>C§.§6!=§ = param1.§"!O§.§6!=§;
         }
         if(param1.§"!O§ == _loc3_.§6R§)
         {
            _loc3_.§6R§ = param1.§"!O§.§>C§;
         }
         param1.§"!O§.§6!=§ = null;
         param1.§"!O§.§>C§ = null;
         if(param1.§9!X§.§6!=§)
         {
            param1.§9!X§.§6!=§.§>C§ = param1.§9!X§.§>C§;
         }
         if(param1.§9!X§.§>C§)
         {
            param1.§9!X§.§>C§.§6!=§ = param1.§9!X§.§6!=§;
         }
         if(param1.§9!X§ == _loc4_.§6R§)
         {
            _loc4_.§6R§ = param1.§9!X§.§>C§;
         }
         param1.§9!X§.§6!=§ = null;
         param1.§9!X§.§>C§ = null;
         b2Joint.§9!K§(param1,null);
         --this.§+!5§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§8!=§();
            while(_loc5_)
            {
               if(_loc5_.§0!=§ == _loc3_)
               {
                  _loc5_.§#^§.§%!=§();
               }
               _loc5_ = _loc5_.§>C§;
            }
         }
      }
      
      public function §9Q§(param1:b2Controller) : b2Controller
      {
         param1.§9`§ = this.§,h§;
         param1.§-s§ = null;
         this.§,h§ = param1;
         param1.m_world = this;
         ++this.§%#§;
         return param1;
      }
      
      public function §@R§(param1:b2Controller) : void
      {
         if(param1.§-s§)
         {
            param1.§-s§.§9`§ = param1.§9`§;
         }
         if(param1.§9`§)
         {
            param1.§9`§.§-s§ = param1.§-s§;
         }
         if(this.§,h§ == param1)
         {
            this.§,h§ = param1.§9`§;
         }
         --this.§%#§;
      }
      
      public function §+#§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§9`§ = this.§,h§;
         param1.§-s§ = null;
         if(this.§,h§)
         {
            this.§,h§.§-s§ = param1;
         }
         this.§,h§ = param1;
         ++this.§%#§;
         param1.m_world = this;
         return param1;
      }
      
      public function §]!T§(param1:b2Controller) : void
      {
         param1.§<k§();
         if(param1.§9`§)
         {
            param1.§9`§.§-s§ = param1.§-s§;
         }
         if(param1.§-s§)
         {
            param1.§-s§.§9`§ = param1.§9`§;
         }
         if(param1 == this.§,h§)
         {
            this.§,h§ = param1.§9`§;
         }
         --this.§%#§;
      }
      
      public function §,l§(param1:Boolean) : void
      {
         §7!9§ = param1;
      }
      
      public function §8M§(param1:Boolean) : void
      {
         §;a§ = param1;
      }
      
      public function §#!$§() : int
      {
         return this.§3r§;
      }
      
      public function §#m§() : int
      {
         return this.§+!5§;
      }
      
      public function §+n§() : int
      {
         return this.§ r§;
      }
      
      public function §^!X§(param1:b2Vec2) : void
      {
         this.§!y§ = param1;
      }
      
      public function §%,§() : b2Vec2
      {
         return this.§!y§;
      }
      
      public function §-z§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §0!%§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§"_§ & §;!$§)
         {
            this.§0w§.§<P§();
            this.§"_§ &= ~§;!$§;
         }
         this.§"_§ |= §9k§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§5V§ = param1;
         _loc4_.§[i§ = param2;
         _loc4_.§^o§ = param3;
         if(param1 > 0)
         {
            _loc4_.§0L§ = 1 / param1;
         }
         else
         {
            _loc4_.§0L§ = 0;
         }
         _loc4_.§5!Y§ = this.§3!]§ * param1;
         _loc4_.§5R§ = §7!9§;
         this.§0w§.§5f§();
         if(_loc4_.§5V§ > 0)
         {
            this.§@!'§(_loc4_);
         }
         if(§;a§ && _loc4_.§5V§ > 0)
         {
            this.§=!5§(_loc4_);
         }
         if(_loc4_.§5V§ > 0)
         {
            this.§3!]§ = _loc4_.§0L§;
         }
         this.§"_§ &= ~§9k§;
      }
      
      public function §?!"§() : void
      {
         var _loc1_:b2Body = this.§&!2§;
         while(_loc1_)
         {
            _loc1_.§"-§.§^!&§();
            _loc1_.§>E§ = 0;
            _loc1_ = _loc1_.§9`§;
         }
      }
      
      public function §,e§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§>c§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§<'§ == null)
         {
            return;
         }
         this.§<'§.§2!W§.graphics.clear();
         var _loc1_:uint = this.§<'§.§`!&§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§[!9§)
         {
            _loc3_ = this.§&!2§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§7!c§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§]!_§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§&x§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§@e§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§&x§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§@e§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§&x§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§&x§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§&x§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§9`§;
               }
               _loc3_ = _loc3_.§9`§;
            }
         }
         if(_loc1_ & b2DebugDraw.§3D§)
         {
            _loc6_ = this.§6R§;
            while(_loc6_)
            {
               this.§<!>§(_loc6_);
               _loc6_ = _loc6_.§9`§;
            }
         }
         if(_loc1_ & b2DebugDraw.§"!6§)
         {
            _loc16_ = this.§,h§;
            while(_loc16_)
            {
               _loc16_.§5;§(this.§<'§);
               _loc16_ = _loc16_.§9`§;
            }
         }
         if(_loc1_ & b2DebugDraw.§7!-§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§0w§.§,!d§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§ !N§();
               _loc19_ = _loc17_.§^9§();
               _loc20_ = _loc18_.§`h§().§,!S§();
               _loc21_ = _loc19_.§`h§().§,!S§();
               this.§<'§.§;H§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§^r§();
            }
         }
         if(_loc1_ & b2DebugDraw.§ !-§)
         {
            _loc7_ = this.§0w§.§6M§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§&!2§;
            while(_loc3_)
            {
               if(_loc3_.§]!_§() != false)
               {
                  _loc4_ = _loc3_.§7!c§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§3;§(_loc4_.§86§);
                     _loc14_[0].Set(_loc22_.§^]§.x,_loc22_.§^]§.y);
                     _loc14_[1].Set(_loc22_.§ $§.x,_loc22_.§^]§.y);
                     _loc14_[2].Set(_loc22_.§ $§.x,_loc22_.§ $§.y);
                     _loc14_[3].Set(_loc22_.§^]§.x,_loc22_.§ $§.y);
                     this.§<'§.§,_§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§^r§();
                  }
               }
               _loc3_ = _loc3_.§^r§();
            }
         }
         if(_loc1_ & b2DebugDraw.§1!K§)
         {
            _loc3_ = this.§&!2§;
            while(_loc3_)
            {
               (_loc11_ = §%!§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§<'§.§?w§(_loc11_);
               _loc3_ = _loc3_.§9`§;
            }
         }
      }
      
      public function §1!&§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§>c§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§0w§.§6M§;
         broadPhase.§"!§(WorldQueryWrapper,aabb);
      }
      
      public function §9N§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§>c§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§2<§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§'_§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§]?§();
         }
         broadPhase = this.§0w§.§6M§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§"!§(WorldQueryWrapper,aabb);
      }
      
      public function §`!9§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§>c§ = null;
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
         broadPhase = this.§0w§.§6M§;
         var aabb:b2AABB = new b2AABB();
         aabb.§^]§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§ $§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§"!§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§>c§ = null;
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
            return param1.§5k§;
         };
         broadPhase = this.§0w§.§6M§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §6z§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §&o§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §&<§() : b2Body
      {
         return this.§&!2§;
      }
      
      public function §52§() : b2Joint
      {
         return this.§6R§;
      }
      
      public function §8!=§() : b2Contact
      {
         return this.§,!d§;
      }
      
      public function §"0§() : Boolean
      {
         return (this.§"_§ & §9k§) > 0;
      }
      
      b2internal function §@!'§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§,h§;
         while(_loc3_)
         {
            _loc3_.§0!%§(param1);
            _loc3_ = _loc3_.§9`§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§8!Z§).§4$§(this.§3r§,this.§ r§,this.§+!5§,null,this.§0w§.§9c§,this.§,!8§);
         _loc2_ = this.§&!2§;
         while(_loc2_)
         {
            _loc2_.§"_§ &= ~b2Body.§#!]§;
            _loc2_ = _loc2_.§9`§;
         }
         var _loc5_:b2Contact = this.§,!d§;
         while(_loc5_)
         {
            _loc5_.§"_§ &= ~b2Contact.§#!]§;
            _loc5_ = _loc5_.§9`§;
         }
         var _loc6_:b2Joint = this.§6R§;
         while(_loc6_)
         {
            _loc6_.§?!4§ = false;
            _loc6_ = _loc6_.§9`§;
         }
         var _loc7_:int = this.§3r§;
         var _loc8_:Vector.<b2Body> = this.§7Y§;
         var _loc9_:b2Body = this.§&!2§;
         while(_loc9_)
         {
            if(!(_loc9_.§"_§ & b2Body.§#!]§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§]!_§() == false))
               {
                  if(_loc9_.§@e§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§<k§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§"_§ |= b2Body.§#!]§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§ k§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§@e§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§,!d§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§#^§.§"_§ & b2Contact.§#!]§))
                              {
                                 if(!(_loc13_.§#^§.§const§() == true || _loc13_.§#^§.§9!E§() == false || _loc13_.§#^§.§0! §() == false))
                                 {
                                    _loc4_.§5h§(_loc13_.§#^§);
                                    _loc13_.§#^§.§"_§ |= b2Contact.§#!]§;
                                    if(!((_loc12_ = _loc13_.§0!=§).§"_§ & b2Body.§#!]§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§"_§ |= b2Body.§#!]§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§>C§;
                           }
                           _loc14_ = _loc2_.§6R§;
                           while(_loc14_)
                           {
                              if(_loc14_.§&C§.§?!4§ != true)
                              {
                                 if((_loc12_ = _loc14_.§0!=§).§]!_§() != false)
                                 {
                                    _loc4_.§7"§(_loc14_.§&C§);
                                    _loc14_.§&C§.§?!4§ = true;
                                    if(!(_loc12_.§"_§ & b2Body.§#!]§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§"_§ |= b2Body.§#!]§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§>C§;
                           }
                        }
                     }
                     _loc4_.§@!'§(param1,this.§!y§,this.§#?§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§3r§)
                     {
                        _loc2_ = _loc4_.§[!U§[_loc11_];
                        if(_loc2_.§@e§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§"_§ &= ~b2Body.§#!]§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§9`§;
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
         _loc2_ = this.§&!2§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§]!_§() == false))
            {
               if(_loc2_.§@e§() != b2Body.b2_staticBody)
               {
                  _loc2_.§%!G§();
               }
            }
            _loc2_ = _loc2_.§9`§;
         }
         this.§0w§.§<P§();
      }
      
      b2internal function §=!5§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§8!Z§).§4$§(this.§3r§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§0w§.§9c§,this.§,!8§);
         var _loc10_:Vector.<b2Body> = §3E§;
         _loc2_ = this.§&!2§;
         while(_loc2_)
         {
            _loc2_.§"_§ &= ~b2Body.§#!]§;
            _loc2_.m_sweep.§@!7§ = 0;
            _loc2_ = _loc2_.§9`§;
         }
         _loc11_ = this.§,!d§;
         while(_loc11_)
         {
            _loc11_.§"_§ &= ~(b2Contact.§9!-§ | b2Contact.§#!]§);
            _loc11_ = _loc11_.§9`§;
         }
         _loc8_ = this.§6R§;
         while(_loc8_)
         {
            _loc8_.§?!4§ = false;
            _loc8_ = _loc8_.§9`§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§,!d§;
            while(_loc11_)
            {
               if(!(_loc11_.§const§() == true || _loc11_.§9!E§() == false || _loc11_.§+@§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§"_§ & b2Contact.§9!-§)
                  {
                     _loc19_ = _loc11_.§`9§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§'M§;
                     _loc4_ = _loc11_.§=!A§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§@e§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§@e§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr656:
                        _loc11_ = _loc11_.§9`§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§@!7§;
                     if(_loc5_.m_sweep.§@!7§ < _loc6_.m_sweep.§@!7§)
                     {
                        _loc20_ = _loc6_.m_sweep.§@!7§;
                        _loc5_.m_sweep.§`U§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§@!7§ < _loc5_.m_sweep.§@!7§)
                     {
                        _loc20_ = _loc5_.m_sweep.§@!7§;
                        _loc6_.m_sweep.§`U§(_loc20_);
                     }
                     _loc19_ = _loc11_.§&[§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§`9§ = _loc19_;
                     _loc11_.§"_§ |= b2Contact.§9!-§;
                     §§goto(addr656);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr656);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§'M§;
            _loc4_ = _loc12_.§=!A§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §?j§.Set(_loc5_.m_sweep);
            §8!S§.Set(_loc6_.m_sweep);
            _loc5_.§`U§(_loc13_);
            _loc6_.§`U§(_loc13_);
            _loc12_.§%R§(this.§0w§.§9c§);
            _loc12_.§"_§ &= ~b2Contact.§9!-§;
            if(_loc12_.§const§() == true || _loc12_.§9!E§() == false)
            {
               _loc5_.m_sweep.Set(§?j§);
               _loc6_.m_sweep.Set(§8!S§);
               _loc5_.§<8§();
               _loc6_.§<8§();
            }
            else if(_loc12_.§0! §() != false)
            {
               if((_loc14_ = _loc5_).§@e§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§<k§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§"_§ |= b2Body.§#!]§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§ k§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§@e§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§,!d§;
                     while(_loc7_)
                     {
                        if(_loc9_.§ r§ == _loc9_.§3U§)
                        {
                           break;
                        }
                        if(!(_loc7_.§#^§.§"_§ & b2Contact.§#!]§))
                        {
                           if(!(_loc7_.§#^§.§const§() == true || _loc7_.§#^§.§9!E§() == false || _loc7_.§#^§.§0! §() == false))
                           {
                              _loc9_.§5h§(_loc7_.§#^§);
                              _loc7_.§#^§.§"_§ |= b2Contact.§#!]§;
                              if(!((_loc22_ = _loc7_.§0!=§).§"_§ & b2Body.§#!]§))
                              {
                                 if(_loc22_.§@e§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§`U§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§"_§ |= b2Body.§#!]§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§>C§;
                     }
                     _loc21_ = _loc2_.§6R§;
                     while(_loc21_)
                     {
                        if(_loc9_.§+!5§ != _loc9_.§&p§)
                        {
                           if(_loc21_.§&C§.§?!4§ != true)
                           {
                              if((_loc22_ = _loc21_.§0!=§).§]!_§() != false)
                              {
                                 _loc9_.§7"§(_loc21_.§&C§);
                                 _loc21_.§&C§.§?!4§ = true;
                                 if(!(_loc22_.§"_§ & b2Body.§#!]§))
                                 {
                                    if(_loc22_.§@e§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§`U§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§"_§ |= b2Body.§#!]§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§>C§;
                     }
                  }
               }
               (_loc17_ = §'L§).§5R§ = false;
               _loc17_.§5V§ = (1 - _loc13_) * param1.§5V§;
               _loc17_.§0L§ = 1 / _loc17_.§5V§;
               _loc17_.§5!Y§ = 0;
               _loc17_.§[i§ = param1.§[i§;
               _loc17_.§^o§ = param1.§^o§;
               _loc9_.§=!5§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§3r§)
               {
                  _loc2_ = _loc9_.§[!U§[_loc18_];
                  _loc2_.§"_§ &= ~b2Body.§#!]§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§@e§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§%!G§();
                        _loc7_ = _loc2_.§,!d§;
                        while(_loc7_)
                        {
                           _loc7_.§#^§.§"_§ &= ~b2Contact.§9!-§;
                           _loc7_ = _loc7_.§>C§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§ r§)
               {
                  _loc11_ = _loc9_.§2!T§[_loc18_];
                  _loc11_.§"_§ &= ~(b2Contact.§9!-§ | b2Contact.§#!]§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§+!5§)
               {
                  (_loc8_ = _loc9_.§`!<§[_loc18_]).§?!4§ = false;
                  _loc18_++;
               }
               this.§0w§.§<P§();
            }
         }
      }
      
      b2internal function §<!>§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§-V§();
         var _loc3_:b2Body = param1.§7!"§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §0!"§;
         switch(param1.§;>§)
         {
            case b2Joint.§>0§:
               this.§<'§.§;H§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§2r§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§-!1§();
               _loc13_ = _loc11_.§&h§();
               this.§<'§.§;H§(_loc12_,_loc8_,_loc10_);
               this.§<'§.§;H§(_loc13_,_loc9_,_loc10_);
               this.§<'§.§;H§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§8,§:
               this.§<'§.§;H§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§<'§.§;H§(_loc6_,_loc8_,_loc10_);
               }
               this.§<'§.§;H§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§<'§.§;H§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §&x§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§;>§)
         {
            case b2Shape.§@#§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§'!2§(param2,_loc4_.§0!M§);
               _loc6_ = _loc4_.§[8§;
               _loc7_ = param2.R.col1;
               this.§<'§.§-[§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§+Q§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§`!#§();
               _loc11_ = _loc9_.§@!`§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§'!2§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§<'§.§-X§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§,J§:
               _loc13_ = param1 as b2EdgeShape;
               this.§<'§.§;H§(b2Math.§'!2§(param2,_loc13_.GetVertex1()),b2Math.§'!2§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

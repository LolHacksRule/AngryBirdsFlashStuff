package §?0§
{
   import §'!#§.*;
   import §'!3§.*;
   import §3q§.*;
   import §9!$§.*;
   import §9!&§.b2Controller;
   import §9!&§.b2ControllerEdge;
   import §9A§.*;
   import §@,§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §#x§:b2Transform = new b2Transform();
      
      private static var §[B§:b2Sweep = new b2Sweep();
      
      private static var §,!>§:b2Sweep = new b2Sweep();
      
      private static var §>x§:b2TimeStep = new b2TimeStep();
      
      private static var §1]§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §@j§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §;!Y§:Boolean;
      
      private static var §5r§:Boolean;
      
      public static const §6U§:int = 1;
      
      public static const §27§:int = 2;
       
      
      private var §"!W§:Vector.<b2Body>;
      
      b2internal var §0n§:int;
      
      b2internal var §"L§:b2ContactManager;
      
      private var §]2§:b2ContactSolver;
      
      private var §7j§:b2Island;
      
      b2internal var §^S§:b2Body;
      
      private var §`!T§:b2Joint;
      
      b2internal var §7!;§:b2Contact;
      
      private var §&p§:int;
      
      b2internal var §8!L§:int;
      
      private var §9c§:int;
      
      private var §8!'§:b2Controller;
      
      private var §9m§:int;
      
      private var §5%§:b2Vec2;
      
      private var §&!$§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §3!O§:b2DestructionListener;
      
      private var §38§:b2DebugDraw;
      
      private var §[9§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§"!W§ = new Vector.<b2Body>();
         this.§"L§ = new b2ContactManager();
         this.§]2§ = new b2ContactSolver();
         this.§7j§ = new b2Island();
         super();
         this.§3!O§ = null;
         this.§38§ = null;
         this.§^S§ = null;
         this.§7!;§ = null;
         this.§`!T§ = null;
         this.§8!'§ = null;
         this.§&p§ = 0;
         this.§8!L§ = 0;
         this.§9c§ = 0;
         this.§9m§ = 0;
         §;!Y§ = true;
         §5r§ = true;
         this.§&!$§ = param2;
         this.§5%§ = param1;
         this.§[9§ = 0;
         this.§"L§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§=%§(_loc3_);
      }
      
      public function §!%§(param1:b2DestructionListener) : void
      {
         this.§3!O§ = param1;
      }
      
      public function §?!M§(param1:b2ContactFilter) : void
      {
         this.§"L§.§+8§ = param1;
      }
      
      public function §^Y§(param1:b2ContactListener) : void
      {
         this.§"L§.§]A§ = param1;
      }
      
      public function §0,§(param1:b2DebugDraw) : void
      {
         this.§38§ = param1;
      }
      
      public function §@@§(param1:§&!8§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§&!8§ = this.§"L§.§1!;§;
         this.§"L§.§1!;§ = param1;
         var _loc3_:b2Body = this.§^S§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§%!=§;
            while(_loc4_)
            {
               _loc4_.§[k§ = param1.§&w§(_loc2_.§"!?§(_loc4_.§[k§),_loc4_);
               _loc4_ = _loc4_.§>!W§;
            }
            _loc3_ = _loc3_.§>!W§;
         }
      }
      
      public function §<X§() : void
      {
         this.§"L§.§1!;§.§<X§();
      }
      
      public function §>L§() : int
      {
         return this.§"L§.§1!;§.§>L§();
      }
      
      public function §=%§(param1:b2BodyDef) : b2Body
      {
         if(this.§2<§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§"5§ = null;
         _loc2_.§>!W§ = this.§^S§;
         if(this.§^S§)
         {
            this.§^S§.§"5§ = _loc2_;
         }
         this.§^S§ = _loc2_;
         ++this.§&p§;
         return _loc2_;
      }
      
      public function §%w§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§2<§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§`!T§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§20§;
            if(this.§3!O§)
            {
               this.§3!O§.§6C§(_loc6_.§%!X§);
            }
            this.§]X§(_loc6_.§%!X§);
         }
         var _loc3_:b2ControllerEdge = param1.§8!'§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§18§;
            _loc7_.§ !=§.§+Y§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§7!;§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§20§;
            this.§"L§.§"z§(_loc8_.§2j§);
         }
         param1.§7!;§ = null;
         var _loc5_:b2Fixture = param1.§%!=§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§>!W§;
            if(this.§3!O§)
            {
               this.§3!O§.§#9§(_loc9_);
            }
            _loc9_.§-k§(this.§"L§.§1!;§);
            _loc9_.§"z§();
         }
         param1.§%!=§ = null;
         param1.§1!T§ = 0;
         if(param1.§"5§)
         {
            param1.§"5§.§>!W§ = param1.§>!W§;
         }
         if(param1.§>!W§)
         {
            param1.§>!W§.§"5§ = param1.§"5§;
         }
         if(param1 == this.§^S§)
         {
            this.§^S§ = param1.§>!W§;
         }
         --this.§&p§;
      }
      
      public function §+!"§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§ V§(param1,null);
         _loc2_.§"5§ = null;
         _loc2_.§>!W§ = this.§`!T§;
         if(this.§`!T§)
         {
            this.§`!T§.§"5§ = _loc2_;
         }
         this.§`!T§ = _loc2_;
         ++this.§9c§;
         _loc2_.§"!^§.§%!X§ = _loc2_;
         _loc2_.§"!^§.§#C§ = _loc2_.§-f§;
         _loc2_.§"!^§.§7!A§ = null;
         _loc2_.§"!^§.§20§ = _loc2_.§try§.§`!T§;
         if(_loc2_.§try§.§`!T§)
         {
            _loc2_.§try§.§`!T§.§7!A§ = _loc2_.§"!^§;
         }
         _loc2_.§try§.§`!T§ = _loc2_.§"!^§;
         _loc2_.§'1§.§%!X§ = _loc2_;
         _loc2_.§'1§.§#C§ = _loc2_.§try§;
         _loc2_.§'1§.§7!A§ = null;
         _loc2_.§'1§.§20§ = _loc2_.§-f§.§`!T§;
         if(_loc2_.§-f§.§`!T§)
         {
            _loc2_.§-f§.§`!T§.§7!A§ = _loc2_.§'1§;
         }
         _loc2_.§-f§.§`!T§ = _loc2_.§'1§;
         var _loc3_:b2Body = param1.§#1§;
         var _loc4_:b2Body = param1.§"!<§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§0U§();
            while(_loc5_)
            {
               if(_loc5_.§#C§ == _loc3_)
               {
                  _loc5_.§2j§.§"D§();
               }
               _loc5_ = _loc5_.§20§;
            }
         }
         return _loc2_;
      }
      
      public function §]X§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§7!9§;
         if(param1.§"5§)
         {
            param1.§"5§.§>!W§ = param1.§>!W§;
         }
         if(param1.§>!W§)
         {
            param1.§>!W§.§"5§ = param1.§"5§;
         }
         if(param1 == this.§`!T§)
         {
            this.§`!T§ = param1.§>!W§;
         }
         var _loc3_:b2Body = param1.§try§;
         var _loc4_:b2Body = param1.§-f§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§"!^§.§7!A§)
         {
            param1.§"!^§.§7!A§.§20§ = param1.§"!^§.§20§;
         }
         if(param1.§"!^§.§20§)
         {
            param1.§"!^§.§20§.§7!A§ = param1.§"!^§.§7!A§;
         }
         if(param1.§"!^§ == _loc3_.§`!T§)
         {
            _loc3_.§`!T§ = param1.§"!^§.§20§;
         }
         param1.§"!^§.§7!A§ = null;
         param1.§"!^§.§20§ = null;
         if(param1.§'1§.§7!A§)
         {
            param1.§'1§.§7!A§.§20§ = param1.§'1§.§20§;
         }
         if(param1.§'1§.§20§)
         {
            param1.§'1§.§20§.§7!A§ = param1.§'1§.§7!A§;
         }
         if(param1.§'1§ == _loc4_.§`!T§)
         {
            _loc4_.§`!T§ = param1.§'1§.§20§;
         }
         param1.§'1§.§7!A§ = null;
         param1.§'1§.§20§ = null;
         b2Joint.§"z§(param1,null);
         --this.§9c§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§0U§();
            while(_loc5_)
            {
               if(_loc5_.§#C§ == _loc3_)
               {
                  _loc5_.§2j§.§"D§();
               }
               _loc5_ = _loc5_.§20§;
            }
         }
      }
      
      public function §<q§(param1:b2Controller) : b2Controller
      {
         param1.§>!W§ = this.§8!'§;
         param1.§"5§ = null;
         this.§8!'§ = param1;
         param1.m_world = this;
         ++this.§9m§;
         return param1;
      }
      
      public function §?R§(param1:b2Controller) : void
      {
         if(param1.§"5§)
         {
            param1.§"5§.§>!W§ = param1.§>!W§;
         }
         if(param1.§>!W§)
         {
            param1.§>!W§.§"5§ = param1.§"5§;
         }
         if(this.§8!'§ == param1)
         {
            this.§8!'§ = param1.§>!W§;
         }
         --this.§9m§;
      }
      
      public function §%L§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§>!W§ = this.§8!'§;
         param1.§"5§ = null;
         if(this.§8!'§)
         {
            this.§8!'§.§"5§ = param1;
         }
         this.§8!'§ = param1;
         ++this.§9m§;
         param1.m_world = this;
         return param1;
      }
      
      public function §]!3§(param1:b2Controller) : void
      {
         param1.§-r§();
         if(param1.§>!W§)
         {
            param1.§>!W§.§"5§ = param1.§"5§;
         }
         if(param1.§"5§)
         {
            param1.§"5§.§>!W§ = param1.§>!W§;
         }
         if(param1 == this.§8!'§)
         {
            this.§8!'§ = param1.§>!W§;
         }
         --this.§9m§;
      }
      
      public function §"4§(param1:Boolean) : void
      {
         §;!Y§ = param1;
      }
      
      public function §]u§(param1:Boolean) : void
      {
         §5r§ = param1;
      }
      
      public function §[!'§() : int
      {
         return this.§&p§;
      }
      
      public function §7-§() : int
      {
         return this.§9c§;
      }
      
      public function §5G§() : int
      {
         return this.§8!L§;
      }
      
      public function §[n§(param1:b2Vec2) : void
      {
         this.§5%§ = param1;
      }
      
      public function §5U§() : b2Vec2
      {
         return this.§5%§;
      }
      
      public function §@U§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §^!6§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§0n§ & §6U§)
         {
            this.§"L§.§&>§();
            this.§0n§ &= ~§6U§;
         }
         this.§0n§ |= §27§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§+!I§ = param1;
         _loc4_.§6! § = param2;
         _loc4_.§=B§ = param3;
         if(param1 > 0)
         {
            _loc4_.§4_§ = 1 / param1;
         }
         else
         {
            _loc4_.§4_§ = 0;
         }
         _loc4_.§1a§ = this.§[9§ * param1;
         _loc4_.§4!D§ = §;!Y§;
         this.§"L§.§4!7§();
         if(_loc4_.§+!I§ > 0)
         {
            this.§-!X§(_loc4_);
         }
         if(§5r§ && _loc4_.§+!I§ > 0)
         {
            this.§if §(_loc4_);
         }
         if(_loc4_.§+!I§ > 0)
         {
            this.§[9§ = _loc4_.§4_§;
         }
         this.§0n§ &= ~§27§;
      }
      
      public function §1Y§() : void
      {
         var _loc1_:b2Body = this.§^S§;
         while(_loc1_)
         {
            _loc1_.§+!#§.§<!5§();
            _loc1_.§=I§ = 0;
            _loc1_ = _loc1_.§>!W§;
         }
      }
      
      public function §@!N§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§&!8§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§38§ == null)
         {
            return;
         }
         this.§38§.§2b§.graphics.clear();
         var _loc1_:uint = this.§38§.§%y§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§@!-§)
         {
            _loc3_ = this.§^S§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§6]§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§[!N§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§2Z§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§1!A§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§2Z§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§1!A§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§2Z§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§2Z§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§2Z§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§>!W§;
               }
               _loc3_ = _loc3_.§>!W§;
            }
         }
         if(_loc1_ & b2DebugDraw.§^!%§)
         {
            _loc6_ = this.§`!T§;
            while(_loc6_)
            {
               this.§6!X§(_loc6_);
               _loc6_ = _loc6_.§>!W§;
            }
         }
         if(_loc1_ & b2DebugDraw.§[!Z§)
         {
            _loc16_ = this.§8!'§;
            while(_loc16_)
            {
               _loc16_.§"m§(this.§38§);
               _loc16_ = _loc16_.§>!W§;
            }
         }
         if(_loc1_ & b2DebugDraw.§!$§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§"L§.§7!;§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§40§();
               _loc19_ = _loc17_.§2!F§();
               _loc20_ = _loc18_.§13§().§-&§();
               _loc21_ = _loc19_.§13§().§-&§();
               this.§38§.§9n§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§%W§();
            }
         }
         if(_loc1_ & b2DebugDraw.§'n§)
         {
            _loc7_ = this.§"L§.§1!;§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§^S§;
            while(_loc3_)
            {
               if(_loc3_.§[!N§() != false)
               {
                  _loc4_ = _loc3_.§6]§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§"!?§(_loc4_.§[k§);
                     _loc14_[0].Set(_loc22_.§,c§.x,_loc22_.§,c§.y);
                     _loc14_[1].Set(_loc22_.§![§.x,_loc22_.§,c§.y);
                     _loc14_[2].Set(_loc22_.§![§.x,_loc22_.§![§.y);
                     _loc14_[3].Set(_loc22_.§,c§.x,_loc22_.§![§.y);
                     this.§38§.§0y§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§%W§();
                  }
               }
               _loc3_ = _loc3_.§%W§();
            }
         }
         if(_loc1_ & b2DebugDraw.§8'§)
         {
            _loc3_ = this.§^S§;
            while(_loc3_)
            {
               (_loc11_ = §#x§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§'!I§();
               this.§38§.§ !T§(_loc11_);
               _loc3_ = _loc3_.§>!W§;
            }
         }
      }
      
      public function §&;§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§&!8§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§"L§.§1!;§;
         broadPhase.§<!G§(WorldQueryWrapper,aabb);
      }
      
      public function §^i§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§&!8§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§1?§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§[!4§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§"q§();
         }
         broadPhase = this.§"L§.§1!;§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§<!G§(WorldQueryWrapper,aabb);
      }
      
      public function §2!@§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§&!8§ = null;
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
         broadPhase = this.§"L§.§1!;§;
         var aabb:b2AABB = new b2AABB();
         aabb.§,c§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§![§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§<!G§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§&!8§ = null;
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
            return param1.§%!%§;
         };
         broadPhase = this.§"L§.§1!;§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §1!G§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §,!"§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §`i§() : b2Body
      {
         return this.§^S§;
      }
      
      public function §'B§() : b2Joint
      {
         return this.§`!T§;
      }
      
      public function §0U§() : b2Contact
      {
         return this.§7!;§;
      }
      
      public function §2<§() : Boolean
      {
         return (this.§0n§ & §27§) > 0;
      }
      
      b2internal function §-!X§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§8!'§;
         while(_loc3_)
         {
            _loc3_.§^!6§(param1);
            _loc3_ = _loc3_.§>!W§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§7j§).§;!W§(this.§&p§,this.§8!L§,this.§9c§,null,this.§"L§.§]A§,this.§]2§);
         _loc2_ = this.§^S§;
         while(_loc2_)
         {
            _loc2_.§0n§ &= ~b2Body.§^n§;
            _loc2_ = _loc2_.§>!W§;
         }
         var _loc5_:b2Contact = this.§7!;§;
         while(_loc5_)
         {
            _loc5_.§0n§ &= ~b2Contact.§^n§;
            _loc5_ = _loc5_.§>!W§;
         }
         var _loc6_:b2Joint = this.§`!T§;
         while(_loc6_)
         {
            _loc6_.§[a§ = false;
            _loc6_ = _loc6_.§>!W§;
         }
         var _loc7_:int = this.§&p§;
         var _loc8_:Vector.<b2Body> = this.§"!W§;
         var _loc9_:b2Body = this.§^S§;
         while(_loc9_)
         {
            if(!(_loc9_.§0n§ & b2Body.§^n§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§[!N§() == false))
               {
                  if(_loc9_.§1!A§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§-r§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§0n§ |= b2Body.§^n§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§&k§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§1!A§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§7!;§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§2j§.§0n§ & b2Contact.§^n§))
                              {
                                 if(!(_loc13_.§2j§.§]W§() == true || _loc13_.§2j§.§1y§() == false || _loc13_.§2j§.§&!K§() == false))
                                 {
                                    _loc4_.§"0§(_loc13_.§2j§);
                                    _loc13_.§2j§.§0n§ |= b2Contact.§^n§;
                                    if(!((_loc12_ = _loc13_.§#C§).§0n§ & b2Body.§^n§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§0n§ |= b2Body.§^n§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§20§;
                           }
                           _loc14_ = _loc2_.§`!T§;
                           while(_loc14_)
                           {
                              if(_loc14_.§%!X§.§[a§ != true)
                              {
                                 if((_loc12_ = _loc14_.§#C§).§[!N§() != false)
                                 {
                                    _loc4_.§%!P§(_loc14_.§%!X§);
                                    _loc14_.§%!X§.§[a§ = true;
                                    if(!(_loc12_.§0n§ & b2Body.§^n§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§0n§ |= b2Body.§^n§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§20§;
                           }
                        }
                     }
                     _loc4_.§-!X§(param1,this.§5%§,this.§&!$§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§&p§)
                     {
                        _loc2_ = _loc4_.§[r§[_loc11_];
                        if(_loc2_.§1!A§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§0n§ &= ~b2Body.§^n§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§>!W§;
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
         _loc2_ = this.§^S§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§[!N§() == false))
            {
               if(_loc2_.§1!A§() != b2Body.b2_staticBody)
               {
                  _loc2_.§?!%§();
               }
            }
            _loc2_ = _loc2_.§>!W§;
         }
         this.§"L§.§&>§();
      }
      
      b2internal function §if §(param1:b2TimeStep) : void
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
         (_loc9_ = this.§7j§).§;!W§(this.§&p§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§"L§.§]A§,this.§]2§);
         var _loc10_:Vector.<b2Body> = §1]§;
         _loc2_ = this.§^S§;
         while(_loc2_)
         {
            _loc2_.§0n§ &= ~b2Body.§^n§;
            _loc2_.m_sweep.§75§ = 0;
            _loc2_ = _loc2_.§>!W§;
         }
         _loc11_ = this.§7!;§;
         while(_loc11_)
         {
            _loc11_.§0n§ &= ~(b2Contact.§'T§ | b2Contact.§^n§);
            _loc11_ = _loc11_.§>!W§;
         }
         _loc8_ = this.§`!T§;
         while(_loc8_)
         {
            _loc8_.§[a§ = false;
            _loc8_ = _loc8_.§>!W§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§7!;§;
            while(_loc11_)
            {
               if(!(_loc11_.§]W§() == true || _loc11_.§1y§() == false || _loc11_.§%!@§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§0n§ & b2Contact.§'T§)
                  {
                     _loc19_ = _loc11_.§%>§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§8!7§;
                     _loc4_ = _loc11_.§86§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§1!A§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§1!A§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr612:
                        _loc11_ = _loc11_.§>!W§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§75§;
                     if(_loc5_.m_sweep.§75§ < _loc6_.m_sweep.§75§)
                     {
                        _loc20_ = _loc6_.m_sweep.§75§;
                        _loc5_.m_sweep.§+!V§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§75§ < _loc5_.m_sweep.§75§)
                     {
                        _loc20_ = _loc5_.m_sweep.§75§;
                        _loc6_.m_sweep.§+!V§(_loc20_);
                     }
                     _loc19_ = _loc11_.§^b§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§%>§ = _loc19_;
                     _loc11_.§0n§ |= b2Contact.§'T§;
                     §§goto(addr612);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr612);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§8!7§;
            _loc4_ = _loc12_.§86§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §[B§.Set(_loc5_.m_sweep);
            §,!>§.Set(_loc6_.m_sweep);
            _loc5_.§+!V§(_loc13_);
            _loc6_.§+!V§(_loc13_);
            _loc12_.§]!E§(this.§"L§.§]A§);
            _loc12_.§0n§ &= ~b2Contact.§'T§;
            if(_loc12_.§]W§() == true || _loc12_.§1y§() == false)
            {
               _loc5_.m_sweep.Set(§[B§);
               _loc6_.m_sweep.Set(§,!>§);
               _loc5_.§>W§();
               _loc6_.§>W§();
            }
            else if(_loc12_.§&!K§() != false)
            {
               if((_loc14_ = _loc5_).§1!A§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§-r§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§0n§ |= b2Body.§^n§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§&k§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§1!A§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§7!;§;
                     while(_loc7_)
                     {
                        if(_loc9_.§8!L§ == _loc9_.§;2§)
                        {
                           break;
                        }
                        if(!(_loc7_.§2j§.§0n§ & b2Contact.§^n§))
                        {
                           if(!(_loc7_.§2j§.§]W§() == true || _loc7_.§2j§.§1y§() == false || _loc7_.§2j§.§&!K§() == false))
                           {
                              _loc9_.§"0§(_loc7_.§2j§);
                              _loc7_.§2j§.§0n§ |= b2Contact.§^n§;
                              if(!((_loc22_ = _loc7_.§#C§).§0n§ & b2Body.§^n§))
                              {
                                 if(_loc22_.§1!A§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§+!V§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§0n§ |= b2Body.§^n§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§20§;
                     }
                     _loc21_ = _loc2_.§`!T§;
                     while(_loc21_)
                     {
                        if(_loc9_.§9c§ != _loc9_.§`?§)
                        {
                           if(_loc21_.§%!X§.§[a§ != true)
                           {
                              if((_loc22_ = _loc21_.§#C§).§[!N§() != false)
                              {
                                 _loc9_.§%!P§(_loc21_.§%!X§);
                                 _loc21_.§%!X§.§[a§ = true;
                                 if(!(_loc22_.§0n§ & b2Body.§^n§))
                                 {
                                    if(_loc22_.§1!A§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§+!V§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§0n§ |= b2Body.§^n§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§20§;
                     }
                  }
               }
               (_loc17_ = §>x§).§4!D§ = false;
               _loc17_.§+!I§ = (1 - _loc13_) * param1.§+!I§;
               _loc17_.§4_§ = 1 / _loc17_.§+!I§;
               _loc17_.§1a§ = 0;
               _loc17_.§6! § = param1.§6! §;
               _loc17_.§=B§ = param1.§=B§;
               _loc9_.§if §(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§&p§)
               {
                  _loc2_ = _loc9_.§[r§[_loc18_];
                  _loc2_.§0n§ &= ~b2Body.§^n§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§1!A§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§?!%§();
                        _loc7_ = _loc2_.§7!;§;
                        while(_loc7_)
                        {
                           _loc7_.§2j§.§0n§ &= ~b2Contact.§'T§;
                           _loc7_ = _loc7_.§20§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§8!L§)
               {
                  _loc11_ = _loc9_.§5Y§[_loc18_];
                  _loc11_.§0n§ &= ~(b2Contact.§'T§ | b2Contact.§^n§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§9c§)
               {
                  (_loc8_ = _loc9_.§ !G§[_loc18_]).§[a§ = false;
                  _loc18_++;
               }
               this.§"L§.§&>§();
            }
         }
      }
      
      b2internal function §6!X§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§0!<§();
         var _loc3_:b2Body = param1.§4I§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §@j§;
         switch(param1.§5! §)
         {
            case b2Joint.§9! §:
               this.§38§.§9n§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§-!A§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§'b§();
               _loc13_ = _loc11_.§ !_§();
               this.§38§.§9n§(_loc12_,_loc8_,_loc10_);
               this.§38§.§9n§(_loc13_,_loc9_,_loc10_);
               this.§38§.§9n§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§!L§:
               this.§38§.§9n§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§38§.§9n§(_loc6_,_loc8_,_loc10_);
               }
               this.§38§.§9n§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§38§.§9n§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §2Z§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§5! §)
         {
            case b2Shape.§2i§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§!r§(param2,_loc4_.§>!E§);
               _loc6_ = _loc4_.§!R§;
               _loc7_ = param2.R.col1;
               this.§38§.§^!"§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§2!1§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§;<§();
               _loc11_ = _loc9_.§ if§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§!r§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§38§.§ h§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§ _§:
               _loc13_ = param1 as b2EdgeShape;
               this.§38§.§9n§(b2Math.§!r§(param2,_loc13_.GetVertex1()),b2Math.§!r§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

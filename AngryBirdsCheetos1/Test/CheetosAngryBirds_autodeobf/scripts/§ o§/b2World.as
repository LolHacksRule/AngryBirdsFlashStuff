package § o§
{
   import §"0§.*;
   import §#-§.b2Controller;
   import §#-§.b2ControllerEdge;
   import §-r§.*;
   import §30§.*;
   import §6!H§.*;
   import §;!#§.*;
   import §]!S§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var § !8§:b2Transform = new b2Transform();
      
      private static var §[4§:b2Sweep = new b2Sweep();
      
      private static var §?;§:b2Sweep = new b2Sweep();
      
      private static var §%v§:b2TimeStep = new b2TimeStep();
      
      private static var §;! §:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §-!g§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §5M§:Boolean;
      
      private static var § !5§:Boolean;
      
      public static const §[=§:int = 1;
      
      public static const §4X§:int = 2;
       
      
      private var §%I§:Vector.<b2Body>;
      
      b2internal var §0b§:int;
      
      b2internal var §-!-§:b2ContactManager;
      
      private var §2!T§:b2ContactSolver;
      
      private var §5u§:b2Island;
      
      b2internal var §%! §:b2Body;
      
      private var §-!&§:b2Joint;
      
      b2internal var §4!]§:b2Contact;
      
      private var §`#§:int;
      
      b2internal var §,!^§:int;
      
      private var §;6§:int;
      
      private var §3j§:b2Controller;
      
      private var §7!"§:int;
      
      private var §@[§:b2Vec2;
      
      private var §6@§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §=`§:b2DestructionListener;
      
      private var §1!;§:b2DebugDraw;
      
      private var § x§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§%I§ = new Vector.<b2Body>();
         this.§-!-§ = new b2ContactManager();
         this.§2!T§ = new b2ContactSolver();
         this.§5u§ = new b2Island();
         super();
         this.§=`§ = null;
         this.§1!;§ = null;
         this.§%! § = null;
         this.§4!]§ = null;
         this.§-!&§ = null;
         this.§3j§ = null;
         this.§`#§ = 0;
         this.§,!^§ = 0;
         this.§;6§ = 0;
         this.§7!"§ = 0;
         §5M§ = true;
         § !5§ = true;
         this.§6@§ = param2;
         this.§@[§ = param1;
         this.§ x§ = 0;
         this.§-!-§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§<s§(_loc3_);
      }
      
      public function §6!^§(param1:b2DestructionListener) : void
      {
         this.§=`§ = param1;
      }
      
      public function §`M§(param1:b2ContactFilter) : void
      {
         this.§-!-§.§1!A§ = param1;
      }
      
      public function §`Q§(param1:b2ContactListener) : void
      {
         this.§-!-§.§8!I§ = param1;
      }
      
      public function §1!$§(param1:b2DebugDraw) : void
      {
         this.§1!;§ = param1;
      }
      
      public function §=!R§(param1:§@C§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§@C§ = this.§-!-§.§<x§;
         this.§-!-§.§<x§ = param1;
         var _loc3_:b2Body = this.§%! §;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§>0§;
            while(_loc4_)
            {
               _loc4_.§4!W§ = param1.§1<§(_loc2_.§4!^§(_loc4_.§4!W§),_loc4_);
               _loc4_ = _loc4_.§-![§;
            }
            _loc3_ = _loc3_.§-![§;
         }
      }
      
      public function §6!<§() : void
      {
         this.§-!-§.§<x§.§6!<§();
      }
      
      public function §<Q§() : int
      {
         return this.§-!-§.§<x§.§<Q§();
      }
      
      public function §<s§(param1:b2BodyDef) : b2Body
      {
         if(this.§5Y§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§`D§ = null;
         _loc2_.§-![§ = this.§%! §;
         if(this.§%! §)
         {
            this.§%! §.§`D§ = _loc2_;
         }
         this.§%! § = _loc2_;
         ++this.§`#§;
         return _loc2_;
      }
      
      public function §=!B§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§5Y§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§-!&§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§23§;
            if(this.§=`§)
            {
               this.§=`§.§"!e§(_loc6_.§>!&§);
            }
            this.§4!F§(_loc6_.§>!&§);
         }
         var _loc3_:b2ControllerEdge = param1.§3j§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§4p§;
            _loc7_.§^&§.§<%§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§4!]§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§23§;
            this.§-!-§.§[!$§(_loc8_.§4§);
         }
         param1.§4!]§ = null;
         var _loc5_:b2Fixture = param1.§>0§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§-![§;
            if(this.§=`§)
            {
               this.§=`§.§&!X§(_loc9_);
            }
            _loc9_.§%!4§(this.§-!-§.§<x§);
            _loc9_.§[!$§();
         }
         param1.§>0§ = null;
         param1.§ !2§ = 0;
         if(param1.§`D§)
         {
            param1.§`D§.§-![§ = param1.§-![§;
         }
         if(param1.§-![§)
         {
            param1.§-![§.§`D§ = param1.§`D§;
         }
         if(param1 == this.§%! §)
         {
            this.§%! § = param1.§-![§;
         }
         --this.§`#§;
      }
      
      public function §,Y§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§#!M§(param1,null);
         _loc2_.§`D§ = null;
         _loc2_.§-![§ = this.§-!&§;
         if(this.§-!&§)
         {
            this.§-!&§.§`D§ = _loc2_;
         }
         this.§-!&§ = _loc2_;
         ++this.§;6§;
         _loc2_.§;!S§.§>!&§ = _loc2_;
         _loc2_.§;!S§.§'!4§ = _loc2_.§3D§;
         _loc2_.§;!S§.§4!N§ = null;
         _loc2_.§;!S§.§23§ = _loc2_.§6z§.§-!&§;
         if(_loc2_.§6z§.§-!&§)
         {
            _loc2_.§6z§.§-!&§.§4!N§ = _loc2_.§;!S§;
         }
         _loc2_.§6z§.§-!&§ = _loc2_.§;!S§;
         _loc2_.§"X§.§>!&§ = _loc2_;
         _loc2_.§"X§.§'!4§ = _loc2_.§6z§;
         _loc2_.§"X§.§4!N§ = null;
         _loc2_.§"X§.§23§ = _loc2_.§3D§.§-!&§;
         if(_loc2_.§3D§.§-!&§)
         {
            _loc2_.§3D§.§-!&§.§4!N§ = _loc2_.§"X§;
         }
         _loc2_.§3D§.§-!&§ = _loc2_.§"X§;
         var _loc3_:b2Body = param1.§-'§;
         var _loc4_:b2Body = param1.§<!L§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§!!R§();
            while(_loc5_)
            {
               if(_loc5_.§'!4§ == _loc3_)
               {
                  _loc5_.§4§.§[]§();
               }
               _loc5_ = _loc5_.§23§;
            }
         }
         return _loc2_;
      }
      
      public function §4!F§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§+4§;
         if(param1.§`D§)
         {
            param1.§`D§.§-![§ = param1.§-![§;
         }
         if(param1.§-![§)
         {
            param1.§-![§.§`D§ = param1.§`D§;
         }
         if(param1 == this.§-!&§)
         {
            this.§-!&§ = param1.§-![§;
         }
         var _loc3_:b2Body = param1.§6z§;
         var _loc4_:b2Body = param1.§3D§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§;!S§.§4!N§)
         {
            param1.§;!S§.§4!N§.§23§ = param1.§;!S§.§23§;
         }
         if(param1.§;!S§.§23§)
         {
            param1.§;!S§.§23§.§4!N§ = param1.§;!S§.§4!N§;
         }
         if(param1.§;!S§ == _loc3_.§-!&§)
         {
            _loc3_.§-!&§ = param1.§;!S§.§23§;
         }
         param1.§;!S§.§4!N§ = null;
         param1.§;!S§.§23§ = null;
         if(param1.§"X§.§4!N§)
         {
            param1.§"X§.§4!N§.§23§ = param1.§"X§.§23§;
         }
         if(param1.§"X§.§23§)
         {
            param1.§"X§.§23§.§4!N§ = param1.§"X§.§4!N§;
         }
         if(param1.§"X§ == _loc4_.§-!&§)
         {
            _loc4_.§-!&§ = param1.§"X§.§23§;
         }
         param1.§"X§.§4!N§ = null;
         param1.§"X§.§23§ = null;
         b2Joint.§[!$§(param1,null);
         --this.§;6§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§!!R§();
            while(_loc5_)
            {
               if(_loc5_.§'!4§ == _loc3_)
               {
                  _loc5_.§4§.§[]§();
               }
               _loc5_ = _loc5_.§23§;
            }
         }
      }
      
      public function § 8§(param1:b2Controller) : b2Controller
      {
         param1.§-![§ = this.§3j§;
         param1.§`D§ = null;
         this.§3j§ = param1;
         param1.m_world = this;
         ++this.§7!"§;
         return param1;
      }
      
      public function §9g§(param1:b2Controller) : void
      {
         if(param1.§`D§)
         {
            param1.§`D§.§-![§ = param1.§-![§;
         }
         if(param1.§-![§)
         {
            param1.§-![§.§`D§ = param1.§`D§;
         }
         if(this.§3j§ == param1)
         {
            this.§3j§ = param1.§-![§;
         }
         --this.§7!"§;
      }
      
      public function §%!'§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§-![§ = this.§3j§;
         param1.§`D§ = null;
         if(this.§3j§)
         {
            this.§3j§.§`D§ = param1;
         }
         this.§3j§ = param1;
         ++this.§7!"§;
         param1.m_world = this;
         return param1;
      }
      
      public function §1R§(param1:b2Controller) : void
      {
         param1.§#R§();
         if(param1.§-![§)
         {
            param1.§-![§.§`D§ = param1.§`D§;
         }
         if(param1.§`D§)
         {
            param1.§`D§.§-![§ = param1.§-![§;
         }
         if(param1 == this.§3j§)
         {
            this.§3j§ = param1.§-![§;
         }
         --this.§7!"§;
      }
      
      public function §[!7§(param1:Boolean) : void
      {
         §5M§ = param1;
      }
      
      public function §4W§(param1:Boolean) : void
      {
         § !5§ = param1;
      }
      
      public function §"!A§() : int
      {
         return this.§`#§;
      }
      
      public function §,k§() : int
      {
         return this.§;6§;
      }
      
      public function §"!$§() : int
      {
         return this.§,!^§;
      }
      
      public function §<T§(param1:b2Vec2) : void
      {
         this.§@[§ = param1;
      }
      
      public function §1z§() : b2Vec2
      {
         return this.§@[§;
      }
      
      public function §6%§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §+"§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§0b§ & §[=§)
         {
            this.§-!-§.§!c§();
            this.§0b§ &= ~§[=§;
         }
         this.§0b§ |= §4X§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§1_§ = param1;
         _loc4_.§@-§ = param2;
         _loc4_.§-!B§ = param3;
         if(param1 > 0)
         {
            _loc4_.§<l§ = 1 / param1;
         }
         else
         {
            _loc4_.§<l§ = 0;
         }
         _loc4_.§,K§ = this.§ x§ * param1;
         _loc4_.§7!^§ = §5M§;
         this.§-!-§.§super§();
         if(_loc4_.§1_§ > 0)
         {
            this.§ §(_loc4_);
         }
         if(§ !5§ && _loc4_.§1_§ > 0)
         {
            this.§6b§(_loc4_);
         }
         if(_loc4_.§1_§ > 0)
         {
            this.§ x§ = _loc4_.§<l§;
         }
         this.§0b§ &= ~§4X§;
      }
      
      public function §<p§() : void
      {
         var _loc1_:b2Body = this.§%! §;
         while(_loc1_)
         {
            _loc1_.§']§.§7_§();
            _loc1_.§'!$§ = 0;
            _loc1_ = _loc1_.§-![§;
         }
      }
      
      public function §![§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§@C§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§1!;§ == null)
         {
            return;
         }
         this.§1!;§.§5,§.graphics.clear();
         var _loc1_:uint = this.§1!;§.§5!h§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§4O§)
         {
            _loc3_ = this.§%! §;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§5f§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§5!g§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§7!_§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§5!g§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§7!_§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§5!g§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§5!g§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§5!g§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§-![§;
               }
               _loc3_ = _loc3_.§-![§;
            }
         }
         if(_loc1_ & b2DebugDraw.§?!1§)
         {
            _loc6_ = this.§-!&§;
            while(_loc6_)
            {
               this.§%!^§(_loc6_);
               _loc6_ = _loc6_.§-![§;
            }
         }
         if(_loc1_ & b2DebugDraw.§0l§)
         {
            _loc16_ = this.§3j§;
            while(_loc16_)
            {
               _loc16_.§!!d§(this.§1!;§);
               _loc16_ = _loc16_.§-![§;
            }
         }
         if(_loc1_ & b2DebugDraw.§=t§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§-!-§.§4!]§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§`u§();
               _loc19_ = _loc17_.§7t§();
               _loc20_ = _loc18_.§[!@§().§%!7§();
               _loc21_ = _loc19_.§[!@§().§%!7§();
               this.§1!;§.§ W§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§;!B§();
            }
         }
         if(_loc1_ & b2DebugDraw.§]k§)
         {
            _loc7_ = this.§-!-§.§<x§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§%! §;
            while(_loc3_)
            {
               if(_loc3_.§5f§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§4!^§(_loc4_.§4!W§);
                     _loc14_[0].Set(_loc22_.§>!7§.x,_loc22_.§>!7§.y);
                     _loc14_[1].Set(_loc22_.§=k§.x,_loc22_.§>!7§.y);
                     _loc14_[2].Set(_loc22_.§=k§.x,_loc22_.§=k§.y);
                     _loc14_[3].Set(_loc22_.§>!7§.x,_loc22_.§=k§.y);
                     this.§1!;§.§]!1§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§;!B§();
                  }
               }
               _loc3_ = _loc3_.§;!B§();
            }
         }
         if(_loc1_ & b2DebugDraw.§<!9§)
         {
            _loc3_ = this.§%! §;
            while(_loc3_)
            {
               (_loc11_ = § !8§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§with§();
               this.§1!;§.§7!8§(_loc11_);
               _loc3_ = _loc3_.§-![§;
            }
         }
      }
      
      public function §,!4§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§@C§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§-!-§.§<x§;
         broadPhase.§#c§(WorldQueryWrapper,aabb);
      }
      
      public function §#!H§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§@C§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§"!F§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§2!i§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§!!D§();
         }
         broadPhase = this.§-!-§.§<x§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§#c§(WorldQueryWrapper,aabb);
      }
      
      public function §^B§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§@C§ = null;
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
         broadPhase = this.§-!-§.§<x§;
         var aabb:b2AABB = new b2AABB();
         aabb.§>!7§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§=k§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§#c§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§@C§ = null;
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
            return param1.§0`§;
         };
         broadPhase = this.§-!-§.§<x§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §@!O§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §8g§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §>B§() : b2Body
      {
         return this.§%! §;
      }
      
      public function §>N§() : b2Joint
      {
         return this.§-!&§;
      }
      
      public function §!!R§() : b2Contact
      {
         return this.§4!]§;
      }
      
      public function §5Y§() : Boolean
      {
         return (this.§0b§ & §4X§) > 0;
      }
      
      b2internal function § §(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§3j§;
         while(_loc3_)
         {
            _loc3_.§+"§(param1);
            _loc3_ = _loc3_.§-![§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§5u§).§#!O§(this.§`#§,this.§,!^§,this.§;6§,null,this.§-!-§.§8!I§,this.§2!T§);
         _loc2_ = this.§%! §;
         while(_loc2_)
         {
            _loc2_.§0b§ &= ~b2Body.§[!6§;
            _loc2_ = _loc2_.§-![§;
         }
         var _loc5_:b2Contact = this.§4!]§;
         while(_loc5_)
         {
            _loc5_.§0b§ &= ~b2Contact.§[!6§;
            _loc5_ = _loc5_.§-![§;
         }
         var _loc6_:b2Joint = this.§-!&§;
         while(_loc6_)
         {
            _loc6_.§ P§ = false;
            _loc6_ = _loc6_.§-![§;
         }
         var _loc7_:int = this.§`#§;
         var _loc8_:Vector.<b2Body> = this.§%I§;
         var _loc9_:b2Body = this.§%! §;
         while(_loc9_)
         {
            if(!(_loc9_.§0b§ & b2Body.§[!6§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§5f§() == false))
               {
                  if(_loc9_.§7!_§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§#R§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§0b§ |= b2Body.§[!6§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§^!,§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§7!_§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§4!]§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§4§.§0b§ & b2Contact.§[!6§))
                              {
                                 if(!(_loc13_.§4§.§;>§() == true || _loc13_.§4§.§0!E§() == false || _loc13_.§4§.§?5§() == false))
                                 {
                                    _loc4_.§ null§(_loc13_.§4§);
                                    _loc13_.§4§.§0b§ |= b2Contact.§[!6§;
                                    if(!((_loc12_ = _loc13_.§'!4§).§0b§ & b2Body.§[!6§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§0b§ |= b2Body.§[!6§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§23§;
                           }
                           _loc14_ = _loc2_.§-!&§;
                           while(_loc14_)
                           {
                              if(_loc14_.§>!&§.§ P§ != true)
                              {
                                 if((_loc12_ = _loc14_.§'!4§).§5f§() != false)
                                 {
                                    _loc4_.§;!`§(_loc14_.§>!&§);
                                    _loc14_.§>!&§.§ P§ = true;
                                    if(!(_loc12_.§0b§ & b2Body.§[!6§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§0b§ |= b2Body.§[!6§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§23§;
                           }
                        }
                     }
                     _loc4_.§ §(param1,this.§@[§,this.§6@§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§`#§)
                     {
                        _loc2_ = _loc4_.§4!#§[_loc11_];
                        if(_loc2_.§7!_§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§0b§ &= ~b2Body.§[!6§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§-![§;
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
         _loc2_ = this.§%! §;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§5f§() == false))
            {
               if(_loc2_.§7!_§() != b2Body.b2_staticBody)
               {
                  _loc2_.§2#§();
               }
            }
            _loc2_ = _loc2_.§-![§;
         }
         this.§-!-§.§!c§();
      }
      
      b2internal function §6b§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§5u§).§#!O§(this.§`#§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§-!-§.§8!I§,this.§2!T§);
         var _loc10_:Vector.<b2Body> = §;! §;
         _loc2_ = this.§%! §;
         while(_loc2_)
         {
            _loc2_.§0b§ &= ~b2Body.§[!6§;
            _loc2_.m_sweep.§^Q§ = 0;
            _loc2_ = _loc2_.§-![§;
         }
         _loc11_ = this.§4!]§;
         while(_loc11_)
         {
            _loc11_.§0b§ &= ~(b2Contact.§"1§ | b2Contact.§[!6§);
            _loc11_ = _loc11_.§-![§;
         }
         _loc8_ = this.§-!&§;
         while(_loc8_)
         {
            _loc8_.§ P§ = false;
            _loc8_ = _loc8_.§-![§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§4!]§;
            for(; _loc11_; _loc11_ = _loc11_.§-![§)
            {
               if(!(_loc11_.§;>§() == true || _loc11_.§0!E§() == false || _loc11_.§=!F§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§0b§ & b2Contact.§"1§)
                  {
                     _loc19_ = _loc11_.§>&§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§45§;
                     _loc4_ = _loc11_.§?G§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§7!_§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§7!_§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§^Q§;
                     if(_loc5_.m_sweep.§^Q§ < _loc6_.m_sweep.§^Q§)
                     {
                        _loc20_ = _loc6_.m_sweep.§^Q§;
                        _loc5_.m_sweep.§8!3§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§^Q§ < _loc5_.m_sweep.§^Q§)
                     {
                        _loc20_ = _loc5_.m_sweep.§^Q§;
                        _loc6_.m_sweep.§8!3§(_loc20_);
                     }
                     _loc19_ = _loc11_.§[!K§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§>&§ = _loc19_;
                     _loc11_.§0b§ |= b2Contact.§"1§;
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
            _loc3_ = _loc12_.§45§;
            _loc4_ = _loc12_.§?G§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §[4§.Set(_loc5_.m_sweep);
            §?;§.Set(_loc6_.m_sweep);
            _loc5_.§8!3§(_loc13_);
            _loc6_.§8!3§(_loc13_);
            _loc12_.§do §(this.§-!-§.§8!I§);
            _loc12_.§0b§ &= ~b2Contact.§"1§;
            if(_loc12_.§;>§() == true || _loc12_.§0!E§() == false)
            {
               _loc5_.m_sweep.Set(§[4§);
               _loc6_.m_sweep.Set(§?;§);
               _loc5_.§&I§();
               _loc6_.§&I§();
            }
            else if(_loc12_.§?5§() != false)
            {
               if((_loc14_ = _loc5_).§7!_§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§#R§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§0b§ |= b2Body.§[!6§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§^!,§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§7!_§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§4!]§;
                     while(_loc7_)
                     {
                        if(_loc9_.§,!^§ == _loc9_.§,<§)
                        {
                           break;
                        }
                        if(!(_loc7_.§4§.§0b§ & b2Contact.§[!6§))
                        {
                           if(!(_loc7_.§4§.§;>§() == true || _loc7_.§4§.§0!E§() == false || _loc7_.§4§.§?5§() == false))
                           {
                              _loc9_.§ null§(_loc7_.§4§);
                              _loc7_.§4§.§0b§ |= b2Contact.§[!6§;
                              if(!((_loc22_ = _loc7_.§'!4§).§0b§ & b2Body.§[!6§))
                              {
                                 if(_loc22_.§7!_§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§8!3§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§0b§ |= b2Body.§[!6§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§23§;
                     }
                     _loc21_ = _loc2_.§-!&§;
                     while(_loc21_)
                     {
                        if(_loc9_.§;6§ != _loc9_.§^$§)
                        {
                           if(_loc21_.§>!&§.§ P§ != true)
                           {
                              if((_loc22_ = _loc21_.§'!4§).§5f§() != false)
                              {
                                 _loc9_.§;!`§(_loc21_.§>!&§);
                                 _loc21_.§>!&§.§ P§ = true;
                                 if(!(_loc22_.§0b§ & b2Body.§[!6§))
                                 {
                                    if(_loc22_.§7!_§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§8!3§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§0b§ |= b2Body.§[!6§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§23§;
                     }
                  }
               }
               (_loc17_ = §%v§).§7!^§ = false;
               _loc17_.§1_§ = (1 - _loc13_) * param1.§1_§;
               _loc17_.§<l§ = 1 / _loc17_.§1_§;
               _loc17_.§,K§ = 0;
               _loc17_.§@-§ = param1.§@-§;
               _loc17_.§-!B§ = param1.§-!B§;
               _loc9_.§6b§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§`#§)
               {
                  _loc2_ = _loc9_.§4!#§[_loc18_];
                  _loc2_.§0b§ &= ~b2Body.§[!6§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§7!_§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§2#§();
                        _loc7_ = _loc2_.§4!]§;
                        while(_loc7_)
                        {
                           _loc7_.§4§.§0b§ &= ~b2Contact.§"1§;
                           _loc7_ = _loc7_.§23§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§,!^§)
               {
                  _loc11_ = _loc9_.§ !E§[_loc18_];
                  _loc11_.§0b§ &= ~(b2Contact.§"1§ | b2Contact.§[!6§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§;6§)
               {
                  (_loc8_ = _loc9_.§7f§[_loc18_]).§ P§ = false;
                  _loc18_++;
               }
               this.§-!-§.§!c§();
            }
         }
      }
      
      b2internal function §%!^§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§3g§();
         var _loc3_:b2Body = param1.§#F§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §-!g§;
         switch(param1.§#!&§)
         {
            case b2Joint.§-A§:
               this.§1!;§.§ W§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§[,§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§#2§();
               _loc13_ = _loc11_.§4C§();
               this.§1!;§.§ W§(_loc12_,_loc8_,_loc10_);
               this.§1!;§.§ W§(_loc13_,_loc9_,_loc10_);
               this.§1!;§.§ W§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§`!U§:
               this.§1!;§.§ W§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§1!;§.§ W§(_loc6_,_loc8_,_loc10_);
               }
               this.§1!;§.§ W§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§1!;§.§ W§(_loc7_,_loc9_,_loc10_);
               }
         }
      }
      
      b2internal function §5!g§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§#!&§)
         {
            case b2Shape.§,-§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§=!!§(param2,_loc4_.§4Z§);
               _loc6_ = _loc4_.§#&§;
               _loc7_ = param2.R.col1;
               this.§1!;§.§%]§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§"![§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§"!f§();
               _loc11_ = _loc9_.§9J§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§=!!§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§1!;§.§>!c§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§#!D§:
               _loc13_ = param1 as b2EdgeShape;
               this.§1!;§.§ W§(b2Math.§=!!§(param2,_loc13_.GetVertex1()),b2Math.§=!!§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

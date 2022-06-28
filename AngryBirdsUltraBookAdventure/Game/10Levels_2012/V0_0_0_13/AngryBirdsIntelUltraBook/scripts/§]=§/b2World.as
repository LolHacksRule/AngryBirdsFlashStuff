package §]=§
{
   import §"!G§.b2Controller;
   import §"!G§.b2ControllerEdge;
   import §#!"§.*;
   import §%t§.*;
   import §&L§.*;
   import §'s§.*;
   import §+!,§.*;
   import §6!9§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §%+§:b2Transform = new b2Transform();
      
      private static var §5§:b2Sweep = new b2Sweep();
      
      private static var §-!>§:b2Sweep = new b2Sweep();
      
      private static var §!2§:b2TimeStep = new b2TimeStep();
      
      private static var §<w§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §1K§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §%!N§:Boolean;
      
      private static var §8!D§:Boolean;
      
      public static const §+!-§:int = 1;
      
      public static const §`!0§:int = 2;
       
      
      private var § Z§:Vector.<b2Body>;
      
      b2internal var §3! §:int;
      
      b2internal var §?l§:b2ContactManager;
      
      private var § !i§:b2ContactSolver;
      
      private var §-$§:b2Island;
      
      b2internal var §3!e§:b2Body;
      
      private var §8>§:b2Joint;
      
      b2internal var §2!4§:b2Contact;
      
      private var §>!8§:int;
      
      b2internal var §7!?§:int;
      
      private var §<!A§:int;
      
      private var §%!V§:b2Controller;
      
      private var §2Z§:int;
      
      private var §4!B§:b2Vec2;
      
      private var §[!J§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §'!>§:b2DestructionListener;
      
      private var §@!a§:b2DebugDraw;
      
      private var §>!R§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§ Z§ = new Vector.<b2Body>();
         this.§?l§ = new b2ContactManager();
         this.§ !i§ = new b2ContactSolver();
         this.§-$§ = new b2Island();
         super();
         this.§'!>§ = null;
         this.§@!a§ = null;
         this.§3!e§ = null;
         this.§2!4§ = null;
         this.§8>§ = null;
         this.§%!V§ = null;
         this.§>!8§ = 0;
         this.§7!?§ = 0;
         this.§<!A§ = 0;
         this.§2Z§ = 0;
         §%!N§ = true;
         §8!D§ = true;
         this.§[!J§ = param2;
         this.§4!B§ = param1;
         this.§>!R§ = 0;
         this.§?l§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§=[§(_loc3_);
      }
      
      public function §'&§(param1:b2DestructionListener) : void
      {
         this.§'!>§ = param1;
      }
      
      public function §1V§(param1:b2ContactFilter) : void
      {
         this.§?l§.§-!6§ = param1;
      }
      
      public function §?8§(param1:b2ContactListener) : void
      {
         this.§?l§.§,z§ = param1;
      }
      
      public function §2!h§(param1:b2DebugDraw) : void
      {
         this.§@!a§ = param1;
      }
      
      public function §-=§(param1:§8!b§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§8!b§ = this.§?l§.§'<§;
         this.§?l§.§'<§ = param1;
         var _loc3_:b2Body = this.§3!e§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§7!d§;
            while(_loc4_)
            {
               _loc4_.§<V§ = param1.§6K§(_loc2_.§%!A§(_loc4_.§<V§),_loc4_);
               _loc4_ = _loc4_.§,1§;
            }
            _loc3_ = _loc3_.§,1§;
         }
      }
      
      public function §5!h§() : void
      {
         this.§?l§.§'<§.§5!h§();
      }
      
      public function §8!0§() : int
      {
         return this.§?l§.§'<§.§8!0§();
      }
      
      public function §=[§(param1:b2BodyDef) : b2Body
      {
         if(this.§+!`§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§7!Q§ = null;
         _loc2_.§,1§ = this.§3!e§;
         if(this.§3!e§)
         {
            this.§3!e§.§7!Q§ = _loc2_;
         }
         this.§3!e§ = _loc2_;
         ++this.§>!8§;
         return _loc2_;
      }
      
      public function §<s§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§+!`§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§8>§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§2B§;
            if(this.§'!>§)
            {
               this.§'!>§.§-!e§(_loc6_.§7-§);
            }
            this.§-!A§(_loc6_.§7-§);
         }
         var _loc3_:b2ControllerEdge = param1.§%!V§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§false§;
            _loc7_.controller.§;! §(param1);
         }
         var _loc4_:b2ContactEdge = param1.§2!4§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§2B§;
            this.§?l§.§"P§(_loc8_.§4! §);
         }
         param1.§2!4§ = null;
         var _loc5_:b2Fixture = param1.§7!d§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§,1§;
            if(this.§'!>§)
            {
               this.§'!>§.§!P§(_loc9_);
            }
            _loc9_.§[!3§(this.§?l§.§'<§);
            _loc9_.§"P§();
         }
         param1.§7!d§ = null;
         param1.§;!F§ = 0;
         if(param1.§7!Q§)
         {
            param1.§7!Q§.§,1§ = param1.§,1§;
         }
         if(param1.§,1§)
         {
            param1.§,1§.§7!Q§ = param1.§7!Q§;
         }
         if(param1 == this.§3!e§)
         {
            this.§3!e§ = param1.§,1§;
         }
         --this.§>!8§;
      }
      
      public function §"!"§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§]!U§(param1,null);
         _loc2_.§7!Q§ = null;
         _loc2_.§,1§ = this.§8>§;
         if(this.§8>§)
         {
            this.§8>§.§7!Q§ = _loc2_;
         }
         this.§8>§ = _loc2_;
         ++this.§<!A§;
         _loc2_.§[j§.§7-§ = _loc2_;
         _loc2_.§[j§.§3z§ = _loc2_.§&!F§;
         _loc2_.§[j§.§;W§ = null;
         _loc2_.§[j§.§2B§ = _loc2_.§1!G§.§8>§;
         if(_loc2_.§1!G§.§8>§)
         {
            _loc2_.§1!G§.§8>§.§;W§ = _loc2_.§[j§;
         }
         _loc2_.§1!G§.§8>§ = _loc2_.§[j§;
         _loc2_.§>!3§.§7-§ = _loc2_;
         _loc2_.§>!3§.§3z§ = _loc2_.§1!G§;
         _loc2_.§>!3§.§;W§ = null;
         _loc2_.§>!3§.§2B§ = _loc2_.§&!F§.§8>§;
         if(_loc2_.§&!F§.§8>§)
         {
            _loc2_.§&!F§.§8>§.§;W§ = _loc2_.§>!3§;
         }
         _loc2_.§&!F§.§8>§ = _loc2_.§>!3§;
         var _loc3_:b2Body = param1.§^!G§;
         var _loc4_:b2Body = param1.§-z§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§[7§();
            while(_loc5_)
            {
               if(_loc5_.§3z§ == _loc3_)
               {
                  _loc5_.§4! §.§>0§();
               }
               _loc5_ = _loc5_.§2B§;
            }
         }
         return _loc2_;
      }
      
      public function §-!A§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§1s§;
         if(param1.§7!Q§)
         {
            param1.§7!Q§.§,1§ = param1.§,1§;
         }
         if(param1.§,1§)
         {
            param1.§,1§.§7!Q§ = param1.§7!Q§;
         }
         if(param1 == this.§8>§)
         {
            this.§8>§ = param1.§,1§;
         }
         var _loc3_:b2Body = param1.§1!G§;
         var _loc4_:b2Body = param1.§&!F§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§[j§.§;W§)
         {
            param1.§[j§.§;W§.§2B§ = param1.§[j§.§2B§;
         }
         if(param1.§[j§.§2B§)
         {
            param1.§[j§.§2B§.§;W§ = param1.§[j§.§;W§;
         }
         if(param1.§[j§ == _loc3_.§8>§)
         {
            _loc3_.§8>§ = param1.§[j§.§2B§;
         }
         param1.§[j§.§;W§ = null;
         param1.§[j§.§2B§ = null;
         if(param1.§>!3§.§;W§)
         {
            param1.§>!3§.§;W§.§2B§ = param1.§>!3§.§2B§;
         }
         if(param1.§>!3§.§2B§)
         {
            param1.§>!3§.§2B§.§;W§ = param1.§>!3§.§;W§;
         }
         if(param1.§>!3§ == _loc4_.§8>§)
         {
            _loc4_.§8>§ = param1.§>!3§.§2B§;
         }
         param1.§>!3§.§;W§ = null;
         param1.§>!3§.§2B§ = null;
         b2Joint.§"P§(param1,null);
         --this.§<!A§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§[7§();
            while(_loc5_)
            {
               if(_loc5_.§3z§ == _loc3_)
               {
                  _loc5_.§4! §.§>0§();
               }
               _loc5_ = _loc5_.§2B§;
            }
         }
      }
      
      public function §^P§(param1:b2Controller) : b2Controller
      {
         param1.§,1§ = this.§%!V§;
         param1.§7!Q§ = null;
         this.§%!V§ = param1;
         param1.m_world = this;
         ++this.§2Z§;
         return param1;
      }
      
      public function §<S§(param1:b2Controller) : void
      {
         if(param1.§7!Q§)
         {
            param1.§7!Q§.§,1§ = param1.§,1§;
         }
         if(param1.§,1§)
         {
            param1.§,1§.§7!Q§ = param1.§7!Q§;
         }
         if(this.§%!V§ == param1)
         {
            this.§%!V§ = param1.§,1§;
         }
         --this.§2Z§;
      }
      
      public function §[&§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§,1§ = this.§%!V§;
         param1.§7!Q§ = null;
         if(this.§%!V§)
         {
            this.§%!V§.§7!Q§ = param1;
         }
         this.§%!V§ = param1;
         ++this.§2Z§;
         param1.m_world = this;
         return param1;
      }
      
      public function §=!&§(param1:b2Controller) : void
      {
         param1.§=!b§();
         if(param1.§,1§)
         {
            param1.§,1§.§7!Q§ = param1.§7!Q§;
         }
         if(param1.§7!Q§)
         {
            param1.§7!Q§.§,1§ = param1.§,1§;
         }
         if(param1 == this.§%!V§)
         {
            this.§%!V§ = param1.§,1§;
         }
         --this.§2Z§;
      }
      
      public function §6]§(param1:Boolean) : void
      {
         §%!N§ = param1;
      }
      
      public function §?9§(param1:Boolean) : void
      {
         §8!D§ = param1;
      }
      
      public function §,!-§() : int
      {
         return this.§>!8§;
      }
      
      public function §<R§() : int
      {
         return this.§<!A§;
      }
      
      public function §6u§() : int
      {
         return this.§7!?§;
      }
      
      public function §;!K§(param1:b2Vec2) : void
      {
         this.§4!B§ = param1;
      }
      
      public function §+?§() : b2Vec2
      {
         return this.§4!B§;
      }
      
      public function §,!X§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §^l§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§3! § & §+!-§)
         {
            this.§?l§.§8!<§();
            this.§3! § &= ~§+!-§;
         }
         this.§3! § |= §`!0§;
         var _loc4_:b2TimeStep = s_timestep2;
         _loc4_.§`"§ = param1;
         _loc4_.§&!Z§ = param2;
         _loc4_.§3!"§ = param3;
         if(param1 > 0)
         {
            _loc4_.§%r§ = 1 / param1;
         }
         else
         {
            _loc4_.§%r§ = 0;
         }
         _loc4_.§<!1§ = this.§>!R§ * param1;
         _loc4_.§5h§ = §%!N§;
         this.§?l§.§2!!§();
         if(_loc4_.§`"§ > 0)
         {
            this.§<!6§(_loc4_);
         }
         if(§8!D§ && _loc4_.§`"§ > 0)
         {
            this.§[!-§(_loc4_);
         }
         if(_loc4_.§`"§ > 0)
         {
            this.§>!R§ = _loc4_.§%r§;
         }
         this.§3! § &= ~§`!0§;
      }
      
      public function §]!a§() : void
      {
         var _loc1_:b2Body = this.§3!e§;
         while(_loc1_)
         {
            _loc1_.§=q§.§5b§();
            _loc1_.§0e§ = 0;
            _loc1_ = _loc1_.§,1§;
         }
      }
      
      public function §4$§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§8!b§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§@!a§ == null)
         {
            return;
         }
         this.§@!a§.§21§.graphics.clear();
         var _loc1_:uint = this.§@!a§.§throw§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§>!>§)
         {
            _loc3_ = this.§3!e§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§5g§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§-<§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§?%§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§-V§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§?%§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§-V§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§?%§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§?%§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§?%§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§,1§;
               }
               _loc3_ = _loc3_.§,1§;
            }
         }
         if(_loc1_ & b2DebugDraw.§^!c§)
         {
            _loc6_ = this.§8>§;
            while(_loc6_)
            {
               this.§4!H§(_loc6_);
               _loc6_ = _loc6_.§,1§;
            }
         }
         if(_loc1_ & b2DebugDraw.§ y§)
         {
            _loc16_ = this.§%!V§;
            while(_loc16_)
            {
               _loc16_.§>[§(this.§@!a§);
               _loc16_ = _loc16_.§,1§;
            }
         }
         if(_loc1_ & b2DebugDraw.§<C§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§?l§.§2!4§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§2!N§();
               _loc19_ = _loc17_.§`!Q§();
               _loc20_ = _loc18_.§=!;§().§+e§();
               _loc21_ = _loc19_.§=!;§().§+e§();
               this.§@!a§.§^p§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§70§();
            }
         }
         if(_loc1_ & b2DebugDraw.§+o§)
         {
            _loc7_ = this.§?l§.§'<§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§3!e§;
            while(_loc3_)
            {
               if(_loc3_.§-<§() != false)
               {
                  _loc4_ = _loc3_.§5g§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§%!A§(_loc4_.§<V§);
                     _loc14_[0].Set(_loc22_.§^"§.x,_loc22_.§^"§.y);
                     _loc14_[1].Set(_loc22_.§=!O§.x,_loc22_.§^"§.y);
                     _loc14_[2].Set(_loc22_.§=!O§.x,_loc22_.§=!O§.y);
                     _loc14_[3].Set(_loc22_.§^"§.x,_loc22_.§=!O§.y);
                     this.§@!a§.§[!^§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§70§();
                  }
               }
               _loc3_ = _loc3_.§70§();
            }
         }
         if(_loc1_ & b2DebugDraw.§`8§)
         {
            _loc3_ = this.§3!e§;
            while(_loc3_)
            {
               _loc11_ = §%+§;
               _loc11_.R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§]!8§();
               this.§@!a§.§#!^§(_loc11_);
               _loc3_ = _loc3_.§,1§;
            }
         }
      }
      
      public function §>N§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§8!b§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§?l§.§'<§;
         broadPhase.§'!Z§(WorldQueryWrapper,aabb);
      }
      
      public function §>!h§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§8!b§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§@w§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§%!B§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§'u§();
         }
         broadPhase = this.§?l§.§'<§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§'!Z§(WorldQueryWrapper,aabb);
      }
      
      public function §-@§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§8!b§ = null;
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
         broadPhase = this.§?l§.§'<§;
         var aabb:b2AABB = new b2AABB();
         aabb.§^"§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§=!O§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§'!Z§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§8!b§ = null;
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
            return param1.§>x§;
         };
         broadPhase = this.§?l§.§'<§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §=!9§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §7B§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §%!k§() : b2Body
      {
         return this.§3!e§;
      }
      
      public function §&§() : b2Joint
      {
         return this.§8>§;
      }
      
      public function §[7§() : b2Contact
      {
         return this.§2!4§;
      }
      
      public function §+!`§() : Boolean
      {
         return (this.§3! § & §`!0§) > 0;
      }
      
      b2internal function §<!6§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§%!V§;
         while(_loc3_)
         {
            _loc3_.§^l§(param1);
            _loc3_ = _loc3_.§,1§;
         }
         var _loc4_:b2Island = this.§-$§;
         _loc4_.§;o§(this.§>!8§,this.§7!?§,this.§<!A§,null,this.§?l§.§,z§,this.§ !i§);
         _loc2_ = this.§3!e§;
         while(_loc2_)
         {
            _loc2_.§3! § &= ~b2Body.§'v§;
            _loc2_ = _loc2_.§,1§;
         }
         var _loc5_:b2Contact = this.§2!4§;
         while(_loc5_)
         {
            _loc5_.§3! § &= ~b2Contact.§'v§;
            _loc5_ = _loc5_.§,1§;
         }
         var _loc6_:b2Joint = this.§8>§;
         while(_loc6_)
         {
            _loc6_.§4p§ = false;
            _loc6_ = _loc6_.§,1§;
         }
         var _loc7_:int = this.§>!8§;
         var _loc8_:Vector.<b2Body> = this.§ Z§;
         var _loc9_:b2Body = this.§3!e§;
         while(_loc9_)
         {
            if(!(_loc9_.§3! § & b2Body.§'v§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§-<§() == false))
               {
                  if(_loc9_.§-V§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§=!b§();
                     _loc10_ = 0;
                     var _loc15_:* = _loc10_++;
                     _loc8_[_loc15_] = _loc9_;
                     _loc9_.§3! § |= b2Body.§'v§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§>!L§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§-V§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§2!4§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§4! §.§3! § & b2Contact.§'v§))
                              {
                                 if(!(_loc13_.§4! §.§?!V§() == true || _loc13_.§4! §.§,2§() == false || _loc13_.§4! §.§9b§() == false))
                                 {
                                    _loc4_.§5!A§(_loc13_.§4! §);
                                    _loc13_.§4! §.§3! § |= b2Contact.§'v§;
                                    _loc12_ = _loc13_.§3z§;
                                    if(!(_loc12_.§3! § & b2Body.§'v§))
                                    {
                                       var _loc16_:* = _loc10_++;
                                       _loc8_[_loc16_] = _loc12_;
                                       _loc12_.§3! § |= b2Body.§'v§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§2B§;
                           }
                           _loc14_ = _loc2_.§8>§;
                           while(_loc14_)
                           {
                              if(_loc14_.§7-§.§4p§ != true)
                              {
                                 _loc12_ = _loc14_.§3z§;
                                 if(_loc12_.§-<§() != false)
                                 {
                                    _loc4_.§1T§(_loc14_.§7-§);
                                    _loc14_.§7-§.§4p§ = true;
                                    if(!(_loc12_.§3! § & b2Body.§'v§))
                                    {
                                       _loc16_ = _loc10_++;
                                       _loc8_[_loc16_] = _loc12_;
                                       _loc12_.§3! § |= b2Body.§'v§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§2B§;
                           }
                        }
                     }
                     _loc4_.§<!6§(param1,this.§4!B§,this.§[!J§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§>!8§)
                     {
                        _loc2_ = _loc4_.§'!^§[_loc11_];
                        if(_loc2_.§-V§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§3! § &= ~b2Body.§'v§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§,1§;
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
         _loc2_ = this.§3!e§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§-<§() == false))
            {
               if(_loc2_.§-V§() != b2Body.b2_staticBody)
               {
                  _loc2_.§3§();
               }
            }
            _loc2_ = _loc2_.§,1§;
         }
         this.§?l§.§8!<§();
      }
      
      b2internal function §[!-§(param1:b2TimeStep) : void
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
         var _loc9_:b2Island = this.§-$§;
         _loc9_.§;o§(this.§>!8§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§?l§.§,z§,this.§ !i§);
         var _loc10_:Vector.<b2Body> = §<w§;
         _loc2_ = this.§3!e§;
         while(_loc2_)
         {
            _loc2_.§3! § &= ~b2Body.§'v§;
            _loc2_.m_sweep.§<!2§ = 0;
            _loc2_ = _loc2_.§,1§;
         }
         _loc11_ = this.§2!4§;
         while(_loc11_)
         {
            _loc11_.§3! § &= ~(b2Contact.§%!<§ | b2Contact.§'v§);
            _loc11_ = _loc11_.§,1§;
         }
         _loc8_ = this.§8>§;
         while(_loc8_)
         {
            _loc8_.§4p§ = false;
            _loc8_ = _loc8_.§,1§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§2!4§;
            for(; _loc11_; _loc11_ = _loc11_.§,1§)
            {
               if(!(_loc11_.§?!V§() == true || _loc11_.§,2§() == false || _loc11_.§;!2§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§3! § & b2Contact.§%!<§)
                  {
                     _loc19_ = _loc11_.§ !k§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§41§;
                     _loc4_ = _loc11_.§[0§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§-V§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§-V§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§<!2§;
                     if(_loc5_.m_sweep.§<!2§ < _loc6_.m_sweep.§<!2§)
                     {
                        _loc20_ = _loc6_.m_sweep.§<!2§;
                        _loc5_.m_sweep.§6!V§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§<!2§ < _loc5_.m_sweep.§<!2§)
                     {
                        _loc20_ = _loc5_.m_sweep.§<!2§;
                        _loc6_.m_sweep.§6!V§(_loc20_);
                     }
                     _loc19_ = _loc11_.§?z§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        _loc19_ = (1 - _loc19_) * _loc20_ + _loc19_;
                        if(_loc19_ > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§ !k§ = _loc19_;
                     _loc11_.§3! § |= b2Contact.§%!<§;
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
            _loc3_ = _loc12_.§41§;
            _loc4_ = _loc12_.§[0§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §5§.Set(_loc5_.m_sweep);
            §-!>§.Set(_loc6_.m_sweep);
            _loc5_.§6!V§(_loc13_);
            _loc6_.§6!V§(_loc13_);
            _loc12_.§ !=§(this.§?l§.§,z§);
            _loc12_.§3! § &= ~b2Contact.§%!<§;
            if(_loc12_.§?!V§() == true || _loc12_.§,2§() == false)
            {
               _loc5_.m_sweep.Set(§5§);
               _loc6_.m_sweep.Set(§-!>§);
               _loc5_.§`!e§();
               _loc6_.§`!e§();
            }
            else if(_loc12_.§9b§() != false)
            {
               _loc14_ = _loc5_;
               if(_loc14_.§-V§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§=!b§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§3! § |= b2Body.§'v§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§>!L§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§-V§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§2!4§;
                     while(_loc7_)
                     {
                        if(_loc9_.§7!?§ == _loc9_.§9!"§)
                        {
                           break;
                        }
                        if(!(_loc7_.§4! §.§3! § & b2Contact.§'v§))
                        {
                           if(!(_loc7_.§4! §.§?!V§() == true || _loc7_.§4! §.§,2§() == false || _loc7_.§4! §.§9b§() == false))
                           {
                              _loc9_.§5!A§(_loc7_.§4! §);
                              _loc7_.§4! §.§3! § |= b2Contact.§'v§;
                              _loc22_ = _loc7_.§3z§;
                              if(!(_loc22_.§3! § & b2Body.§'v§))
                              {
                                 if(_loc22_.§-V§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§6!V§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§3! § |= b2Body.§'v§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§2B§;
                     }
                     _loc21_ = _loc2_.§8>§;
                     while(_loc21_)
                     {
                        if(_loc9_.§<!A§ != _loc9_.§?!P§)
                        {
                           if(_loc21_.§7-§.§4p§ != true)
                           {
                              _loc22_ = _loc21_.§3z§;
                              if(_loc22_.§-<§() != false)
                              {
                                 _loc9_.§1T§(_loc21_.§7-§);
                                 _loc21_.§7-§.§4p§ = true;
                                 if(!(_loc22_.§3! § & b2Body.§'v§))
                                 {
                                    if(_loc22_.§-V§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§6!V§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§3! § |= b2Body.§'v§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§2B§;
                     }
                  }
               }
               _loc17_ = §!2§;
               _loc17_.§5h§ = false;
               _loc17_.§`"§ = (1 - _loc13_) * param1.§`"§;
               _loc17_.§%r§ = 1 / _loc17_.§`"§;
               _loc17_.§<!1§ = 0;
               _loc17_.§&!Z§ = param1.§&!Z§;
               _loc17_.§3!"§ = param1.§3!"§;
               _loc9_.§[!-§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§>!8§)
               {
                  _loc2_ = _loc9_.§'!^§[_loc18_];
                  _loc2_.§3! § &= ~b2Body.§'v§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§-V§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§3§();
                        _loc7_ = _loc2_.§2!4§;
                        while(_loc7_)
                        {
                           _loc7_.§4! §.§3! § &= ~b2Contact.§%!<§;
                           _loc7_ = _loc7_.§2B§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§7!?§)
               {
                  _loc11_ = _loc9_.§@O§[_loc18_];
                  _loc11_.§3! § &= ~(b2Contact.§%!<§ | b2Contact.§'v§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§<!A§)
               {
                  _loc8_ = _loc9_.§+g§[_loc18_];
                  _loc8_.§4p§ = false;
                  _loc18_++;
               }
               this.§?l§.§8!<§();
            }
         }
      }
      
      b2internal function §4!H§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§7m§();
         var _loc3_:b2Body = param1.§3B§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §1K§;
         switch(param1.§32§)
         {
            case b2Joint.§7!L§:
               this.§@!a§.§^p§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§+4§:
               _loc11_ = param1 as b2PulleyJoint;
               _loc12_ = _loc11_.§4!A§();
               _loc13_ = _loc11_.§>&§();
               this.§@!a§.§^p§(_loc12_,_loc8_,_loc10_);
               this.§@!a§.§^p§(_loc13_,_loc9_,_loc10_);
               this.§@!a§.§^p§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§ !,§:
               this.§@!a§.§^p§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§@!a§.§^p§(_loc6_,_loc8_,_loc10_);
               }
               this.§@!a§.§^p§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§@!a§.§^p§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §?%§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§32§)
         {
            case b2Shape.§!!W§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§?!L§(param2,_loc4_.§1!k§);
               _loc6_ = _loc4_.§5!`§;
               _loc7_ = param2.R.col1;
               this.§@!a§.§[a§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§2r§:
               _loc9_ = param1 as b2PolygonShape;
               _loc10_ = _loc9_.§7!U§();
               _loc11_ = _loc9_.§;Y§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§?!L§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§@!a§.§1@§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§>!"§:
               _loc13_ = param1 as b2EdgeShape;
               this.§@!a§.§^p§(b2Math.§?!L§(param2,_loc13_.GetVertex1()),b2Math.§?!L§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

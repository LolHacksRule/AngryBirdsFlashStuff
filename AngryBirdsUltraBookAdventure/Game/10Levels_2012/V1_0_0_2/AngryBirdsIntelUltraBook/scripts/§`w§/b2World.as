package §`w§
{
   import §!!R§.b2Controller;
   import §!!R§.b2ControllerEdge;
   import §2!+§.*;
   import §7!u§.*;
   import §72§.*;
   import §9!"§.*;
   import §>H§.*;
   import §break§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §9!X§:b2Transform = new b2Transform();
      
      private static var §9,§:b2Sweep = new b2Sweep();
      
      private static var §8!E§:b2Sweep = new b2Sweep();
      
      private static var §?!V§:b2TimeStep = new b2TimeStep();
      
      private static var §4!a§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §;!H§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §-!&§:Boolean;
      
      private static var §+!E§:Boolean;
      
      public static const §?!;§:int = 1;
      
      public static const §&!U§:int = 2;
       
      
      private var § o§:Vector.<b2Body>;
      
      b2internal var §;!R§:int;
      
      b2internal var §`!n§:b2ContactManager;
      
      private var §;!V§:b2ContactSolver;
      
      private var §'!C§:b2Island;
      
      b2internal var §"!Z§:b2Body;
      
      private var §"O§:b2Joint;
      
      b2internal var §]3§:b2Contact;
      
      private var §[r§:int;
      
      b2internal var §0V§:int;
      
      private var §&!o§:int;
      
      private var §-_§:b2Controller;
      
      private var § !>§:int;
      
      private var §>!?§:b2Vec2;
      
      private var §1!7§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §1;§:b2DestructionListener;
      
      private var §%N§:b2DebugDraw;
      
      private var §8z§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§ o§ = new Vector.<b2Body>();
         this.§`!n§ = new b2ContactManager();
         this.§;!V§ = new b2ContactSolver();
         this.§'!C§ = new b2Island();
         super();
         this.§1;§ = null;
         this.§%N§ = null;
         this.§"!Z§ = null;
         this.§]3§ = null;
         this.§"O§ = null;
         this.§-_§ = null;
         this.§[r§ = 0;
         this.§0V§ = 0;
         this.§&!o§ = 0;
         this.§ !>§ = 0;
         §-!&§ = true;
         §+!E§ = true;
         this.§1!7§ = param2;
         this.§>!?§ = param1;
         this.§8z§ = 0;
         this.§`!n§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§04§(_loc3_);
      }
      
      public function native(param1:b2DestructionListener) : void
      {
         this.§1;§ = param1;
      }
      
      public function §9!8§(param1:b2ContactFilter) : void
      {
         this.§`!n§.§2!1§ = param1;
      }
      
      public function §[-§(param1:b2ContactListener) : void
      {
         this.§`!n§.§7Q§ = param1;
      }
      
      public function §4`§(param1:b2DebugDraw) : void
      {
         this.§%N§ = param1;
      }
      
      public function final(param1:§<X§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§<X§ = this.§`!n§.§<Z§;
         this.§`!n§.§<Z§ = param1;
         var _loc3_:b2Body = this.§"!Z§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§92§;
            while(_loc4_)
            {
               _loc4_.§!!o§ = param1.§0!S§(_loc2_.§^!Q§(_loc4_.§!!o§),_loc4_);
               _loc4_ = _loc4_.§3=§;
            }
            _loc3_ = _loc3_.§3=§;
         }
      }
      
      public function §##§() : void
      {
         this.§`!n§.§<Z§.§##§();
      }
      
      public function §]y§() : int
      {
         return this.§`!n§.§<Z§.§]y§();
      }
      
      public function §04§(param1:b2BodyDef) : b2Body
      {
         if(this.§3C§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§-!I§ = null;
         _loc2_.§3=§ = this.§"!Z§;
         if(this.§"!Z§)
         {
            this.§"!Z§.§-!I§ = _loc2_;
         }
         this.§"!Z§ = _loc2_;
         ++this.§[r§;
         return _loc2_;
      }
      
      public function §2R§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§3C§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§"O§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§-!3§;
            if(this.§1;§)
            {
               this.§1;§.§@%§(_loc6_.§2B§);
            }
            this.§5!l§(_loc6_.§2B§);
         }
         var _loc3_:b2ControllerEdge = param1.§-_§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§?J§;
            _loc7_.§?!]§.§"!B§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§]3§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§-!3§;
            this.§`!n§.§[M§(_loc8_.§+2§);
         }
         param1.§]3§ = null;
         var _loc5_:b2Fixture = param1.§92§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§3=§;
            if(this.§1;§)
            {
               this.§1;§.§ !X§(_loc9_);
            }
            _loc9_.§!O§(this.§`!n§.§<Z§);
            _loc9_.§[M§();
         }
         param1.§92§ = null;
         param1.§+q§ = 0;
         if(param1.§-!I§)
         {
            param1.§-!I§.§3=§ = param1.§3=§;
         }
         if(param1.§3=§)
         {
            param1.§3=§.§-!I§ = param1.§-!I§;
         }
         if(param1 == this.§"!Z§)
         {
            this.§"!Z§ = param1.§3=§;
         }
         --this.§[r§;
      }
      
      public function §00§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§`4§(param1,null);
         _loc2_.§-!I§ = null;
         _loc2_.§3=§ = this.§"O§;
         if(this.§"O§)
         {
            this.§"O§.§-!I§ = _loc2_;
         }
         this.§"O§ = _loc2_;
         ++this.§&!o§;
         _loc2_.§#7§.§2B§ = _loc2_;
         _loc2_.§#7§.§,H§ = _loc2_.§0!w§;
         _loc2_.§#7§.§;+§ = null;
         _loc2_.§#7§.§-!3§ = _loc2_.§6!G§.§"O§;
         if(_loc2_.§6!G§.§"O§)
         {
            _loc2_.§6!G§.§"O§.§;+§ = _loc2_.§#7§;
         }
         _loc2_.§6!G§.§"O§ = _loc2_.§#7§;
         _loc2_.§3G§.§2B§ = _loc2_;
         _loc2_.§3G§.§,H§ = _loc2_.§6!G§;
         _loc2_.§3G§.§;+§ = null;
         _loc2_.§3G§.§-!3§ = _loc2_.§0!w§.§"O§;
         if(_loc2_.§0!w§.§"O§)
         {
            _loc2_.§0!w§.§"O§.§;+§ = _loc2_.§3G§;
         }
         _loc2_.§0!w§.§"O§ = _loc2_.§3G§;
         var _loc3_:b2Body = param1.§3x§;
         var _loc4_:b2Body = param1.§8P§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§"x§();
            while(_loc5_)
            {
               if(_loc5_.§,H§ == _loc3_)
               {
                  _loc5_.§+2§.§=!<§();
               }
               _loc5_ = _loc5_.§-!3§;
            }
         }
         return _loc2_;
      }
      
      public function §5!l§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§0e§;
         if(param1.§-!I§)
         {
            param1.§-!I§.§3=§ = param1.§3=§;
         }
         if(param1.§3=§)
         {
            param1.§3=§.§-!I§ = param1.§-!I§;
         }
         if(param1 == this.§"O§)
         {
            this.§"O§ = param1.§3=§;
         }
         var _loc3_:b2Body = param1.§6!G§;
         var _loc4_:b2Body = param1.§0!w§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§#7§.§;+§)
         {
            param1.§#7§.§;+§.§-!3§ = param1.§#7§.§-!3§;
         }
         if(param1.§#7§.§-!3§)
         {
            param1.§#7§.§-!3§.§;+§ = param1.§#7§.§;+§;
         }
         if(param1.§#7§ == _loc3_.§"O§)
         {
            _loc3_.§"O§ = param1.§#7§.§-!3§;
         }
         param1.§#7§.§;+§ = null;
         param1.§#7§.§-!3§ = null;
         if(param1.§3G§.§;+§)
         {
            param1.§3G§.§;+§.§-!3§ = param1.§3G§.§-!3§;
         }
         if(param1.§3G§.§-!3§)
         {
            param1.§3G§.§-!3§.§;+§ = param1.§3G§.§;+§;
         }
         if(param1.§3G§ == _loc4_.§"O§)
         {
            _loc4_.§"O§ = param1.§3G§.§-!3§;
         }
         param1.§3G§.§;+§ = null;
         param1.§3G§.§-!3§ = null;
         b2Joint.§[M§(param1,null);
         --this.§&!o§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§"x§();
            while(_loc5_)
            {
               if(_loc5_.§,H§ == _loc3_)
               {
                  _loc5_.§+2§.§=!<§();
               }
               _loc5_ = _loc5_.§-!3§;
            }
         }
      }
      
      public function §6!<§(param1:b2Controller) : b2Controller
      {
         param1.§3=§ = this.§-_§;
         param1.§-!I§ = null;
         this.§-_§ = param1;
         param1.m_world = this;
         ++this.§ !>§;
         return param1;
      }
      
      public function §%!@§(param1:b2Controller) : void
      {
         if(param1.§-!I§)
         {
            param1.§-!I§.§3=§ = param1.§3=§;
         }
         if(param1.§3=§)
         {
            param1.§3=§.§-!I§ = param1.§-!I§;
         }
         if(this.§-_§ == param1)
         {
            this.§-_§ = param1.§3=§;
         }
         --this.§ !>§;
      }
      
      public function §9!h§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§3=§ = this.§-_§;
         param1.§-!I§ = null;
         if(this.§-_§)
         {
            this.§-_§.§-!I§ = param1;
         }
         this.§-_§ = param1;
         ++this.§ !>§;
         param1.m_world = this;
         return param1;
      }
      
      public function §]B§(param1:b2Controller) : void
      {
         param1.§49§();
         if(param1.§3=§)
         {
            param1.§3=§.§-!I§ = param1.§-!I§;
         }
         if(param1.§-!I§)
         {
            param1.§-!I§.§3=§ = param1.§3=§;
         }
         if(param1 == this.§-_§)
         {
            this.§-_§ = param1.§3=§;
         }
         --this.§ !>§;
      }
      
      public function §;#§(param1:Boolean) : void
      {
         §-!&§ = param1;
      }
      
      public function §,[§(param1:Boolean) : void
      {
         §+!E§ = param1;
      }
      
      public function §]b§() : int
      {
         return this.§[r§;
      }
      
      public function § !3§() : int
      {
         return this.§&!o§;
      }
      
      public function §],§() : int
      {
         return this.§0V§;
      }
      
      public function §<!2§(param1:b2Vec2) : void
      {
         this.§>!?§ = param1;
      }
      
      public function §5B§() : b2Vec2
      {
         return this.§>!?§;
      }
      
      public function §@w§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §#$§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§;!R§ & §?!;§)
         {
            this.§`!n§.§0a§();
            this.§;!R§ &= ~§?!;§;
         }
         this.§;!R§ |= §&!U§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§^Z§ = param1;
         _loc4_.§>!,§ = param2;
         _loc4_.§44§ = param3;
         if(param1 > 0)
         {
            _loc4_.§[!%§ = 1 / param1;
         }
         else
         {
            _loc4_.§[!%§ = 0;
         }
         _loc4_.§87§ = this.§8z§ * param1;
         _loc4_.§[8§ = §-!&§;
         this.§`!n§.§`!"§();
         if(_loc4_.§^Z§ > 0)
         {
            this.§3!=§(_loc4_);
         }
         if(§+!E§ && _loc4_.§^Z§ > 0)
         {
            this.§0P§(_loc4_);
         }
         if(_loc4_.§^Z§ > 0)
         {
            this.§8z§ = _loc4_.§[!%§;
         }
         this.§;!R§ &= ~§&!U§;
      }
      
      public function §45§() : void
      {
         var _loc1_:b2Body = this.§"!Z§;
         while(_loc1_)
         {
            _loc1_.§84§.§`!5§();
            _loc1_.§3!T§ = 0;
            _loc1_ = _loc1_.§3=§;
         }
      }
      
      public function §?!J§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§<X§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§%N§ == null)
         {
            return;
         }
         this.§%N§.§%C§.graphics.clear();
         var _loc1_:uint = this.§%N§.§3F§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§;!s§)
         {
            _loc3_ = this.§"!Z§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§=!e§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§8!f§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§>A§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§2!r§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§>A§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§2!r§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§>A§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§>A§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§>A§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§3=§;
               }
               _loc3_ = _loc3_.§3=§;
            }
         }
         if(_loc1_ & b2DebugDraw.§5!9§)
         {
            _loc6_ = this.§"O§;
            while(_loc6_)
            {
               this.§?!B§(_loc6_);
               _loc6_ = _loc6_.§3=§;
            }
         }
         if(_loc1_ & b2DebugDraw.§%!n§)
         {
            _loc16_ = this.§-_§;
            while(_loc16_)
            {
               _loc16_.§#!n§(this.§%N§);
               _loc16_ = _loc16_.§3=§;
            }
         }
         if(_loc1_ & b2DebugDraw.§!-§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§`!n§.§]3§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§?!l§();
               _loc19_ = _loc17_.§0+§();
               _loc20_ = _loc18_.§=g§().§;!A§();
               _loc21_ = _loc19_.§=g§().§;!A§();
               this.§%N§.§32§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§+!N§();
            }
         }
         if(_loc1_ & b2DebugDraw.§<9§)
         {
            _loc7_ = this.§`!n§.§<Z§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§"!Z§;
            while(_loc3_)
            {
               if(_loc3_.§8!f§() != false)
               {
                  _loc4_ = _loc3_.§=!e§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§^!Q§(_loc4_.§!!o§);
                     _loc14_[0].Set(_loc22_.§>!6§.x,_loc22_.§>!6§.y);
                     _loc14_[1].Set(_loc22_.§8!X§.x,_loc22_.§>!6§.y);
                     _loc14_[2].Set(_loc22_.§8!X§.x,_loc22_.§8!X§.y);
                     _loc14_[3].Set(_loc22_.§>!6§.x,_loc22_.§8!X§.y);
                     this.§%N§.§6!j§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§+!N§();
                  }
               }
               _loc3_ = _loc3_.§+!N§();
            }
         }
         if(_loc1_ & b2DebugDraw.§;!o§)
         {
            _loc3_ = this.§"!Z§;
            while(_loc3_)
            {
               (_loc11_ = §9!X§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§[!S§();
               this.§%N§.§ 0§(_loc11_);
               _loc3_ = _loc3_.§3=§;
            }
         }
      }
      
      public function §?B§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§<X§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§`!n§.§<Z§;
         broadPhase.§@!1§(WorldQueryWrapper,aabb);
      }
      
      public function §>#§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§<X§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§7l§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§2!0§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§5!_§();
         }
         broadPhase = this.§`!n§.§<Z§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§@!1§(WorldQueryWrapper,aabb);
      }
      
      public function §1v§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§<X§ = null;
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
         broadPhase = this.§`!n§.§<Z§;
         var aabb:b2AABB = new b2AABB();
         aabb.§>!6§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§8!X§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§@!1§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§<X§ = null;
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
            return param1.§&y§;
         };
         broadPhase = this.§`!n§.§<Z§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §=!L§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §%!0§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §7!"§() : b2Body
      {
         return this.§"!Z§;
      }
      
      public function §+!<§() : b2Joint
      {
         return this.§"O§;
      }
      
      public function §"x§() : b2Contact
      {
         return this.§]3§;
      }
      
      public function §3C§() : Boolean
      {
         return (this.§;!R§ & §&!U§) > 0;
      }
      
      b2internal function §3!=§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§-_§;
         while(_loc3_)
         {
            _loc3_.§#$§(param1);
            _loc3_ = _loc3_.§3=§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§'!C§).§%%§(this.§[r§,this.§0V§,this.§&!o§,null,this.§`!n§.§7Q§,this.§;!V§);
         _loc2_ = this.§"!Z§;
         while(_loc2_)
         {
            _loc2_.§;!R§ &= ~b2Body.§#!`§;
            _loc2_ = _loc2_.§3=§;
         }
         var _loc5_:b2Contact = this.§]3§;
         while(_loc5_)
         {
            _loc5_.§;!R§ &= ~b2Contact.§#!`§;
            _loc5_ = _loc5_.§3=§;
         }
         var _loc6_:b2Joint = this.§"O§;
         while(_loc6_)
         {
            _loc6_.§,![§ = false;
            _loc6_ = _loc6_.§3=§;
         }
         var _loc7_:int = this.§[r§;
         var _loc8_:Vector.<b2Body> = this.§ o§;
         var _loc9_:b2Body = this.§"!Z§;
         while(_loc9_)
         {
            if(!(_loc9_.§;!R§ & b2Body.§#!`§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§8!f§() == false))
               {
                  if(_loc9_.§2!r§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§49§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§;!R§ |= b2Body.§#!`§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§'!=§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§2!r§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§]3§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§+2§.§;!R§ & b2Contact.§#!`§))
                              {
                                 if(!(_loc13_.§+2§.§2r§() == true || _loc13_.§+2§.§&Y§() == false || _loc13_.§+2§.§!u§() == false))
                                 {
                                    _loc4_.§<!V§(_loc13_.§+2§);
                                    _loc13_.§+2§.§;!R§ |= b2Contact.§#!`§;
                                    if(!((_loc12_ = _loc13_.§,H§).§;!R§ & b2Body.§#!`§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§;!R§ |= b2Body.§#!`§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§-!3§;
                           }
                           _loc14_ = _loc2_.§"O§;
                           while(_loc14_)
                           {
                              if(_loc14_.§2B§.§,![§ != true)
                              {
                                 if((_loc12_ = _loc14_.§,H§).§8!f§() != false)
                                 {
                                    _loc4_.§>!l§(_loc14_.§2B§);
                                    _loc14_.§2B§.§,![§ = true;
                                    if(!(_loc12_.§;!R§ & b2Body.§#!`§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§;!R§ |= b2Body.§#!`§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§-!3§;
                           }
                        }
                     }
                     _loc4_.§3!=§(param1,this.§>!?§,this.§1!7§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§[r§)
                     {
                        _loc2_ = _loc4_.§-!l§[_loc11_];
                        if(_loc2_.§2!r§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§;!R§ &= ~b2Body.§#!`§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§3=§;
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
         _loc2_ = this.§"!Z§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§8!f§() == false))
            {
               if(_loc2_.§2!r§() != b2Body.b2_staticBody)
               {
                  _loc2_.§-!6§();
               }
            }
            _loc2_ = _loc2_.§3=§;
         }
         this.§`!n§.§0a§();
      }
      
      b2internal function §0P§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§'!C§).§%%§(this.§[r§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§`!n§.§7Q§,this.§;!V§);
         var _loc10_:Vector.<b2Body> = §4!a§;
         _loc2_ = this.§"!Z§;
         while(_loc2_)
         {
            _loc2_.§;!R§ &= ~b2Body.§#!`§;
            _loc2_.m_sweep.§3J§ = 0;
            _loc2_ = _loc2_.§3=§;
         }
         _loc11_ = this.§]3§;
         while(_loc11_)
         {
            _loc11_.§;!R§ &= ~(b2Contact.§;,§ | b2Contact.§#!`§);
            _loc11_ = _loc11_.§3=§;
         }
         _loc8_ = this.§"O§;
         while(_loc8_)
         {
            _loc8_.§,![§ = false;
            _loc8_ = _loc8_.§3=§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§]3§;
            while(_loc11_)
            {
               if(!(_loc11_.§2r§() == true || _loc11_.§&Y§() == false || _loc11_.§else§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§;!R§ & b2Contact.§;,§)
                  {
                     _loc19_ = _loc11_.§7!W§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§50§;
                     _loc4_ = _loc11_.§'z§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§2!r§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§2!r§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr604:
                        _loc11_ = _loc11_.§3=§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§3J§;
                     if(_loc5_.m_sweep.§3J§ < _loc6_.m_sweep.§3J§)
                     {
                        _loc20_ = _loc6_.m_sweep.§3J§;
                        _loc5_.m_sweep.§]!W§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§3J§ < _loc5_.m_sweep.§3J§)
                     {
                        _loc20_ = _loc5_.m_sweep.§3J§;
                        _loc6_.m_sweep.§]!W§(_loc20_);
                     }
                     _loc19_ = _loc11_.§0_§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§7!W§ = _loc19_;
                     _loc11_.§;!R§ |= b2Contact.§;,§;
                     §§goto(addr604);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr604);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§50§;
            _loc4_ = _loc12_.§'z§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §9,§.Set(_loc5_.m_sweep);
            §8!E§.Set(_loc6_.m_sweep);
            _loc5_.§]!W§(_loc13_);
            _loc6_.§]!W§(_loc13_);
            _loc12_.§6!^§(this.§`!n§.§7Q§);
            _loc12_.§;!R§ &= ~b2Contact.§;,§;
            if(_loc12_.§2r§() == true || _loc12_.§&Y§() == false)
            {
               _loc5_.m_sweep.Set(§9,§);
               _loc6_.m_sweep.Set(§8!E§);
               _loc5_.§0!y§();
               _loc6_.§0!y§();
            }
            else if(_loc12_.§!u§() != false)
            {
               if((_loc14_ = _loc5_).§2!r§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§49§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§;!R§ |= b2Body.§#!`§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§'!=§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§2!r§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§]3§;
                     while(_loc7_)
                     {
                        if(_loc9_.§0V§ == _loc9_.§?!m§)
                        {
                           break;
                        }
                        if(!(_loc7_.§+2§.§;!R§ & b2Contact.§#!`§))
                        {
                           if(!(_loc7_.§+2§.§2r§() == true || _loc7_.§+2§.§&Y§() == false || _loc7_.§+2§.§!u§() == false))
                           {
                              _loc9_.§<!V§(_loc7_.§+2§);
                              _loc7_.§+2§.§;!R§ |= b2Contact.§#!`§;
                              if(!((_loc22_ = _loc7_.§,H§).§;!R§ & b2Body.§#!`§))
                              {
                                 if(_loc22_.§2!r§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§]!W§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§;!R§ |= b2Body.§#!`§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§-!3§;
                     }
                     _loc21_ = _loc2_.§"O§;
                     while(_loc21_)
                     {
                        if(_loc9_.§&!o§ != _loc9_.§ !r§)
                        {
                           if(_loc21_.§2B§.§,![§ != true)
                           {
                              if((_loc22_ = _loc21_.§,H§).§8!f§() != false)
                              {
                                 _loc9_.§>!l§(_loc21_.§2B§);
                                 _loc21_.§2B§.§,![§ = true;
                                 if(!(_loc22_.§;!R§ & b2Body.§#!`§))
                                 {
                                    if(_loc22_.§2!r§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§]!W§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§;!R§ |= b2Body.§#!`§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§-!3§;
                     }
                  }
               }
               (_loc17_ = §?!V§).§[8§ = false;
               _loc17_.§^Z§ = (1 - _loc13_) * param1.§^Z§;
               _loc17_.§[!%§ = 1 / _loc17_.§^Z§;
               _loc17_.§87§ = 0;
               _loc17_.§>!,§ = param1.§>!,§;
               _loc17_.§44§ = param1.§44§;
               _loc9_.§0P§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§[r§)
               {
                  _loc2_ = _loc9_.§-!l§[_loc18_];
                  _loc2_.§;!R§ &= ~b2Body.§#!`§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§2!r§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§-!6§();
                        _loc7_ = _loc2_.§]3§;
                        while(_loc7_)
                        {
                           _loc7_.§+2§.§;!R§ &= ~b2Contact.§;,§;
                           _loc7_ = _loc7_.§-!3§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§0V§)
               {
                  _loc11_ = _loc9_.§+G§[_loc18_];
                  _loc11_.§;!R§ &= ~(b2Contact.§;,§ | b2Contact.§#!`§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§&!o§)
               {
                  (_loc8_ = _loc9_.§-!0§[_loc18_]).§,![§ = false;
                  _loc18_++;
               }
               this.§`!n§.§0a§();
            }
         }
      }
      
      b2internal function §?!B§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§@!F§();
         var _loc3_:b2Body = param1.§<!J§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §;!H§;
         switch(param1.§+!?§)
         {
            case b2Joint.§09§:
               this.§%N§.§32§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§+!L§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§,!?§();
               _loc13_ = _loc11_.§=!§();
               this.§%N§.§32§(_loc12_,_loc8_,_loc10_);
               this.§%N§.§32§(_loc13_,_loc9_,_loc10_);
               this.§%N§.§32§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§#F§:
               this.§%N§.§32§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§%N§.§32§(_loc6_,_loc8_,_loc10_);
               }
               this.§%N§.§32§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§%N§.§32§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §>A§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§+!?§)
         {
            case b2Shape.§=! §:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§'!6§(param2,_loc4_.§]x§);
               _loc6_ = _loc4_.§9!A§;
               _loc7_ = param2.R.col1;
               this.§%N§.§%u§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§6!t§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§6+§();
               _loc11_ = _loc9_.§ A§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§'!6§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§%N§.§`u§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§=Q§:
               _loc13_ = param1 as b2EdgeShape;
               this.§%N§.§32§(b2Math.§'!6§(param2,_loc13_.GetVertex1()),b2Math.§'!6§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

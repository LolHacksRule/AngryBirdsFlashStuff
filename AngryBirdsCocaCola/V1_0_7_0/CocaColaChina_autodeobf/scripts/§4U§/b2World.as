package §4U§
{
   import § Y§.*;
   import §#!M§.*;
   import §#U§.b2Controller;
   import §#U§.b2ControllerEdge;
   import §6$§.*;
   import §<!8§.*;
   import §>![§.*;
   import §`!O§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §'q§:b2Transform = new b2Transform();
      
      private static var §9K§:b2Sweep = new b2Sweep();
      
      private static var §43§:b2Sweep = new b2Sweep();
      
      private static var §?v§:b2TimeStep = new b2TimeStep();
      
      private static var §'n§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §>!"§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §]"§:Boolean;
      
      private static var §+[§:Boolean;
      
      public static const §9>§:int = 1;
      
      public static const §@M§:int = 2;
       
      
      private var §4T§:Vector.<b2Body>;
      
      b2internal var §^!J§:int;
      
      b2internal var §!u§:b2ContactManager;
      
      private var §%m§:b2ContactSolver;
      
      private var §'K§:b2Island;
      
      b2internal var §=!>§:b2Body;
      
      private var §'b§:b2Joint;
      
      b2internal var §3J§:b2Contact;
      
      private var §9v§:int;
      
      b2internal var §<!2§:int;
      
      private var §=u§:int;
      
      private var §1N§:b2Controller;
      
      private var §>!a§:int;
      
      private var §]§:b2Vec2;
      
      private var §'z§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §0@§:b2DestructionListener;
      
      private var §@u§:b2DebugDraw;
      
      private var § a§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§4T§ = new Vector.<b2Body>();
         this.§!u§ = new b2ContactManager();
         this.§%m§ = new b2ContactSolver();
         this.§'K§ = new b2Island();
         super();
         this.§0@§ = null;
         this.§@u§ = null;
         this.§=!>§ = null;
         this.§3J§ = null;
         this.§'b§ = null;
         this.§1N§ = null;
         this.§9v§ = 0;
         this.§<!2§ = 0;
         this.§=u§ = 0;
         this.§>!a§ = 0;
         §]"§ = true;
         §+[§ = true;
         this.§'z§ = param2;
         this.§]§ = param1;
         this.§ a§ = 0;
         this.§!u§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§!1§(_loc3_);
      }
      
      public function §3>§(param1:b2DestructionListener) : void
      {
         this.§0@§ = param1;
      }
      
      public function §==§(param1:b2ContactFilter) : void
      {
         this.§!u§.§&!X§ = param1;
      }
      
      public function §]![§(param1:b2ContactListener) : void
      {
         this.§!u§.§-!8§ = param1;
      }
      
      public function §>j§(param1:b2DebugDraw) : void
      {
         this.§@u§ = param1;
      }
      
      public function §=E§(param1:§=!!§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§=!!§ = this.§!u§.§4X§;
         this.§!u§.§4X§ = param1;
         var _loc3_:b2Body = this.§=!>§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§4B§;
            while(_loc4_)
            {
               _loc4_.§^!?§ = param1.§7N§(_loc2_.§#!$§(_loc4_.§^!?§),_loc4_);
               _loc4_ = _loc4_.§^!B§;
            }
            _loc3_ = _loc3_.§^!B§;
         }
      }
      
      public function §!!-§() : void
      {
         this.§!u§.§4X§.§!!-§();
      }
      
      public function §<e§() : int
      {
         return this.§!u§.§4X§.§<e§();
      }
      
      public function §!1§(param1:b2BodyDef) : b2Body
      {
         if(this.§ $§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§4d§ = null;
         _loc2_.§^!B§ = this.§=!>§;
         if(this.§=!>§)
         {
            this.§=!>§.§4d§ = _loc2_;
         }
         this.§=!>§ = _loc2_;
         ++this.§9v§;
         return _loc2_;
      }
      
      public function §=! §(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§ $§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§'b§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§+!Q§;
            if(this.§0@§)
            {
               this.§0@§.§2<§(_loc6_.§=!<§);
            }
            this.§6N§(_loc6_.§=!<§);
         }
         var _loc3_:b2ControllerEdge = param1.§1N§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§1!c§;
            _loc7_.§>o§.§5!'§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§3J§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§+!Q§;
            this.§!u§.§'D§(_loc8_.§<l§);
         }
         param1.§3J§ = null;
         var _loc5_:b2Fixture = param1.§4B§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§^!B§;
            if(this.§0@§)
            {
               this.§0@§.§@!_§(_loc9_);
            }
            _loc9_.§9!"§(this.§!u§.§4X§);
            _loc9_.§'D§();
         }
         param1.§4B§ = null;
         param1.§<!7§ = 0;
         if(param1.§4d§)
         {
            param1.§4d§.§^!B§ = param1.§^!B§;
         }
         if(param1.§^!B§)
         {
            param1.§^!B§.§4d§ = param1.§4d§;
         }
         if(param1 == this.§=!>§)
         {
            this.§=!>§ = param1.§^!B§;
         }
         --this.§9v§;
      }
      
      public function §&!-§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§&!W§(param1,null);
         _loc2_.§4d§ = null;
         _loc2_.§^!B§ = this.§'b§;
         if(this.§'b§)
         {
            this.§'b§.§4d§ = _loc2_;
         }
         this.§'b§ = _loc2_;
         ++this.§=u§;
         _loc2_.§<!c§.§=!<§ = _loc2_;
         _loc2_.§<!c§.§<!H§ = _loc2_.§%!#§;
         _loc2_.§<!c§.§8g§ = null;
         _loc2_.§<!c§.§+!Q§ = _loc2_.§2!I§.§'b§;
         if(_loc2_.§2!I§.§'b§)
         {
            _loc2_.§2!I§.§'b§.§8g§ = _loc2_.§<!c§;
         }
         _loc2_.§2!I§.§'b§ = _loc2_.§<!c§;
         _loc2_.§ K§.§=!<§ = _loc2_;
         _loc2_.§ K§.§<!H§ = _loc2_.§2!I§;
         _loc2_.§ K§.§8g§ = null;
         _loc2_.§ K§.§+!Q§ = _loc2_.§%!#§.§'b§;
         if(_loc2_.§%!#§.§'b§)
         {
            _loc2_.§%!#§.§'b§.§8g§ = _loc2_.§ K§;
         }
         _loc2_.§%!#§.§'b§ = _loc2_.§ K§;
         var _loc3_:b2Body = param1.§'@§;
         var _loc4_:b2Body = param1.§"!2§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§5!N§();
            while(_loc5_)
            {
               if(_loc5_.§<!H§ == _loc3_)
               {
                  _loc5_.§<l§.§'+§();
               }
               _loc5_ = _loc5_.§+!Q§;
            }
         }
         return _loc2_;
      }
      
      public function §6N§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§;!b§;
         if(param1.§4d§)
         {
            param1.§4d§.§^!B§ = param1.§^!B§;
         }
         if(param1.§^!B§)
         {
            param1.§^!B§.§4d§ = param1.§4d§;
         }
         if(param1 == this.§'b§)
         {
            this.§'b§ = param1.§^!B§;
         }
         var _loc3_:b2Body = param1.§2!I§;
         var _loc4_:b2Body = param1.§%!#§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§<!c§.§8g§)
         {
            param1.§<!c§.§8g§.§+!Q§ = param1.§<!c§.§+!Q§;
         }
         if(param1.§<!c§.§+!Q§)
         {
            param1.§<!c§.§+!Q§.§8g§ = param1.§<!c§.§8g§;
         }
         if(param1.§<!c§ == _loc3_.§'b§)
         {
            _loc3_.§'b§ = param1.§<!c§.§+!Q§;
         }
         param1.§<!c§.§8g§ = null;
         param1.§<!c§.§+!Q§ = null;
         if(param1.§ K§.§8g§)
         {
            param1.§ K§.§8g§.§+!Q§ = param1.§ K§.§+!Q§;
         }
         if(param1.§ K§.§+!Q§)
         {
            param1.§ K§.§+!Q§.§8g§ = param1.§ K§.§8g§;
         }
         if(param1.§ K§ == _loc4_.§'b§)
         {
            _loc4_.§'b§ = param1.§ K§.§+!Q§;
         }
         param1.§ K§.§8g§ = null;
         param1.§ K§.§+!Q§ = null;
         b2Joint.§'D§(param1,null);
         --this.§=u§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§5!N§();
            while(_loc5_)
            {
               if(_loc5_.§<!H§ == _loc3_)
               {
                  _loc5_.§<l§.§'+§();
               }
               _loc5_ = _loc5_.§+!Q§;
            }
         }
      }
      
      public function §%!J§(param1:b2Controller) : b2Controller
      {
         param1.§^!B§ = this.§1N§;
         param1.§4d§ = null;
         this.§1N§ = param1;
         param1.m_world = this;
         ++this.§>!a§;
         return param1;
      }
      
      public function §-!]§(param1:b2Controller) : void
      {
         if(param1.§4d§)
         {
            param1.§4d§.§^!B§ = param1.§^!B§;
         }
         if(param1.§^!B§)
         {
            param1.§^!B§.§4d§ = param1.§4d§;
         }
         if(this.§1N§ == param1)
         {
            this.§1N§ = param1.§^!B§;
         }
         --this.§>!a§;
      }
      
      public function §@!K§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§^!B§ = this.§1N§;
         param1.§4d§ = null;
         if(this.§1N§)
         {
            this.§1N§.§4d§ = param1;
         }
         this.§1N§ = param1;
         ++this.§>!a§;
         param1.m_world = this;
         return param1;
      }
      
      public function § 2§(param1:b2Controller) : void
      {
         param1.§ !J§();
         if(param1.§^!B§)
         {
            param1.§^!B§.§4d§ = param1.§4d§;
         }
         if(param1.§4d§)
         {
            param1.§4d§.§^!B§ = param1.§^!B§;
         }
         if(param1 == this.§1N§)
         {
            this.§1N§ = param1.§^!B§;
         }
         --this.§>!a§;
      }
      
      public function §0h§(param1:Boolean) : void
      {
         §]"§ = param1;
      }
      
      public function §7!X§(param1:Boolean) : void
      {
         §+[§ = param1;
      }
      
      public function §^K§() : int
      {
         return this.§9v§;
      }
      
      public function §`!I§() : int
      {
         return this.§=u§;
      }
      
      public function §;%§() : int
      {
         return this.§<!2§;
      }
      
      public function §69§(param1:b2Vec2) : void
      {
         this.§]§ = param1;
      }
      
      public function §'e§() : b2Vec2
      {
         return this.§]§;
      }
      
      public function §,c§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §>!7§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§^!J§ & §9>§)
         {
            this.§!u§.§@=§();
            this.§^!J§ &= ~§9>§;
         }
         this.§^!J§ |= §@M§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§5!+§ = param1;
         _loc4_.§%!4§ = param2;
         _loc4_.§`Z§ = param3;
         if(param1 > 0)
         {
            _loc4_.§&!N§ = 1 / param1;
         }
         else
         {
            _loc4_.§&!N§ = 0;
         }
         _loc4_.§8!W§ = this.§ a§ * param1;
         _loc4_.§9!3§ = §]"§;
         this.§!u§.§21§();
         if(_loc4_.§5!+§ > 0)
         {
            this.§1e§(_loc4_);
         }
         if(§+[§ && _loc4_.§5!+§ > 0)
         {
            this.§`Y§(_loc4_);
         }
         if(_loc4_.§5!+§ > 0)
         {
            this.§ a§ = _loc4_.§&!N§;
         }
         this.§^!J§ &= ~§@M§;
      }
      
      public function §%!T§() : void
      {
         var _loc1_:b2Body = this.§=!>§;
         while(_loc1_)
         {
            _loc1_.§9!a§.§`§();
            _loc1_.§#V§ = 0;
            _loc1_ = _loc1_.§^!B§;
         }
      }
      
      public function §=b§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§=!!§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§@u§ == null)
         {
            return;
         }
         this.§@u§.§"Q§.graphics.clear();
         var _loc1_:uint = this.§@u§.§ !H§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§?!5§)
         {
            _loc3_ = this.§=!>§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§<!9§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§1t§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§%s§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§6`§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§%s§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§6`§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§%s§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§%s§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§%s§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§^!B§;
               }
               _loc3_ = _loc3_.§^!B§;
            }
         }
         if(_loc1_ & b2DebugDraw.§'!T§)
         {
            _loc6_ = this.§'b§;
            while(_loc6_)
            {
               this.§!!B§(_loc6_);
               _loc6_ = _loc6_.§^!B§;
            }
         }
         if(_loc1_ & b2DebugDraw.§0!'§)
         {
            _loc16_ = this.§1N§;
            while(_loc16_)
            {
               _loc16_.§+6§(this.§@u§);
               _loc16_ = _loc16_.§^!B§;
            }
         }
         if(_loc1_ & b2DebugDraw.§2!O§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§!u§.§3J§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§7#§();
               _loc19_ = _loc17_.§ O§();
               _loc20_ = _loc18_.§0^§().§3!T§();
               _loc21_ = _loc19_.§0^§().§3!T§();
               this.§@u§.§4_§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§#!3§();
            }
         }
         if(_loc1_ & b2DebugDraw.§?l§)
         {
            _loc7_ = this.§!u§.§4X§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§=!>§;
            while(_loc3_)
            {
               if(_loc3_.§1t§() != false)
               {
                  _loc4_ = _loc3_.§<!9§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§#!$§(_loc4_.§^!?§);
                     _loc14_[0].Set(_loc22_.§'!K§.x,_loc22_.§'!K§.y);
                     _loc14_[1].Set(_loc22_.§#W§.x,_loc22_.§'!K§.y);
                     _loc14_[2].Set(_loc22_.§#W§.x,_loc22_.§#W§.y);
                     _loc14_[3].Set(_loc22_.§'!K§.x,_loc22_.§#W§.y);
                     this.§@u§.§+w§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§#!3§();
                  }
               }
               _loc3_ = _loc3_.§#!3§();
            }
         }
         if(_loc1_ & b2DebugDraw.§<!]§)
         {
            _loc3_ = this.§=!>§;
            while(_loc3_)
            {
               (_loc11_ = §'q§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§@u§.§7L§(_loc11_);
               _loc3_ = _loc3_.§^!B§;
            }
         }
      }
      
      public function §3%§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§=!!§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§!u§.§4X§;
         broadPhase.§6J§(WorldQueryWrapper,aabb);
      }
      
      public function §?!3§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§=!!§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§#!J§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§1!J§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§4!R§();
         }
         broadPhase = this.§!u§.§4X§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§6J§(WorldQueryWrapper,aabb);
      }
      
      public function §1!X§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§=!!§ = null;
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
         broadPhase = this.§!u§.§4X§;
         var aabb:b2AABB = new b2AABB();
         aabb.§'!K§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§#W§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§6J§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§=!!§ = null;
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
            return param1.§3!c§;
         };
         broadPhase = this.§!u§.§4X§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §8j§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §5o§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §'j§() : b2Body
      {
         return this.§=!>§;
      }
      
      public function §do§() : b2Joint
      {
         return this.§'b§;
      }
      
      public function §5!N§() : b2Contact
      {
         return this.§3J§;
      }
      
      public function § $§() : Boolean
      {
         return (this.§^!J§ & §@M§) > 0;
      }
      
      b2internal function §1e§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§1N§;
         while(_loc3_)
         {
            _loc3_.§>!7§(param1);
            _loc3_ = _loc3_.§^!B§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§'K§).§,?§(this.§9v§,this.§<!2§,this.§=u§,null,this.§!u§.§-!8§,this.§%m§);
         _loc2_ = this.§=!>§;
         while(_loc2_)
         {
            _loc2_.§^!J§ &= ~b2Body.§5&§;
            _loc2_ = _loc2_.§^!B§;
         }
         var _loc5_:b2Contact = this.§3J§;
         while(_loc5_)
         {
            _loc5_.§^!J§ &= ~b2Contact.§5&§;
            _loc5_ = _loc5_.§^!B§;
         }
         var _loc6_:b2Joint = this.§'b§;
         while(_loc6_)
         {
            _loc6_.§<!F§ = false;
            _loc6_ = _loc6_.§^!B§;
         }
         var _loc7_:int = this.§9v§;
         var _loc8_:Vector.<b2Body> = this.§4T§;
         var _loc9_:b2Body = this.§=!>§;
         while(_loc9_)
         {
            if(!(_loc9_.§^!J§ & b2Body.§5&§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§1t§() == false))
               {
                  if(_loc9_.§6`§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§ !J§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§^!J§ |= b2Body.§5&§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§,[§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§6`§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§3J§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§<l§.§^!J§ & b2Contact.§5&§))
                              {
                                 if(!(_loc13_.§<l§.§]y§() == true || _loc13_.§<l§.§=!S§() == false || _loc13_.§<l§.§9m§() == false))
                                 {
                                    _loc4_.§2R§(_loc13_.§<l§);
                                    _loc13_.§<l§.§^!J§ |= b2Contact.§5&§;
                                    if(!((_loc12_ = _loc13_.§<!H§).§^!J§ & b2Body.§5&§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§^!J§ |= b2Body.§5&§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§+!Q§;
                           }
                           _loc14_ = _loc2_.§'b§;
                           while(_loc14_)
                           {
                              if(_loc14_.§=!<§.§<!F§ != true)
                              {
                                 if((_loc12_ = _loc14_.§<!H§).§1t§() != false)
                                 {
                                    _loc4_.§3Z§(_loc14_.§=!<§);
                                    _loc14_.§=!<§.§<!F§ = true;
                                    if(!(_loc12_.§^!J§ & b2Body.§5&§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§^!J§ |= b2Body.§5&§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§+!Q§;
                           }
                        }
                     }
                     _loc4_.§1e§(param1,this.§]§,this.§'z§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§9v§)
                     {
                        _loc2_ = _loc4_.§-E§[_loc11_];
                        if(_loc2_.§6`§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§^!J§ &= ~b2Body.§5&§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§^!B§;
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
         _loc2_ = this.§=!>§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§1t§() == false))
            {
               if(_loc2_.§6`§() != b2Body.b2_staticBody)
               {
                  _loc2_.§ !Y§();
               }
            }
            _loc2_ = _loc2_.§^!B§;
         }
         this.§!u§.§@=§();
      }
      
      b2internal function §`Y§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§'K§).§,?§(this.§9v§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§!u§.§-!8§,this.§%m§);
         var _loc10_:Vector.<b2Body> = §'n§;
         _loc2_ = this.§=!>§;
         while(_loc2_)
         {
            _loc2_.§^!J§ &= ~b2Body.§5&§;
            _loc2_.m_sweep.§9#§ = 0;
            _loc2_ = _loc2_.§^!B§;
         }
         _loc11_ = this.§3J§;
         while(_loc11_)
         {
            _loc11_.§^!J§ &= ~(b2Contact.§41§ | b2Contact.§5&§);
            _loc11_ = _loc11_.§^!B§;
         }
         _loc8_ = this.§'b§;
         while(_loc8_)
         {
            _loc8_.§<!F§ = false;
            _loc8_ = _loc8_.§^!B§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§3J§;
            while(_loc11_)
            {
               if(!(_loc11_.§]y§() == true || _loc11_.§=!S§() == false || _loc11_.§>>§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§^!J§ & b2Contact.§41§)
                  {
                     _loc19_ = _loc11_.§;y§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§'c§;
                     _loc4_ = _loc11_.§"!^§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§6`§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§6`§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr587:
                        _loc11_ = _loc11_.§^!B§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§9#§;
                     if(_loc5_.m_sweep.§9#§ < _loc6_.m_sweep.§9#§)
                     {
                        _loc20_ = _loc6_.m_sweep.§9#§;
                        _loc5_.m_sweep.§;8§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§9#§ < _loc5_.m_sweep.§9#§)
                     {
                        _loc20_ = _loc5_.m_sweep.§9#§;
                        _loc6_.m_sweep.§;8§(_loc20_);
                     }
                     _loc19_ = _loc11_.§0c§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§;y§ = _loc19_;
                     _loc11_.§^!J§ |= b2Contact.§41§;
                     §§goto(addr587);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr587);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§'c§;
            _loc4_ = _loc12_.§"!^§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §9K§.Set(_loc5_.m_sweep);
            §43§.Set(_loc6_.m_sweep);
            _loc5_.§;8§(_loc13_);
            _loc6_.§;8§(_loc13_);
            _loc12_.§7!=§(this.§!u§.§-!8§);
            _loc12_.§^!J§ &= ~b2Contact.§41§;
            if(_loc12_.§]y§() == true || _loc12_.§=!S§() == false)
            {
               _loc5_.m_sweep.Set(§9K§);
               _loc6_.m_sweep.Set(§43§);
               _loc5_.§4!O§();
               _loc6_.§4!O§();
            }
            else if(_loc12_.§9m§() != false)
            {
               if((_loc14_ = _loc5_).§6`§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§ !J§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§^!J§ |= b2Body.§5&§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§,[§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§6`§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§3J§;
                     while(_loc7_)
                     {
                        if(_loc9_.§<!2§ == _loc9_.§`!9§)
                        {
                           break;
                        }
                        if(!(_loc7_.§<l§.§^!J§ & b2Contact.§5&§))
                        {
                           if(!(_loc7_.§<l§.§]y§() == true || _loc7_.§<l§.§=!S§() == false || _loc7_.§<l§.§9m§() == false))
                           {
                              _loc9_.§2R§(_loc7_.§<l§);
                              _loc7_.§<l§.§^!J§ |= b2Contact.§5&§;
                              if(!((_loc22_ = _loc7_.§<!H§).§^!J§ & b2Body.§5&§))
                              {
                                 if(_loc22_.§6`§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§;8§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§^!J§ |= b2Body.§5&§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§+!Q§;
                     }
                     _loc21_ = _loc2_.§'b§;
                     while(_loc21_)
                     {
                        if(_loc9_.§=u§ != _loc9_.§#!B§)
                        {
                           if(_loc21_.§=!<§.§<!F§ != true)
                           {
                              if((_loc22_ = _loc21_.§<!H§).§1t§() != false)
                              {
                                 _loc9_.§3Z§(_loc21_.§=!<§);
                                 _loc21_.§=!<§.§<!F§ = true;
                                 if(!(_loc22_.§^!J§ & b2Body.§5&§))
                                 {
                                    if(_loc22_.§6`§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§;8§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§^!J§ |= b2Body.§5&§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§+!Q§;
                     }
                  }
               }
               (_loc17_ = §?v§).§9!3§ = false;
               _loc17_.§5!+§ = (1 - _loc13_) * param1.§5!+§;
               _loc17_.§&!N§ = 1 / _loc17_.§5!+§;
               _loc17_.§8!W§ = 0;
               _loc17_.§%!4§ = param1.§%!4§;
               _loc17_.§`Z§ = param1.§`Z§;
               _loc9_.§`Y§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§9v§)
               {
                  _loc2_ = _loc9_.§-E§[_loc18_];
                  _loc2_.§^!J§ &= ~b2Body.§5&§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§6`§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§ !Y§();
                        _loc7_ = _loc2_.§3J§;
                        while(_loc7_)
                        {
                           _loc7_.§<l§.§^!J§ &= ~b2Contact.§41§;
                           _loc7_ = _loc7_.§+!Q§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§<!2§)
               {
                  _loc11_ = _loc9_.§][§[_loc18_];
                  _loc11_.§^!J§ &= ~(b2Contact.§41§ | b2Contact.§5&§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§=u§)
               {
                  (_loc8_ = _loc9_.§0O§[_loc18_]).§<!F§ = false;
                  _loc18_++;
               }
               this.§!u§.§@=§();
            }
         }
      }
      
      b2internal function §!!B§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§7!'§();
         var _loc3_:b2Body = param1.§[!"§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §>!"§;
         switch(param1.§'!c§)
         {
            case b2Joint.§else §:
               this.§@u§.§4_§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§[!`§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§[D§();
               _loc13_ = _loc11_.§]7§();
               this.§@u§.§4_§(_loc12_,_loc8_,_loc10_);
               this.§@u§.§4_§(_loc13_,_loc9_,_loc10_);
               this.§@u§.§4_§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§]&§:
               this.§@u§.§4_§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§@u§.§4_§(_loc6_,_loc8_,_loc10_);
               }
               this.§@u§.§4_§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§@u§.§4_§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §%s§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§'!c§)
         {
            case b2Shape.§4!c§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§8L§(param2,_loc4_.§1!G§);
               _loc6_ = _loc4_.§2B§;
               _loc7_ = param2.R.col1;
               this.§@u§.§3!B§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§6!2§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§%2§();
               _loc11_ = _loc9_.§?!Y§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§8L§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§@u§.§]!7§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§-!<§:
               _loc13_ = param1 as b2EdgeShape;
               this.§@u§.§4_§(b2Math.§8L§(param2,_loc13_.GetVertex1()),b2Math.§8L§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

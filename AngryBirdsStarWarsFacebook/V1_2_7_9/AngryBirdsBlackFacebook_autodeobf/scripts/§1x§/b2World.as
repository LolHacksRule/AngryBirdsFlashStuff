package §1x§
{
   import §%!#§.*;
   import §+!,§.*;
   import §0!i§.b2Controller;
   import §0!i§.b2ControllerEdge;
   import §2",§.*;
   import §9!s§.*;
   import §[!L§.*;
   import §^>§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §5#2§:b2Transform = new b2Transform();
      
      private static var §+"_§:b2Sweep = new b2Sweep();
      
      private static var §[G§:b2Sweep = new b2Sweep();
      
      private static var §?A§:b2TimeStep = new b2TimeStep();
      
      private static var §^!V§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §;"a§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var § #'§:Boolean;
      
      private static var §&!C§:Boolean;
      
      public static const §;"L§:int = 1;
      
      public static const §!!K§:int = 2;
       
      
      private var §&;§:Vector.<b2Body>;
      
      b2internal var §7K§:int;
      
      b2internal var §+1§:b2ContactManager;
      
      private var §>"N§:b2ContactSolver;
      
      private var §'"%§:b2Island;
      
      b2internal var §,"P§:b2Body;
      
      private var §8!@§:b2Joint;
      
      b2internal var §]"X§:b2Contact;
      
      private var §%_§:int;
      
      b2internal var § # §:int;
      
      private var §;"w§:int;
      
      private var §!o§:b2Controller;
      
      private var §0#-§:int;
      
      private var §%,§:b2Vec2;
      
      private var §6"-§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §7O§:b2DestructionListener;
      
      private var §="=§:b2DebugDraw;
      
      private var §9"j§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§&;§ = new Vector.<b2Body>();
         this.§+1§ = new b2ContactManager();
         this.§>"N§ = new b2ContactSolver();
         this.§'"%§ = new b2Island();
         super();
         this.§7O§ = null;
         this.§="=§ = null;
         this.§,"P§ = null;
         this.§]"X§ = null;
         this.§8!@§ = null;
         this.§!o§ = null;
         this.§%_§ = 0;
         this.§ # § = 0;
         this.§;"w§ = 0;
         this.§0#-§ = 0;
         § #'§ = true;
         §&!C§ = true;
         this.§6"-§ = param2;
         this.§%,§ = param1;
         this.§9"j§ = 0;
         this.§+1§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §8"9§(param1:b2DestructionListener) : void
      {
         this.§7O§ = param1;
      }
      
      public function §%!Z§(param1:b2ContactFilter) : void
      {
         this.§+1§.§4!"§ = param1;
      }
      
      public function §7"^§(param1:b2ContactListener) : void
      {
         this.§+1§.§7"p§ = param1;
      }
      
      public function §="o§(param1:b2DebugDraw) : void
      {
         this.§="=§ = param1;
      }
      
      public function §"G§(param1:§,"Q§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§,"Q§ = this.§+1§.§-!m§;
         this.§+1§.§-!m§ = param1;
         var _loc3_:b2Body = this.§,"P§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§]"$§;
            while(_loc4_)
            {
               _loc4_.§3"7§ = param1.§1"V§(_loc2_.§5L§(_loc4_.§3"7§),_loc4_);
               _loc4_ = _loc4_.§ z§;
            }
            _loc3_ = _loc3_.§ z§;
         }
      }
      
      public function §>x§() : void
      {
         this.§+1§.§-!m§.§>x§();
      }
      
      public function §&# §() : int
      {
         return this.§+1§.§-!m§.§&# §();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§4";§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§<@§ = null;
         _loc2_.§ z§ = this.§,"P§;
         if(this.§,"P§)
         {
            this.§,"P§.§<@§ = _loc2_;
         }
         this.§,"P§ = _loc2_;
         ++this.§%_§;
         return _loc2_;
      }
      
      public function DestroyBody(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§4";§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§8!@§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§#!0§;
            if(this.§7O§)
            {
               this.§7O§.§2#2§(_loc6_.§^P§);
            }
            this.DestroyJoint(_loc6_.§^P§);
         }
         var _loc3_:b2ControllerEdge = param1.§!o§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§]!3§;
            _loc7_.§%e§.§-"b§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§]"X§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§#!0§;
            this.§+1§.§%c§(_loc8_.§&#%§);
         }
         param1.§]"X§ = null;
         var _loc5_:b2Fixture = param1.§]"$§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§ z§;
            if(this.§7O§)
            {
               this.§7O§.§"!q§(_loc9_);
            }
            _loc9_.§,S§(this.§+1§.§-!m§);
            _loc9_.§%c§();
         }
         param1.§]"$§ = null;
         param1.§0"s§ = 0;
         if(param1.§<@§)
         {
            param1.§<@§.§ z§ = param1.§ z§;
         }
         if(param1.§ z§)
         {
            param1.§ z§.§<@§ = param1.§<@§;
         }
         if(param1 == this.§,"P§)
         {
            this.§,"P§ = param1.§ z§;
         }
         --this.§%_§;
      }
      
      public function CreateJoint(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§0"]§(param1,null);
         _loc2_.§<@§ = null;
         _loc2_.§ z§ = this.§8!@§;
         if(this.§8!@§)
         {
            this.§8!@§.§<@§ = _loc2_;
         }
         this.§8!@§ = _loc2_;
         ++this.§;"w§;
         _loc2_.§'"K§.§^P§ = _loc2_;
         _loc2_.§'"K§.other = _loc2_.§@!u§;
         _loc2_.§'"K§.§^!d§ = null;
         _loc2_.§'"K§.§#!0§ = _loc2_.§0"n§.§8!@§;
         if(_loc2_.§0"n§.§8!@§)
         {
            _loc2_.§0"n§.§8!@§.§^!d§ = _loc2_.§'"K§;
         }
         _loc2_.§0"n§.§8!@§ = _loc2_.§'"K§;
         _loc2_.§!!!§.§^P§ = _loc2_;
         _loc2_.§!!!§.other = _loc2_.§0"n§;
         _loc2_.§!!!§.§^!d§ = null;
         _loc2_.§!!!§.§#!0§ = _loc2_.§@!u§.§8!@§;
         if(_loc2_.§@!u§.§8!@§)
         {
            _loc2_.§@!u§.§8!@§.§^!d§ = _loc2_.§!!!§;
         }
         _loc2_.§@!u§.§8!@§ = _loc2_.§!!!§;
         var _loc3_:b2Body = param1.§!!x§;
         var _loc4_:b2Body = param1.§%!x§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§3!D§();
            while(_loc5_)
            {
               if(_loc5_.other == _loc3_)
               {
                  _loc5_.§&#%§.§'#$§();
               }
               _loc5_ = _loc5_.§#!0§;
            }
         }
         return _loc2_;
      }
      
      public function DestroyJoint(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§[!z§;
         if(param1.§<@§)
         {
            param1.§<@§.§ z§ = param1.§ z§;
         }
         if(param1.§ z§)
         {
            param1.§ z§.§<@§ = param1.§<@§;
         }
         if(param1 == this.§8!@§)
         {
            this.§8!@§ = param1.§ z§;
         }
         var _loc3_:b2Body = param1.§0"n§;
         var _loc4_:b2Body = param1.§@!u§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§'"K§.§^!d§)
         {
            param1.§'"K§.§^!d§.§#!0§ = param1.§'"K§.§#!0§;
         }
         if(param1.§'"K§.§#!0§)
         {
            param1.§'"K§.§#!0§.§^!d§ = param1.§'"K§.§^!d§;
         }
         if(param1.§'"K§ == _loc3_.§8!@§)
         {
            _loc3_.§8!@§ = param1.§'"K§.§#!0§;
         }
         param1.§'"K§.§^!d§ = null;
         param1.§'"K§.§#!0§ = null;
         if(param1.§!!!§.§^!d§)
         {
            param1.§!!!§.§^!d§.§#!0§ = param1.§!!!§.§#!0§;
         }
         if(param1.§!!!§.§#!0§)
         {
            param1.§!!!§.§#!0§.§^!d§ = param1.§!!!§.§^!d§;
         }
         if(param1.§!!!§ == _loc4_.§8!@§)
         {
            _loc4_.§8!@§ = param1.§!!!§.§#!0§;
         }
         param1.§!!!§.§^!d§ = null;
         param1.§!!!§.§#!0§ = null;
         b2Joint.§%c§(param1,null);
         --this.§;"w§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§3!D§();
            while(_loc5_)
            {
               if(_loc5_.other == _loc3_)
               {
                  _loc5_.§&#%§.§'#$§();
               }
               _loc5_ = _loc5_.§#!0§;
            }
         }
      }
      
      public function §9v§(param1:b2Controller) : b2Controller
      {
         param1.§ z§ = this.§!o§;
         param1.§<@§ = null;
         this.§!o§ = param1;
         param1.m_world = this;
         ++this.§0#-§;
         return param1;
      }
      
      public function §2"@§(param1:b2Controller) : void
      {
         if(param1.§<@§)
         {
            param1.§<@§.§ z§ = param1.§ z§;
         }
         if(param1.§ z§)
         {
            param1.§ z§.§<@§ = param1.§<@§;
         }
         if(this.§!o§ == param1)
         {
            this.§!o§ = param1.§ z§;
         }
         --this.§0#-§;
      }
      
      public function §+Z§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§ z§ = this.§!o§;
         param1.§<@§ = null;
         if(this.§!o§)
         {
            this.§!o§.§<@§ = param1;
         }
         this.§!o§ = param1;
         ++this.§0#-§;
         param1.m_world = this;
         return param1;
      }
      
      public function §1!H§(param1:b2Controller) : void
      {
         param1.§4"6§();
         if(param1.§ z§)
         {
            param1.§ z§.§<@§ = param1.§<@§;
         }
         if(param1.§<@§)
         {
            param1.§<@§.§ z§ = param1.§ z§;
         }
         if(param1 == this.§!o§)
         {
            this.§!o§ = param1.§ z§;
         }
         --this.§0#-§;
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         § #'§ = param1;
      }
      
      public function §,"0§(param1:Boolean) : void
      {
         §&!C§ = param1;
      }
      
      public function §9# §() : int
      {
         return this.§%_§;
      }
      
      public function §-!W§() : int
      {
         return this.§;"w§;
      }
      
      public function §@#'§() : int
      {
         return this.§ # §;
      }
      
      public function SetGravity(param1:b2Vec2) : void
      {
         this.§%,§ = param1;
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.§%,§;
      }
      
      public function § get§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         if(this.§7K§ & §;"L§)
         {
            this.§+1§.§9@§();
            this.§7K§ &= ~§;"L§;
         }
         this.§7K§ |= §!!K§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§&"%§ = param1;
         _loc4_.§&!I§ = param2;
         _loc4_.§0!T§ = param3;
         if(param1 > 0)
         {
            _loc4_.§3"S§ = 1 / param1;
         }
         else
         {
            _loc4_.§3"S§ = 0;
         }
         _loc4_.§<J§ = this.§9"j§ * param1;
         _loc4_.§56§ = § #'§;
         this.§+1§.§1!4§();
         if(_loc4_.§&"%§ > 0)
         {
            this.§]"K§(_loc4_);
         }
         if(§&!C§ && _loc4_.§&"%§ > 0)
         {
            this.§2!"§(_loc4_);
         }
         if(_loc4_.§&"%§ > 0)
         {
            this.§9"j§ = _loc4_.§3"S§;
         }
         this.§7K§ &= ~§!!K§;
      }
      
      public function ClearForces() : void
      {
         var _loc1_:b2Body = this.§,"P§;
         while(_loc1_)
         {
            _loc1_.§=w§.§@e§();
            _loc1_.§=!!§ = 0;
            _loc1_ = _loc1_.§ z§;
         }
      }
      
      public function §2<§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§,"Q§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§="=§ == null)
         {
            return;
         }
         this.§="=§.§]#1§.graphics.clear();
         var _loc1_:uint = this.§="=§.§+"F§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§&!&§)
         {
            _loc3_ = this.§,"P§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§]!P§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§;"J§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§ "N§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§;"J§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§ "N§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§;"J§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§;"J§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§;"J§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§ z§;
               }
               _loc3_ = _loc3_.§ z§;
            }
         }
         if(_loc1_ & b2DebugDraw.§?&§)
         {
            _loc6_ = this.§8!@§;
            while(_loc6_)
            {
               this.§0!G§(_loc6_);
               _loc6_ = _loc6_.§ z§;
            }
         }
         if(_loc1_ & b2DebugDraw.§6!s§)
         {
            _loc16_ = this.§!o§;
            while(_loc16_)
            {
               _loc16_.§%"L§(this.§="=§);
               _loc16_ = _loc16_.§ z§;
            }
         }
         if(_loc1_ & b2DebugDraw.§'S§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§+1§.§]"X§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§%$§();
               _loc19_ = _loc17_.§&#0§();
               _loc20_ = _loc18_.§++§().§%"E§();
               _loc21_ = _loc19_.§++§().§%"E§();
               this.§="=§.§;x§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§=!&§();
            }
         }
         if(_loc1_ & b2DebugDraw.§"P§)
         {
            _loc7_ = this.§+1§.§-!m§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§,"P§;
            while(_loc3_)
            {
               if(_loc3_.§]!P§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§5L§(_loc4_.§3"7§);
                     _loc14_[0].Set(_loc22_.§5-§.x,_loc22_.§5-§.y);
                     _loc14_[1].Set(_loc22_.§ "M§.x,_loc22_.§5-§.y);
                     _loc14_[2].Set(_loc22_.§ "M§.x,_loc22_.§ "M§.y);
                     _loc14_[3].Set(_loc22_.§5-§.x,_loc22_.§ "M§.y);
                     this.§="=§.§@F§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§=!&§();
                  }
               }
               _loc3_ = _loc3_.§=!&§();
            }
         }
         if(_loc1_ & b2DebugDraw.§+!!§)
         {
            _loc3_ = this.§,"P§;
            while(_loc3_)
            {
               (_loc11_ = §5#2§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§!"P§();
               this.§="=§.§6e§(_loc11_);
               _loc3_ = _loc3_.§ z§;
            }
         }
      }
      
      public function QueryAABB(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§,"Q§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§+1§.§-!m§;
         broadPhase.§8#+§(WorldQueryWrapper,aabb);
      }
      
      public function §'B§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§,"Q§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§^y§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().GetTransform()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§=X§();
         }
         broadPhase = this.§+1§.§-!m§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§8#+§(WorldQueryWrapper,aabb);
      }
      
      public function §=!B§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§,"Q§ = null;
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
         broadPhase = this.§+1§.§-!m§;
         var aabb:b2AABB = new b2AABB();
         aabb.§5-§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§ "M§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§8#+§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§,"Q§ = null;
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
            return param1.§3!3§;
         };
         broadPhase = this.§+1§.§-!m§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §;!3§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §2"G§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §9"Y§() : b2Body
      {
         return this.§,"P§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§8!@§;
      }
      
      public function §3!D§() : b2Contact
      {
         return this.§]"X§;
      }
      
      public function §4";§() : Boolean
      {
         return (this.§7K§ & §!!K§) > 0;
      }
      
      b2internal function §]"K§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§!o§;
         while(_loc3_)
         {
            _loc3_.Step(param1);
            _loc3_ = _loc3_.§ z§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§'"%§).§8!s§(this.§%_§,this.§ # §,this.§;"w§,null,this.§+1§.§7"p§,this.§>"N§);
         _loc2_ = this.§,"P§;
         while(_loc2_)
         {
            _loc2_.§7K§ &= ~b2Body.§"!M§;
            _loc2_ = _loc2_.§ z§;
         }
         var _loc5_:b2Contact = this.§]"X§;
         while(_loc5_)
         {
            _loc5_.§7K§ &= ~b2Contact.§"!M§;
            _loc5_ = _loc5_.§ z§;
         }
         var _loc6_:b2Joint = this.§8!@§;
         while(_loc6_)
         {
            _loc6_.§8!]§ = false;
            _loc6_ = _loc6_.§ z§;
         }
         var _loc7_:int = this.§%_§;
         var _loc8_:Vector.<b2Body> = this.§&;§;
         var _loc9_:b2Body = this.§,"P§;
         while(_loc9_)
         {
            if(!(_loc9_.§7K§ & b2Body.§"!M§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§]!P§() == false))
               {
                  if(_loc9_.§ "N§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§4"6§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§7K§ |= b2Body.§"!M§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§=#5§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§ "N§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§]"X§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§&#%§.§7K§ & b2Contact.§"!M§))
                              {
                                 if(!(_loc13_.§&#%§.§##-§() == true || _loc13_.§&#%§.§!"k§() == false || _loc13_.§&#%§.§"!4§() == false))
                                 {
                                    _loc4_.§?!-§(_loc13_.§&#%§);
                                    _loc13_.§&#%§.§7K§ |= b2Contact.§"!M§;
                                    if(!((_loc12_ = _loc13_.other).§7K§ & b2Body.§"!M§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§7K§ |= b2Body.§"!M§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§#!0§;
                           }
                           _loc14_ = _loc2_.§8!@§;
                           while(_loc14_)
                           {
                              if(_loc14_.§^P§.§8!]§ != true)
                              {
                                 if((_loc12_ = _loc14_.other).§]!P§() != false)
                                 {
                                    _loc4_.§,!L§(_loc14_.§^P§);
                                    _loc14_.§^P§.§8!]§ = true;
                                    if(!(_loc12_.§7K§ & b2Body.§"!M§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§7K§ |= b2Body.§"!M§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§#!0§;
                           }
                        }
                     }
                     _loc4_.§]"K§(param1,this.§%,§,this.§6"-§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§%_§)
                     {
                        _loc2_ = _loc4_.§<Q§[_loc11_];
                        if(_loc2_.§ "N§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§7K§ &= ~b2Body.§"!M§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§ z§;
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
         _loc2_ = this.§,"P§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§]!P§() == false))
            {
               if(_loc2_.§ "N§() != b2Body.b2_staticBody)
               {
                  _loc2_.§?"s§();
               }
            }
            _loc2_ = _loc2_.§ z§;
         }
         this.§+1§.§9@§();
      }
      
      b2internal function §2!"§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§'"%§).§8!s§(this.§%_§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§+1§.§7"p§,this.§>"N§);
         var _loc10_:Vector.<b2Body> = §^!V§;
         _loc2_ = this.§,"P§;
         while(_loc2_)
         {
            _loc2_.§7K§ &= ~b2Body.§"!M§;
            _loc2_.m_sweep.§;#1§ = 0;
            _loc2_ = _loc2_.§ z§;
         }
         _loc11_ = this.§]"X§;
         while(_loc11_)
         {
            _loc11_.§7K§ &= ~(b2Contact.§;"?§ | b2Contact.§"!M§);
            _loc11_.§3!V§ = 1;
            _loc11_ = _loc11_.§ z§;
         }
         _loc8_ = this.§8!@§;
         while(_loc8_)
         {
            _loc8_.§8!]§ = false;
            _loc8_ = _loc8_.§ z§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§]"X§;
            while(_loc11_)
            {
               if(!(_loc11_.§##-§() == true || _loc11_.§!"k§() == false || _loc11_.§4!d§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§7K§ & b2Contact.§;"?§)
                  {
                     _loc19_ = _loc11_.§3!V§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§0">§;
                     _loc4_ = _loc11_.§'#'§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§ "N§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§ "N§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr615:
                        _loc11_ = _loc11_.§ z§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§;#1§;
                     if(_loc5_.m_sweep.§;#1§ < _loc6_.m_sweep.§;#1§)
                     {
                        _loc20_ = _loc6_.m_sweep.§;#1§;
                        _loc5_.m_sweep.§5"x§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§;#1§ < _loc5_.m_sweep.§;#1§)
                     {
                        _loc20_ = _loc5_.m_sweep.§;#1§;
                        _loc6_.m_sweep.§5"x§(_loc20_);
                     }
                     _loc19_ = _loc11_.§&+§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§3!V§ = _loc19_;
                     _loc11_.§7K§ |= b2Contact.§;"?§;
                     §§goto(addr615);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr615);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§0">§;
            _loc4_ = _loc12_.§'#'§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §+"_§.Set(_loc5_.m_sweep);
            §[G§.Set(_loc6_.m_sweep);
            _loc5_.§5"x§(_loc13_);
            _loc6_.§5"x§(_loc13_);
            _loc12_.§,7§(this.§+1§.§7"p§);
            _loc12_.§7K§ &= ~b2Contact.§;"?§;
            if(_loc12_.§##-§() == true || _loc12_.§!"k§() == false)
            {
               _loc5_.m_sweep.Set(§+"_§);
               _loc6_.m_sweep.Set(§[G§);
               _loc5_.§"a§();
               _loc6_.§"a§();
            }
            else if(_loc12_.§"!4§() != false)
            {
               if((_loc14_ = _loc5_).§ "N§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§4"6§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§7K§ |= b2Body.§"!M§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§=#5§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§ "N§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§]"X§;
                     while(_loc7_)
                     {
                        if(_loc9_.§ # § == _loc9_.§"6§)
                        {
                           break;
                        }
                        if(!(_loc7_.§&#%§.§7K§ & b2Contact.§"!M§))
                        {
                           if(!(_loc7_.§&#%§.§##-§() == true || _loc7_.§&#%§.§!"k§() == false || _loc7_.§&#%§.§"!4§() == false))
                           {
                              _loc9_.§?!-§(_loc7_.§&#%§);
                              _loc7_.§&#%§.§7K§ |= b2Contact.§"!M§;
                              if(!((_loc22_ = _loc7_.other).§7K§ & b2Body.§"!M§))
                              {
                                 if(_loc22_.§ "N§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§5"x§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§7K§ |= b2Body.§"!M§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§#!0§;
                     }
                     _loc21_ = _loc2_.§8!@§;
                     while(_loc21_)
                     {
                        if(_loc9_.§;"w§ != _loc9_.§=-§)
                        {
                           if(_loc21_.§^P§.§8!]§ != true)
                           {
                              if((_loc22_ = _loc21_.other).§]!P§() != false)
                              {
                                 _loc9_.§,!L§(_loc21_.§^P§);
                                 _loc21_.§^P§.§8!]§ = true;
                                 if(!(_loc22_.§7K§ & b2Body.§"!M§))
                                 {
                                    if(_loc22_.§ "N§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§5"x§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§7K§ |= b2Body.§"!M§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§#!0§;
                     }
                  }
               }
               (_loc17_ = §?A§).§56§ = false;
               _loc17_.§&"%§ = (1 - _loc13_) * param1.§&"%§;
               _loc17_.§3"S§ = 1 / _loc17_.§&"%§;
               _loc17_.§<J§ = 1;
               _loc17_.§&!I§ = param1.§&!I§;
               _loc17_.§0!T§ = param1.§0!T§;
               _loc9_.§2!"§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§%_§)
               {
                  _loc2_ = _loc9_.§<Q§[_loc18_];
                  _loc2_.§7K§ &= ~b2Body.§"!M§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§ "N§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§?"s§();
                        _loc7_ = _loc2_.§]"X§;
                        while(_loc7_)
                        {
                           _loc7_.§&#%§.§7K§ &= ~b2Contact.§;"?§;
                           _loc7_ = _loc7_.§#!0§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§ # §)
               {
                  _loc11_ = _loc9_.§6"`§[_loc18_];
                  _loc11_.§7K§ &= ~(b2Contact.§;"?§ | b2Contact.§"!M§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§;"w§)
               {
                  (_loc8_ = _loc9_.§ !3§[_loc18_]).§8!]§ = false;
                  _loc18_++;
               }
               this.§+1§.§9@§();
            }
         }
      }
      
      b2internal function §0!G§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§5?§();
         var _loc3_:b2Body = param1.§1t§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §;"a§;
         switch(param1.§?I§)
         {
            case b2Joint.§17§:
               this.§="=§.§;x§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§7N§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§>!s§();
               _loc13_ = _loc11_.§,"$§();
               this.§="=§.§;x§(_loc12_,_loc8_,_loc10_);
               this.§="=§.§;x§(_loc13_,_loc9_,_loc10_);
               this.§="=§.§;x§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§4!P§:
               this.§="=§.§;x§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§="=§.§;x§(_loc6_,_loc8_,_loc10_);
               }
               this.§="=§.§;x§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§="=§.§;x§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §;"J§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§?I§)
         {
            case b2Shape.§">§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§2!>§(param2,_loc4_.§-6§);
               _loc6_ = _loc4_.§8!"§;
               _loc7_ = param2.R.col1;
               this.§="=§.§'"C§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§2!c§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§>4§();
               _loc11_ = _loc9_.§7"D§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§2!>§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§="=§.§%#"§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§>"Z§:
               _loc13_ = param1 as b2EdgeShape;
               this.§="=§.§;x§(b2Math.§2!>§(param2,_loc13_.GetVertex1()),b2Math.§2!>§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

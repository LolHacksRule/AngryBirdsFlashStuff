package §7!5§
{
   import §!!7§.*;
   import §%!h§.*;
   import §2!A§.b2Controller;
   import §2!A§.b2ControllerEdge;
   import §7!Y§.*;
   import §8!n§.*;
   import §;W§.*;
   import §@![§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §=!$§:b2Transform = new b2Transform();
      
      private static var §]F§:b2Sweep = new b2Sweep();
      
      private static var §8!I§:b2Sweep = new b2Sweep();
      
      private static var §8!#§:b2TimeStep = new b2TimeStep();
      
      private static var §!!?§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §7O§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §"!3§:Boolean;
      
      private static var §+3§:Boolean;
      
      public static const §4>§:int = 1;
      
      public static const §!`§:int = 2;
       
      
      private var §@!3§:Vector.<b2Body>;
      
      b2internal var §`M§:int;
      
      b2internal var § @§:b2ContactManager;
      
      private var §3$§:b2ContactSolver;
      
      private var §>v§:b2Island;
      
      b2internal var §^3§:b2Body;
      
      private var §4!h§:b2Joint;
      
      b2internal var §`a§:b2Contact;
      
      private var §,l§:int;
      
      b2internal var §2!D§:int;
      
      private var §=`§:int;
      
      private var §@!P§:b2Controller;
      
      private var §3!l§:int;
      
      private var §!!0§:b2Vec2;
      
      private var § K§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §!f§:b2DestructionListener;
      
      private var §77§:b2DebugDraw;
      
      private var §#z§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§@!3§ = new Vector.<b2Body>();
         this.§ @§ = new b2ContactManager();
         this.§3$§ = new b2ContactSolver();
         this.§>v§ = new b2Island();
         super();
         this.§!f§ = null;
         this.§77§ = null;
         this.§^3§ = null;
         this.§`a§ = null;
         this.§4!h§ = null;
         this.§@!P§ = null;
         this.§,l§ = 0;
         this.§2!D§ = 0;
         this.§=`§ = 0;
         this.§3!l§ = 0;
         §"!3§ = true;
         §+3§ = true;
         this.§ K§ = param2;
         this.§!!0§ = param1;
         this.§#z§ = 0;
         this.§ @§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§>!Z§(_loc3_);
      }
      
      public function §9m§(param1:b2DestructionListener) : void
      {
         this.§!f§ = param1;
      }
      
      public function §#,§(param1:b2ContactFilter) : void
      {
         this.§ @§.§?a§ = param1;
      }
      
      public function §^!]§(param1:b2ContactListener) : void
      {
         this.§ @§.§&!j§ = param1;
      }
      
      public function §,P§(param1:b2DebugDraw) : void
      {
         this.§77§ = param1;
      }
      
      public function §[!@§(param1:§>=§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§>=§ = this.§ @§.§+!1§;
         this.§ @§.§+!1§ = param1;
         var _loc3_:b2Body = this.§^3§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§%G§;
            while(_loc4_)
            {
               _loc4_.§4!!§ = param1.§ set§(_loc2_.§3!H§(_loc4_.§4!!§),_loc4_);
               _loc4_ = _loc4_.§%&§;
            }
            _loc3_ = _loc3_.§%&§;
         }
      }
      
      public function §>H§() : void
      {
         this.§ @§.§+!1§.§>H§();
      }
      
      public function §6!j§() : int
      {
         return this.§ @§.§+!1§.§6!j§();
      }
      
      public function §>!Z§(param1:b2BodyDef) : b2Body
      {
         if(this.§"!F§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§;!Z§ = null;
         _loc2_.§%&§ = this.§^3§;
         if(this.§^3§)
         {
            this.§^3§.§;!Z§ = _loc2_;
         }
         this.§^3§ = _loc2_;
         ++this.§,l§;
         return _loc2_;
      }
      
      public function §8Z§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§"!F§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§4!h§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§"!=§;
            if(this.§!f§)
            {
               this.§!f§.§2_§(_loc6_.§+!G§);
            }
            this.§,z§(_loc6_.§+!G§);
         }
         var _loc3_:b2ControllerEdge = param1.§@!P§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§#!-§;
            _loc7_.§8j§.§+!'§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§`a§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§"!=§;
            this.§ @§.§5^§(_loc8_.§+!Y§);
         }
         param1.§`a§ = null;
         var _loc5_:b2Fixture = param1.§%G§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§%&§;
            if(this.§!f§)
            {
               this.§!f§.§#o§(_loc9_);
            }
            _loc9_.§#j§(this.§ @§.§+!1§);
            _loc9_.§5^§();
         }
         param1.§%G§ = null;
         param1.§]h§ = 0;
         if(param1.§;!Z§)
         {
            param1.§;!Z§.§%&§ = param1.§%&§;
         }
         if(param1.§%&§)
         {
            param1.§%&§.§;!Z§ = param1.§;!Z§;
         }
         if(param1 == this.§^3§)
         {
            this.§^3§ = param1.§%&§;
         }
         --this.§,l§;
      }
      
      public function §;!0§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§class§(param1,null);
         _loc2_.§;!Z§ = null;
         _loc2_.§%&§ = this.§4!h§;
         if(this.§4!h§)
         {
            this.§4!h§.§;!Z§ = _loc2_;
         }
         this.§4!h§ = _loc2_;
         ++this.§=`§;
         _loc2_.§"<§.§+!G§ = _loc2_;
         _loc2_.§"<§.§]=§ = _loc2_.§30§;
         _loc2_.§"<§.§!l§ = null;
         _loc2_.§"<§.§"!=§ = _loc2_.§-!j§.§4!h§;
         if(_loc2_.§-!j§.§4!h§)
         {
            _loc2_.§-!j§.§4!h§.§!l§ = _loc2_.§"<§;
         }
         _loc2_.§-!j§.§4!h§ = _loc2_.§"<§;
         _loc2_.§9e§.§+!G§ = _loc2_;
         _loc2_.§9e§.§]=§ = _loc2_.§-!j§;
         _loc2_.§9e§.§!l§ = null;
         _loc2_.§9e§.§"!=§ = _loc2_.§30§.§4!h§;
         if(_loc2_.§30§.§4!h§)
         {
            _loc2_.§30§.§4!h§.§!l§ = _loc2_.§9e§;
         }
         _loc2_.§30§.§4!h§ = _loc2_.§9e§;
         var _loc3_:b2Body = param1.§1v§;
         var _loc4_:b2Body = param1.§<W§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§54§();
            while(_loc5_)
            {
               if(_loc5_.§]=§ == _loc3_)
               {
                  _loc5_.§+!Y§.§9q§();
               }
               _loc5_ = _loc5_.§"!=§;
            }
         }
         return _loc2_;
      }
      
      public function §,z§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§?f§;
         if(param1.§;!Z§)
         {
            param1.§;!Z§.§%&§ = param1.§%&§;
         }
         if(param1.§%&§)
         {
            param1.§%&§.§;!Z§ = param1.§;!Z§;
         }
         if(param1 == this.§4!h§)
         {
            this.§4!h§ = param1.§%&§;
         }
         var _loc3_:b2Body = param1.§-!j§;
         var _loc4_:b2Body = param1.§30§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§"<§.§!l§)
         {
            param1.§"<§.§!l§.§"!=§ = param1.§"<§.§"!=§;
         }
         if(param1.§"<§.§"!=§)
         {
            param1.§"<§.§"!=§.§!l§ = param1.§"<§.§!l§;
         }
         if(param1.§"<§ == _loc3_.§4!h§)
         {
            _loc3_.§4!h§ = param1.§"<§.§"!=§;
         }
         param1.§"<§.§!l§ = null;
         param1.§"<§.§"!=§ = null;
         if(param1.§9e§.§!l§)
         {
            param1.§9e§.§!l§.§"!=§ = param1.§9e§.§"!=§;
         }
         if(param1.§9e§.§"!=§)
         {
            param1.§9e§.§"!=§.§!l§ = param1.§9e§.§!l§;
         }
         if(param1.§9e§ == _loc4_.§4!h§)
         {
            _loc4_.§4!h§ = param1.§9e§.§"!=§;
         }
         param1.§9e§.§!l§ = null;
         param1.§9e§.§"!=§ = null;
         b2Joint.§5^§(param1,null);
         --this.§=`§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§54§();
            while(_loc5_)
            {
               if(_loc5_.§]=§ == _loc3_)
               {
                  _loc5_.§+!Y§.§9q§();
               }
               _loc5_ = _loc5_.§"!=§;
            }
         }
      }
      
      public function §<j§(param1:b2Controller) : b2Controller
      {
         param1.§%&§ = this.§@!P§;
         param1.§;!Z§ = null;
         this.§@!P§ = param1;
         param1.m_world = this;
         ++this.§3!l§;
         return param1;
      }
      
      public function §-r§(param1:b2Controller) : void
      {
         if(param1.§;!Z§)
         {
            param1.§;!Z§.§%&§ = param1.§%&§;
         }
         if(param1.§%&§)
         {
            param1.§%&§.§;!Z§ = param1.§;!Z§;
         }
         if(this.§@!P§ == param1)
         {
            this.§@!P§ = param1.§%&§;
         }
         --this.§3!l§;
      }
      
      public function §5!+§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§%&§ = this.§@!P§;
         param1.§;!Z§ = null;
         if(this.§@!P§)
         {
            this.§@!P§.§;!Z§ = param1;
         }
         this.§@!P§ = param1;
         ++this.§3!l§;
         param1.m_world = this;
         return param1;
      }
      
      public function §[!o§(param1:b2Controller) : void
      {
         param1.§;o§();
         if(param1.§%&§)
         {
            param1.§%&§.§;!Z§ = param1.§;!Z§;
         }
         if(param1.§;!Z§)
         {
            param1.§;!Z§.§%&§ = param1.§%&§;
         }
         if(param1 == this.§@!P§)
         {
            this.§@!P§ = param1.§%&§;
         }
         --this.§3!l§;
      }
      
      public function §`n§(param1:Boolean) : void
      {
         §"!3§ = param1;
      }
      
      public function §;!P§(param1:Boolean) : void
      {
         §+3§ = param1;
      }
      
      public function §>D§() : int
      {
         return this.§,l§;
      }
      
      public function §^s§() : int
      {
         return this.§=`§;
      }
      
      public function §5!>§() : int
      {
         return this.§2!D§;
      }
      
      public function §7!;§(param1:b2Vec2) : void
      {
         this.§!!0§ = param1;
      }
      
      public function §<e§() : b2Vec2
      {
         return this.§!!0§;
      }
      
      public function §0g§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §%!@§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§`M§ & §4>§)
         {
            this.§ @§.§;&§();
            this.§`M§ &= ~§4>§;
         }
         this.§`M§ |= §!`§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§4l§ = param1;
         _loc4_.§<C§ = param2;
         _loc4_.§^!j§ = param3;
         if(param1 > 0)
         {
            _loc4_.§?!,§ = 1 / param1;
         }
         else
         {
            _loc4_.§?!,§ = 0;
         }
         _loc4_.§'!P§ = this.§#z§ * param1;
         _loc4_.§0!J§ = §"!3§;
         this.§ @§.§#W§();
         if(_loc4_.§4l§ > 0)
         {
            this.§-8§(_loc4_);
         }
         if(§+3§ && _loc4_.§4l§ > 0)
         {
            this.§4!5§(_loc4_);
         }
         if(_loc4_.§4l§ > 0)
         {
            this.§#z§ = _loc4_.§?!,§;
         }
         this.§`M§ &= ~§!`§;
      }
      
      public function §]!$§() : void
      {
         var _loc1_:b2Body = this.§^3§;
         while(_loc1_)
         {
            _loc1_.§,x§.§%!&§();
            _loc1_.§69§ = 0;
            _loc1_ = _loc1_.§%&§;
         }
      }
      
      public function §=c§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§>=§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§77§ == null)
         {
            return;
         }
         this.§77§.§<3§.graphics.clear();
         var _loc1_:uint = this.§77§.§&!E§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§>!I§)
         {
            _loc3_ = this.§^3§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§<T§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.IsActive() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§0%§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§&!B§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§0%§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§&!B§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§0%§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§0%§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§0%§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§%&§;
               }
               _loc3_ = _loc3_.§%&§;
            }
         }
         if(_loc1_ & b2DebugDraw.§7S§)
         {
            _loc6_ = this.§4!h§;
            while(_loc6_)
            {
               this.§@T§(_loc6_);
               _loc6_ = _loc6_.§%&§;
            }
         }
         if(_loc1_ & b2DebugDraw.§+h§)
         {
            _loc16_ = this.§@!P§;
            while(_loc16_)
            {
               _loc16_.§1y§(this.§77§);
               _loc16_ = _loc16_.§%&§;
            }
         }
         if(_loc1_ & b2DebugDraw.§ G§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§ @§.§`a§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§"![§();
               _loc19_ = _loc17_.§5,§();
               _loc20_ = _loc18_.§'H§().§=!C§();
               _loc21_ = _loc19_.§'H§().§=!C§();
               this.§77§.§>!'§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§5w§();
            }
         }
         if(_loc1_ & b2DebugDraw.§5U§)
         {
            _loc7_ = this.§ @§.§+!1§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§^3§;
            while(_loc3_)
            {
               if(_loc3_.IsActive() != false)
               {
                  _loc4_ = _loc3_.§<T§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§3!H§(_loc4_.§4!!§);
                     _loc14_[0].Set(_loc22_.§;w§.x,_loc22_.§;w§.y);
                     _loc14_[1].Set(_loc22_.§,8§.x,_loc22_.§;w§.y);
                     _loc14_[2].Set(_loc22_.§,8§.x,_loc22_.§,8§.y);
                     _loc14_[3].Set(_loc22_.§;w§.x,_loc22_.§,8§.y);
                     this.§77§.§@!!§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§5w§();
                  }
               }
               _loc3_ = _loc3_.§5w§();
            }
         }
         if(_loc1_ & b2DebugDraw.§"!9§)
         {
            _loc3_ = this.§^3§;
            while(_loc3_)
            {
               (_loc11_ = §=!$§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§77§.§5J§(_loc11_);
               _loc3_ = _loc3_.§%&§;
            }
         }
      }
      
      public function § !6§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§>=§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§ @§.§+!1§;
         broadPhase.§9!m§(WorldQueryWrapper,aabb);
      }
      
      public function §#5§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§>=§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§!![§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§@!;§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§^!E§();
         }
         broadPhase = this.§ @§.§+!1§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§9!m§(WorldQueryWrapper,aabb);
      }
      
      public function §?!B§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§>=§ = null;
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
         broadPhase = this.§ @§.§+!1§;
         var aabb:b2AABB = new b2AABB();
         aabb.§;w§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§,8§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§9!m§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§>=§ = null;
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
            return param1.§ !S§;
         };
         broadPhase = this.§ @§.§+!1§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §5!$§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §@p§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §=[§() : b2Body
      {
         return this.§^3§;
      }
      
      public function §^!_§() : b2Joint
      {
         return this.§4!h§;
      }
      
      public function §54§() : b2Contact
      {
         return this.§`a§;
      }
      
      public function §"!F§() : Boolean
      {
         return (this.§`M§ & §!`§) > 0;
      }
      
      b2internal function §-8§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§@!P§;
         while(_loc3_)
         {
            _loc3_.§%!@§(param1);
            _loc3_ = _loc3_.§%&§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§>v§).§1!O§(this.§,l§,this.§2!D§,this.§=`§,null,this.§ @§.§&!j§,this.§3$§);
         _loc2_ = this.§^3§;
         while(_loc2_)
         {
            _loc2_.§`M§ &= ~b2Body.§3!D§;
            _loc2_ = _loc2_.§%&§;
         }
         var _loc5_:b2Contact = this.§`a§;
         while(_loc5_)
         {
            _loc5_.§`M§ &= ~b2Contact.§3!D§;
            _loc5_ = _loc5_.§%&§;
         }
         var _loc6_:b2Joint = this.§4!h§;
         while(_loc6_)
         {
            _loc6_.§1!Y§ = false;
            _loc6_ = _loc6_.§%&§;
         }
         var _loc7_:int = this.§,l§;
         var _loc8_:Vector.<b2Body> = this.§@!3§;
         var _loc9_:b2Body = this.§^3§;
         while(_loc9_)
         {
            if(!(_loc9_.§`M§ & b2Body.§3!D§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.IsActive() == false))
               {
                  if(_loc9_.§&!B§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§;o§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§`M§ |= b2Body.§3!D§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§=@§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§&!B§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§`a§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§+!Y§.§`M§ & b2Contact.§3!D§))
                              {
                                 if(!(_loc13_.§+!Y§.§1d§() == true || _loc13_.§+!Y§.§-P§() == false || _loc13_.§+!Y§.§9U§() == false))
                                 {
                                    _loc4_.§"!U§(_loc13_.§+!Y§);
                                    _loc13_.§+!Y§.§`M§ |= b2Contact.§3!D§;
                                    if(!((_loc12_ = _loc13_.§]=§).§`M§ & b2Body.§3!D§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§`M§ |= b2Body.§3!D§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§"!=§;
                           }
                           _loc14_ = _loc2_.§4!h§;
                           while(_loc14_)
                           {
                              if(_loc14_.§+!G§.§1!Y§ != true)
                              {
                                 if((_loc12_ = _loc14_.§]=§).IsActive() != false)
                                 {
                                    _loc4_.§-!^§(_loc14_.§+!G§);
                                    _loc14_.§+!G§.§1!Y§ = true;
                                    if(!(_loc12_.§`M§ & b2Body.§3!D§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§`M§ |= b2Body.§3!D§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§"!=§;
                           }
                        }
                     }
                     _loc4_.§-8§(param1,this.§!!0§,this.§ K§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§,l§)
                     {
                        _loc2_ = _loc4_.§50§[_loc11_];
                        if(_loc2_.§&!B§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§`M§ &= ~b2Body.§3!D§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§%&§;
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
         _loc2_ = this.§^3§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.IsActive() == false))
            {
               if(_loc2_.§&!B§() != b2Body.b2_staticBody)
               {
                  _loc2_.§&!6§();
               }
            }
            _loc2_ = _loc2_.§%&§;
         }
         this.§ @§.§;&§();
      }
      
      b2internal function §4!5§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§>v§).§1!O§(this.§,l§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§ @§.§&!j§,this.§3$§);
         var _loc10_:Vector.<b2Body> = §!!?§;
         _loc2_ = this.§^3§;
         while(_loc2_)
         {
            _loc2_.§`M§ &= ~b2Body.§3!D§;
            _loc2_.m_sweep.§!!^§ = 0;
            _loc2_ = _loc2_.§%&§;
         }
         _loc11_ = this.§`a§;
         while(_loc11_)
         {
            _loc11_.§`M§ &= ~(b2Contact.§+P§ | b2Contact.§3!D§);
            _loc11_ = _loc11_.§%&§;
         }
         _loc8_ = this.§4!h§;
         while(_loc8_)
         {
            _loc8_.§1!Y§ = false;
            _loc8_ = _loc8_.§%&§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§`a§;
            while(_loc11_)
            {
               if(!(_loc11_.§1d§() == true || _loc11_.§-P§() == false || _loc11_.§;6§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§`M§ & b2Contact.§+P§)
                  {
                     _loc19_ = _loc11_.§,!d§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§,o§;
                     _loc4_ = _loc11_.§0-§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§&!B§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§&!B§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr615:
                        _loc11_ = _loc11_.§%&§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§!!^§;
                     if(_loc5_.m_sweep.§!!^§ < _loc6_.m_sweep.§!!^§)
                     {
                        _loc20_ = _loc6_.m_sweep.§!!^§;
                        _loc5_.m_sweep.§4[§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§!!^§ < _loc5_.m_sweep.§!!^§)
                     {
                        _loc20_ = _loc5_.m_sweep.§!!^§;
                        _loc6_.m_sweep.§4[§(_loc20_);
                     }
                     _loc19_ = _loc11_.§>_§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§,!d§ = _loc19_;
                     _loc11_.§`M§ |= b2Contact.§+P§;
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
            _loc3_ = _loc12_.§,o§;
            _loc4_ = _loc12_.§0-§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §]F§.Set(_loc5_.m_sweep);
            §8!I§.Set(_loc6_.m_sweep);
            _loc5_.§4[§(_loc13_);
            _loc6_.§4[§(_loc13_);
            _loc12_.§`!j§(this.§ @§.§&!j§);
            _loc12_.§`M§ &= ~b2Contact.§+P§;
            if(_loc12_.§1d§() == true || _loc12_.§-P§() == false)
            {
               _loc5_.m_sweep.Set(§]F§);
               _loc6_.m_sweep.Set(§8!I§);
               _loc5_.§5!%§();
               _loc6_.§5!%§();
            }
            else if(_loc12_.§9U§() != false)
            {
               if((_loc14_ = _loc5_).§&!B§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§;o§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§`M§ |= b2Body.§3!D§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§=@§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§&!B§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§`a§;
                     while(_loc7_)
                     {
                        if(_loc9_.§2!D§ == _loc9_.§+!V§)
                        {
                           break;
                        }
                        if(!(_loc7_.§+!Y§.§`M§ & b2Contact.§3!D§))
                        {
                           if(!(_loc7_.§+!Y§.§1d§() == true || _loc7_.§+!Y§.§-P§() == false || _loc7_.§+!Y§.§9U§() == false))
                           {
                              _loc9_.§"!U§(_loc7_.§+!Y§);
                              _loc7_.§+!Y§.§`M§ |= b2Contact.§3!D§;
                              if(!((_loc22_ = _loc7_.§]=§).§`M§ & b2Body.§3!D§))
                              {
                                 if(_loc22_.§&!B§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§4[§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§`M§ |= b2Body.§3!D§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§"!=§;
                     }
                     _loc21_ = _loc2_.§4!h§;
                     while(_loc21_)
                     {
                        if(_loc9_.§=`§ != _loc9_.§'K§)
                        {
                           if(_loc21_.§+!G§.§1!Y§ != true)
                           {
                              if((_loc22_ = _loc21_.§]=§).IsActive() != false)
                              {
                                 _loc9_.§-!^§(_loc21_.§+!G§);
                                 _loc21_.§+!G§.§1!Y§ = true;
                                 if(!(_loc22_.§`M§ & b2Body.§3!D§))
                                 {
                                    if(_loc22_.§&!B§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§4[§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§`M§ |= b2Body.§3!D§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§"!=§;
                     }
                  }
               }
               (_loc17_ = §8!#§).§0!J§ = false;
               _loc17_.§4l§ = (1 - _loc13_) * param1.§4l§;
               _loc17_.§?!,§ = 1 / _loc17_.§4l§;
               _loc17_.§'!P§ = 0;
               _loc17_.§<C§ = param1.§<C§;
               _loc17_.§^!j§ = param1.§^!j§;
               _loc9_.§4!5§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§,l§)
               {
                  _loc2_ = _loc9_.§50§[_loc18_];
                  _loc2_.§`M§ &= ~b2Body.§3!D§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§&!B§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§&!6§();
                        _loc7_ = _loc2_.§`a§;
                        while(_loc7_)
                        {
                           _loc7_.§+!Y§.§`M§ &= ~b2Contact.§+P§;
                           _loc7_ = _loc7_.§"!=§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§2!D§)
               {
                  _loc11_ = _loc9_.§^J§[_loc18_];
                  _loc11_.§`M§ &= ~(b2Contact.§+P§ | b2Contact.§3!D§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§=`§)
               {
                  (_loc8_ = _loc9_.§&!o§[_loc18_]).§1!Y§ = false;
                  _loc18_++;
               }
               this.§ @§.§;&§();
            }
         }
      }
      
      b2internal function §@T§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§3!E§();
         var _loc3_:b2Body = param1.§;!-§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §7O§;
         switch(param1.§3l§)
         {
            case b2Joint.§-o§:
               this.§77§.§>!'§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§6!d§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§>!4§();
               _loc13_ = _loc11_.§5!Y§();
               this.§77§.§>!'§(_loc12_,_loc8_,_loc10_);
               this.§77§.§>!'§(_loc13_,_loc9_,_loc10_);
               this.§77§.§>!'§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§8!'§:
               this.§77§.§>!'§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§77§.§>!'§(_loc6_,_loc8_,_loc10_);
               }
               this.§77§.§>!'§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§77§.§>!'§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §0%§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§3l§)
         {
            case b2Shape.§9D§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§+!W§(param2,_loc4_.§>l§);
               _loc6_ = _loc4_.§?!U§;
               _loc7_ = param2.R.col1;
               this.§77§.§-s§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§]!k§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§<w§();
               _loc11_ = _loc9_.§5Q§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§+!W§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§77§.§@!"§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§!!U§:
               _loc13_ = param1 as b2EdgeShape;
               this.§77§.§>!'§(b2Math.§+!W§(param2,_loc13_.GetVertex1()),b2Math.§+!W§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

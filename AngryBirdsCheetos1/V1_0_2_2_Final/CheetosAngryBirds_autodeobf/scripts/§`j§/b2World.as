package §`j§
{
   import §&U§.*;
   import §0!G§.*;
   import §2!+§.b2Controller;
   import §2!+§.b2ControllerEdge;
   import §2!F§.*;
   import §8Y§.*;
   import §9"§.*;
   import §[!8§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §=z§:b2Transform = new b2Transform();
      
      private static var §%!M§:b2Sweep = new b2Sweep();
      
      private static var §4!%§:b2Sweep = new b2Sweep();
      
      private static var §?!V§:b2TimeStep = new b2TimeStep();
      
      private static var §?!P§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §'L§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §6!H§:Boolean;
      
      private static var §?i§:Boolean;
      
      public static const §5S§:int = 1;
      
      public static const §&%§:int = 2;
       
      
      private var §^S§:Vector.<b2Body>;
      
      b2internal var §@x§:int;
      
      b2internal var §7-§:b2ContactManager;
      
      private var §%P§:b2ContactSolver;
      
      private var §"%§:b2Island;
      
      b2internal var §<!5§:b2Body;
      
      private var §1v§:b2Joint;
      
      b2internal var §=-§:b2Contact;
      
      private var §,z§:int;
      
      b2internal var §7M§:int;
      
      private var §!![§:int;
      
      private var §6V§:b2Controller;
      
      private var §+!V§:int;
      
      private var §1!$§:b2Vec2;
      
      private var §@!Z§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §[!;§:b2DestructionListener;
      
      private var §?t§:b2DebugDraw;
      
      private var §'!L§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§^S§ = new Vector.<b2Body>();
         this.§7-§ = new b2ContactManager();
         this.§%P§ = new b2ContactSolver();
         this.§"%§ = new b2Island();
         super();
         this.§[!;§ = null;
         this.§?t§ = null;
         this.§<!5§ = null;
         this.§=-§ = null;
         this.§1v§ = null;
         this.§6V§ = null;
         this.§,z§ = 0;
         this.§7M§ = 0;
         this.§!![§ = 0;
         this.§+!V§ = 0;
         §6!H§ = true;
         §?i§ = true;
         this.§@!Z§ = param2;
         this.§1!$§ = param1;
         this.§'!L§ = 0;
         this.§7-§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§#f§(_loc3_);
      }
      
      public function §@]§(param1:b2DestructionListener) : void
      {
         this.§[!;§ = param1;
      }
      
      public function §?5§(param1:b2ContactFilter) : void
      {
         this.§7-§.§]!8§ = param1;
      }
      
      public function §7&§(param1:b2ContactListener) : void
      {
         this.§7-§.§"1§ = param1;
      }
      
      public function §0N§(param1:b2DebugDraw) : void
      {
         this.§?t§ = param1;
      }
      
      public function §3!?§(param1:§>![§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§>![§ = this.§7-§.§;!=§;
         this.§7-§.§;!=§ = param1;
         var _loc3_:b2Body = this.§<!5§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§#j§;
            while(_loc4_)
            {
               _loc4_.§!§ = param1.§case§(_loc2_.§8!R§(_loc4_.§!§),_loc4_);
               _loc4_ = _loc4_.§#!&§;
            }
            _loc3_ = _loc3_.§#!&§;
         }
      }
      
      public function §!W§() : void
      {
         this.§7-§.§;!=§.§!W§();
      }
      
      public function §^n§() : int
      {
         return this.§7-§.§;!=§.§^n§();
      }
      
      public function §#f§(param1:b2BodyDef) : b2Body
      {
         if(this.§'E§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§8`§ = null;
         _loc2_.§#!&§ = this.§<!5§;
         if(this.§<!5§)
         {
            this.§<!5§.§8`§ = _loc2_;
         }
         this.§<!5§ = _loc2_;
         ++this.§,z§;
         return _loc2_;
      }
      
      public function §6<§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§'E§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§1v§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§%Y§;
            if(this.§[!;§)
            {
               this.§[!;§.§@e§(_loc6_.§%;§);
            }
            this.§>A§(_loc6_.§%;§);
         }
         var _loc3_:b2ControllerEdge = param1.§6V§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§3!5§;
            _loc7_.§75§.§>D§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§=-§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§%Y§;
            this.§7-§.§;@§(_loc8_.§"!$§);
         }
         param1.§=-§ = null;
         var _loc5_:b2Fixture = param1.§#j§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§#!&§;
            if(this.§[!;§)
            {
               this.§[!;§.§7!R§(_loc9_);
            }
            _loc9_.§^<§(this.§7-§.§;!=§);
            _loc9_.§;@§();
         }
         param1.§#j§ = null;
         param1.§+![§ = 0;
         if(param1.§8`§)
         {
            param1.§8`§.§#!&§ = param1.§#!&§;
         }
         if(param1.§#!&§)
         {
            param1.§#!&§.§8`§ = param1.§8`§;
         }
         if(param1 == this.§<!5§)
         {
            this.§<!5§ = param1.§#!&§;
         }
         --this.§,z§;
      }
      
      public function §8m§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§>y§(param1,null);
         _loc2_.§8`§ = null;
         _loc2_.§#!&§ = this.§1v§;
         if(this.§1v§)
         {
            this.§1v§.§8`§ = _loc2_;
         }
         this.§1v§ = _loc2_;
         ++this.§!![§;
         _loc2_.final.§%;§ = _loc2_;
         _loc2_.final.§3!>§ = _loc2_.§%^§;
         _loc2_.final.§;!Z§ = null;
         _loc2_.final.§%Y§ = _loc2_.§`p§.§1v§;
         if(_loc2_.§`p§.§1v§)
         {
            _loc2_.§`p§.§1v§.§;!Z§ = _loc2_.final;
         }
         _loc2_.§`p§.§1v§ = _loc2_.final;
         _loc2_.§+d§.§%;§ = _loc2_;
         _loc2_.§+d§.§3!>§ = _loc2_.§`p§;
         _loc2_.§+d§.§;!Z§ = null;
         _loc2_.§+d§.§%Y§ = _loc2_.§%^§.§1v§;
         if(_loc2_.§%^§.§1v§)
         {
            _loc2_.§%^§.§1v§.§;!Z§ = _loc2_.§+d§;
         }
         _loc2_.§%^§.§1v§ = _loc2_.§+d§;
         var _loc3_:b2Body = param1.§8!5§;
         var _loc4_:b2Body = param1.§0n§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§6q§();
            while(_loc5_)
            {
               if(_loc5_.§3!>§ == _loc3_)
               {
                  _loc5_.§"!$§.§@!0§();
               }
               _loc5_ = _loc5_.§%Y§;
            }
         }
         return _loc2_;
      }
      
      public function §>A§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§5&§;
         if(param1.§8`§)
         {
            param1.§8`§.§#!&§ = param1.§#!&§;
         }
         if(param1.§#!&§)
         {
            param1.§#!&§.§8`§ = param1.§8`§;
         }
         if(param1 == this.§1v§)
         {
            this.§1v§ = param1.§#!&§;
         }
         var _loc3_:b2Body = param1.§`p§;
         var _loc4_:b2Body = param1.§%^§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.final.§;!Z§)
         {
            param1.final.§;!Z§.§%Y§ = param1.final.§%Y§;
         }
         if(param1.final.§%Y§)
         {
            param1.final.§%Y§.§;!Z§ = param1.final.§;!Z§;
         }
         if(param1.final == _loc3_.§1v§)
         {
            _loc3_.§1v§ = param1.final.§%Y§;
         }
         param1.final.§;!Z§ = null;
         param1.final.§%Y§ = null;
         if(param1.§+d§.§;!Z§)
         {
            param1.§+d§.§;!Z§.§%Y§ = param1.§+d§.§%Y§;
         }
         if(param1.§+d§.§%Y§)
         {
            param1.§+d§.§%Y§.§;!Z§ = param1.§+d§.§;!Z§;
         }
         if(param1.§+d§ == _loc4_.§1v§)
         {
            _loc4_.§1v§ = param1.§+d§.§%Y§;
         }
         param1.§+d§.§;!Z§ = null;
         param1.§+d§.§%Y§ = null;
         b2Joint.§;@§(param1,null);
         --this.§!![§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§6q§();
            while(_loc5_)
            {
               if(_loc5_.§3!>§ == _loc3_)
               {
                  _loc5_.§"!$§.§@!0§();
               }
               _loc5_ = _loc5_.§%Y§;
            }
         }
      }
      
      public function §#!@§(param1:b2Controller) : b2Controller
      {
         param1.§#!&§ = this.§6V§;
         param1.§8`§ = null;
         this.§6V§ = param1;
         param1.m_world = this;
         ++this.§+!V§;
         return param1;
      }
      
      public function §1F§(param1:b2Controller) : void
      {
         if(param1.§8`§)
         {
            param1.§8`§.§#!&§ = param1.§#!&§;
         }
         if(param1.§#!&§)
         {
            param1.§#!&§.§8`§ = param1.§8`§;
         }
         if(this.§6V§ == param1)
         {
            this.§6V§ = param1.§#!&§;
         }
         --this.§+!V§;
      }
      
      public function §0!K§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§#!&§ = this.§6V§;
         param1.§8`§ = null;
         if(this.§6V§)
         {
            this.§6V§.§8`§ = param1;
         }
         this.§6V§ = param1;
         ++this.§+!V§;
         param1.m_world = this;
         return param1;
      }
      
      public function §,w§(param1:b2Controller) : void
      {
         param1.§ C§();
         if(param1.§#!&§)
         {
            param1.§#!&§.§8`§ = param1.§8`§;
         }
         if(param1.§8`§)
         {
            param1.§8`§.§#!&§ = param1.§#!&§;
         }
         if(param1 == this.§6V§)
         {
            this.§6V§ = param1.§#!&§;
         }
         --this.§+!V§;
      }
      
      public function §2E§(param1:Boolean) : void
      {
         §6!H§ = param1;
      }
      
      public function §2f§(param1:Boolean) : void
      {
         §?i§ = param1;
      }
      
      public function §5`§() : int
      {
         return this.§,z§;
      }
      
      public function §42§() : int
      {
         return this.§!![§;
      }
      
      public function §6!"§() : int
      {
         return this.§7M§;
      }
      
      public function §,!E§(param1:b2Vec2) : void
      {
         this.§1!$§ = param1;
      }
      
      public function §%G§() : b2Vec2
      {
         return this.§1!$§;
      }
      
      public function §-6§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §6k§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§@x§ & §5S§)
         {
            this.§7-§.§&k§();
            this.§@x§ &= ~§5S§;
         }
         this.§@x§ |= §&%§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§7!?§ = param1;
         _loc4_.§7!I§ = param2;
         _loc4_.§>C§ = param3;
         if(param1 > 0)
         {
            _loc4_.§-#§ = 1 / param1;
         }
         else
         {
            _loc4_.§-#§ = 0;
         }
         _loc4_.§7!M§ = this.§'!L§ * param1;
         _loc4_.§5!N§ = §6!H§;
         this.§7-§.§73§();
         if(_loc4_.§7!?§ > 0)
         {
            this.§9G§(_loc4_);
         }
         if(§?i§ && _loc4_.§7!?§ > 0)
         {
            this.§,!%§(_loc4_);
         }
         if(_loc4_.§7!?§ > 0)
         {
            this.§'!L§ = _loc4_.§-#§;
         }
         this.§@x§ &= ~§&%§;
      }
      
      public function §+!1§() : void
      {
         var _loc1_:b2Body = this.§<!5§;
         while(_loc1_)
         {
            _loc1_.§1!1§.§3a§();
            _loc1_.§3!S§ = 0;
            _loc1_ = _loc1_.§#!&§;
         }
      }
      
      public function §5!?§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§>![§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§?t§ == null)
         {
            return;
         }
         this.§?t§.§-X§.graphics.clear();
         var _loc1_:uint = this.§?t§.§'!F§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§?A§)
         {
            _loc3_ = this.§<!5§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§?!8§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§+B§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§'!U§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§"!M§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§'!U§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§"!M§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§'!U§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§'!U§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§'!U§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§#!&§;
               }
               _loc3_ = _loc3_.§#!&§;
            }
         }
         if(_loc1_ & b2DebugDraw.§1d§)
         {
            _loc6_ = this.§1v§;
            while(_loc6_)
            {
               this.§>!9§(_loc6_);
               _loc6_ = _loc6_.§#!&§;
            }
         }
         if(_loc1_ & b2DebugDraw.§-!+§)
         {
            _loc16_ = this.§6V§;
            while(_loc16_)
            {
               _loc16_.§>!5§(this.§?t§);
               _loc16_ = _loc16_.§#!&§;
            }
         }
         if(_loc1_ & b2DebugDraw.§#!3§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§7-§.§=-§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§&^§();
               _loc19_ = _loc17_.§7I§();
               _loc20_ = _loc18_.§17§().§2!A§();
               _loc21_ = _loc19_.§17§().§2!A§();
               this.§?t§.§;n§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§[;§();
            }
         }
         if(_loc1_ & b2DebugDraw.§#! §)
         {
            _loc7_ = this.§7-§.§;!=§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§<!5§;
            while(_loc3_)
            {
               if(_loc3_.§+B§() != false)
               {
                  _loc4_ = _loc3_.§?!8§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§8!R§(_loc4_.§!§);
                     _loc14_[0].Set(_loc22_.§!!C§.x,_loc22_.§!!C§.y);
                     _loc14_[1].Set(_loc22_.§<0§.x,_loc22_.§!!C§.y);
                     _loc14_[2].Set(_loc22_.§<0§.x,_loc22_.§<0§.y);
                     _loc14_[3].Set(_loc22_.§!!C§.x,_loc22_.§<0§.y);
                     this.§?t§.§2!'§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§[;§();
                  }
               }
               _loc3_ = _loc3_.§[;§();
            }
         }
         if(_loc1_ & b2DebugDraw.§7!C§)
         {
            _loc3_ = this.§<!5§;
            while(_loc3_)
            {
               (_loc11_ = §=z§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§2!K§();
               this.§?t§.§]!-§(_loc11_);
               _loc3_ = _loc3_.§#!&§;
            }
         }
      }
      
      public function §5u§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§>![§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§7-§.§;!=§;
         broadPhase.§<§(WorldQueryWrapper,aabb);
      }
      
      public function §,"§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§>![§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§[!K§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§4!P§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§`!!§();
         }
         broadPhase = this.§7-§.§;!=§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§<§(WorldQueryWrapper,aabb);
      }
      
      public function §-!Q§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§>![§ = null;
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
         broadPhase = this.§7-§.§;!=§;
         var aabb:b2AABB = new b2AABB();
         aabb.§!!C§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§<0§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§<§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§>![§ = null;
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
            return param1.§7!A§;
         };
         broadPhase = this.§7-§.§;!=§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §=%§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §"!_§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §[!Z§() : b2Body
      {
         return this.§<!5§;
      }
      
      public function §=7§() : b2Joint
      {
         return this.§1v§;
      }
      
      public function §6q§() : b2Contact
      {
         return this.§=-§;
      }
      
      public function §'E§() : Boolean
      {
         return (this.§@x§ & §&%§) > 0;
      }
      
      b2internal function §9G§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§6V§;
         while(_loc3_)
         {
            _loc3_.§6k§(param1);
            _loc3_ = _loc3_.§#!&§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§"%§).§>b§(this.§,z§,this.§7M§,this.§!![§,null,this.§7-§.§"1§,this.§%P§);
         _loc2_ = this.§<!5§;
         while(_loc2_)
         {
            _loc2_.§@x§ &= ~b2Body.§finally§;
            _loc2_ = _loc2_.§#!&§;
         }
         var _loc5_:b2Contact = this.§=-§;
         while(_loc5_)
         {
            _loc5_.§@x§ &= ~b2Contact.§finally§;
            _loc5_ = _loc5_.§#!&§;
         }
         var _loc6_:b2Joint = this.§1v§;
         while(_loc6_)
         {
            _loc6_.§>!0§ = false;
            _loc6_ = _loc6_.§#!&§;
         }
         var _loc7_:int = this.§,z§;
         var _loc8_:Vector.<b2Body> = this.§^S§;
         var _loc9_:b2Body = this.§<!5§;
         while(_loc9_)
         {
            if(!(_loc9_.§@x§ & b2Body.§finally§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§+B§() == false))
               {
                  if(_loc9_.§"!M§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§ C§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§@x§ |= b2Body.§finally§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§>6§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§"!M§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§=-§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§"!$§.§@x§ & b2Contact.§finally§))
                              {
                                 if(!(_loc13_.§"!$§.§`3§() == true || _loc13_.§"!$§.§@n§() == false || _loc13_.§"!$§.§=^§() == false))
                                 {
                                    _loc4_.§%!=§(_loc13_.§"!$§);
                                    _loc13_.§"!$§.§@x§ |= b2Contact.§finally§;
                                    if(!((_loc12_ = _loc13_.§3!>§).§@x§ & b2Body.§finally§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§@x§ |= b2Body.§finally§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§%Y§;
                           }
                           _loc14_ = _loc2_.§1v§;
                           while(_loc14_)
                           {
                              if(_loc14_.§%;§.§>!0§ != true)
                              {
                                 if((_loc12_ = _loc14_.§3!>§).§+B§() != false)
                                 {
                                    _loc4_.§,q§(_loc14_.§%;§);
                                    _loc14_.§%;§.§>!0§ = true;
                                    if(!(_loc12_.§@x§ & b2Body.§finally§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§@x§ |= b2Body.§finally§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§%Y§;
                           }
                        }
                     }
                     _loc4_.§9G§(param1,this.§1!$§,this.§@!Z§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§,z§)
                     {
                        _loc2_ = _loc4_.§+]§[_loc11_];
                        if(_loc2_.§"!M§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§@x§ &= ~b2Body.§finally§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§#!&§;
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
         _loc2_ = this.§<!5§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§+B§() == false))
            {
               if(_loc2_.§"!M§() != b2Body.b2_staticBody)
               {
                  _loc2_.§%a§();
               }
            }
            _loc2_ = _loc2_.§#!&§;
         }
         this.§7-§.§&k§();
      }
      
      b2internal function §,!%§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§"%§).§>b§(this.§,z§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§7-§.§"1§,this.§%P§);
         var _loc10_:Vector.<b2Body> = §?!P§;
         _loc2_ = this.§<!5§;
         while(_loc2_)
         {
            _loc2_.§@x§ &= ~b2Body.§finally§;
            _loc2_.m_sweep.§]p§ = 0;
            _loc2_ = _loc2_.§#!&§;
         }
         _loc11_ = this.§=-§;
         while(_loc11_)
         {
            _loc11_.§@x§ &= ~(b2Contact.§5!O§ | b2Contact.§finally§);
            _loc11_ = _loc11_.§#!&§;
         }
         _loc8_ = this.§1v§;
         while(_loc8_)
         {
            _loc8_.§>!0§ = false;
            _loc8_ = _loc8_.§#!&§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§=-§;
            while(_loc11_)
            {
               if(!(_loc11_.§`3§() == true || _loc11_.§@n§() == false || _loc11_.§>u§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§@x§ & b2Contact.§5!O§)
                  {
                     _loc19_ = _loc11_.§9,§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§1!,§;
                     _loc4_ = _loc11_.§7+§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§"!M§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§"!M§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr632:
                        _loc11_ = _loc11_.§#!&§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§]p§;
                     if(_loc5_.m_sweep.§]p§ < _loc6_.m_sweep.§]p§)
                     {
                        _loc20_ = _loc6_.m_sweep.§]p§;
                        _loc5_.m_sweep.§1m§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§]p§ < _loc5_.m_sweep.§]p§)
                     {
                        _loc20_ = _loc5_.m_sweep.§]p§;
                        _loc6_.m_sweep.§1m§(_loc20_);
                     }
                     _loc19_ = _loc11_.§"!B§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§9,§ = _loc19_;
                     _loc11_.§@x§ |= b2Contact.§5!O§;
                     §§goto(addr632);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr632);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§1!,§;
            _loc4_ = _loc12_.§7+§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §%!M§.Set(_loc5_.m_sweep);
            §4!%§.Set(_loc6_.m_sweep);
            _loc5_.§1m§(_loc13_);
            _loc6_.§1m§(_loc13_);
            _loc12_.§?!R§(this.§7-§.§"1§);
            _loc12_.§@x§ &= ~b2Contact.§5!O§;
            if(_loc12_.§`3§() == true || _loc12_.§@n§() == false)
            {
               _loc5_.m_sweep.Set(§%!M§);
               _loc6_.m_sweep.Set(§4!%§);
               _loc5_.§=!Y§();
               _loc6_.§=!Y§();
            }
            else if(_loc12_.§=^§() != false)
            {
               if((_loc14_ = _loc5_).§"!M§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§ C§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§@x§ |= b2Body.§finally§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§>6§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§"!M§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§=-§;
                     while(_loc7_)
                     {
                        if(_loc9_.§7M§ == _loc9_.§+D§)
                        {
                           break;
                        }
                        if(!(_loc7_.§"!$§.§@x§ & b2Contact.§finally§))
                        {
                           if(!(_loc7_.§"!$§.§`3§() == true || _loc7_.§"!$§.§@n§() == false || _loc7_.§"!$§.§=^§() == false))
                           {
                              _loc9_.§%!=§(_loc7_.§"!$§);
                              _loc7_.§"!$§.§@x§ |= b2Contact.§finally§;
                              if(!((_loc22_ = _loc7_.§3!>§).§@x§ & b2Body.§finally§))
                              {
                                 if(_loc22_.§"!M§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§1m§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§@x§ |= b2Body.§finally§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§%Y§;
                     }
                     _loc21_ = _loc2_.§1v§;
                     while(_loc21_)
                     {
                        if(_loc9_.§!![§ != _loc9_.§5=§)
                        {
                           if(_loc21_.§%;§.§>!0§ != true)
                           {
                              if((_loc22_ = _loc21_.§3!>§).§+B§() != false)
                              {
                                 _loc9_.§,q§(_loc21_.§%;§);
                                 _loc21_.§%;§.§>!0§ = true;
                                 if(!(_loc22_.§@x§ & b2Body.§finally§))
                                 {
                                    if(_loc22_.§"!M§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§1m§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§@x§ |= b2Body.§finally§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§%Y§;
                     }
                  }
               }
               (_loc17_ = §?!V§).§5!N§ = false;
               _loc17_.§7!?§ = (1 - _loc13_) * param1.§7!?§;
               _loc17_.§-#§ = 1 / _loc17_.§7!?§;
               _loc17_.§7!M§ = 0;
               _loc17_.§7!I§ = param1.§7!I§;
               _loc17_.§>C§ = param1.§>C§;
               _loc9_.§,!%§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§,z§)
               {
                  _loc2_ = _loc9_.§+]§[_loc18_];
                  _loc2_.§@x§ &= ~b2Body.§finally§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§"!M§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§%a§();
                        _loc7_ = _loc2_.§=-§;
                        while(_loc7_)
                        {
                           _loc7_.§"!$§.§@x§ &= ~b2Contact.§5!O§;
                           _loc7_ = _loc7_.§%Y§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§7M§)
               {
                  _loc11_ = _loc9_.§3h§[_loc18_];
                  _loc11_.§@x§ &= ~(b2Contact.§5!O§ | b2Contact.§finally§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§!![§)
               {
                  (_loc8_ = _loc9_.§8e§[_loc18_]).§>!0§ = false;
                  _loc18_++;
               }
               this.§7-§.§&k§();
            }
         }
      }
      
      b2internal function §>!9§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§6!Z§();
         var _loc3_:b2Body = param1.§]§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §'L§;
         switch(param1.§8!J§)
         {
            case b2Joint.§>#§:
               this.§?t§.§;n§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§5O§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§`!G§();
               _loc13_ = _loc11_.§>Y§();
               this.§?t§.§;n§(_loc12_,_loc8_,_loc10_);
               this.§?t§.§;n§(_loc13_,_loc9_,_loc10_);
               this.§?t§.§;n§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§7q§:
               this.§?t§.§;n§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§?t§.§;n§(_loc6_,_loc8_,_loc10_);
               }
               this.§?t§.§;n§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§?t§.§;n§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §'!U§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§8!J§)
         {
            case b2Shape.§&!L§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§@E§(param2,_loc4_.§[I§);
               _loc6_ = _loc4_.§@s§;
               _loc7_ = param2.R.col1;
               this.§?t§.§85§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§,!K§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§%d§();
               _loc11_ = _loc9_.§;D§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§@E§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§?t§.§1!>§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§ Y§:
               _loc13_ = param1 as b2EdgeShape;
               this.§?t§.§;n§(b2Math.§@E§(param2,_loc13_.GetVertex1()),b2Math.§@E§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

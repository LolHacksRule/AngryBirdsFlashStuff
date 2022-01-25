package §3f§
{
   import §&!L§.*;
   import §-!<§.*;
   import §6$§.*;
   import §7!C§.*;
   import §<l§.*;
   import §=!!§.*;
   import §>!7§.b2Controller;
   import §>!7§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §]"§:b2Transform = new b2Transform();
      
      private static var §+[§:b2Sweep = new b2Sweep();
      
      private static var §9>§:b2Sweep = new b2Sweep();
      
      private static var §@M§:b2TimeStep = new b2TimeStep();
      
      private static var §#!<§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §7>§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §6!^§:Boolean;
      
      private static var §1!6§:Boolean;
      
      public static const §@[§:int = 1;
      
      public static const §%r§:int = 2;
       
      
      private var §'K§:Vector.<b2Body>;
      
      b2internal var §^!B§:int;
      
      b2internal var §=u§:b2ContactManager;
      
      private var §1N§:b2ContactSolver;
      
      private var §>!a§:b2Island;
      
      b2internal var §!!R§:b2Body;
      
      private var §]§:b2Joint;
      
      b2internal var §'z§:b2Contact;
      
      private var §0]§:int;
      
      b2internal var §0@§:int;
      
      private var §@u§:int;
      
      private var § a§:b2Controller;
      
      private var §'q§:int;
      
      private var §9K§:b2Vec2;
      
      private var §43§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §?v§:b2DestructionListener;
      
      private var §'n§:b2DebugDraw;
      
      private var §>!"§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§'K§ = new Vector.<b2Body>();
         this.§=u§ = new b2ContactManager();
         this.§1N§ = new b2ContactSolver();
         this.§>!a§ = new b2Island();
         super();
         this.§?v§ = null;
         this.§'n§ = null;
         this.§!!R§ = null;
         this.§'z§ = null;
         this.§]§ = null;
         this.§ a§ = null;
         this.§0]§ = 0;
         this.§0@§ = 0;
         this.§@u§ = 0;
         this.§'q§ = 0;
         §6!^§ = true;
         §1!6§ = true;
         this.§43§ = param2;
         this.§9K§ = param1;
         this.§>!"§ = 0;
         this.§=u§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§@!K§(_loc3_);
      }
      
      public function §!1§(param1:b2DestructionListener) : void
      {
         this.§?v§ = param1;
      }
      
      public function §=! §(param1:b2ContactFilter) : void
      {
         this.§=u§.§3Z§ = param1;
      }
      
      public function §&!-§(param1:b2ContactListener) : void
      {
         this.§=u§.§,h§ = param1;
      }
      
      public function §6N§(param1:b2DebugDraw) : void
      {
         this.§'n§ = param1;
      }
      
      public function §%!J§(param1:§?!S§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§?!S§ = this.§=u§.§2R§;
         this.§=u§.§2R§ = param1;
         var _loc3_:b2Body = this.§!!R§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§'!1§;
            while(_loc4_)
            {
               _loc4_.§>j§ = param1.§0L§(_loc2_.§9!,§(_loc4_.§>j§),_loc4_);
               _loc4_ = _loc4_.§',§;
            }
            _loc3_ = _loc3_.§',§;
         }
      }
      
      public function §7!%§() : void
      {
         this.§=u§.§2R§.§7!%§();
      }
      
      public function §-!]§() : int
      {
         return this.§=u§.§2R§.§-!]§();
      }
      
      public function §@!K§(param1:b2BodyDef) : b2Body
      {
         if(this.§%m§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§<`§ = null;
         _loc2_.§',§ = this.§!!R§;
         if(this.§!!R§)
         {
            this.§!!R§.§<`§ = _loc2_;
         }
         this.§!!R§ = _loc2_;
         ++this.§0]§;
         return _loc2_;
      }
      
      public function § 2§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§%m§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§]§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§`2§;
            if(this.§?v§)
            {
               this.§?v§.§,§(_loc6_.§=!<§);
            }
            this.§7!X§(_loc6_.§=!<§);
         }
         var _loc3_:b2ControllerEdge = param1.§ a§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§,!$§;
            _loc7_.§>o§.§"!7§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§'z§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§`2§;
            this.§=u§.§>h§(_loc8_.§+!Q§);
         }
         param1.§'z§ = null;
         var _loc5_:b2Fixture = param1.§'!1§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§',§;
            if(this.§?v§)
            {
               this.§?v§.§!!I§(_loc9_);
            }
            _loc9_.§2s§(this.§=u§.§2R§);
            _loc9_.§>h§();
         }
         param1.§'!1§ = null;
         param1.§>!A§ = 0;
         if(param1.§<`§)
         {
            param1.§<`§.§',§ = param1.§',§;
         }
         if(param1.§',§)
         {
            param1.§',§.§<`§ = param1.§<`§;
         }
         if(param1 == this.§!!R§)
         {
            this.§!!R§ = param1.§',§;
         }
         --this.§0]§;
      }
      
      public function §0h§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§?T§(param1,null);
         _loc2_.§<`§ = null;
         _loc2_.§',§ = this.§]§;
         if(this.§]§)
         {
            this.§]§.§<`§ = _loc2_;
         }
         this.§]§ = _loc2_;
         ++this.§@u§;
         _loc2_.§<!c§.§=!<§ = _loc2_;
         _loc2_.§<!c§.§8g§ = _loc2_.§%!#§;
         _loc2_.§<!c§.§;C§ = null;
         _loc2_.§<!c§.§`2§ = _loc2_.§2!I§.§]§;
         if(_loc2_.§2!I§.§]§)
         {
            _loc2_.§2!I§.§]§.§;C§ = _loc2_.§<!c§;
         }
         _loc2_.§2!I§.§]§ = _loc2_.§<!c§;
         _loc2_.§ K§.§=!<§ = _loc2_;
         _loc2_.§ K§.§8g§ = _loc2_.§2!I§;
         _loc2_.§ K§.§;C§ = null;
         _loc2_.§ K§.§`2§ = _loc2_.§%!#§.§]§;
         if(_loc2_.§%!#§.§]§)
         {
            _loc2_.§%!#§.§]§.§;C§ = _loc2_.§ K§;
         }
         _loc2_.§%!#§.§]§ = _loc2_.§ K§;
         var _loc3_:b2Body = param1.§?!!§;
         var _loc4_:b2Body = param1.§`!6§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§!u§();
            while(_loc5_)
            {
               if(_loc5_.§8g§ == _loc3_)
               {
                  _loc5_.§+!Q§.§7!=§();
               }
               _loc5_ = _loc5_.§`2§;
            }
         }
         return _loc2_;
      }
      
      public function §7!X§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§;!b§;
         if(param1.§<`§)
         {
            param1.§<`§.§',§ = param1.§',§;
         }
         if(param1.§',§)
         {
            param1.§',§.§<`§ = param1.§<`§;
         }
         if(param1 == this.§]§)
         {
            this.§]§ = param1.§',§;
         }
         var _loc3_:b2Body = param1.§2!I§;
         var _loc4_:b2Body = param1.§%!#§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§<!c§.§;C§)
         {
            param1.§<!c§.§;C§.§`2§ = param1.§<!c§.§`2§;
         }
         if(param1.§<!c§.§`2§)
         {
            param1.§<!c§.§`2§.§;C§ = param1.§<!c§.§;C§;
         }
         if(param1.§<!c§ == _loc3_.§]§)
         {
            _loc3_.§]§ = param1.§<!c§.§`2§;
         }
         param1.§<!c§.§;C§ = null;
         param1.§<!c§.§`2§ = null;
         if(param1.§ K§.§;C§)
         {
            param1.§ K§.§;C§.§`2§ = param1.§ K§.§`2§;
         }
         if(param1.§ K§.§`2§)
         {
            param1.§ K§.§`2§.§;C§ = param1.§ K§.§;C§;
         }
         if(param1.§ K§ == _loc4_.§]§)
         {
            _loc4_.§]§ = param1.§ K§.§`2§;
         }
         param1.§ K§.§;C§ = null;
         param1.§ K§.§`2§ = null;
         b2Joint.§>h§(param1,null);
         --this.§@u§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§!u§();
            while(_loc5_)
            {
               if(_loc5_.§8g§ == _loc3_)
               {
                  _loc5_.§+!Q§.§7!=§();
               }
               _loc5_ = _loc5_.§`2§;
            }
         }
      }
      
      public function §^K§(param1:b2Controller) : b2Controller
      {
         param1.§',§ = this.§ a§;
         param1.§<`§ = null;
         this.§ a§ = param1;
         param1.m_world = this;
         ++this.§'q§;
         return param1;
      }
      
      public function §`!I§(param1:b2Controller) : void
      {
         if(param1.§<`§)
         {
            param1.§<`§.§',§ = param1.§',§;
         }
         if(param1.§',§)
         {
            param1.§',§.§<`§ = param1.§<`§;
         }
         if(this.§ a§ == param1)
         {
            this.§ a§ = param1.§',§;
         }
         --this.§'q§;
      }
      
      public function §;%§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§',§ = this.§ a§;
         param1.§<`§ = null;
         if(this.§ a§)
         {
            this.§ a§.§<`§ = param1;
         }
         this.§ a§ = param1;
         ++this.§'q§;
         param1.m_world = this;
         return param1;
      }
      
      public function §69§(param1:b2Controller) : void
      {
         param1.§-X§();
         if(param1.§',§)
         {
            param1.§',§.§<`§ = param1.§<`§;
         }
         if(param1.§<`§)
         {
            param1.§<`§.§',§ = param1.§',§;
         }
         if(param1 == this.§ a§)
         {
            this.§ a§ = param1.§',§;
         }
         --this.§'q§;
      }
      
      public function §'e§(param1:Boolean) : void
      {
         §6!^§ = param1;
      }
      
      public function §,c§(param1:Boolean) : void
      {
         §1!6§ = param1;
      }
      
      public function §%!T§() : int
      {
         return this.§0]§;
      }
      
      public function §=b§() : int
      {
         return this.§@u§;
      }
      
      public function §3%§() : int
      {
         return this.§0@§;
      }
      
      public function §?!3§(param1:b2Vec2) : void
      {
         this.§9K§ = param1;
      }
      
      public function §1!X§() : b2Vec2
      {
         return this.§9K§;
      }
      
      public function §8j§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §'j§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§^!B§ & §@[§)
         {
            this.§=u§.§?w§();
            this.§^!B§ &= ~§@[§;
         }
         this.§^!B§ |= §%r§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§"p§ = param1;
         _loc4_.§21§ = param2;
         _loc4_.§4X§ = param3;
         if(param1 > 0)
         {
            _loc4_.§&V§ = 1 / param1;
         }
         else
         {
            _loc4_.§&V§ = 0;
         }
         _loc4_.§@=§ = this.§>!"§ * param1;
         _loc4_.§&!X§ = §6!^§;
         this.§=u§.§0_§();
         if(_loc4_.§"p§ > 0)
         {
            this.§#m§(_loc4_);
         }
         if(§1!6§ && _loc4_.§"p§ > 0)
         {
            this.§'b§(_loc4_);
         }
         if(_loc4_.§"p§ > 0)
         {
            this.§>!"§ = _loc4_.§&V§;
         }
         this.§^!B§ &= ~§%r§;
      }
      
      public function §5o§() : void
      {
         var _loc1_:b2Body = this.§!!R§;
         while(_loc1_)
         {
            _loc1_.§'!=§.§`§();
            _loc1_.set = 0;
            _loc1_ = _loc1_.§',§;
         }
      }
      
      public function §do§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§?!S§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§'n§ == null)
         {
            return;
         }
         this.§'n§.§?!5§.graphics.clear();
         var _loc1_:uint = this.§'n§.§#e§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§5!+§)
         {
            _loc3_ = this.§!!R§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§3s§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§1t§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§<!2§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§6`§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§<!2§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§6`§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§<!2§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§<!2§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§<!2§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§',§;
               }
               _loc3_ = _loc3_.§',§;
            }
         }
         if(_loc1_ & b2DebugDraw.§&!N§)
         {
            _loc6_ = this.§]§;
            while(_loc6_)
            {
               this.§3J§(_loc6_);
               _loc6_ = _loc6_.§',§;
            }
         }
         if(_loc1_ & b2DebugDraw.§9!3§)
         {
            _loc16_ = this.§ a§;
            while(_loc16_)
            {
               _loc16_.§=!>§(this.§'n§);
               _loc16_ = _loc16_.§',§;
            }
         }
         if(_loc1_ & b2DebugDraw.§%!4§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§=u§.§'z§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§'+§();
               _loc19_ = _loc17_.§&4§();
               _loc20_ = _loc18_.§-!G§().§=!,§();
               _loc21_ = _loc19_.§-!G§().§=!,§();
               this.§'n§.§7!7§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§ O§();
            }
         }
         if(_loc1_ & b2DebugDraw.§8!W§)
         {
            _loc7_ = this.§=u§.§2R§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§!!R§;
            while(_loc3_)
            {
               if(_loc3_.§1t§() != false)
               {
                  _loc4_ = _loc3_.§3s§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§9!,§(_loc4_.§>j§);
                     _loc14_[0].Set(_loc22_.§#W§.x,_loc22_.§#W§.y);
                     _loc14_[1].Set(_loc22_.§3!c§.x,_loc22_.§#W§.y);
                     _loc14_[2].Set(_loc22_.§3!c§.x,_loc22_.§3!c§.y);
                     _loc14_[3].Set(_loc22_.§#W§.x,_loc22_.§3!c§.y);
                     this.§'n§.§=!a§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§ O§();
                  }
               }
               _loc3_ = _loc3_.§ O§();
            }
         }
         if(_loc1_ & b2DebugDraw.§`Z§)
         {
            _loc3_ = this.§!!R§;
            while(_loc3_)
            {
               (_loc11_ = §]"§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§'n§.§3!>§(_loc11_);
               _loc3_ = _loc3_.§',§;
            }
         }
      }
      
      public function §5!N§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§?!S§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§=u§.§2R§;
         broadPhase.§=O§(WorldQueryWrapper,aabb);
      }
      
      public function § $§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§?!S§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§-2§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§ g§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§;8§();
         }
         broadPhase = this.§=u§.§2R§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§=O§(WorldQueryWrapper,aabb);
      }
      
      public function §4T§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§?!S§ = null;
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
         broadPhase = this.§=u§.§2R§;
         var aabb:b2AABB = new b2AABB();
         aabb.§#W§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§3!c§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§=O§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§?!S§ = null;
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
            return param1.§[!M§;
         };
         broadPhase = this.§=u§.§2R§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §`Y§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §!!B§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §3!!§() : b2Body
      {
         return this.§!!R§;
      }
      
      public function §%s§() : b2Joint
      {
         return this.§]§;
      }
      
      public function §!u§() : b2Contact
      {
         return this.§'z§;
      }
      
      public function §%m§() : Boolean
      {
         return (this.§^!B§ & §%r§) > 0;
      }
      
      b2internal function §#m§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§ a§;
         while(_loc3_)
         {
            _loc3_.§'j§(param1);
            _loc3_ = _loc3_.§',§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§>!a§).§1!5§(this.§0]§,this.§0@§,this.§@u§,null,this.§=u§.§,h§,this.§1N§);
         _loc2_ = this.§!!R§;
         while(_loc2_)
         {
            _loc2_.§^!B§ &= ~b2Body.§&!9§;
            _loc2_ = _loc2_.§',§;
         }
         var _loc5_:b2Contact = this.§'z§;
         while(_loc5_)
         {
            _loc5_.§^!B§ &= ~b2Contact.§&!9§;
            _loc5_ = _loc5_.§',§;
         }
         var _loc6_:b2Joint = this.§]§;
         while(_loc6_)
         {
            _loc6_.§<!F§ = false;
            _loc6_ = _loc6_.§',§;
         }
         var _loc7_:int = this.§0]§;
         var _loc8_:Vector.<b2Body> = this.§'K§;
         var _loc9_:b2Body = this.§!!R§;
         while(_loc9_)
         {
            if(!(_loc9_.§^!B§ & b2Body.§&!9§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§1t§() == false))
               {
                  if(_loc9_.§6`§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§-X§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§^!B§ |= b2Body.§&!9§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§9v§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§6`§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§'z§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§+!Q§.§^!B§ & b2Contact.§&!9§))
                              {
                                 if(!(_loc13_.§+!Q§.§=!S§() == true || _loc13_.§+!Q§.§7#§() == false || _loc13_.§+!Q§.§#!]§() == false))
                                 {
                                    _loc4_.§#t§(_loc13_.§+!Q§);
                                    _loc13_.§+!Q§.§^!B§ |= b2Contact.§&!9§;
                                    if(!((_loc12_ = _loc13_.§8g§).§^!B§ & b2Body.§&!9§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§^!B§ |= b2Body.§&!9§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§`2§;
                           }
                           _loc14_ = _loc2_.§]§;
                           while(_loc14_)
                           {
                              if(_loc14_.§=!<§.§<!F§ != true)
                              {
                                 if((_loc12_ = _loc14_.§8g§).§1t§() != false)
                                 {
                                    _loc4_.§`!9§(_loc14_.§=!<§);
                                    _loc14_.§=!<§.§<!F§ = true;
                                    if(!(_loc12_.§^!B§ & b2Body.§&!9§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§^!B§ |= b2Body.§&!9§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§`2§;
                           }
                        }
                     }
                     _loc4_.§#m§(param1,this.§9K§,this.§43§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§0]§)
                     {
                        _loc2_ = _loc4_.§ null§[_loc11_];
                        if(_loc2_.§6`§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§^!B§ &= ~b2Body.§&!9§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§',§;
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
         _loc2_ = this.§!!R§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§1t§() == false))
            {
               if(_loc2_.§6`§() != b2Body.b2_staticBody)
               {
                  _loc2_.§#V§();
               }
            }
            _loc2_ = _loc2_.§',§;
         }
         this.§=u§.§?w§();
      }
      
      b2internal function §'b§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§>!a§).§1!5§(this.§0]§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§=u§.§,h§,this.§1N§);
         var _loc10_:Vector.<b2Body> = §#!<§;
         _loc2_ = this.§!!R§;
         while(_loc2_)
         {
            _loc2_.§^!B§ &= ~b2Body.§&!9§;
            _loc2_.m_sweep.§,!G§ = 0;
            _loc2_ = _loc2_.§',§;
         }
         _loc11_ = this.§'z§;
         while(_loc11_)
         {
            _loc11_.§^!B§ &= ~(b2Contact.§3!^§ | b2Contact.§&!9§);
            _loc11_ = _loc11_.§',§;
         }
         _loc8_ = this.§]§;
         while(_loc8_)
         {
            _loc8_.§<!F§ = false;
            _loc8_ = _loc8_.§',§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§'z§;
            while(_loc11_)
            {
               if(!(_loc11_.§=!S§() == true || _loc11_.§7#§() == false || _loc11_.§]y§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§^!B§ & b2Contact.§3!^§)
                  {
                     _loc19_ = _loc11_.§ M§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§^v§;
                     _loc4_ = _loc11_.§>!D§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§6`§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§6`§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr616:
                        _loc11_ = _loc11_.§',§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§,!G§;
                     if(_loc5_.m_sweep.§,!G§ < _loc6_.m_sweep.§,!G§)
                     {
                        _loc20_ = _loc6_.m_sweep.§,!G§;
                        _loc5_.m_sweep.§,W§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§,!G§ < _loc5_.m_sweep.§,!G§)
                     {
                        _loc20_ = _loc5_.m_sweep.§,!G§;
                        _loc6_.m_sweep.§,W§(_loc20_);
                     }
                     _loc19_ = _loc11_.§4d§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§ M§ = _loc19_;
                     _loc11_.§^!B§ |= b2Contact.§3!^§;
                     §§goto(addr616);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr616);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§^v§;
            _loc4_ = _loc12_.§>!D§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §+[§.Set(_loc5_.m_sweep);
            §9>§.Set(_loc6_.m_sweep);
            _loc5_.§,W§(_loc13_);
            _loc6_.§,W§(_loc13_);
            _loc12_.§^!J§(this.§=u§.§,h§);
            _loc12_.§^!B§ &= ~b2Contact.§3!^§;
            if(_loc12_.§=!S§() == true || _loc12_.§7#§() == false)
            {
               _loc5_.m_sweep.Set(§+[§);
               _loc6_.m_sweep.Set(§9>§);
               _loc5_.§4B§();
               _loc6_.§4B§();
            }
            else if(_loc12_.§#!]§() != false)
            {
               if((_loc14_ = _loc5_).§6`§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§-X§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§^!B§ |= b2Body.§&!9§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§9v§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§6`§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§'z§;
                     while(_loc7_)
                     {
                        if(_loc9_.§0@§ == _loc9_.§=!C§)
                        {
                           break;
                        }
                        if(!(_loc7_.§+!Q§.§^!B§ & b2Contact.§&!9§))
                        {
                           if(!(_loc7_.§+!Q§.§=!S§() == true || _loc7_.§+!Q§.§7#§() == false || _loc7_.§+!Q§.§#!]§() == false))
                           {
                              _loc9_.§#t§(_loc7_.§+!Q§);
                              _loc7_.§+!Q§.§^!B§ |= b2Contact.§&!9§;
                              if(!((_loc22_ = _loc7_.§8g§).§^!B§ & b2Body.§&!9§))
                              {
                                 if(_loc22_.§6`§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§,W§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§^!B§ |= b2Body.§&!9§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§`2§;
                     }
                     _loc21_ = _loc2_.§]§;
                     while(_loc21_)
                     {
                        if(_loc9_.§@u§ != _loc9_.§>#§)
                        {
                           if(_loc21_.§=!<§.§<!F§ != true)
                           {
                              if((_loc22_ = _loc21_.§8g§).§1t§() != false)
                              {
                                 _loc9_.§`!9§(_loc21_.§=!<§);
                                 _loc21_.§=!<§.§<!F§ = true;
                                 if(!(_loc22_.§^!B§ & b2Body.§&!9§))
                                 {
                                    if(_loc22_.§6`§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§,W§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§^!B§ |= b2Body.§&!9§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§`2§;
                     }
                  }
               }
               (_loc17_ = §@M§).§&!X§ = false;
               _loc17_.§"p§ = (1 - _loc13_) * param1.§"p§;
               _loc17_.§&V§ = 1 / _loc17_.§"p§;
               _loc17_.§@=§ = 0;
               _loc17_.§21§ = param1.§21§;
               _loc17_.§4X§ = param1.§4X§;
               _loc9_.§'b§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§0]§)
               {
                  _loc2_ = _loc9_.§ null§[_loc18_];
                  _loc2_.§^!B§ &= ~b2Body.§&!9§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§6`§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§#V§();
                        _loc7_ = _loc2_.§'z§;
                        while(_loc7_)
                        {
                           _loc7_.§+!Q§.§^!B§ &= ~b2Contact.§3!^§;
                           _loc7_ = _loc7_.§`2§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§0@§)
               {
                  _loc11_ = _loc9_.§2<§[_loc18_];
                  _loc11_.§^!B§ &= ~(b2Contact.§3!^§ | b2Contact.§&!9§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§@u§)
               {
                  (_loc8_ = _loc9_.§@!_§[_loc18_]).§<!F§ = false;
                  _loc18_++;
               }
               this.§=u§.§?w§();
            }
         }
      }
      
      b2internal function §3J§(param1:b2Joint) : void
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
         var _loc10_:b2Color = §7>§;
         switch(param1.§'!c§)
         {
            case b2Joint.§else §:
               this.§'n§.§7!7§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§[!`§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§[D§();
               _loc13_ = _loc11_.§]7§();
               this.§'n§.§7!7§(_loc12_,_loc8_,_loc10_);
               this.§'n§.§7!7§(_loc13_,_loc9_,_loc10_);
               this.§'n§.§7!7§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§]&§:
               this.§'n§.§7!7§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§'n§.§7!7§(_loc6_,_loc8_,_loc10_);
               }
               this.§'n§.§7!7§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§'n§.§7!7§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §<!2§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
            case b2Shape.§6!>§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§,!2§(param2,_loc4_.§<[§);
               _loc6_ = _loc4_.§=W§;
               _loc7_ = param2.R.col1;
               this.§'n§.§]!T§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§`F§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§'d§();
               _loc11_ = _loc9_.§"b§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§,!2§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§'n§.§"Q§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§@"§:
               _loc13_ = param1 as b2EdgeShape;
               this.§'n§.§7!7§(b2Math.§,!2§(param2,_loc13_.GetVertex1()),b2Math.§,!2§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

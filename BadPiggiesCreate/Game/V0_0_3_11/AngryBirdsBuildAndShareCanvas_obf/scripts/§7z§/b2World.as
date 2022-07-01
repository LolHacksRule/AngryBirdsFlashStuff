package §7z§
{
   import § 6§.*;
   import § q§.*;
   import §+L§.*;
   import §1!3§.*;
   import §6!>§.b2Controller;
   import §6!>§.b2ControllerEdge;
   import §9![§.*;
   import §^+§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §8a§:b2Transform = new b2Transform();
      
      private static var §]!B§:b2Sweep = new b2Sweep();
      
      private static var §%V§:b2Sweep = new b2Sweep();
      
      private static var §8g§:b2TimeStep = new b2TimeStep();
      
      private static var §?"9§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §2d§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §"Y§:Boolean;
      
      private static var §4@§:Boolean;
      
      public static const §`!x§:int = 1;
      
      public static const §<!J§:int = 2;
       
      
      private var §6^§:Vector.<b2Body>;
      
      b2internal var §]!4§:int;
      
      b2internal var §>m§:b2ContactManager;
      
      private var §'!r§:b2ContactSolver;
      
      private var §^!]§:b2Island;
      
      b2internal var §]"8§:b2Body;
      
      private var §2!z§:b2Joint;
      
      b2internal var §7!,§:b2Contact;
      
      private var §0!1§:int;
      
      b2internal var §!!<§:int;
      
      private var §'!d§:int;
      
      private var §1u§:b2Controller;
      
      private var §^!-§:int;
      
      private var §<S§:b2Vec2;
      
      private var §in §:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §?!D§:b2DestructionListener;
      
      private var §%f§:b2DebugDraw;
      
      private var § Y§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§6^§ = new Vector.<b2Body>();
         this.§>m§ = new b2ContactManager();
         this.§'!r§ = new b2ContactSolver();
         this.§^!]§ = new b2Island();
         super();
         this.§?!D§ = null;
         this.§%f§ = null;
         this.§]"8§ = null;
         this.§7!,§ = null;
         this.§2!z§ = null;
         this.§1u§ = null;
         this.§0!1§ = 0;
         this.§!!<§ = 0;
         this.§'!d§ = 0;
         this.§^!-§ = 0;
         §"Y§ = true;
         §4@§ = true;
         this.§in § = param2;
         this.§<S§ = param1;
         this.§ Y§ = 0;
         this.§>m§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§4^§(_loc3_);
      }
      
      public function §+!H§(param1:b2DestructionListener) : void
      {
         this.§?!D§ = param1;
      }
      
      public function §^!I§(param1:b2ContactFilter) : void
      {
         this.§>m§.§4!3§ = param1;
      }
      
      public function §@"5§(param1:b2ContactListener) : void
      {
         this.§>m§.§01§ = param1;
      }
      
      public function §6!%§(param1:b2DebugDraw) : void
      {
         this.§%f§ = param1;
      }
      
      public function §"'§(param1:§7!&§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§7!&§ = this.§>m§.§9!]§;
         this.§>m§.§9!]§ = param1;
         var _loc3_:b2Body = this.§]"8§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§`Z§;
            while(_loc4_)
            {
               _loc4_.§8!W§ = param1.§8!9§(_loc2_.§4"&§(_loc4_.§8!W§),_loc4_);
               _loc4_ = _loc4_.§7t§;
            }
            _loc3_ = _loc3_.§7t§;
         }
      }
      
      public function §1=§() : void
      {
         this.§>m§.§9!]§.§1=§();
      }
      
      public function §<!X§() : int
      {
         return this.§>m§.§9!]§.§<!X§();
      }
      
      public function §4^§(param1:b2BodyDef) : b2Body
      {
         if(this.§`Y§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§;!F§ = null;
         _loc2_.§7t§ = this.§]"8§;
         if(this.§]"8§)
         {
            this.§]"8§.§;!F§ = _loc2_;
         }
         this.§]"8§ = _loc2_;
         ++this.§0!1§;
         return _loc2_;
      }
      
      public function §]j§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§`Y§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§2!z§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§1C§;
            if(this.§?!D§)
            {
               this.§?!D§.§[Y§(_loc6_.§'!o§);
            }
            this.§]v§(_loc6_.§'!o§);
         }
         var _loc3_:b2ControllerEdge = param1.§1u§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§do §;
            _loc7_.§6!#§.§!!y§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§7!,§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§1C§;
            this.§>m§.§#"&§(_loc8_.§["9§);
         }
         param1.§7!,§ = null;
         var _loc5_:b2Fixture = param1.§`Z§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§7t§;
            if(this.§?!D§)
            {
               this.§?!D§.§6!q§(_loc9_);
            }
            _loc9_.§#!]§(this.§>m§.§9!]§);
            _loc9_.§#"&§();
         }
         param1.§`Z§ = null;
         param1.§#!-§ = 0;
         if(param1.§;!F§)
         {
            param1.§;!F§.§7t§ = param1.§7t§;
         }
         if(param1.§7t§)
         {
            param1.§7t§.§;!F§ = param1.§;!F§;
         }
         if(param1 == this.§]"8§)
         {
            this.§]"8§ = param1.§7t§;
         }
         --this.§0!1§;
      }
      
      public function §!!d§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§7T§(param1,null);
         _loc2_.§;!F§ = null;
         _loc2_.§7t§ = this.§2!z§;
         if(this.§2!z§)
         {
            this.§2!z§.§;!F§ = _loc2_;
         }
         this.§2!z§ = _loc2_;
         ++this.§'!d§;
         _loc2_.§'!6§.§'!o§ = _loc2_;
         _loc2_.§'!6§.§1!D§ = _loc2_.§-?§;
         _loc2_.§'!6§.§>!t§ = null;
         _loc2_.§'!6§.§1C§ = _loc2_.§ [§.§2!z§;
         if(_loc2_.§ [§.§2!z§)
         {
            _loc2_.§ [§.§2!z§.§>!t§ = _loc2_.§'!6§;
         }
         _loc2_.§ [§.§2!z§ = _loc2_.§'!6§;
         _loc2_.§[§.§'!o§ = _loc2_;
         _loc2_.§[§.§1!D§ = _loc2_.§ [§;
         _loc2_.§[§.§>!t§ = null;
         _loc2_.§[§.§1C§ = _loc2_.§-?§.§2!z§;
         if(_loc2_.§-?§.§2!z§)
         {
            _loc2_.§-?§.§2!z§.§>!t§ = _loc2_.§[§;
         }
         _loc2_.§-?§.§2!z§ = _loc2_.§[§;
         var _loc3_:b2Body = param1.§@]§;
         var _loc4_:b2Body = param1.§3@§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§+!S§();
            while(_loc5_)
            {
               if(_loc5_.§1!D§ == _loc3_)
               {
                  _loc5_.§["9§.§4n§();
               }
               _loc5_ = _loc5_.§1C§;
            }
         }
         return _loc2_;
      }
      
      public function §]v§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§^"6§;
         if(param1.§;!F§)
         {
            param1.§;!F§.§7t§ = param1.§7t§;
         }
         if(param1.§7t§)
         {
            param1.§7t§.§;!F§ = param1.§;!F§;
         }
         if(param1 == this.§2!z§)
         {
            this.§2!z§ = param1.§7t§;
         }
         var _loc3_:b2Body = param1.§ [§;
         var _loc4_:b2Body = param1.§-?§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§'!6§.§>!t§)
         {
            param1.§'!6§.§>!t§.§1C§ = param1.§'!6§.§1C§;
         }
         if(param1.§'!6§.§1C§)
         {
            param1.§'!6§.§1C§.§>!t§ = param1.§'!6§.§>!t§;
         }
         if(param1.§'!6§ == _loc3_.§2!z§)
         {
            _loc3_.§2!z§ = param1.§'!6§.§1C§;
         }
         param1.§'!6§.§>!t§ = null;
         param1.§'!6§.§1C§ = null;
         if(param1.§[§.§>!t§)
         {
            param1.§[§.§>!t§.§1C§ = param1.§[§.§1C§;
         }
         if(param1.§[§.§1C§)
         {
            param1.§[§.§1C§.§>!t§ = param1.§[§.§>!t§;
         }
         if(param1.§[§ == _loc4_.§2!z§)
         {
            _loc4_.§2!z§ = param1.§[§.§1C§;
         }
         param1.§[§.§>!t§ = null;
         param1.§[§.§1C§ = null;
         b2Joint.§#"&§(param1,null);
         --this.§'!d§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§+!S§();
            while(_loc5_)
            {
               if(_loc5_.§1!D§ == _loc3_)
               {
                  _loc5_.§["9§.§4n§();
               }
               _loc5_ = _loc5_.§1C§;
            }
         }
      }
      
      public function §1!i§(param1:b2Controller) : b2Controller
      {
         param1.§7t§ = this.§1u§;
         param1.§;!F§ = null;
         this.§1u§ = param1;
         param1.m_world = this;
         ++this.§^!-§;
         return param1;
      }
      
      public function §&!s§(param1:b2Controller) : void
      {
         if(param1.§;!F§)
         {
            param1.§;!F§.§7t§ = param1.§7t§;
         }
         if(param1.§7t§)
         {
            param1.§7t§.§;!F§ = param1.§;!F§;
         }
         if(this.§1u§ == param1)
         {
            this.§1u§ = param1.§7t§;
         }
         --this.§^!-§;
      }
      
      public function §<t§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§7t§ = this.§1u§;
         param1.§;!F§ = null;
         if(this.§1u§)
         {
            this.§1u§.§;!F§ = param1;
         }
         this.§1u§ = param1;
         ++this.§^!-§;
         param1.m_world = this;
         return param1;
      }
      
      public function §3!]§(param1:b2Controller) : void
      {
         param1.§"]§();
         if(param1.§7t§)
         {
            param1.§7t§.§;!F§ = param1.§;!F§;
         }
         if(param1.§;!F§)
         {
            param1.§;!F§.§7t§ = param1.§7t§;
         }
         if(param1 == this.§1u§)
         {
            this.§1u§ = param1.§7t§;
         }
         --this.§^!-§;
      }
      
      public function §3!2§(param1:Boolean) : void
      {
         §"Y§ = param1;
      }
      
      public function §'!X§(param1:Boolean) : void
      {
         §4@§ = param1;
      }
      
      public function §9! §() : int
      {
         return this.§0!1§;
      }
      
      public function §3k§() : int
      {
         return this.§'!d§;
      }
      
      public function §;!f§() : int
      {
         return this.§!!<§;
      }
      
      public function §+3§(param1:b2Vec2) : void
      {
         this.§<S§ = param1;
      }
      
      public function §%"-§() : b2Vec2
      {
         return this.§<S§;
      }
      
      public function §6" §() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §"M§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§]!4§ & §`!x§)
         {
            this.§>m§.§;!2§();
            this.§]!4§ &= ~§`!x§;
         }
         this.§]!4§ |= §<!J§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§'!R§ = param1;
         _loc4_.§+!h§ = param2;
         _loc4_.§ !Y§ = param3;
         if(param1 > 0)
         {
            _loc4_.§+!F§ = 1 / param1;
         }
         else
         {
            _loc4_.§+!F§ = 0;
         }
         _loc4_.§7"'§ = this.§ Y§ * param1;
         _loc4_.§ !<§ = §"Y§;
         this.§>m§.§&"1§();
         if(_loc4_.§'!R§ > 0)
         {
            this.§]z§(_loc4_);
         }
         if(§4@§ && _loc4_.§'!R§ > 0)
         {
            this.§^!4§(_loc4_);
         }
         if(_loc4_.§'!R§ > 0)
         {
            this.§ Y§ = _loc4_.§+!F§;
         }
         this.§]!4§ &= ~§<!J§;
      }
      
      public function §<!§() : void
      {
         var _loc1_:b2Body = this.§]"8§;
         while(_loc1_)
         {
            _loc1_.§ !l§.§>!!§();
            _loc1_.§1!,§ = 0;
            _loc1_ = _loc1_.§7t§;
         }
      }
      
      public function §5!o§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§7!&§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§%f§ == null)
         {
            return;
         }
         this.§%f§.§ !f§.graphics.clear();
         var _loc1_:uint = this.§%f§.§^g§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§3"5§)
         {
            _loc3_ = this.§]"8§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§2!r§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§7%§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§1!H§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§,!B§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§1!H§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§,!B§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§1!H§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§1!H§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§1!H§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§7t§;
               }
               _loc3_ = _loc3_.§7t§;
            }
         }
         if(_loc1_ & b2DebugDraw.§1"-§)
         {
            _loc6_ = this.§2!z§;
            while(_loc6_)
            {
               this.§;k§(_loc6_);
               _loc6_ = _loc6_.§7t§;
            }
         }
         if(_loc1_ & b2DebugDraw.§<O§)
         {
            _loc16_ = this.§1u§;
            while(_loc16_)
            {
               _loc16_.§]!"§(this.§%f§);
               _loc16_ = _loc16_.§7t§;
            }
         }
         if(_loc1_ & b2DebugDraw.§=t§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§>m§.§7!,§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§^!U§();
               _loc19_ = _loc17_.§`[§();
               _loc20_ = _loc18_.§3!g§().§,!$§();
               _loc21_ = _loc19_.§3!g§().§,!$§();
               this.§%f§.§,!<§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§9!P§();
            }
         }
         if(_loc1_ & b2DebugDraw.§!!=§)
         {
            _loc7_ = this.§>m§.§9!]§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§]"8§;
            while(_loc3_)
            {
               if(_loc3_.§7%§() != false)
               {
                  _loc4_ = _loc3_.§2!r§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§4"&§(_loc4_.§8!W§);
                     _loc14_[0].Set(_loc22_.§2g§.x,_loc22_.§2g§.y);
                     _loc14_[1].Set(_loc22_.§3!P§.x,_loc22_.§2g§.y);
                     _loc14_[2].Set(_loc22_.§3!P§.x,_loc22_.§3!P§.y);
                     _loc14_[3].Set(_loc22_.§2g§.x,_loc22_.§3!P§.y);
                     this.§%f§.§>!S§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§9!P§();
                  }
               }
               _loc3_ = _loc3_.§9!P§();
            }
         }
         if(_loc1_ & b2DebugDraw.§`r§)
         {
            _loc3_ = this.§]"8§;
            while(_loc3_)
            {
               (_loc11_ = §8a§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§&A§();
               this.§%f§.§1!C§(_loc11_);
               _loc3_ = _loc3_.§7t§;
            }
         }
      }
      
      public function §7!w§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§7!&§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§>m§.§9!]§;
         broadPhase.§^M§(WorldQueryWrapper,aabb);
      }
      
      public function §=6§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§7!&§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§&!P§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§7V§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§@7§();
         }
         broadPhase = this.§>m§.§9!]§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§^M§(WorldQueryWrapper,aabb);
      }
      
      public function §3Z§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§7!&§ = null;
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
         broadPhase = this.§>m§.§9!]§;
         var aabb:b2AABB = new b2AABB();
         aabb.§2g§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§3!P§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§^M§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§7!&§ = null;
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
            return param1.§&!9§;
         };
         broadPhase = this.§>m§.§9!]§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §3!d§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §4"5§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §+4§() : b2Body
      {
         return this.§]"8§;
      }
      
      public function §3!z§() : b2Joint
      {
         return this.§2!z§;
      }
      
      public function §+!S§() : b2Contact
      {
         return this.§7!,§;
      }
      
      public function §`Y§() : Boolean
      {
         return (this.§]!4§ & §<!J§) > 0;
      }
      
      b2internal function §]z§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§1u§;
         while(_loc3_)
         {
            _loc3_.§"M§(param1);
            _loc3_ = _loc3_.§7t§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§^!]§).§5$§(this.§0!1§,this.§!!<§,this.§'!d§,null,this.§>m§.§01§,this.§'!r§);
         _loc2_ = this.§]"8§;
         while(_loc2_)
         {
            _loc2_.§]!4§ &= ~b2Body.§9!N§;
            _loc2_ = _loc2_.§7t§;
         }
         var _loc5_:b2Contact = this.§7!,§;
         while(_loc5_)
         {
            _loc5_.§]!4§ &= ~b2Contact.§9!N§;
            _loc5_ = _loc5_.§7t§;
         }
         var _loc6_:b2Joint = this.§2!z§;
         while(_loc6_)
         {
            _loc6_.§;!D§ = false;
            _loc6_ = _loc6_.§7t§;
         }
         var _loc7_:int = this.§0!1§;
         var _loc8_:Vector.<b2Body> = this.§6^§;
         var _loc9_:b2Body = this.§]"8§;
         while(_loc9_)
         {
            if(!(_loc9_.§]!4§ & b2Body.§9!N§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§7%§() == false))
               {
                  if(_loc9_.§,!B§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§"]§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§]!4§ |= b2Body.§9!N§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§9"7§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§,!B§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§7!,§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§["9§.§]!4§ & b2Contact.§9!N§))
                              {
                                 if(!(_loc13_.§["9§.§0!!§() == true || _loc13_.§["9§.§@x§() == false || _loc13_.§["9§.§false§() == false))
                                 {
                                    _loc4_.§"!I§(_loc13_.§["9§);
                                    _loc13_.§["9§.§]!4§ |= b2Contact.§9!N§;
                                    if(!((_loc12_ = _loc13_.§1!D§).§]!4§ & b2Body.§9!N§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§]!4§ |= b2Body.§9!N§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§1C§;
                           }
                           _loc14_ = _loc2_.§2!z§;
                           while(_loc14_)
                           {
                              if(_loc14_.§'!o§.§;!D§ != true)
                              {
                                 if((_loc12_ = _loc14_.§1!D§).§7%§() != false)
                                 {
                                    _loc4_.§?D§(_loc14_.§'!o§);
                                    _loc14_.§'!o§.§;!D§ = true;
                                    if(!(_loc12_.§]!4§ & b2Body.§9!N§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§]!4§ |= b2Body.§9!N§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§1C§;
                           }
                        }
                     }
                     _loc4_.§]z§(param1,this.§<S§,this.§in §);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§0!1§)
                     {
                        _loc2_ = _loc4_.§#'§[_loc11_];
                        if(_loc2_.§,!B§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§]!4§ &= ~b2Body.§9!N§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§7t§;
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
         _loc2_ = this.§]"8§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§7%§() == false))
            {
               if(_loc2_.§,!B§() != b2Body.b2_staticBody)
               {
                  _loc2_.§-!;§();
               }
            }
            _loc2_ = _loc2_.§7t§;
         }
         this.§>m§.§;!2§();
      }
      
      b2internal function §^!4§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§^!]§).§5$§(this.§0!1§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§>m§.§01§,this.§'!r§);
         var _loc10_:Vector.<b2Body> = §?"9§;
         _loc2_ = this.§]"8§;
         while(_loc2_)
         {
            _loc2_.§]!4§ &= ~b2Body.§9!N§;
            _loc2_.m_sweep.§8+§ = 0;
            _loc2_ = _loc2_.§7t§;
         }
         _loc11_ = this.§7!,§;
         while(_loc11_)
         {
            _loc11_.§]!4§ &= ~(b2Contact.§2o§ | b2Contact.§9!N§);
            _loc11_ = _loc11_.§7t§;
         }
         _loc8_ = this.§2!z§;
         while(_loc8_)
         {
            _loc8_.§;!D§ = false;
            _loc8_ = _loc8_.§7t§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§7!,§;
            while(_loc11_)
            {
               if(!(_loc11_.§0!!§() == true || _loc11_.§@x§() == false || _loc11_.§[-§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§]!4§ & b2Contact.§2o§)
                  {
                     _loc19_ = _loc11_.§&![§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§2G§;
                     _loc4_ = _loc11_.§]![§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§,!B§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§,!B§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr627:
                        _loc11_ = _loc11_.§7t§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§8+§;
                     if(_loc5_.m_sweep.§8+§ < _loc6_.m_sweep.§8+§)
                     {
                        _loc20_ = _loc6_.m_sweep.§8+§;
                        _loc5_.m_sweep.§4!,§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§8+§ < _loc5_.m_sweep.§8+§)
                     {
                        _loc20_ = _loc5_.m_sweep.§8+§;
                        _loc6_.m_sweep.§4!,§(_loc20_);
                     }
                     _loc19_ = _loc11_.§3!x§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§&![§ = _loc19_;
                     _loc11_.§]!4§ |= b2Contact.§2o§;
                     §§goto(addr627);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr627);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§2G§;
            _loc4_ = _loc12_.§]![§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §]!B§.Set(_loc5_.m_sweep);
            §%V§.Set(_loc6_.m_sweep);
            _loc5_.§4!,§(_loc13_);
            _loc6_.§4!,§(_loc13_);
            _loc12_.§-!?§(this.§>m§.§01§);
            _loc12_.§]!4§ &= ~b2Contact.§2o§;
            if(_loc12_.§0!!§() == true || _loc12_.§@x§() == false)
            {
               _loc5_.m_sweep.Set(§]!B§);
               _loc6_.m_sweep.Set(§%V§);
               _loc5_.§-y§();
               _loc6_.§-y§();
            }
            else if(_loc12_.§false§() != false)
            {
               if((_loc14_ = _loc5_).§,!B§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§"]§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§]!4§ |= b2Body.§9!N§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§9"7§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§,!B§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§7!,§;
                     while(_loc7_)
                     {
                        if(_loc9_.§!!<§ == _loc9_.§>!r§)
                        {
                           break;
                        }
                        if(!(_loc7_.§["9§.§]!4§ & b2Contact.§9!N§))
                        {
                           if(!(_loc7_.§["9§.§0!!§() == true || _loc7_.§["9§.§@x§() == false || _loc7_.§["9§.§false§() == false))
                           {
                              _loc9_.§"!I§(_loc7_.§["9§);
                              _loc7_.§["9§.§]!4§ |= b2Contact.§9!N§;
                              if(!((_loc22_ = _loc7_.§1!D§).§]!4§ & b2Body.§9!N§))
                              {
                                 if(_loc22_.§,!B§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§4!,§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§]!4§ |= b2Body.§9!N§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§1C§;
                     }
                     _loc21_ = _loc2_.§2!z§;
                     while(_loc21_)
                     {
                        if(_loc9_.§'!d§ != _loc9_.§!!8§)
                        {
                           if(_loc21_.§'!o§.§;!D§ != true)
                           {
                              if((_loc22_ = _loc21_.§1!D§).§7%§() != false)
                              {
                                 _loc9_.§?D§(_loc21_.§'!o§);
                                 _loc21_.§'!o§.§;!D§ = true;
                                 if(!(_loc22_.§]!4§ & b2Body.§9!N§))
                                 {
                                    if(_loc22_.§,!B§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§4!,§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§]!4§ |= b2Body.§9!N§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§1C§;
                     }
                  }
               }
               (_loc17_ = §8g§).§ !<§ = false;
               _loc17_.§'!R§ = (1 - _loc13_) * param1.§'!R§;
               _loc17_.§+!F§ = 1 / _loc17_.§'!R§;
               _loc17_.§7"'§ = 0;
               _loc17_.§+!h§ = param1.§+!h§;
               _loc17_.§ !Y§ = param1.§ !Y§;
               _loc9_.§^!4§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§0!1§)
               {
                  _loc2_ = _loc9_.§#'§[_loc18_];
                  _loc2_.§]!4§ &= ~b2Body.§9!N§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§,!B§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§-!;§();
                        _loc7_ = _loc2_.§7!,§;
                        while(_loc7_)
                        {
                           _loc7_.§["9§.§]!4§ &= ~b2Contact.§2o§;
                           _loc7_ = _loc7_.§1C§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§!!<§)
               {
                  _loc11_ = _loc9_.§&!K§[_loc18_];
                  _loc11_.§]!4§ &= ~(b2Contact.§2o§ | b2Contact.§9!N§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§'!d§)
               {
                  (_loc8_ = _loc9_.§6!5§[_loc18_]).§;!D§ = false;
                  _loc18_++;
               }
               this.§>m§.§;!2§();
            }
         }
      }
      
      b2internal function §;k§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§-c§();
         var _loc3_:b2Body = param1.§0Z§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §2d§;
         switch(param1.§7!S§)
         {
            case b2Joint.§+c§:
               this.§%f§.§,!<§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§@!l§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§%0§();
               _loc13_ = _loc11_.§0!a§();
               this.§%f§.§,!<§(_loc12_,_loc8_,_loc10_);
               this.§%f§.§,!<§(_loc13_,_loc9_,_loc10_);
               this.§%f§.§,!<§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§4=§:
               this.§%f§.§,!<§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§%f§.§,!<§(_loc6_,_loc8_,_loc10_);
               }
               this.§%f§.§,!<§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§%f§.§,!<§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §1!H§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§7!S§)
         {
            case b2Shape.§'6§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§3!o§(param2,_loc4_.§;!+§);
               _loc6_ = _loc4_.§5^§;
               _loc7_ = param2.R.col1;
               this.§%f§.§+"2§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§4!Q§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§2!D§();
               _loc11_ = _loc9_.§9!D§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§3!o§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§%f§.§,!2§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§-"$§:
               _loc13_ = param1 as b2EdgeShape;
               this.§%f§.§,!<§(b2Math.§3!o§(param2,_loc13_.GetVertex1()),b2Math.§3!o§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

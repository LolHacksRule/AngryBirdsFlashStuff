package §4!&§
{
   import § y§.*;
   import §!!a§.b2Controller;
   import §!!a§.b2ControllerEdge;
   import §&!+§.*;
   import §3Z§.*;
   import §7C§.*;
   import §8!%§.*;
   import §<!^§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §?!2§:b2Transform = new b2Transform();
      
      private static var §4L§:b2Sweep = new b2Sweep();
      
      private static var §8x§:b2Sweep = new b2Sweep();
      
      private static var §`W§:b2TimeStep = new b2TimeStep();
      
      private static var §@!B§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §1C§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §=!_§:Boolean;
      
      private static var §8!;§:Boolean;
      
      public static const §0i§:int = 1;
      
      public static const §7!J§:int = 2;
       
      
      private var §1!E§:Vector.<b2Body>;
      
      b2internal var §'z§:int;
      
      b2internal var §!`§:b2ContactManager;
      
      private var §@b§:b2ContactSolver;
      
      private var §#1§:b2Island;
      
      b2internal var §]$§:b2Body;
      
      private var §8!a§:b2Joint;
      
      b2internal var §5!A§:b2Contact;
      
      private var §`!K§:int;
      
      b2internal var §"c§:int;
      
      private var §<!M§:int;
      
      private var §5!S§:b2Controller;
      
      private var §8%§:int;
      
      private var §5!N§:b2Vec2;
      
      private var §"i§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §3]§:b2DestructionListener;
      
      private var §8s§:b2DebugDraw;
      
      private var §'<§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§1!E§ = new Vector.<b2Body>();
         this.§!`§ = new b2ContactManager();
         this.§@b§ = new b2ContactSolver();
         this.§#1§ = new b2Island();
         super();
         this.§3]§ = null;
         this.§8s§ = null;
         this.§]$§ = null;
         this.§5!A§ = null;
         this.§8!a§ = null;
         this.§5!S§ = null;
         this.§`!K§ = 0;
         this.§"c§ = 0;
         this.§<!M§ = 0;
         this.§8%§ = 0;
         §=!_§ = true;
         §8!;§ = true;
         this.§"i§ = param2;
         this.§5!N§ = param1;
         this.§'<§ = 0;
         this.§!`§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§?!$§(_loc3_);
      }
      
      public function §3!`§(param1:b2DestructionListener) : void
      {
         this.§3]§ = param1;
      }
      
      public function §0J§(param1:b2ContactFilter) : void
      {
         this.§!`§.§!W§ = param1;
      }
      
      public function §'!,§(param1:b2ContactListener) : void
      {
         this.§!`§.§=!5§ = param1;
      }
      
      public function §72§(param1:b2DebugDraw) : void
      {
         this.§8s§ = param1;
      }
      
      public function § "§(param1:§ !$§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§ !$§ = this.§!`§.§18§;
         this.§!`§.§18§ = param1;
         var _loc3_:b2Body = this.§]$§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§3!=§;
            while(_loc4_)
            {
               _loc4_.§=!T§ = param1.§-!>§(_loc2_.§9!F§(_loc4_.§=!T§),_loc4_);
               _loc4_ = _loc4_.§1!A§;
            }
            _loc3_ = _loc3_.§1!A§;
         }
      }
      
      public function §8!§() : void
      {
         this.§!`§.§18§.§8!§();
      }
      
      public function §8V§() : int
      {
         return this.§!`§.§18§.§8V§();
      }
      
      public function §?!$§(param1:b2BodyDef) : b2Body
      {
         if(this.§&z§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§2!J§ = null;
         _loc2_.§1!A§ = this.§]$§;
         if(this.§]$§)
         {
            this.§]$§.§2!J§ = _loc2_;
         }
         this.§]$§ = _loc2_;
         ++this.§`!K§;
         return _loc2_;
      }
      
      public function §2!§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§&z§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§8!a§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§?c§;
            if(this.§3]§)
            {
               this.§3]§.§+@§(_loc6_.§#7§);
            }
            this.§6#§(_loc6_.§#7§);
         }
         var _loc3_:b2ControllerEdge = param1.§5!S§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§#!Y§;
            _loc7_.§5!B§.§3!<§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§5!A§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§?c§;
            this.§!`§.§4c§(_loc8_.§+!#§);
         }
         param1.§5!A§ = null;
         var _loc5_:b2Fixture = param1.§3!=§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§1!A§;
            if(this.§3]§)
            {
               this.§3]§.§ U§(_loc9_);
            }
            _loc9_.§2x§(this.§!`§.§18§);
            _loc9_.§4c§();
         }
         param1.§3!=§ = null;
         param1.§&1§ = 0;
         if(param1.§2!J§)
         {
            param1.§2!J§.§1!A§ = param1.§1!A§;
         }
         if(param1.§1!A§)
         {
            param1.§1!A§.§2!J§ = param1.§2!J§;
         }
         if(param1 == this.§]$§)
         {
            this.§]$§ = param1.§1!A§;
         }
         --this.§`!K§;
      }
      
      public function §5A§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§?j§(param1,null);
         _loc2_.§2!J§ = null;
         _loc2_.§1!A§ = this.§8!a§;
         if(this.§8!a§)
         {
            this.§8!a§.§2!J§ = _loc2_;
         }
         this.§8!a§ = _loc2_;
         ++this.§<!M§;
         _loc2_.§ !N§.§#7§ = _loc2_;
         _loc2_.§ !N§.§>+§ = _loc2_.§[L§;
         _loc2_.§ !N§.§!!#§ = null;
         _loc2_.§ !N§.§?c§ = _loc2_.§@6§.§8!a§;
         if(_loc2_.§@6§.§8!a§)
         {
            _loc2_.§@6§.§8!a§.§!!#§ = _loc2_.§ !N§;
         }
         _loc2_.§@6§.§8!a§ = _loc2_.§ !N§;
         _loc2_.§"!J§.§#7§ = _loc2_;
         _loc2_.§"!J§.§>+§ = _loc2_.§@6§;
         _loc2_.§"!J§.§!!#§ = null;
         _loc2_.§"!J§.§?c§ = _loc2_.§[L§.§8!a§;
         if(_loc2_.§[L§.§8!a§)
         {
            _loc2_.§[L§.§8!a§.§!!#§ = _loc2_.§"!J§;
         }
         _loc2_.§[L§.§8!a§ = _loc2_.§"!J§;
         var _loc3_:b2Body = param1.§;!L§;
         var _loc4_:b2Body = param1.§0!U§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§5n§();
            while(_loc5_)
            {
               if(_loc5_.§>+§ == _loc3_)
               {
                  _loc5_.§+!#§.§=@§();
               }
               _loc5_ = _loc5_.§?c§;
            }
         }
         return _loc2_;
      }
      
      public function §6#§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§3t§;
         if(param1.§2!J§)
         {
            param1.§2!J§.§1!A§ = param1.§1!A§;
         }
         if(param1.§1!A§)
         {
            param1.§1!A§.§2!J§ = param1.§2!J§;
         }
         if(param1 == this.§8!a§)
         {
            this.§8!a§ = param1.§1!A§;
         }
         var _loc3_:b2Body = param1.§@6§;
         var _loc4_:b2Body = param1.§[L§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§ !N§.§!!#§)
         {
            param1.§ !N§.§!!#§.§?c§ = param1.§ !N§.§?c§;
         }
         if(param1.§ !N§.§?c§)
         {
            param1.§ !N§.§?c§.§!!#§ = param1.§ !N§.§!!#§;
         }
         if(param1.§ !N§ == _loc3_.§8!a§)
         {
            _loc3_.§8!a§ = param1.§ !N§.§?c§;
         }
         param1.§ !N§.§!!#§ = null;
         param1.§ !N§.§?c§ = null;
         if(param1.§"!J§.§!!#§)
         {
            param1.§"!J§.§!!#§.§?c§ = param1.§"!J§.§?c§;
         }
         if(param1.§"!J§.§?c§)
         {
            param1.§"!J§.§?c§.§!!#§ = param1.§"!J§.§!!#§;
         }
         if(param1.§"!J§ == _loc4_.§8!a§)
         {
            _loc4_.§8!a§ = param1.§"!J§.§?c§;
         }
         param1.§"!J§.§!!#§ = null;
         param1.§"!J§.§?c§ = null;
         b2Joint.§4c§(param1,null);
         --this.§<!M§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§5n§();
            while(_loc5_)
            {
               if(_loc5_.§>+§ == _loc3_)
               {
                  _loc5_.§+!#§.§=@§();
               }
               _loc5_ = _loc5_.§?c§;
            }
         }
      }
      
      public function §4!E§(param1:b2Controller) : b2Controller
      {
         param1.§1!A§ = this.§5!S§;
         param1.§2!J§ = null;
         this.§5!S§ = param1;
         param1.m_world = this;
         ++this.§8%§;
         return param1;
      }
      
      public function §-!L§(param1:b2Controller) : void
      {
         if(param1.§2!J§)
         {
            param1.§2!J§.§1!A§ = param1.§1!A§;
         }
         if(param1.§1!A§)
         {
            param1.§1!A§.§2!J§ = param1.§2!J§;
         }
         if(this.§5!S§ == param1)
         {
            this.§5!S§ = param1.§1!A§;
         }
         --this.§8%§;
      }
      
      public function §&!W§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§1!A§ = this.§5!S§;
         param1.§2!J§ = null;
         if(this.§5!S§)
         {
            this.§5!S§.§2!J§ = param1;
         }
         this.§5!S§ = param1;
         ++this.§8%§;
         param1.m_world = this;
         return param1;
      }
      
      public function §6N§(param1:b2Controller) : void
      {
         param1.§1]§();
         if(param1.§1!A§)
         {
            param1.§1!A§.§2!J§ = param1.§2!J§;
         }
         if(param1.§2!J§)
         {
            param1.§2!J§.§1!A§ = param1.§1!A§;
         }
         if(param1 == this.§5!S§)
         {
            this.§5!S§ = param1.§1!A§;
         }
         --this.§8%§;
      }
      
      public function §=9§(param1:Boolean) : void
      {
         §=!_§ = param1;
      }
      
      public function §^q§(param1:Boolean) : void
      {
         §8!;§ = param1;
      }
      
      public function §1!<§() : int
      {
         return this.§`!K§;
      }
      
      public function §"!<§() : int
      {
         return this.§<!M§;
      }
      
      public function §?!-§() : int
      {
         return this.§"c§;
      }
      
      public function §[[§(param1:b2Vec2) : void
      {
         this.§5!N§ = param1;
      }
      
      public function §%!W§() : b2Vec2
      {
         return this.§5!N§;
      }
      
      public function §=E§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §&!T§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§'z§ & §0i§)
         {
            this.§!`§.§]L§();
            this.§'z§ &= ~§0i§;
         }
         this.§'z§ |= §7!J§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§2!2§ = param1;
         _loc4_.§0x§ = param2;
         _loc4_.§5"§ = param3;
         if(param1 > 0)
         {
            _loc4_.§<!L§ = 1 / param1;
         }
         else
         {
            _loc4_.§<!L§ = 0;
         }
         _loc4_.§'7§ = this.§'<§ * param1;
         _loc4_.§3j§ = §=!_§;
         this.§!`§.§5-§();
         if(_loc4_.§2!2§ > 0)
         {
            this.§#!E§(_loc4_);
         }
         if(§8!;§ && _loc4_.§2!2§ > 0)
         {
            this.§+i§(_loc4_);
         }
         if(_loc4_.§2!2§ > 0)
         {
            this.§'<§ = _loc4_.§<!L§;
         }
         this.§'z§ &= ~§7!J§;
      }
      
      public function §=!D§() : void
      {
         var _loc1_:b2Body = this.§]$§;
         while(_loc1_)
         {
            _loc1_.§4s§.§8Q§();
            _loc1_.§4e§ = 0;
            _loc1_ = _loc1_.§1!A§;
         }
      }
      
      public function §&p§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§ !$§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§8s§ == null)
         {
            return;
         }
         this.§8s§.§#&§.graphics.clear();
         var _loc1_:uint = this.§8s§.§'V§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§53§)
         {
            _loc3_ = this.§]$§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§&S§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§]3§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§8W§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§?!S§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§8W§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§?!S§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§8W§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§8W§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§8W§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§1!A§;
               }
               _loc3_ = _loc3_.§1!A§;
            }
         }
         if(_loc1_ & b2DebugDraw.§#!1§)
         {
            _loc6_ = this.§8!a§;
            while(_loc6_)
            {
               this.§%j§(_loc6_);
               _loc6_ = _loc6_.§1!A§;
            }
         }
         if(_loc1_ & b2DebugDraw.§+1§)
         {
            _loc16_ = this.§5!S§;
            while(_loc16_)
            {
               _loc16_.§3a§(this.§8s§);
               _loc16_ = _loc16_.§1!A§;
            }
         }
         if(_loc1_ & b2DebugDraw.§^!@§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§!`§.§5!A§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§?7§();
               _loc19_ = _loc17_.§]!1§();
               _loc20_ = _loc18_.§^t§().§8_§();
               _loc21_ = _loc19_.§^t§().§8_§();
               this.§8s§.§ null§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§'&§();
            }
         }
         if(_loc1_ & b2DebugDraw.§<+§)
         {
            _loc7_ = this.§!`§.§18§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§]$§;
            while(_loc3_)
            {
               if(_loc3_.§]3§() != false)
               {
                  _loc4_ = _loc3_.§&S§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§9!F§(_loc4_.§=!T§);
                     _loc14_[0].Set(_loc22_.§5I§.x,_loc22_.§5I§.y);
                     _loc14_[1].Set(_loc22_.§9m§.x,_loc22_.§5I§.y);
                     _loc14_[2].Set(_loc22_.§9m§.x,_loc22_.§9m§.y);
                     _loc14_[3].Set(_loc22_.§5I§.x,_loc22_.§9m§.y);
                     this.§8s§.§1P§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§'&§();
                  }
               }
               _loc3_ = _loc3_.§'&§();
            }
         }
         if(_loc1_ & b2DebugDraw.§=[§)
         {
            _loc3_ = this.§]$§;
            while(_loc3_)
            {
               (_loc11_ = §?!2§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§^!&§();
               this.§8s§.§;8§(_loc11_);
               _loc3_ = _loc3_.§1!A§;
            }
         }
      }
      
      public function §8P§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§ !$§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§!`§.§18§;
         broadPhase.§=G§(WorldQueryWrapper,aabb);
      }
      
      public function §]!X§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§ !$§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§]g§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§3!H§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§!a§();
         }
         broadPhase = this.§!`§.§18§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§=G§(WorldQueryWrapper,aabb);
      }
      
      public function §]"§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§ !$§ = null;
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
         broadPhase = this.§!`§.§18§;
         var aabb:b2AABB = new b2AABB();
         aabb.§5I§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§9m§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§=G§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§ !$§ = null;
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
            return param1.§<!H§;
         };
         broadPhase = this.§!`§.§18§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §7c§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §[3§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §4N§() : b2Body
      {
         return this.§]$§;
      }
      
      public function §!!8§() : b2Joint
      {
         return this.§8!a§;
      }
      
      public function §5n§() : b2Contact
      {
         return this.§5!A§;
      }
      
      public function §&z§() : Boolean
      {
         return (this.§'z§ & §7!J§) > 0;
      }
      
      b2internal function §#!E§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§5!S§;
         while(_loc3_)
         {
            _loc3_.§&!T§(param1);
            _loc3_ = _loc3_.§1!A§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§#1§).§1U§(this.§`!K§,this.§"c§,this.§<!M§,null,this.§!`§.§=!5§,this.§@b§);
         _loc2_ = this.§]$§;
         while(_loc2_)
         {
            _loc2_.§'z§ &= ~b2Body.§!4§;
            _loc2_ = _loc2_.§1!A§;
         }
         var _loc5_:b2Contact = this.§5!A§;
         while(_loc5_)
         {
            _loc5_.§'z§ &= ~b2Contact.§!4§;
            _loc5_ = _loc5_.§1!A§;
         }
         var _loc6_:b2Joint = this.§8!a§;
         while(_loc6_)
         {
            _loc6_.§23§ = false;
            _loc6_ = _loc6_.§1!A§;
         }
         var _loc7_:int = this.§`!K§;
         var _loc8_:Vector.<b2Body> = this.§1!E§;
         var _loc9_:b2Body = this.§]$§;
         while(_loc9_)
         {
            if(!(_loc9_.§'z§ & b2Body.§!4§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§]3§() == false))
               {
                  if(_loc9_.§?!S§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§1]§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§'z§ |= b2Body.§!4§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§2i§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§?!S§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§5!A§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§+!#§.§'z§ & b2Contact.§!4§))
                              {
                                 if(!(_loc13_.§+!#§.§?A§() == true || _loc13_.§+!#§.§%,§() == false || _loc13_.§+!#§.§3'§() == false))
                                 {
                                    _loc4_.§!!V§(_loc13_.§+!#§);
                                    _loc13_.§+!#§.§'z§ |= b2Contact.§!4§;
                                    if(!((_loc12_ = _loc13_.§>+§).§'z§ & b2Body.§!4§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§'z§ |= b2Body.§!4§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§?c§;
                           }
                           _loc14_ = _loc2_.§8!a§;
                           while(_loc14_)
                           {
                              if(_loc14_.§#7§.§23§ != true)
                              {
                                 if((_loc12_ = _loc14_.§>+§).§]3§() != false)
                                 {
                                    _loc4_.§!k§(_loc14_.§#7§);
                                    _loc14_.§#7§.§23§ = true;
                                    if(!(_loc12_.§'z§ & b2Body.§!4§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§'z§ |= b2Body.§!4§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§?c§;
                           }
                        }
                     }
                     _loc4_.§#!E§(param1,this.§5!N§,this.§"i§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§`!K§)
                     {
                        _loc2_ = _loc4_.§"!O§[_loc11_];
                        if(_loc2_.§?!S§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§'z§ &= ~b2Body.§!4§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§1!A§;
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
         _loc2_ = this.§]$§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§]3§() == false))
            {
               if(_loc2_.§?!S§() != b2Body.b2_staticBody)
               {
                  _loc2_.§+§();
               }
            }
            _loc2_ = _loc2_.§1!A§;
         }
         this.§!`§.§]L§();
      }
      
      b2internal function §+i§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§#1§).§1U§(this.§`!K§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§!`§.§=!5§,this.§@b§);
         var _loc10_:Vector.<b2Body> = §@!B§;
         _loc2_ = this.§]$§;
         while(_loc2_)
         {
            _loc2_.§'z§ &= ~b2Body.§!4§;
            _loc2_.m_sweep.§6L§ = 0;
            _loc2_ = _loc2_.§1!A§;
         }
         _loc11_ = this.§5!A§;
         while(_loc11_)
         {
            _loc11_.§'z§ &= ~(b2Contact.§+b§ | b2Contact.§!4§);
            _loc11_ = _loc11_.§1!A§;
         }
         _loc8_ = this.§8!a§;
         while(_loc8_)
         {
            _loc8_.§23§ = false;
            _loc8_ = _loc8_.§1!A§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§5!A§;
            while(_loc11_)
            {
               if(!(_loc11_.§?A§() == true || _loc11_.§%,§() == false || _loc11_.§&!6§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§'z§ & b2Contact.§+b§)
                  {
                     _loc19_ = _loc11_.§00§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§>^§;
                     _loc4_ = _loc11_.§;!Z§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§?!S§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§?!S§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr604:
                        _loc11_ = _loc11_.§1!A§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§6L§;
                     if(_loc5_.m_sweep.§6L§ < _loc6_.m_sweep.§6L§)
                     {
                        _loc20_ = _loc6_.m_sweep.§6L§;
                        _loc5_.m_sweep.§?M§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§6L§ < _loc5_.m_sweep.§6L§)
                     {
                        _loc20_ = _loc5_.m_sweep.§6L§;
                        _loc6_.m_sweep.§?M§(_loc20_);
                     }
                     _loc19_ = _loc11_.§1!'§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§00§ = _loc19_;
                     _loc11_.§'z§ |= b2Contact.§+b§;
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
            _loc3_ = _loc12_.§>^§;
            _loc4_ = _loc12_.§;!Z§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §4L§.Set(_loc5_.m_sweep);
            §8x§.Set(_loc6_.m_sweep);
            _loc5_.§?M§(_loc13_);
            _loc6_.§?M§(_loc13_);
            _loc12_.§@!8§(this.§!`§.§=!5§);
            _loc12_.§'z§ &= ~b2Contact.§+b§;
            if(_loc12_.§?A§() == true || _loc12_.§%,§() == false)
            {
               _loc5_.m_sweep.Set(§4L§);
               _loc6_.m_sweep.Set(§8x§);
               _loc5_.§@d§();
               _loc6_.§@d§();
            }
            else if(_loc12_.§3'§() != false)
            {
               if((_loc14_ = _loc5_).§?!S§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§1]§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§'z§ |= b2Body.§!4§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§2i§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§?!S§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§5!A§;
                     while(_loc7_)
                     {
                        if(_loc9_.§"c§ == _loc9_.§;!!§)
                        {
                           break;
                        }
                        if(!(_loc7_.§+!#§.§'z§ & b2Contact.§!4§))
                        {
                           if(!(_loc7_.§+!#§.§?A§() == true || _loc7_.§+!#§.§%,§() == false || _loc7_.§+!#§.§3'§() == false))
                           {
                              _loc9_.§!!V§(_loc7_.§+!#§);
                              _loc7_.§+!#§.§'z§ |= b2Contact.§!4§;
                              if(!((_loc22_ = _loc7_.§>+§).§'z§ & b2Body.§!4§))
                              {
                                 if(_loc22_.§?!S§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§?M§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§'z§ |= b2Body.§!4§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§?c§;
                     }
                     _loc21_ = _loc2_.§8!a§;
                     while(_loc21_)
                     {
                        if(_loc9_.§<!M§ != _loc9_.§ l§)
                        {
                           if(_loc21_.§#7§.§23§ != true)
                           {
                              if((_loc22_ = _loc21_.§>+§).§]3§() != false)
                              {
                                 _loc9_.§!k§(_loc21_.§#7§);
                                 _loc21_.§#7§.§23§ = true;
                                 if(!(_loc22_.§'z§ & b2Body.§!4§))
                                 {
                                    if(_loc22_.§?!S§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§?M§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§'z§ |= b2Body.§!4§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§?c§;
                     }
                  }
               }
               (_loc17_ = §`W§).§3j§ = false;
               _loc17_.§2!2§ = (1 - _loc13_) * param1.§2!2§;
               _loc17_.§<!L§ = 1 / _loc17_.§2!2§;
               _loc17_.§'7§ = 0;
               _loc17_.§0x§ = param1.§0x§;
               _loc17_.§5"§ = param1.§5"§;
               _loc9_.§+i§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§`!K§)
               {
                  _loc2_ = _loc9_.§"!O§[_loc18_];
                  _loc2_.§'z§ &= ~b2Body.§!4§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§?!S§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§+§();
                        _loc7_ = _loc2_.§5!A§;
                        while(_loc7_)
                        {
                           _loc7_.§+!#§.§'z§ &= ~b2Contact.§+b§;
                           _loc7_ = _loc7_.§?c§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§"c§)
               {
                  _loc11_ = _loc9_.§5s§[_loc18_];
                  _loc11_.§'z§ &= ~(b2Contact.§+b§ | b2Contact.§!4§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§<!M§)
               {
                  (_loc8_ = _loc9_.§77§[_loc18_]).§23§ = false;
                  _loc18_++;
               }
               this.§!`§.§]L§();
            }
         }
      }
      
      b2internal function §%j§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§?+§();
         var _loc3_:b2Body = param1.§4K§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §1C§;
         switch(param1.§"!V§)
         {
            case b2Joint.§;G§:
               this.§8s§.§ null§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§6!0§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§?O§();
               _loc13_ = _loc11_.§>]§();
               this.§8s§.§ null§(_loc12_,_loc8_,_loc10_);
               this.§8s§.§ null§(_loc13_,_loc9_,_loc10_);
               this.§8s§.§ null§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§'d§:
               this.§8s§.§ null§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§8s§.§ null§(_loc6_,_loc8_,_loc10_);
               }
               this.§8s§.§ null§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§8s§.§ null§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §8W§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§"!V§)
         {
            case b2Shape.§5! §:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§,d§(param2,_loc4_.§]'§);
               _loc6_ = _loc4_.§!!&§;
               _loc7_ = param2.R.col1;
               this.§8s§.§!K§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§7F§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§0[§();
               _loc11_ = _loc9_.§@!"§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§,d§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§8s§.§'!=§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§1!C§:
               _loc13_ = param1 as b2EdgeShape;
               this.§8s§.§ null§(b2Math.§,d§(param2,_loc13_.GetVertex1()),b2Math.§,d§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

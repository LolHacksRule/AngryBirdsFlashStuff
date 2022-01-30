package §&!M§
{
   import §'!z§.b2Controller;
   import §'!z§.b2ControllerEdge;
   import §,Y§.*;
   import §3!t§.*;
   import §4"$§.*;
   import §6!`§.*;
   import §;"0§.*;
   import §?!D§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var § !n§:b2Transform = new b2Transform();
      
      private static var §+"+§:b2Sweep = new b2Sweep();
      
      private static var §[!L§:b2Sweep = new b2Sweep();
      
      private static var §#!'§:b2TimeStep = new b2TimeStep();
      
      private static var §8Y§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §]!Q§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §=!o§:Boolean;
      
      private static var § ^§:Boolean;
      
      public static const §+X§:int = 1;
      
      public static const § for§:int = 2;
       
      
      private var §0! §:Vector.<b2Body>;
      
      b2internal var §[d§:int;
      
      b2internal var §?!7§:b2ContactManager;
      
      private var §4,§:b2ContactSolver;
      
      private var §9G§:b2Island;
      
      b2internal var §`6§:b2Body;
      
      private var §<!@§:b2Joint;
      
      b2internal var §,^§:b2Contact;
      
      private var §,b§:int;
      
      b2internal var §`"+§:int;
      
      private var §=!m§:int;
      
      private var §2!t§:b2Controller;
      
      private var §8+§:int;
      
      private var §6!i§:b2Vec2;
      
      private var §1!y§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var § &§:b2DestructionListener;
      
      private var §"k§:b2DebugDraw;
      
      private var §[+§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§0! § = new Vector.<b2Body>();
         this.§?!7§ = new b2ContactManager();
         this.§4,§ = new b2ContactSolver();
         this.§9G§ = new b2Island();
         super();
         this.§ &§ = null;
         this.§"k§ = null;
         this.§`6§ = null;
         this.§,^§ = null;
         this.§<!@§ = null;
         this.§2!t§ = null;
         this.§,b§ = 0;
         this.§`"+§ = 0;
         this.§=!m§ = 0;
         this.§8+§ = 0;
         §=!o§ = true;
         § ^§ = true;
         this.§1!y§ = param2;
         this.§6!i§ = param1;
         this.§[+§ = 0;
         this.§?!7§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§function§(_loc3_);
      }
      
      public function §;Z§(param1:b2DestructionListener) : void
      {
         this.§ &§ = param1;
      }
      
      public function §>N§(param1:b2ContactFilter) : void
      {
         this.§?!7§.§5!s§ = param1;
      }
      
      public function §4r§(param1:b2ContactListener) : void
      {
         this.§?!7§.§=!R§ = param1;
      }
      
      public function §0!d§(param1:b2DebugDraw) : void
      {
         this.§"k§ = param1;
      }
      
      public function §'"$§(param1:§,;§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§,;§ = this.§?!7§.§>K§;
         this.§?!7§.§>K§ = param1;
         var _loc3_:b2Body = this.§`6§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§@!H§;
            while(_loc4_)
            {
               _loc4_.§+!V§ = param1.§'K§(_loc2_.§>!M§(_loc4_.§+!V§),_loc4_);
               _loc4_ = _loc4_.§'!@§;
            }
            _loc3_ = _loc3_.§'!@§;
         }
      }
      
      public function §;">§() : void
      {
         this.§?!7§.§>K§.§;">§();
      }
      
      public function §2!V§() : int
      {
         return this.§?!7§.§>K§.§2!V§();
      }
      
      public function §function§(param1:b2BodyDef) : b2Body
      {
         if(this.§-!Y§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§]!9§ = null;
         _loc2_.§'!@§ = this.§`6§;
         if(this.§`6§)
         {
            this.§`6§.§]!9§ = _loc2_;
         }
         this.§`6§ = _loc2_;
         ++this.§,b§;
         return _loc2_;
      }
      
      public function §5!o§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§-!Y§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§<!@§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§^!Q§;
            if(this.§ &§)
            {
               this.§ &§.§'@§(_loc6_.§`"&§);
            }
            this.§!!1§(_loc6_.§`"&§);
         }
         var _loc3_:b2ControllerEdge = param1.§2!t§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§'6§;
            _loc7_.§6h§.§ !B§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§,^§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§^!Q§;
            this.§?!7§.§3"8§(_loc8_.§?!S§);
         }
         param1.§,^§ = null;
         var _loc5_:b2Fixture = param1.§@!H§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§'!@§;
            if(this.§ &§)
            {
               this.§ &§.§0!]§(_loc9_);
            }
            _loc9_.§1!`§(this.§?!7§.§>K§);
            _loc9_.§3"8§();
         }
         param1.§@!H§ = null;
         param1.§,t§ = 0;
         if(param1.§]!9§)
         {
            param1.§]!9§.§'!@§ = param1.§'!@§;
         }
         if(param1.§'!@§)
         {
            param1.§'!@§.§]!9§ = param1.§]!9§;
         }
         if(param1 == this.§`6§)
         {
            this.§`6§ = param1.§'!@§;
         }
         --this.§,b§;
      }
      
      public function §1!p§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§[,§(param1,null);
         _loc2_.§]!9§ = null;
         _loc2_.§'!@§ = this.§<!@§;
         if(this.§<!@§)
         {
            this.§<!@§.§]!9§ = _loc2_;
         }
         this.§<!@§ = _loc2_;
         ++this.§=!m§;
         _loc2_.§@w§.§`"&§ = _loc2_;
         _loc2_.§@w§.§[s§ = _loc2_.§!!3§;
         _loc2_.§@w§.§,W§ = null;
         _loc2_.§@w§.§^!Q§ = _loc2_.§"!U§.§<!@§;
         if(_loc2_.§"!U§.§<!@§)
         {
            _loc2_.§"!U§.§<!@§.§,W§ = _loc2_.§@w§;
         }
         _loc2_.§"!U§.§<!@§ = _loc2_.§@w§;
         _loc2_.§4!4§.§`"&§ = _loc2_;
         _loc2_.§4!4§.§[s§ = _loc2_.§"!U§;
         _loc2_.§4!4§.§,W§ = null;
         _loc2_.§4!4§.§^!Q§ = _loc2_.§!!3§.§<!@§;
         if(_loc2_.§!!3§.§<!@§)
         {
            _loc2_.§!!3§.§<!@§.§,W§ = _loc2_.§4!4§;
         }
         _loc2_.§!!3§.§<!@§ = _loc2_.§4!4§;
         var _loc3_:b2Body = param1.§>"$§;
         var _loc4_:b2Body = param1.§%"1§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§#E§();
            while(_loc5_)
            {
               if(_loc5_.§[s§ == _loc3_)
               {
                  _loc5_.§?!S§.§?">§();
               }
               _loc5_ = _loc5_.§^!Q§;
            }
         }
         return _loc2_;
      }
      
      public function §!!1§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§8k§;
         if(param1.§]!9§)
         {
            param1.§]!9§.§'!@§ = param1.§'!@§;
         }
         if(param1.§'!@§)
         {
            param1.§'!@§.§]!9§ = param1.§]!9§;
         }
         if(param1 == this.§<!@§)
         {
            this.§<!@§ = param1.§'!@§;
         }
         var _loc3_:b2Body = param1.§"!U§;
         var _loc4_:b2Body = param1.§!!3§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§@w§.§,W§)
         {
            param1.§@w§.§,W§.§^!Q§ = param1.§@w§.§^!Q§;
         }
         if(param1.§@w§.§^!Q§)
         {
            param1.§@w§.§^!Q§.§,W§ = param1.§@w§.§,W§;
         }
         if(param1.§@w§ == _loc3_.§<!@§)
         {
            _loc3_.§<!@§ = param1.§@w§.§^!Q§;
         }
         param1.§@w§.§,W§ = null;
         param1.§@w§.§^!Q§ = null;
         if(param1.§4!4§.§,W§)
         {
            param1.§4!4§.§,W§.§^!Q§ = param1.§4!4§.§^!Q§;
         }
         if(param1.§4!4§.§^!Q§)
         {
            param1.§4!4§.§^!Q§.§,W§ = param1.§4!4§.§,W§;
         }
         if(param1.§4!4§ == _loc4_.§<!@§)
         {
            _loc4_.§<!@§ = param1.§4!4§.§^!Q§;
         }
         param1.§4!4§.§,W§ = null;
         param1.§4!4§.§^!Q§ = null;
         b2Joint.§3"8§(param1,null);
         --this.§=!m§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§#E§();
            while(_loc5_)
            {
               if(_loc5_.§[s§ == _loc3_)
               {
                  _loc5_.§?!S§.§?">§();
               }
               _loc5_ = _loc5_.§^!Q§;
            }
         }
      }
      
      public function §3!j§(param1:b2Controller) : b2Controller
      {
         param1.§'!@§ = this.§2!t§;
         param1.§]!9§ = null;
         this.§2!t§ = param1;
         param1.m_world = this;
         ++this.§8+§;
         return param1;
      }
      
      public function § !K§(param1:b2Controller) : void
      {
         if(param1.§]!9§)
         {
            param1.§]!9§.§'!@§ = param1.§'!@§;
         }
         if(param1.§'!@§)
         {
            param1.§'!@§.§]!9§ = param1.§]!9§;
         }
         if(this.§2!t§ == param1)
         {
            this.§2!t§ = param1.§'!@§;
         }
         --this.§8+§;
      }
      
      public function § d§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§'!@§ = this.§2!t§;
         param1.§]!9§ = null;
         if(this.§2!t§)
         {
            this.§2!t§.§]!9§ = param1;
         }
         this.§2!t§ = param1;
         ++this.§8+§;
         param1.m_world = this;
         return param1;
      }
      
      public function §switch§(param1:b2Controller) : void
      {
         param1.§?!w§();
         if(param1.§'!@§)
         {
            param1.§'!@§.§]!9§ = param1.§]!9§;
         }
         if(param1.§]!9§)
         {
            param1.§]!9§.§'!@§ = param1.§'!@§;
         }
         if(param1 == this.§2!t§)
         {
            this.§2!t§ = param1.§'!@§;
         }
         --this.§8+§;
      }
      
      public function §>x§(param1:Boolean) : void
      {
         §=!o§ = param1;
      }
      
      public function §6"%§(param1:Boolean) : void
      {
         § ^§ = param1;
      }
      
      public function §!B§() : int
      {
         return this.§,b§;
      }
      
      public function §!v§() : int
      {
         return this.§=!m§;
      }
      
      public function §@j§() : int
      {
         return this.§`"+§;
      }
      
      public function §&!5§(param1:b2Vec2) : void
      {
         this.§6!i§ = param1;
      }
      
      public function §<!O§() : b2Vec2
      {
         return this.§6!i§;
      }
      
      public function §'"5§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §;y§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§[d§ & §+X§)
         {
            this.§?!7§.§,!"§();
            this.§[d§ &= ~§+X§;
         }
         this.§[d§ |= § for§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§!"7§ = param1;
         _loc4_.§",§ = param2;
         _loc4_.§41§ = param3;
         if(param1 > 0)
         {
            _loc4_.§7"!§ = 1 / param1;
         }
         else
         {
            _loc4_.§7"!§ = 0;
         }
         _loc4_.§<!4§ = this.§[+§ * param1;
         _loc4_.§50§ = §=!o§;
         this.§?!7§.§4I§();
         if(_loc4_.§!"7§ > 0)
         {
            this.§6;§(_loc4_);
         }
         if(§ ^§ && _loc4_.§!"7§ > 0)
         {
            this.§package§(_loc4_);
         }
         if(_loc4_.§!"7§ > 0)
         {
            this.§[+§ = _loc4_.§7"!§;
         }
         this.§[d§ &= ~§ for§;
      }
      
      public function §?!a§() : void
      {
         var _loc1_:b2Body = this.§`6§;
         while(_loc1_)
         {
            _loc1_.§+4§.§ 4§();
            _loc1_.§^E§ = 0;
            _loc1_ = _loc1_.§'!@§;
         }
      }
      
      public function §>!q§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§,;§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§"k§ == null)
         {
            return;
         }
         this.§"k§.§6!E§.graphics.clear();
         var _loc1_:uint = this.§"k§.§ [§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§8!B§)
         {
            _loc3_ = this.§`6§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§8!m§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§^h§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§6!Q§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§^h§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§6!Q§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§^h§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§^h§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§^h§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§'!@§;
               }
               _loc3_ = _loc3_.§'!@§;
            }
         }
         if(_loc1_ & b2DebugDraw.§9Z§)
         {
            _loc6_ = this.§<!@§;
            while(_loc6_)
            {
               this.§8"+§(_loc6_);
               _loc6_ = _loc6_.§'!@§;
            }
         }
         if(_loc1_ & b2DebugDraw.§<!+§)
         {
            _loc16_ = this.§2!t§;
            while(_loc16_)
            {
               _loc16_.§8c§(this.§"k§);
               _loc16_ = _loc16_.§'!@§;
            }
         }
         if(_loc1_ & b2DebugDraw.§`z§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§?!7§.§,^§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§]§();
               _loc19_ = _loc17_.§@!^§();
               _loc20_ = _loc18_.§+!G§().§+!H§();
               _loc21_ = _loc19_.§+!G§().§+!H§();
               this.§"k§.§,"7§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§`!u§();
            }
         }
         if(_loc1_ & b2DebugDraw.§ !,§)
         {
            _loc7_ = this.§?!7§.§>K§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§`6§;
            while(_loc3_)
            {
               if(_loc3_.§8!m§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§>!M§(_loc4_.§+!V§);
                     _loc14_[0].Set(_loc22_.§6R§.x,_loc22_.§6R§.y);
                     _loc14_[1].Set(_loc22_.include.x,_loc22_.§6R§.y);
                     _loc14_[2].Set(_loc22_.include.x,_loc22_.include.y);
                     _loc14_[3].Set(_loc22_.§6R§.x,_loc22_.include.y);
                     this.§"k§.§@!d§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§`!u§();
                  }
               }
               _loc3_ = _loc3_.§`!u§();
            }
         }
         if(_loc1_ & b2DebugDraw.§,V§)
         {
            _loc3_ = this.§`6§;
            while(_loc3_)
            {
               (_loc11_ = § !n§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§5G§();
               this.§"k§.§=!j§(_loc11_);
               _loc3_ = _loc3_.§'!@§;
            }
         }
      }
      
      public function §7+§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§,;§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§?!7§.§>K§;
         broadPhase.§,X§(WorldQueryWrapper,aabb);
      }
      
      public function §["#§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§,;§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§3!z§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§=!y§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§7"3§();
         }
         broadPhase = this.§?!7§.§>K§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§,X§(WorldQueryWrapper,aabb);
      }
      
      public function §,S§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§,;§ = null;
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
         broadPhase = this.§?!7§.§>K§;
         var aabb:b2AABB = new b2AABB();
         aabb.§6R§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.include.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§,X§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§,;§ = null;
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
            return param1.§='§;
         };
         broadPhase = this.§?!7§.§>K§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §31§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §&m§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §+!f§() : b2Body
      {
         return this.§`6§;
      }
      
      public function §+,§() : b2Joint
      {
         return this.§<!@§;
      }
      
      public function §#E§() : b2Contact
      {
         return this.§,^§;
      }
      
      public function §-!Y§() : Boolean
      {
         return (this.§[d§ & § for§) > 0;
      }
      
      b2internal function §6;§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§2!t§;
         while(_loc3_)
         {
            _loc3_.§;y§(param1);
            _loc3_ = _loc3_.§'!@§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§9G§).§[z§(this.§,b§,this.§`"+§,this.§=!m§,null,this.§?!7§.§=!R§,this.§4,§);
         _loc2_ = this.§`6§;
         while(_loc2_)
         {
            _loc2_.§[d§ &= ~b2Body.§8!E§;
            _loc2_ = _loc2_.§'!@§;
         }
         var _loc5_:b2Contact = this.§,^§;
         while(_loc5_)
         {
            _loc5_.§[d§ &= ~b2Contact.§8!E§;
            _loc5_ = _loc5_.§'!@§;
         }
         var _loc6_:b2Joint = this.§<!@§;
         while(_loc6_)
         {
            _loc6_.§0!0§ = false;
            _loc6_ = _loc6_.§'!@§;
         }
         var _loc7_:int = this.§,b§;
         var _loc8_:Vector.<b2Body> = this.§0! §;
         var _loc9_:b2Body = this.§`6§;
         while(_loc9_)
         {
            if(!(_loc9_.§[d§ & b2Body.§8!E§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§8!m§() == false))
               {
                  if(_loc9_.§6!Q§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§?!w§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§[d§ |= b2Body.§8!E§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§[!p§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§6!Q§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§,^§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§?!S§.§[d§ & b2Contact.§8!E§))
                              {
                                 if(!(_loc13_.§?!S§.§!",§() == true || _loc13_.§?!S§.§6X§() == false || _loc13_.§?!S§.§^!!§() == false))
                                 {
                                    _loc4_.§]m§(_loc13_.§?!S§);
                                    _loc13_.§?!S§.§[d§ |= b2Contact.§8!E§;
                                    if(!((_loc12_ = _loc13_.§[s§).§[d§ & b2Body.§8!E§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§[d§ |= b2Body.§8!E§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§^!Q§;
                           }
                           _loc14_ = _loc2_.§<!@§;
                           while(_loc14_)
                           {
                              if(_loc14_.§`"&§.§0!0§ != true)
                              {
                                 if((_loc12_ = _loc14_.§[s§).§8!m§() != false)
                                 {
                                    _loc4_.§8!i§(_loc14_.§`"&§);
                                    _loc14_.§`"&§.§0!0§ = true;
                                    if(!(_loc12_.§[d§ & b2Body.§8!E§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§[d§ |= b2Body.§8!E§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§^!Q§;
                           }
                        }
                     }
                     _loc4_.§6;§(param1,this.§6!i§,this.§1!y§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§,b§)
                     {
                        _loc2_ = _loc4_.§ "-§[_loc11_];
                        if(_loc2_.§6!Q§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§[d§ &= ~b2Body.§8!E§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§'!@§;
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
         _loc2_ = this.§`6§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§8!m§() == false))
            {
               if(_loc2_.§6!Q§() != b2Body.b2_staticBody)
               {
                  _loc2_.§6!m§();
               }
            }
            _loc2_ = _loc2_.§'!@§;
         }
         this.§?!7§.§,!"§();
      }
      
      b2internal function §package§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§9G§).§[z§(this.§,b§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§?!7§.§=!R§,this.§4,§);
         var _loc10_:Vector.<b2Body> = §8Y§;
         _loc2_ = this.§`6§;
         while(_loc2_)
         {
            _loc2_.§[d§ &= ~b2Body.§8!E§;
            _loc2_.m_sweep.§3""§ = 0;
            _loc2_ = _loc2_.§'!@§;
         }
         _loc11_ = this.§,^§;
         while(_loc11_)
         {
            _loc11_.§[d§ &= ~(b2Contact.§"s§ | b2Contact.§8!E§);
            _loc11_ = _loc11_.§'!@§;
         }
         _loc8_ = this.§<!@§;
         while(_loc8_)
         {
            _loc8_.§0!0§ = false;
            _loc8_ = _loc8_.§'!@§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§,^§;
            while(_loc11_)
            {
               if(!(_loc11_.§!",§() == true || _loc11_.§6X§() == false || _loc11_.§9!b§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§[d§ & b2Contact.§"s§)
                  {
                     _loc19_ = _loc11_.§3!u§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§true §;
                     _loc4_ = _loc11_.§]!f§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§6!Q§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§6!Q§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr663:
                        _loc11_ = _loc11_.§'!@§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§3""§;
                     if(_loc5_.m_sweep.§3""§ < _loc6_.m_sweep.§3""§)
                     {
                        _loc20_ = _loc6_.m_sweep.§3""§;
                        _loc5_.m_sweep.§?S§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§3""§ < _loc5_.m_sweep.§3""§)
                     {
                        _loc20_ = _loc5_.m_sweep.§3""§;
                        _loc6_.m_sweep.§?S§(_loc20_);
                     }
                     _loc19_ = _loc11_.§-";§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§3!u§ = _loc19_;
                     _loc11_.§[d§ |= b2Contact.§"s§;
                     §§goto(addr663);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr663);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§true §;
            _loc4_ = _loc12_.§]!f§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §+"+§.Set(_loc5_.m_sweep);
            §[!L§.Set(_loc6_.m_sweep);
            _loc5_.§?S§(_loc13_);
            _loc6_.§?S§(_loc13_);
            _loc12_.§%!b§(this.§?!7§.§=!R§);
            _loc12_.§[d§ &= ~b2Contact.§"s§;
            if(_loc12_.§!",§() == true || _loc12_.§6X§() == false)
            {
               _loc5_.m_sweep.Set(§+"+§);
               _loc6_.m_sweep.Set(§[!L§);
               _loc5_.§=!z§();
               _loc6_.§=!z§();
            }
            else if(_loc12_.§^!!§() != false)
            {
               if((_loc14_ = _loc5_).§6!Q§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§?!w§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§[d§ |= b2Body.§8!E§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§[!p§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§6!Q§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§,^§;
                     while(_loc7_)
                     {
                        if(_loc9_.§`"+§ == _loc9_.§]y§)
                        {
                           break;
                        }
                        if(!(_loc7_.§?!S§.§[d§ & b2Contact.§8!E§))
                        {
                           if(!(_loc7_.§?!S§.§!",§() == true || _loc7_.§?!S§.§6X§() == false || _loc7_.§?!S§.§^!!§() == false))
                           {
                              _loc9_.§]m§(_loc7_.§?!S§);
                              _loc7_.§?!S§.§[d§ |= b2Contact.§8!E§;
                              if(!((_loc22_ = _loc7_.§[s§).§[d§ & b2Body.§8!E§))
                              {
                                 if(_loc22_.§6!Q§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§?S§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§[d§ |= b2Body.§8!E§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§^!Q§;
                     }
                     _loc21_ = _loc2_.§<!@§;
                     while(_loc21_)
                     {
                        if(_loc9_.§=!m§ != _loc9_.§9u§)
                        {
                           if(_loc21_.§`"&§.§0!0§ != true)
                           {
                              if((_loc22_ = _loc21_.§[s§).§8!m§() != false)
                              {
                                 _loc9_.§8!i§(_loc21_.§`"&§);
                                 _loc21_.§`"&§.§0!0§ = true;
                                 if(!(_loc22_.§[d§ & b2Body.§8!E§))
                                 {
                                    if(_loc22_.§6!Q§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§?S§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§[d§ |= b2Body.§8!E§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§^!Q§;
                     }
                  }
               }
               (_loc17_ = §#!'§).§50§ = false;
               _loc17_.§!"7§ = (1 - _loc13_) * param1.§!"7§;
               _loc17_.§7"!§ = 1 / _loc17_.§!"7§;
               _loc17_.§<!4§ = 0;
               _loc17_.§",§ = param1.§",§;
               _loc17_.§41§ = param1.§41§;
               _loc9_.§package§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§,b§)
               {
                  _loc2_ = _loc9_.§ "-§[_loc18_];
                  _loc2_.§[d§ &= ~b2Body.§8!E§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§6!Q§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§6!m§();
                        _loc7_ = _loc2_.§,^§;
                        while(_loc7_)
                        {
                           _loc7_.§?!S§.§[d§ &= ~b2Contact.§"s§;
                           _loc7_ = _loc7_.§^!Q§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§`"+§)
               {
                  _loc11_ = _loc9_.§8!P§[_loc18_];
                  _loc11_.§[d§ &= ~(b2Contact.§"s§ | b2Contact.§8!E§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§=!m§)
               {
                  (_loc8_ = _loc9_.§&!>§[_loc18_]).§0!0§ = false;
                  _loc18_++;
               }
               this.§?!7§.§,!"§();
            }
         }
      }
      
      b2internal function §8"+§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§>`§();
         var _loc3_:b2Body = param1.§@B§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §]!Q§;
         switch(param1.§+V§)
         {
            case b2Joint.§@J§:
               this.§"k§.§,"7§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§'G§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§[!l§();
               _loc13_ = _loc11_.§ !U§();
               this.§"k§.§,"7§(_loc12_,_loc8_,_loc10_);
               this.§"k§.§,"7§(_loc13_,_loc9_,_loc10_);
               this.§"k§.§,"7§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§ var§:
               this.§"k§.§,"7§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§"k§.§,"7§(_loc6_,_loc8_,_loc10_);
               }
               this.§"k§.§,"7§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§"k§.§,"7§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §^h§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§+V§)
         {
            case b2Shape.§93§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§9!q§(param2,_loc4_.§continue§);
               _loc6_ = _loc4_.§[!?§;
               _loc7_ = param2.R.col1;
               this.§"k§.§-!9§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§-n§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§;!8§();
               _loc11_ = _loc9_.§5""§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§9!q§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§"k§.§6]§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§!;§:
               _loc13_ = param1 as b2EdgeShape;
               this.§"k§.§,"7§(b2Math.§9!q§(param2,_loc13_.GetVertex1()),b2Math.§9!q§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

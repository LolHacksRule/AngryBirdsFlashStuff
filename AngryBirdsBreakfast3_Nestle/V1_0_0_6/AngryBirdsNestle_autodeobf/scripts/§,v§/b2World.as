package §,v§
{
   import §!;§.*;
   import §&!g§.b2Controller;
   import §&!g§.b2ControllerEdge;
   import §-!A§.*;
   import §3!4§.*;
   import §5t§.*;
   import §;!r§.*;
   import §@h§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §>!E§:b2Transform = new b2Transform();
      
      private static var §do §:b2Sweep = new b2Sweep();
      
      private static var §import§:b2Sweep = new b2Sweep();
      
      private static var §[!5§:b2TimeStep = new b2TimeStep();
      
      private static var §<!t§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §=`§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §0!`§:Boolean;
      
      private static var §-!,§:Boolean;
      
      public static const §-!L§:int = 1;
      
      public static const §5",§:int = 2;
       
      
      private var §+V§:Vector.<b2Body>;
      
      b2internal var §@!5§:int;
      
      b2internal var §^!b§:b2ContactManager;
      
      private var §@4§:b2ContactSolver;
      
      private var §!! §:b2Island;
      
      b2internal var §@n§:b2Body;
      
      private var §@!g§:b2Joint;
      
      b2internal var §&!]§:b2Contact;
      
      private var §>F§:int;
      
      b2internal var §?!S§:int;
      
      private var §!!-§:int;
      
      private var §8!J§:b2Controller;
      
      private var §]!f§:int;
      
      private var §2s§:b2Vec2;
      
      private var §<Z§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §1"%§:b2DestructionListener;
      
      private var §^!3§:b2DebugDraw;
      
      private var §#!Q§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§+V§ = new Vector.<b2Body>();
         this.§^!b§ = new b2ContactManager();
         this.§@4§ = new b2ContactSolver();
         this.§!! § = new b2Island();
         super();
         this.§1"%§ = null;
         this.§^!3§ = null;
         this.§@n§ = null;
         this.§&!]§ = null;
         this.§@!g§ = null;
         this.§8!J§ = null;
         this.§>F§ = 0;
         this.§?!S§ = 0;
         this.§!!-§ = 0;
         this.§]!f§ = 0;
         §0!`§ = true;
         §-!,§ = true;
         this.§<Z§ = param2;
         this.§2s§ = param1;
         this.§#!Q§ = 0;
         this.§^!b§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §&!W§(param1:b2DestructionListener) : void
      {
         this.§1"%§ = param1;
      }
      
      public function §]l§(param1:b2ContactFilter) : void
      {
         this.§^!b§.§-!y§ = param1;
      }
      
      public function §8k§(param1:b2ContactListener) : void
      {
         this.§^!b§.§-!s§ = param1;
      }
      
      public function §&N§(param1:b2DebugDraw) : void
      {
         this.§^!3§ = param1;
      }
      
      public function § !§(param1:§;!`§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§;!`§ = this.§^!b§.§]!6§;
         this.§^!b§.§]!6§ = param1;
         var _loc3_:b2Body = this.§@n§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§[!t§;
            while(_loc4_)
            {
               _loc4_.§!!I§ = param1.§'"!§(_loc2_.§0!O§(_loc4_.§!!I§),_loc4_);
               _loc4_ = _loc4_.§7!+§;
            }
            _loc3_ = _loc3_.§7!+§;
         }
      }
      
      public function §33§() : void
      {
         this.§^!b§.§]!6§.§33§();
      }
      
      public function §`S§() : int
      {
         return this.§^!b§.§]!6§.§`S§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§,!v§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§true§ = null;
         _loc2_.§7!+§ = this.§@n§;
         if(this.§@n§)
         {
            this.§@n§.§true§ = _loc2_;
         }
         this.§@n§ = _loc2_;
         ++this.§>F§;
         return _loc2_;
      }
      
      public function §2a§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§,!v§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§@!g§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.next;
            if(this.§1"%§)
            {
               this.§1"%§.§2R§(_loc6_.§-q§);
            }
            this.§ C§(_loc6_.§-q§);
         }
         var _loc3_:b2ControllerEdge = param1.§8!J§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§1"1§;
            _loc7_.controller.§9![§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§&!]§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.next;
            this.§^!b§.§#!N§(_loc8_.§@!"§);
         }
         param1.§&!]§ = null;
         var _loc5_:b2Fixture = param1.§[!t§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§7!+§;
            if(this.§1"%§)
            {
               this.§1"%§.§?!2§(_loc9_);
            }
            _loc9_.§'",§(this.§^!b§.§]!6§);
            _loc9_.§#!N§();
         }
         param1.§[!t§ = null;
         param1.§<!@§ = 0;
         if(param1.§true§)
         {
            param1.§true§.§7!+§ = param1.§7!+§;
         }
         if(param1.§7!+§)
         {
            param1.§7!+§.§true§ = param1.§true§;
         }
         if(param1 == this.§@n§)
         {
            this.§@n§ = param1.§7!+§;
         }
         --this.§>F§;
      }
      
      public function §0!&§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§@Q§(param1,null);
         _loc2_.§true§ = null;
         _loc2_.§7!+§ = this.§@!g§;
         if(this.§@!g§)
         {
            this.§@!g§.§true§ = _loc2_;
         }
         this.§@!g§ = _loc2_;
         ++this.§!!-§;
         _loc2_.§+!6§.§-q§ = _loc2_;
         _loc2_.§+!6§.§+!J§ = _loc2_.§ !>§;
         _loc2_.§+!6§.§9!A§ = null;
         _loc2_.§+!6§.next = _loc2_.§-U§.§@!g§;
         if(_loc2_.§-U§.§@!g§)
         {
            _loc2_.§-U§.§@!g§.§9!A§ = _loc2_.§+!6§;
         }
         _loc2_.§-U§.§@!g§ = _loc2_.§+!6§;
         _loc2_.§=<§.§-q§ = _loc2_;
         _loc2_.§=<§.§+!J§ = _loc2_.§-U§;
         _loc2_.§=<§.§9!A§ = null;
         _loc2_.§=<§.next = _loc2_.§ !>§.§@!g§;
         if(_loc2_.§ !>§.§@!g§)
         {
            _loc2_.§ !>§.§@!g§.§9!A§ = _loc2_.§=<§;
         }
         _loc2_.§ !>§.§@!g§ = _loc2_.§=<§;
         var _loc3_:b2Body = param1.§@!`§;
         var _loc4_:b2Body = param1.§@$§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§<]§();
            while(_loc5_)
            {
               if(_loc5_.§+!J§ == _loc3_)
               {
                  _loc5_.§@!"§.§<d§();
               }
               _loc5_ = _loc5_.next;
            }
         }
         return _loc2_;
      }
      
      public function § C§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§;a§;
         if(param1.§true§)
         {
            param1.§true§.§7!+§ = param1.§7!+§;
         }
         if(param1.§7!+§)
         {
            param1.§7!+§.§true§ = param1.§true§;
         }
         if(param1 == this.§@!g§)
         {
            this.§@!g§ = param1.§7!+§;
         }
         var _loc3_:b2Body = param1.§-U§;
         var _loc4_:b2Body = param1.§ !>§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§+!6§.§9!A§)
         {
            param1.§+!6§.§9!A§.next = param1.§+!6§.next;
         }
         if(param1.§+!6§.next)
         {
            param1.§+!6§.next.§9!A§ = param1.§+!6§.§9!A§;
         }
         if(param1.§+!6§ == _loc3_.§@!g§)
         {
            _loc3_.§@!g§ = param1.§+!6§.next;
         }
         param1.§+!6§.§9!A§ = null;
         param1.§+!6§.next = null;
         if(param1.§=<§.§9!A§)
         {
            param1.§=<§.§9!A§.next = param1.§=<§.next;
         }
         if(param1.§=<§.next)
         {
            param1.§=<§.next.§9!A§ = param1.§=<§.§9!A§;
         }
         if(param1.§=<§ == _loc4_.§@!g§)
         {
            _loc4_.§@!g§ = param1.§=<§.next;
         }
         param1.§=<§.§9!A§ = null;
         param1.§=<§.next = null;
         b2Joint.§#!N§(param1,null);
         --this.§!!-§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§<]§();
            while(_loc5_)
            {
               if(_loc5_.§+!J§ == _loc3_)
               {
                  _loc5_.§@!"§.§<d§();
               }
               _loc5_ = _loc5_.next;
            }
         }
      }
      
      public function §0!^§(param1:b2Controller) : b2Controller
      {
         param1.§7!+§ = this.§8!J§;
         param1.§true§ = null;
         this.§8!J§ = param1;
         param1.m_world = this;
         ++this.§]!f§;
         return param1;
      }
      
      public function §2#§(param1:b2Controller) : void
      {
         if(param1.§true§)
         {
            param1.§true§.§7!+§ = param1.§7!+§;
         }
         if(param1.§7!+§)
         {
            param1.§7!+§.§true§ = param1.§true§;
         }
         if(this.§8!J§ == param1)
         {
            this.§8!J§ = param1.§7!+§;
         }
         --this.§]!f§;
      }
      
      public function §-!u§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§7!+§ = this.§8!J§;
         param1.§true§ = null;
         if(this.§8!J§)
         {
            this.§8!J§.§true§ = param1;
         }
         this.§8!J§ = param1;
         ++this.§]!f§;
         param1.m_world = this;
         return param1;
      }
      
      public function §"!$§(param1:b2Controller) : void
      {
         param1.§11§();
         if(param1.§7!+§)
         {
            param1.§7!+§.§true§ = param1.§true§;
         }
         if(param1.§true§)
         {
            param1.§true§.§7!+§ = param1.§7!+§;
         }
         if(param1 == this.§8!J§)
         {
            this.§8!J§ = param1.§7!+§;
         }
         --this.§]!f§;
      }
      
      public function §4I§(param1:Boolean) : void
      {
         §0!`§ = param1;
      }
      
      public function §"!B§(param1:Boolean) : void
      {
         §-!,§ = param1;
      }
      
      public function §9!H§() : int
      {
         return this.§>F§;
      }
      
      public function §@1§() : int
      {
         return this.§!!-§;
      }
      
      public function §^0§() : int
      {
         return this.§?!S§;
      }
      
      public function §1!=§(param1:b2Vec2) : void
      {
         this.§2s§ = param1;
      }
      
      public function §,""§() : b2Vec2
      {
         return this.§2s§;
      }
      
      public function §?"0§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §9!b§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§@!5§ & §-!L§)
         {
            this.§^!b§.§9!G§();
            this.§@!5§ &= ~§-!L§;
         }
         this.§@!5§ |= §5",§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§]>§ = param1;
         _loc4_.§1B§ = param2;
         _loc4_.§=e§ = param3;
         if(param1 > 0)
         {
            _loc4_.§'!A§ = 1 / param1;
         }
         else
         {
            _loc4_.§'!A§ = 0;
         }
         _loc4_.§;!y§ = this.§#!Q§ * param1;
         _loc4_.§-F§ = §0!`§;
         this.§^!b§.§9,§();
         if(_loc4_.§]>§ > 0)
         {
            this.§[J§(_loc4_);
         }
         if(§-!,§ && _loc4_.§]>§ > 0)
         {
            this.§0!o§(_loc4_);
         }
         if(_loc4_.§]>§ > 0)
         {
            this.§#!Q§ = _loc4_.§'!A§;
         }
         this.§@!5§ &= ~§5",§;
      }
      
      public function §>'§() : void
      {
         var _loc1_:b2Body = this.§@n§;
         while(_loc1_)
         {
            _loc1_.§'I§.§9N§();
            _loc1_.§;!'§ = 0;
            _loc1_ = _loc1_.§7!+§;
         }
      }
      
      public function §9%§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§;!`§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§^!3§ == null)
         {
            return;
         }
         this.§^!3§.§#!^§.graphics.clear();
         var _loc1_:uint = this.§^!3§.§??§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§!!4§)
         {
            _loc3_ = this.§@n§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§<!#§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§2!^§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§@!D§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§2!^§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§@!D§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§2!^§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§2!^§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§2!^§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§7!+§;
               }
               _loc3_ = _loc3_.§7!+§;
            }
         }
         if(_loc1_ & b2DebugDraw.§9"§)
         {
            _loc6_ = this.§@!g§;
            while(_loc6_)
            {
               this.§^"'§(_loc6_);
               _loc6_ = _loc6_.§7!+§;
            }
         }
         if(_loc1_ & b2DebugDraw.§03§)
         {
            _loc16_ = this.§8!J§;
            while(_loc16_)
            {
               _loc16_.§8"#§(this.§^!3§);
               _loc16_ = _loc16_.§7!+§;
            }
         }
         if(_loc1_ & b2DebugDraw.§[!a§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§^!b§.§&!]§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§=q§();
               _loc19_ = _loc17_.§^!z§();
               _loc20_ = _loc18_.§?!u§().§=!0§();
               _loc21_ = _loc19_.§?!u§().§=!0§();
               this.§^!3§.§6>§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§,h§();
            }
         }
         if(_loc1_ & b2DebugDraw.§'!E§)
         {
            _loc7_ = this.§^!b§.§]!6§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§@n§;
            while(_loc3_)
            {
               if(_loc3_.§<!#§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§0!O§(_loc4_.§!!I§);
                     _loc14_[0].Set(_loc22_.§#!i§.x,_loc22_.§#!i§.y);
                     _loc14_[1].Set(_loc22_.§4`§.x,_loc22_.§#!i§.y);
                     _loc14_[2].Set(_loc22_.§4`§.x,_loc22_.§4`§.y);
                     _loc14_[3].Set(_loc22_.§#!i§.x,_loc22_.§4`§.y);
                     this.§^!3§.§?!Q§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§,h§();
                  }
               }
               _loc3_ = _loc3_.§,h§();
            }
         }
         if(_loc1_ & b2DebugDraw.§+!v§)
         {
            _loc3_ = this.§@n§;
            while(_loc3_)
            {
               (_loc11_ = §>!E§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§9!#§();
               this.§^!3§.§1"$§(_loc11_);
               _loc3_ = _loc3_.§7!+§;
            }
         }
      }
      
      public function §-!'§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§;!`§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§^!b§.§]!6§;
         broadPhase.§,#§(WorldQueryWrapper,aabb);
      }
      
      public function §1!]§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§;!`§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§&!^§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§^!G§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§<a§();
         }
         broadPhase = this.§^!b§.§]!6§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§,#§(WorldQueryWrapper,aabb);
      }
      
      public function §!O§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§;!`§ = null;
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
         broadPhase = this.§^!b§.§]!6§;
         var aabb:b2AABB = new b2AABB();
         aabb.§#!i§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§4`§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§,#§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§;!`§ = null;
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
            return param1.§=C§;
         };
         broadPhase = this.§^!b§.§]!6§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §^#§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §3!W§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §1!J§() : b2Body
      {
         return this.§@n§;
      }
      
      public function §]!h§() : b2Joint
      {
         return this.§@!g§;
      }
      
      public function §<]§() : b2Contact
      {
         return this.§&!]§;
      }
      
      public function §,!v§() : Boolean
      {
         return (this.§@!5§ & §5",§) > 0;
      }
      
      b2internal function §[J§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§8!J§;
         while(_loc3_)
         {
            _loc3_.§9!b§(param1);
            _loc3_ = _loc3_.§7!+§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§!! §).§"!o§(this.§>F§,this.§?!S§,this.§!!-§,null,this.§^!b§.§-!s§,this.§@4§);
         _loc2_ = this.§@n§;
         while(_loc2_)
         {
            _loc2_.§@!5§ &= ~b2Body.§;B§;
            _loc2_ = _loc2_.§7!+§;
         }
         var _loc5_:b2Contact = this.§&!]§;
         while(_loc5_)
         {
            _loc5_.§@!5§ &= ~b2Contact.§;B§;
            _loc5_ = _loc5_.§7!+§;
         }
         var _loc6_:b2Joint = this.§@!g§;
         while(_loc6_)
         {
            _loc6_.§]!&§ = false;
            _loc6_ = _loc6_.§7!+§;
         }
         var _loc7_:int = this.§>F§;
         var _loc8_:Vector.<b2Body> = this.§+V§;
         var _loc9_:b2Body = this.§@n§;
         while(_loc9_)
         {
            if(!(_loc9_.§@!5§ & b2Body.§;B§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§<!#§() == false))
               {
                  if(_loc9_.§@!D§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§11§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§@!5§ |= b2Body.§;B§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§true §(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§@!D§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§&!]§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§@!"§.§@!5§ & b2Contact.§;B§))
                              {
                                 if(!(_loc13_.§@!"§.§ &§() == true || _loc13_.§@!"§.§^M§() == false || _loc13_.§@!"§.§>!9§() == false))
                                 {
                                    _loc4_.§<!j§(_loc13_.§@!"§);
                                    _loc13_.§@!"§.§@!5§ |= b2Contact.§;B§;
                                    if(!((_loc12_ = _loc13_.§+!J§).§@!5§ & b2Body.§;B§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§@!5§ |= b2Body.§;B§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.next;
                           }
                           _loc14_ = _loc2_.§@!g§;
                           while(_loc14_)
                           {
                              if(_loc14_.§-q§.§]!&§ != true)
                              {
                                 if((_loc12_ = _loc14_.§+!J§).§<!#§() != false)
                                 {
                                    _loc4_.§1"+§(_loc14_.§-q§);
                                    _loc14_.§-q§.§]!&§ = true;
                                    if(!(_loc12_.§@!5§ & b2Body.§;B§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§@!5§ |= b2Body.§;B§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.next;
                           }
                        }
                     }
                     _loc4_.§[J§(param1,this.§2s§,this.§<Z§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§>F§)
                     {
                        _loc2_ = _loc4_.§5!k§[_loc11_];
                        if(_loc2_.§@!D§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§@!5§ &= ~b2Body.§;B§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§7!+§;
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
         _loc2_ = this.§@n§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§<!#§() == false))
            {
               if(_loc2_.§@!D§() != b2Body.b2_staticBody)
               {
                  _loc2_.§"p§();
               }
            }
            _loc2_ = _loc2_.§7!+§;
         }
         this.§^!b§.§9!G§();
      }
      
      b2internal function §0!o§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§!! §).§"!o§(this.§>F§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§^!b§.§-!s§,this.§@4§);
         var _loc10_:Vector.<b2Body> = §<!t§;
         _loc2_ = this.§@n§;
         while(_loc2_)
         {
            _loc2_.§@!5§ &= ~b2Body.§;B§;
            _loc2_.m_sweep.§?!m§ = 0;
            _loc2_ = _loc2_.§7!+§;
         }
         _loc11_ = this.§&!]§;
         while(_loc11_)
         {
            _loc11_.§@!5§ &= ~(b2Contact.§="3§ | b2Contact.§;B§);
            _loc11_.§7y§ = 1;
            _loc11_ = _loc11_.§7!+§;
         }
         _loc8_ = this.§@!g§;
         while(_loc8_)
         {
            _loc8_.§]!&§ = false;
            _loc8_ = _loc8_.§7!+§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§&!]§;
            while(_loc11_)
            {
               if(!(_loc11_.§ &§() == true || _loc11_.§^M§() == false || _loc11_.§"!h§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§@!5§ & b2Contact.§="3§)
                  {
                     _loc19_ = _loc11_.§7y§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§6!$§;
                     _loc4_ = _loc11_.§37§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§@!D§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§@!D§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr602:
                        _loc11_ = _loc11_.§7!+§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§?!m§;
                     if(_loc5_.m_sweep.§?!m§ < _loc6_.m_sweep.§?!m§)
                     {
                        _loc20_ = _loc6_.m_sweep.§?!m§;
                        _loc5_.m_sweep.§;!m§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§?!m§ < _loc5_.m_sweep.§?!m§)
                     {
                        _loc20_ = _loc5_.m_sweep.§?!m§;
                        _loc6_.m_sweep.§;!m§(_loc20_);
                     }
                     _loc19_ = _loc11_.§&!'§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§7y§ = _loc19_;
                     _loc11_.§@!5§ |= b2Contact.§="3§;
                     §§goto(addr602);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr602);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§6!$§;
            _loc4_ = _loc12_.§37§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §do §.Set(_loc5_.m_sweep);
            §import§.Set(_loc6_.m_sweep);
            _loc5_.§;!m§(_loc13_);
            _loc6_.§;!m§(_loc13_);
            _loc12_.§^§(this.§^!b§.§-!s§);
            _loc12_.§@!5§ &= ~b2Contact.§="3§;
            if(_loc12_.§ &§() == true || _loc12_.§^M§() == false)
            {
               _loc5_.m_sweep.Set(§do §);
               _loc6_.m_sweep.Set(§import§);
               _loc5_.§+!S§();
               _loc6_.§+!S§();
            }
            else if(_loc12_.§>!9§() != false)
            {
               if((_loc14_ = _loc5_).§@!D§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§11§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§@!5§ |= b2Body.§;B§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§true §(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§@!D§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§&!]§;
                     while(_loc7_)
                     {
                        if(_loc9_.§?!S§ == _loc9_.§`!G§)
                        {
                           break;
                        }
                        if(!(_loc7_.§@!"§.§@!5§ & b2Contact.§;B§))
                        {
                           if(!(_loc7_.§@!"§.§ &§() == true || _loc7_.§@!"§.§^M§() == false || _loc7_.§@!"§.§>!9§() == false))
                           {
                              _loc9_.§<!j§(_loc7_.§@!"§);
                              _loc7_.§@!"§.§@!5§ |= b2Contact.§;B§;
                              if(!((_loc22_ = _loc7_.§+!J§).§@!5§ & b2Body.§;B§))
                              {
                                 if(_loc22_.§@!D§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§;!m§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§@!5§ |= b2Body.§;B§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.next;
                     }
                     _loc21_ = _loc2_.§@!g§;
                     while(_loc21_)
                     {
                        if(_loc9_.§!!-§ != _loc9_.§]!§)
                        {
                           if(_loc21_.§-q§.§]!&§ != true)
                           {
                              if((_loc22_ = _loc21_.§+!J§).§<!#§() != false)
                              {
                                 _loc9_.§1"+§(_loc21_.§-q§);
                                 _loc21_.§-q§.§]!&§ = true;
                                 if(!(_loc22_.§@!5§ & b2Body.§;B§))
                                 {
                                    if(_loc22_.§@!D§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§;!m§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§@!5§ |= b2Body.§;B§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.next;
                     }
                  }
               }
               (_loc17_ = §[!5§).§-F§ = false;
               _loc17_.§]>§ = (1 - _loc13_) * param1.§]>§;
               _loc17_.§'!A§ = 1 / _loc17_.§]>§;
               _loc17_.§;!y§ = 1;
               _loc17_.§1B§ = param1.§1B§;
               _loc17_.§=e§ = param1.§=e§;
               _loc9_.§0!o§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§>F§)
               {
                  _loc2_ = _loc9_.§5!k§[_loc18_];
                  _loc2_.§@!5§ &= ~b2Body.§;B§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§@!D§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§"p§();
                        _loc7_ = _loc2_.§&!]§;
                        while(_loc7_)
                        {
                           _loc7_.§@!"§.§@!5§ &= ~b2Contact.§="3§;
                           _loc7_ = _loc7_.next;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§?!S§)
               {
                  _loc11_ = _loc9_.§1!Q§[_loc18_];
                  _loc11_.§@!5§ &= ~(b2Contact.§="3§ | b2Contact.§;B§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§!!-§)
               {
                  (_loc8_ = _loc9_.§@-§[_loc18_]).§]!&§ = false;
                  _loc18_++;
               }
               this.§^!b§.§9!G§();
            }
         }
      }
      
      b2internal function §^"'§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§;!R§();
         var _loc3_:b2Body = param1.§[!Q§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §=`§;
         switch(param1.§0"§)
         {
            case b2Joint.§^!q§:
               this.§^!3§.§6>§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§=S§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§`!b§();
               _loc13_ = _loc11_.§!`§();
               this.§^!3§.§6>§(_loc12_,_loc8_,_loc10_);
               this.§^!3§.§6>§(_loc13_,_loc9_,_loc10_);
               this.§^!3§.§6>§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§-!o§:
               this.§^!3§.§6>§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§^!3§.§6>§(_loc6_,_loc8_,_loc10_);
               }
               this.§^!3§.§6>§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§^!3§.§6>§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §2!^§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§0"§)
         {
            case b2Shape.§3t§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§6!D§(param2,_loc4_.§+w§);
               _loc6_ = _loc4_.§`!,§;
               _loc7_ = param2.R.col1;
               this.§^!3§.§'!$§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§7p§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§8_§();
               _loc11_ = _loc9_.§?]§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§6!D§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§^!3§.§]$§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§#=§:
               _loc13_ = param1 as b2EdgeShape;
               this.§^!3§.§6>§(b2Math.§6!D§(param2,_loc13_.GetVertex1()),b2Math.§6!D§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

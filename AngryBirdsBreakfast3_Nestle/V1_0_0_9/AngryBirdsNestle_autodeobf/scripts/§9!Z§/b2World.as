package §9!Z§
{
   import §!"2§.b2Controller;
   import §!"2§.b2ControllerEdge;
   import §'I§.*;
   import §,H§.*;
   import §7!&§.*;
   import §?"'§.*;
   import §[K§.*;
   import §`!C§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §'!H§:b2Transform = new b2Transform();
      
      private static var §>n§:b2Sweep = new b2Sweep();
      
      private static var §@!r§:b2Sweep = new b2Sweep();
      
      private static var §9!v§:b2TimeStep = new b2TimeStep();
      
      private static var §<!_§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §@!5§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §9!1§:Boolean;
      
      private static var §[!E§:Boolean;
      
      public static const §%i§:int = 1;
      
      public static const §3"3§:int = 2;
       
      
      private var §4j§:Vector.<b2Body>;
      
      b2internal var § !E§:int;
      
      b2internal var §-!K§:b2ContactManager;
      
      private var §0!-§:b2ContactSolver;
      
      private var §0"'§:b2Island;
      
      b2internal var §8"%§:b2Body;
      
      private var §1e§:b2Joint;
      
      b2internal var §-!x§:b2Contact;
      
      private var §,!T§:int;
      
      b2internal var §,!f§:int;
      
      private var §8!h§:int;
      
      private var §,x§:b2Controller;
      
      private var §,k§:int;
      
      private var §,"$§:b2Vec2;
      
      private var §?t§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §0!y§:b2DestructionListener;
      
      private var §]b§:b2DebugDraw;
      
      private var §2!>§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§4j§ = new Vector.<b2Body>();
         this.§-!K§ = new b2ContactManager();
         this.§0!-§ = new b2ContactSolver();
         this.§0"'§ = new b2Island();
         super();
         this.§0!y§ = null;
         this.§]b§ = null;
         this.§8"%§ = null;
         this.§-!x§ = null;
         this.§1e§ = null;
         this.§,x§ = null;
         this.§,!T§ = 0;
         this.§,!f§ = 0;
         this.§8!h§ = 0;
         this.§,k§ = 0;
         §9!1§ = true;
         §[!E§ = true;
         this.§?t§ = param2;
         this.§,"$§ = param1;
         this.§2!>§ = 0;
         this.§-!K§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §2!i§(param1:b2DestructionListener) : void
      {
         this.§0!y§ = param1;
      }
      
      public function §"![§(param1:b2ContactFilter) : void
      {
         this.§-!K§.§7!=§ = param1;
      }
      
      public function §'_§(param1:b2ContactListener) : void
      {
         this.§-!K§.§7S§ = param1;
      }
      
      public function §?w§(param1:b2DebugDraw) : void
      {
         this.§]b§ = param1;
      }
      
      public function §0!<§(param1:§;!p§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§;!p§ = this.§-!K§.§]"4§;
         this.§-!K§.§]"4§ = param1;
         var _loc3_:b2Body = this.§8"%§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§]"!§;
            while(_loc4_)
            {
               _loc4_.§#r§ = param1.§-$§(_loc2_.§4"0§(_loc4_.§#r§),_loc4_);
               _loc4_ = _loc4_.§>7§;
            }
            _loc3_ = _loc3_.§>7§;
         }
      }
      
      public function §!" §() : void
      {
         this.§-!K§.§]"4§.§!" §();
      }
      
      public function §@!8§() : int
      {
         return this.§-!K§.§]"4§.§@!8§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§ "4§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§<!u§ = null;
         _loc2_.§>7§ = this.§8"%§;
         if(this.§8"%§)
         {
            this.§8"%§.§<!u§ = _loc2_;
         }
         this.§8"%§ = _loc2_;
         ++this.§,!T§;
         return _loc2_;
      }
      
      public function §;!9§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§ "4§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§1e§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.next;
            if(this.§0!y§)
            {
               this.§0!y§.§^!v§(_loc6_.§^1§);
            }
            this.§+K§(_loc6_.§^1§);
         }
         var _loc3_:b2ControllerEdge = param1.§,x§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§>=§;
            _loc7_.controller.§[F§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§-!x§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.next;
            this.§-!K§.§"!,§(_loc8_.§1!z§);
         }
         param1.§-!x§ = null;
         var _loc5_:b2Fixture = param1.§]"!§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§>7§;
            if(this.§0!y§)
            {
               this.§0!y§.§<!L§(_loc9_);
            }
            _loc9_.§=§(this.§-!K§.§]"4§);
            _loc9_.§"!,§();
         }
         param1.§]"!§ = null;
         param1.§'"6§ = 0;
         if(param1.§<!u§)
         {
            param1.§<!u§.§>7§ = param1.§>7§;
         }
         if(param1.§>7§)
         {
            param1.§>7§.§<!u§ = param1.§<!u§;
         }
         if(param1 == this.§8"%§)
         {
            this.§8"%§ = param1.§>7§;
         }
         --this.§,!T§;
      }
      
      public function §5U§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§&y§(param1,null);
         _loc2_.§<!u§ = null;
         _loc2_.§>7§ = this.§1e§;
         if(this.§1e§)
         {
            this.§1e§.§<!u§ = _loc2_;
         }
         this.§1e§ = _loc2_;
         ++this.§8!h§;
         _loc2_.§^"2§.§^1§ = _loc2_;
         _loc2_.§^"2§.§"!$§ = _loc2_.§;Q§;
         _loc2_.§^"2§.§`!o§ = null;
         _loc2_.§^"2§.next = _loc2_.§3v§.§1e§;
         if(_loc2_.§3v§.§1e§)
         {
            _loc2_.§3v§.§1e§.§`!o§ = _loc2_.§^"2§;
         }
         _loc2_.§3v§.§1e§ = _loc2_.§^"2§;
         _loc2_.§="7§.§^1§ = _loc2_;
         _loc2_.§="7§.§"!$§ = _loc2_.§3v§;
         _loc2_.§="7§.§`!o§ = null;
         _loc2_.§="7§.next = _loc2_.§;Q§.§1e§;
         if(_loc2_.§;Q§.§1e§)
         {
            _loc2_.§;Q§.§1e§.§`!o§ = _loc2_.§="7§;
         }
         _loc2_.§;Q§.§1e§ = _loc2_.§="7§;
         var _loc3_:b2Body = param1.§'!R§;
         var _loc4_:b2Body = param1.§@V§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§+@§();
            while(_loc5_)
            {
               if(_loc5_.§"!$§ == _loc3_)
               {
                  _loc5_.§1!z§.§->§();
               }
               _loc5_ = _loc5_.next;
            }
         }
         return _loc2_;
      }
      
      public function §+K§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§,T§;
         if(param1.§<!u§)
         {
            param1.§<!u§.§>7§ = param1.§>7§;
         }
         if(param1.§>7§)
         {
            param1.§>7§.§<!u§ = param1.§<!u§;
         }
         if(param1 == this.§1e§)
         {
            this.§1e§ = param1.§>7§;
         }
         var _loc3_:b2Body = param1.§3v§;
         var _loc4_:b2Body = param1.§;Q§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§^"2§.§`!o§)
         {
            param1.§^"2§.§`!o§.next = param1.§^"2§.next;
         }
         if(param1.§^"2§.next)
         {
            param1.§^"2§.next.§`!o§ = param1.§^"2§.§`!o§;
         }
         if(param1.§^"2§ == _loc3_.§1e§)
         {
            _loc3_.§1e§ = param1.§^"2§.next;
         }
         param1.§^"2§.§`!o§ = null;
         param1.§^"2§.next = null;
         if(param1.§="7§.§`!o§)
         {
            param1.§="7§.§`!o§.next = param1.§="7§.next;
         }
         if(param1.§="7§.next)
         {
            param1.§="7§.next.§`!o§ = param1.§="7§.§`!o§;
         }
         if(param1.§="7§ == _loc4_.§1e§)
         {
            _loc4_.§1e§ = param1.§="7§.next;
         }
         param1.§="7§.§`!o§ = null;
         param1.§="7§.next = null;
         b2Joint.§"!,§(param1,null);
         --this.§8!h§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§+@§();
            while(_loc5_)
            {
               if(_loc5_.§"!$§ == _loc3_)
               {
                  _loc5_.§1!z§.§->§();
               }
               _loc5_ = _loc5_.next;
            }
         }
      }
      
      public function §#P§(param1:b2Controller) : b2Controller
      {
         param1.§>7§ = this.§,x§;
         param1.§<!u§ = null;
         this.§,x§ = param1;
         param1.m_world = this;
         ++this.§,k§;
         return param1;
      }
      
      public function §,!"§(param1:b2Controller) : void
      {
         if(param1.§<!u§)
         {
            param1.§<!u§.§>7§ = param1.§>7§;
         }
         if(param1.§>7§)
         {
            param1.§>7§.§<!u§ = param1.§<!u§;
         }
         if(this.§,x§ == param1)
         {
            this.§,x§ = param1.§>7§;
         }
         --this.§,k§;
      }
      
      public function §22§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§>7§ = this.§,x§;
         param1.§<!u§ = null;
         if(this.§,x§)
         {
            this.§,x§.§<!u§ = param1;
         }
         this.§,x§ = param1;
         ++this.§,k§;
         param1.m_world = this;
         return param1;
      }
      
      public function §,!5§(param1:b2Controller) : void
      {
         param1.§[!^§();
         if(param1.§>7§)
         {
            param1.§>7§.§<!u§ = param1.§<!u§;
         }
         if(param1.§<!u§)
         {
            param1.§<!u§.§>7§ = param1.§>7§;
         }
         if(param1 == this.§,x§)
         {
            this.§,x§ = param1.§>7§;
         }
         --this.§,k§;
      }
      
      public function §?!&§(param1:Boolean) : void
      {
         §9!1§ = param1;
      }
      
      public function §55§(param1:Boolean) : void
      {
         §[!E§ = param1;
      }
      
      public function §#^§() : int
      {
         return this.§,!T§;
      }
      
      public function §?g§() : int
      {
         return this.§8!h§;
      }
      
      public function § h§() : int
      {
         return this.§,!f§;
      }
      
      public function § y§(param1:b2Vec2) : void
      {
         this.§,"$§ = param1;
      }
      
      public function §!!e§() : b2Vec2
      {
         return this.§,"$§;
      }
      
      public function §?!X§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §"+§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§ !E§ & §%i§)
         {
            this.§-!K§.§+[§();
            this.§ !E§ &= ~§%i§;
         }
         this.§ !E§ |= §3"3§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§>!`§ = param1;
         _loc4_.§3!]§ = param2;
         _loc4_.§1!<§ = param3;
         if(param1 > 0)
         {
            _loc4_.§-!M§ = 1 / param1;
         }
         else
         {
            _loc4_.§-!M§ = 0;
         }
         _loc4_.§6!'§ = this.§2!>§ * param1;
         _loc4_.§#=§ = §9!1§;
         this.§-!K§.§3!A§();
         if(_loc4_.§>!`§ > 0)
         {
            this.§=L§(_loc4_);
         }
         if(§[!E§ && _loc4_.§>!`§ > 0)
         {
            this.§^!2§(_loc4_);
         }
         if(_loc4_.§>!`§ > 0)
         {
            this.§2!>§ = _loc4_.§-!M§;
         }
         this.§ !E§ &= ~§3"3§;
      }
      
      public function §^!+§() : void
      {
         var _loc1_:b2Body = this.§8"%§;
         while(_loc1_)
         {
            _loc1_.§1"%§.§6!c§();
            _loc1_.§3",§ = 0;
            _loc1_ = _loc1_.§>7§;
         }
      }
      
      public function §+!v§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§;!p§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§]b§ == null)
         {
            return;
         }
         this.§]b§.§-!$§.graphics.clear();
         var _loc1_:uint = this.§]b§.§for §();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§3!^§)
         {
            _loc3_ = this.§8"%§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§]!@§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§,!N§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§&r§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§,!N§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§&r§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§,!N§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§,!N§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§,!N§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§>7§;
               }
               _loc3_ = _loc3_.§>7§;
            }
         }
         if(_loc1_ & b2DebugDraw.§&V§)
         {
            _loc6_ = this.§1e§;
            while(_loc6_)
            {
               this.§6a§(_loc6_);
               _loc6_ = _loc6_.§>7§;
            }
         }
         if(_loc1_ & b2DebugDraw.§2!<§)
         {
            _loc16_ = this.§,x§;
            while(_loc16_)
            {
               _loc16_.§2!O§(this.§]b§);
               _loc16_ = _loc16_.§>7§;
            }
         }
         if(_loc1_ & b2DebugDraw.§+B§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§-!K§.§-!x§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§@"0§();
               _loc19_ = _loc17_.§!!Z§();
               _loc20_ = _loc18_.§7!9§().§ !h§();
               _loc21_ = _loc19_.§7!9§().§ !h§();
               this.§]b§.§;2§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§&!B§();
            }
         }
         if(_loc1_ & b2DebugDraw.§7x§)
         {
            _loc7_ = this.§-!K§.§]"4§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§8"%§;
            while(_loc3_)
            {
               if(_loc3_.§]!@§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§4"0§(_loc4_.§#r§);
                     _loc14_[0].Set(_loc22_.§6!§.x,_loc22_.§6!§.y);
                     _loc14_[1].Set(_loc22_.§5!'§.x,_loc22_.§6!§.y);
                     _loc14_[2].Set(_loc22_.§5!'§.x,_loc22_.§5!'§.y);
                     _loc14_[3].Set(_loc22_.§6!§.x,_loc22_.§5!'§.y);
                     this.§]b§.§4g§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§&!B§();
                  }
               }
               _loc3_ = _loc3_.§&!B§();
            }
         }
         if(_loc1_ & b2DebugDraw.§;!s§)
         {
            _loc3_ = this.§8"%§;
            while(_loc3_)
            {
               (_loc11_ = §'!H§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§`!z§();
               this.§]b§.§ B§(_loc11_);
               _loc3_ = _loc3_.§>7§;
            }
         }
      }
      
      public function §+]§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§;!p§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§-!K§.§]"4§;
         broadPhase.§;!m§(WorldQueryWrapper,aabb);
      }
      
      public function §#-§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§;!p§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§ "0§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§0!z§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§&4§();
         }
         broadPhase = this.§-!K§.§]"4§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§;!m§(WorldQueryWrapper,aabb);
      }
      
      public function §=!B§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§;!p§ = null;
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
         broadPhase = this.§-!K§.§]"4§;
         var aabb:b2AABB = new b2AABB();
         aabb.§6!§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§5!'§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§;!m§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§;!p§ = null;
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
            return param1.§,J§;
         };
         broadPhase = this.§-!K§.§]"4§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §9!a§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §<!n§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §#!4§() : b2Body
      {
         return this.§8"%§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§1e§;
      }
      
      public function §+@§() : b2Contact
      {
         return this.§-!x§;
      }
      
      public function § "4§() : Boolean
      {
         return (this.§ !E§ & §3"3§) > 0;
      }
      
      b2internal function §=L§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§,x§;
         while(_loc3_)
         {
            _loc3_.§"+§(param1);
            _loc3_ = _loc3_.§>7§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§0"'§).§implements§(this.§,!T§,this.§,!f§,this.§8!h§,null,this.§-!K§.§7S§,this.§0!-§);
         _loc2_ = this.§8"%§;
         while(_loc2_)
         {
            _loc2_.§ !E§ &= ~b2Body.§6'§;
            _loc2_ = _loc2_.§>7§;
         }
         var _loc5_:b2Contact = this.§-!x§;
         while(_loc5_)
         {
            _loc5_.§ !E§ &= ~b2Contact.§6'§;
            _loc5_ = _loc5_.§>7§;
         }
         var _loc6_:b2Joint = this.§1e§;
         while(_loc6_)
         {
            _loc6_.§6!@§ = false;
            _loc6_ = _loc6_.§>7§;
         }
         var _loc7_:int = this.§,!T§;
         var _loc8_:Vector.<b2Body> = this.§4j§;
         var _loc9_:b2Body = this.§8"%§;
         while(_loc9_)
         {
            if(!(_loc9_.§ !E§ & b2Body.§6'§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§]!@§() == false))
               {
                  if(_loc9_.§&r§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§[!^§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§ !E§ |= b2Body.§6'§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§""-§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§&r§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§-!x§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§1!z§.§ !E§ & b2Contact.§6'§))
                              {
                                 if(!(_loc13_.§1!z§.§9!@§() == true || _loc13_.§1!z§.§`!+§() == false || _loc13_.§1!z§.§"Z§() == false))
                                 {
                                    _loc4_.§-"§(_loc13_.§1!z§);
                                    _loc13_.§1!z§.§ !E§ |= b2Contact.§6'§;
                                    if(!((_loc12_ = _loc13_.§"!$§).§ !E§ & b2Body.§6'§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§ !E§ |= b2Body.§6'§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.next;
                           }
                           _loc14_ = _loc2_.§1e§;
                           while(_loc14_)
                           {
                              if(_loc14_.§^1§.§6!@§ != true)
                              {
                                 if((_loc12_ = _loc14_.§"!$§).§]!@§() != false)
                                 {
                                    _loc4_.§1! §(_loc14_.§^1§);
                                    _loc14_.§^1§.§6!@§ = true;
                                    if(!(_loc12_.§ !E§ & b2Body.§6'§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§ !E§ |= b2Body.§6'§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.next;
                           }
                        }
                     }
                     _loc4_.§=L§(param1,this.§,"$§,this.§?t§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§,!T§)
                     {
                        _loc2_ = _loc4_.§>V§[_loc11_];
                        if(_loc2_.§&r§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§ !E§ &= ~b2Body.§6'§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§>7§;
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
         _loc2_ = this.§8"%§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§]!@§() == false))
            {
               if(_loc2_.§&r§() != b2Body.b2_staticBody)
               {
                  _loc2_.§=<§();
               }
            }
            _loc2_ = _loc2_.§>7§;
         }
         this.§-!K§.§+[§();
      }
      
      b2internal function §^!2§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§0"'§).§implements§(this.§,!T§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§-!K§.§7S§,this.§0!-§);
         var _loc10_:Vector.<b2Body> = §<!_§;
         _loc2_ = this.§8"%§;
         while(_loc2_)
         {
            _loc2_.§ !E§ &= ~b2Body.§6'§;
            _loc2_.m_sweep.§'1§ = 0;
            _loc2_ = _loc2_.§>7§;
         }
         _loc11_ = this.§-!x§;
         while(_loc11_)
         {
            _loc11_.§ !E§ &= ~(b2Contact.§ "2§ | b2Contact.§6'§);
            _loc11_.§[A§ = 1;
            _loc11_ = _loc11_.§>7§;
         }
         _loc8_ = this.§1e§;
         while(_loc8_)
         {
            _loc8_.§6!@§ = false;
            _loc8_ = _loc8_.§>7§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§-!x§;
            while(_loc11_)
            {
               if(!(_loc11_.§9!@§() == true || _loc11_.§`!+§() == false || _loc11_.§#!-§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§ !E§ & b2Contact.§ "2§)
                  {
                     _loc19_ = _loc11_.§[A§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§,!V§;
                     _loc4_ = _loc11_.§-"0§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§&r§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§&r§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr634:
                        _loc11_ = _loc11_.§>7§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§'1§;
                     if(_loc5_.m_sweep.§'1§ < _loc6_.m_sweep.§'1§)
                     {
                        _loc20_ = _loc6_.m_sweep.§'1§;
                        _loc5_.m_sweep.§8H§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§'1§ < _loc5_.m_sweep.§'1§)
                     {
                        _loc20_ = _loc5_.m_sweep.§'1§;
                        _loc6_.m_sweep.§8H§(_loc20_);
                     }
                     _loc19_ = _loc11_.§;!@§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§[A§ = _loc19_;
                     _loc11_.§ !E§ |= b2Contact.§ "2§;
                     §§goto(addr634);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr634);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§,!V§;
            _loc4_ = _loc12_.§-"0§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §>n§.Set(_loc5_.m_sweep);
            §@!r§.Set(_loc6_.m_sweep);
            _loc5_.§8H§(_loc13_);
            _loc6_.§8H§(_loc13_);
            _loc12_.§09§(this.§-!K§.§7S§);
            _loc12_.§ !E§ &= ~b2Contact.§ "2§;
            if(_loc12_.§9!@§() == true || _loc12_.§`!+§() == false)
            {
               _loc5_.m_sweep.Set(§>n§);
               _loc6_.m_sweep.Set(§@!r§);
               _loc5_.§>#§();
               _loc6_.§>#§();
            }
            else if(_loc12_.§"Z§() != false)
            {
               if((_loc14_ = _loc5_).§&r§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§[!^§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§ !E§ |= b2Body.§6'§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§""-§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§&r§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§-!x§;
                     while(_loc7_)
                     {
                        if(_loc9_.§,!f§ == _loc9_.§-!6§)
                        {
                           break;
                        }
                        if(!(_loc7_.§1!z§.§ !E§ & b2Contact.§6'§))
                        {
                           if(!(_loc7_.§1!z§.§9!@§() == true || _loc7_.§1!z§.§`!+§() == false || _loc7_.§1!z§.§"Z§() == false))
                           {
                              _loc9_.§-"§(_loc7_.§1!z§);
                              _loc7_.§1!z§.§ !E§ |= b2Contact.§6'§;
                              if(!((_loc22_ = _loc7_.§"!$§).§ !E§ & b2Body.§6'§))
                              {
                                 if(_loc22_.§&r§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§8H§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§ !E§ |= b2Body.§6'§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.next;
                     }
                     _loc21_ = _loc2_.§1e§;
                     while(_loc21_)
                     {
                        if(_loc9_.§8!h§ != _loc9_.§5!O§)
                        {
                           if(_loc21_.§^1§.§6!@§ != true)
                           {
                              if((_loc22_ = _loc21_.§"!$§).§]!@§() != false)
                              {
                                 _loc9_.§1! §(_loc21_.§^1§);
                                 _loc21_.§^1§.§6!@§ = true;
                                 if(!(_loc22_.§ !E§ & b2Body.§6'§))
                                 {
                                    if(_loc22_.§&r§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§8H§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§ !E§ |= b2Body.§6'§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.next;
                     }
                  }
               }
               (_loc17_ = §9!v§).§#=§ = false;
               _loc17_.§>!`§ = (1 - _loc13_) * param1.§>!`§;
               _loc17_.§-!M§ = 1 / _loc17_.§>!`§;
               _loc17_.§6!'§ = 1;
               _loc17_.§3!]§ = param1.§3!]§;
               _loc17_.§1!<§ = param1.§1!<§;
               _loc9_.§^!2§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§,!T§)
               {
                  _loc2_ = _loc9_.§>V§[_loc18_];
                  _loc2_.§ !E§ &= ~b2Body.§6'§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§&r§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§=<§();
                        _loc7_ = _loc2_.§-!x§;
                        while(_loc7_)
                        {
                           _loc7_.§1!z§.§ !E§ &= ~b2Contact.§ "2§;
                           _loc7_ = _loc7_.next;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§,!f§)
               {
                  _loc11_ = _loc9_.§8!D§[_loc18_];
                  _loc11_.§ !E§ &= ~(b2Contact.§ "2§ | b2Contact.§6'§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§8!h§)
               {
                  (_loc8_ = _loc9_.§<Y§[_loc18_]).§6!@§ = false;
                  _loc18_++;
               }
               this.§-!K§.§+[§();
            }
         }
      }
      
      b2internal function §6a§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§5!c§();
         var _loc3_:b2Body = param1.§^7§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §@!5§;
         switch(param1.§[!5§)
         {
            case b2Joint.§,r§:
               this.§]b§.§;2§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§!7§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§7""§();
               _loc13_ = _loc11_.§9>§();
               this.§]b§.§;2§(_loc12_,_loc8_,_loc10_);
               this.§]b§.§;2§(_loc13_,_loc9_,_loc10_);
               this.§]b§.§;2§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§<! §:
               this.§]b§.§;2§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§]b§.§;2§(_loc6_,_loc8_,_loc10_);
               }
               this.§]b§.§;2§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§]b§.§;2§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §,!N§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§[!5§)
         {
            case b2Shape.§7"4§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§2!]§(param2,_loc4_.§=g§);
               _loc6_ = _loc4_.§>"§;
               _loc7_ = param2.R.col1;
               this.§]b§.§&!r§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§?"#§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§8!%§();
               _loc11_ = _loc9_.§&!_§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§2!]§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§]b§.§6k§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§4!7§:
               _loc13_ = param1 as b2EdgeShape;
               this.§]b§.§;2§(b2Math.§2!]§(param2,_loc13_.GetVertex1()),b2Math.§2!]§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

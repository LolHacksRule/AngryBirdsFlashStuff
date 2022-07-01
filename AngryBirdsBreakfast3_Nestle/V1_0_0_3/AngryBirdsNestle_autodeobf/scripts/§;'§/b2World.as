package §;'§
{
   import § !%§.*;
   import §+W§.*;
   import §,!k§.*;
   import §1!]§.b2Controller;
   import §1!]§.b2ControllerEdge;
   import §6f§.*;
   import §>H§.*;
   import §?m§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §^y§:b2Transform = new b2Transform();
      
      private static var §>X§:b2Sweep = new b2Sweep();
      
      private static var §[!B§:b2Sweep = new b2Sweep();
      
      private static var §%!!§:b2TimeStep = new b2TimeStep();
      
      private static var §-!G§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §6!8§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §'" §:Boolean;
      
      private static var §4!^§:Boolean;
      
      public static const §>!-§:int = 1;
      
      public static const §3!,§:int = 2;
       
      
      private var §>M§:Vector.<b2Body>;
      
      b2internal var §"!4§:int;
      
      b2internal var §`!t§:b2ContactManager;
      
      private var § !6§:b2ContactSolver;
      
      private var §"c§:b2Island;
      
      b2internal var §1!z§:b2Body;
      
      private var §0!6§:b2Joint;
      
      b2internal var §5!i§:b2Contact;
      
      private var §`Q§:int;
      
      b2internal var §]E§:int;
      
      private var §,!b§:int;
      
      private var §5!V§:b2Controller;
      
      private var §>z§:int;
      
      private var §6m§:b2Vec2;
      
      private var §1S§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §&K§:b2DestructionListener;
      
      private var §<j§:b2DebugDraw;
      
      private var §!!a§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§>M§ = new Vector.<b2Body>();
         this.§`!t§ = new b2ContactManager();
         this.§ !6§ = new b2ContactSolver();
         this.§"c§ = new b2Island();
         super();
         this.§&K§ = null;
         this.§<j§ = null;
         this.§1!z§ = null;
         this.§5!i§ = null;
         this.§0!6§ = null;
         this.§5!V§ = null;
         this.§`Q§ = 0;
         this.§]E§ = 0;
         this.§,!b§ = 0;
         this.§>z§ = 0;
         §'" § = true;
         §4!^§ = true;
         this.§1S§ = param2;
         this.§6m§ = param1;
         this.§!!a§ = 0;
         this.§`!t§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §;q§(param1:b2DestructionListener) : void
      {
         this.§&K§ = param1;
      }
      
      public function §>G§(param1:b2ContactFilter) : void
      {
         this.§`!t§.§-!$§ = param1;
      }
      
      public function §,!<§(param1:b2ContactListener) : void
      {
         this.§`!t§.§^!5§ = param1;
      }
      
      public function §%"3§(param1:b2DebugDraw) : void
      {
         this.§<j§ = param1;
      }
      
      public function §;!R§(param1:§?"§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§?"§ = this.§`!t§.§35§;
         this.§`!t§.§35§ = param1;
         var _loc3_:b2Body = this.§1!z§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§%+§;
            while(_loc4_)
            {
               _loc4_.§4!B§ = param1.§?!R§(_loc2_.§+x§(_loc4_.§4!B§),_loc4_);
               _loc4_ = _loc4_.§1F§;
            }
            _loc3_ = _loc3_.§1F§;
         }
      }
      
      public function §1k§() : void
      {
         this.§`!t§.§35§.§1k§();
      }
      
      public function §throw§() : int
      {
         return this.§`!t§.§35§.§throw§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§5"!§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§!!h§ = null;
         _loc2_.§1F§ = this.§1!z§;
         if(this.§1!z§)
         {
            this.§1!z§.§!!h§ = _loc2_;
         }
         this.§1!z§ = _loc2_;
         ++this.§`Q§;
         return _loc2_;
      }
      
      public function §>!Y§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§5"!§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§0!6§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.next;
            if(this.§&K§)
            {
               this.§&K§.§"!e§(_loc6_.§&!$§);
            }
            this.§07§(_loc6_.§&!$§);
         }
         var _loc3_:b2ControllerEdge = param1.§5!V§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§7Q§;
            _loc7_.controller.§9!4§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§5!i§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.next;
            this.§`!t§.§'!h§(_loc8_.§5T§);
         }
         param1.§5!i§ = null;
         var _loc5_:b2Fixture = param1.§%+§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§1F§;
            if(this.§&K§)
            {
               this.§&K§.§"!;§(_loc9_);
            }
            _loc9_.§;!b§(this.§`!t§.§35§);
            _loc9_.§'!h§();
         }
         param1.§%+§ = null;
         param1.§60§ = 0;
         if(param1.§!!h§)
         {
            param1.§!!h§.§1F§ = param1.§1F§;
         }
         if(param1.§1F§)
         {
            param1.§1F§.§!!h§ = param1.§!!h§;
         }
         if(param1 == this.§1!z§)
         {
            this.§1!z§ = param1.§1F§;
         }
         --this.§`Q§;
      }
      
      public function §#!t§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§-",§(param1,null);
         _loc2_.§!!h§ = null;
         _loc2_.§1F§ = this.§0!6§;
         if(this.§0!6§)
         {
            this.§0!6§.§!!h§ = _loc2_;
         }
         this.§0!6§ = _loc2_;
         ++this.§,!b§;
         _loc2_.§@!&§.§&!$§ = _loc2_;
         _loc2_.§@!&§.§^!,§ = _loc2_.§ N§;
         _loc2_.§@!&§.§+g§ = null;
         _loc2_.§@!&§.next = _loc2_.§9!>§.§0!6§;
         if(_loc2_.§9!>§.§0!6§)
         {
            _loc2_.§9!>§.§0!6§.§+g§ = _loc2_.§@!&§;
         }
         _loc2_.§9!>§.§0!6§ = _loc2_.§@!&§;
         _loc2_.§[O§.§&!$§ = _loc2_;
         _loc2_.§[O§.§^!,§ = _loc2_.§9!>§;
         _loc2_.§[O§.§+g§ = null;
         _loc2_.§[O§.next = _loc2_.§ N§.§0!6§;
         if(_loc2_.§ N§.§0!6§)
         {
            _loc2_.§ N§.§0!6§.§+g§ = _loc2_.§[O§;
         }
         _loc2_.§ N§.§0!6§ = _loc2_.§[O§;
         var _loc3_:b2Body = param1.§>q§;
         var _loc4_:b2Body = param1.§6!,§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§,!'§();
            while(_loc5_)
            {
               if(_loc5_.§^!,§ == _loc3_)
               {
                  _loc5_.§5T§.§#!2§();
               }
               _loc5_ = _loc5_.next;
            }
         }
         return _loc2_;
      }
      
      public function §07§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§@i§;
         if(param1.§!!h§)
         {
            param1.§!!h§.§1F§ = param1.§1F§;
         }
         if(param1.§1F§)
         {
            param1.§1F§.§!!h§ = param1.§!!h§;
         }
         if(param1 == this.§0!6§)
         {
            this.§0!6§ = param1.§1F§;
         }
         var _loc3_:b2Body = param1.§9!>§;
         var _loc4_:b2Body = param1.§ N§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§@!&§.§+g§)
         {
            param1.§@!&§.§+g§.next = param1.§@!&§.next;
         }
         if(param1.§@!&§.next)
         {
            param1.§@!&§.next.§+g§ = param1.§@!&§.§+g§;
         }
         if(param1.§@!&§ == _loc3_.§0!6§)
         {
            _loc3_.§0!6§ = param1.§@!&§.next;
         }
         param1.§@!&§.§+g§ = null;
         param1.§@!&§.next = null;
         if(param1.§[O§.§+g§)
         {
            param1.§[O§.§+g§.next = param1.§[O§.next;
         }
         if(param1.§[O§.next)
         {
            param1.§[O§.next.§+g§ = param1.§[O§.§+g§;
         }
         if(param1.§[O§ == _loc4_.§0!6§)
         {
            _loc4_.§0!6§ = param1.§[O§.next;
         }
         param1.§[O§.§+g§ = null;
         param1.§[O§.next = null;
         b2Joint.§'!h§(param1,null);
         --this.§,!b§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§,!'§();
            while(_loc5_)
            {
               if(_loc5_.§^!,§ == _loc3_)
               {
                  _loc5_.§5T§.§#!2§();
               }
               _loc5_ = _loc5_.next;
            }
         }
      }
      
      public function §<!v§(param1:b2Controller) : b2Controller
      {
         param1.§1F§ = this.§5!V§;
         param1.§!!h§ = null;
         this.§5!V§ = param1;
         param1.m_world = this;
         ++this.§>z§;
         return param1;
      }
      
      public function §4!§(param1:b2Controller) : void
      {
         if(param1.§!!h§)
         {
            param1.§!!h§.§1F§ = param1.§1F§;
         }
         if(param1.§1F§)
         {
            param1.§1F§.§!!h§ = param1.§!!h§;
         }
         if(this.§5!V§ == param1)
         {
            this.§5!V§ = param1.§1F§;
         }
         --this.§>z§;
      }
      
      public function §7!s§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§1F§ = this.§5!V§;
         param1.§!!h§ = null;
         if(this.§5!V§)
         {
            this.§5!V§.§!!h§ = param1;
         }
         this.§5!V§ = param1;
         ++this.§>z§;
         param1.m_world = this;
         return param1;
      }
      
      public function §-!w§(param1:b2Controller) : void
      {
         param1.§&"2§();
         if(param1.§1F§)
         {
            param1.§1F§.§!!h§ = param1.§!!h§;
         }
         if(param1.§!!h§)
         {
            param1.§!!h§.§1F§ = param1.§1F§;
         }
         if(param1 == this.§5!V§)
         {
            this.§5!V§ = param1.§1F§;
         }
         --this.§>z§;
      }
      
      public function §&!-§(param1:Boolean) : void
      {
         §'" § = param1;
      }
      
      public function §"!M§(param1:Boolean) : void
      {
         §4!^§ = param1;
      }
      
      public function §]Y§() : int
      {
         return this.§`Q§;
      }
      
      public function §,!n§() : int
      {
         return this.§,!b§;
      }
      
      public function § !#§() : int
      {
         return this.§]E§;
      }
      
      public function §?!r§(param1:b2Vec2) : void
      {
         this.§6m§ = param1;
      }
      
      public function §8!g§() : b2Vec2
      {
         return this.§6m§;
      }
      
      public function §null§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §0!,§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§"!4§ & §>!-§)
         {
            this.§`!t§.§@!g§();
            this.§"!4§ &= ~§>!-§;
         }
         this.§"!4§ |= §3!,§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§<"3§ = param1;
         _loc4_.§`!u§ = param2;
         _loc4_.§'t§ = param3;
         if(param1 > 0)
         {
            _loc4_.§!c§ = 1 / param1;
         }
         else
         {
            _loc4_.§!c§ = 0;
         }
         _loc4_.§#v§ = this.§!!a§ * param1;
         _loc4_.§0!_§ = §'" §;
         this.§`!t§.§else §();
         if(_loc4_.§<"3§ > 0)
         {
            this.§7&§(_loc4_);
         }
         if(§4!^§ && _loc4_.§<"3§ > 0)
         {
            this.§%G§(_loc4_);
         }
         if(_loc4_.§<"3§ > 0)
         {
            this.§!!a§ = _loc4_.§!c§;
         }
         this.§"!4§ &= ~§3!,§;
      }
      
      public function §'"-§() : void
      {
         var _loc1_:b2Body = this.§1!z§;
         while(_loc1_)
         {
            _loc1_.§,0§.§2!n§();
            _loc1_.§@X§ = 0;
            _loc1_ = _loc1_.§1F§;
         }
      }
      
      public function §3!b§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§?"§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§<j§ == null)
         {
            return;
         }
         this.§<j§.§]v§.graphics.clear();
         var _loc1_:uint = this.§<j§.§5!"§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§2!=§)
         {
            _loc3_ = this.§1!z§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§^!K§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§3!'§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§]"$§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§3!'§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§]"$§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§3!'§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§3!'§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§3!'§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§1F§;
               }
               _loc3_ = _loc3_.§1F§;
            }
         }
         if(_loc1_ & b2DebugDraw.§?!Q§)
         {
            _loc6_ = this.§0!6§;
            while(_loc6_)
            {
               this.§-!L§(_loc6_);
               _loc6_ = _loc6_.§1F§;
            }
         }
         if(_loc1_ & b2DebugDraw.§#!i§)
         {
            _loc16_ = this.§5!V§;
            while(_loc16_)
            {
               _loc16_.§-!E§(this.§<j§);
               _loc16_ = _loc16_.§1F§;
            }
         }
         if(_loc1_ & b2DebugDraw.§^"%§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§`!t§.§5!i§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§6_§();
               _loc19_ = _loc17_.§9!R§();
               _loc20_ = _loc18_.§'K§().§+!l§();
               _loc21_ = _loc19_.§'K§().§+!l§();
               this.§<j§.§-d§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§6P§();
            }
         }
         if(_loc1_ & b2DebugDraw.§^u§)
         {
            _loc7_ = this.§`!t§.§35§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§1!z§;
            while(_loc3_)
            {
               if(_loc3_.§^!K§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§+x§(_loc4_.§4!B§);
                     _loc14_[0].Set(_loc22_.§-Z§.x,_loc22_.§-Z§.y);
                     _loc14_[1].Set(_loc22_.§7^§.x,_loc22_.§-Z§.y);
                     _loc14_[2].Set(_loc22_.§7^§.x,_loc22_.§7^§.y);
                     _loc14_[3].Set(_loc22_.§-Z§.x,_loc22_.§7^§.y);
                     this.§<j§.§1A§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§6P§();
                  }
               }
               _loc3_ = _loc3_.§6P§();
            }
         }
         if(_loc1_ & b2DebugDraw.§'U§)
         {
            _loc3_ = this.§1!z§;
            while(_loc3_)
            {
               (_loc11_ = §^y§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§<!u§();
               this.§<j§.§9!P§(_loc11_);
               _loc3_ = _loc3_.§1F§;
            }
         }
      }
      
      public function §+"-§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§?"§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§`!t§.§35§;
         broadPhase.§'v§(WorldQueryWrapper,aabb);
      }
      
      public function §#"§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§?"§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§;!s§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§6!>§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§+!j§();
         }
         broadPhase = this.§`!t§.§35§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§'v§(WorldQueryWrapper,aabb);
      }
      
      public function §2!R§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§?"§ = null;
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
         broadPhase = this.§`!t§.§35§;
         var aabb:b2AABB = new b2AABB();
         aabb.§-Z§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§7^§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§'v§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§?"§ = null;
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
            return param1.§71§;
         };
         broadPhase = this.§`!t§.§35§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §0!>§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §=q§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §1f§() : b2Body
      {
         return this.§1!z§;
      }
      
      public function §0!]§() : b2Joint
      {
         return this.§0!6§;
      }
      
      public function §,!'§() : b2Contact
      {
         return this.§5!i§;
      }
      
      public function §5"!§() : Boolean
      {
         return (this.§"!4§ & §3!,§) > 0;
      }
      
      b2internal function §7&§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§5!V§;
         while(_loc3_)
         {
            _loc3_.§0!,§(param1);
            _loc3_ = _loc3_.§1F§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§"c§).§2f§(this.§`Q§,this.§]E§,this.§,!b§,null,this.§`!t§.§^!5§,this.§ !6§);
         _loc2_ = this.§1!z§;
         while(_loc2_)
         {
            _loc2_.§"!4§ &= ~b2Body.§2p§;
            _loc2_ = _loc2_.§1F§;
         }
         var _loc5_:b2Contact = this.§5!i§;
         while(_loc5_)
         {
            _loc5_.§"!4§ &= ~b2Contact.§2p§;
            _loc5_ = _loc5_.§1F§;
         }
         var _loc6_:b2Joint = this.§0!6§;
         while(_loc6_)
         {
            _loc6_.§ !e§ = false;
            _loc6_ = _loc6_.§1F§;
         }
         var _loc7_:int = this.§`Q§;
         var _loc8_:Vector.<b2Body> = this.§>M§;
         var _loc9_:b2Body = this.§1!z§;
         while(_loc9_)
         {
            if(!(_loc9_.§"!4§ & b2Body.§2p§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§^!K§() == false))
               {
                  if(_loc9_.§]"$§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§&"2§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§"!4§ |= b2Body.§2p§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§3x§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§]"$§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§5!i§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§5T§.§"!4§ & b2Contact.§2p§))
                              {
                                 if(!(_loc13_.§5T§.§=!§() == true || _loc13_.§5T§.§!K§() == false || _loc13_.§5T§.§ 1§() == false))
                                 {
                                    _loc4_.§=D§(_loc13_.§5T§);
                                    _loc13_.§5T§.§"!4§ |= b2Contact.§2p§;
                                    if(!((_loc12_ = _loc13_.§^!,§).§"!4§ & b2Body.§2p§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§"!4§ |= b2Body.§2p§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.next;
                           }
                           _loc14_ = _loc2_.§0!6§;
                           while(_loc14_)
                           {
                              if(_loc14_.§&!$§.§ !e§ != true)
                              {
                                 if((_loc12_ = _loc14_.§^!,§).§^!K§() != false)
                                 {
                                    _loc4_.§>k§(_loc14_.§&!$§);
                                    _loc14_.§&!$§.§ !e§ = true;
                                    if(!(_loc12_.§"!4§ & b2Body.§2p§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§"!4§ |= b2Body.§2p§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.next;
                           }
                        }
                     }
                     _loc4_.§7&§(param1,this.§6m§,this.§1S§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§`Q§)
                     {
                        _loc2_ = _loc4_.§ Y§[_loc11_];
                        if(_loc2_.§]"$§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§"!4§ &= ~b2Body.§2p§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§1F§;
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
         _loc2_ = this.§1!z§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§^!K§() == false))
            {
               if(_loc2_.§]"$§() != b2Body.b2_staticBody)
               {
                  _loc2_.§[!j§();
               }
            }
            _loc2_ = _loc2_.§1F§;
         }
         this.§`!t§.§@!g§();
      }
      
      b2internal function §%G§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§"c§).§2f§(this.§`Q§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§`!t§.§^!5§,this.§ !6§);
         var _loc10_:Vector.<b2Body> = §-!G§;
         _loc2_ = this.§1!z§;
         while(_loc2_)
         {
            _loc2_.§"!4§ &= ~b2Body.§2p§;
            _loc2_.m_sweep.§+!=§ = 0;
            _loc2_ = _loc2_.§1F§;
         }
         _loc11_ = this.§5!i§;
         while(_loc11_)
         {
            _loc11_.§"!4§ &= ~(b2Contact.§!W§ | b2Contact.§2p§);
            _loc11_.§ g§ = 1;
            _loc11_ = _loc11_.§1F§;
         }
         _loc8_ = this.§0!6§;
         while(_loc8_)
         {
            _loc8_.§ !e§ = false;
            _loc8_ = _loc8_.§1F§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§5!i§;
            while(_loc11_)
            {
               if(!(_loc11_.§=!§() == true || _loc11_.§!K§() == false || _loc11_.§0$§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§"!4§ & b2Contact.§!W§)
                  {
                     _loc19_ = _loc11_.§ g§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§+"'§;
                     _loc4_ = _loc11_.§;!Z§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§]"$§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§]"$§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr610:
                        _loc11_ = _loc11_.§1F§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§+!=§;
                     if(_loc5_.m_sweep.§+!=§ < _loc6_.m_sweep.§+!=§)
                     {
                        _loc20_ = _loc6_.m_sweep.§+!=§;
                        _loc5_.m_sweep.§-!g§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§+!=§ < _loc5_.m_sweep.§+!=§)
                     {
                        _loc20_ = _loc5_.m_sweep.§+!=§;
                        _loc6_.m_sweep.§-!g§(_loc20_);
                     }
                     _loc19_ = _loc11_.§9^§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§ g§ = _loc19_;
                     _loc11_.§"!4§ |= b2Contact.§!W§;
                     §§goto(addr610);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr610);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§+"'§;
            _loc4_ = _loc12_.§;!Z§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §>X§.Set(_loc5_.m_sweep);
            §[!B§.Set(_loc6_.m_sweep);
            _loc5_.§-!g§(_loc13_);
            _loc6_.§-!g§(_loc13_);
            _loc12_.§&A§(this.§`!t§.§^!5§);
            _loc12_.§"!4§ &= ~b2Contact.§!W§;
            if(_loc12_.§=!§() == true || _loc12_.§!K§() == false)
            {
               _loc5_.m_sweep.Set(§>X§);
               _loc6_.m_sweep.Set(§[!B§);
               _loc5_.§@!5§();
               _loc6_.§@!5§();
            }
            else if(_loc12_.§ 1§() != false)
            {
               if((_loc14_ = _loc5_).§]"$§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§&"2§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§"!4§ |= b2Body.§2p§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§3x§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§]"$§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§5!i§;
                     while(_loc7_)
                     {
                        if(_loc9_.§]E§ == _loc9_.§^![§)
                        {
                           break;
                        }
                        if(!(_loc7_.§5T§.§"!4§ & b2Contact.§2p§))
                        {
                           if(!(_loc7_.§5T§.§=!§() == true || _loc7_.§5T§.§!K§() == false || _loc7_.§5T§.§ 1§() == false))
                           {
                              _loc9_.§=D§(_loc7_.§5T§);
                              _loc7_.§5T§.§"!4§ |= b2Contact.§2p§;
                              if(!((_loc22_ = _loc7_.§^!,§).§"!4§ & b2Body.§2p§))
                              {
                                 if(_loc22_.§]"$§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§-!g§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§"!4§ |= b2Body.§2p§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.next;
                     }
                     _loc21_ = _loc2_.§0!6§;
                     while(_loc21_)
                     {
                        if(_loc9_.§,!b§ != _loc9_.§ %§)
                        {
                           if(_loc21_.§&!$§.§ !e§ != true)
                           {
                              if((_loc22_ = _loc21_.§^!,§).§^!K§() != false)
                              {
                                 _loc9_.§>k§(_loc21_.§&!$§);
                                 _loc21_.§&!$§.§ !e§ = true;
                                 if(!(_loc22_.§"!4§ & b2Body.§2p§))
                                 {
                                    if(_loc22_.§]"$§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§-!g§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§"!4§ |= b2Body.§2p§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.next;
                     }
                  }
               }
               (_loc17_ = §%!!§).§0!_§ = false;
               _loc17_.§<"3§ = (1 - _loc13_) * param1.§<"3§;
               _loc17_.§!c§ = 1 / _loc17_.§<"3§;
               _loc17_.§#v§ = 1;
               _loc17_.§`!u§ = param1.§`!u§;
               _loc17_.§'t§ = param1.§'t§;
               _loc9_.§%G§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§`Q§)
               {
                  _loc2_ = _loc9_.§ Y§[_loc18_];
                  _loc2_.§"!4§ &= ~b2Body.§2p§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§]"$§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§[!j§();
                        _loc7_ = _loc2_.§5!i§;
                        while(_loc7_)
                        {
                           _loc7_.§5T§.§"!4§ &= ~b2Contact.§!W§;
                           _loc7_ = _loc7_.next;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§]E§)
               {
                  _loc11_ = _loc9_.§4!k§[_loc18_];
                  _loc11_.§"!4§ &= ~(b2Contact.§!W§ | b2Contact.§2p§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§,!b§)
               {
                  (_loc8_ = _loc9_.§&!M§[_loc18_]).§ !e§ = false;
                  _loc18_++;
               }
               this.§`!t§.§@!g§();
            }
         }
      }
      
      b2internal function §-!L§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§0!0§();
         var _loc3_:b2Body = param1.§"!z§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §6!8§;
         switch(param1.§=!;§)
         {
            case b2Joint.§14§:
               this.§<j§.§-d§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§?Q§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§#6§();
               _loc13_ = _loc11_.§1!6§();
               this.§<j§.§-d§(_loc12_,_loc8_,_loc10_);
               this.§<j§.§-d§(_loc13_,_loc9_,_loc10_);
               this.§<j§.§-d§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§%""§:
               this.§<j§.§-d§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§<j§.§-d§(_loc6_,_loc8_,_loc10_);
               }
               this.§<j§.§-d§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§<j§.§-d§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §3!'§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§=!;§)
         {
            case b2Shape.§;"4§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§0Y§(param2,_loc4_.§1b§);
               _loc6_ = _loc4_.§["2§;
               _loc7_ = param2.R.col1;
               this.§<j§.§^!m§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§!Y§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§^"4§();
               _loc11_ = _loc9_.§-!'§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§0Y§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§<j§.§,V§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§3J§:
               _loc13_ = param1 as b2EdgeShape;
               this.§<j§.§-d§(b2Math.§0Y§(param2,_loc13_.GetVertex1()),b2Math.§0Y§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

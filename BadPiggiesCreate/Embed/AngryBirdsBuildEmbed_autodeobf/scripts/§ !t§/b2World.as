package § !t§
{
   import §#A§.*;
   import §#b§.*;
   import §'!;§.*;
   import §+!F§.b2Controller;
   import §+!F§.b2ControllerEdge;
   import §<!B§.*;
   import §?s§.*;
   import §[h§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §2n§:b2Transform = new b2Transform();
      
      private static var §-!B§:b2Sweep = new b2Sweep();
      
      private static var § !"§:b2Sweep = new b2Sweep();
      
      private static var §`[§:b2TimeStep = new b2TimeStep();
      
      private static var §]Y§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §2!$§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §>0§:Boolean;
      
      private static var §5r§:Boolean;
      
      public static const §^m§:int = 1;
      
      public static const §+j§:int = 2;
       
      
      private var §#!1§:Vector.<b2Body>;
      
      b2internal var §;!n§:int;
      
      b2internal var §,!o§:b2ContactManager;
      
      private var § !S§:b2ContactSolver;
      
      private var §,t§:b2Island;
      
      b2internal var §-!2§:b2Body;
      
      private var §"!7§:b2Joint;
      
      b2internal var §<!T§:b2Contact;
      
      private var §[b§:int;
      
      b2internal var §"Z§:int;
      
      private var §3J§:int;
      
      private var §`7§:b2Controller;
      
      private var §[w§:int;
      
      private var §8!C§:b2Vec2;
      
      private var §1!q§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §<]§:b2DestructionListener;
      
      private var §9!V§:b2DebugDraw;
      
      private var §&!O§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§#!1§ = new Vector.<b2Body>();
         this.§,!o§ = new b2ContactManager();
         this.§ !S§ = new b2ContactSolver();
         this.§,t§ = new b2Island();
         super();
         this.§<]§ = null;
         this.§9!V§ = null;
         this.§-!2§ = null;
         this.§<!T§ = null;
         this.§"!7§ = null;
         this.§`7§ = null;
         this.§[b§ = 0;
         this.§"Z§ = 0;
         this.§3J§ = 0;
         this.§[w§ = 0;
         §>0§ = true;
         §5r§ = true;
         this.§1!q§ = param2;
         this.§8!C§ = param1;
         this.§&!O§ = 0;
         this.§,!o§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§ i§(_loc3_);
      }
      
      public function §]8§(param1:b2DestructionListener) : void
      {
         this.§<]§ = param1;
      }
      
      public function §^!U§(param1:b2ContactFilter) : void
      {
         this.§,!o§.§7q§ = param1;
      }
      
      public function §#!i§(param1:b2ContactListener) : void
      {
         this.§,!o§.§+!&§ = param1;
      }
      
      public function §;!Y§(param1:b2DebugDraw) : void
      {
         this.§9!V§ = param1;
      }
      
      public function §'P§(param1:§1!p§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§1!p§ = this.§,!o§.§3!C§;
         this.§,!o§.§3!C§ = param1;
         var _loc3_:b2Body = this.§-!2§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§7p§;
            while(_loc4_)
            {
               _loc4_.§-!§ = param1.§<!U§(_loc2_.§+,§(_loc4_.§-!§),_loc4_);
               _loc4_ = _loc4_.§ <§;
            }
            _loc3_ = _loc3_.§ <§;
         }
      }
      
      public function §1K§() : void
      {
         this.§,!o§.§3!C§.§1K§();
      }
      
      public function §8!d§() : int
      {
         return this.§,!o§.§3!C§.§8!d§();
      }
      
      public function § i§(param1:b2BodyDef) : b2Body
      {
         if(this.§%!_§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§?!D§ = null;
         _loc2_.§ <§ = this.§-!2§;
         if(this.§-!2§)
         {
            this.§-!2§.§?!D§ = _loc2_;
         }
         this.§-!2§ = _loc2_;
         ++this.§[b§;
         return _loc2_;
      }
      
      public function §[!F§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§%!_§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§"!7§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§1!U§;
            if(this.§<]§)
            {
               this.§<]§.§4!D§(_loc6_.§[y§);
            }
            this.§;!S§(_loc6_.§[y§);
         }
         var _loc3_:b2ControllerEdge = param1.§`7§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§7!c§;
            _loc7_.§?!G§.§<![§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§<!T§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§1!U§;
            this.§,!o§.§;!#§(_loc8_.§12§);
         }
         param1.§<!T§ = null;
         var _loc5_:b2Fixture = param1.§7p§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§ <§;
            if(this.§<]§)
            {
               this.§<]§.§46§(_loc9_);
            }
            _loc9_.§`!A§(this.§,!o§.§3!C§);
            _loc9_.§;!#§();
         }
         param1.§7p§ = null;
         param1.§!![§ = 0;
         if(param1.§?!D§)
         {
            param1.§?!D§.§ <§ = param1.§ <§;
         }
         if(param1.§ <§)
         {
            param1.§ <§.§?!D§ = param1.§?!D§;
         }
         if(param1 == this.§-!2§)
         {
            this.§-!2§ = param1.§ <§;
         }
         --this.§[b§;
      }
      
      public function §`v§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§?J§(param1,null);
         _loc2_.§?!D§ = null;
         _loc2_.§ <§ = this.§"!7§;
         if(this.§"!7§)
         {
            this.§"!7§.§?!D§ = _loc2_;
         }
         this.§"!7§ = _loc2_;
         ++this.§3J§;
         _loc2_.§<!F§.§[y§ = _loc2_;
         _loc2_.§<!F§.§'q§ = _loc2_.§4P§;
         _loc2_.§<!F§.§=6§ = null;
         _loc2_.§<!F§.§1!U§ = _loc2_.§2+§.§"!7§;
         if(_loc2_.§2+§.§"!7§)
         {
            _loc2_.§2+§.§"!7§.§=6§ = _loc2_.§<!F§;
         }
         _loc2_.§2+§.§"!7§ = _loc2_.§<!F§;
         _loc2_.§@#§.§[y§ = _loc2_;
         _loc2_.§@#§.§'q§ = _loc2_.§2+§;
         _loc2_.§@#§.§=6§ = null;
         _loc2_.§@#§.§1!U§ = _loc2_.§4P§.§"!7§;
         if(_loc2_.§4P§.§"!7§)
         {
            _loc2_.§4P§.§"!7§.§=6§ = _loc2_.§@#§;
         }
         _loc2_.§4P§.§"!7§ = _loc2_.§@#§;
         var _loc3_:b2Body = param1.§[!i§;
         var _loc4_:b2Body = param1.§;!K§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§>!U§();
            while(_loc5_)
            {
               if(_loc5_.§'q§ == _loc3_)
               {
                  _loc5_.§12§.§%!h§();
               }
               _loc5_ = _loc5_.§1!U§;
            }
         }
         return _loc2_;
      }
      
      public function §;!S§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§4!2§;
         if(param1.§?!D§)
         {
            param1.§?!D§.§ <§ = param1.§ <§;
         }
         if(param1.§ <§)
         {
            param1.§ <§.§?!D§ = param1.§?!D§;
         }
         if(param1 == this.§"!7§)
         {
            this.§"!7§ = param1.§ <§;
         }
         var _loc3_:b2Body = param1.§2+§;
         var _loc4_:b2Body = param1.§4P§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§<!F§.§=6§)
         {
            param1.§<!F§.§=6§.§1!U§ = param1.§<!F§.§1!U§;
         }
         if(param1.§<!F§.§1!U§)
         {
            param1.§<!F§.§1!U§.§=6§ = param1.§<!F§.§=6§;
         }
         if(param1.§<!F§ == _loc3_.§"!7§)
         {
            _loc3_.§"!7§ = param1.§<!F§.§1!U§;
         }
         param1.§<!F§.§=6§ = null;
         param1.§<!F§.§1!U§ = null;
         if(param1.§@#§.§=6§)
         {
            param1.§@#§.§=6§.§1!U§ = param1.§@#§.§1!U§;
         }
         if(param1.§@#§.§1!U§)
         {
            param1.§@#§.§1!U§.§=6§ = param1.§@#§.§=6§;
         }
         if(param1.§@#§ == _loc4_.§"!7§)
         {
            _loc4_.§"!7§ = param1.§@#§.§1!U§;
         }
         param1.§@#§.§=6§ = null;
         param1.§@#§.§1!U§ = null;
         b2Joint.§;!#§(param1,null);
         --this.§3J§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§>!U§();
            while(_loc5_)
            {
               if(_loc5_.§'q§ == _loc3_)
               {
                  _loc5_.§12§.§%!h§();
               }
               _loc5_ = _loc5_.§1!U§;
            }
         }
      }
      
      public function §^!1§(param1:b2Controller) : b2Controller
      {
         param1.§ <§ = this.§`7§;
         param1.§?!D§ = null;
         this.§`7§ = param1;
         param1.m_world = this;
         ++this.§[w§;
         return param1;
      }
      
      public function §&&§(param1:b2Controller) : void
      {
         if(param1.§?!D§)
         {
            param1.§?!D§.§ <§ = param1.§ <§;
         }
         if(param1.§ <§)
         {
            param1.§ <§.§?!D§ = param1.§?!D§;
         }
         if(this.§`7§ == param1)
         {
            this.§`7§ = param1.§ <§;
         }
         --this.§[w§;
      }
      
      public function § !5§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§ <§ = this.§`7§;
         param1.§?!D§ = null;
         if(this.§`7§)
         {
            this.§`7§.§?!D§ = param1;
         }
         this.§`7§ = param1;
         ++this.§[w§;
         param1.m_world = this;
         return param1;
      }
      
      public function §^C§(param1:b2Controller) : void
      {
         param1.§6N§();
         if(param1.§ <§)
         {
            param1.§ <§.§?!D§ = param1.§?!D§;
         }
         if(param1.§?!D§)
         {
            param1.§?!D§.§ <§ = param1.§ <§;
         }
         if(param1 == this.§`7§)
         {
            this.§`7§ = param1.§ <§;
         }
         --this.§[w§;
      }
      
      public function §7D§(param1:Boolean) : void
      {
         §>0§ = param1;
      }
      
      public function §#!_§(param1:Boolean) : void
      {
         §5r§ = param1;
      }
      
      public function §?!u§() : int
      {
         return this.§[b§;
      }
      
      public function §=!=§() : int
      {
         return this.§3J§;
      }
      
      public function §,G§() : int
      {
         return this.§"Z§;
      }
      
      public function §!!"§(param1:b2Vec2) : void
      {
         this.§8!C§ = param1;
      }
      
      public function § !O§() : b2Vec2
      {
         return this.§8!C§;
      }
      
      public function §-!F§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §&E§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§;!n§ & §^m§)
         {
            this.§,!o§.§<"§();
            this.§;!n§ &= ~§^m§;
         }
         this.§;!n§ |= §+j§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§>N§ = param1;
         _loc4_.§#!P§ = param2;
         _loc4_.§]S§ = param3;
         if(param1 > 0)
         {
            _loc4_.§3-§ = 1 / param1;
         }
         else
         {
            _loc4_.§3-§ = 0;
         }
         _loc4_.§5!;§ = this.§&!O§ * param1;
         _loc4_.§ !K§ = §>0§;
         this.§,!o§.§5v§();
         if(_loc4_.§>N§ > 0)
         {
            this.static(_loc4_);
         }
         if(§5r§ && _loc4_.§>N§ > 0)
         {
            this.§&0§(_loc4_);
         }
         if(_loc4_.§>N§ > 0)
         {
            this.§&!O§ = _loc4_.§3-§;
         }
         this.§;!n§ &= ~§+j§;
      }
      
      public function §;t§() : void
      {
         var _loc1_:b2Body = this.§-!2§;
         while(_loc1_)
         {
            _loc1_.§"!F§.§22§();
            _loc1_.§&a§ = 0;
            _loc1_ = _loc1_.§ <§;
         }
      }
      
      public function §'!<§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§1!p§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§9!V§ == null)
         {
            return;
         }
         this.§9!V§.§9!D§.graphics.clear();
         var _loc1_:uint = this.§9!V§.§>!&§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§=v§)
         {
            _loc3_ = this.§-!2§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§7!Y§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§,!t§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§`n§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§"!j§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§`n§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§"!j§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§`n§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§`n§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§`n§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§ <§;
               }
               _loc3_ = _loc3_.§ <§;
            }
         }
         if(_loc1_ & b2DebugDraw.§"#§)
         {
            _loc6_ = this.§"!7§;
            while(_loc6_)
            {
               this.§2s§(_loc6_);
               _loc6_ = _loc6_.§ <§;
            }
         }
         if(_loc1_ & b2DebugDraw.§55§)
         {
            _loc16_ = this.§`7§;
            while(_loc16_)
            {
               _loc16_.§"!,§(this.§9!V§);
               _loc16_ = _loc16_.§ <§;
            }
         }
         if(_loc1_ & b2DebugDraw.§5!@§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§,!o§.§<!T§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§,^§();
               _loc19_ = _loc17_.§'!+§();
               _loc20_ = _loc18_.§7!l§().§9Y§();
               _loc21_ = _loc19_.§7!l§().§9Y§();
               this.§9!V§.§=b§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§4!j§();
            }
         }
         if(_loc1_ & b2DebugDraw.§,!5§)
         {
            _loc7_ = this.§,!o§.§3!C§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§-!2§;
            while(_loc3_)
            {
               if(_loc3_.§,!t§() != false)
               {
                  _loc4_ = _loc3_.§7!Y§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§+,§(_loc4_.§-!§);
                     _loc14_[0].Set(_loc22_.§ !d§.x,_loc22_.§ !d§.y);
                     _loc14_[1].Set(_loc22_.§=!j§.x,_loc22_.§ !d§.y);
                     _loc14_[2].Set(_loc22_.§=!j§.x,_loc22_.§=!j§.y);
                     _loc14_[3].Set(_loc22_.§ !d§.x,_loc22_.§=!j§.y);
                     this.§9!V§.§<F§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§4!j§();
                  }
               }
               _loc3_ = _loc3_.§4!j§();
            }
         }
         if(_loc1_ & b2DebugDraw.§8m§)
         {
            _loc3_ = this.§-!2§;
            while(_loc3_)
            {
               (_loc11_ = §2n§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§^I§();
               this.§9!V§.§]!M§(_loc11_);
               _loc3_ = _loc3_.§ <§;
            }
         }
      }
      
      public function §?!E§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§1!p§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§,!o§.§3!C§;
         broadPhase.§>x§(WorldQueryWrapper,aabb);
      }
      
      public function §"v§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§1!p§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§,!r§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§>!H§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§5!I§();
         }
         broadPhase = this.§,!o§.§3!C§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§>x§(WorldQueryWrapper,aabb);
      }
      
      public function §8!j§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§1!p§ = null;
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
         broadPhase = this.§,!o§.§3!C§;
         var aabb:b2AABB = new b2AABB();
         aabb.§ !d§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§=!j§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§>x§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§1!p§ = null;
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
            return param1.§&+§;
         };
         broadPhase = this.§,!o§.§3!C§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §=!n§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §&r§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §?!L§() : b2Body
      {
         return this.§-!2§;
      }
      
      public function §8$§() : b2Joint
      {
         return this.§"!7§;
      }
      
      public function §>!U§() : b2Contact
      {
         return this.§<!T§;
      }
      
      public function §%!_§() : Boolean
      {
         return (this.§;!n§ & §+j§) > 0;
      }
      
      b2internal function static(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§`7§;
         while(_loc3_)
         {
            _loc3_.§&E§(param1);
            _loc3_ = _loc3_.§ <§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§,t§).§6!V§(this.§[b§,this.§"Z§,this.§3J§,null,this.§,!o§.§+!&§,this.§ !S§);
         _loc2_ = this.§-!2§;
         while(_loc2_)
         {
            _loc2_.§;!n§ &= ~b2Body.§8!b§;
            _loc2_ = _loc2_.§ <§;
         }
         var _loc5_:b2Contact = this.§<!T§;
         while(_loc5_)
         {
            _loc5_.§;!n§ &= ~b2Contact.§8!b§;
            _loc5_ = _loc5_.§ <§;
         }
         var _loc6_:b2Joint = this.§"!7§;
         while(_loc6_)
         {
            _loc6_.§=T§ = false;
            _loc6_ = _loc6_.§ <§;
         }
         var _loc7_:int = this.§[b§;
         var _loc8_:Vector.<b2Body> = this.§#!1§;
         var _loc9_:b2Body = this.§-!2§;
         while(_loc9_)
         {
            if(!(_loc9_.§;!n§ & b2Body.§8!b§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§,!t§() == false))
               {
                  if(_loc9_.§"!j§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§6N§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§;!n§ |= b2Body.§8!b§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§2r§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§"!j§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§<!T§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§12§.§;!n§ & b2Contact.§8!b§))
                              {
                                 if(!(_loc13_.§12§.§-!]§() == true || _loc13_.§12§.§,+§() == false || _loc13_.§12§.§`!§() == false))
                                 {
                                    _loc4_.§`!6§(_loc13_.§12§);
                                    _loc13_.§12§.§;!n§ |= b2Contact.§8!b§;
                                    if(!((_loc12_ = _loc13_.§'q§).§;!n§ & b2Body.§8!b§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§;!n§ |= b2Body.§8!b§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§1!U§;
                           }
                           _loc14_ = _loc2_.§"!7§;
                           while(_loc14_)
                           {
                              if(_loc14_.§[y§.§=T§ != true)
                              {
                                 if((_loc12_ = _loc14_.§'q§).§,!t§() != false)
                                 {
                                    _loc4_.§>!0§(_loc14_.§[y§);
                                    _loc14_.§[y§.§=T§ = true;
                                    if(!(_loc12_.§;!n§ & b2Body.§8!b§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§;!n§ |= b2Body.§8!b§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§1!U§;
                           }
                        }
                     }
                     _loc4_.static(param1,this.§8!C§,this.§1!q§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§[b§)
                     {
                        _loc2_ = _loc4_.§0!I§[_loc11_];
                        if(_loc2_.§"!j§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§;!n§ &= ~b2Body.§8!b§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§ <§;
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
         _loc2_ = this.§-!2§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§,!t§() == false))
            {
               if(_loc2_.§"!j§() != b2Body.b2_staticBody)
               {
                  _loc2_.§1X§();
               }
            }
            _loc2_ = _loc2_.§ <§;
         }
         this.§,!o§.§<"§();
      }
      
      b2internal function §&0§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§,t§).§6!V§(this.§[b§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§,!o§.§+!&§,this.§ !S§);
         var _loc10_:Vector.<b2Body> = §]Y§;
         _loc2_ = this.§-!2§;
         while(_loc2_)
         {
            _loc2_.§;!n§ &= ~b2Body.§8!b§;
            _loc2_.m_sweep.§[!$§ = 0;
            _loc2_ = _loc2_.§ <§;
         }
         _loc11_ = this.§<!T§;
         while(_loc11_)
         {
            _loc11_.§;!n§ &= ~(b2Contact.§!!D§ | b2Contact.§8!b§);
            _loc11_ = _loc11_.§ <§;
         }
         _loc8_ = this.§"!7§;
         while(_loc8_)
         {
            _loc8_.§=T§ = false;
            _loc8_ = _loc8_.§ <§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§<!T§;
            while(_loc11_)
            {
               if(!(_loc11_.§-!]§() == true || _loc11_.§,+§() == false || _loc11_.§<!!§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§;!n§ & b2Contact.§!!D§)
                  {
                     _loc19_ = _loc11_.§@J§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§4b§;
                     _loc4_ = _loc11_.§"'§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§"!j§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§"!j§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr491:
                        _loc11_ = _loc11_.§ <§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§[!$§;
                     if(_loc5_.m_sweep.§[!$§ < _loc6_.m_sweep.§[!$§)
                     {
                        _loc20_ = _loc6_.m_sweep.§[!$§;
                        _loc5_.m_sweep.§@!+§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§[!$§ < _loc5_.m_sweep.§[!$§)
                     {
                        _loc20_ = _loc5_.m_sweep.§[!$§;
                        _loc6_.m_sweep.§@!+§(_loc20_);
                     }
                     _loc19_ = _loc11_.§3f§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§@J§ = _loc19_;
                     _loc11_.§;!n§ |= b2Contact.§!!D§;
                     §§goto(addr491);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr491);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§4b§;
            _loc4_ = _loc12_.§"'§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §-!B§.Set(_loc5_.m_sweep);
            § !"§.Set(_loc6_.m_sweep);
            _loc5_.§@!+§(_loc13_);
            _loc6_.§@!+§(_loc13_);
            _loc12_.§[;§(this.§,!o§.§+!&§);
            _loc12_.§;!n§ &= ~b2Contact.§!!D§;
            if(_loc12_.§-!]§() == true || _loc12_.§,+§() == false)
            {
               _loc5_.m_sweep.Set(§-!B§);
               _loc6_.m_sweep.Set(§ !"§);
               _loc5_.§<=§();
               _loc6_.§<=§();
            }
            else if(_loc12_.§`!§() != false)
            {
               if((_loc14_ = _loc5_).§"!j§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§6N§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§;!n§ |= b2Body.§8!b§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§2r§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§"!j§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§<!T§;
                     while(_loc7_)
                     {
                        if(_loc9_.§"Z§ == _loc9_.§`!B§)
                        {
                           break;
                        }
                        if(!(_loc7_.§12§.§;!n§ & b2Contact.§8!b§))
                        {
                           if(!(_loc7_.§12§.§-!]§() == true || _loc7_.§12§.§,+§() == false || _loc7_.§12§.§`!§() == false))
                           {
                              _loc9_.§`!6§(_loc7_.§12§);
                              _loc7_.§12§.§;!n§ |= b2Contact.§8!b§;
                              if(!((_loc22_ = _loc7_.§'q§).§;!n§ & b2Body.§8!b§))
                              {
                                 if(_loc22_.§"!j§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§@!+§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§;!n§ |= b2Body.§8!b§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§1!U§;
                     }
                     _loc21_ = _loc2_.§"!7§;
                     while(_loc21_)
                     {
                        if(_loc9_.§3J§ != _loc9_.§6S§)
                        {
                           if(_loc21_.§[y§.§=T§ != true)
                           {
                              if((_loc22_ = _loc21_.§'q§).§,!t§() != false)
                              {
                                 _loc9_.§>!0§(_loc21_.§[y§);
                                 _loc21_.§[y§.§=T§ = true;
                                 if(!(_loc22_.§;!n§ & b2Body.§8!b§))
                                 {
                                    if(_loc22_.§"!j§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§@!+§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§;!n§ |= b2Body.§8!b§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§1!U§;
                     }
                  }
               }
               (_loc17_ = §`[§).§ !K§ = false;
               _loc17_.§>N§ = (1 - _loc13_) * param1.§>N§;
               _loc17_.§3-§ = 1 / _loc17_.§>N§;
               _loc17_.§5!;§ = 0;
               _loc17_.§#!P§ = param1.§#!P§;
               _loc17_.§]S§ = param1.§]S§;
               _loc9_.§&0§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§[b§)
               {
                  _loc2_ = _loc9_.§0!I§[_loc18_];
                  _loc2_.§;!n§ &= ~b2Body.§8!b§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§"!j§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§1X§();
                        _loc7_ = _loc2_.§<!T§;
                        while(_loc7_)
                        {
                           _loc7_.§12§.§;!n§ &= ~b2Contact.§!!D§;
                           _loc7_ = _loc7_.§1!U§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§"Z§)
               {
                  _loc11_ = _loc9_.§&Q§[_loc18_];
                  _loc11_.§;!n§ &= ~(b2Contact.§!!D§ | b2Contact.§8!b§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§3J§)
               {
                  (_loc8_ = _loc9_.§9k§[_loc18_]).§=T§ = false;
                  _loc18_++;
               }
               this.§,!o§.§<"§();
            }
         }
      }
      
      b2internal function §2s§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§<!W§();
         var _loc3_:b2Body = param1.§?!=§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §2!$§;
         switch(param1.§5!Z§)
         {
            case b2Joint.§-r§:
               this.§9!V§.§=b§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§?l§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§!l§();
               _loc13_ = _loc11_.§,! §();
               this.§9!V§.§=b§(_loc12_,_loc8_,_loc10_);
               this.§9!V§.§=b§(_loc13_,_loc9_,_loc10_);
               this.§9!V§.§=b§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§ !D§:
               this.§9!V§.§=b§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§9!V§.§=b§(_loc6_,_loc8_,_loc10_);
               }
               this.§9!V§.§=b§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§9!V§.§=b§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §`n§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§5!Z§)
         {
            case b2Shape.§@!>§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§#!N§(param2,_loc4_.§,!#§);
               _loc6_ = _loc4_.§%+§;
               _loc7_ = param2.R.col1;
               this.§9!V§.§%!u§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§>>§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§<!G§();
               _loc11_ = _loc9_.§+F§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§#!N§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§9!V§.§`B§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§<5§:
               _loc13_ = param1 as b2EdgeShape;
               this.§9!V§.§=b§(b2Math.§#!N§(param2,_loc13_.GetVertex1()),b2Math.§#!N§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

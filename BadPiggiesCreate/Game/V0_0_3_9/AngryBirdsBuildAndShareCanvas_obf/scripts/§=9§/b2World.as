package §=9§
{
   import §%!H§.b2Controller;
   import §%!H§.b2ControllerEdge;
   import §-!G§.*;
   import §7"'§.*;
   import §8!D§.*;
   import §8!k§.*;
   import §<!j§.*;
   import §[!Z§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §4!L§:b2Transform = new b2Transform();
      
      private static var §!8§:b2Sweep = new b2Sweep();
      
      private static var §5"&§:b2Sweep = new b2Sweep();
      
      private static var §?!§:b2TimeStep = new b2TimeStep();
      
      private static var §=o§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §6L§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §'!b§:Boolean;
      
      private static var §^!I§:Boolean;
      
      public static const §;"2§:int = 1;
      
      public static const §,!c§:int = 2;
       
      
      private var §!!d§:Vector.<b2Body>;
      
      b2internal var §1z§:int;
      
      b2internal var §>!b§:b2ContactManager;
      
      private var §+i§:b2ContactSolver;
      
      private var §%"1§:b2Island;
      
      b2internal var §">§:b2Body;
      
      private var §+!G§:b2Joint;
      
      b2internal var §&!E§:b2Contact;
      
      private var §^"2§:int;
      
      b2internal var §,!P§:int;
      
      private var §'K§:int;
      
      private var §0L§:b2Controller;
      
      private var §,!b§:int;
      
      private var §3§:b2Vec2;
      
      private var §-!`§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §&"3§:b2DestructionListener;
      
      private var §3!w§:b2DebugDraw;
      
      private var §-!r§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§!!d§ = new Vector.<b2Body>();
         this.§>!b§ = new b2ContactManager();
         this.§+i§ = new b2ContactSolver();
         this.§%"1§ = new b2Island();
         super();
         this.§&"3§ = null;
         this.§3!w§ = null;
         this.§">§ = null;
         this.§&!E§ = null;
         this.§+!G§ = null;
         this.§0L§ = null;
         this.§^"2§ = 0;
         this.§,!P§ = 0;
         this.§'K§ = 0;
         this.§,!b§ = 0;
         §'!b§ = true;
         §^!I§ = true;
         this.§-!`§ = param2;
         this.§3§ = param1;
         this.§-!r§ = 0;
         this.§>!b§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§4[§(_loc3_);
      }
      
      public function §3!H§(param1:b2DestructionListener) : void
      {
         this.§&"3§ = param1;
      }
      
      public function §,!_§(param1:b2ContactFilter) : void
      {
         this.§>!b§.§9"7§ = param1;
      }
      
      public function §[t§(param1:b2ContactListener) : void
      {
         this.§>!b§.§ if§ = param1;
      }
      
      public function §;f§(param1:b2DebugDraw) : void
      {
         this.§3!w§ = param1;
      }
      
      public function §,!k§(param1:§8!1§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§8!1§ = this.§>!b§.§+9§;
         this.§>!b§.§+9§ = param1;
         var _loc3_:b2Body = this.§">§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§8"7§;
            while(_loc4_)
            {
               _loc4_.§7]§ = param1.§ !#§(_loc2_.§@!G§(_loc4_.§7]§),_loc4_);
               _loc4_ = _loc4_.§1""§;
            }
            _loc3_ = _loc3_.§1""§;
         }
      }
      
      public function §""&§() : void
      {
         this.§>!b§.§+9§.§""&§();
      }
      
      public function §?!I§() : int
      {
         return this.§>!b§.§+9§.§?!I§();
      }
      
      public function §4[§(param1:b2BodyDef) : b2Body
      {
         if(this.§&"'§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§7%§ = null;
         _loc2_.§1""§ = this.§">§;
         if(this.§">§)
         {
            this.§">§.§7%§ = _loc2_;
         }
         this.§">§ = _loc2_;
         ++this.§^"2§;
         return _loc2_;
      }
      
      public function §'"%§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§&"'§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§+!G§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§ J§;
            if(this.§&"3§)
            {
               this.§&"3§.§ !D§(_loc6_.§35§);
            }
            this.§3S§(_loc6_.§35§);
         }
         var _loc3_:b2ControllerEdge = param1.§0L§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§5!<§;
            _loc7_.§]x§.§ y§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§&!E§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§ J§;
            this.§>!b§.§&!`§(_loc8_.§@K§);
         }
         param1.§&!E§ = null;
         var _loc5_:b2Fixture = param1.§8"7§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§1""§;
            if(this.§&"3§)
            {
               this.§&"3§.§@R§(_loc9_);
            }
            _loc9_.§7y§(this.§>!b§.§+9§);
            _loc9_.§&!`§();
         }
         param1.§8"7§ = null;
         param1.§[E§ = 0;
         if(param1.§7%§)
         {
            param1.§7%§.§1""§ = param1.§1""§;
         }
         if(param1.§1""§)
         {
            param1.§1""§.§7%§ = param1.§7%§;
         }
         if(param1 == this.§">§)
         {
            this.§">§ = param1.§1""§;
         }
         --this.§^"2§;
      }
      
      public function §5!,§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§83§(param1,null);
         _loc2_.§7%§ = null;
         _loc2_.§1""§ = this.§+!G§;
         if(this.§+!G§)
         {
            this.§+!G§.§7%§ = _loc2_;
         }
         this.§+!G§ = _loc2_;
         ++this.§'K§;
         _loc2_.§9!6§.§35§ = _loc2_;
         _loc2_.§9!6§.§?g§ = _loc2_.§&W§;
         _loc2_.§9!6§.§7! § = null;
         _loc2_.§9!6§.§ J§ = _loc2_.§#U§.§+!G§;
         if(_loc2_.§#U§.§+!G§)
         {
            _loc2_.§#U§.§+!G§.§7! § = _loc2_.§9!6§;
         }
         _loc2_.§#U§.§+!G§ = _loc2_.§9!6§;
         _loc2_.§3""§.§35§ = _loc2_;
         _loc2_.§3""§.§?g§ = _loc2_.§#U§;
         _loc2_.§3""§.§7! § = null;
         _loc2_.§3""§.§ J§ = _loc2_.§&W§.§+!G§;
         if(_loc2_.§&W§.§+!G§)
         {
            _loc2_.§&W§.§+!G§.§7! § = _loc2_.§3""§;
         }
         _loc2_.§&W§.§+!G§ = _loc2_.§3""§;
         var _loc3_:b2Body = param1.§<!S§;
         var _loc4_:b2Body = param1.§=Y§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§<!Y§();
            while(_loc5_)
            {
               if(_loc5_.§?g§ == _loc3_)
               {
                  _loc5_.§@K§.§[!,§();
               }
               _loc5_ = _loc5_.§ J§;
            }
         }
         return _loc2_;
      }
      
      public function §3S§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§8k§;
         if(param1.§7%§)
         {
            param1.§7%§.§1""§ = param1.§1""§;
         }
         if(param1.§1""§)
         {
            param1.§1""§.§7%§ = param1.§7%§;
         }
         if(param1 == this.§+!G§)
         {
            this.§+!G§ = param1.§1""§;
         }
         var _loc3_:b2Body = param1.§#U§;
         var _loc4_:b2Body = param1.§&W§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§9!6§.§7! §)
         {
            param1.§9!6§.§7! §.§ J§ = param1.§9!6§.§ J§;
         }
         if(param1.§9!6§.§ J§)
         {
            param1.§9!6§.§ J§.§7! § = param1.§9!6§.§7! §;
         }
         if(param1.§9!6§ == _loc3_.§+!G§)
         {
            _loc3_.§+!G§ = param1.§9!6§.§ J§;
         }
         param1.§9!6§.§7! § = null;
         param1.§9!6§.§ J§ = null;
         if(param1.§3""§.§7! §)
         {
            param1.§3""§.§7! §.§ J§ = param1.§3""§.§ J§;
         }
         if(param1.§3""§.§ J§)
         {
            param1.§3""§.§ J§.§7! § = param1.§3""§.§7! §;
         }
         if(param1.§3""§ == _loc4_.§+!G§)
         {
            _loc4_.§+!G§ = param1.§3""§.§ J§;
         }
         param1.§3""§.§7! § = null;
         param1.§3""§.§ J§ = null;
         b2Joint.§&!`§(param1,null);
         --this.§'K§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§<!Y§();
            while(_loc5_)
            {
               if(_loc5_.§?g§ == _loc3_)
               {
                  _loc5_.§@K§.§[!,§();
               }
               _loc5_ = _loc5_.§ J§;
            }
         }
      }
      
      public function §7V§(param1:b2Controller) : b2Controller
      {
         param1.§1""§ = this.§0L§;
         param1.§7%§ = null;
         this.§0L§ = param1;
         param1.m_world = this;
         ++this.§,!b§;
         return param1;
      }
      
      public function §9!b§(param1:b2Controller) : void
      {
         if(param1.§7%§)
         {
            param1.§7%§.§1""§ = param1.§1""§;
         }
         if(param1.§1""§)
         {
            param1.§1""§.§7%§ = param1.§7%§;
         }
         if(this.§0L§ == param1)
         {
            this.§0L§ = param1.§1""§;
         }
         --this.§,!b§;
      }
      
      public function §>![§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§1""§ = this.§0L§;
         param1.§7%§ = null;
         if(this.§0L§)
         {
            this.§0L§.§7%§ = param1;
         }
         this.§0L§ = param1;
         ++this.§,!b§;
         param1.m_world = this;
         return param1;
      }
      
      public function §-!=§(param1:b2Controller) : void
      {
         param1.§-!]§();
         if(param1.§1""§)
         {
            param1.§1""§.§7%§ = param1.§7%§;
         }
         if(param1.§7%§)
         {
            param1.§7%§.§1""§ = param1.§1""§;
         }
         if(param1 == this.§0L§)
         {
            this.§0L§ = param1.§1""§;
         }
         --this.§,!b§;
      }
      
      public function §3m§(param1:Boolean) : void
      {
         §'!b§ = param1;
      }
      
      public function §9!s§(param1:Boolean) : void
      {
         §^!I§ = param1;
      }
      
      public function §[y§() : int
      {
         return this.§^"2§;
      }
      
      public function §'q§() : int
      {
         return this.§'K§;
      }
      
      public function §7!d§() : int
      {
         return this.§,!P§;
      }
      
      public function §^"%§(param1:b2Vec2) : void
      {
         this.§3§ = param1;
      }
      
      public function §]!A§() : b2Vec2
      {
         return this.§3§;
      }
      
      public function §]",§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §1!-§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§1z§ & §;"2§)
         {
            this.§>!b§.§5""§();
            this.§1z§ &= ~§;"2§;
         }
         this.§1z§ |= §,!c§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§@w§ = param1;
         _loc4_.§[!z§ = param2;
         _loc4_.§6!t§ = param3;
         if(param1 > 0)
         {
            _loc4_.§9!$§ = 1 / param1;
         }
         else
         {
            _loc4_.§9!$§ = 0;
         }
         _loc4_.§>!i§ = this.§-!r§ * param1;
         _loc4_.§2!z§ = §'!b§;
         this.§>!b§.§4l§();
         if(_loc4_.§@w§ > 0)
         {
            this.§`"7§(_loc4_);
         }
         if(§^!I§ && _loc4_.§@w§ > 0)
         {
            this.§3!-§(_loc4_);
         }
         if(_loc4_.§@w§ > 0)
         {
            this.§-!r§ = _loc4_.§9!$§;
         }
         this.§1z§ &= ~§,!c§;
      }
      
      public function §5"5§() : void
      {
         var _loc1_:b2Body = this.§">§;
         while(_loc1_)
         {
            _loc1_.§'!G§.§7!@§();
            _loc1_.§%!o§ = 0;
            _loc1_ = _loc1_.§1""§;
         }
      }
      
      public function §<e§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§8!1§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§3!w§ == null)
         {
            return;
         }
         this.§3!w§.§9!j§.graphics.clear();
         var _loc1_:uint = this.§3!w§.§5S§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§=F§)
         {
            _loc3_ = this.§">§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§]L§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§,G§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§else§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.get() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§else§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.get() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§else§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§else§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§else§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§1""§;
               }
               _loc3_ = _loc3_.§1""§;
            }
         }
         if(_loc1_ & b2DebugDraw.§^!-§)
         {
            _loc6_ = this.§+!G§;
            while(_loc6_)
            {
               this.§9P§(_loc6_);
               _loc6_ = _loc6_.§1""§;
            }
         }
         if(_loc1_ & b2DebugDraw.§`!6§)
         {
            _loc16_ = this.§0L§;
            while(_loc16_)
            {
               _loc16_.§'!T§(this.§3!w§);
               _loc16_ = _loc16_.§1""§;
            }
         }
         if(_loc1_ & b2DebugDraw.§7!3§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§>!b§.§&!E§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§1!j§();
               _loc19_ = _loc17_.§!!'§();
               _loc20_ = _loc18_.§]"7§().§+!Y§();
               _loc21_ = _loc19_.§]"7§().§+!Y§();
               this.§3!w§.§#!0§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§9!]§();
            }
         }
         if(_loc1_ & b2DebugDraw.§6a§)
         {
            _loc7_ = this.§>!b§.§+9§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§">§;
            while(_loc3_)
            {
               if(_loc3_.§,G§() != false)
               {
                  _loc4_ = _loc3_.§]L§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§@!G§(_loc4_.§7]§);
                     _loc14_[0].Set(_loc22_.§+!&§.x,_loc22_.§+!&§.y);
                     _loc14_[1].Set(_loc22_.§;l§.x,_loc22_.§+!&§.y);
                     _loc14_[2].Set(_loc22_.§;l§.x,_loc22_.§;l§.y);
                     _loc14_[3].Set(_loc22_.§+!&§.x,_loc22_.§;l§.y);
                     this.§3!w§.§3=§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§9!]§();
                  }
               }
               _loc3_ = _loc3_.§9!]§();
            }
         }
         if(_loc1_ & b2DebugDraw.§6c§)
         {
            _loc3_ = this.§">§;
            while(_loc3_)
            {
               (_loc11_ = §4!L§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§%!d§();
               this.§3!w§.§#!W§(_loc11_);
               _loc3_ = _loc3_.§1""§;
            }
         }
      }
      
      public function § !'§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§8!1§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§>!b§.§+9§;
         broadPhase.§1!h§(WorldQueryWrapper,aabb);
      }
      
      public function §,L§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§8!1§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§<!O§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§5G§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§7"7§();
         }
         broadPhase = this.§>!b§.§+9§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§1!h§(WorldQueryWrapper,aabb);
      }
      
      public function §-H§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§8!1§ = null;
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
         broadPhase = this.§>!b§.§+9§;
         var aabb:b2AABB = new b2AABB();
         aabb.§+!&§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§;l§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§1!h§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§8!1§ = null;
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
            return param1.§6!O§;
         };
         broadPhase = this.§>!b§.§+9§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §,l§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §3!P§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §!=§() : b2Body
      {
         return this.§">§;
      }
      
      public function §"! §() : b2Joint
      {
         return this.§+!G§;
      }
      
      public function §<!Y§() : b2Contact
      {
         return this.§&!E§;
      }
      
      public function §&"'§() : Boolean
      {
         return (this.§1z§ & §,!c§) > 0;
      }
      
      b2internal function §`"7§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§0L§;
         while(_loc3_)
         {
            _loc3_.§1!-§(param1);
            _loc3_ = _loc3_.§1""§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§%"1§).§+"'§(this.§^"2§,this.§,!P§,this.§'K§,null,this.§>!b§.§ if§,this.§+i§);
         _loc2_ = this.§">§;
         while(_loc2_)
         {
            _loc2_.§1z§ &= ~b2Body.§&!Z§;
            _loc2_ = _loc2_.§1""§;
         }
         var _loc5_:b2Contact = this.§&!E§;
         while(_loc5_)
         {
            _loc5_.§1z§ &= ~b2Contact.§&!Z§;
            _loc5_ = _loc5_.§1""§;
         }
         var _loc6_:b2Joint = this.§+!G§;
         while(_loc6_)
         {
            _loc6_.§ j§ = false;
            _loc6_ = _loc6_.§1""§;
         }
         var _loc7_:int = this.§^"2§;
         var _loc8_:Vector.<b2Body> = this.§!!d§;
         var _loc9_:b2Body = this.§">§;
         while(_loc9_)
         {
            if(!(_loc9_.§1z§ & b2Body.§&!Z§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§,G§() == false))
               {
                  if(_loc9_.get() != b2Body.b2_staticBody)
                  {
                     _loc4_.§-!]§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§1z§ |= b2Body.§&!Z§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§&!V§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.get() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§&!E§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§@K§.§1z§ & b2Contact.§&!Z§))
                              {
                                 if(!(_loc13_.§@K§.§?x§() == true || _loc13_.§@K§.§5U§() == false || _loc13_.§@K§.§6r§() == false))
                                 {
                                    _loc4_.§-Z§(_loc13_.§@K§);
                                    _loc13_.§@K§.§1z§ |= b2Contact.§&!Z§;
                                    if(!((_loc12_ = _loc13_.§?g§).§1z§ & b2Body.§&!Z§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§1z§ |= b2Body.§&!Z§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§ J§;
                           }
                           _loc14_ = _loc2_.§+!G§;
                           while(_loc14_)
                           {
                              if(_loc14_.§35§.§ j§ != true)
                              {
                                 if((_loc12_ = _loc14_.§?g§).§,G§() != false)
                                 {
                                    _loc4_.§05§(_loc14_.§35§);
                                    _loc14_.§35§.§ j§ = true;
                                    if(!(_loc12_.§1z§ & b2Body.§&!Z§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§1z§ |= b2Body.§&!Z§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§ J§;
                           }
                        }
                     }
                     _loc4_.§`"7§(param1,this.§3§,this.§-!`§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§^"2§)
                     {
                        _loc2_ = _loc4_.§&!7§[_loc11_];
                        if(_loc2_.get() == b2Body.b2_staticBody)
                        {
                           _loc2_.§1z§ &= ~b2Body.§&!Z§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§1""§;
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
         _loc2_ = this.§">§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§,G§() == false))
            {
               if(_loc2_.get() != b2Body.b2_staticBody)
               {
                  _loc2_.§1L§();
               }
            }
            _loc2_ = _loc2_.§1""§;
         }
         this.§>!b§.§5""§();
      }
      
      b2internal function §3!-§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§%"1§).§+"'§(this.§^"2§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§>!b§.§ if§,this.§+i§);
         var _loc10_:Vector.<b2Body> = §=o§;
         _loc2_ = this.§">§;
         while(_loc2_)
         {
            _loc2_.§1z§ &= ~b2Body.§&!Z§;
            _loc2_.m_sweep.§<8§ = 0;
            _loc2_ = _loc2_.§1""§;
         }
         _loc11_ = this.§&!E§;
         while(_loc11_)
         {
            _loc11_.§1z§ &= ~(b2Contact.§7"5§ | b2Contact.§&!Z§);
            _loc11_ = _loc11_.§1""§;
         }
         _loc8_ = this.§+!G§;
         while(_loc8_)
         {
            _loc8_.§ j§ = false;
            _loc8_ = _loc8_.§1""§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§&!E§;
            while(_loc11_)
            {
               if(!(_loc11_.§?x§() == true || _loc11_.§5U§() == false || _loc11_.§%!k§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§1z§ & b2Contact.§7"5§)
                  {
                     _loc19_ = _loc11_.§-!J§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§'!$§;
                     _loc4_ = _loc11_.§>!#§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.get() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.get() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr595:
                        _loc11_ = _loc11_.§1""§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§<8§;
                     if(_loc5_.m_sweep.§<8§ < _loc6_.m_sweep.§<8§)
                     {
                        _loc20_ = _loc6_.m_sweep.§<8§;
                        _loc5_.m_sweep.§["$§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§<8§ < _loc5_.m_sweep.§<8§)
                     {
                        _loc20_ = _loc5_.m_sweep.§<8§;
                        _loc6_.m_sweep.§["$§(_loc20_);
                     }
                     _loc19_ = _loc11_.§8!?§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§-!J§ = _loc19_;
                     _loc11_.§1z§ |= b2Contact.§7"5§;
                     §§goto(addr595);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr595);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§'!$§;
            _loc4_ = _loc12_.§>!#§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §!8§.Set(_loc5_.m_sweep);
            §5"&§.Set(_loc6_.m_sweep);
            _loc5_.§["$§(_loc13_);
            _loc6_.§["$§(_loc13_);
            _loc12_.§8"5§(this.§>!b§.§ if§);
            _loc12_.§1z§ &= ~b2Contact.§7"5§;
            if(_loc12_.§?x§() == true || _loc12_.§5U§() == false)
            {
               _loc5_.m_sweep.Set(§!8§);
               _loc6_.m_sweep.Set(§5"&§);
               _loc5_.§+"+§();
               _loc6_.§+"+§();
            }
            else if(_loc12_.§6r§() != false)
            {
               if((_loc14_ = _loc5_).get() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§-!]§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§1z§ |= b2Body.§&!Z§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§&!V§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.get() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§&!E§;
                     while(_loc7_)
                     {
                        if(_loc9_.§,!P§ == _loc9_.§!!;§)
                        {
                           break;
                        }
                        if(!(_loc7_.§@K§.§1z§ & b2Contact.§&!Z§))
                        {
                           if(!(_loc7_.§@K§.§?x§() == true || _loc7_.§@K§.§5U§() == false || _loc7_.§@K§.§6r§() == false))
                           {
                              _loc9_.§-Z§(_loc7_.§@K§);
                              _loc7_.§@K§.§1z§ |= b2Contact.§&!Z§;
                              if(!((_loc22_ = _loc7_.§?g§).§1z§ & b2Body.§&!Z§))
                              {
                                 if(_loc22_.get() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§["$§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§1z§ |= b2Body.§&!Z§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§ J§;
                     }
                     _loc21_ = _loc2_.§+!G§;
                     while(_loc21_)
                     {
                        if(_loc9_.§'K§ != _loc9_.§8`§)
                        {
                           if(_loc21_.§35§.§ j§ != true)
                           {
                              if((_loc22_ = _loc21_.§?g§).§,G§() != false)
                              {
                                 _loc9_.§05§(_loc21_.§35§);
                                 _loc21_.§35§.§ j§ = true;
                                 if(!(_loc22_.§1z§ & b2Body.§&!Z§))
                                 {
                                    if(_loc22_.get() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§["$§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§1z§ |= b2Body.§&!Z§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§ J§;
                     }
                  }
               }
               (_loc17_ = §?!§).§2!z§ = false;
               _loc17_.§@w§ = (1 - _loc13_) * param1.§@w§;
               _loc17_.§9!$§ = 1 / _loc17_.§@w§;
               _loc17_.§>!i§ = 0;
               _loc17_.§[!z§ = param1.§[!z§;
               _loc17_.§6!t§ = param1.§6!t§;
               _loc9_.§3!-§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§^"2§)
               {
                  _loc2_ = _loc9_.§&!7§[_loc18_];
                  _loc2_.§1z§ &= ~b2Body.§&!Z§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.get() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§1L§();
                        _loc7_ = _loc2_.§&!E§;
                        while(_loc7_)
                        {
                           _loc7_.§@K§.§1z§ &= ~b2Contact.§7"5§;
                           _loc7_ = _loc7_.§ J§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§,!P§)
               {
                  _loc11_ = _loc9_.§,$§[_loc18_];
                  _loc11_.§1z§ &= ~(b2Contact.§7"5§ | b2Contact.§&!Z§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§'K§)
               {
                  (_loc8_ = _loc9_.§;!U§[_loc18_]).§ j§ = false;
                  _loc18_++;
               }
               this.§>!b§.§5""§();
            }
         }
      }
      
      b2internal function §9P§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§="2§();
         var _loc3_:b2Body = param1.§]C§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §6L§;
         switch(param1.§!!y§)
         {
            case b2Joint.§1!X§:
               this.§3!w§.§#!0§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§^;§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§#L§();
               _loc13_ = _loc11_.§6q§();
               this.§3!w§.§#!0§(_loc12_,_loc8_,_loc10_);
               this.§3!w§.§#!0§(_loc13_,_loc9_,_loc10_);
               this.§3!w§.§#!0§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§9;§:
               this.§3!w§.§#!0§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§3!w§.§#!0§(_loc6_,_loc8_,_loc10_);
               }
               this.§3!w§.§#!0§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§3!w§.§#!0§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §else§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§!!y§)
         {
            case b2Shape.§;e§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§'H§(param2,_loc4_.§3"8§);
               _loc6_ = _loc4_.§7!1§;
               _loc7_ = param2.R.col1;
               this.§3!w§.§<"5§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§[X§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§3!b§();
               _loc11_ = _loc9_.§>#§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§'H§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§3!w§.§3w§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§9"-§:
               _loc13_ = param1 as b2EdgeShape;
               this.§3!w§.§#!0§(b2Math.§'H§(param2,_loc13_.GetVertex1()),b2Math.§'H§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

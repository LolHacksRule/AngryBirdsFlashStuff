package §4"O§
{
   import § ! §.*;
   import § "%§.*;
   import §"#i§.*;
   import §'"$§.*;
   import §,!s§.*;
   import §,E§.b2Controller;
   import §,E§.b2ControllerEdge;
   import §`!k§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      protected static var §3!q§:b2Transform = new b2Transform();
      
      private static var §"#D§:b2Sweep = new b2Sweep();
      
      private static var §`!$§:b2Sweep = new b2Sweep();
      
      private static var §>"_§:b2TimeStep = new b2TimeStep();
      
      private static var §@!G§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §<"n§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §^$=§:Boolean;
      
      private static var §@B§:Boolean;
      
      public static const §`$ §:int = 1;
      
      public static const §3$9§:int = 2;
       
      
      private var §#!n§:Vector.<b2Body>;
      
      b2internal var § $8§:int;
      
      b2internal var §'"6§:b2ContactManager;
      
      private var §+#,§:b2ContactSolver;
      
      private var §'9§:b2Island;
      
      b2internal var §@"3§:b2Body;
      
      protected var § #+§:b2Joint;
      
      b2internal var §#v§:b2Contact;
      
      protected var §9l§:int;
      
      b2internal var §<"$§:int;
      
      protected var §'"O§:int;
      
      protected var §^2§:b2Controller;
      
      private var §"$"§:int;
      
      private var §-!]§:b2Vec2;
      
      private var §!"+§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §3!J§:b2DestructionListener;
      
      protected var §4"B§:b2DebugDraw;
      
      private var §?!d§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§#!n§ = new Vector.<b2Body>();
         this.§'"6§ = new b2ContactManager();
         this.§+#,§ = new b2ContactSolver();
         this.§'9§ = new b2Island();
         super();
         this.§3!J§ = null;
         this.§4"B§ = null;
         this.§@"3§ = null;
         this.§#v§ = null;
         this.§ #+§ = null;
         this.§^2§ = null;
         this.§9l§ = 0;
         this.§<"$§ = 0;
         this.§'"O§ = 0;
         this.§"$"§ = 0;
         §^$=§ = true;
         §@B§ = true;
         this.§!"+§ = param2;
         this.§-!]§ = param1;
         this.§?!d§ = 0;
         this.§'"6§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §&!b§(param1:b2DestructionListener) : void
      {
         this.§3!J§ = param1;
      }
      
      public function §@!T§(param1:b2ContactFilter) : void
      {
         this.§'"6§.§9#+§ = param1;
      }
      
      public function §#"b§(param1:b2ContactListener) : void
      {
         this.§'"6§.§]x§ = param1;
      }
      
      public function §#,§(param1:b2DebugDraw) : void
      {
         this.§4"B§ = param1;
      }
      
      public function §5"W§(param1:§`$&§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§`$&§ = this.§'"6§.§#"2§;
         this.§'"6§.§#"2§ = param1;
         var _loc3_:b2Body = this.§@"3§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§%!N§;
            while(_loc4_)
            {
               _loc4_.§@"w§ = param1.§'"4§(_loc2_.§+5§(_loc4_.§@"w§),_loc4_);
               _loc4_ = _loc4_.§-!l§;
            }
            _loc3_ = _loc3_.§-!l§;
         }
      }
      
      public function §9#U§() : void
      {
         this.§'"6§.§#"2§.§9#U§();
      }
      
      public function §!!Q§() : int
      {
         return this.§'"6§.§#"2§.§!!Q§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§`#M§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§,p§ = null;
         _loc2_.§-!l§ = this.§@"3§;
         if(this.§@"3§)
         {
            this.§@"3§.§,p§ = _loc2_;
         }
         this.§@"3§ = _loc2_;
         ++this.§9l§;
         return _loc2_;
      }
      
      public function DestroyBody(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§`#M§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§ #+§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§%I§;
            if(this.§3!J§)
            {
               this.§3!J§.§9`§(_loc6_.joint);
            }
            this.§[!N§(_loc6_.joint);
         }
         var _loc3_:b2ControllerEdge = param1.§^2§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§3",§;
            _loc7_.§8I§.§+B§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§#v§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§%I§;
            this.§'"6§.§`"e§(_loc8_.§%#d§);
         }
         param1.§#v§ = null;
         var _loc5_:b2Fixture = param1.§%!N§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§-!l§;
            if(this.§3!J§)
            {
               this.§3!J§.§4";§(_loc9_);
            }
            _loc9_.§8e§(this.§'"6§.§#"2§);
            _loc9_.§`"e§();
         }
         param1.§%!N§ = null;
         param1.§9!P§ = 0;
         if(param1.§,p§)
         {
            param1.§,p§.§-!l§ = param1.§-!l§;
         }
         if(param1.§-!l§)
         {
            param1.§-!l§.§,p§ = param1.§,p§;
         }
         if(param1 == this.§@"3§)
         {
            this.§@"3§ = param1.§-!l§;
         }
         --this.§9l§;
      }
      
      public function §]!x§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§4"T§(param1,null);
         _loc2_.§,p§ = null;
         _loc2_.§-!l§ = this.§ #+§;
         if(this.§ #+§)
         {
            this.§ #+§.§,p§ = _loc2_;
         }
         this.§ #+§ = _loc2_;
         ++this.§'"O§;
         _loc2_.§#!X§.joint = _loc2_;
         _loc2_.§#!X§.§!y§ = _loc2_.§^U§;
         _loc2_.§#!X§.§&"^§ = null;
         _loc2_.§#!X§.§%I§ = _loc2_.§3!^§.§ #+§;
         if(_loc2_.§3!^§.§ #+§)
         {
            _loc2_.§3!^§.§ #+§.§&"^§ = _loc2_.§#!X§;
         }
         _loc2_.§3!^§.§ #+§ = _loc2_.§#!X§;
         _loc2_.§!$"§.joint = _loc2_;
         _loc2_.§!$"§.§!y§ = _loc2_.§3!^§;
         _loc2_.§!$"§.§&"^§ = null;
         _loc2_.§!$"§.§%I§ = _loc2_.§^U§.§ #+§;
         if(_loc2_.§^U§.§ #+§)
         {
            _loc2_.§^U§.§ #+§.§&"^§ = _loc2_.§!$"§;
         }
         _loc2_.§^U§.§ #+§ = _loc2_.§!$"§;
         var _loc3_:b2Body = param1.§'§;
         var _loc4_:b2Body = param1.§>!2§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§class§();
            while(_loc5_)
            {
               if(_loc5_.§!y§ == _loc3_)
               {
                  _loc5_.§%#d§.§##Y§();
               }
               _loc5_ = _loc5_.§%I§;
            }
         }
         return _loc2_;
      }
      
      public function §[!N§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§"#X§;
         if(param1.§,p§)
         {
            param1.§,p§.§-!l§ = param1.§-!l§;
         }
         if(param1.§-!l§)
         {
            param1.§-!l§.§,p§ = param1.§,p§;
         }
         if(param1 == this.§ #+§)
         {
            this.§ #+§ = param1.§-!l§;
         }
         var _loc3_:b2Body = param1.§3!^§;
         var _loc4_:b2Body = param1.§^U§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§#!X§.§&"^§)
         {
            param1.§#!X§.§&"^§.§%I§ = param1.§#!X§.§%I§;
         }
         if(param1.§#!X§.§%I§)
         {
            param1.§#!X§.§%I§.§&"^§ = param1.§#!X§.§&"^§;
         }
         if(param1.§#!X§ == _loc3_.§ #+§)
         {
            _loc3_.§ #+§ = param1.§#!X§.§%I§;
         }
         param1.§#!X§.§&"^§ = null;
         param1.§#!X§.§%I§ = null;
         if(param1.§!$"§.§&"^§)
         {
            param1.§!$"§.§&"^§.§%I§ = param1.§!$"§.§%I§;
         }
         if(param1.§!$"§.§%I§)
         {
            param1.§!$"§.§%I§.§&"^§ = param1.§!$"§.§&"^§;
         }
         if(param1.§!$"§ == _loc4_.§ #+§)
         {
            _loc4_.§ #+§ = param1.§!$"§.§%I§;
         }
         param1.§!$"§.§&"^§ = null;
         param1.§!$"§.§%I§ = null;
         b2Joint.§`"e§(param1,null);
         --this.§'"O§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§class§();
            while(_loc5_)
            {
               if(_loc5_.§!y§ == _loc3_)
               {
                  _loc5_.§%#d§.§##Y§();
               }
               _loc5_ = _loc5_.§%I§;
            }
         }
      }
      
      public function §;!C§(param1:b2Controller) : b2Controller
      {
         param1.§-!l§ = this.§^2§;
         param1.§,p§ = null;
         this.§^2§ = param1;
         param1.m_world = this;
         ++this.§"$"§;
         return param1;
      }
      
      public function §2d§(param1:b2Controller) : void
      {
         if(param1.§,p§)
         {
            param1.§,p§.§-!l§ = param1.§-!l§;
         }
         if(param1.§-!l§)
         {
            param1.§-!l§.§,p§ = param1.§,p§;
         }
         if(this.§^2§ == param1)
         {
            this.§^2§ = param1.§-!l§;
         }
         --this.§"$"§;
      }
      
      public function §"#d§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§-!l§ = this.§^2§;
         param1.§,p§ = null;
         if(this.§^2§)
         {
            this.§^2§.§,p§ = param1;
         }
         this.§^2§ = param1;
         ++this.§"$"§;
         param1.m_world = this;
         return param1;
      }
      
      public function §;#_§(param1:b2Controller) : void
      {
         param1.§,n§();
         if(param1.§-!l§)
         {
            param1.§-!l§.§,p§ = param1.§,p§;
         }
         if(param1.§,p§)
         {
            param1.§,p§.§-!l§ = param1.§-!l§;
         }
         if(param1 == this.§^2§)
         {
            this.§^2§ = param1.§-!l§;
         }
         --this.§"$"§;
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         §^$=§ = param1;
      }
      
      public function §!=§(param1:Boolean) : void
      {
         §@B§ = param1;
      }
      
      public function §<"S§() : int
      {
         return this.§9l§;
      }
      
      public function § #M§() : int
      {
         return this.§'"O§;
      }
      
      public function §8#_§() : int
      {
         return this.§<"$§;
      }
      
      public function SetGravity(param1:b2Vec2) : void
      {
         this.§-!]§ = param1;
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.§-!]§;
      }
      
      public function §9W§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         if(this.§ $8§ & §`$ §)
         {
            this.§'"6§.§^B§();
            this.§ $8§ &= ~§`$ §;
         }
         this.§ $8§ |= §3$9§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).dt = param1;
         _loc4_.§#8§ = param2;
         _loc4_.§^$@§ = param3;
         if(param1 > 0)
         {
            _loc4_.§6$2§ = 1 / param1;
         }
         else
         {
            _loc4_.§6$2§ = 0;
         }
         _loc4_.§4$B§ = this.§?!d§ * param1;
         _loc4_.§##q§ = §^$=§;
         this.§'"6§.§4"g§();
         if(_loc4_.dt > 0)
         {
            this.§3!Z§(_loc4_);
         }
         if(§@B§ && _loc4_.dt > 0)
         {
            this.§%$8§(_loc4_);
         }
         if(_loc4_.dt > 0)
         {
            this.§?!d§ = _loc4_.§6$2§;
         }
         this.§ $8§ &= ~§3$9§;
      }
      
      public function ClearForces() : void
      {
         var _loc1_:b2Body = this.§@"3§;
         while(_loc1_)
         {
            _loc1_.§?"?§.§#!t§();
            _loc1_.§'#<§ = 0;
            _loc1_ = _loc1_.§-!l§;
         }
      }
      
      public function §+#p§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§`$&§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§4"B§ == null)
         {
            return;
         }
         this.§4"B§.§7"D§.graphics.clear();
         var _loc1_:uint = this.§4"B§.§ "@§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§ !P§)
         {
            _loc3_ = this.§@"3§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§]$1§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§0!S§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§+L§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§0!S§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§+L§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§0!S§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§0!S§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§0!S§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§-!l§;
               }
               _loc3_ = _loc3_.§-!l§;
            }
         }
         if(_loc1_ & b2DebugDraw.§`$7§)
         {
            _loc6_ = this.§ #+§;
            while(_loc6_)
            {
               this.§!##§(_loc6_);
               _loc6_ = _loc6_.§-!l§;
            }
         }
         if(_loc1_ & b2DebugDraw.§0"&§)
         {
            _loc16_ = this.§^2§;
            while(_loc16_)
            {
               _loc16_.§6!e§(this.§4"B§);
               _loc16_ = _loc16_.§-!l§;
            }
         }
         if(_loc1_ & b2DebugDraw.§=#a§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§'"6§.§#v§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§60§();
               _loc19_ = _loc17_.§#"Y§();
               _loc20_ = _loc18_.§?$@§().§<!N§();
               _loc21_ = _loc19_.§?$@§().§<!N§();
               this.§4"B§.§,#m§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§^"y§();
            }
         }
         if(_loc1_ & b2DebugDraw.§-q§)
         {
            _loc7_ = this.§'"6§.§#"2§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§@"3§;
            while(_loc3_)
            {
               if(_loc3_.§]$1§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§+5§(_loc4_.§@"w§);
                     _loc14_[0].Set(_loc22_.§]#b§.x,_loc22_.§]#b§.y);
                     _loc14_[1].Set(_loc22_.§!O§.x,_loc22_.§]#b§.y);
                     _loc14_[2].Set(_loc22_.§!O§.x,_loc22_.§!O§.y);
                     _loc14_[3].Set(_loc22_.§]#b§.x,_loc22_.§!O§.y);
                     this.§4"B§.§>#h§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§^"y§();
                  }
               }
               _loc3_ = _loc3_.§^"y§();
            }
         }
         if(_loc1_ & b2DebugDraw.§##r§)
         {
            _loc3_ = this.§@"3§;
            while(_loc3_)
            {
               (_loc11_ = §3!q§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§4"B§.§4!K§(_loc11_);
               _loc3_ = _loc3_.§-!l§;
            }
         }
      }
      
      public function §[!T§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§`$&§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§'"6§.§#"2§;
         broadPhase.§?#c§(WorldQueryWrapper,aabb);
      }
      
      public function §'O§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§`$&§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§4"-§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().GetTransform()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§&!]§();
         }
         broadPhase = this.§'"6§.§#"2§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§?#c§(WorldQueryWrapper,aabb);
      }
      
      public function §'"C§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§`$&§ = null;
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
         broadPhase = this.§'"6§.§#"2§;
         var aabb:b2AABB = new b2AABB();
         aabb.§]#b§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§!O§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§?#c§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§`$&§ = null;
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
            return param1.§?"n§;
         };
         broadPhase = this.§'"6§.§#"2§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §@"_§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §;$2§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §,#"§() : b2Body
      {
         return this.§@"3§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§ #+§;
      }
      
      public function §class§() : b2Contact
      {
         return this.§#v§;
      }
      
      public function §`#M§() : Boolean
      {
         return (this.§ $8§ & §3$9§) > 0;
      }
      
      b2internal function §3!Z§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§^2§;
         while(_loc3_)
         {
            _loc3_.Step(param1);
            _loc3_ = _loc3_.§-!l§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§'9§).§?#W§(this.§9l§,this.§<"$§,this.§'"O§,null,this.§'"6§.§]x§,this.§+#,§);
         _loc2_ = this.§@"3§;
         while(_loc2_)
         {
            _loc2_.§ $8§ &= ~b2Body.§1!0§;
            _loc2_ = _loc2_.§-!l§;
         }
         var _loc5_:b2Contact = this.§#v§;
         while(_loc5_)
         {
            _loc5_.§ $8§ &= ~b2Contact.§1!0§;
            _loc5_ = _loc5_.§-!l§;
         }
         var _loc6_:b2Joint = this.§ #+§;
         while(_loc6_)
         {
            _loc6_.§"",§ = false;
            _loc6_ = _loc6_.§-!l§;
         }
         var _loc7_:int = this.§9l§;
         var _loc8_:Vector.<b2Body> = this.§#!n§;
         var _loc9_:b2Body = this.§@"3§;
         while(_loc9_)
         {
            if(!(_loc9_.§ $8§ & b2Body.§1!0§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§]$1§() == false))
               {
                  if(_loc9_.§+L§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§,n§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§ $8§ |= b2Body.§1!0§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§8"#§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§+L§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§#v§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§%#d§.§ $8§ & b2Contact.§1!0§))
                              {
                                 if(!(_loc13_.§%#d§.§8r§() == true || _loc13_.§%#d§.§>!7§() == false || _loc13_.§%#d§.§7!1§() == false))
                                 {
                                    _loc4_.§&#@§(_loc13_.§%#d§);
                                    _loc13_.§%#d§.§ $8§ |= b2Contact.§1!0§;
                                    if(!((_loc12_ = _loc13_.§!y§).§ $8§ & b2Body.§1!0§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§ $8§ |= b2Body.§1!0§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§%I§;
                           }
                           _loc14_ = _loc2_.§ #+§;
                           while(_loc14_)
                           {
                              if(_loc14_.joint.§"",§ != true)
                              {
                                 if((_loc12_ = _loc14_.§!y§).§]$1§() != false)
                                 {
                                    _loc4_.§""y§(_loc14_.joint);
                                    _loc14_.joint.§"",§ = true;
                                    if(!(_loc12_.§ $8§ & b2Body.§1!0§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§ $8§ |= b2Body.§1!0§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§%I§;
                           }
                        }
                     }
                     _loc4_.§3!Z§(param1,this.§-!]§,this.§!"+§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§9l§)
                     {
                        _loc2_ = _loc4_.§5#d§[_loc11_];
                        if(_loc2_.§+L§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§ $8§ &= ~b2Body.§1!0§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§-!l§;
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
         _loc2_ = this.§@"3§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§]$1§() == false))
            {
               if(_loc2_.§+L§() != b2Body.b2_staticBody)
               {
                  _loc2_.§6!1§();
               }
            }
            _loc2_ = _loc2_.§-!l§;
         }
         this.§'"6§.§^B§();
      }
      
      b2internal function §%$8§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§'9§).§?#W§(this.§9l§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§'"6§.§]x§,this.§+#,§);
         var _loc10_:Vector.<b2Body> = §@!G§;
         _loc2_ = this.§@"3§;
         while(_loc2_)
         {
            _loc2_.§ $8§ &= ~b2Body.§1!0§;
            _loc2_.m_sweep.§=!m§ = 0;
            _loc2_ = _loc2_.§-!l§;
         }
         _loc11_ = this.§#v§;
         while(_loc11_)
         {
            _loc11_.§ $8§ &= ~(b2Contact.§&"r§ | b2Contact.§1!0§);
            _loc11_.§>C§ = 1;
            _loc11_ = _loc11_.§-!l§;
         }
         _loc8_ = this.§ #+§;
         while(_loc8_)
         {
            _loc8_.§"",§ = false;
            _loc8_ = _loc8_.§-!l§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§#v§;
            for(; _loc11_; _loc11_ = _loc11_.§-!l§)
            {
               if(!(_loc11_.§8r§() == true || _loc11_.§>!7§() == false || _loc11_.§,!o§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§ $8§ & b2Contact.§&"r§)
                  {
                     _loc19_ = _loc11_.§>C§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§##y§;
                     _loc4_ = _loc11_.§0!m§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§+L§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§+L§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§=!m§;
                     if(_loc5_.m_sweep.§=!m§ < _loc6_.m_sweep.§=!m§)
                     {
                        _loc20_ = _loc6_.m_sweep.§=!m§;
                        _loc5_.m_sweep.§74§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§=!m§ < _loc5_.m_sweep.§=!m§)
                     {
                        _loc20_ = _loc5_.m_sweep.§=!m§;
                        _loc6_.m_sweep.§74§(_loc20_);
                     }
                     _loc19_ = _loc11_.§%p§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§>C§ = _loc19_;
                     _loc11_.§ $8§ |= b2Contact.§&"r§;
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§##y§;
            _loc4_ = _loc12_.§0!m§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §"#D§.Set(_loc5_.m_sweep);
            §`!$§.Set(_loc6_.m_sweep);
            _loc5_.§74§(_loc13_);
            _loc6_.§74§(_loc13_);
            _loc12_.§4"`§(this.§'"6§.§]x§);
            _loc12_.§ $8§ &= ~b2Contact.§&"r§;
            if(_loc12_.§8r§() == true || _loc12_.§>!7§() == false)
            {
               _loc5_.m_sweep.Set(§"#D§);
               _loc6_.m_sweep.Set(§`!$§);
               _loc5_.§6#K§();
               _loc6_.§6#K§();
            }
            else if(_loc12_.§7!1§() != false)
            {
               if((_loc14_ = _loc5_).§+L§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§,n§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§ $8§ |= b2Body.§1!0§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§8"#§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§+L§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§#v§;
                     while(_loc7_)
                     {
                        if(_loc9_.§<"$§ == _loc9_.§+#;§)
                        {
                           break;
                        }
                        if(!(_loc7_.§%#d§.§ $8§ & b2Contact.§1!0§))
                        {
                           if(!(_loc7_.§%#d§.§8r§() == true || _loc7_.§%#d§.§>!7§() == false || _loc7_.§%#d§.§7!1§() == false))
                           {
                              _loc9_.§&#@§(_loc7_.§%#d§);
                              _loc7_.§%#d§.§ $8§ |= b2Contact.§1!0§;
                              if(!((_loc22_ = _loc7_.§!y§).§ $8§ & b2Body.§1!0§))
                              {
                                 if(_loc22_.§+L§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§74§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§ $8§ |= b2Body.§1!0§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§%I§;
                     }
                     _loc21_ = _loc2_.§ #+§;
                     while(_loc21_)
                     {
                        if(_loc9_.§'"O§ != _loc9_.§>$9§)
                        {
                           if(_loc21_.joint.§"",§ != true)
                           {
                              if((_loc22_ = _loc21_.§!y§).§]$1§() != false)
                              {
                                 _loc9_.§""y§(_loc21_.joint);
                                 _loc21_.joint.§"",§ = true;
                                 if(!(_loc22_.§ $8§ & b2Body.§1!0§))
                                 {
                                    if(_loc22_.§+L§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§74§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§ $8§ |= b2Body.§1!0§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§%I§;
                     }
                  }
               }
               (_loc17_ = §>"_§).§##q§ = false;
               _loc17_.dt = (1 - _loc13_) * param1.dt;
               _loc17_.§6$2§ = 1 / _loc17_.dt;
               _loc17_.§4$B§ = 1;
               _loc17_.§#8§ = param1.§#8§;
               _loc17_.§^$@§ = param1.§^$@§;
               _loc9_.§%$8§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§9l§)
               {
                  _loc2_ = _loc9_.§5#d§[_loc18_];
                  _loc2_.§ $8§ &= ~b2Body.§1!0§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§+L§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§6!1§();
                        _loc7_ = _loc2_.§#v§;
                        while(_loc7_)
                        {
                           _loc7_.§%#d§.§ $8§ &= ~b2Contact.§&"r§;
                           _loc7_ = _loc7_.§%I§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§<"$§)
               {
                  _loc11_ = _loc9_.§+c§[_loc18_];
                  _loc11_.§ $8§ &= ~(b2Contact.§&"r§ | b2Contact.§1!0§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§'"O§)
               {
                  (_loc8_ = _loc9_.§76§[_loc18_]).§"",§ = false;
                  _loc18_++;
               }
               this.§'"6§.§^B§();
            }
         }
      }
      
      b2internal function §!##§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§94§();
         var _loc3_:b2Body = param1.§=#O§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §<"n§;
         switch(param1.§"#W§)
         {
            case b2Joint.§%!-§:
               this.§4"B§.§,#m§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§]"u§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§?!c§();
               _loc13_ = _loc11_.§,!h§();
               this.§4"B§.§,#m§(_loc12_,_loc8_,_loc10_);
               this.§4"B§.§,#m§(_loc13_,_loc9_,_loc10_);
               this.§4"B§.§,#m§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§<#d§:
               this.§4"B§.§,#m§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§4"B§.§,#m§(_loc6_,_loc8_,_loc10_);
               }
               this.§4"B§.§,#m§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§4"B§.§,#m§(_loc7_,_loc9_,_loc10_);
               }
         }
      }
      
      b2internal function §0!S§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§"#W§)
         {
            case b2Shape.§!X§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§&Q§(param2,_loc4_.§@#U§);
               _loc6_ = _loc4_.§?!>§;
               _loc7_ = param2.R.col1;
               this.§4"B§.§+i§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§9##§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§,#T§();
               _loc11_ = _loc9_.§2!Z§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§&Q§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§4"B§.§^"D§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§-#a§:
               _loc13_ = param1 as b2EdgeShape;
               this.§4"B§.§,#m§(b2Math.§&Q§(param2,_loc13_.GetVertex1()),b2Math.§&Q§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

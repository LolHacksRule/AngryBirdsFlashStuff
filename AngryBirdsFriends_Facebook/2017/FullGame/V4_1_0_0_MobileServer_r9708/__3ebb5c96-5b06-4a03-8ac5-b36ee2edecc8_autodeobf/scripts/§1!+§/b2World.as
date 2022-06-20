package §1!+§
{
   import §%!9§.*;
   import §'#?§.b2Controller;
   import §'#?§.b2ControllerEdge;
   import §+#f§.*;
   import §3!U§.*;
   import §7"^§.*;
   import §9#K§.*;
   import §[#L§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      protected static var §8T§:b2Transform = new b2Transform();
      
      private static var §?#N§:b2Sweep = new b2Sweep();
      
      private static var §1n§:b2Sweep = new b2Sweep();
      
      private static var §5$4§:b2TimeStep = new b2TimeStep();
      
      private static var § "c§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §!#u§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §7q§:Boolean;
      
      private static var §2#+§:Boolean;
      
      public static const §!#[§:int = 1;
      
      public static const §4"g§:int = 2;
       
      
      private var §1!p§:Vector.<b2Body>;
      
      b2internal var §9"i§:int;
      
      b2internal var §5H§:b2ContactManager;
      
      private var § K§:b2ContactSolver;
      
      private var §;!D§:b2Island;
      
      b2internal var §4!a§:b2Body;
      
      protected var §'o§:b2Joint;
      
      b2internal var §2#d§:b2Contact;
      
      protected var §-!F§:int;
      
      b2internal var §6"b§:int;
      
      protected var §0"&§:int;
      
      protected var §-W§:b2Controller;
      
      private var §#r§:int;
      
      private var §0"$§:b2Vec2;
      
      private var §-!M§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §!!]§:b2DestructionListener;
      
      protected var §9#<§:b2DebugDraw;
      
      private var §%6§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§1!p§ = new Vector.<b2Body>();
         this.§5H§ = new b2ContactManager();
         this.§ K§ = new b2ContactSolver();
         this.§;!D§ = new b2Island();
         super();
         this.§!!]§ = null;
         this.§9#<§ = null;
         this.§4!a§ = null;
         this.§2#d§ = null;
         this.§'o§ = null;
         this.§-W§ = null;
         this.§-!F§ = 0;
         this.§6"b§ = 0;
         this.§0"&§ = 0;
         this.§#r§ = 0;
         §7q§ = true;
         §2#+§ = true;
         this.§-!M§ = param2;
         this.§0"$§ = param1;
         this.§%6§ = 0;
         this.§5H§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §4!w§(param1:b2DestructionListener) : void
      {
         this.§!!]§ = param1;
      }
      
      public function §^#M§(param1:b2ContactFilter) : void
      {
         this.§5H§.§4"J§ = param1;
      }
      
      public function §6"<§(param1:b2ContactListener) : void
      {
         this.§5H§.§2!@§ = param1;
      }
      
      public function §%#Q§(param1:b2DebugDraw) : void
      {
         this.§9#<§ = param1;
      }
      
      public function §-&§(param1:§'"J§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§'"J§ = this.§5H§.§,#n§;
         this.§5H§.§,#n§ = param1;
         var _loc3_:b2Body = this.§4!a§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§0!9§;
            while(_loc4_)
            {
               _loc4_.§-#T§ = param1.§;!C§(_loc2_.§8!z§(_loc4_.§-#T§),_loc4_);
               _loc4_ = _loc4_.§3!=§;
            }
            _loc3_ = _loc3_.§3!=§;
         }
      }
      
      public function §-X§() : void
      {
         this.§5H§.§,#n§.§-X§();
      }
      
      public function §@$§() : int
      {
         return this.§5H§.§,#n§.§@$§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§<!n§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§6T§ = null;
         _loc2_.§3!=§ = this.§4!a§;
         if(this.§4!a§)
         {
            this.§4!a§.§6T§ = _loc2_;
         }
         this.§4!a§ = _loc2_;
         ++this.§-!F§;
         return _loc2_;
      }
      
      public function DestroyBody(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§<!n§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§'o§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§+!e§;
            if(this.§!!]§)
            {
               this.§!!]§.§>"o§(_loc6_.joint);
            }
            this.§`"4§(_loc6_.joint);
         }
         var _loc3_:b2ControllerEdge = param1.§-W§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§%#D§;
            _loc7_.§=![§.§?"Q§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§2#d§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§+!e§;
            this.§5H§.§@#V§(_loc8_.§,#v§);
         }
         param1.§2#d§ = null;
         var _loc5_:b2Fixture = param1.§0!9§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§3!=§;
            if(this.§!!]§)
            {
               this.§!!]§.§4$%§(_loc9_);
            }
            _loc9_.§-!"§(this.§5H§.§,#n§);
            _loc9_.§@#V§();
         }
         param1.§0!9§ = null;
         param1.§=!D§ = 0;
         if(param1.§6T§)
         {
            param1.§6T§.§3!=§ = param1.§3!=§;
         }
         if(param1.§3!=§)
         {
            param1.§3!=§.§6T§ = param1.§6T§;
         }
         if(param1 == this.§4!a§)
         {
            this.§4!a§ = param1.§3!=§;
         }
         --this.§-!F§;
      }
      
      public function §6!K§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§@!7§(param1,null);
         _loc2_.§6T§ = null;
         _loc2_.§3!=§ = this.§'o§;
         if(this.§'o§)
         {
            this.§'o§.§6T§ = _loc2_;
         }
         this.§'o§ = _loc2_;
         ++this.§0"&§;
         _loc2_.§`#'§.joint = _loc2_;
         _loc2_.§`#'§.§-#J§ = _loc2_.§?s§;
         _loc2_.§`#'§.§+"`§ = null;
         _loc2_.§`#'§.§+!e§ = _loc2_.§!"2§.§'o§;
         if(_loc2_.§!"2§.§'o§)
         {
            _loc2_.§!"2§.§'o§.§+"`§ = _loc2_.§`#'§;
         }
         _loc2_.§!"2§.§'o§ = _loc2_.§`#'§;
         _loc2_.§4#>§.joint = _loc2_;
         _loc2_.§4#>§.§-#J§ = _loc2_.§!"2§;
         _loc2_.§4#>§.§+"`§ = null;
         _loc2_.§4#>§.§+!e§ = _loc2_.§?s§.§'o§;
         if(_loc2_.§?s§.§'o§)
         {
            _loc2_.§?s§.§'o§.§+"`§ = _loc2_.§4#>§;
         }
         _loc2_.§?s§.§'o§ = _loc2_.§4#>§;
         var _loc3_:b2Body = param1.§0%§;
         var _loc4_:b2Body = param1.§%"d§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§#"`§();
            while(_loc5_)
            {
               if(_loc5_.§-#J§ == _loc3_)
               {
                  _loc5_.§,#v§.§8#x§();
               }
               _loc5_ = _loc5_.§+!e§;
            }
         }
         return _loc2_;
      }
      
      public function §`"4§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§0!2§;
         if(param1.§6T§)
         {
            param1.§6T§.§3!=§ = param1.§3!=§;
         }
         if(param1.§3!=§)
         {
            param1.§3!=§.§6T§ = param1.§6T§;
         }
         if(param1 == this.§'o§)
         {
            this.§'o§ = param1.§3!=§;
         }
         var _loc3_:b2Body = param1.§!"2§;
         var _loc4_:b2Body = param1.§?s§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§`#'§.§+"`§)
         {
            param1.§`#'§.§+"`§.§+!e§ = param1.§`#'§.§+!e§;
         }
         if(param1.§`#'§.§+!e§)
         {
            param1.§`#'§.§+!e§.§+"`§ = param1.§`#'§.§+"`§;
         }
         if(param1.§`#'§ == _loc3_.§'o§)
         {
            _loc3_.§'o§ = param1.§`#'§.§+!e§;
         }
         param1.§`#'§.§+"`§ = null;
         param1.§`#'§.§+!e§ = null;
         if(param1.§4#>§.§+"`§)
         {
            param1.§4#>§.§+"`§.§+!e§ = param1.§4#>§.§+!e§;
         }
         if(param1.§4#>§.§+!e§)
         {
            param1.§4#>§.§+!e§.§+"`§ = param1.§4#>§.§+"`§;
         }
         if(param1.§4#>§ == _loc4_.§'o§)
         {
            _loc4_.§'o§ = param1.§4#>§.§+!e§;
         }
         param1.§4#>§.§+"`§ = null;
         param1.§4#>§.§+!e§ = null;
         b2Joint.§@#V§(param1,null);
         --this.§0"&§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§#"`§();
            while(_loc5_)
            {
               if(_loc5_.§-#J§ == _loc3_)
               {
                  _loc5_.§,#v§.§8#x§();
               }
               _loc5_ = _loc5_.§+!e§;
            }
         }
      }
      
      public function §41§(param1:b2Controller) : b2Controller
      {
         param1.§3!=§ = this.§-W§;
         param1.§6T§ = null;
         this.§-W§ = param1;
         param1.m_world = this;
         ++this.§#r§;
         return param1;
      }
      
      public function §=!U§(param1:b2Controller) : void
      {
         if(param1.§6T§)
         {
            param1.§6T§.§3!=§ = param1.§3!=§;
         }
         if(param1.§3!=§)
         {
            param1.§3!=§.§6T§ = param1.§6T§;
         }
         if(this.§-W§ == param1)
         {
            this.§-W§ = param1.§3!=§;
         }
         --this.§#r§;
      }
      
      public function §!"o§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§3!=§ = this.§-W§;
         param1.§6T§ = null;
         if(this.§-W§)
         {
            this.§-W§.§6T§ = param1;
         }
         this.§-W§ = param1;
         ++this.§#r§;
         param1.m_world = this;
         return param1;
      }
      
      public function §'#h§(param1:b2Controller) : void
      {
         param1.§;,§();
         if(param1.§3!=§)
         {
            param1.§3!=§.§6T§ = param1.§6T§;
         }
         if(param1.§6T§)
         {
            param1.§6T§.§3!=§ = param1.§3!=§;
         }
         if(param1 == this.§-W§)
         {
            this.§-W§ = param1.§3!=§;
         }
         --this.§#r§;
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         §7q§ = param1;
      }
      
      public function §!#S§(param1:Boolean) : void
      {
         §2#+§ = param1;
      }
      
      public function §1#5§() : int
      {
         return this.§-!F§;
      }
      
      public function §9# §() : int
      {
         return this.§0"&§;
      }
      
      public function §;#h§() : int
      {
         return this.§6"b§;
      }
      
      public function SetGravity(param1:b2Vec2) : void
      {
         this.§0"$§ = param1;
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.§0"$§;
      }
      
      public function §-V§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         if(this.§9"i§ & §!#[§)
         {
            this.§5H§.§'#q§();
            this.§9"i§ &= ~§!#[§;
         }
         this.§9"i§ |= §4"g§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).dt = param1;
         _loc4_.§'#Y§ = param2;
         _loc4_.§0!K§ = param3;
         if(param1 > 0)
         {
            _loc4_.§"`§ = 1 / param1;
         }
         else
         {
            _loc4_.§"`§ = 0;
         }
         _loc4_.§##y§ = this.§%6§ * param1;
         _loc4_.§,!D§ = §7q§;
         this.§5H§.§]"P§();
         if(_loc4_.dt > 0)
         {
            this.§78§(_loc4_);
         }
         if(§2#+§ && _loc4_.dt > 0)
         {
            this.§,!8§(_loc4_);
         }
         if(_loc4_.dt > 0)
         {
            this.§%6§ = _loc4_.§"`§;
         }
         this.§9"i§ &= ~§4"g§;
      }
      
      public function ClearForces() : void
      {
         var _loc1_:b2Body = this.§4!a§;
         while(_loc1_)
         {
            _loc1_.§<$"§.§2!9§();
            _loc1_.§1$#§ = 0;
            _loc1_ = _loc1_.§3!=§;
         }
      }
      
      public function §,#G§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§'"J§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§9#<§ == null)
         {
            return;
         }
         this.§9#<§.§7#w§.graphics.clear();
         var _loc1_:uint = this.§9#<§.§+"S§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§!N§)
         {
            _loc3_ = this.§4!a§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§8#u§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§ #2§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§%"+§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§ #2§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§%"+§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§ #2§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§ #2§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§ #2§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§3!=§;
               }
               _loc3_ = _loc3_.§3!=§;
            }
         }
         if(_loc1_ & b2DebugDraw.§[#<§)
         {
            _loc6_ = this.§'o§;
            while(_loc6_)
            {
               this.§4E§(_loc6_);
               _loc6_ = _loc6_.§3!=§;
            }
         }
         if(_loc1_ & b2DebugDraw.§2s§)
         {
            _loc16_ = this.§-W§;
            while(_loc16_)
            {
               _loc16_.§>!b§(this.§9#<§);
               _loc16_ = _loc16_.§3!=§;
            }
         }
         if(_loc1_ & b2DebugDraw.§0#+§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§5H§.§2#d§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§]"v§();
               _loc19_ = _loc17_.§4!i§();
               _loc20_ = _loc18_.§##g§().§&#g§();
               _loc21_ = _loc19_.§##g§().§&#g§();
               this.§9#<§.§?"3§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§,=§();
            }
         }
         if(_loc1_ & b2DebugDraw.§[!5§)
         {
            _loc7_ = this.§5H§.§,#n§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§4!a§;
            while(_loc3_)
            {
               if(_loc3_.§8#u§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§8!z§(_loc4_.§-#T§);
                     _loc14_[0].Set(_loc22_.§""x§.x,_loc22_.§""x§.y);
                     _loc14_[1].Set(_loc22_.§%"i§.x,_loc22_.§""x§.y);
                     _loc14_[2].Set(_loc22_.§%"i§.x,_loc22_.§%"i§.y);
                     _loc14_[3].Set(_loc22_.§""x§.x,_loc22_.§%"i§.y);
                     this.§9#<§.§`6§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§,=§();
                  }
               }
               _loc3_ = _loc3_.§,=§();
            }
         }
         if(_loc1_ & b2DebugDraw.§?#W§)
         {
            _loc3_ = this.§4!a§;
            while(_loc3_)
            {
               (_loc11_ = §8T§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§9#<§.§-#2§(_loc11_);
               _loc3_ = _loc3_.§3!=§;
            }
         }
      }
      
      public function §6!l§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§'"J§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§5H§.§,#n§;
         broadPhase.§7"9§(WorldQueryWrapper,aabb);
      }
      
      public function §2_§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§'"J§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§+$&§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().GetTransform()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§4"<§();
         }
         broadPhase = this.§5H§.§,#n§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§7"9§(WorldQueryWrapper,aabb);
      }
      
      public function §8"%§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§'"J§ = null;
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
         broadPhase = this.§5H§.§,#n§;
         var aabb:b2AABB = new b2AABB();
         aabb.§""x§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§%"i§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§7"9§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§'"J§ = null;
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
            return param1.§?$$§;
         };
         broadPhase = this.§5H§.§,#n§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §&!O§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function § !v§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §[!e§() : b2Body
      {
         return this.§4!a§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§'o§;
      }
      
      public function §#"`§() : b2Contact
      {
         return this.§2#d§;
      }
      
      public function §<!n§() : Boolean
      {
         return (this.§9"i§ & §4"g§) > 0;
      }
      
      b2internal function §78§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§-W§;
         while(_loc3_)
         {
            _loc3_.Step(param1);
            _loc3_ = _loc3_.§3!=§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§;!D§).§6#Y§(this.§-!F§,this.§6"b§,this.§0"&§,null,this.§5H§.§2!@§,this.§ K§);
         _loc2_ = this.§4!a§;
         while(_loc2_)
         {
            _loc2_.§9"i§ &= ~b2Body.§>?§;
            _loc2_ = _loc2_.§3!=§;
         }
         var _loc5_:b2Contact = this.§2#d§;
         while(_loc5_)
         {
            _loc5_.§9"i§ &= ~b2Contact.§>?§;
            _loc5_ = _loc5_.§3!=§;
         }
         var _loc6_:b2Joint = this.§'o§;
         while(_loc6_)
         {
            _loc6_.§4!h§ = false;
            _loc6_ = _loc6_.§3!=§;
         }
         var _loc7_:int = this.§-!F§;
         var _loc8_:Vector.<b2Body> = this.§1!p§;
         var _loc9_:b2Body = this.§4!a§;
         while(_loc9_)
         {
            if(!(_loc9_.§9"i§ & b2Body.§>?§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§8#u§() == false))
               {
                  if(_loc9_.§%"+§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§;,§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§9"i§ |= b2Body.§>?§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§=$<§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§%"+§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§2#d§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§,#v§.§9"i§ & b2Contact.§>?§))
                              {
                                 if(!(_loc13_.§,#v§.§1!`§() == true || _loc13_.§,#v§.§&#%§() == false || _loc13_.§,#v§.§1$2§() == false))
                                 {
                                    _loc4_.§4#9§(_loc13_.§,#v§);
                                    _loc13_.§,#v§.§9"i§ |= b2Contact.§>?§;
                                    if(!((_loc12_ = _loc13_.§-#J§).§9"i§ & b2Body.§>?§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§9"i§ |= b2Body.§>?§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§+!e§;
                           }
                           _loc14_ = _loc2_.§'o§;
                           while(_loc14_)
                           {
                              if(_loc14_.joint.§4!h§ != true)
                              {
                                 if((_loc12_ = _loc14_.§-#J§).§8#u§() != false)
                                 {
                                    _loc4_.§^#a§(_loc14_.joint);
                                    _loc14_.joint.§4!h§ = true;
                                    if(!(_loc12_.§9"i§ & b2Body.§>?§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§9"i§ |= b2Body.§>?§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§+!e§;
                           }
                        }
                     }
                     _loc4_.§78§(param1,this.§0"$§,this.§-!M§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§-!F§)
                     {
                        _loc2_ = _loc4_.§&#i§[_loc11_];
                        if(_loc2_.§%"+§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§9"i§ &= ~b2Body.§>?§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§3!=§;
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
         _loc2_ = this.§4!a§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§8#u§() == false))
            {
               if(_loc2_.§%"+§() != b2Body.b2_staticBody)
               {
                  _loc2_.§+!"§();
               }
            }
            _loc2_ = _loc2_.§3!=§;
         }
         this.§5H§.§'#q§();
      }
      
      b2internal function §,!8§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§;!D§).§6#Y§(this.§-!F§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§5H§.§2!@§,this.§ K§);
         var _loc10_:Vector.<b2Body> = § "c§;
         _loc2_ = this.§4!a§;
         while(_loc2_)
         {
            _loc2_.§9"i§ &= ~b2Body.§>?§;
            _loc2_.m_sweep.§0#T§ = 0;
            _loc2_ = _loc2_.§3!=§;
         }
         _loc11_ = this.§2#d§;
         while(_loc11_)
         {
            _loc11_.§9"i§ &= ~(b2Contact.§>U§ | b2Contact.§>?§);
            _loc11_.§>!F§ = 1;
            _loc11_ = _loc11_.§3!=§;
         }
         _loc8_ = this.§'o§;
         while(_loc8_)
         {
            _loc8_.§4!h§ = false;
            _loc8_ = _loc8_.§3!=§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§2#d§;
            while(_loc11_)
            {
               if(!(_loc11_.§1!`§() == true || _loc11_.§&#%§() == false || _loc11_.§4!2§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§9"i§ & b2Contact.§>U§)
                  {
                     _loc19_ = _loc11_.§>!F§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§'!9§;
                     _loc4_ = _loc11_.§%#h§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§%"+§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§%"+§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr594:
                        _loc11_ = _loc11_.§3!=§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§0#T§;
                     if(_loc5_.m_sweep.§0#T§ < _loc6_.m_sweep.§0#T§)
                     {
                        _loc20_ = _loc6_.m_sweep.§0#T§;
                        _loc5_.m_sweep.§""V§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§0#T§ < _loc5_.m_sweep.§0#T§)
                     {
                        _loc20_ = _loc5_.m_sweep.§0#T§;
                        _loc6_.m_sweep.§""V§(_loc20_);
                     }
                     _loc19_ = _loc11_.§@t§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§>!F§ = _loc19_;
                     _loc11_.§9"i§ |= b2Contact.§>U§;
                     §§goto(addr594);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr594);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§'!9§;
            _loc4_ = _loc12_.§%#h§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §?#N§.Set(_loc5_.m_sweep);
            §1n§.Set(_loc6_.m_sweep);
            _loc5_.§""V§(_loc13_);
            _loc6_.§""V§(_loc13_);
            _loc12_.§#!2§(this.§5H§.§2!@§);
            _loc12_.§9"i§ &= ~b2Contact.§>U§;
            if(_loc12_.§1!`§() == true || _loc12_.§&#%§() == false)
            {
               _loc5_.m_sweep.Set(§?#N§);
               _loc6_.m_sweep.Set(§1n§);
               _loc5_.§6!=§();
               _loc6_.§6!=§();
            }
            else if(_loc12_.§1$2§() != false)
            {
               if((_loc14_ = _loc5_).§%"+§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§;,§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§9"i§ |= b2Body.§>?§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§=$<§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§%"+§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§2#d§;
                     while(_loc7_)
                     {
                        if(_loc9_.§6"b§ == _loc9_.§9!K§)
                        {
                           break;
                        }
                        if(!(_loc7_.§,#v§.§9"i§ & b2Contact.§>?§))
                        {
                           if(!(_loc7_.§,#v§.§1!`§() == true || _loc7_.§,#v§.§&#%§() == false || _loc7_.§,#v§.§1$2§() == false))
                           {
                              _loc9_.§4#9§(_loc7_.§,#v§);
                              _loc7_.§,#v§.§9"i§ |= b2Contact.§>?§;
                              if(!((_loc22_ = _loc7_.§-#J§).§9"i§ & b2Body.§>?§))
                              {
                                 if(_loc22_.§%"+§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§""V§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§9"i§ |= b2Body.§>?§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§+!e§;
                     }
                     _loc21_ = _loc2_.§'o§;
                     while(_loc21_)
                     {
                        if(_loc9_.§0"&§ != _loc9_.§^$§)
                        {
                           if(_loc21_.joint.§4!h§ != true)
                           {
                              if((_loc22_ = _loc21_.§-#J§).§8#u§() != false)
                              {
                                 _loc9_.§^#a§(_loc21_.joint);
                                 _loc21_.joint.§4!h§ = true;
                                 if(!(_loc22_.§9"i§ & b2Body.§>?§))
                                 {
                                    if(_loc22_.§%"+§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§""V§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§9"i§ |= b2Body.§>?§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§+!e§;
                     }
                  }
               }
               (_loc17_ = §5$4§).§,!D§ = false;
               _loc17_.dt = (1 - _loc13_) * param1.dt;
               _loc17_.§"`§ = 1 / _loc17_.dt;
               _loc17_.§##y§ = 1;
               _loc17_.§'#Y§ = param1.§'#Y§;
               _loc17_.§0!K§ = param1.§0!K§;
               _loc9_.§,!8§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§-!F§)
               {
                  _loc2_ = _loc9_.§&#i§[_loc18_];
                  _loc2_.§9"i§ &= ~b2Body.§>?§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§%"+§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§+!"§();
                        _loc7_ = _loc2_.§2#d§;
                        while(_loc7_)
                        {
                           _loc7_.§,#v§.§9"i§ &= ~b2Contact.§>U§;
                           _loc7_ = _loc7_.§+!e§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§6"b§)
               {
                  _loc11_ = _loc9_.§#!&§[_loc18_];
                  _loc11_.§9"i§ &= ~(b2Contact.§>U§ | b2Contact.§>?§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§0"&§)
               {
                  (_loc8_ = _loc9_.§9$-§[_loc18_]).§4!h§ = false;
                  _loc18_++;
               }
               this.§5H§.§'#q§();
            }
         }
      }
      
      b2internal function §4E§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§""Z§();
         var _loc3_:b2Body = param1.§+"2§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §!#u§;
         switch(param1.§9!a§)
         {
            case b2Joint.§;2§:
               this.§9#<§.§?"3§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§-$6§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§59§();
               _loc13_ = _loc11_.§%!v§();
               this.§9#<§.§?"3§(_loc12_,_loc8_,_loc10_);
               this.§9#<§.§?"3§(_loc13_,_loc9_,_loc10_);
               this.§9#<§.§?"3§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§]!o§:
               this.§9#<§.§?"3§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§9#<§.§?"3§(_loc6_,_loc8_,_loc10_);
               }
               this.§9#<§.§?"3§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§9#<§.§?"3§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function § #2§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§9!a§)
         {
            case b2Shape.§ j§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§^#j§(param2,_loc4_.§6"a§);
               _loc6_ = _loc4_.§[1§;
               _loc7_ = param2.R.col1;
               this.§9#<§.§1H§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§"!<§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§-!B§();
               _loc11_ = _loc9_.§""l§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§^#j§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§9#<§.§'+§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§%$,§:
               _loc13_ = param1 as b2EdgeShape;
               this.§9#<§.§?"3§(b2Math.§^#j§(param2,_loc13_.GetVertex1()),b2Math.§^#j§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

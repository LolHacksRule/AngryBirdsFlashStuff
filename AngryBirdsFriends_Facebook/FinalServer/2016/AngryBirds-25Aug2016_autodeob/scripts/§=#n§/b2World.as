package §=#n§
{
   import §0H§.*;
   import §0m§.*;
   import §1#?§.b2Controller;
   import §1#?§.b2ControllerEdge;
   import §3"q§.*;
   import §;"R§.*;
   import §?!c§.*;
   import §@!O§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §%#w§:b2Transform = new b2Transform();
      
      private static var §<m§:b2Sweep = new b2Sweep();
      
      private static var §+"7§:b2Sweep = new b2Sweep();
      
      private static var §,#+§:b2TimeStep = new b2TimeStep();
      
      private static var §6#§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §2"G§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §##G§:Boolean;
      
      private static var §^>§:Boolean;
      
      public static const §2"L§:int = 1;
      
      public static const §,#5§:int = 2;
       
      
      private var §%_§:Vector.<b2Body>;
      
      b2internal var §#!<§:int;
      
      b2internal var §?#L§:b2ContactManager;
      
      private var §=Z§:b2ContactSolver;
      
      private var §==§:b2Island;
      
      b2internal var §,"#§:b2Body;
      
      private var §'!X§:b2Joint;
      
      b2internal var §<"?§:b2Contact;
      
      private var §0$"§:int;
      
      b2internal var §;"q§:int;
      
      private var § $9§:int;
      
      private var §@#l§:b2Controller;
      
      private var §@"=§:int;
      
      private var §>!@§:b2Vec2;
      
      private var §=!g§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §8$2§:b2DestructionListener;
      
      private var §""D§:b2DebugDraw;
      
      private var § #k§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§%_§ = new Vector.<b2Body>();
         this.§?#L§ = new b2ContactManager();
         this.§=Z§ = new b2ContactSolver();
         this.§==§ = new b2Island();
         super();
         this.§8$2§ = null;
         this.§""D§ = null;
         this.§,"#§ = null;
         this.§<"?§ = null;
         this.§'!X§ = null;
         this.§@#l§ = null;
         this.§0$"§ = 0;
         this.§;"q§ = 0;
         this.§ $9§ = 0;
         this.§@"=§ = 0;
         §##G§ = true;
         §^>§ = true;
         this.§=!g§ = param2;
         this.§>!@§ = param1;
         this.§ #k§ = 0;
         this.§?#L§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §^!&§(param1:b2DestructionListener) : void
      {
         this.§8$2§ = param1;
      }
      
      public function §3"4§(param1:b2ContactFilter) : void
      {
         this.§?#L§.§,"D§ = param1;
      }
      
      public function §@"I§(param1:b2ContactListener) : void
      {
         this.§?#L§.§8!N§ = param1;
      }
      
      public function §"!K§(param1:b2DebugDraw) : void
      {
         this.§""D§ = param1;
      }
      
      public function §##k§(param1:§2"E§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§2"E§ = this.§?#L§.§2!6§;
         this.§?#L§.§2!6§ = param1;
         var _loc3_:b2Body = this.§,"#§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§]b§;
            while(_loc4_)
            {
               _loc4_.§&!@§ = param1.§=&§(_loc2_.§8"2§(_loc4_.§&!@§),_loc4_);
               _loc4_ = _loc4_.§@##§;
            }
            _loc3_ = _loc3_.§@##§;
         }
      }
      
      public function §0!v§() : void
      {
         this.§?#L§.§2!6§.§0!v§();
      }
      
      public function §+#^§() : int
      {
         return this.§?#L§.§2!6§.§+#^§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§ !4§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§+"j§ = null;
         _loc2_.§@##§ = this.§,"#§;
         if(this.§,"#§)
         {
            this.§,"#§.§+"j§ = _loc2_;
         }
         this.§,"#§ = _loc2_;
         ++this.§0$"§;
         return _loc2_;
      }
      
      public function DestroyBody(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§ !4§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§'!X§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§0$0§;
            if(this.§8$2§)
            {
               this.§8$2§.§&"V§(_loc6_.joint);
            }
            this.§!#n§(_loc6_.joint);
         }
         var _loc3_:b2ControllerEdge = param1.§@#l§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§!!O§;
            _loc7_.§#0§.§8?§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§<"?§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§0$0§;
            this.§?#L§.§@!]§(_loc8_.§<#L§);
         }
         param1.§<"?§ = null;
         var _loc5_:b2Fixture = param1.§]b§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§@##§;
            if(this.§8$2§)
            {
               this.§8$2§.§;#5§(_loc9_);
            }
            _loc9_.§'!g§(this.§?#L§.§2!6§);
            _loc9_.§@!]§();
         }
         param1.§]b§ = null;
         param1.§1,§ = 0;
         if(param1.§+"j§)
         {
            param1.§+"j§.§@##§ = param1.§@##§;
         }
         if(param1.§@##§)
         {
            param1.§@##§.§+"j§ = param1.§+"j§;
         }
         if(param1 == this.§,"#§)
         {
            this.§,"#§ = param1.§@##§;
         }
         --this.§0$"§;
      }
      
      public function §'#J§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§'#h§(param1,null);
         _loc2_.§+"j§ = null;
         _loc2_.§@##§ = this.§'!X§;
         if(this.§'!X§)
         {
            this.§'!X§.§+"j§ = _loc2_;
         }
         this.§'!X§ = _loc2_;
         ++this.§ $9§;
         _loc2_.§'#a§.joint = _loc2_;
         _loc2_.§'#a§.§5W§ = _loc2_.§%;§;
         _loc2_.§'#a§.§7#a§ = null;
         _loc2_.§'#a§.§0$0§ = _loc2_.§;"Q§.§'!X§;
         if(_loc2_.§;"Q§.§'!X§)
         {
            _loc2_.§;"Q§.§'!X§.§7#a§ = _loc2_.§'#a§;
         }
         _loc2_.§;"Q§.§'!X§ = _loc2_.§'#a§;
         _loc2_.§;#&§.joint = _loc2_;
         _loc2_.§;#&§.§5W§ = _loc2_.§;"Q§;
         _loc2_.§;#&§.§7#a§ = null;
         _loc2_.§;#&§.§0$0§ = _loc2_.§%;§.§'!X§;
         if(_loc2_.§%;§.§'!X§)
         {
            _loc2_.§%;§.§'!X§.§7#a§ = _loc2_.§;#&§;
         }
         _loc2_.§%;§.§'!X§ = _loc2_.§;#&§;
         var _loc3_:b2Body = param1.§9"Z§;
         var _loc4_:b2Body = param1.§'!Y§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§;Y§();
            while(_loc5_)
            {
               if(_loc5_.§5W§ == _loc3_)
               {
                  _loc5_.§<#L§.§!$,§();
               }
               _loc5_ = _loc5_.§0$0§;
            }
         }
         return _loc2_;
      }
      
      public function §!#n§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§5#&§;
         if(param1.§+"j§)
         {
            param1.§+"j§.§@##§ = param1.§@##§;
         }
         if(param1.§@##§)
         {
            param1.§@##§.§+"j§ = param1.§+"j§;
         }
         if(param1 == this.§'!X§)
         {
            this.§'!X§ = param1.§@##§;
         }
         var _loc3_:b2Body = param1.§;"Q§;
         var _loc4_:b2Body = param1.§%;§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§'#a§.§7#a§)
         {
            param1.§'#a§.§7#a§.§0$0§ = param1.§'#a§.§0$0§;
         }
         if(param1.§'#a§.§0$0§)
         {
            param1.§'#a§.§0$0§.§7#a§ = param1.§'#a§.§7#a§;
         }
         if(param1.§'#a§ == _loc3_.§'!X§)
         {
            _loc3_.§'!X§ = param1.§'#a§.§0$0§;
         }
         param1.§'#a§.§7#a§ = null;
         param1.§'#a§.§0$0§ = null;
         if(param1.§;#&§.§7#a§)
         {
            param1.§;#&§.§7#a§.§0$0§ = param1.§;#&§.§0$0§;
         }
         if(param1.§;#&§.§0$0§)
         {
            param1.§;#&§.§0$0§.§7#a§ = param1.§;#&§.§7#a§;
         }
         if(param1.§;#&§ == _loc4_.§'!X§)
         {
            _loc4_.§'!X§ = param1.§;#&§.§0$0§;
         }
         param1.§;#&§.§7#a§ = null;
         param1.§;#&§.§0$0§ = null;
         b2Joint.§@!]§(param1,null);
         --this.§ $9§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§;Y§();
            while(_loc5_)
            {
               if(_loc5_.§5W§ == _loc3_)
               {
                  _loc5_.§<#L§.§!$,§();
               }
               _loc5_ = _loc5_.§0$0§;
            }
         }
      }
      
      public function §4!0§(param1:b2Controller) : b2Controller
      {
         param1.§@##§ = this.§@#l§;
         param1.§+"j§ = null;
         this.§@#l§ = param1;
         param1.m_world = this;
         ++this.§@"=§;
         return param1;
      }
      
      public function §?# §(param1:b2Controller) : void
      {
         if(param1.§+"j§)
         {
            param1.§+"j§.§@##§ = param1.§@##§;
         }
         if(param1.§@##§)
         {
            param1.§@##§.§+"j§ = param1.§+"j§;
         }
         if(this.§@#l§ == param1)
         {
            this.§@#l§ = param1.§@##§;
         }
         --this.§@"=§;
      }
      
      public function §^"=§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§@##§ = this.§@#l§;
         param1.§+"j§ = null;
         if(this.§@#l§)
         {
            this.§@#l§.§+"j§ = param1;
         }
         this.§@#l§ = param1;
         ++this.§@"=§;
         param1.m_world = this;
         return param1;
      }
      
      public function §;$5§(param1:b2Controller) : void
      {
         param1.§%#t§();
         if(param1.§@##§)
         {
            param1.§@##§.§+"j§ = param1.§+"j§;
         }
         if(param1.§+"j§)
         {
            param1.§+"j§.§@##§ = param1.§@##§;
         }
         if(param1 == this.§@#l§)
         {
            this.§@#l§ = param1.§@##§;
         }
         --this.§@"=§;
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         §##G§ = param1;
      }
      
      public function §;#f§(param1:Boolean) : void
      {
         §^>§ = param1;
      }
      
      public function §9k§() : int
      {
         return this.§0$"§;
      }
      
      public function §?$3§() : int
      {
         return this.§ $9§;
      }
      
      public function §-"-§() : int
      {
         return this.§;"q§;
      }
      
      public function SetGravity(param1:b2Vec2) : void
      {
         this.§>!@§ = param1;
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.§>!@§;
      }
      
      public function §`"2§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         if(this.§#!<§ & §2"L§)
         {
            this.§?#L§.§=§();
            this.§#!<§ &= ~§2"L§;
         }
         this.§#!<§ |= §,#5§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).dt = param1;
         _loc4_.§=W§ = param2;
         _loc4_.§ "^§ = param3;
         if(param1 > 0)
         {
            _loc4_.§^$+§ = 1 / param1;
         }
         else
         {
            _loc4_.§^$+§ = 0;
         }
         _loc4_.§'"D§ = this.§ #k§ * param1;
         _loc4_.§`A§ = §##G§;
         this.§?#L§.§5#,§();
         if(_loc4_.dt > 0)
         {
            this.§+"F§(_loc4_);
         }
         if(§^>§ && _loc4_.dt > 0)
         {
            this.§ !J§(_loc4_);
         }
         if(_loc4_.dt > 0)
         {
            this.§ #k§ = _loc4_.§^$+§;
         }
         this.§#!<§ &= ~§,#5§;
      }
      
      public function ClearForces() : void
      {
         var _loc1_:b2Body = this.§,"#§;
         while(_loc1_)
         {
            _loc1_.§&3§.§,[§();
            _loc1_.§4",§ = 0;
            _loc1_ = _loc1_.§@##§;
         }
      }
      
      public function §!!r§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§2"E§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§""D§ == null)
         {
            return;
         }
         this.§""D§.§"!F§.graphics.clear();
         var _loc1_:uint = this.§""D§.§&#y§();
         new b2Vec2();
         new b2Vec2();
         new b2Vec2();
         new b2AABB();
         new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§-#K§)
         {
            _loc3_ = this.§,"#§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§[G§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§&!Z§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§ "c§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§&!Z§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§ "c§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§&!Z§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§&!Z§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§&!Z§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§@##§;
               }
               _loc3_ = _loc3_.§@##§;
            }
         }
         if(_loc1_ & b2DebugDraw.§1$+§)
         {
            _loc6_ = this.§'!X§;
            while(_loc6_)
            {
               this.§ "t§(_loc6_);
               _loc6_ = _loc6_.§@##§;
            }
         }
         if(_loc1_ & b2DebugDraw.§!"&§)
         {
            _loc16_ = this.§@#l§;
            while(_loc16_)
            {
               _loc16_.§%c§(this.§""D§);
               _loc16_ = _loc16_.§@##§;
            }
         }
         if(_loc1_ & b2DebugDraw.§%#]§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§?#L§.§<"?§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§%$-§();
               _loc19_ = _loc17_.§true§();
               _loc20_ = _loc18_.§8">§().§+H§();
               _loc21_ = _loc19_.§8">§().§+H§();
               this.§""D§.§%#A§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§ !V§();
            }
         }
         if(_loc1_ & b2DebugDraw.§?N§)
         {
            _loc7_ = this.§?#L§.§2!6§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§,"#§;
            while(_loc3_)
            {
               if(_loc3_.§[G§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§8"2§(_loc4_.§&!@§);
                     _loc14_[0].Set(_loc22_.§6G§.x,_loc22_.§6G§.y);
                     _loc14_[1].Set(_loc22_.§%G§.x,_loc22_.§6G§.y);
                     _loc14_[2].Set(_loc22_.§%G§.x,_loc22_.§%G§.y);
                     _loc14_[3].Set(_loc22_.§6G§.x,_loc22_.§%G§.y);
                     this.§""D§.§-"B§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§ !V§();
                  }
               }
               _loc3_ = _loc3_.§ !V§();
            }
         }
         if(_loc1_ & b2DebugDraw.§!!s§)
         {
            _loc3_ = this.§,"#§;
            while(_loc3_)
            {
               (_loc11_ = §%#w§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.§""D§.§@"5§(_loc11_);
               _loc3_ = _loc3_.§@##§;
            }
         }
      }
      
      public function §#!0§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§2"E§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§?#L§.§2!6§;
         broadPhase.§?!F§(WorldQueryWrapper,aabb);
      }
      
      public function §["_§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§2"E§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§4"t§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().GetTransform()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§3!3§();
         }
         broadPhase = this.§?#L§.§2!6§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§?!F§(WorldQueryWrapper,aabb);
      }
      
      public function §3!`§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§2"E§ = null;
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
         broadPhase = this.§?#L§.§2!6§;
         var aabb:b2AABB = new b2AABB();
         aabb.§6G§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§%G§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§?!F§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§2"E§ = null;
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
            var _loc4_:b2Fixture;
            if((_loc4_ = _loc3_ as b2Fixture).RayCast(output,param1))
            {
               _loc6_ = output.fraction;
               _loc7_ = new b2Vec2((1 - _loc6_) * point1.x + _loc6_ * point2.x,(1 - _loc6_) * point1.y + _loc6_ * point2.y);
               return callback(_loc4_,_loc7_,output.normal,_loc6_);
            }
            return param1.§^!s§;
         };
         broadPhase = this.§?#L§.§2!6§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §5"5§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §!"u§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §else §() : b2Body
      {
         return this.§,"#§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§'!X§;
      }
      
      public function §;Y§() : b2Contact
      {
         return this.§<"?§;
      }
      
      public function § !4§() : Boolean
      {
         return (this.§#!<§ & §,#5§) > 0;
      }
      
      b2internal function §+"F§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§@#l§;
         while(_loc3_)
         {
            _loc3_.Step(param1);
            _loc3_ = _loc3_.§@##§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§==§).§1[§(this.§0$"§,this.§;"q§,this.§ $9§,null,this.§?#L§.§8!N§,this.§=Z§);
         _loc2_ = this.§,"#§;
         while(_loc2_)
         {
            _loc2_.§#!<§ &= ~b2Body.§`#W§;
            _loc2_ = _loc2_.§@##§;
         }
         var _loc5_:b2Contact = this.§<"?§;
         while(_loc5_)
         {
            _loc5_.§#!<§ &= ~b2Contact.§`#W§;
            _loc5_ = _loc5_.§@##§;
         }
         var _loc6_:b2Joint = this.§'!X§;
         while(_loc6_)
         {
            _loc6_.§<!2§ = false;
            _loc6_ = _loc6_.§@##§;
         }
         int(this.§0$"§);
         var _loc8_:Vector.<b2Body> = this.§%_§;
         var _loc9_:b2Body = this.§,"#§;
         while(_loc9_)
         {
            if(!(_loc9_.§#!<§ & b2Body.§`#W§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§[G§() == false))
               {
                  if(_loc9_.§ "c§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§%#t§();
                     _loc10_ = 0;
                     _loc8_[_loc10_++] = _loc9_;
                     _loc9_.§#!<§ |= b2Body.§`#W§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§@n§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§ "c§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§<"?§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§<#L§.§#!<§ & b2Contact.§`#W§))
                              {
                                 if(!(_loc13_.§<#L§.§@"G§() == true || _loc13_.§<#L§.§<!y§() == false || _loc13_.§<#L§.§!"m§() == false))
                                 {
                                    _loc4_.§8"?§(_loc13_.§<#L§);
                                    _loc13_.§<#L§.§#!<§ |= b2Contact.§`#W§;
                                    if(!((_loc12_ = _loc13_.§5W§).§#!<§ & b2Body.§`#W§))
                                    {
                                       _loc8_[_loc10_++] = _loc12_;
                                       _loc12_.§#!<§ |= b2Body.§`#W§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§0$0§;
                           }
                           _loc14_ = _loc2_.§'!X§;
                           while(_loc14_)
                           {
                              if(_loc14_.joint.§<!2§ != true)
                              {
                                 if((_loc12_ = _loc14_.§5W§).§[G§() != false)
                                 {
                                    _loc4_.§`#M§(_loc14_.joint);
                                    _loc14_.joint.§<!2§ = true;
                                    if(!(_loc12_.§#!<§ & b2Body.§`#W§))
                                    {
                                       _loc8_[_loc10_++] = _loc12_;
                                       _loc12_.§#!<§ |= b2Body.§`#W§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§0$0§;
                           }
                        }
                     }
                     _loc4_.§+"F§(param1,this.§>!@§,this.§=!g§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§0$"§)
                     {
                        _loc2_ = _loc4_.§+"#§[_loc11_];
                        if(_loc2_.§ "c§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§#!<§ &= ~b2Body.§`#W§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§@##§;
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
         _loc2_ = this.§,"#§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§[G§() == false))
            {
               if(_loc2_.§ "c§() != b2Body.b2_staticBody)
               {
                  _loc2_.§;!g§();
               }
            }
            _loc2_ = _loc2_.§@##§;
         }
         this.§?#L§.§=§();
      }
      
      b2internal function § !J§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§==§).§1[§(this.§0$"§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§?#L§.§8!N§,this.§=Z§);
         var _loc10_:Vector.<b2Body> = §6#§;
         _loc2_ = this.§,"#§;
         while(_loc2_)
         {
            _loc2_.§#!<§ &= ~b2Body.§`#W§;
            _loc2_.m_sweep.§"#z§ = 0;
            _loc2_ = _loc2_.§@##§;
         }
         _loc11_ = this.§<"?§;
         while(_loc11_)
         {
            _loc11_.§#!<§ &= ~(b2Contact.§35§ | b2Contact.§`#W§);
            _loc11_.§=#y§ = 1;
            _loc11_ = _loc11_.§@##§;
         }
         _loc8_ = this.§'!X§;
         while(_loc8_)
         {
            _loc8_.§<!2§ = false;
            _loc8_ = _loc8_.§@##§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§<"?§;
            while(_loc11_)
            {
               if(!(_loc11_.§@"G§() == true || _loc11_.§<!y§() == false || _loc11_.§,#&§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§#!<§ & b2Contact.§35§)
                  {
                     _loc19_ = _loc11_.§=#y§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§!!u§;
                     _loc4_ = _loc11_.§?!A§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§ "c§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§ "c§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr597:
                        _loc11_ = _loc11_.§@##§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§"#z§;
                     if(_loc5_.m_sweep.§"#z§ < _loc6_.m_sweep.§"#z§)
                     {
                        _loc20_ = _loc6_.m_sweep.§"#z§;
                        _loc5_.m_sweep.§8b§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§"#z§ < _loc5_.m_sweep.§"#z§)
                     {
                        _loc20_ = _loc5_.m_sweep.§"#z§;
                        _loc6_.m_sweep.§8b§(_loc20_);
                     }
                     _loc19_ = _loc11_.§2"&§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§=#y§ = _loc19_;
                     _loc11_.§#!<§ |= b2Contact.§35§;
                     §§goto(addr597);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr597);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§!!u§;
            _loc4_ = _loc12_.§?!A§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §<m§.Set(_loc5_.m_sweep);
            §+"7§.Set(_loc6_.m_sweep);
            _loc5_.§8b§(_loc13_);
            _loc6_.§8b§(_loc13_);
            _loc12_.§+d§(this.§?#L§.§8!N§);
            _loc12_.§#!<§ &= ~b2Contact.§35§;
            if(_loc12_.§@"G§() == true || _loc12_.§<!y§() == false)
            {
               _loc5_.m_sweep.Set(§<m§);
               _loc6_.m_sweep.Set(§+"7§);
               _loc5_.§#!i§();
               _loc6_.§#!i§();
            }
            else if(_loc12_.§!"m§() != false)
            {
               if((_loc14_ = _loc5_).§ "c§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§%#t§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§#!<§ |= b2Body.§`#W§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§@n§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§ "c§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§<"?§;
                     while(_loc7_)
                     {
                        if(_loc9_.§;"q§ == _loc9_.§##3§)
                        {
                           break;
                        }
                        if(!(_loc7_.§<#L§.§#!<§ & b2Contact.§`#W§))
                        {
                           if(!(_loc7_.§<#L§.§@"G§() == true || _loc7_.§<#L§.§<!y§() == false || _loc7_.§<#L§.§!"m§() == false))
                           {
                              _loc9_.§8"?§(_loc7_.§<#L§);
                              _loc7_.§<#L§.§#!<§ |= b2Contact.§`#W§;
                              if(!((_loc22_ = _loc7_.§5W§).§#!<§ & b2Body.§`#W§))
                              {
                                 if(_loc22_.§ "c§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§8b§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§#!<§ |= b2Body.§`#W§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§0$0§;
                     }
                     _loc21_ = _loc2_.§'!X§;
                     while(_loc21_)
                     {
                        if(_loc9_.§ $9§ != _loc9_.§@#V§)
                        {
                           if(_loc21_.joint.§<!2§ != true)
                           {
                              if((_loc22_ = _loc21_.§5W§).§[G§() != false)
                              {
                                 _loc9_.§`#M§(_loc21_.joint);
                                 _loc21_.joint.§<!2§ = true;
                                 if(!(_loc22_.§#!<§ & b2Body.§`#W§))
                                 {
                                    if(_loc22_.§ "c§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§8b§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§#!<§ |= b2Body.§`#W§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§0$0§;
                     }
                  }
               }
               (_loc17_ = §,#+§).§`A§ = false;
               _loc17_.dt = (1 - _loc13_) * param1.dt;
               _loc17_.§^$+§ = 1 / _loc17_.dt;
               _loc17_.§'"D§ = 1;
               _loc17_.§=W§ = param1.§=W§;
               _loc17_.§ "^§ = param1.§ "^§;
               _loc9_.§ !J§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§0$"§)
               {
                  _loc2_ = _loc9_.§+"#§[_loc18_];
                  _loc2_.§#!<§ &= ~b2Body.§`#W§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§ "c§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§;!g§();
                        _loc7_ = _loc2_.§<"?§;
                        while(_loc7_)
                        {
                           _loc7_.§<#L§.§#!<§ &= ~b2Contact.§35§;
                           _loc7_ = _loc7_.§0$0§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§;"q§)
               {
                  _loc11_ = _loc9_.§0!>§[_loc18_];
                  _loc11_.§#!<§ &= ~(b2Contact.§35§ | b2Contact.§`#W§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§ $9§)
               {
                  (_loc8_ = _loc9_.§9"y§[_loc18_]).§<!2§ = false;
                  _loc18_++;
               }
               this.§?#L§.§=§();
            }
         }
      }
      
      b2internal function § "t§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§+#0§();
         var _loc3_:b2Body = param1.§4#M§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §2"G§;
         switch(param1.§6"&§)
         {
            case b2Joint.§+$!§:
               this.§""D§.§%#A§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§>#r§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§-!'§();
               _loc13_ = _loc11_.§5"h§();
               this.§""D§.§%#A§(_loc12_,_loc8_,_loc10_);
               this.§""D§.§%#A§(_loc13_,_loc9_,_loc10_);
               this.§""D§.§%#A§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§4#t§:
               this.§""D§.§%#A§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§""D§.§%#A§(_loc6_,_loc8_,_loc10_);
               }
               this.§""D§.§%#A§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§""D§.§%#A§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §&!Z§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§6"&§)
         {
            case b2Shape.§+0§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§0#O§(param2,_loc4_.§9#c§);
               _loc6_ = _loc4_.§0#I§;
               _loc7_ = param2.R.col1;
               this.§""D§.§,#k§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§0#N§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§;![§();
               _loc11_ = _loc9_.§?$1§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§0#O§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§""D§.§?#9§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§`$&§:
               _loc13_ = param1 as b2EdgeShape;
               this.§""D§.§%#A§(b2Math.§0#O§(param2,_loc13_.GetVertex1()),b2Math.§0#O§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

package §#!X§
{
   import §&!S§.*;
   import §+D§.*;
   import §3!1§.*;
   import §3m§.*;
   import §?f§.*;
   import §@!@§.*;
   import §^!8§.b2Controller;
   import §^!8§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §^!D§:b2Transform = new b2Transform();
      
      private static var § !c§:b2Sweep = new b2Sweep();
      
      private static var §@"A§:b2Sweep = new b2Sweep();
      
      private static var § "7§:b2TimeStep = new b2TimeStep();
      
      private static var §+!"§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §<n§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §+p§:Boolean;
      
      private static var §2!6§:Boolean;
      
      public static const §86§:int = 1;
      
      public static const §!Z§:int = 2;
       
      
      private var §;u§:Vector.<b2Body>;
      
      b2internal var §2!K§:int;
      
      b2internal var §=p§:b2ContactManager;
      
      private var §%"5§:b2ContactSolver;
      
      private var §'"&§:b2Island;
      
      b2internal var §`e§:b2Body;
      
      private var §2!c§:b2Joint;
      
      b2internal var §7!^§:b2Contact;
      
      private var §%!X§:int;
      
      b2internal var §`0§:int;
      
      private var §%!6§:int;
      
      private var §<!4§:b2Controller;
      
      private var §4V§:int;
      
      private var §]!s§:b2Vec2;
      
      private var §;'§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §=Z§:b2DestructionListener;
      
      private var §^!N§:b2DebugDraw;
      
      private var §9!!§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§;u§ = new Vector.<b2Body>();
         this.§=p§ = new b2ContactManager();
         this.§%"5§ = new b2ContactSolver();
         this.§'"&§ = new b2Island();
         super();
         this.§=Z§ = null;
         this.§^!N§ = null;
         this.§`e§ = null;
         this.§7!^§ = null;
         this.§2!c§ = null;
         this.§<!4§ = null;
         this.§%!X§ = 0;
         this.§`0§ = 0;
         this.§%!6§ = 0;
         this.§4V§ = 0;
         §+p§ = true;
         §2!6§ = true;
         this.§;'§ = param2;
         this.§]!s§ = param1;
         this.§9!!§ = 0;
         this.§=p§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §0!@§(param1:b2DestructionListener) : void
      {
         this.§=Z§ = param1;
      }
      
      public function §9!@§(param1:b2ContactFilter) : void
      {
         this.§=p§.§&7§ = param1;
      }
      
      public function §'R§(param1:b2ContactListener) : void
      {
         this.§=p§.§true§ = param1;
      }
      
      public function §#f§(param1:b2DebugDraw) : void
      {
         this.§^!N§ = param1;
      }
      
      public function §+!u§(param1:§+!q§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§+!q§ = this.§=p§.§!"7§;
         this.§=p§.§!"7§ = param1;
         var _loc3_:b2Body = this.§`e§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§"N§;
            while(_loc4_)
            {
               _loc4_.§[f§ = param1.§`!D§(_loc2_.§#!S§(_loc4_.§[f§),_loc4_);
               _loc4_ = _loc4_.§`!s§;
            }
            _loc3_ = _loc3_.§`!s§;
         }
      }
      
      public function §<!v§() : void
      {
         this.§=p§.§!"7§.§<!v§();
      }
      
      public function §9A§() : int
      {
         return this.§=p§.§!"7§.§9A§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§7"@§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§%4§ = null;
         _loc2_.§`!s§ = this.§`e§;
         if(this.§`e§)
         {
            this.§`e§.§%4§ = _loc2_;
         }
         this.§`e§ = _loc2_;
         ++this.§%!X§;
         return _loc2_;
      }
      
      public function §?l§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§7"@§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§2!c§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§+!R§;
            if(this.§=Z§)
            {
               this.§=Z§.§@B§(_loc6_.§>v§);
            }
            this.§7"D§(_loc6_.§>v§);
         }
         var _loc3_:b2ControllerEdge = param1.§<!4§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§+"@§;
            _loc7_.§%O§.§-!A§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§7!^§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§+!R§;
            this.§=p§.§5[§(_loc8_.§9p§);
         }
         param1.§7!^§ = null;
         var _loc5_:b2Fixture = param1.§"N§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§`!s§;
            if(this.§=Z§)
            {
               this.§=Z§.§>!9§(_loc9_);
            }
            _loc9_.§'!d§(this.§=p§.§!"7§);
            _loc9_.§5[§();
         }
         param1.§"N§ = null;
         param1.§>!7§ = 0;
         if(param1.§%4§)
         {
            param1.§%4§.§`!s§ = param1.§`!s§;
         }
         if(param1.§`!s§)
         {
            param1.§`!s§.§%4§ = param1.§%4§;
         }
         if(param1 == this.§`e§)
         {
            this.§`e§ = param1.§`!s§;
         }
         --this.§%!X§;
      }
      
      public function §6n§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§;8§(param1,null);
         _loc2_.§%4§ = null;
         _loc2_.§`!s§ = this.§2!c§;
         if(this.§2!c§)
         {
            this.§2!c§.§%4§ = _loc2_;
         }
         this.§2!c§ = _loc2_;
         ++this.§%!6§;
         _loc2_.§>[§.§>v§ = _loc2_;
         _loc2_.§>[§.§&!7§ = _loc2_.§9!W§;
         _loc2_.§>[§.§5W§ = null;
         _loc2_.§>[§.§+!R§ = _loc2_.§]X§.§2!c§;
         if(_loc2_.§]X§.§2!c§)
         {
            _loc2_.§]X§.§2!c§.§5W§ = _loc2_.§>[§;
         }
         _loc2_.§]X§.§2!c§ = _loc2_.§>[§;
         _loc2_.§>R§.§>v§ = _loc2_;
         _loc2_.§>R§.§&!7§ = _loc2_.§]X§;
         _loc2_.§>R§.§5W§ = null;
         _loc2_.§>R§.§+!R§ = _loc2_.§9!W§.§2!c§;
         if(_loc2_.§9!W§.§2!c§)
         {
            _loc2_.§9!W§.§2!c§.§5W§ = _loc2_.§>R§;
         }
         _loc2_.§9!W§.§2!c§ = _loc2_.§>R§;
         var _loc3_:b2Body = param1.§43§;
         var _loc4_:b2Body = param1.§4!l§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§!I§();
            while(_loc5_)
            {
               if(_loc5_.§&!7§ == _loc3_)
               {
                  _loc5_.§9p§.§0&§();
               }
               _loc5_ = _loc5_.§+!R§;
            }
         }
         return _loc2_;
      }
      
      public function §7"D§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§!!Z§;
         if(param1.§%4§)
         {
            param1.§%4§.§`!s§ = param1.§`!s§;
         }
         if(param1.§`!s§)
         {
            param1.§`!s§.§%4§ = param1.§%4§;
         }
         if(param1 == this.§2!c§)
         {
            this.§2!c§ = param1.§`!s§;
         }
         var _loc3_:b2Body = param1.§]X§;
         var _loc4_:b2Body = param1.§9!W§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§>[§.§5W§)
         {
            param1.§>[§.§5W§.§+!R§ = param1.§>[§.§+!R§;
         }
         if(param1.§>[§.§+!R§)
         {
            param1.§>[§.§+!R§.§5W§ = param1.§>[§.§5W§;
         }
         if(param1.§>[§ == _loc3_.§2!c§)
         {
            _loc3_.§2!c§ = param1.§>[§.§+!R§;
         }
         param1.§>[§.§5W§ = null;
         param1.§>[§.§+!R§ = null;
         if(param1.§>R§.§5W§)
         {
            param1.§>R§.§5W§.§+!R§ = param1.§>R§.§+!R§;
         }
         if(param1.§>R§.§+!R§)
         {
            param1.§>R§.§+!R§.§5W§ = param1.§>R§.§5W§;
         }
         if(param1.§>R§ == _loc4_.§2!c§)
         {
            _loc4_.§2!c§ = param1.§>R§.§+!R§;
         }
         param1.§>R§.§5W§ = null;
         param1.§>R§.§+!R§ = null;
         b2Joint.§5[§(param1,null);
         --this.§%!6§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§!I§();
            while(_loc5_)
            {
               if(_loc5_.§&!7§ == _loc3_)
               {
                  _loc5_.§9p§.§0&§();
               }
               _loc5_ = _loc5_.§+!R§;
            }
         }
      }
      
      public function §%!R§(param1:b2Controller) : b2Controller
      {
         param1.§`!s§ = this.§<!4§;
         param1.§%4§ = null;
         this.§<!4§ = param1;
         param1.m_world = this;
         ++this.§4V§;
         return param1;
      }
      
      public function §0"=§(param1:b2Controller) : void
      {
         if(param1.§%4§)
         {
            param1.§%4§.§`!s§ = param1.§`!s§;
         }
         if(param1.§`!s§)
         {
            param1.§`!s§.§%4§ = param1.§%4§;
         }
         if(this.§<!4§ == param1)
         {
            this.§<!4§ = param1.§`!s§;
         }
         --this.§4V§;
      }
      
      public function §]!c§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§`!s§ = this.§<!4§;
         param1.§%4§ = null;
         if(this.§<!4§)
         {
            this.§<!4§.§%4§ = param1;
         }
         this.§<!4§ = param1;
         ++this.§4V§;
         param1.m_world = this;
         return param1;
      }
      
      public function §+?§(param1:b2Controller) : void
      {
         param1.§6![§();
         if(param1.§`!s§)
         {
            param1.§`!s§.§%4§ = param1.§%4§;
         }
         if(param1.§%4§)
         {
            param1.§%4§.§`!s§ = param1.§`!s§;
         }
         if(param1 == this.§<!4§)
         {
            this.§<!4§ = param1.§`!s§;
         }
         --this.§4V§;
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         §+p§ = param1;
      }
      
      public function §`!-§(param1:Boolean) : void
      {
         §2!6§ = param1;
      }
      
      public function §=!F§() : int
      {
         return this.§%!X§;
      }
      
      public function §<"6§() : int
      {
         return this.§%!6§;
      }
      
      public function §]![§() : int
      {
         return this.§`0§;
      }
      
      public function SetGravity(param1:b2Vec2) : void
      {
         this.§]!s§ = param1;
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.§]!s§;
      }
      
      public function §9W§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         if(this.§2!K§ & §86§)
         {
            this.§=p§.§0!S§();
            this.§2!K§ &= ~§86§;
         }
         this.§2!K§ |= §!Z§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§`"%§ = param1;
         _loc4_.§;"5§ = param2;
         _loc4_.§;!Y§ = param3;
         if(param1 > 0)
         {
            _loc4_.§=o§ = 1 / param1;
         }
         else
         {
            _loc4_.§=o§ = 0;
         }
         _loc4_.§2!H§ = this.§9!!§ * param1;
         _loc4_.§3!2§ = §+p§;
         this.§=p§.§,"!§();
         if(_loc4_.§`"%§ > 0)
         {
            this.§@"+§(_loc4_);
         }
         if(§2!6§ && _loc4_.§`"%§ > 0)
         {
            this.§&M§(_loc4_);
         }
         if(_loc4_.§`"%§ > 0)
         {
            this.§9!!§ = _loc4_.§=o§;
         }
         this.§2!K§ &= ~§!Z§;
      }
      
      public function ClearForces() : void
      {
         var _loc1_:b2Body = this.§`e§;
         while(_loc1_)
         {
            _loc1_.§=!E§.§ "2§();
            _loc1_.§^![§ = 0;
            _loc1_ = _loc1_.§`!s§;
         }
      }
      
      public function override() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§+!q§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§^!N§ == null)
         {
            return;
         }
         this.§^!N§.§-!i§.graphics.clear();
         var _loc1_:uint = this.§^!N§.§^R§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§["9§)
         {
            _loc3_ = this.§`e§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§;!G§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§@!m§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§-k§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§,!k§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§-k§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§,!k§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§-k§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§-k§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§-k§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§`!s§;
               }
               _loc3_ = _loc3_.§`!s§;
            }
         }
         if(_loc1_ & b2DebugDraw.§=!M§)
         {
            _loc6_ = this.§2!c§;
            while(_loc6_)
            {
               this.§-!p§(_loc6_);
               _loc6_ = _loc6_.§`!s§;
            }
         }
         if(_loc1_ & b2DebugDraw.§'E§)
         {
            _loc16_ = this.§<!4§;
            while(_loc16_)
            {
               _loc16_.§1o§(this.§^!N§);
               _loc16_ = _loc16_.§`!s§;
            }
         }
         if(_loc1_ & b2DebugDraw.§7&§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§=p§.§7!^§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§4!`§();
               _loc19_ = _loc17_.§?!y§();
               _loc20_ = _loc18_.§!""§().§9! §();
               _loc21_ = _loc19_.§!""§().§9! §();
               this.§^!N§.§-!X§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§6!4§();
            }
         }
         if(_loc1_ & b2DebugDraw.§ !b§)
         {
            _loc7_ = this.§=p§.§!"7§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§`e§;
            while(_loc3_)
            {
               if(_loc3_.§@!m§() != false)
               {
                  _loc4_ = _loc3_.§;!G§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§#!S§(_loc4_.§[f§);
                     _loc14_[0].Set(_loc22_.§>9§.x,_loc22_.§>9§.y);
                     _loc14_[1].Set(_loc22_.§2M§.x,_loc22_.§>9§.y);
                     _loc14_[2].Set(_loc22_.§2M§.x,_loc22_.§2M§.y);
                     _loc14_[3].Set(_loc22_.§>9§.x,_loc22_.§2M§.y);
                     this.§^!N§.§8!,§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§6!4§();
                  }
               }
               _loc3_ = _loc3_.§6!4§();
            }
         }
         if(_loc1_ & b2DebugDraw.§ "+§)
         {
            _loc3_ = this.§`e§;
            while(_loc3_)
            {
               (_loc11_ = §^!D§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§6P§();
               this.§^!N§.§;!q§(_loc11_);
               _loc3_ = _loc3_.§`!s§;
            }
         }
      }
      
      public function QueryAABB(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§+!q§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§=p§.§!"7§;
         broadPhase.§ !<§(WorldQueryWrapper,aabb);
      }
      
      public function §5!8§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§+!q§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§7"3§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§+!T§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§3!y§();
         }
         broadPhase = this.§=p§.§!"7§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§ !<§(WorldQueryWrapper,aabb);
      }
      
      public function §8!G§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§+!q§ = null;
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
         broadPhase = this.§=p§.§!"7§;
         var aabb:b2AABB = new b2AABB();
         aabb.§>9§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§2M§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§ !<§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§+!q§ = null;
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
            return param1.§;L§;
         };
         broadPhase = this.§=p§.§!"7§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §-!5§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §0"C§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function § e§() : b2Body
      {
         return this.§`e§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§2!c§;
      }
      
      public function §!I§() : b2Contact
      {
         return this.§7!^§;
      }
      
      public function §7"@§() : Boolean
      {
         return (this.§2!K§ & §!Z§) > 0;
      }
      
      b2internal function §@"+§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§<!4§;
         while(_loc3_)
         {
            _loc3_.Step(param1);
            _loc3_ = _loc3_.§`!s§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§'"&§).§5!k§(this.§%!X§,this.§`0§,this.§%!6§,null,this.§=p§.§true§,this.§%"5§);
         _loc2_ = this.§`e§;
         while(_loc2_)
         {
            _loc2_.§2!K§ &= ~b2Body.§-y§;
            _loc2_ = _loc2_.§`!s§;
         }
         var _loc5_:b2Contact = this.§7!^§;
         while(_loc5_)
         {
            _loc5_.§2!K§ &= ~b2Contact.§-y§;
            _loc5_ = _loc5_.§`!s§;
         }
         var _loc6_:b2Joint = this.§2!c§;
         while(_loc6_)
         {
            _loc6_.§ !Q§ = false;
            _loc6_ = _loc6_.§`!s§;
         }
         var _loc7_:int = this.§%!X§;
         var _loc8_:Vector.<b2Body> = this.§;u§;
         var _loc9_:b2Body = this.§`e§;
         while(_loc9_)
         {
            if(!(_loc9_.§2!K§ & b2Body.§-y§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§@!m§() == false))
               {
                  if(_loc9_.§,!k§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§6![§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§2!K§ |= b2Body.§-y§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§!%§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§,!k§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§7!^§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§9p§.§2!K§ & b2Contact.§-y§))
                              {
                                 if(!(_loc13_.§9p§.§<H§() == true || _loc13_.§9p§.§^h§() == false || _loc13_.§9p§.§^!&§() == false))
                                 {
                                    _loc4_.§;@§(_loc13_.§9p§);
                                    _loc13_.§9p§.§2!K§ |= b2Contact.§-y§;
                                    if(!((_loc12_ = _loc13_.§&!7§).§2!K§ & b2Body.§-y§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§2!K§ |= b2Body.§-y§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§+!R§;
                           }
                           _loc14_ = _loc2_.§2!c§;
                           while(_loc14_)
                           {
                              if(_loc14_.§>v§.§ !Q§ != true)
                              {
                                 if((_loc12_ = _loc14_.§&!7§).§@!m§() != false)
                                 {
                                    _loc4_.§,!b§(_loc14_.§>v§);
                                    _loc14_.§>v§.§ !Q§ = true;
                                    if(!(_loc12_.§2!K§ & b2Body.§-y§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§2!K§ |= b2Body.§-y§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§+!R§;
                           }
                        }
                     }
                     _loc4_.§@"+§(param1,this.§]!s§,this.§;'§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§%!X§)
                     {
                        _loc2_ = _loc4_.§5!M§[_loc11_];
                        if(_loc2_.§,!k§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§2!K§ &= ~b2Body.§-y§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§`!s§;
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
         _loc2_ = this.§`e§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§@!m§() == false))
            {
               if(_loc2_.§,!k§() != b2Body.b2_staticBody)
               {
                  _loc2_.§3B§();
               }
            }
            _loc2_ = _loc2_.§`!s§;
         }
         this.§=p§.§0!S§();
      }
      
      b2internal function §&M§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§'"&§).§5!k§(this.§%!X§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§=p§.§true§,this.§%"5§);
         var _loc10_:Vector.<b2Body> = §+!"§;
         _loc2_ = this.§`e§;
         while(_loc2_)
         {
            _loc2_.§2!K§ &= ~b2Body.§-y§;
            _loc2_.m_sweep.§^%§ = 0;
            _loc2_ = _loc2_.§`!s§;
         }
         _loc11_ = this.§7!^§;
         while(_loc11_)
         {
            _loc11_.§2!K§ &= ~(b2Contact.§4!>§ | b2Contact.§-y§);
            _loc11_.§2"9§ = 1;
            _loc11_ = _loc11_.§`!s§;
         }
         _loc8_ = this.§2!c§;
         while(_loc8_)
         {
            _loc8_.§ !Q§ = false;
            _loc8_ = _loc8_.§`!s§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§7!^§;
            while(_loc11_)
            {
               if(!(_loc11_.§<H§() == true || _loc11_.§^h§() == false || _loc11_.§1"9§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§2!K§ & b2Contact.§4!>§)
                  {
                     _loc19_ = _loc11_.§2"9§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§break§;
                     _loc4_ = _loc11_.§`!y§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§,!k§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§,!k§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr658:
                        _loc11_ = _loc11_.§`!s§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§^%§;
                     if(_loc5_.m_sweep.§^%§ < _loc6_.m_sweep.§^%§)
                     {
                        _loc20_ = _loc6_.m_sweep.§^%§;
                        _loc5_.m_sweep.§"!&§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§^%§ < _loc5_.m_sweep.§^%§)
                     {
                        _loc20_ = _loc5_.m_sweep.§^%§;
                        _loc6_.m_sweep.§"!&§(_loc20_);
                     }
                     _loc19_ = _loc11_.§5^§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§2"9§ = _loc19_;
                     _loc11_.§2!K§ |= b2Contact.§4!>§;
                     §§goto(addr658);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr658);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§break§;
            _loc4_ = _loc12_.§`!y§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            § !c§.Set(_loc5_.m_sweep);
            §@"A§.Set(_loc6_.m_sweep);
            _loc5_.§"!&§(_loc13_);
            _loc6_.§"!&§(_loc13_);
            _loc12_.§;""§(this.§=p§.§true§);
            _loc12_.§2!K§ &= ~b2Contact.§4!>§;
            if(_loc12_.§<H§() == true || _loc12_.§^h§() == false)
            {
               _loc5_.m_sweep.Set(§ !c§);
               _loc6_.m_sweep.Set(§@"A§);
               _loc5_.§;!E§();
               _loc6_.§;!E§();
            }
            else if(_loc12_.§^!&§() != false)
            {
               if((_loc14_ = _loc5_).§,!k§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§6![§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§2!K§ |= b2Body.§-y§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§!%§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§,!k§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§7!^§;
                     while(_loc7_)
                     {
                        if(_loc9_.§`0§ == _loc9_.§9'§)
                        {
                           break;
                        }
                        if(!(_loc7_.§9p§.§2!K§ & b2Contact.§-y§))
                        {
                           if(!(_loc7_.§9p§.§<H§() == true || _loc7_.§9p§.§^h§() == false || _loc7_.§9p§.§^!&§() == false))
                           {
                              _loc9_.§;@§(_loc7_.§9p§);
                              _loc7_.§9p§.§2!K§ |= b2Contact.§-y§;
                              if(!((_loc22_ = _loc7_.§&!7§).§2!K§ & b2Body.§-y§))
                              {
                                 if(_loc22_.§,!k§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§"!&§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§2!K§ |= b2Body.§-y§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§+!R§;
                     }
                     _loc21_ = _loc2_.§2!c§;
                     while(_loc21_)
                     {
                        if(_loc9_.§%!6§ != _loc9_.§-!g§)
                        {
                           if(_loc21_.§>v§.§ !Q§ != true)
                           {
                              if((_loc22_ = _loc21_.§&!7§).§@!m§() != false)
                              {
                                 _loc9_.§,!b§(_loc21_.§>v§);
                                 _loc21_.§>v§.§ !Q§ = true;
                                 if(!(_loc22_.§2!K§ & b2Body.§-y§))
                                 {
                                    if(_loc22_.§,!k§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§"!&§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§2!K§ |= b2Body.§-y§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§+!R§;
                     }
                  }
               }
               (_loc17_ = § "7§).§3!2§ = false;
               _loc17_.§`"%§ = (1 - _loc13_) * param1.§`"%§;
               _loc17_.§=o§ = 1 / _loc17_.§`"%§;
               _loc17_.§2!H§ = 1;
               _loc17_.§;"5§ = param1.§;"5§;
               _loc17_.§;!Y§ = param1.§;!Y§;
               _loc9_.§&M§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§%!X§)
               {
                  _loc2_ = _loc9_.§5!M§[_loc18_];
                  _loc2_.§2!K§ &= ~b2Body.§-y§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§,!k§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§3B§();
                        _loc7_ = _loc2_.§7!^§;
                        while(_loc7_)
                        {
                           _loc7_.§9p§.§2!K§ &= ~b2Contact.§4!>§;
                           _loc7_ = _loc7_.§+!R§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§`0§)
               {
                  _loc11_ = _loc9_.§9!F§[_loc18_];
                  _loc11_.§2!K§ &= ~(b2Contact.§4!>§ | b2Contact.§-y§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§%!6§)
               {
                  (_loc8_ = _loc9_.§1!"§[_loc18_]).§ !Q§ = false;
                  _loc18_++;
               }
               this.§=p§.§0!S§();
            }
         }
      }
      
      b2internal function §-!p§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§#'§();
         var _loc3_:b2Body = param1.§@+§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §<n§;
         switch(param1.§5!q§)
         {
            case b2Joint.§2'§:
               this.§^!N§.§-!X§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§!"%§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§`O§();
               _loc13_ = _loc11_.§[3§();
               this.§^!N§.§-!X§(_loc12_,_loc8_,_loc10_);
               this.§^!N§.§-!X§(_loc13_,_loc9_,_loc10_);
               this.§^!N§.§-!X§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§;m§:
               this.§^!N§.§-!X§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§^!N§.§-!X§(_loc6_,_loc8_,_loc10_);
               }
               this.§^!N§.§-!X§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§^!N§.§-!X§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §-k§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§5!q§)
         {
            case b2Shape.§>"?§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§53§(param2,_loc4_.§"!u§);
               _loc6_ = _loc4_.§'"D§;
               _loc7_ = param2.R.col1;
               this.§^!N§.§?! §(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§"P§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§"V§();
               _loc11_ = _loc9_.§<!I§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§53§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§^!N§.§3! §(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§9+§:
               _loc13_ = param1 as b2EdgeShape;
               this.§^!N§.§-!X§(b2Math.§53§(param2,_loc13_.GetVertex1()),b2Math.§53§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

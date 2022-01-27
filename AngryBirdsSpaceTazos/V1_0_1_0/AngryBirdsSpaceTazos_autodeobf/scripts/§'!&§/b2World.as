package §'!&§
{
   import §,Z§.*;
   import §3c§.*;
   import §6-§.b2Controller;
   import §6-§.b2ControllerEdge;
   import §9t§.*;
   import §=!n§.*;
   import §@!'§.*;
   import §`X§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §6!#§:b2Transform = new b2Transform();
      
      private static var §!_§:b2Sweep = new b2Sweep();
      
      private static var §,"%§:b2Sweep = new b2Sweep();
      
      private static var §#!v§:b2TimeStep = new b2TimeStep();
      
      private static var §3!Y§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §9s§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §7"G§:Boolean;
      
      private static var §=q§:Boolean;
      
      public static const §]=§:int = 1;
      
      public static const §3!6§:int = 2;
       
      
      private var §'"@§:Vector.<b2Body>;
      
      b2internal var §0" §:int;
      
      b2internal var §9>§:b2ContactManager;
      
      private var §4!<§:b2ContactSolver;
      
      private var §!!W§:b2Island;
      
      b2internal var §&E§:b2Body;
      
      private var §5G§:b2Joint;
      
      b2internal var §1!Z§:b2Contact;
      
      private var §"s§:int;
      
      b2internal var §3!G§:int;
      
      private var §1!s§:int;
      
      private var § <§:b2Controller;
      
      private var §@!R§:int;
      
      private var §>!V§:b2Vec2;
      
      private var §%!"§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §?@§:b2DestructionListener;
      
      private var § "!§:b2DebugDraw;
      
      private var §5"5§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§'"@§ = new Vector.<b2Body>();
         this.§9>§ = new b2ContactManager();
         this.§4!<§ = new b2ContactSolver();
         this.§!!W§ = new b2Island();
         super();
         this.§?@§ = null;
         this.§ "!§ = null;
         this.§&E§ = null;
         this.§1!Z§ = null;
         this.§5G§ = null;
         this.§ <§ = null;
         this.§"s§ = 0;
         this.§3!G§ = 0;
         this.§1!s§ = 0;
         this.§@!R§ = 0;
         §7"G§ = true;
         §=q§ = true;
         this.§%!"§ = param2;
         this.§>!V§ = param1;
         this.§5"5§ = 0;
         this.§9>§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §4o§(param1:b2DestructionListener) : void
      {
         this.§?@§ = param1;
      }
      
      public function §0d§(param1:b2ContactFilter) : void
      {
         this.§9>§.§?"8§ = param1;
      }
      
      public function §=!h§(param1:b2ContactListener) : void
      {
         this.§9>§.§0Q§ = param1;
      }
      
      public function §5"@§(param1:b2DebugDraw) : void
      {
         this.§ "!§ = param1;
      }
      
      public function §<!Z§(param1:§>!e§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§>!e§ = this.§9>§.§2"$§;
         this.§9>§.§2"$§ = param1;
         var _loc3_:b2Body = this.§&E§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§&?§;
            while(_loc4_)
            {
               _loc4_.§@L§ = param1.§'!C§(_loc2_.§%!g§(_loc4_.§@L§),_loc4_);
               _loc4_ = _loc4_.§+!o§;
            }
            _loc3_ = _loc3_.§+!o§;
         }
      }
      
      public function §,E§() : void
      {
         this.§9>§.§2"$§.§,E§();
      }
      
      public function §0!y§() : int
      {
         return this.§9>§.§2"$§.§0!y§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§2F§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§20§ = null;
         _loc2_.§+!o§ = this.§&E§;
         if(this.§&E§)
         {
            this.§&E§.§20§ = _loc2_;
         }
         this.§&E§ = _loc2_;
         ++this.§"s§;
         return _loc2_;
      }
      
      public function §3a§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§2F§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§5G§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§ X§;
            if(this.§?@§)
            {
               this.§?@§.§@!l§(_loc6_.§7!>§);
            }
            this.§'$§(_loc6_.§7!>§);
         }
         var _loc3_:b2ControllerEdge = param1.§ <§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§,f§;
            _loc7_.§&!$§.§6"1§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§1!Z§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§ X§;
            this.§9>§.§^!a§(_loc8_.§%!b§);
         }
         param1.§1!Z§ = null;
         var _loc5_:b2Fixture = param1.§&?§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§+!o§;
            if(this.§?@§)
            {
               this.§?@§.§;<§(_loc9_);
            }
            _loc9_.§&1§(this.§9>§.§2"$§);
            _loc9_.§^!a§();
         }
         param1.§&?§ = null;
         param1.§^!r§ = 0;
         if(param1.§20§)
         {
            param1.§20§.§+!o§ = param1.§+!o§;
         }
         if(param1.§+!o§)
         {
            param1.§+!o§.§20§ = param1.§20§;
         }
         if(param1 == this.§&E§)
         {
            this.§&E§ = param1.§+!o§;
         }
         --this.§"s§;
      }
      
      public function §9"A§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§]H§(param1,null);
         _loc2_.§20§ = null;
         _loc2_.§+!o§ = this.§5G§;
         if(this.§5G§)
         {
            this.§5G§.§20§ = _loc2_;
         }
         this.§5G§ = _loc2_;
         ++this.§1!s§;
         _loc2_.§<!S§.§7!>§ = _loc2_;
         _loc2_.§<!S§.§1!>§ = _loc2_.§?H§;
         _loc2_.§<!S§.§8!$§ = null;
         _loc2_.§<!S§.§ X§ = _loc2_.§<!1§.§5G§;
         if(_loc2_.§<!1§.§5G§)
         {
            _loc2_.§<!1§.§5G§.§8!$§ = _loc2_.§<!S§;
         }
         _loc2_.§<!1§.§5G§ = _loc2_.§<!S§;
         _loc2_.§`!-§.§7!>§ = _loc2_;
         _loc2_.§`!-§.§1!>§ = _loc2_.§<!1§;
         _loc2_.§`!-§.§8!$§ = null;
         _loc2_.§`!-§.§ X§ = _loc2_.§?H§.§5G§;
         if(_loc2_.§?H§.§5G§)
         {
            _loc2_.§?H§.§5G§.§8!$§ = _loc2_.§`!-§;
         }
         _loc2_.§?H§.§5G§ = _loc2_.§`!-§;
         var _loc3_:b2Body = param1.§+,§;
         var _loc4_:b2Body = param1.§"R§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§<!r§();
            while(_loc5_)
            {
               if(_loc5_.§1!>§ == _loc3_)
               {
                  _loc5_.§%!b§.§0]§();
               }
               _loc5_ = _loc5_.§ X§;
            }
         }
         return _loc2_;
      }
      
      public function §'$§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§46§;
         if(param1.§20§)
         {
            param1.§20§.§+!o§ = param1.§+!o§;
         }
         if(param1.§+!o§)
         {
            param1.§+!o§.§20§ = param1.§20§;
         }
         if(param1 == this.§5G§)
         {
            this.§5G§ = param1.§+!o§;
         }
         var _loc3_:b2Body = param1.§<!1§;
         var _loc4_:b2Body = param1.§?H§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§<!S§.§8!$§)
         {
            param1.§<!S§.§8!$§.§ X§ = param1.§<!S§.§ X§;
         }
         if(param1.§<!S§.§ X§)
         {
            param1.§<!S§.§ X§.§8!$§ = param1.§<!S§.§8!$§;
         }
         if(param1.§<!S§ == _loc3_.§5G§)
         {
            _loc3_.§5G§ = param1.§<!S§.§ X§;
         }
         param1.§<!S§.§8!$§ = null;
         param1.§<!S§.§ X§ = null;
         if(param1.§`!-§.§8!$§)
         {
            param1.§`!-§.§8!$§.§ X§ = param1.§`!-§.§ X§;
         }
         if(param1.§`!-§.§ X§)
         {
            param1.§`!-§.§ X§.§8!$§ = param1.§`!-§.§8!$§;
         }
         if(param1.§`!-§ == _loc4_.§5G§)
         {
            _loc4_.§5G§ = param1.§`!-§.§ X§;
         }
         param1.§`!-§.§8!$§ = null;
         param1.§`!-§.§ X§ = null;
         b2Joint.§^!a§(param1,null);
         --this.§1!s§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§<!r§();
            while(_loc5_)
            {
               if(_loc5_.§1!>§ == _loc3_)
               {
                  _loc5_.§%!b§.§0]§();
               }
               _loc5_ = _loc5_.§ X§;
            }
         }
      }
      
      public function §&!+§(param1:b2Controller) : b2Controller
      {
         param1.§+!o§ = this.§ <§;
         param1.§20§ = null;
         this.§ <§ = param1;
         param1.m_world = this;
         ++this.§@!R§;
         return param1;
      }
      
      public function §#"3§(param1:b2Controller) : void
      {
         if(param1.§20§)
         {
            param1.§20§.§+!o§ = param1.§+!o§;
         }
         if(param1.§+!o§)
         {
            param1.§+!o§.§20§ = param1.§20§;
         }
         if(this.§ <§ == param1)
         {
            this.§ <§ = param1.§+!o§;
         }
         --this.§@!R§;
      }
      
      public function §9!g§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§+!o§ = this.§ <§;
         param1.§20§ = null;
         if(this.§ <§)
         {
            this.§ <§.§20§ = param1;
         }
         this.§ <§ = param1;
         ++this.§@!R§;
         param1.m_world = this;
         return param1;
      }
      
      public function §]"A§(param1:b2Controller) : void
      {
         param1.§["5§();
         if(param1.§+!o§)
         {
            param1.§+!o§.§20§ = param1.§20§;
         }
         if(param1.§20§)
         {
            param1.§20§.§+!o§ = param1.§+!o§;
         }
         if(param1 == this.§ <§)
         {
            this.§ <§ = param1.§+!o§;
         }
         --this.§@!R§;
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         §7"G§ = param1;
      }
      
      public function §>J§(param1:Boolean) : void
      {
         §=q§ = param1;
      }
      
      public function §;!=§() : int
      {
         return this.§"s§;
      }
      
      public function §,,§() : int
      {
         return this.§1!s§;
      }
      
      public function §8+§() : int
      {
         return this.§3!G§;
      }
      
      public function SetGravity(param1:b2Vec2) : void
      {
         this.§>!V§ = param1;
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.§>!V§;
      }
      
      public function §6b§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         if(this.§0" § & §]=§)
         {
            this.§9>§.§^!A§();
            this.§0" § &= ~§]=§;
         }
         this.§0" § |= §3!6§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§2^§ = param1;
         _loc4_.§3Y§ = param2;
         _loc4_.§3]§ = param3;
         if(param1 > 0)
         {
            _loc4_.§,t§ = 1 / param1;
         }
         else
         {
            _loc4_.§,t§ = 0;
         }
         _loc4_.§-I§ = this.§5"5§ * param1;
         _loc4_.§`m§ = §7"G§;
         this.§9>§.§%!L§();
         if(_loc4_.§2^§ > 0)
         {
            this.§3!N§(_loc4_);
         }
         if(§=q§ && _loc4_.§2^§ > 0)
         {
            this.§!!'§(_loc4_);
         }
         if(_loc4_.§2^§ > 0)
         {
            this.§5"5§ = _loc4_.§,t§;
         }
         this.§0" § &= ~§3!6§;
      }
      
      public function ClearForces() : void
      {
         var _loc1_:b2Body = this.§&E§;
         while(_loc1_)
         {
            _loc1_.§#!u§.§@!d§();
            _loc1_.§8<§ = 0;
            _loc1_ = _loc1_.§+!o§;
         }
      }
      
      public function §2"F§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§>!e§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§ "!§ == null)
         {
            return;
         }
         this.§ "!§.§97§.graphics.clear();
         var _loc1_:uint = this.§ "!§.§"a§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§`!a§)
         {
            _loc3_ = this.§&E§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§=s§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§0!h§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§-b§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§@!N§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§-b§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§@!N§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§-b§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§-b§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§-b§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§+!o§;
               }
               _loc3_ = _loc3_.§+!o§;
            }
         }
         if(_loc1_ & b2DebugDraw.§%H§)
         {
            _loc6_ = this.§5G§;
            while(_loc6_)
            {
               this.§0!i§(_loc6_);
               _loc6_ = _loc6_.§+!o§;
            }
         }
         if(_loc1_ & b2DebugDraw.§<!Y§)
         {
            _loc16_ = this.§ <§;
            while(_loc16_)
            {
               _loc16_.§-!8§(this.§ "!§);
               _loc16_ = _loc16_.§+!o§;
            }
         }
         if(_loc1_ & b2DebugDraw.§[!4§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§9>§.§1!Z§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§'J§();
               _loc19_ = _loc17_.§#"%§();
               _loc20_ = _loc18_.§2!!§().§4!F§();
               _loc21_ = _loc19_.§2!!§().§4!F§();
               this.§ "!§.§[!d§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§`!y§();
            }
         }
         if(_loc1_ & b2DebugDraw.§=§)
         {
            _loc7_ = this.§9>§.§2"$§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§&E§;
            while(_loc3_)
            {
               if(_loc3_.§0!h§() != false)
               {
                  _loc4_ = _loc3_.§=s§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§%!g§(_loc4_.§@L§);
                     _loc14_[0].Set(_loc22_.§<!@§.x,_loc22_.§<!@§.y);
                     _loc14_[1].Set(_loc22_.§2!1§.x,_loc22_.§<!@§.y);
                     _loc14_[2].Set(_loc22_.§2!1§.x,_loc22_.§2!1§.y);
                     _loc14_[3].Set(_loc22_.§<!@§.x,_loc22_.§2!1§.y);
                     this.§ "!§.§?I§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§`!y§();
                  }
               }
               _loc3_ = _loc3_.§`!y§();
            }
         }
         if(_loc1_ & b2DebugDraw.§7!P§)
         {
            _loc3_ = this.§&E§;
            while(_loc3_)
            {
               (_loc11_ = §6!#§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§%!;§();
               this.§ "!§.§6y§(_loc11_);
               _loc3_ = _loc3_.§+!o§;
            }
         }
      }
      
      public function QueryAABB(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§>!e§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§9>§.§2"$§;
         broadPhase.§6!?§(WorldQueryWrapper,aabb);
      }
      
      public function §^!X§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§>!e§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§5"0§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§>u§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§&!e§();
         }
         broadPhase = this.§9>§.§2"$§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§6!?§(WorldQueryWrapper,aabb);
      }
      
      public function §^!f§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§>!e§ = null;
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
         broadPhase = this.§9>§.§2"$§;
         var aabb:b2AABB = new b2AABB();
         aabb.§<!@§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§2!1§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§6!?§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§>!e§ = null;
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
            return param1.§7"?§;
         };
         broadPhase = this.§9>§.§2"$§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §["0§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §0O§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §;N§() : b2Body
      {
         return this.§&E§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§5G§;
      }
      
      public function §<!r§() : b2Contact
      {
         return this.§1!Z§;
      }
      
      public function §2F§() : Boolean
      {
         return (this.§0" § & §3!6§) > 0;
      }
      
      b2internal function §3!N§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§ <§;
         while(_loc3_)
         {
            _loc3_.Step(param1);
            _loc3_ = _loc3_.§+!o§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§!!W§).§>`§(this.§"s§,this.§3!G§,this.§1!s§,null,this.§9>§.§0Q§,this.§4!<§);
         _loc2_ = this.§&E§;
         while(_loc2_)
         {
            _loc2_.§0" § &= ~b2Body.§]9§;
            _loc2_ = _loc2_.§+!o§;
         }
         var _loc5_:b2Contact = this.§1!Z§;
         while(_loc5_)
         {
            _loc5_.§0" § &= ~b2Contact.§]9§;
            _loc5_ = _loc5_.§+!o§;
         }
         var _loc6_:b2Joint = this.§5G§;
         while(_loc6_)
         {
            _loc6_.§[!a§ = false;
            _loc6_ = _loc6_.§+!o§;
         }
         var _loc7_:int = this.§"s§;
         var _loc8_:Vector.<b2Body> = this.§'"@§;
         var _loc9_:b2Body = this.§&E§;
         while(_loc9_)
         {
            if(!(_loc9_.§0" § & b2Body.§]9§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§0!h§() == false))
               {
                  if(_loc9_.§@!N§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§["5§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§0" § |= b2Body.§]9§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§!"C§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§@!N§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§1!Z§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§%!b§.§0" § & b2Contact.§]9§))
                              {
                                 if(!(_loc13_.§%!b§.§]w§() == true || _loc13_.§%!b§.§0!?§() == false || _loc13_.§%!b§.§]Q§() == false))
                                 {
                                    _loc4_.§'0§(_loc13_.§%!b§);
                                    _loc13_.§%!b§.§0" § |= b2Contact.§]9§;
                                    if(!((_loc12_ = _loc13_.§1!>§).§0" § & b2Body.§]9§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§0" § |= b2Body.§]9§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§ X§;
                           }
                           _loc14_ = _loc2_.§5G§;
                           while(_loc14_)
                           {
                              if(_loc14_.§7!>§.§[!a§ != true)
                              {
                                 if((_loc12_ = _loc14_.§1!>§).§0!h§() != false)
                                 {
                                    _loc4_.§@!p§(_loc14_.§7!>§);
                                    _loc14_.§7!>§.§[!a§ = true;
                                    if(!(_loc12_.§0" § & b2Body.§]9§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§0" § |= b2Body.§]9§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§ X§;
                           }
                        }
                     }
                     _loc4_.§3!N§(param1,this.§>!V§,this.§%!"§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§"s§)
                     {
                        _loc2_ = _loc4_.§5K§[_loc11_];
                        if(_loc2_.§@!N§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§0" § &= ~b2Body.§]9§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§+!o§;
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
         _loc2_ = this.§&E§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§0!h§() == false))
            {
               if(_loc2_.§@!N§() != b2Body.b2_staticBody)
               {
                  _loc2_.§null§();
               }
            }
            _loc2_ = _loc2_.§+!o§;
         }
         this.§9>§.§^!A§();
      }
      
      b2internal function §!!'§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§!!W§).§>`§(this.§"s§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§9>§.§0Q§,this.§4!<§);
         var _loc10_:Vector.<b2Body> = §3!Y§;
         _loc2_ = this.§&E§;
         while(_loc2_)
         {
            _loc2_.§0" § &= ~b2Body.§]9§;
            _loc2_.m_sweep.§8!L§ = 0;
            _loc2_ = _loc2_.§+!o§;
         }
         _loc11_ = this.§1!Z§;
         while(_loc11_)
         {
            _loc11_.§0" § &= ~(b2Contact.§-j§ | b2Contact.§]9§);
            _loc11_.§0H§ = 1;
            _loc11_ = _loc11_.§+!o§;
         }
         _loc8_ = this.§5G§;
         while(_loc8_)
         {
            _loc8_.§[!a§ = false;
            _loc8_ = _loc8_.§+!o§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§1!Z§;
            while(_loc11_)
            {
               if(!(_loc11_.§]w§() == true || _loc11_.§0!?§() == false || _loc11_.§9a§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§0" § & b2Contact.§-j§)
                  {
                     _loc19_ = _loc11_.§0H§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§;"B§;
                     _loc4_ = _loc11_.§8q§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§@!N§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§@!N§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr658:
                        _loc11_ = _loc11_.§+!o§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§8!L§;
                     if(_loc5_.m_sweep.§8!L§ < _loc6_.m_sweep.§8!L§)
                     {
                        _loc20_ = _loc6_.m_sweep.§8!L§;
                        _loc5_.m_sweep.§,s§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§8!L§ < _loc5_.m_sweep.§8!L§)
                     {
                        _loc20_ = _loc5_.m_sweep.§8!L§;
                        _loc6_.m_sweep.§,s§(_loc20_);
                     }
                     _loc19_ = _loc11_.§?!l§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§0H§ = _loc19_;
                     _loc11_.§0" § |= b2Contact.§-j§;
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
            _loc3_ = _loc12_.§;"B§;
            _loc4_ = _loc12_.§8q§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §!_§.Set(_loc5_.m_sweep);
            §,"%§.Set(_loc6_.m_sweep);
            _loc5_.§,s§(_loc13_);
            _loc6_.§,s§(_loc13_);
            _loc12_.§]P§(this.§9>§.§0Q§);
            _loc12_.§0" § &= ~b2Contact.§-j§;
            if(_loc12_.§]w§() == true || _loc12_.§0!?§() == false)
            {
               _loc5_.m_sweep.Set(§!_§);
               _loc6_.m_sweep.Set(§,"%§);
               _loc5_.§6!+§();
               _loc6_.§6!+§();
            }
            else if(_loc12_.§]Q§() != false)
            {
               if((_loc14_ = _loc5_).§@!N§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§["5§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§0" § |= b2Body.§]9§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§!"C§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§@!N§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§1!Z§;
                     while(_loc7_)
                     {
                        if(_loc9_.§3!G§ == _loc9_.§#P§)
                        {
                           break;
                        }
                        if(!(_loc7_.§%!b§.§0" § & b2Contact.§]9§))
                        {
                           if(!(_loc7_.§%!b§.§]w§() == true || _loc7_.§%!b§.§0!?§() == false || _loc7_.§%!b§.§]Q§() == false))
                           {
                              _loc9_.§'0§(_loc7_.§%!b§);
                              _loc7_.§%!b§.§0" § |= b2Contact.§]9§;
                              if(!((_loc22_ = _loc7_.§1!>§).§0" § & b2Body.§]9§))
                              {
                                 if(_loc22_.§@!N§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§,s§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§0" § |= b2Body.§]9§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§ X§;
                     }
                     _loc21_ = _loc2_.§5G§;
                     while(_loc21_)
                     {
                        if(_loc9_.§1!s§ != _loc9_.§!!v§)
                        {
                           if(_loc21_.§7!>§.§[!a§ != true)
                           {
                              if((_loc22_ = _loc21_.§1!>§).§0!h§() != false)
                              {
                                 _loc9_.§@!p§(_loc21_.§7!>§);
                                 _loc21_.§7!>§.§[!a§ = true;
                                 if(!(_loc22_.§0" § & b2Body.§]9§))
                                 {
                                    if(_loc22_.§@!N§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§,s§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§0" § |= b2Body.§]9§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§ X§;
                     }
                  }
               }
               (_loc17_ = §#!v§).§`m§ = false;
               _loc17_.§2^§ = (1 - _loc13_) * param1.§2^§;
               _loc17_.§,t§ = 1 / _loc17_.§2^§;
               _loc17_.§-I§ = 1;
               _loc17_.§3Y§ = param1.§3Y§;
               _loc17_.§3]§ = param1.§3]§;
               _loc9_.§!!'§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§"s§)
               {
                  _loc2_ = _loc9_.§5K§[_loc18_];
                  _loc2_.§0" § &= ~b2Body.§]9§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§@!N§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§null§();
                        _loc7_ = _loc2_.§1!Z§;
                        while(_loc7_)
                        {
                           _loc7_.§%!b§.§0" § &= ~b2Contact.§-j§;
                           _loc7_ = _loc7_.§ X§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§3!G§)
               {
                  _loc11_ = _loc9_.get[_loc18_];
                  _loc11_.§0" § &= ~(b2Contact.§-j§ | b2Contact.§]9§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§1!s§)
               {
                  (_loc8_ = _loc9_.§>!o§[_loc18_]).§[!a§ = false;
                  _loc18_++;
               }
               this.§9>§.§^!A§();
            }
         }
      }
      
      b2internal function §0!i§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§#n§();
         var _loc3_:b2Body = param1.§1x§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §9s§;
         switch(param1.§0w§)
         {
            case b2Joint.§4!Z§:
               this.§ "!§.§[!d§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§%!0§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§,!R§();
               _loc13_ = _loc11_.§6=§();
               this.§ "!§.§[!d§(_loc12_,_loc8_,_loc10_);
               this.§ "!§.§[!d§(_loc13_,_loc9_,_loc10_);
               this.§ "!§.§[!d§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§in §:
               this.§ "!§.§[!d§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§ "!§.§[!d§(_loc6_,_loc8_,_loc10_);
               }
               this.§ "!§.§[!d§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§ "!§.§[!d§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §-b§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§0w§)
         {
            case b2Shape.§-M§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§=&§(param2,_loc4_.§1Q§);
               _loc6_ = _loc4_.§7!m§;
               _loc7_ = param2.R.col1;
               this.§ "!§.§+"2§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§4"+§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§`!E§();
               _loc11_ = _loc9_.§`!b§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§=&§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§ "!§.§2!g§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§0"§:
               _loc13_ = param1 as b2EdgeShape;
               this.§ "!§.§[!d§(b2Math.§=&§(param2,_loc13_.GetVertex1()),b2Math.§=&§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

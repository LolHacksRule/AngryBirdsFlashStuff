package §=!c§
{
   import §"s§.*;
   import §-j§.*;
   import §2"%§.*;
   import §7!F§.*;
   import §[K§.*;
   import §[e§.*;
   import §`n§.b2Controller;
   import §`n§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §8R§:b2Transform = new b2Transform();
      
      private static var §'"#§:b2Sweep = new b2Sweep();
      
      private static var §5!S§:b2Sweep = new b2Sweep();
      
      private static var §8^§:b2TimeStep = new b2TimeStep();
      
      private static var §-P§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §'X§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §3!r§:Boolean;
      
      private static var §&d§:Boolean;
      
      public static const §3!g§:int = 1;
      
      public static const §,2§:int = 2;
       
      
      private var §,!k§:Vector.<b2Body>;
      
      b2internal var §8!5§:int;
      
      b2internal var §<! §:b2ContactManager;
      
      private var §'y§:b2ContactSolver;
      
      private var §#<§:b2Island;
      
      b2internal var §@4§:b2Body;
      
      private var §,c§:b2Joint;
      
      b2internal var §[!v§:b2Contact;
      
      private var §'![§:int;
      
      b2internal var §+h§:int;
      
      private var §1n§:int;
      
      private var §1!Z§:b2Controller;
      
      private var §!!N§:int;
      
      private var §8!G§:b2Vec2;
      
      private var §&N§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §^1§:b2DestructionListener;
      
      private var §9"6§:b2DebugDraw;
      
      private var §'!i§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§,!k§ = new Vector.<b2Body>();
         this.§<! § = new b2ContactManager();
         this.§'y§ = new b2ContactSolver();
         this.§#<§ = new b2Island();
         super();
         this.§^1§ = null;
         this.§9"6§ = null;
         this.§@4§ = null;
         this.§[!v§ = null;
         this.§,c§ = null;
         this.§1!Z§ = null;
         this.§'![§ = 0;
         this.§+h§ = 0;
         this.§1n§ = 0;
         this.§!!N§ = 0;
         §3!r§ = true;
         §&d§ = true;
         this.§&N§ = param2;
         this.§8!G§ = param1;
         this.§'!i§ = 0;
         this.§<! §.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function §%!Q§(param1:b2DestructionListener) : void
      {
         this.§^1§ = param1;
      }
      
      public function §+P§(param1:b2ContactFilter) : void
      {
         this.§<! §.§1h§ = param1;
      }
      
      public function §-d§(param1:b2ContactListener) : void
      {
         this.§<! §.§+"-§ = param1;
      }
      
      public function §`m§(param1:b2DebugDraw) : void
      {
         this.§9"6§ = param1;
      }
      
      public function §#",§(param1:§3!6§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§3!6§ = this.§<! §.§>T§;
         this.§<! §.§>T§ = param1;
         var _loc3_:b2Body = this.§@4§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§5!k§;
            while(_loc4_)
            {
               _loc4_.§]!L§ = param1.§3!?§(_loc2_.§?!d§(_loc4_.§]!L§),_loc4_);
               _loc4_ = _loc4_.§4!c§;
            }
            _loc3_ = _loc3_.§4!c§;
         }
      }
      
      public function §@!I§() : void
      {
         this.§<! §.§>T§.§@!I§();
      }
      
      public function §2W§() : int
      {
         return this.§<! §.§>T§.§2W§();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.§"q§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§^!`§ = null;
         _loc2_.§4!c§ = this.§@4§;
         if(this.§@4§)
         {
            this.§@4§.§^!`§ = _loc2_;
         }
         this.§@4§ = _loc2_;
         ++this.§'![§;
         return _loc2_;
      }
      
      public function §0h§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§"q§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§,c§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.next;
            if(this.§^1§)
            {
               this.§^1§.§`[§(_loc6_.§!!q§);
            }
            this.§+Y§(_loc6_.§!!q§);
         }
         var _loc3_:b2ControllerEdge = param1.§1!Z§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§#3§;
            _loc7_.controller.§ if§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§[!v§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.next;
            this.§<! §.§6!j§(_loc8_.§`Z§);
         }
         param1.§[!v§ = null;
         var _loc5_:b2Fixture = param1.§5!k§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§4!c§;
            if(this.§^1§)
            {
               this.§^1§.§%"2§(_loc9_);
            }
            _loc9_.§<9§(this.§<! §.§>T§);
            _loc9_.§6!j§();
         }
         param1.§5!k§ = null;
         param1.§3c§ = 0;
         if(param1.§^!`§)
         {
            param1.§^!`§.§4!c§ = param1.§4!c§;
         }
         if(param1.§4!c§)
         {
            param1.§4!c§.§^!`§ = param1.§^!`§;
         }
         if(param1 == this.§@4§)
         {
            this.§@4§ = param1.§4!c§;
         }
         --this.§'![§;
      }
      
      public function §^"%§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§<!n§(param1,null);
         _loc2_.§^!`§ = null;
         _loc2_.§4!c§ = this.§,c§;
         if(this.§,c§)
         {
            this.§,c§.§^!`§ = _loc2_;
         }
         this.§,c§ = _loc2_;
         ++this.§1n§;
         _loc2_.§9",§.§!!q§ = _loc2_;
         _loc2_.§9",§.§!!9§ = _loc2_.§2z§;
         _loc2_.§9",§.§]K§ = null;
         _loc2_.§9",§.next = _loc2_.§;l§.§,c§;
         if(_loc2_.§;l§.§,c§)
         {
            _loc2_.§;l§.§,c§.§]K§ = _loc2_.§9",§;
         }
         _loc2_.§;l§.§,c§ = _loc2_.§9",§;
         _loc2_.§+!5§.§!!q§ = _loc2_;
         _loc2_.§+!5§.§!!9§ = _loc2_.§;l§;
         _loc2_.§+!5§.§]K§ = null;
         _loc2_.§+!5§.next = _loc2_.§2z§.§,c§;
         if(_loc2_.§2z§.§,c§)
         {
            _loc2_.§2z§.§,c§.§]K§ = _loc2_.§+!5§;
         }
         _loc2_.§2z§.§,c§ = _loc2_.§+!5§;
         var _loc3_:b2Body = param1.§%!T§;
         var _loc4_:b2Body = param1.§,d§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§^!8§();
            while(_loc5_)
            {
               if(_loc5_.§!!9§ == _loc3_)
               {
                  _loc5_.§`Z§.§!!i§();
               }
               _loc5_ = _loc5_.next;
            }
         }
         return _loc2_;
      }
      
      public function §+Y§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§^I§;
         if(param1.§^!`§)
         {
            param1.§^!`§.§4!c§ = param1.§4!c§;
         }
         if(param1.§4!c§)
         {
            param1.§4!c§.§^!`§ = param1.§^!`§;
         }
         if(param1 == this.§,c§)
         {
            this.§,c§ = param1.§4!c§;
         }
         var _loc3_:b2Body = param1.§;l§;
         var _loc4_:b2Body = param1.§2z§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§9",§.§]K§)
         {
            param1.§9",§.§]K§.next = param1.§9",§.next;
         }
         if(param1.§9",§.next)
         {
            param1.§9",§.next.§]K§ = param1.§9",§.§]K§;
         }
         if(param1.§9",§ == _loc3_.§,c§)
         {
            _loc3_.§,c§ = param1.§9",§.next;
         }
         param1.§9",§.§]K§ = null;
         param1.§9",§.next = null;
         if(param1.§+!5§.§]K§)
         {
            param1.§+!5§.§]K§.next = param1.§+!5§.next;
         }
         if(param1.§+!5§.next)
         {
            param1.§+!5§.next.§]K§ = param1.§+!5§.§]K§;
         }
         if(param1.§+!5§ == _loc4_.§,c§)
         {
            _loc4_.§,c§ = param1.§+!5§.next;
         }
         param1.§+!5§.§]K§ = null;
         param1.§+!5§.next = null;
         b2Joint.§6!j§(param1,null);
         --this.§1n§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§^!8§();
            while(_loc5_)
            {
               if(_loc5_.§!!9§ == _loc3_)
               {
                  _loc5_.§`Z§.§!!i§();
               }
               _loc5_ = _loc5_.next;
            }
         }
      }
      
      public function §&e§(param1:b2Controller) : b2Controller
      {
         param1.§4!c§ = this.§1!Z§;
         param1.§^!`§ = null;
         this.§1!Z§ = param1;
         param1.m_world = this;
         ++this.§!!N§;
         return param1;
      }
      
      public function §@y§(param1:b2Controller) : void
      {
         if(param1.§^!`§)
         {
            param1.§^!`§.§4!c§ = param1.§4!c§;
         }
         if(param1.§4!c§)
         {
            param1.§4!c§.§^!`§ = param1.§^!`§;
         }
         if(this.§1!Z§ == param1)
         {
            this.§1!Z§ = param1.§4!c§;
         }
         --this.§!!N§;
      }
      
      public function §^B§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§4!c§ = this.§1!Z§;
         param1.§^!`§ = null;
         if(this.§1!Z§)
         {
            this.§1!Z§.§^!`§ = param1;
         }
         this.§1!Z§ = param1;
         ++this.§!!N§;
         param1.m_world = this;
         return param1;
      }
      
      public function §7" §(param1:b2Controller) : void
      {
         param1.§<"§();
         if(param1.§4!c§)
         {
            param1.§4!c§.§^!`§ = param1.§^!`§;
         }
         if(param1.§^!`§)
         {
            param1.§^!`§.§4!c§ = param1.§4!c§;
         }
         if(param1 == this.§1!Z§)
         {
            this.§1!Z§ = param1.§4!c§;
         }
         --this.§!!N§;
      }
      
      public function §[!S§(param1:Boolean) : void
      {
         §3!r§ = param1;
      }
      
      public function §2!]§(param1:Boolean) : void
      {
         §&d§ = param1;
      }
      
      public function §<!<§() : int
      {
         return this.§'![§;
      }
      
      public function §`X§() : int
      {
         return this.§1n§;
      }
      
      public function §[!-§() : int
      {
         return this.§+h§;
      }
      
      public function §+!U§(param1:b2Vec2) : void
      {
         this.§8!G§ = param1;
      }
      
      public function §2!c§() : b2Vec2
      {
         return this.§8!G§;
      }
      
      public function §59§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §&"%§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§8!5§ & §3!g§)
         {
            this.§<! §.§?B§();
            this.§8!5§ &= ~§3!g§;
         }
         this.§8!5§ |= §,2§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§>!W§ = param1;
         _loc4_.§3!n§ = param2;
         _loc4_.§6!e§ = param3;
         if(param1 > 0)
         {
            _loc4_.§%",§ = 1 / param1;
         }
         else
         {
            _loc4_.§%",§ = 0;
         }
         _loc4_.§1!+§ = this.§'!i§ * param1;
         _loc4_.§8"4§ = §3!r§;
         this.§<! §.§]!p§();
         if(_loc4_.§>!W§ > 0)
         {
            this.§;%§(_loc4_);
         }
         if(§&d§ && _loc4_.§>!W§ > 0)
         {
            this.§;N§(_loc4_);
         }
         if(_loc4_.§>!W§ > 0)
         {
            this.§'!i§ = _loc4_.§%",§;
         }
         this.§8!5§ &= ~§,2§;
      }
      
      public function §0!I§() : void
      {
         var _loc1_:b2Body = this.§@4§;
         while(_loc1_)
         {
            _loc1_.§=D§.§3S§();
            _loc1_.§#!x§ = 0;
            _loc1_ = _loc1_.§4!c§;
         }
      }
      
      public function §<B§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§3!6§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§9"6§ == null)
         {
            return;
         }
         this.§9"6§.§#U§.graphics.clear();
         var _loc1_:uint = this.§9"6§.§6n§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§<]§)
         {
            _loc3_ = this.§@4§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§6[§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§8!_§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§&!u§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§8!_§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§&!u§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§8!_§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§8!_§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§8!_§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§4!c§;
               }
               _loc3_ = _loc3_.§4!c§;
            }
         }
         if(_loc1_ & b2DebugDraw.§ ! §)
         {
            _loc6_ = this.§,c§;
            while(_loc6_)
            {
               this.§@!,§(_loc6_);
               _loc6_ = _loc6_.§4!c§;
            }
         }
         if(_loc1_ & b2DebugDraw.§<C§)
         {
            _loc16_ = this.§1!Z§;
            while(_loc16_)
            {
               _loc16_.§]H§(this.§9"6§);
               _loc16_ = _loc16_.§4!c§;
            }
         }
         if(_loc1_ & b2DebugDraw.§&"4§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§<! §.§[!v§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§^h§();
               _loc19_ = _loc17_.§9!v§();
               _loc20_ = _loc18_.§6"6§().§;!M§();
               _loc21_ = _loc19_.§6"6§().§;!M§();
               this.§9"6§.§-"2§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§<b§();
            }
         }
         if(_loc1_ & b2DebugDraw.§,"+§)
         {
            _loc7_ = this.§<! §.§>T§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§@4§;
            while(_loc3_)
            {
               if(_loc3_.§6[§() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§?!d§(_loc4_.§]!L§);
                     _loc14_[0].Set(_loc22_.§use§.x,_loc22_.§use§.y);
                     _loc14_[1].Set(_loc22_.§6&§.x,_loc22_.§use§.y);
                     _loc14_[2].Set(_loc22_.§6&§.x,_loc22_.§6&§.y);
                     _loc14_[3].Set(_loc22_.§use§.x,_loc22_.§6&§.y);
                     this.§9"6§.§6"7§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§<b§();
                  }
               }
               _loc3_ = _loc3_.§<b§();
            }
         }
         if(_loc1_ & b2DebugDraw.§8!?§)
         {
            _loc3_ = this.§@4§;
            while(_loc3_)
            {
               (_loc11_ = §8R§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§9c§();
               this.§9"6§.§<#§(_loc11_);
               _loc3_ = _loc3_.§4!c§;
            }
         }
      }
      
      public function §0F§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§3!6§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§<! §.§>T§;
         broadPhase.§ " §(WorldQueryWrapper,aabb);
      }
      
      public function §9s§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§3!6§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§^s§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§0!_§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§4>§();
         }
         broadPhase = this.§<! §.§>T§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§ " §(WorldQueryWrapper,aabb);
      }
      
      public function §!"2§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§3!6§ = null;
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
         broadPhase = this.§<! §.§>T§;
         var aabb:b2AABB = new b2AABB();
         aabb.§use§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§6&§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§ " §(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§3!6§ = null;
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
            return param1.§+"#§;
         };
         broadPhase = this.§<! §.§>T§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §["-§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §6Y§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §<n§() : b2Body
      {
         return this.§@4§;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.§,c§;
      }
      
      public function §^!8§() : b2Contact
      {
         return this.§[!v§;
      }
      
      public function §"q§() : Boolean
      {
         return (this.§8!5§ & §,2§) > 0;
      }
      
      b2internal function §;%§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§1!Z§;
         while(_loc3_)
         {
            _loc3_.§&"%§(param1);
            _loc3_ = _loc3_.§4!c§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§#<§).§3!,§(this.§'![§,this.§+h§,this.§1n§,null,this.§<! §.§+"-§,this.§'y§);
         _loc2_ = this.§@4§;
         while(_loc2_)
         {
            _loc2_.§8!5§ &= ~b2Body.§[x§;
            _loc2_ = _loc2_.§4!c§;
         }
         var _loc5_:b2Contact = this.§[!v§;
         while(_loc5_)
         {
            _loc5_.§8!5§ &= ~b2Contact.§[x§;
            _loc5_ = _loc5_.§4!c§;
         }
         var _loc6_:b2Joint = this.§,c§;
         while(_loc6_)
         {
            _loc6_.§ !@§ = false;
            _loc6_ = _loc6_.§4!c§;
         }
         var _loc7_:int = this.§'![§;
         var _loc8_:Vector.<b2Body> = this.§,!k§;
         var _loc9_:b2Body = this.§@4§;
         while(_loc9_)
         {
            if(!(_loc9_.§8!5§ & b2Body.§[x§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§6[§() == false))
               {
                  if(_loc9_.§&!u§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§<"§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§8!5§ |= b2Body.§[x§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§78§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§&!u§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§[!v§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§`Z§.§8!5§ & b2Contact.§[x§))
                              {
                                 if(!(_loc13_.§`Z§.§+!E§() == true || _loc13_.§`Z§.§<y§() == false || _loc13_.§`Z§.§#!f§() == false))
                                 {
                                    _loc4_.§<!"§(_loc13_.§`Z§);
                                    _loc13_.§`Z§.§8!5§ |= b2Contact.§[x§;
                                    if(!((_loc12_ = _loc13_.§!!9§).§8!5§ & b2Body.§[x§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§8!5§ |= b2Body.§[x§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.next;
                           }
                           _loc14_ = _loc2_.§,c§;
                           while(_loc14_)
                           {
                              if(_loc14_.§!!q§.§ !@§ != true)
                              {
                                 if((_loc12_ = _loc14_.§!!9§).§6[§() != false)
                                 {
                                    _loc4_.§?t§(_loc14_.§!!q§);
                                    _loc14_.§!!q§.§ !@§ = true;
                                    if(!(_loc12_.§8!5§ & b2Body.§[x§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§8!5§ |= b2Body.§[x§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.next;
                           }
                        }
                     }
                     _loc4_.§;%§(param1,this.§8!G§,this.§&N§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§'![§)
                     {
                        _loc2_ = _loc4_.§5S§[_loc11_];
                        if(_loc2_.§&!u§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§8!5§ &= ~b2Body.§[x§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§4!c§;
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
         _loc2_ = this.§@4§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§6[§() == false))
            {
               if(_loc2_.§&!u§() != b2Body.b2_staticBody)
               {
                  _loc2_.§6_§();
               }
            }
            _loc2_ = _loc2_.§4!c§;
         }
         this.§<! §.§?B§();
      }
      
      b2internal function §;N§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§#<§).§3!,§(this.§'![§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§<! §.§+"-§,this.§'y§);
         var _loc10_:Vector.<b2Body> = §-P§;
         _loc2_ = this.§@4§;
         while(_loc2_)
         {
            _loc2_.§8!5§ &= ~b2Body.§[x§;
            _loc2_.m_sweep.§&;§ = 0;
            _loc2_ = _loc2_.§4!c§;
         }
         _loc11_ = this.§[!v§;
         while(_loc11_)
         {
            _loc11_.§8!5§ &= ~(b2Contact.§&!i§ | b2Contact.§[x§);
            _loc11_.§&b§ = 1;
            _loc11_ = _loc11_.§4!c§;
         }
         _loc8_ = this.§,c§;
         while(_loc8_)
         {
            _loc8_.§ !@§ = false;
            _loc8_ = _loc8_.§4!c§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§[!v§;
            while(_loc11_)
            {
               if(!(_loc11_.§+!E§() == true || _loc11_.§<y§() == false || _loc11_.§;!5§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§8!5§ & b2Contact.§&!i§)
                  {
                     _loc19_ = _loc11_.§&b§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§`!P§;
                     _loc4_ = _loc11_.§%!§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§&!u§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§&!u§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr634:
                        _loc11_ = _loc11_.§4!c§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§&;§;
                     if(_loc5_.m_sweep.§&;§ < _loc6_.m_sweep.§&;§)
                     {
                        _loc20_ = _loc6_.m_sweep.§&;§;
                        _loc5_.m_sweep.§<,§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§&;§ < _loc5_.m_sweep.§&;§)
                     {
                        _loc20_ = _loc5_.m_sweep.§&;§;
                        _loc6_.m_sweep.§<,§(_loc20_);
                     }
                     _loc19_ = _loc11_.§>!-§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§&b§ = _loc19_;
                     _loc11_.§8!5§ |= b2Contact.§&!i§;
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
            _loc3_ = _loc12_.§`!P§;
            _loc4_ = _loc12_.§%!§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §'"#§.Set(_loc5_.m_sweep);
            §5!S§.Set(_loc6_.m_sweep);
            _loc5_.§<,§(_loc13_);
            _loc6_.§<,§(_loc13_);
            _loc12_.§]!A§(this.§<! §.§+"-§);
            _loc12_.§8!5§ &= ~b2Contact.§&!i§;
            if(_loc12_.§+!E§() == true || _loc12_.§<y§() == false)
            {
               _loc5_.m_sweep.Set(§'"#§);
               _loc6_.m_sweep.Set(§5!S§);
               _loc5_.§<!0§();
               _loc6_.§<!0§();
            }
            else if(_loc12_.§#!f§() != false)
            {
               if((_loc14_ = _loc5_).§&!u§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§<"§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§8!5§ |= b2Body.§[x§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§78§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§&!u§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§[!v§;
                     while(_loc7_)
                     {
                        if(_loc9_.§+h§ == _loc9_.§<"-§)
                        {
                           break;
                        }
                        if(!(_loc7_.§`Z§.§8!5§ & b2Contact.§[x§))
                        {
                           if(!(_loc7_.§`Z§.§+!E§() == true || _loc7_.§`Z§.§<y§() == false || _loc7_.§`Z§.§#!f§() == false))
                           {
                              _loc9_.§<!"§(_loc7_.§`Z§);
                              _loc7_.§`Z§.§8!5§ |= b2Contact.§[x§;
                              if(!((_loc22_ = _loc7_.§!!9§).§8!5§ & b2Body.§[x§))
                              {
                                 if(_loc22_.§&!u§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§<,§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§8!5§ |= b2Body.§[x§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.next;
                     }
                     _loc21_ = _loc2_.§,c§;
                     while(_loc21_)
                     {
                        if(_loc9_.§1n§ != _loc9_.§<f§)
                        {
                           if(_loc21_.§!!q§.§ !@§ != true)
                           {
                              if((_loc22_ = _loc21_.§!!9§).§6[§() != false)
                              {
                                 _loc9_.§?t§(_loc21_.§!!q§);
                                 _loc21_.§!!q§.§ !@§ = true;
                                 if(!(_loc22_.§8!5§ & b2Body.§[x§))
                                 {
                                    if(_loc22_.§&!u§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§<,§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§8!5§ |= b2Body.§[x§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.next;
                     }
                  }
               }
               (_loc17_ = §8^§).§8"4§ = false;
               _loc17_.§>!W§ = (1 - _loc13_) * param1.§>!W§;
               _loc17_.§%",§ = 1 / _loc17_.§>!W§;
               _loc17_.§1!+§ = 1;
               _loc17_.§3!n§ = param1.§3!n§;
               _loc17_.§6!e§ = param1.§6!e§;
               _loc9_.§;N§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§'![§)
               {
                  _loc2_ = _loc9_.§5S§[_loc18_];
                  _loc2_.§8!5§ &= ~b2Body.§[x§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§&!u§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§6_§();
                        _loc7_ = _loc2_.§[!v§;
                        while(_loc7_)
                        {
                           _loc7_.§`Z§.§8!5§ &= ~b2Contact.§&!i§;
                           _loc7_ = _loc7_.next;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§+h§)
               {
                  _loc11_ = _loc9_.§<!&§[_loc18_];
                  _loc11_.§8!5§ &= ~(b2Contact.§&!i§ | b2Contact.§[x§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§1n§)
               {
                  (_loc8_ = _loc9_.§?!Z§[_loc18_]).§ !@§ = false;
                  _loc18_++;
               }
               this.§<! §.§?B§();
            }
         }
      }
      
      b2internal function §@!,§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§,f§();
         var _loc3_:b2Body = param1.§ e§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §'X§;
         switch(param1.§5"6§)
         {
            case b2Joint.§<!P§:
               this.§9"6§.§-"2§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§+!+§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§9!s§();
               _loc13_ = _loc11_.§'"8§();
               this.§9"6§.§-"2§(_loc12_,_loc8_,_loc10_);
               this.§9"6§.§-"2§(_loc13_,_loc9_,_loc10_);
               this.§9"6§.§-"2§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§@!3§:
               this.§9"6§.§-"2§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§9"6§.§-"2§(_loc6_,_loc8_,_loc10_);
               }
               this.§9"6§.§-"2§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§9"6§.§-"2§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §8!_§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§5"6§)
         {
            case b2Shape.§?!%§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§"+§(param2,_loc4_.§5",§);
               _loc6_ = _loc4_.§-!D§;
               _loc7_ = param2.R.col1;
               this.§9"6§.§]R§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§+"0§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§#h§();
               _loc11_ = _loc9_.§@!L§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§"+§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§9"6§.§"o§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§%c§:
               _loc13_ = param1 as b2EdgeShape;
               this.§9"6§.§-"2§(b2Math.§"+§(param2,_loc13_.GetVertex1()),b2Math.§"+§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

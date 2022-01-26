package §?!F§
{
   import §%]§.*;
   import §,!3§.*;
   import §2!@§.b2Controller;
   import §2!@§.b2ControllerEdge;
   import §3'§.*;
   import §=u§.*;
   import §@!]§.*;
   import §@^§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §1!B§:b2Transform = new b2Transform();
      
      private static var §4!4§:b2Sweep = new b2Sweep();
      
      private static var §&e§:b2Sweep = new b2Sweep();
      
      private static var §`?§:b2TimeStep = new b2TimeStep();
      
      private static var §!c§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §-T§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §2!c§:Boolean;
      
      private static var §^!?§:Boolean;
      
      public static const §9!#§:int = 1;
      
      public static const §6§:int = 2;
       
      
      private var §[!?§:Vector.<b2Body>;
      
      b2internal var §+o§:int;
      
      b2internal var §@!C§:b2ContactManager;
      
      private var §2T§:b2ContactSolver;
      
      private var §^!X§:b2Island;
      
      b2internal var §3!1§:b2Body;
      
      private var §]!'§:b2Joint;
      
      b2internal var §+!Z§:b2Contact;
      
      private var §]+§:int;
      
      b2internal var §^!a§:int;
      
      private var § !3§:int;
      
      private var §2!4§:b2Controller;
      
      private var §>b§:int;
      
      private var §?N§:b2Vec2;
      
      private var §+!I§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §`!E§:b2DestructionListener;
      
      private var §&!C§:b2DebugDraw;
      
      private var §2W§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§[!?§ = new Vector.<b2Body>();
         this.§@!C§ = new b2ContactManager();
         this.§2T§ = new b2ContactSolver();
         this.§^!X§ = new b2Island();
         super();
         this.§`!E§ = null;
         this.§&!C§ = null;
         this.§3!1§ = null;
         this.§+!Z§ = null;
         this.§]!'§ = null;
         this.§2!4§ = null;
         this.§]+§ = 0;
         this.§^!a§ = 0;
         this.§ !3§ = 0;
         this.§>b§ = 0;
         §2!c§ = true;
         §^!?§ = true;
         this.§+!I§ = param2;
         this.§?N§ = param1;
         this.§2W§ = 0;
         this.§@!C§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§7!c§(_loc3_);
      }
      
      public function §?I§(param1:b2DestructionListener) : void
      {
         this.§`!E§ = param1;
      }
      
      public function §'g§(param1:b2ContactFilter) : void
      {
         this.§@!C§.§5D§ = param1;
      }
      
      public function §9![§(param1:b2ContactListener) : void
      {
         this.§@!C§.§+!"§ = param1;
      }
      
      public function §4!C§(param1:b2DebugDraw) : void
      {
         this.§&!C§ = param1;
      }
      
      public function §>L§(param1:§4!6§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§4!6§ = this.§@!C§.§%Z§;
         this.§@!C§.§%Z§ = param1;
         var _loc3_:b2Body = this.§3!1§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§?M§;
            while(_loc4_)
            {
               _loc4_.§1Z§ = param1.§]!G§(_loc2_.§@&§(_loc4_.§1Z§),_loc4_);
               _loc4_ = _loc4_.§+[§;
            }
            _loc3_ = _loc3_.§+[§;
         }
      }
      
      public function §%!S§() : void
      {
         this.§@!C§.§%Z§.§%!S§();
      }
      
      public function §'!P§() : int
      {
         return this.§@!C§.§%Z§.§'!P§();
      }
      
      public function §7!c§(param1:b2BodyDef) : b2Body
      {
         if(this.§&F§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§8§ = null;
         _loc2_.§+[§ = this.§3!1§;
         if(this.§3!1§)
         {
            this.§3!1§.§8§ = _loc2_;
         }
         this.§3!1§ = _loc2_;
         ++this.§]+§;
         return _loc2_;
      }
      
      public function §9G§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§&F§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§]!'§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§"R§;
            if(this.§`!E§)
            {
               this.§`!E§.§9!Y§(_loc6_.§!!F§);
            }
            this.§3!Q§(_loc6_.§!!F§);
         }
         var _loc3_:b2ControllerEdge = param1.§2!4§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§??§;
            _loc7_.§[>§.§[!c§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§+!Z§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§"R§;
            this.§@!C§.§[!,§(_loc8_.§;![§);
         }
         param1.§+!Z§ = null;
         var _loc5_:b2Fixture = param1.§?M§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§+[§;
            if(this.§`!E§)
            {
               this.§`!E§.§4!5§(_loc9_);
            }
            _loc9_.§&=§(this.§@!C§.§%Z§);
            _loc9_.§[!,§();
         }
         param1.§?M§ = null;
         param1.§!!2§ = 0;
         if(param1.§8§)
         {
            param1.§8§.§+[§ = param1.§+[§;
         }
         if(param1.§+[§)
         {
            param1.§+[§.§8§ = param1.§8§;
         }
         if(param1 == this.§3!1§)
         {
            this.§3!1§ = param1.§+[§;
         }
         --this.§]+§;
      }
      
      public function §!t§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§<!E§(param1,null);
         _loc2_.§8§ = null;
         _loc2_.§+[§ = this.§]!'§;
         if(this.§]!'§)
         {
            this.§]!'§.§8§ = _loc2_;
         }
         this.§]!'§ = _loc2_;
         ++this.§ !3§;
         _loc2_.§0!Z§.§!!F§ = _loc2_;
         _loc2_.§0!Z§.§%!R§ = _loc2_.§2!=§;
         _loc2_.§0!Z§.§>[§ = null;
         _loc2_.§0!Z§.§"R§ = _loc2_.§]!O§.§]!'§;
         if(_loc2_.§]!O§.§]!'§)
         {
            _loc2_.§]!O§.§]!'§.§>[§ = _loc2_.§0!Z§;
         }
         _loc2_.§]!O§.§]!'§ = _loc2_.§0!Z§;
         _loc2_.§ !I§.§!!F§ = _loc2_;
         _loc2_.§ !I§.§%!R§ = _loc2_.§]!O§;
         _loc2_.§ !I§.§>[§ = null;
         _loc2_.§ !I§.§"R§ = _loc2_.§2!=§.§]!'§;
         if(_loc2_.§2!=§.§]!'§)
         {
            _loc2_.§2!=§.§]!'§.§>[§ = _loc2_.§ !I§;
         }
         _loc2_.§2!=§.§]!'§ = _loc2_.§ !I§;
         var _loc3_:b2Body = param1.§<!&§;
         var _loc4_:b2Body = param1.§!8§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§!q§();
            while(_loc5_)
            {
               if(_loc5_.§%!R§ == _loc3_)
               {
                  _loc5_.§;![§.§,!'§();
               }
               _loc5_ = _loc5_.§"R§;
            }
         }
         return _loc2_;
      }
      
      public function §3!Q§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§8p§;
         if(param1.§8§)
         {
            param1.§8§.§+[§ = param1.§+[§;
         }
         if(param1.§+[§)
         {
            param1.§+[§.§8§ = param1.§8§;
         }
         if(param1 == this.§]!'§)
         {
            this.§]!'§ = param1.§+[§;
         }
         var _loc3_:b2Body = param1.§]!O§;
         var _loc4_:b2Body = param1.§2!=§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§0!Z§.§>[§)
         {
            param1.§0!Z§.§>[§.§"R§ = param1.§0!Z§.§"R§;
         }
         if(param1.§0!Z§.§"R§)
         {
            param1.§0!Z§.§"R§.§>[§ = param1.§0!Z§.§>[§;
         }
         if(param1.§0!Z§ == _loc3_.§]!'§)
         {
            _loc3_.§]!'§ = param1.§0!Z§.§"R§;
         }
         param1.§0!Z§.§>[§ = null;
         param1.§0!Z§.§"R§ = null;
         if(param1.§ !I§.§>[§)
         {
            param1.§ !I§.§>[§.§"R§ = param1.§ !I§.§"R§;
         }
         if(param1.§ !I§.§"R§)
         {
            param1.§ !I§.§"R§.§>[§ = param1.§ !I§.§>[§;
         }
         if(param1.§ !I§ == _loc4_.§]!'§)
         {
            _loc4_.§]!'§ = param1.§ !I§.§"R§;
         }
         param1.§ !I§.§>[§ = null;
         param1.§ !I§.§"R§ = null;
         b2Joint.§[!,§(param1,null);
         --this.§ !3§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§!q§();
            while(_loc5_)
            {
               if(_loc5_.§%!R§ == _loc3_)
               {
                  _loc5_.§;![§.§,!'§();
               }
               _loc5_ = _loc5_.§"R§;
            }
         }
      }
      
      public function §6F§(param1:b2Controller) : b2Controller
      {
         param1.§+[§ = this.§2!4§;
         param1.§8§ = null;
         this.§2!4§ = param1;
         param1.m_world = this;
         ++this.§>b§;
         return param1;
      }
      
      public function §#!S§(param1:b2Controller) : void
      {
         if(param1.§8§)
         {
            param1.§8§.§+[§ = param1.§+[§;
         }
         if(param1.§+[§)
         {
            param1.§+[§.§8§ = param1.§8§;
         }
         if(this.§2!4§ == param1)
         {
            this.§2!4§ = param1.§+[§;
         }
         --this.§>b§;
      }
      
      public function §[!E§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§+[§ = this.§2!4§;
         param1.§8§ = null;
         if(this.§2!4§)
         {
            this.§2!4§.§8§ = param1;
         }
         this.§2!4§ = param1;
         ++this.§>b§;
         param1.m_world = this;
         return param1;
      }
      
      public function §!5§(param1:b2Controller) : void
      {
         param1.§&O§();
         if(param1.§+[§)
         {
            param1.§+[§.§8§ = param1.§8§;
         }
         if(param1.§8§)
         {
            param1.§8§.§+[§ = param1.§+[§;
         }
         if(param1 == this.§2!4§)
         {
            this.§2!4§ = param1.§+[§;
         }
         --this.§>b§;
      }
      
      public function §^!F§(param1:Boolean) : void
      {
         §2!c§ = param1;
      }
      
      public function §;C§(param1:Boolean) : void
      {
         §^!?§ = param1;
      }
      
      public function §-!!§() : int
      {
         return this.§]+§;
      }
      
      public function §;d§() : int
      {
         return this.§ !3§;
      }
      
      public function §#K§() : int
      {
         return this.§^!a§;
      }
      
      public function §3!6§(param1:b2Vec2) : void
      {
         this.§?N§ = param1;
      }
      
      public function §&!8§() : b2Vec2
      {
         return this.§?N§;
      }
      
      public function §=6§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §4y§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§+o§ & §9!#§)
         {
            this.§@!C§.§4!8§();
            this.§+o§ &= ~§9!#§;
         }
         this.§+o§ |= §6§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§3v§ = param1;
         _loc4_.§2!E§ = param2;
         _loc4_.§-!§ = param3;
         if(param1 > 0)
         {
            _loc4_.§"!"§ = 1 / param1;
         }
         else
         {
            _loc4_.§"!"§ = 0;
         }
         _loc4_.§%"§ = this.§2W§ * param1;
         _loc4_.§3+§ = §2!c§;
         this.§@!C§.§1!P§();
         if(_loc4_.§3v§ > 0)
         {
            this.§]!H§(_loc4_);
         }
         if(§^!?§ && _loc4_.§3v§ > 0)
         {
            this.§[§(_loc4_);
         }
         if(_loc4_.§3v§ > 0)
         {
            this.§2W§ = _loc4_.§"!"§;
         }
         this.§+o§ &= ~§6§;
      }
      
      public function §=!4§() : void
      {
         var _loc1_:b2Body = this.§3!1§;
         while(_loc1_)
         {
            _loc1_.§,q§.§#!d§();
            _loc1_.§3!'§ = 0;
            _loc1_ = _loc1_.§+[§;
         }
      }
      
      public function §0+§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§4!6§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§&!C§ == null)
         {
            return;
         }
         this.§&!C§.§^B§.graphics.clear();
         var _loc1_:uint = this.§&!C§.§?#§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§-t§)
         {
            _loc3_ = this.§3!1§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§?O§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§5!$§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§;6§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§[!H§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§;6§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§[!H§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§;6§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§;6§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§;6§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§+[§;
               }
               _loc3_ = _loc3_.§+[§;
            }
         }
         if(_loc1_ & b2DebugDraw.§>i§)
         {
            _loc6_ = this.§]!'§;
            while(_loc6_)
            {
               this.§ k§(_loc6_);
               _loc6_ = _loc6_.§+[§;
            }
         }
         if(_loc1_ & b2DebugDraw.§<!O§)
         {
            _loc16_ = this.§2!4§;
            while(_loc16_)
            {
               _loc16_.§#i§(this.§&!C§);
               _loc16_ = _loc16_.§+[§;
            }
         }
         if(_loc1_ & b2DebugDraw.§%$§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§@!C§.§+!Z§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§@!$§();
               _loc19_ = _loc17_.§1!+§();
               _loc20_ = _loc18_.§-]§().§;!X§();
               _loc21_ = _loc19_.§-]§().§;!X§();
               this.§&!C§.§[C§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§'Q§();
            }
         }
         if(_loc1_ & b2DebugDraw.§9%§)
         {
            _loc7_ = this.§@!C§.§%Z§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§3!1§;
            while(_loc3_)
            {
               if(_loc3_.§5!$§() != false)
               {
                  _loc4_ = _loc3_.§?O§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§@&§(_loc4_.§1Z§);
                     _loc14_[0].Set(_loc22_.§'H§.x,_loc22_.§'H§.y);
                     _loc14_[1].Set(_loc22_.§@!X§.x,_loc22_.§'H§.y);
                     _loc14_[2].Set(_loc22_.§@!X§.x,_loc22_.§@!X§.y);
                     _loc14_[3].Set(_loc22_.§'H§.x,_loc22_.§@!X§.y);
                     this.§&!C§.§ !#§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§'Q§();
                  }
               }
               _loc3_ = _loc3_.§'Q§();
            }
         }
         if(_loc1_ & b2DebugDraw.§?%§)
         {
            _loc3_ = this.§3!1§;
            while(_loc3_)
            {
               (_loc11_ = §1!B§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§`g§();
               this.§&!C§.§`!+§(_loc11_);
               _loc3_ = _loc3_.§+[§;
            }
         }
      }
      
      public function §9#§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§4!6§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§@!C§.§%Z§;
         broadPhase.§<!1§(WorldQueryWrapper,aabb);
      }
      
      public function §,!Y§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§4!6§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§#8§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§50§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§-!7§();
         }
         broadPhase = this.§@!C§.§%Z§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§<!1§(WorldQueryWrapper,aabb);
      }
      
      public function §#!&§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§4!6§ = null;
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
         broadPhase = this.§@!C§.§%Z§;
         var aabb:b2AABB = new b2AABB();
         aabb.§'H§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§@!X§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§<!1§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§4!6§ = null;
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
            return param1.§6!C§;
         };
         broadPhase = this.§@!C§.§%Z§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §<x§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §2!D§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §]v§() : b2Body
      {
         return this.§3!1§;
      }
      
      public function §9W§() : b2Joint
      {
         return this.§]!'§;
      }
      
      public function §!q§() : b2Contact
      {
         return this.§+!Z§;
      }
      
      public function §&F§() : Boolean
      {
         return (this.§+o§ & §6§) > 0;
      }
      
      b2internal function §]!H§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§2!4§;
         while(_loc3_)
         {
            _loc3_.§4y§(param1);
            _loc3_ = _loc3_.§+[§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§^!X§).§^!R§(this.§]+§,this.§^!a§,this.§ !3§,null,this.§@!C§.§+!"§,this.§2T§);
         _loc2_ = this.§3!1§;
         while(_loc2_)
         {
            _loc2_.§+o§ &= ~b2Body.§?j§;
            _loc2_ = _loc2_.§+[§;
         }
         var _loc5_:b2Contact = this.§+!Z§;
         while(_loc5_)
         {
            _loc5_.§+o§ &= ~b2Contact.§?j§;
            _loc5_ = _loc5_.§+[§;
         }
         var _loc6_:b2Joint = this.§]!'§;
         while(_loc6_)
         {
            _loc6_.§5!S§ = false;
            _loc6_ = _loc6_.§+[§;
         }
         var _loc7_:int = this.§]+§;
         var _loc8_:Vector.<b2Body> = this.§[!?§;
         var _loc9_:b2Body = this.§3!1§;
         while(_loc9_)
         {
            if(!(_loc9_.§+o§ & b2Body.§?j§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§5!$§() == false))
               {
                  if(_loc9_.§[!H§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§&O§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§+o§ |= b2Body.§?j§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§6!X§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§[!H§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§+!Z§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§;![§.§+o§ & b2Contact.§?j§))
                              {
                                 if(!(_loc13_.§;![§.§&!O§() == true || _loc13_.§;![§.§4!$§() == false || _loc13_.§;![§.§-Y§() == false))
                                 {
                                    _loc4_.§?l§(_loc13_.§;![§);
                                    _loc13_.§;![§.§+o§ |= b2Contact.§?j§;
                                    if(!((_loc12_ = _loc13_.§%!R§).§+o§ & b2Body.§?j§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§+o§ |= b2Body.§?j§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§"R§;
                           }
                           _loc14_ = _loc2_.§]!'§;
                           while(_loc14_)
                           {
                              if(_loc14_.§!!F§.§5!S§ != true)
                              {
                                 if((_loc12_ = _loc14_.§%!R§).§5!$§() != false)
                                 {
                                    _loc4_.§[!'§(_loc14_.§!!F§);
                                    _loc14_.§!!F§.§5!S§ = true;
                                    if(!(_loc12_.§+o§ & b2Body.§?j§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§+o§ |= b2Body.§?j§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§"R§;
                           }
                        }
                     }
                     _loc4_.§]!H§(param1,this.§?N§,this.§+!I§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§]+§)
                     {
                        _loc2_ = _loc4_.§+!^§[_loc11_];
                        if(_loc2_.§[!H§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§+o§ &= ~b2Body.§?j§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§+[§;
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
         _loc2_ = this.§3!1§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§5!$§() == false))
            {
               if(_loc2_.§[!H§() != b2Body.b2_staticBody)
               {
                  _loc2_.§5!F§();
               }
            }
            _loc2_ = _loc2_.§+[§;
         }
         this.§@!C§.§4!8§();
      }
      
      b2internal function §[§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§^!X§).§^!R§(this.§]+§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§@!C§.§+!"§,this.§2T§);
         var _loc10_:Vector.<b2Body> = §!c§;
         _loc2_ = this.§3!1§;
         while(_loc2_)
         {
            _loc2_.§+o§ &= ~b2Body.§?j§;
            _loc2_.m_sweep.§`5§ = 0;
            _loc2_ = _loc2_.§+[§;
         }
         _loc11_ = this.§+!Z§;
         while(_loc11_)
         {
            _loc11_.§+o§ &= ~(b2Contact.§"!=§ | b2Contact.§?j§);
            _loc11_ = _loc11_.§+[§;
         }
         _loc8_ = this.§]!'§;
         while(_loc8_)
         {
            _loc8_.§5!S§ = false;
            _loc8_ = _loc8_.§+[§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§+!Z§;
            while(_loc11_)
            {
               if(!(_loc11_.§&!O§() == true || _loc11_.§4!$§() == false || _loc11_.§!!J§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§+o§ & b2Contact.§"!=§)
                  {
                     _loc19_ = _loc11_.§&Y§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§9!0§;
                     _loc4_ = _loc11_.§#;§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§[!H§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§[!H§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr615:
                        _loc11_ = _loc11_.§+[§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§`5§;
                     if(_loc5_.m_sweep.§`5§ < _loc6_.m_sweep.§`5§)
                     {
                        _loc20_ = _loc6_.m_sweep.§`5§;
                        _loc5_.m_sweep.§#I§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§`5§ < _loc5_.m_sweep.§`5§)
                     {
                        _loc20_ = _loc5_.m_sweep.§`5§;
                        _loc6_.m_sweep.§#I§(_loc20_);
                     }
                     _loc19_ = _loc11_.§;<§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§&Y§ = _loc19_;
                     _loc11_.§+o§ |= b2Contact.§"!=§;
                     §§goto(addr615);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr615);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§9!0§;
            _loc4_ = _loc12_.§#;§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §4!4§.Set(_loc5_.m_sweep);
            §&e§.Set(_loc6_.m_sweep);
            _loc5_.§#I§(_loc13_);
            _loc6_.§#I§(_loc13_);
            _loc12_.§`!b§(this.§@!C§.§+!"§);
            _loc12_.§+o§ &= ~b2Contact.§"!=§;
            if(_loc12_.§&!O§() == true || _loc12_.§4!$§() == false)
            {
               _loc5_.m_sweep.Set(§4!4§);
               _loc6_.m_sweep.Set(§&e§);
               _loc5_.§+?§();
               _loc6_.§+?§();
            }
            else if(_loc12_.§-Y§() != false)
            {
               if((_loc14_ = _loc5_).§[!H§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§&O§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§+o§ |= b2Body.§?j§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§6!X§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§[!H§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§+!Z§;
                     while(_loc7_)
                     {
                        if(_loc9_.§^!a§ == _loc9_.§+;§)
                        {
                           break;
                        }
                        if(!(_loc7_.§;![§.§+o§ & b2Contact.§?j§))
                        {
                           if(!(_loc7_.§;![§.§&!O§() == true || _loc7_.§;![§.§4!$§() == false || _loc7_.§;![§.§-Y§() == false))
                           {
                              _loc9_.§?l§(_loc7_.§;![§);
                              _loc7_.§;![§.§+o§ |= b2Contact.§?j§;
                              if(!((_loc22_ = _loc7_.§%!R§).§+o§ & b2Body.§?j§))
                              {
                                 if(_loc22_.§[!H§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§#I§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§+o§ |= b2Body.§?j§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§"R§;
                     }
                     _loc21_ = _loc2_.§]!'§;
                     while(_loc21_)
                     {
                        if(_loc9_.§ !3§ != _loc9_.§do§)
                        {
                           if(_loc21_.§!!F§.§5!S§ != true)
                           {
                              if((_loc22_ = _loc21_.§%!R§).§5!$§() != false)
                              {
                                 _loc9_.§[!'§(_loc21_.§!!F§);
                                 _loc21_.§!!F§.§5!S§ = true;
                                 if(!(_loc22_.§+o§ & b2Body.§?j§))
                                 {
                                    if(_loc22_.§[!H§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§#I§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§+o§ |= b2Body.§?j§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§"R§;
                     }
                  }
               }
               (_loc17_ = §`?§).§3+§ = false;
               _loc17_.§3v§ = (1 - _loc13_) * param1.§3v§;
               _loc17_.§"!"§ = 1 / _loc17_.§3v§;
               _loc17_.§%"§ = 0;
               _loc17_.§2!E§ = param1.§2!E§;
               _loc17_.§-!§ = param1.§-!§;
               _loc9_.§[§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§]+§)
               {
                  _loc2_ = _loc9_.§+!^§[_loc18_];
                  _loc2_.§+o§ &= ~b2Body.§?j§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§[!H§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§5!F§();
                        _loc7_ = _loc2_.§+!Z§;
                        while(_loc7_)
                        {
                           _loc7_.§;![§.§+o§ &= ~b2Contact.§"!=§;
                           _loc7_ = _loc7_.§"R§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§^!a§)
               {
                  _loc11_ = _loc9_.§<!V§[_loc18_];
                  _loc11_.§+o§ &= ~(b2Contact.§"!=§ | b2Contact.§?j§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§ !3§)
               {
                  (_loc8_ = _loc9_.§1`§[_loc18_]).§5!S§ = false;
                  _loc18_++;
               }
               this.§@!C§.§4!8§();
            }
         }
      }
      
      b2internal function § k§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§-!O§();
         var _loc3_:b2Body = param1.§=!X§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §-T§;
         switch(param1.§?S§)
         {
            case b2Joint.§3!X§:
               this.§&!C§.§[C§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§%>§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§^!T§();
               _loc13_ = _loc11_.§+U§();
               this.§&!C§.§[C§(_loc12_,_loc8_,_loc10_);
               this.§&!C§.§[C§(_loc13_,_loc9_,_loc10_);
               this.§&!C§.§[C§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§2&§:
               this.§&!C§.§[C§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§&!C§.§[C§(_loc6_,_loc8_,_loc10_);
               }
               this.§&!C§.§[C§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§&!C§.§[C§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §;6§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§?S§)
         {
            case b2Shape.§2!J§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§8j§(param2,_loc4_.§]!I§);
               _loc6_ = _loc4_.§ !W§;
               _loc7_ = param2.R.col1;
               this.§&!C§.§!R§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§1!J§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§"!;§();
               _loc11_ = _loc9_.§7]§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§8j§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§&!C§.§]!#§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§<r§:
               _loc13_ = param1 as b2EdgeShape;
               this.§&!C§.§[C§(b2Math.§8j§(param2,_loc13_.GetVertex1()),b2Math.§8j§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

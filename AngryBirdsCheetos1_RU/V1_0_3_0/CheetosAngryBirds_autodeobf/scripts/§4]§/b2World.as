package §4]§
{
   import §"!b§.b2Controller;
   import §"!b§.b2ControllerEdge;
   import §"x§.*;
   import §#,§.*;
   import §&U§.*;
   import §7$§.*;
   import §8<§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §#!2§:b2Transform = new b2Transform();
      
      private static var §4o§:b2Sweep = new b2Sweep();
      
      private static var §<y§:b2Sweep = new b2Sweep();
      
      private static var §'a§:b2TimeStep = new b2TimeStep();
      
      private static var §%S§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §&!<§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §<=§:Boolean;
      
      private static var §'!M§:Boolean;
      
      public static const §+!!§:int = 1;
      
      public static const §]!K§:int = 2;
       
      
      private var §=!I§:Vector.<b2Body>;
      
      b2internal var §0!A§:int;
      
      b2internal var §"!4§:b2ContactManager;
      
      private var §&!W§:b2ContactSolver;
      
      private var §'!B§:b2Island;
      
      b2internal var §0E§:b2Body;
      
      private var §8!,§:b2Joint;
      
      b2internal var §`]§:b2Contact;
      
      private var §7!_§:int;
      
      b2internal var §?!Y§:int;
      
      private var §3I§:int;
      
      private var §'B§:b2Controller;
      
      private var §1!G§:int;
      
      private var §7A§:b2Vec2;
      
      private var §#!`§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §+-§:b2DestructionListener;
      
      private var §=!9§:b2DebugDraw;
      
      private var §-<§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§=!I§ = new Vector.<b2Body>();
         this.§"!4§ = new b2ContactManager();
         this.§&!W§ = new b2ContactSolver();
         this.§'!B§ = new b2Island();
         super();
         this.§+-§ = null;
         this.§=!9§ = null;
         this.§0E§ = null;
         this.§`]§ = null;
         this.§8!,§ = null;
         this.§'B§ = null;
         this.§7!_§ = 0;
         this.§?!Y§ = 0;
         this.§3I§ = 0;
         this.§1!G§ = 0;
         §<=§ = true;
         §'!M§ = true;
         this.§#!`§ = param2;
         this.§7A§ = param1;
         this.§-<§ = 0;
         this.§"!4§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§8!&§(_loc3_);
      }
      
      public function §7!D§(param1:b2DestructionListener) : void
      {
         this.§+-§ = param1;
      }
      
      public function §#!I§(param1:b2ContactFilter) : void
      {
         this.§"!4§.§&d§ = param1;
      }
      
      public function §4F§(param1:b2ContactListener) : void
      {
         this.§"!4§.§=M§ = param1;
      }
      
      public function §&!Y§(param1:b2DebugDraw) : void
      {
         this.§=!9§ = param1;
      }
      
      public function §3k§(param1:§%!"§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§%!"§ = this.§"!4§.§,!'§;
         this.§"!4§.§,!'§ = param1;
         var _loc3_:b2Body = this.§0E§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§-!"§;
            while(_loc4_)
            {
               _loc4_.§+P§ = param1.§>!&§(_loc2_.§%!E§(_loc4_.§+P§),_loc4_);
               _loc4_ = _loc4_.§ !P§;
            }
            _loc3_ = _loc3_.§ !P§;
         }
      }
      
      public function §?!]§() : void
      {
         this.§"!4§.§,!'§.§?!]§();
      }
      
      public function §=d§() : int
      {
         return this.§"!4§.§,!'§.§=d§();
      }
      
      public function §8!&§(param1:b2BodyDef) : b2Body
      {
         if(this.§1R§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§-%§ = null;
         _loc2_.§ !P§ = this.§0E§;
         if(this.§0E§)
         {
            this.§0E§.§-%§ = _loc2_;
         }
         this.§0E§ = _loc2_;
         ++this.§7!_§;
         return _loc2_;
      }
      
      public function §#;§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§1R§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§8!,§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§5E§;
            if(this.§+-§)
            {
               this.§+-§.§>!3§(_loc6_.§#!,§);
            }
            this.§6z§(_loc6_.§#!,§);
         }
         var _loc3_:b2ControllerEdge = param1.§'B§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§@e§;
            _loc7_.§>k§.§"?§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§`]§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§5E§;
            this.§"!4§.§^!K§(_loc8_.§#!b§);
         }
         param1.§`]§ = null;
         var _loc5_:b2Fixture = param1.§-!"§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§ !P§;
            if(this.§+-§)
            {
               this.§+-§.§04§(_loc9_);
            }
            _loc9_.§>;§(this.§"!4§.§,!'§);
            _loc9_.§^!K§();
         }
         param1.§-!"§ = null;
         param1.§=P§ = 0;
         if(param1.§-%§)
         {
            param1.§-%§.§ !P§ = param1.§ !P§;
         }
         if(param1.§ !P§)
         {
            param1.§ !P§.§-%§ = param1.§-%§;
         }
         if(param1 == this.§0E§)
         {
            this.§0E§ = param1.§ !P§;
         }
         --this.§7!_§;
      }
      
      public function §'C§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§[?§(param1,null);
         _loc2_.§-%§ = null;
         _loc2_.§ !P§ = this.§8!,§;
         if(this.§8!,§)
         {
            this.§8!,§.§-%§ = _loc2_;
         }
         this.§8!,§ = _loc2_;
         ++this.§3I§;
         _loc2_.§`!Q§.§#!,§ = _loc2_;
         _loc2_.§`!Q§.§6!J§ = _loc2_.§;<§;
         _loc2_.§`!Q§.§&`§ = null;
         _loc2_.§`!Q§.§5E§ = _loc2_.§!!_§.§8!,§;
         if(_loc2_.§!!_§.§8!,§)
         {
            _loc2_.§!!_§.§8!,§.§&`§ = _loc2_.§`!Q§;
         }
         _loc2_.§!!_§.§8!,§ = _loc2_.§`!Q§;
         _loc2_.§'D§.§#!,§ = _loc2_;
         _loc2_.§'D§.§6!J§ = _loc2_.§!!_§;
         _loc2_.§'D§.§&`§ = null;
         _loc2_.§'D§.§5E§ = _loc2_.§;<§.§8!,§;
         if(_loc2_.§;<§.§8!,§)
         {
            _loc2_.§;<§.§8!,§.§&`§ = _loc2_.§'D§;
         }
         _loc2_.§;<§.§8!,§ = _loc2_.§'D§;
         var _loc3_:b2Body = param1.§,w§;
         var _loc4_:b2Body = param1.§2h§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§2!I§();
            while(_loc5_)
            {
               if(_loc5_.§6!J§ == _loc3_)
               {
                  _loc5_.§#!b§.§4w§();
               }
               _loc5_ = _loc5_.§5E§;
            }
         }
         return _loc2_;
      }
      
      public function §6z§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§2!5§;
         if(param1.§-%§)
         {
            param1.§-%§.§ !P§ = param1.§ !P§;
         }
         if(param1.§ !P§)
         {
            param1.§ !P§.§-%§ = param1.§-%§;
         }
         if(param1 == this.§8!,§)
         {
            this.§8!,§ = param1.§ !P§;
         }
         var _loc3_:b2Body = param1.§!!_§;
         var _loc4_:b2Body = param1.§;<§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§`!Q§.§&`§)
         {
            param1.§`!Q§.§&`§.§5E§ = param1.§`!Q§.§5E§;
         }
         if(param1.§`!Q§.§5E§)
         {
            param1.§`!Q§.§5E§.§&`§ = param1.§`!Q§.§&`§;
         }
         if(param1.§`!Q§ == _loc3_.§8!,§)
         {
            _loc3_.§8!,§ = param1.§`!Q§.§5E§;
         }
         param1.§`!Q§.§&`§ = null;
         param1.§`!Q§.§5E§ = null;
         if(param1.§'D§.§&`§)
         {
            param1.§'D§.§&`§.§5E§ = param1.§'D§.§5E§;
         }
         if(param1.§'D§.§5E§)
         {
            param1.§'D§.§5E§.§&`§ = param1.§'D§.§&`§;
         }
         if(param1.§'D§ == _loc4_.§8!,§)
         {
            _loc4_.§8!,§ = param1.§'D§.§5E§;
         }
         param1.§'D§.§&`§ = null;
         param1.§'D§.§5E§ = null;
         b2Joint.§^!K§(param1,null);
         --this.§3I§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§2!I§();
            while(_loc5_)
            {
               if(_loc5_.§6!J§ == _loc3_)
               {
                  _loc5_.§#!b§.§4w§();
               }
               _loc5_ = _loc5_.§5E§;
            }
         }
      }
      
      public function §]f§(param1:b2Controller) : b2Controller
      {
         param1.§ !P§ = this.§'B§;
         param1.§-%§ = null;
         this.§'B§ = param1;
         param1.m_world = this;
         ++this.§1!G§;
         return param1;
      }
      
      public function §'!<§(param1:b2Controller) : void
      {
         if(param1.§-%§)
         {
            param1.§-%§.§ !P§ = param1.§ !P§;
         }
         if(param1.§ !P§)
         {
            param1.§ !P§.§-%§ = param1.§-%§;
         }
         if(this.§'B§ == param1)
         {
            this.§'B§ = param1.§ !P§;
         }
         --this.§1!G§;
      }
      
      public function §#4§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§ !P§ = this.§'B§;
         param1.§-%§ = null;
         if(this.§'B§)
         {
            this.§'B§.§-%§ = param1;
         }
         this.§'B§ = param1;
         ++this.§1!G§;
         param1.m_world = this;
         return param1;
      }
      
      public function §;v§(param1:b2Controller) : void
      {
         param1.§2D§();
         if(param1.§ !P§)
         {
            param1.§ !P§.§-%§ = param1.§-%§;
         }
         if(param1.§-%§)
         {
            param1.§-%§.§ !P§ = param1.§ !P§;
         }
         if(param1 == this.§'B§)
         {
            this.§'B§ = param1.§ !P§;
         }
         --this.§1!G§;
      }
      
      public function §1!N§(param1:Boolean) : void
      {
         §<=§ = param1;
      }
      
      public function §3O§(param1:Boolean) : void
      {
         §'!M§ = param1;
      }
      
      public function §>H§() : int
      {
         return this.§7!_§;
      }
      
      public function §6,§() : int
      {
         return this.§3I§;
      }
      
      public function §#a§() : int
      {
         return this.§?!Y§;
      }
      
      public function §>!S§(param1:b2Vec2) : void
      {
         this.§7A§ = param1;
      }
      
      public function §=!?§() : b2Vec2
      {
         return this.§7A§;
      }
      
      public function §?!H§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §3!7§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§0!A§ & §+!!§)
         {
            this.§"!4§.§ c§();
            this.§0!A§ &= ~§+!!§;
         }
         this.§0!A§ |= §]!K§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§=&§ = param1;
         _loc4_.§4Y§ = param2;
         _loc4_.§+U§ = param3;
         if(param1 > 0)
         {
            _loc4_.§+8§ = 1 / param1;
         }
         else
         {
            _loc4_.§+8§ = 0;
         }
         _loc4_.§5!-§ = this.§-<§ * param1;
         _loc4_.§!4§ = §<=§;
         this.§"!4§.§?Z§();
         if(_loc4_.§=&§ > 0)
         {
            this.§4!Z§(_loc4_);
         }
         if(§'!M§ && _loc4_.§=&§ > 0)
         {
            this.§6!@§(_loc4_);
         }
         if(_loc4_.§=&§ > 0)
         {
            this.§-<§ = _loc4_.§+8§;
         }
         this.§0!A§ &= ~§]!K§;
      }
      
      public function §^=§() : void
      {
         var _loc1_:b2Body = this.§0E§;
         while(_loc1_)
         {
            _loc1_.§"!N§.§0&§();
            _loc1_.§%!1§ = 0;
            _loc1_ = _loc1_.§ !P§;
         }
      }
      
      public function §5f§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§%!"§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§=!9§ == null)
         {
            return;
         }
         this.§=!9§.§^[§.graphics.clear();
         var _loc1_:uint = this.§=!9§.§0!+§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§0[§)
         {
            _loc3_ = this.§0E§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§&c§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§47§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§8e§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§,!W§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§8e§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§,!W§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§8e§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§8e§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§8e§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§ !P§;
               }
               _loc3_ = _loc3_.§ !P§;
            }
         }
         if(_loc1_ & b2DebugDraw.§[,§)
         {
            _loc6_ = this.§8!,§;
            while(_loc6_)
            {
               this.§4^§(_loc6_);
               _loc6_ = _loc6_.§ !P§;
            }
         }
         if(_loc1_ & b2DebugDraw.§,!_§)
         {
            _loc16_ = this.§'B§;
            while(_loc16_)
            {
               _loc16_.§2t§(this.§=!9§);
               _loc16_ = _loc16_.§ !P§;
            }
         }
         if(_loc1_ & b2DebugDraw.§]!-§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§"!4§.§`]§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§?O§();
               _loc19_ = _loc17_.§-K§();
               _loc20_ = _loc18_.§#@§().§`!R§();
               _loc21_ = _loc19_.§#@§().§`!R§();
               this.§=!9§.§"v§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§&6§();
            }
         }
         if(_loc1_ & b2DebugDraw.§=m§)
         {
            _loc7_ = this.§"!4§.§,!'§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§0E§;
            while(_loc3_)
            {
               if(_loc3_.§47§() != false)
               {
                  _loc4_ = _loc3_.§&c§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§%!E§(_loc4_.§+P§);
                     _loc14_[0].Set(_loc22_.§ !B§.x,_loc22_.§ !B§.y);
                     _loc14_[1].Set(_loc22_.§>w§.x,_loc22_.§ !B§.y);
                     _loc14_[2].Set(_loc22_.§>w§.x,_loc22_.§>w§.y);
                     _loc14_[3].Set(_loc22_.§ !B§.x,_loc22_.§>w§.y);
                     this.§=!9§.§6!>§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§&6§();
                  }
               }
               _loc3_ = _loc3_.§&6§();
            }
         }
         if(_loc1_ & b2DebugDraw.§^@§)
         {
            _loc3_ = this.§0E§;
            while(_loc3_)
            {
               (_loc11_ = §#!2§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§9Q§();
               this.§=!9§.§1m§(_loc11_);
               _loc3_ = _loc3_.§ !P§;
            }
         }
      }
      
      public function §,!a§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§%!"§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§"!4§.§,!'§;
         broadPhase.§8!$§(WorldQueryWrapper,aabb);
      }
      
      public function §+]§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§%!"§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§?U§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§5[§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§<i§();
         }
         broadPhase = this.§"!4§.§,!'§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§8!$§(WorldQueryWrapper,aabb);
      }
      
      public function §<n§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§%!"§ = null;
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
         broadPhase = this.§"!4§.§,!'§;
         var aabb:b2AABB = new b2AABB();
         aabb.§ !B§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§>w§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§8!$§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§%!"§ = null;
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
            return param1.§8!N§;
         };
         broadPhase = this.§"!4§.§,!'§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §#<§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §3!J§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §8[§() : b2Body
      {
         return this.§0E§;
      }
      
      public function §?7§() : b2Joint
      {
         return this.§8!,§;
      }
      
      public function §2!I§() : b2Contact
      {
         return this.§`]§;
      }
      
      public function §1R§() : Boolean
      {
         return (this.§0!A§ & §]!K§) > 0;
      }
      
      b2internal function §4!Z§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§'B§;
         while(_loc3_)
         {
            _loc3_.§3!7§(param1);
            _loc3_ = _loc3_.§ !P§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§'!B§).§9!K§(this.§7!_§,this.§?!Y§,this.§3I§,null,this.§"!4§.§=M§,this.§&!W§);
         _loc2_ = this.§0E§;
         while(_loc2_)
         {
            _loc2_.§0!A§ &= ~b2Body.§?$§;
            _loc2_ = _loc2_.§ !P§;
         }
         var _loc5_:b2Contact = this.§`]§;
         while(_loc5_)
         {
            _loc5_.§0!A§ &= ~b2Contact.§?$§;
            _loc5_ = _loc5_.§ !P§;
         }
         var _loc6_:b2Joint = this.§8!,§;
         while(_loc6_)
         {
            _loc6_.§'!5§ = false;
            _loc6_ = _loc6_.§ !P§;
         }
         var _loc7_:int = this.§7!_§;
         var _loc8_:Vector.<b2Body> = this.§=!I§;
         var _loc9_:b2Body = this.§0E§;
         while(_loc9_)
         {
            if(!(_loc9_.§0!A§ & b2Body.§?$§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§47§() == false))
               {
                  if(_loc9_.§,!W§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§2D§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§0!A§ |= b2Body.§?$§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§[v§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§,!W§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§`]§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§#!b§.§0!A§ & b2Contact.§?$§))
                              {
                                 if(!(_loc13_.§#!b§.§=Y§() == true || _loc13_.§#!b§.§=!;§() == false || _loc13_.§#!b§.§!!4§() == false))
                                 {
                                    _loc4_.§#!X§(_loc13_.§#!b§);
                                    _loc13_.§#!b§.§0!A§ |= b2Contact.§?$§;
                                    if(!((_loc12_ = _loc13_.§6!J§).§0!A§ & b2Body.§?$§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§0!A§ |= b2Body.§?$§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§5E§;
                           }
                           _loc14_ = _loc2_.§8!,§;
                           while(_loc14_)
                           {
                              if(_loc14_.§#!,§.§'!5§ != true)
                              {
                                 if((_loc12_ = _loc14_.§6!J§).§47§() != false)
                                 {
                                    _loc4_.§'i§(_loc14_.§#!,§);
                                    _loc14_.§#!,§.§'!5§ = true;
                                    if(!(_loc12_.§0!A§ & b2Body.§?$§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§0!A§ |= b2Body.§?$§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§5E§;
                           }
                        }
                     }
                     _loc4_.§4!Z§(param1,this.§7A§,this.§#!`§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§7!_§)
                     {
                        _loc2_ = _loc4_.§3!Q§[_loc11_];
                        if(_loc2_.§,!W§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§0!A§ &= ~b2Body.§?$§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§ !P§;
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
         _loc2_ = this.§0E§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§47§() == false))
            {
               if(_loc2_.§,!W§() != b2Body.b2_staticBody)
               {
                  _loc2_.§ !5§();
               }
            }
            _loc2_ = _loc2_.§ !P§;
         }
         this.§"!4§.§ c§();
      }
      
      b2internal function §6!@§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§'!B§).§9!K§(this.§7!_§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§"!4§.§=M§,this.§&!W§);
         var _loc10_:Vector.<b2Body> = §%S§;
         _loc2_ = this.§0E§;
         while(_loc2_)
         {
            _loc2_.§0!A§ &= ~b2Body.§?$§;
            _loc2_.m_sweep.§<!"§ = 0;
            _loc2_ = _loc2_.§ !P§;
         }
         _loc11_ = this.§`]§;
         while(_loc11_)
         {
            _loc11_.§0!A§ &= ~(b2Contact.§3?§ | b2Contact.§?$§);
            _loc11_ = _loc11_.§ !P§;
         }
         _loc8_ = this.§8!,§;
         while(_loc8_)
         {
            _loc8_.§'!5§ = false;
            _loc8_ = _loc8_.§ !P§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§`]§;
            while(_loc11_)
            {
               if(!(_loc11_.§=Y§() == true || _loc11_.§=!;§() == false || _loc11_.§`4§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§0!A§ & b2Contact.§3?§)
                  {
                     _loc19_ = _loc11_.§#q§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§`3§;
                     _loc4_ = _loc11_.§+!D§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§,!W§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§,!W§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr599:
                        _loc11_ = _loc11_.§ !P§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§<!"§;
                     if(_loc5_.m_sweep.§<!"§ < _loc6_.m_sweep.§<!"§)
                     {
                        _loc20_ = _loc6_.m_sweep.§<!"§;
                        _loc5_.m_sweep.§?!>§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§<!"§ < _loc5_.m_sweep.§<!"§)
                     {
                        _loc20_ = _loc5_.m_sweep.§<!"§;
                        _loc6_.m_sweep.§?!>§(_loc20_);
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
                     _loc11_.§#q§ = _loc19_;
                     _loc11_.§0!A§ |= b2Contact.§3?§;
                     §§goto(addr599);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr599);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§`3§;
            _loc4_ = _loc12_.§+!D§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §4o§.Set(_loc5_.m_sweep);
            §<y§.Set(_loc6_.m_sweep);
            _loc5_.§?!>§(_loc13_);
            _loc6_.§?!>§(_loc13_);
            _loc12_.§4!$§(this.§"!4§.§=M§);
            _loc12_.§0!A§ &= ~b2Contact.§3?§;
            if(_loc12_.§=Y§() == true || _loc12_.§=!;§() == false)
            {
               _loc5_.m_sweep.Set(§4o§);
               _loc6_.m_sweep.Set(§<y§);
               _loc5_.§-#§();
               _loc6_.§-#§();
            }
            else if(_loc12_.§!!4§() != false)
            {
               if((_loc14_ = _loc5_).§,!W§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§2D§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§0!A§ |= b2Body.§?$§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§[v§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§,!W§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§`]§;
                     while(_loc7_)
                     {
                        if(_loc9_.§?!Y§ == _loc9_.§5!4§)
                        {
                           break;
                        }
                        if(!(_loc7_.§#!b§.§0!A§ & b2Contact.§?$§))
                        {
                           if(!(_loc7_.§#!b§.§=Y§() == true || _loc7_.§#!b§.§=!;§() == false || _loc7_.§#!b§.§!!4§() == false))
                           {
                              _loc9_.§#!X§(_loc7_.§#!b§);
                              _loc7_.§#!b§.§0!A§ |= b2Contact.§?$§;
                              if(!((_loc22_ = _loc7_.§6!J§).§0!A§ & b2Body.§?$§))
                              {
                                 if(_loc22_.§,!W§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§?!>§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§0!A§ |= b2Body.§?$§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§5E§;
                     }
                     _loc21_ = _loc2_.§8!,§;
                     while(_loc21_)
                     {
                        if(_loc9_.§3I§ != _loc9_.§+q§)
                        {
                           if(_loc21_.§#!,§.§'!5§ != true)
                           {
                              if((_loc22_ = _loc21_.§6!J§).§47§() != false)
                              {
                                 _loc9_.§'i§(_loc21_.§#!,§);
                                 _loc21_.§#!,§.§'!5§ = true;
                                 if(!(_loc22_.§0!A§ & b2Body.§?$§))
                                 {
                                    if(_loc22_.§,!W§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§?!>§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§0!A§ |= b2Body.§?$§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§5E§;
                     }
                  }
               }
               (_loc17_ = §'a§).§!4§ = false;
               _loc17_.§=&§ = (1 - _loc13_) * param1.§=&§;
               _loc17_.§+8§ = 1 / _loc17_.§=&§;
               _loc17_.§5!-§ = 0;
               _loc17_.§4Y§ = param1.§4Y§;
               _loc17_.§+U§ = param1.§+U§;
               _loc9_.§6!@§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§7!_§)
               {
                  _loc2_ = _loc9_.§3!Q§[_loc18_];
                  _loc2_.§0!A§ &= ~b2Body.§?$§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§,!W§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§ !5§();
                        _loc7_ = _loc2_.§`]§;
                        while(_loc7_)
                        {
                           _loc7_.§#!b§.§0!A§ &= ~b2Contact.§3?§;
                           _loc7_ = _loc7_.§5E§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§?!Y§)
               {
                  _loc11_ = _loc9_.§8`§[_loc18_];
                  _loc11_.§0!A§ &= ~(b2Contact.§3?§ | b2Contact.§?$§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§3I§)
               {
                  (_loc8_ = _loc9_.§#S§[_loc18_]).§'!5§ = false;
                  _loc18_++;
               }
               this.§"!4§.§ c§();
            }
         }
      }
      
      b2internal function §4^§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§^M§();
         var _loc3_:b2Body = param1.§ !H§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §&!<§;
         switch(param1.§%V§)
         {
            case b2Joint.§ Q§:
               this.§=!9§.§"v§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§]!'§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§3J§();
               _loc13_ = _loc11_.§=!1§();
               this.§=!9§.§"v§(_loc12_,_loc8_,_loc10_);
               this.§=!9§.§"v§(_loc13_,_loc9_,_loc10_);
               this.§=!9§.§"v§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§67§:
               this.§=!9§.§"v§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§=!9§.§"v§(_loc6_,_loc8_,_loc10_);
               }
               this.§=!9§.§"v§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§=!9§.§"v§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §8e§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§%V§)
         {
            case b2Shape.§8_§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§#t§(param2,_loc4_.§`!H§);
               _loc6_ = _loc4_.§?'§;
               _loc7_ = param2.R.col1;
               this.§=!9§.§+u§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§+N§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§0!>§();
               _loc11_ = _loc9_.§!1§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§#t§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§=!9§.§^G§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§9O§:
               _loc13_ = param1 as b2EdgeShape;
               this.§=!9§.§"v§(b2Math.§#t§(param2,_loc13_.GetVertex1()),b2Math.§#t§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

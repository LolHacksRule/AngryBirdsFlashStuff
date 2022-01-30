package §?!E§
{
   import §!t§.*;
   import §&!n§.*;
   import §2!Q§.*;
   import §8,§.*;
   import §9v§.*;
   import §`§.*;
   import §`U§.b2Controller;
   import §`U§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §5!-§:b2Transform = new b2Transform();
      
      private static var §3!?§:b2Sweep = new b2Sweep();
      
      private static var §0!+§:b2Sweep = new b2Sweep();
      
      private static var §="0§:b2TimeStep = new b2TimeStep();
      
      private static var §,!^§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §0#§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §-!i§:Boolean;
      
      private static var §'!4§:Boolean;
      
      public static const §5!L§:int = 1;
      
      public static const §&]§:int = 2;
       
      
      private var §1!7§:Vector.<b2Body>;
      
      b2internal var §5"4§:int;
      
      b2internal var §`![§:b2ContactManager;
      
      private var §?!o§:b2ContactSolver;
      
      private var §-1§:b2Island;
      
      b2internal var §;C§:b2Body;
      
      private var §4!N§:b2Joint;
      
      b2internal var §2v§:b2Contact;
      
      private var § -§:int;
      
      b2internal var §2o§:int;
      
      private var §,=§:int;
      
      private var §+!H§:b2Controller;
      
      private var §?!=§:int;
      
      private var §4!K§:b2Vec2;
      
      private var §=!c§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §@!_§:b2DestructionListener;
      
      private var §27§:b2DebugDraw;
      
      private var §#"&§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§1!7§ = new Vector.<b2Body>();
         this.§`![§ = new b2ContactManager();
         this.§?!o§ = new b2ContactSolver();
         this.§-1§ = new b2Island();
         super();
         this.§@!_§ = null;
         this.§27§ = null;
         this.§;C§ = null;
         this.§2v§ = null;
         this.§4!N§ = null;
         this.§+!H§ = null;
         this.§ -§ = 0;
         this.§2o§ = 0;
         this.§,=§ = 0;
         this.§?!=§ = 0;
         §-!i§ = true;
         §'!4§ = true;
         this.§=!c§ = param2;
         this.§4!K§ = param1;
         this.§#"&§ = 0;
         this.§`![§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§&h§(_loc3_);
      }
      
      public function §<!$§(param1:b2DestructionListener) : void
      {
         this.§@!_§ = param1;
      }
      
      public function §^r§(param1:b2ContactFilter) : void
      {
         this.§`![§.§]F§ = param1;
      }
      
      public function §+V§(param1:b2ContactListener) : void
      {
         this.§`![§.§[!c§ = param1;
      }
      
      public function §=i§(param1:b2DebugDraw) : void
      {
         this.§27§ = param1;
      }
      
      public function § !I§(param1:§7W§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§7W§ = this.§`![§.§'!G§;
         this.§`![§.§'!G§ = param1;
         var _loc3_:b2Body = this.§;C§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§1!3§;
            while(_loc4_)
            {
               _loc4_.§%!I§ = param1.§[2§(_loc2_.§ try§(_loc4_.§%!I§),_loc4_);
               _loc4_ = _loc4_.§-!7§;
            }
            _loc3_ = _loc3_.§-!7§;
         }
      }
      
      public function §5R§() : void
      {
         this.§`![§.§'!G§.§5R§();
      }
      
      public function §?!#§() : int
      {
         return this.§`![§.§'!G§.§?!#§();
      }
      
      public function §&h§(param1:b2BodyDef) : b2Body
      {
         if(this.§%Q§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§2<§ = null;
         _loc2_.§-!7§ = this.§;C§;
         if(this.§;C§)
         {
            this.§;C§.§2<§ = _loc2_;
         }
         this.§;C§ = _loc2_;
         ++this.§ -§;
         return _loc2_;
      }
      
      public function §7"+§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§%Q§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§4!N§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§9"#§;
            if(this.§@!_§)
            {
               this.§@!_§.§6d§(_loc6_.§&!t§);
            }
            this.§"!k§(_loc6_.§&!t§);
         }
         var _loc3_:b2ControllerEdge = param1.§+!H§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§'!Z§;
            _loc7_.§00§.§52§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§2v§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§9"#§;
            this.§`![§.§@!,§(_loc8_.§^!;§);
         }
         param1.§2v§ = null;
         var _loc5_:b2Fixture = param1.§1!3§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§-!7§;
            if(this.§@!_§)
            {
               this.§@!_§.§%!q§(_loc9_);
            }
            _loc9_.§+!<§(this.§`![§.§'!G§);
            _loc9_.§@!,§();
         }
         param1.§1!3§ = null;
         param1.§8!d§ = 0;
         if(param1.§2<§)
         {
            param1.§2<§.§-!7§ = param1.§-!7§;
         }
         if(param1.§-!7§)
         {
            param1.§-!7§.§2<§ = param1.§2<§;
         }
         if(param1 == this.§;C§)
         {
            this.§;C§ = param1.§-!7§;
         }
         --this.§ -§;
      }
      
      public function §6!u§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§-"$§(param1,null);
         _loc2_.§2<§ = null;
         _loc2_.§-!7§ = this.§4!N§;
         if(this.§4!N§)
         {
            this.§4!N§.§2<§ = _loc2_;
         }
         this.§4!N§ = _loc2_;
         ++this.§,=§;
         _loc2_.§4!3§.§&!t§ = _loc2_;
         _loc2_.§4!3§.§6!,§ = _loc2_.§]5§;
         _loc2_.§4!3§.§,"4§ = null;
         _loc2_.§4!3§.§9"#§ = _loc2_.§7-§.§4!N§;
         if(_loc2_.§7-§.§4!N§)
         {
            _loc2_.§7-§.§4!N§.§,"4§ = _loc2_.§4!3§;
         }
         _loc2_.§7-§.§4!N§ = _loc2_.§4!3§;
         _loc2_.§[" §.§&!t§ = _loc2_;
         _loc2_.§[" §.§6!,§ = _loc2_.§7-§;
         _loc2_.§[" §.§,"4§ = null;
         _loc2_.§[" §.§9"#§ = _loc2_.§]5§.§4!N§;
         if(_loc2_.§]5§.§4!N§)
         {
            _loc2_.§]5§.§4!N§.§,"4§ = _loc2_.§[" §;
         }
         _loc2_.§]5§.§4!N§ = _loc2_.§[" §;
         var _loc3_:b2Body = param1.§["%§;
         var _loc4_:b2Body = param1.§`!<§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§>!I§();
            while(_loc5_)
            {
               if(_loc5_.§6!,§ == _loc3_)
               {
                  _loc5_.§^!;§.§^G§();
               }
               _loc5_ = _loc5_.§9"#§;
            }
         }
         return _loc2_;
      }
      
      public function §"!k§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§7!@§;
         if(param1.§2<§)
         {
            param1.§2<§.§-!7§ = param1.§-!7§;
         }
         if(param1.§-!7§)
         {
            param1.§-!7§.§2<§ = param1.§2<§;
         }
         if(param1 == this.§4!N§)
         {
            this.§4!N§ = param1.§-!7§;
         }
         var _loc3_:b2Body = param1.§7-§;
         var _loc4_:b2Body = param1.§]5§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§4!3§.§,"4§)
         {
            param1.§4!3§.§,"4§.§9"#§ = param1.§4!3§.§9"#§;
         }
         if(param1.§4!3§.§9"#§)
         {
            param1.§4!3§.§9"#§.§,"4§ = param1.§4!3§.§,"4§;
         }
         if(param1.§4!3§ == _loc3_.§4!N§)
         {
            _loc3_.§4!N§ = param1.§4!3§.§9"#§;
         }
         param1.§4!3§.§,"4§ = null;
         param1.§4!3§.§9"#§ = null;
         if(param1.§[" §.§,"4§)
         {
            param1.§[" §.§,"4§.§9"#§ = param1.§[" §.§9"#§;
         }
         if(param1.§[" §.§9"#§)
         {
            param1.§[" §.§9"#§.§,"4§ = param1.§[" §.§,"4§;
         }
         if(param1.§[" § == _loc4_.§4!N§)
         {
            _loc4_.§4!N§ = param1.§[" §.§9"#§;
         }
         param1.§[" §.§,"4§ = null;
         param1.§[" §.§9"#§ = null;
         b2Joint.§@!,§(param1,null);
         --this.§,=§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§>!I§();
            while(_loc5_)
            {
               if(_loc5_.§6!,§ == _loc3_)
               {
                  _loc5_.§^!;§.§^G§();
               }
               _loc5_ = _loc5_.§9"#§;
            }
         }
      }
      
      public function §<!z§(param1:b2Controller) : b2Controller
      {
         param1.§-!7§ = this.§+!H§;
         param1.§2<§ = null;
         this.§+!H§ = param1;
         param1.m_world = this;
         ++this.§?!=§;
         return param1;
      }
      
      public function §5!'§(param1:b2Controller) : void
      {
         if(param1.§2<§)
         {
            param1.§2<§.§-!7§ = param1.§-!7§;
         }
         if(param1.§-!7§)
         {
            param1.§-!7§.§2<§ = param1.§2<§;
         }
         if(this.§+!H§ == param1)
         {
            this.§+!H§ = param1.§-!7§;
         }
         --this.§?!=§;
      }
      
      public function §7J§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§-!7§ = this.§+!H§;
         param1.§2<§ = null;
         if(this.§+!H§)
         {
            this.§+!H§.§2<§ = param1;
         }
         this.§+!H§ = param1;
         ++this.§?!=§;
         param1.m_world = this;
         return param1;
      }
      
      public function §`&§(param1:b2Controller) : void
      {
         param1.§8!f§();
         if(param1.§-!7§)
         {
            param1.§-!7§.§2<§ = param1.§2<§;
         }
         if(param1.§2<§)
         {
            param1.§2<§.§-!7§ = param1.§-!7§;
         }
         if(param1 == this.§+!H§)
         {
            this.§+!H§ = param1.§-!7§;
         }
         --this.§?!=§;
      }
      
      public function §2!>§(param1:Boolean) : void
      {
         §-!i§ = param1;
      }
      
      public function §[S§(param1:Boolean) : void
      {
         §'!4§ = param1;
      }
      
      public function §#"0§() : int
      {
         return this.§ -§;
      }
      
      public function §0s§() : int
      {
         return this.§,=§;
      }
      
      public function § !X§() : int
      {
         return this.§2o§;
      }
      
      public function §[§(param1:b2Vec2) : void
      {
         this.§4!K§ = param1;
      }
      
      public function §3!a§() : b2Vec2
      {
         return this.§4!K§;
      }
      
      public function §>K§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §<"2§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§5"4§ & §5!L§)
         {
            this.§`![§.§9!!§();
            this.§5"4§ &= ~§5!L§;
         }
         this.§5"4§ |= §&]§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§,!i§ = param1;
         _loc4_.§'!$§ = param2;
         _loc4_.§;9§ = param3;
         if(param1 > 0)
         {
            _loc4_.§2!B§ = 1 / param1;
         }
         else
         {
            _loc4_.§2!B§ = 0;
         }
         _loc4_.§4!1§ = this.§#"&§ * param1;
         _loc4_.§&9§ = §-!i§;
         this.§`![§.§+!'§();
         if(_loc4_.§,!i§ > 0)
         {
            this.§=!3§(_loc4_);
         }
         if(§'!4§ && _loc4_.§,!i§ > 0)
         {
            this.§6!9§(_loc4_);
         }
         if(_loc4_.§,!i§ > 0)
         {
            this.§#"&§ = _loc4_.§2!B§;
         }
         this.§5"4§ &= ~§&]§;
      }
      
      public function §<""§() : void
      {
         var _loc1_:b2Body = this.§;C§;
         while(_loc1_)
         {
            _loc1_.§[!^§.§6V§();
            _loc1_.§^<§ = 0;
            _loc1_ = _loc1_.§-!7§;
         }
      }
      
      public function §use §() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§7W§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§27§ == null)
         {
            return;
         }
         this.§27§.§44§.graphics.clear();
         var _loc1_:uint = this.§27§.§"5§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§87§)
         {
            _loc3_ = this.§;C§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§3!G§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§0!Q§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§!!$§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§7![§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§!!$§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§7![§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§!!$§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§!!$§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§!!$§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§-!7§;
               }
               _loc3_ = _loc3_.§-!7§;
            }
         }
         if(_loc1_ & b2DebugDraw.§6!H§)
         {
            _loc6_ = this.§4!N§;
            while(_loc6_)
            {
               this.§6!X§(_loc6_);
               _loc6_ = _loc6_.§-!7§;
            }
         }
         if(_loc1_ & b2DebugDraw.§+"+§)
         {
            _loc16_ = this.§+!H§;
            while(_loc16_)
            {
               _loc16_.§!B§(this.§27§);
               _loc16_ = _loc16_.§-!7§;
            }
         }
         if(_loc1_ & b2DebugDraw.§8t§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§`![§.§2v§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§2&§();
               _loc19_ = _loc17_.§=!C§();
               _loc20_ = _loc18_.§"!t§().§ ,§();
               _loc21_ = _loc19_.§"!t§().§ ,§();
               this.§27§.§5B§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§%T§();
            }
         }
         if(_loc1_ & b2DebugDraw.§^!W§)
         {
            _loc7_ = this.§`![§.§'!G§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§;C§;
            while(_loc3_)
            {
               if(_loc3_.§0!Q§() != false)
               {
                  _loc4_ = _loc3_.§3!G§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§ try§(_loc4_.§%!I§);
                     _loc14_[0].Set(_loc22_.§0!l§.x,_loc22_.§0!l§.y);
                     _loc14_[1].Set(_loc22_.§6E§.x,_loc22_.§0!l§.y);
                     _loc14_[2].Set(_loc22_.§6E§.x,_loc22_.§6E§.y);
                     _loc14_[3].Set(_loc22_.§0!l§.x,_loc22_.§6E§.y);
                     this.§27§.§>!i§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§%T§();
                  }
               }
               _loc3_ = _loc3_.§%T§();
            }
         }
         if(_loc1_ & b2DebugDraw.§3"4§)
         {
            _loc3_ = this.§;C§;
            while(_loc3_)
            {
               (_loc11_ = §5!-§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§=v§();
               this.§27§.§'!k§(_loc11_);
               _loc3_ = _loc3_.§-!7§;
            }
         }
      }
      
      public function §;!E§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§7W§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§`![§.§'!G§;
         broadPhase.§&!M§(WorldQueryWrapper,aabb);
      }
      
      public function §;3§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§7W§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§=!1§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§@w§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§3!I§();
         }
         broadPhase = this.§`![§.§'!G§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§&!M§(WorldQueryWrapper,aabb);
      }
      
      public function §!d§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§7W§ = null;
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
         broadPhase = this.§`![§.§'!G§;
         var aabb:b2AABB = new b2AABB();
         aabb.§0!l§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§6E§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§&!M§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§7W§ = null;
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
            return param1.§'U§;
         };
         broadPhase = this.§`![§.§'!G§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §8"&§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §0L§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §!! §() : b2Body
      {
         return this.§;C§;
      }
      
      public function §@`§() : b2Joint
      {
         return this.§4!N§;
      }
      
      public function §>!I§() : b2Contact
      {
         return this.§2v§;
      }
      
      public function §%Q§() : Boolean
      {
         return (this.§5"4§ & §&]§) > 0;
      }
      
      b2internal function §=!3§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§+!H§;
         while(_loc3_)
         {
            _loc3_.§<"2§(param1);
            _loc3_ = _loc3_.§-!7§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§-1§).§`!&§(this.§ -§,this.§2o§,this.§,=§,null,this.§`![§.§[!c§,this.§?!o§);
         _loc2_ = this.§;C§;
         while(_loc2_)
         {
            _loc2_.§5"4§ &= ~b2Body.§3!h§;
            _loc2_ = _loc2_.§-!7§;
         }
         var _loc5_:b2Contact = this.§2v§;
         while(_loc5_)
         {
            _loc5_.§5"4§ &= ~b2Contact.§3!h§;
            _loc5_ = _loc5_.§-!7§;
         }
         var _loc6_:b2Joint = this.§4!N§;
         while(_loc6_)
         {
            _loc6_.§@!d§ = false;
            _loc6_ = _loc6_.§-!7§;
         }
         var _loc7_:int = this.§ -§;
         var _loc8_:Vector.<b2Body> = this.§1!7§;
         var _loc9_:b2Body = this.§;C§;
         while(_loc9_)
         {
            if(!(_loc9_.§5"4§ & b2Body.§3!h§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§0!Q§() == false))
               {
                  if(_loc9_.§7![§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§8!f§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§5"4§ |= b2Body.§3!h§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§7F§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§7![§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§2v§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§^!;§.§5"4§ & b2Contact.§3!h§))
                              {
                                 if(!(_loc13_.§^!;§.§`!F§() == true || _loc13_.§^!;§.§3Y§() == false || _loc13_.§^!;§.§," §() == false))
                                 {
                                    _loc4_.§;T§(_loc13_.§^!;§);
                                    _loc13_.§^!;§.§5"4§ |= b2Contact.§3!h§;
                                    if(!((_loc12_ = _loc13_.§6!,§).§5"4§ & b2Body.§3!h§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§5"4§ |= b2Body.§3!h§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§9"#§;
                           }
                           _loc14_ = _loc2_.§4!N§;
                           while(_loc14_)
                           {
                              if(_loc14_.§&!t§.§@!d§ != true)
                              {
                                 if((_loc12_ = _loc14_.§6!,§).§0!Q§() != false)
                                 {
                                    _loc4_.§4!H§(_loc14_.§&!t§);
                                    _loc14_.§&!t§.§@!d§ = true;
                                    if(!(_loc12_.§5"4§ & b2Body.§3!h§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§5"4§ |= b2Body.§3!h§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§9"#§;
                           }
                        }
                     }
                     _loc4_.§=!3§(param1,this.§4!K§,this.§=!c§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§ -§)
                     {
                        _loc2_ = _loc4_.§@f§[_loc11_];
                        if(_loc2_.§7![§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§5"4§ &= ~b2Body.§3!h§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§-!7§;
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
         _loc2_ = this.§;C§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§0!Q§() == false))
            {
               if(_loc2_.§7![§() != b2Body.b2_staticBody)
               {
                  _loc2_.§<!w§();
               }
            }
            _loc2_ = _loc2_.§-!7§;
         }
         this.§`![§.§9!!§();
      }
      
      b2internal function §6!9§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§-1§).§`!&§(this.§ -§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§`![§.§[!c§,this.§?!o§);
         var _loc10_:Vector.<b2Body> = §,!^§;
         _loc2_ = this.§;C§;
         while(_loc2_)
         {
            _loc2_.§5"4§ &= ~b2Body.§3!h§;
            _loc2_.m_sweep.§#b§ = 0;
            _loc2_ = _loc2_.§-!7§;
         }
         _loc11_ = this.§2v§;
         while(_loc11_)
         {
            _loc11_.§5"4§ &= ~(b2Contact.§0!<§ | b2Contact.§3!h§);
            _loc11_ = _loc11_.§-!7§;
         }
         _loc8_ = this.§4!N§;
         while(_loc8_)
         {
            _loc8_.§@!d§ = false;
            _loc8_ = _loc8_.§-!7§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§2v§;
            while(_loc11_)
            {
               if(!(_loc11_.§`!F§() == true || _loc11_.§3Y§() == false || _loc11_.§;e§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§5"4§ & b2Contact.§0!<§)
                  {
                     _loc19_ = _loc11_.§^! §;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§+!u§;
                     _loc4_ = _loc11_.§6h§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§7![§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§7![§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr627:
                        _loc11_ = _loc11_.§-!7§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§#b§;
                     if(_loc5_.m_sweep.§#b§ < _loc6_.m_sweep.§#b§)
                     {
                        _loc20_ = _loc6_.m_sweep.§#b§;
                        _loc5_.m_sweep.§"!$§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§#b§ < _loc5_.m_sweep.§#b§)
                     {
                        _loc20_ = _loc5_.m_sweep.§#b§;
                        _loc6_.m_sweep.§"!$§(_loc20_);
                     }
                     _loc19_ = _loc11_.§;n§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§^! § = _loc19_;
                     _loc11_.§5"4§ |= b2Contact.§0!<§;
                     §§goto(addr627);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr627);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§+!u§;
            _loc4_ = _loc12_.§6h§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §3!?§.Set(_loc5_.m_sweep);
            §0!+§.Set(_loc6_.m_sweep);
            _loc5_.§"!$§(_loc13_);
            _loc6_.§"!$§(_loc13_);
            _loc12_.§0a§(this.§`![§.§[!c§);
            _loc12_.§5"4§ &= ~b2Contact.§0!<§;
            if(_loc12_.§`!F§() == true || _loc12_.§3Y§() == false)
            {
               _loc5_.m_sweep.Set(§3!?§);
               _loc6_.m_sweep.Set(§0!+§);
               _loc5_.§]!k§();
               _loc6_.§]!k§();
            }
            else if(_loc12_.§," §() != false)
            {
               if((_loc14_ = _loc5_).§7![§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§8!f§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§5"4§ |= b2Body.§3!h§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§7F§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§7![§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§2v§;
                     while(_loc7_)
                     {
                        if(_loc9_.§2o§ == _loc9_.§[!C§)
                        {
                           break;
                        }
                        if(!(_loc7_.§^!;§.§5"4§ & b2Contact.§3!h§))
                        {
                           if(!(_loc7_.§^!;§.§`!F§() == true || _loc7_.§^!;§.§3Y§() == false || _loc7_.§^!;§.§," §() == false))
                           {
                              _loc9_.§;T§(_loc7_.§^!;§);
                              _loc7_.§^!;§.§5"4§ |= b2Contact.§3!h§;
                              if(!((_loc22_ = _loc7_.§6!,§).§5"4§ & b2Body.§3!h§))
                              {
                                 if(_loc22_.§7![§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§"!$§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§5"4§ |= b2Body.§3!h§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§9"#§;
                     }
                     _loc21_ = _loc2_.§4!N§;
                     while(_loc21_)
                     {
                        if(_loc9_.§,=§ != _loc9_.§<!j§)
                        {
                           if(_loc21_.§&!t§.§@!d§ != true)
                           {
                              if((_loc22_ = _loc21_.§6!,§).§0!Q§() != false)
                              {
                                 _loc9_.§4!H§(_loc21_.§&!t§);
                                 _loc21_.§&!t§.§@!d§ = true;
                                 if(!(_loc22_.§5"4§ & b2Body.§3!h§))
                                 {
                                    if(_loc22_.§7![§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§"!$§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§5"4§ |= b2Body.§3!h§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§9"#§;
                     }
                  }
               }
               (_loc17_ = §="0§).§&9§ = false;
               _loc17_.§,!i§ = (1 - _loc13_) * param1.§,!i§;
               _loc17_.§2!B§ = 1 / _loc17_.§,!i§;
               _loc17_.§4!1§ = 0;
               _loc17_.§'!$§ = param1.§'!$§;
               _loc17_.§;9§ = param1.§;9§;
               _loc9_.§6!9§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§ -§)
               {
                  _loc2_ = _loc9_.§@f§[_loc18_];
                  _loc2_.§5"4§ &= ~b2Body.§3!h§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§7![§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§<!w§();
                        _loc7_ = _loc2_.§2v§;
                        while(_loc7_)
                        {
                           _loc7_.§^!;§.§5"4§ &= ~b2Contact.§0!<§;
                           _loc7_ = _loc7_.§9"#§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§2o§)
               {
                  _loc11_ = _loc9_.§4&§[_loc18_];
                  _loc11_.§5"4§ &= ~(b2Contact.§0!<§ | b2Contact.§3!h§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§,=§)
               {
                  (_loc8_ = _loc9_.§6!-§[_loc18_]).§@!d§ = false;
                  _loc18_++;
               }
               this.§`![§.§9!!§();
            }
         }
      }
      
      b2internal function §6!X§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§;Z§();
         var _loc3_:b2Body = param1.§=w§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §0#§;
         switch(param1.§;M§)
         {
            case b2Joint.§3!l§:
               this.§27§.§5B§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§=!>§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§>!<§();
               _loc13_ = _loc11_.§2!6§();
               this.§27§.§5B§(_loc12_,_loc8_,_loc10_);
               this.§27§.§5B§(_loc13_,_loc9_,_loc10_);
               this.§27§.§5B§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§4"5§:
               this.§27§.§5B§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§27§.§5B§(_loc6_,_loc8_,_loc10_);
               }
               this.§27§.§5B§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§27§.§5B§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §!!$§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§;M§)
         {
            case b2Shape.§1"2§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§;!N§(param2,_loc4_.§-!C§);
               _loc6_ = _loc4_.§&!o§;
               _loc7_ = param2.R.col1;
               this.§27§.§'!!§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§;!y§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§+i§();
               _loc11_ = _loc9_.§4-§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§;!N§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§27§.§3D§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§+!w§:
               _loc13_ = param1 as b2EdgeShape;
               this.§27§.§5B§(b2Math.§;!N§(param2,_loc13_.GetVertex1()),b2Math.§;!N§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

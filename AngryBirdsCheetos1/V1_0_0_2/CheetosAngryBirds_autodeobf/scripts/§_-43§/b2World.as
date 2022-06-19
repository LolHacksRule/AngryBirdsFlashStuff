package §_-43§
{
   import § if§.*;
   import §_-F2§.*;
   import §_-Jx§.*;
   import §_-ZX§.*;
   import §_-d6§.*;
   import §_-ol§.*;
   import §_-wK§.b2Controller;
   import §_-wK§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §_-I2§:b2Transform = new b2Transform();
      
      private static var §_-9E§:b2Sweep = new b2Sweep();
      
      private static var §_-Ed§:b2Sweep = new b2Sweep();
      
      private static var §_-ff§:b2TimeStep = new b2TimeStep();
      
      private static var §_-se§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §_-WD§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §_-Mz§:Boolean;
      
      private static var §_-v-§:Boolean;
      
      public static const §_-F0§:int = 1;
      
      public static const §_-0w§:int = 2;
       
      
      private var §_-Ha§:Vector.<b2Body>;
      
      b2internal var §_-o4§:int;
      
      b2internal var §_-lg§:b2ContactManager;
      
      private var §_-Wz§:b2ContactSolver;
      
      private var §_-RL§:b2Island;
      
      b2internal var §_-BE§:b2Body;
      
      private var §_-Ka§:b2Joint;
      
      b2internal var §_-pp§:b2Contact;
      
      private var §_-xV§:int;
      
      b2internal var §_-jG§:int;
      
      private var §_-PJ§:int;
      
      private var §_-xY§:b2Controller;
      
      private var §_-gC§:int;
      
      private var §_-U5§:b2Vec2;
      
      private var §_-Fm§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §_-jU§:b2DestructionListener;
      
      private var §_-G1§:b2DebugDraw;
      
      private var §_-z6§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§_-Ha§ = new Vector.<b2Body>();
         this.§_-lg§ = new b2ContactManager();
         this.§_-Wz§ = new b2ContactSolver();
         this.§_-RL§ = new b2Island();
         super();
         this.§_-jU§ = null;
         this.§_-G1§ = null;
         this.§_-BE§ = null;
         this.§_-pp§ = null;
         this.§_-Ka§ = null;
         this.§_-xY§ = null;
         this.§_-xV§ = 0;
         this.§_-jG§ = 0;
         this.§_-PJ§ = 0;
         this.§_-gC§ = 0;
         §_-Mz§ = true;
         §_-v-§ = true;
         this.§_-Fm§ = param2;
         this.§_-U5§ = param1;
         this.§_-z6§ = 0;
         this.§_-lg§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§_-dS§(_loc3_);
      }
      
      public function §_-g8§(param1:b2DestructionListener) : void
      {
         this.§_-jU§ = param1;
      }
      
      public function §_-nb§(param1:b2ContactFilter) : void
      {
         this.§_-lg§.§_-I4§ = param1;
      }
      
      public function §_-tV§(param1:b2ContactListener) : void
      {
         this.§_-lg§.§_-xb§ = param1;
      }
      
      public function §_-0-s§(param1:b2DebugDraw) : void
      {
         this.§_-G1§ = param1;
      }
      
      public function §_-TK§(param1:§_-e1§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§_-e1§ = this.§_-lg§.§_-pf§;
         this.§_-lg§.§_-pf§ = param1;
         var _loc3_:b2Body = this.§_-BE§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§_-ta§;
            while(_loc4_)
            {
               _loc4_.§_-v7§ = param1.§_-Pw§(_loc2_.§_-uL§(_loc4_.§_-v7§),_loc4_);
               _loc4_ = _loc4_.§_-4N§;
            }
            _loc3_ = _loc3_.§_-4N§;
         }
      }
      
      public function §_-xo§() : void
      {
         this.§_-lg§.§_-pf§.§_-xo§();
      }
      
      public function §_-Iw§() : int
      {
         return this.§_-lg§.§_-pf§.§_-Iw§();
      }
      
      public function §_-dS§(param1:b2BodyDef) : b2Body
      {
         if(this.§_-sK§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§_-Nc§ = null;
         _loc2_.§_-4N§ = this.§_-BE§;
         if(this.§_-BE§)
         {
            this.§_-BE§.§_-Nc§ = _loc2_;
         }
         this.§_-BE§ = _loc2_;
         ++this.§_-xV§;
         return _loc2_;
      }
      
      public function §_-qD§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§_-sK§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§_-Ka§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§_-Rk§;
            if(this.§_-jU§)
            {
               this.§_-jU§.§_-LW§(_loc6_.§_-6-§);
            }
            this.§_-Sn§(_loc6_.§_-6-§);
         }
         var _loc3_:b2ControllerEdge = param1.§_-xY§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§_-LI§;
            _loc7_.§_-0j§.§_-O9§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§_-pp§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§_-Rk§;
            this.§_-lg§.§_-TI§(_loc8_.§_-50§);
         }
         param1.§_-pp§ = null;
         var _loc5_:b2Fixture = param1.§_-ta§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§_-4N§;
            if(this.§_-jU§)
            {
               this.§_-jU§.§_-F5§(_loc9_);
            }
            _loc9_.§_-fe§(this.§_-lg§.§_-pf§);
            _loc9_.§_-TI§();
         }
         param1.§_-ta§ = null;
         param1.§_-N8§ = 0;
         if(param1.§_-Nc§)
         {
            param1.§_-Nc§.§_-4N§ = param1.§_-4N§;
         }
         if(param1.§_-4N§)
         {
            param1.§_-4N§.§_-Nc§ = param1.§_-Nc§;
         }
         if(param1 == this.§_-BE§)
         {
            this.§_-BE§ = param1.§_-4N§;
         }
         --this.§_-xV§;
      }
      
      public function set(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§_-6l§(param1,null);
         _loc2_.§_-Nc§ = null;
         _loc2_.§_-4N§ = this.§_-Ka§;
         if(this.§_-Ka§)
         {
            this.§_-Ka§.§_-Nc§ = _loc2_;
         }
         this.§_-Ka§ = _loc2_;
         ++this.§_-PJ§;
         _loc2_.§_-d§.§_-6-§ = _loc2_;
         _loc2_.§_-d§.§_-f3§ = _loc2_.§_-eo§;
         _loc2_.§_-d§.§_-rm§ = null;
         _loc2_.§_-d§.§_-Rk§ = _loc2_.§_-Fj§.§_-Ka§;
         if(_loc2_.§_-Fj§.§_-Ka§)
         {
            _loc2_.§_-Fj§.§_-Ka§.§_-rm§ = _loc2_.§_-d§;
         }
         _loc2_.§_-Fj§.§_-Ka§ = _loc2_.§_-d§;
         _loc2_.§_-Xy§.§_-6-§ = _loc2_;
         _loc2_.§_-Xy§.§_-f3§ = _loc2_.§_-Fj§;
         _loc2_.§_-Xy§.§_-rm§ = null;
         _loc2_.§_-Xy§.§_-Rk§ = _loc2_.§_-eo§.§_-Ka§;
         if(_loc2_.§_-eo§.§_-Ka§)
         {
            _loc2_.§_-eo§.§_-Ka§.§_-rm§ = _loc2_.§_-Xy§;
         }
         _loc2_.§_-eo§.§_-Ka§ = _loc2_.§_-Xy§;
         var _loc3_:b2Body = param1.§_-4f§;
         var _loc4_:b2Body = param1.§_-FU§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§_-sA§();
            while(_loc5_)
            {
               if(_loc5_.§_-f3§ == _loc3_)
               {
                  _loc5_.§_-50§.§_-0-5§();
               }
               _loc5_ = _loc5_.§_-Rk§;
            }
         }
         return _loc2_;
      }
      
      public function §_-Sn§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§_-sT§;
         if(param1.§_-Nc§)
         {
            param1.§_-Nc§.§_-4N§ = param1.§_-4N§;
         }
         if(param1.§_-4N§)
         {
            param1.§_-4N§.§_-Nc§ = param1.§_-Nc§;
         }
         if(param1 == this.§_-Ka§)
         {
            this.§_-Ka§ = param1.§_-4N§;
         }
         var _loc3_:b2Body = param1.§_-Fj§;
         var _loc4_:b2Body = param1.§_-eo§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§_-d§.§_-rm§)
         {
            param1.§_-d§.§_-rm§.§_-Rk§ = param1.§_-d§.§_-Rk§;
         }
         if(param1.§_-d§.§_-Rk§)
         {
            param1.§_-d§.§_-Rk§.§_-rm§ = param1.§_-d§.§_-rm§;
         }
         if(param1.§_-d§ == _loc3_.§_-Ka§)
         {
            _loc3_.§_-Ka§ = param1.§_-d§.§_-Rk§;
         }
         param1.§_-d§.§_-rm§ = null;
         param1.§_-d§.§_-Rk§ = null;
         if(param1.§_-Xy§.§_-rm§)
         {
            param1.§_-Xy§.§_-rm§.§_-Rk§ = param1.§_-Xy§.§_-Rk§;
         }
         if(param1.§_-Xy§.§_-Rk§)
         {
            param1.§_-Xy§.§_-Rk§.§_-rm§ = param1.§_-Xy§.§_-rm§;
         }
         if(param1.§_-Xy§ == _loc4_.§_-Ka§)
         {
            _loc4_.§_-Ka§ = param1.§_-Xy§.§_-Rk§;
         }
         param1.§_-Xy§.§_-rm§ = null;
         param1.§_-Xy§.§_-Rk§ = null;
         b2Joint.§_-TI§(param1,null);
         --this.§_-PJ§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§_-sA§();
            while(_loc5_)
            {
               if(_loc5_.§_-f3§ == _loc3_)
               {
                  _loc5_.§_-50§.§_-0-5§();
               }
               _loc5_ = _loc5_.§_-Rk§;
            }
         }
      }
      
      public function §_-R0§(param1:b2Controller) : b2Controller
      {
         param1.§_-4N§ = this.§_-xY§;
         param1.§_-Nc§ = null;
         this.§_-xY§ = param1;
         param1.m_world = this;
         ++this.§_-gC§;
         return param1;
      }
      
      public function §_-de§(param1:b2Controller) : void
      {
         if(param1.§_-Nc§)
         {
            param1.§_-Nc§.§_-4N§ = param1.§_-4N§;
         }
         if(param1.§_-4N§)
         {
            param1.§_-4N§.§_-Nc§ = param1.§_-Nc§;
         }
         if(this.§_-xY§ == param1)
         {
            this.§_-xY§ = param1.§_-4N§;
         }
         --this.§_-gC§;
      }
      
      public function §_-Bv§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§_-4N§ = this.§_-xY§;
         param1.§_-Nc§ = null;
         if(this.§_-xY§)
         {
            this.§_-xY§.§_-Nc§ = param1;
         }
         this.§_-xY§ = param1;
         ++this.§_-gC§;
         param1.m_world = this;
         return param1;
      }
      
      public function §_-oJ§(param1:b2Controller) : void
      {
         param1.§_-ai§();
         if(param1.§_-4N§)
         {
            param1.§_-4N§.§_-Nc§ = param1.§_-Nc§;
         }
         if(param1.§_-Nc§)
         {
            param1.§_-Nc§.§_-4N§ = param1.§_-4N§;
         }
         if(param1 == this.§_-xY§)
         {
            this.§_-xY§ = param1.§_-4N§;
         }
         --this.§_-gC§;
      }
      
      public function §_-2q§(param1:Boolean) : void
      {
         §_-Mz§ = param1;
      }
      
      public function §_-hu§(param1:Boolean) : void
      {
         §_-v-§ = param1;
      }
      
      public function §_-Rc§() : int
      {
         return this.§_-xV§;
      }
      
      public function §_-j7§() : int
      {
         return this.§_-PJ§;
      }
      
      public function §_-0-l§() : int
      {
         return this.§_-jG§;
      }
      
      public function §_-4B§(param1:b2Vec2) : void
      {
         this.§_-U5§ = param1;
      }
      
      public function §_-hM§() : b2Vec2
      {
         return this.§_-U5§;
      }
      
      public function §_-eP§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §_-U1§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§_-o4§ & §_-F0§)
         {
            this.§_-lg§.§_-nR§();
            this.§_-o4§ &= ~§_-F0§;
         }
         this.§_-o4§ |= §_-0w§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§_-At§ = param1;
         _loc4_.§_-1Y§ = param2;
         _loc4_.§_-SL§ = param3;
         if(param1 > 0)
         {
            _loc4_.§_-GC§ = 1 / param1;
         }
         else
         {
            _loc4_.§_-GC§ = 0;
         }
         _loc4_.§_-cz§ = this.§_-z6§ * param1;
         _loc4_.§_-fo§ = §_-Mz§;
         this.§_-lg§.§_-CD§();
         if(_loc4_.§_-At§ > 0)
         {
            this.§_-mC§(_loc4_);
         }
         if(§_-v-§ && _loc4_.§_-At§ > 0)
         {
            this.§_-kD§(_loc4_);
         }
         if(_loc4_.§_-At§ > 0)
         {
            this.§_-z6§ = _loc4_.§_-GC§;
         }
         this.§_-o4§ &= ~§_-0w§;
      }
      
      public function §break§() : void
      {
         var _loc1_:b2Body = this.§_-BE§;
         while(_loc1_)
         {
            _loc1_.§if§.§_-t5§();
            _loc1_.§_-8Y§ = 0;
            _loc1_ = _loc1_.§_-4N§;
         }
      }
      
      public function §_-DU§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§_-e1§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§_-G1§ == null)
         {
            return;
         }
         this.§_-G1§.§_-OL§.graphics.clear();
         var _loc1_:uint = this.§_-G1§.§_-kv§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§_-in§)
         {
            _loc3_ = this.§_-BE§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§_-B3§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§_-Au§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§_-P2§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-cT§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§_-P2§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-cT§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§_-P2§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§_-P2§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§_-P2§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§_-4N§;
               }
               _loc3_ = _loc3_.§_-4N§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-Uq§)
         {
            _loc6_ = this.§_-Ka§;
            while(_loc6_)
            {
               this.§_-W4§(_loc6_);
               _loc6_ = _loc6_.§_-4N§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-yB§)
         {
            _loc16_ = this.§_-xY§;
            while(_loc16_)
            {
               _loc16_.§_-4C§(this.§_-G1§);
               _loc16_ = _loc16_.§_-4N§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-br§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§_-lg§.§_-pp§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§_-ml§();
               _loc19_ = _loc17_.§_-s9§();
               _loc20_ = _loc18_.§_-Ab§().§_-55§();
               _loc21_ = _loc19_.§_-Ab§().§_-55§();
               this.§_-G1§.§_-IQ§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§_-4A§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-1N§)
         {
            _loc7_ = this.§_-lg§.§_-pf§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§_-BE§;
            while(_loc3_)
            {
               if(_loc3_.§_-Au§() != false)
               {
                  _loc4_ = _loc3_.§_-B3§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§_-uL§(_loc4_.§_-v7§);
                     _loc14_[0].Set(_loc22_.§_-jd§.x,_loc22_.§_-jd§.y);
                     _loc14_[1].Set(_loc22_.§_-V5§.x,_loc22_.§_-jd§.y);
                     _loc14_[2].Set(_loc22_.§_-V5§.x,_loc22_.§_-V5§.y);
                     _loc14_[3].Set(_loc22_.§_-jd§.x,_loc22_.§_-V5§.y);
                     this.§_-G1§.§_-yz§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§_-4A§();
                  }
               }
               _loc3_ = _loc3_.§_-4A§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-Eo§)
         {
            _loc3_ = this.§_-BE§;
            while(_loc3_)
            {
               (_loc11_ = §_-I2§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§_-nS§();
               this.§_-G1§.§_-Im§(_loc11_);
               _loc3_ = _loc3_.§_-4N§;
            }
         }
      }
      
      public function §_-HO§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§_-e1§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§_-lg§.§_-pf§;
         broadPhase.§_-pU§(WorldQueryWrapper,aabb);
      }
      
      public function §_-WI§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§_-e1§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§_-LO§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§_-lD§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§_-5W§();
         }
         broadPhase = this.§_-lg§.§_-pf§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§_-pU§(WorldQueryWrapper,aabb);
      }
      
      public function §_-Gx§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§_-e1§ = null;
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
         broadPhase = this.§_-lg§.§_-pf§;
         var aabb:b2AABB = new b2AABB();
         aabb.§_-jd§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§_-V5§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§_-pU§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§_-e1§ = null;
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
            return param1.§_-dK§;
         };
         broadPhase = this.§_-lg§.§_-pf§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §_-vg§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §_-td§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §_-Za§() : b2Body
      {
         return this.§_-BE§;
      }
      
      public function §_-7x§() : b2Joint
      {
         return this.§_-Ka§;
      }
      
      public function §_-sA§() : b2Contact
      {
         return this.§_-pp§;
      }
      
      public function §_-sK§() : Boolean
      {
         return (this.§_-o4§ & §_-0w§) > 0;
      }
      
      b2internal function §_-mC§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§_-xY§;
         while(_loc3_)
         {
            _loc3_.§_-U1§(param1);
            _loc3_ = _loc3_.§_-4N§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§_-RL§).§_-M0§(this.§_-xV§,this.§_-jG§,this.§_-PJ§,null,this.§_-lg§.§_-xb§,this.§_-Wz§);
         _loc2_ = this.§_-BE§;
         while(_loc2_)
         {
            _loc2_.§_-o4§ &= ~b2Body.§_-0-q§;
            _loc2_ = _loc2_.§_-4N§;
         }
         var _loc5_:b2Contact = this.§_-pp§;
         while(_loc5_)
         {
            _loc5_.§_-o4§ &= ~b2Contact.§_-0-q§;
            _loc5_ = _loc5_.§_-4N§;
         }
         var _loc6_:b2Joint = this.§_-Ka§;
         while(_loc6_)
         {
            _loc6_.§_-0W§ = false;
            _loc6_ = _loc6_.§_-4N§;
         }
         var _loc7_:int = this.§_-xV§;
         var _loc8_:Vector.<b2Body> = this.§_-Ha§;
         var _loc9_:b2Body = this.§_-BE§;
         while(_loc9_)
         {
            if(!(_loc9_.§_-o4§ & b2Body.§_-0-q§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§_-Au§() == false))
               {
                  if(_loc9_.§_-cT§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§_-ai§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§_-o4§ |= b2Body.§_-0-q§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§_-sk§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§_-cT§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§_-pp§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§_-50§.§_-o4§ & b2Contact.§_-0-q§))
                              {
                                 if(!(_loc13_.§_-50§.§_-wi§() == true || _loc13_.§_-50§.§_-Ey§() == false || _loc13_.§_-50§.§_-ax§() == false))
                                 {
                                    _loc4_.§_-rf§(_loc13_.§_-50§);
                                    _loc13_.§_-50§.§_-o4§ |= b2Contact.§_-0-q§;
                                    if(!((_loc12_ = _loc13_.§_-f3§).§_-o4§ & b2Body.§_-0-q§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-o4§ |= b2Body.§_-0-q§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§_-Rk§;
                           }
                           _loc14_ = _loc2_.§_-Ka§;
                           while(_loc14_)
                           {
                              if(_loc14_.§_-6-§.§_-0W§ != true)
                              {
                                 if((_loc12_ = _loc14_.§_-f3§).§_-Au§() != false)
                                 {
                                    _loc4_.§_-Xi§(_loc14_.§_-6-§);
                                    _loc14_.§_-6-§.§_-0W§ = true;
                                    if(!(_loc12_.§_-o4§ & b2Body.§_-0-q§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-o4§ |= b2Body.§_-0-q§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§_-Rk§;
                           }
                        }
                     }
                     _loc4_.§_-mC§(param1,this.§_-U5§,this.§_-Fm§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§_-xV§)
                     {
                        _loc2_ = _loc4_.§_-WU§[_loc11_];
                        if(_loc2_.§_-cT§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§_-o4§ &= ~b2Body.§_-0-q§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§_-4N§;
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
         _loc2_ = this.§_-BE§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§_-Au§() == false))
            {
               if(_loc2_.§_-cT§() != b2Body.b2_staticBody)
               {
                  _loc2_.§_-ZA§();
               }
            }
            _loc2_ = _loc2_.§_-4N§;
         }
         this.§_-lg§.§_-nR§();
      }
      
      b2internal function §_-kD§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§_-RL§).§_-M0§(this.§_-xV§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§_-lg§.§_-xb§,this.§_-Wz§);
         var _loc10_:Vector.<b2Body> = §_-se§;
         _loc2_ = this.§_-BE§;
         while(_loc2_)
         {
            _loc2_.§_-o4§ &= ~b2Body.§_-0-q§;
            _loc2_.m_sweep.§_-4u§ = 0;
            _loc2_ = _loc2_.§_-4N§;
         }
         _loc11_ = this.§_-pp§;
         while(_loc11_)
         {
            _loc11_.§_-o4§ &= ~(b2Contact.§_-vI§ | b2Contact.§_-0-q§);
            _loc11_ = _loc11_.§_-4N§;
         }
         _loc8_ = this.§_-Ka§;
         while(_loc8_)
         {
            _loc8_.§_-0W§ = false;
            _loc8_ = _loc8_.§_-4N§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§_-pp§;
            while(_loc11_)
            {
               if(!(_loc11_.§_-wi§() == true || _loc11_.§_-Ey§() == false || _loc11_.§_-H0§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§_-o4§ & b2Contact.§_-vI§)
                  {
                     _loc19_ = _loc11_.§_-CH§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§_-pQ§;
                     _loc4_ = _loc11_.§_-mY§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§_-cT§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§_-cT§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr472:
                        _loc11_ = _loc11_.§_-4N§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§_-4u§;
                     if(_loc5_.m_sweep.§_-4u§ < _loc6_.m_sweep.§_-4u§)
                     {
                        _loc20_ = _loc6_.m_sweep.§_-4u§;
                        _loc5_.m_sweep.§_-px§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§_-4u§ < _loc5_.m_sweep.§_-4u§)
                     {
                        _loc20_ = _loc5_.m_sweep.§_-4u§;
                        _loc6_.m_sweep.§_-px§(_loc20_);
                     }
                     _loc19_ = _loc11_.§_-lh§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§_-CH§ = _loc19_;
                     _loc11_.§_-o4§ |= b2Contact.§_-vI§;
                     §§goto(addr472);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr472);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§_-pQ§;
            _loc4_ = _loc12_.§_-mY§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §_-9E§.Set(_loc5_.m_sweep);
            §_-Ed§.Set(_loc6_.m_sweep);
            _loc5_.§_-px§(_loc13_);
            _loc6_.§_-px§(_loc13_);
            _loc12_.§_-gk§(this.§_-lg§.§_-xb§);
            _loc12_.§_-o4§ &= ~b2Contact.§_-vI§;
            if(_loc12_.§_-wi§() == true || _loc12_.§_-Ey§() == false)
            {
               _loc5_.m_sweep.Set(§_-9E§);
               _loc6_.m_sweep.Set(§_-Ed§);
               _loc5_.§_-76§();
               _loc6_.§_-76§();
            }
            else if(_loc12_.§_-ax§() != false)
            {
               if((_loc14_ = _loc5_).§_-cT§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§_-ai§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§_-o4§ |= b2Body.§_-0-q§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§_-sk§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§_-cT§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§_-pp§;
                     while(_loc7_)
                     {
                        if(_loc9_.§_-jG§ == _loc9_.§_-5C§)
                        {
                           break;
                        }
                        if(!(_loc7_.§_-50§.§_-o4§ & b2Contact.§_-0-q§))
                        {
                           if(!(_loc7_.§_-50§.§_-wi§() == true || _loc7_.§_-50§.§_-Ey§() == false || _loc7_.§_-50§.§_-ax§() == false))
                           {
                              _loc9_.§_-rf§(_loc7_.§_-50§);
                              _loc7_.§_-50§.§_-o4§ |= b2Contact.§_-0-q§;
                              if(!((_loc22_ = _loc7_.§_-f3§).§_-o4§ & b2Body.§_-0-q§))
                              {
                                 if(_loc22_.§_-cT§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§_-px§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§_-o4§ |= b2Body.§_-0-q§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§_-Rk§;
                     }
                     _loc21_ = _loc2_.§_-Ka§;
                     while(_loc21_)
                     {
                        if(_loc9_.§_-PJ§ != _loc9_.§_-g9§)
                        {
                           if(_loc21_.§_-6-§.§_-0W§ != true)
                           {
                              if((_loc22_ = _loc21_.§_-f3§).§_-Au§() != false)
                              {
                                 _loc9_.§_-Xi§(_loc21_.§_-6-§);
                                 _loc21_.§_-6-§.§_-0W§ = true;
                                 if(!(_loc22_.§_-o4§ & b2Body.§_-0-q§))
                                 {
                                    if(_loc22_.§_-cT§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§_-px§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§_-o4§ |= b2Body.§_-0-q§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§_-Rk§;
                     }
                  }
               }
               (_loc17_ = §_-ff§).§_-fo§ = false;
               _loc17_.§_-At§ = (1 - _loc13_) * param1.§_-At§;
               _loc17_.§_-GC§ = 1 / _loc17_.§_-At§;
               _loc17_.§_-cz§ = 0;
               _loc17_.§_-1Y§ = param1.§_-1Y§;
               _loc17_.§_-SL§ = param1.§_-SL§;
               _loc9_.§_-kD§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-xV§)
               {
                  _loc2_ = _loc9_.§_-WU§[_loc18_];
                  _loc2_.§_-o4§ &= ~b2Body.§_-0-q§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§_-cT§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§_-ZA§();
                        _loc7_ = _loc2_.§_-pp§;
                        while(_loc7_)
                        {
                           _loc7_.§_-50§.§_-o4§ &= ~b2Contact.§_-vI§;
                           _loc7_ = _loc7_.§_-Rk§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-jG§)
               {
                  _loc11_ = _loc9_.§_-jJ§[_loc18_];
                  _loc11_.§_-o4§ &= ~(b2Contact.§_-vI§ | b2Contact.§_-0-q§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-PJ§)
               {
                  (_loc8_ = _loc9_.§_-FA§[_loc18_]).§_-0W§ = false;
                  _loc18_++;
               }
               this.§_-lg§.§_-nR§();
            }
         }
      }
      
      b2internal function §_-W4§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§_-3M§();
         var _loc3_:b2Body = param1.§_-Ki§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §_-WD§;
         switch(param1.§_-zO§)
         {
            case b2Joint.§_-bG§:
               this.§_-G1§.§_-IQ§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§_-9C§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§_-ya§();
               _loc13_ = _loc11_.§_-ny§();
               this.§_-G1§.§_-IQ§(_loc12_,_loc8_,_loc10_);
               this.§_-G1§.§_-IQ§(_loc13_,_loc9_,_loc10_);
               this.§_-G1§.§_-IQ§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§_-9P§:
               this.§_-G1§.§_-IQ§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§_-G1§.§_-IQ§(_loc6_,_loc8_,_loc10_);
               }
               this.§_-G1§.§_-IQ§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§_-G1§.§_-IQ§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §_-P2§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§_-zO§)
         {
            case b2Shape.§_-4p§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§_-is§(param2,_loc4_.§_-SA§);
               _loc6_ = _loc4_.§_-KL§;
               _loc7_ = param2.R.col1;
               this.§_-G1§.§_-b8§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§_-Wf§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§_-Vk§();
               _loc11_ = _loc9_.§_-ut§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§_-is§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§_-G1§.§_-cB§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§_-t9§:
               _loc13_ = param1 as b2EdgeShape;
               this.§_-G1§.§_-IQ§(b2Math.§_-is§(param2,_loc13_.GetVertex1()),b2Math.§_-is§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

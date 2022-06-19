package §_-00B§
{
   import §_-E§.*;
   import §_-Jf§.*;
   import §_-KI§.b2Controller;
   import §_-KI§.b2ControllerEdge;
   import §_-Kz§.*;
   import §_-OY§.*;
   import §_-Vn§.*;
   import §_-fl§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §_-vn§:b2Transform = new b2Transform();
      
      private static var §_-OK§:b2Sweep = new b2Sweep();
      
      private static var §_-WE§:b2Sweep = new b2Sweep();
      
      private static var §_-T0§:b2TimeStep = new b2TimeStep();
      
      private static var §_-cv§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §_-my§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §_-00j§:Boolean;
      
      private static var §_-sL§:Boolean;
      
      public static const §_-IF§:int = 1;
      
      public static const §_-LA§:int = 2;
       
      
      private var §_-OH§:Vector.<b2Body>;
      
      b2internal var §_-Tw§:int;
      
      b2internal var §_-2e§:b2ContactManager;
      
      private var §_-bx§:b2ContactSolver;
      
      private var §_-AF§:b2Island;
      
      b2internal var §_-Nz§:b2Body;
      
      private var §_-xc§:b2Joint;
      
      b2internal var §_-Ew§:b2Contact;
      
      private var §_-hT§:int;
      
      b2internal var §_-6k§:int;
      
      private var §_-rJ§:int;
      
      private var §_-eA§:b2Controller;
      
      private var §_-ih§:int;
      
      private var §_-bS§:b2Vec2;
      
      private var §_-Ex§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §_-N1§:b2DestructionListener;
      
      private var §_-Np§:b2DebugDraw;
      
      private var §_-pc§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§_-OH§ = new Vector.<b2Body>();
         this.§_-2e§ = new b2ContactManager();
         this.§_-bx§ = new b2ContactSolver();
         this.§_-AF§ = new b2Island();
         super();
         this.§_-N1§ = null;
         this.§_-Np§ = null;
         this.§_-Nz§ = null;
         this.§_-Ew§ = null;
         this.§_-xc§ = null;
         this.§_-eA§ = null;
         this.§_-hT§ = 0;
         this.§_-6k§ = 0;
         this.§_-rJ§ = 0;
         this.§_-ih§ = 0;
         §_-00j§ = true;
         §_-sL§ = true;
         this.§_-Ex§ = param2;
         this.§_-bS§ = param1;
         this.§_-pc§ = 0;
         this.§_-2e§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§_-nm§(_loc3_);
      }
      
      public function §_-0H§(param1:b2DestructionListener) : void
      {
         this.§_-N1§ = param1;
      }
      
      public function §_-8c§(param1:b2ContactFilter) : void
      {
         this.§_-2e§.§_-7Z§ = param1;
      }
      
      public function §_-qB§(param1:b2ContactListener) : void
      {
         this.§_-2e§.§_-5P§ = param1;
      }
      
      public function §_-4j§(param1:b2DebugDraw) : void
      {
         this.§_-Np§ = param1;
      }
      
      public function §_-94§(param1:§_-n0§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§_-n0§ = this.§_-2e§.§get §;
         this.§_-2e§.§get § = param1;
         var _loc3_:b2Body = this.§_-Nz§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§_-00u§;
            while(_loc4_)
            {
               _loc4_.§_-Wg§ = param1.§_-00b§(_loc2_.§_-x2§(_loc4_.§_-Wg§),_loc4_);
               _loc4_ = _loc4_.§_-E1§;
            }
            _loc3_ = _loc3_.§_-E1§;
         }
      }
      
      public function §_-BF§() : void
      {
         this.§_-2e§.§get §.§_-BF§();
      }
      
      public function §_-jL§() : int
      {
         return this.§_-2e§.§get §.§_-jL§();
      }
      
      public function §_-nm§(param1:b2BodyDef) : b2Body
      {
         if(this.§_-n4§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§_-u6§ = null;
         _loc2_.§_-E1§ = this.§_-Nz§;
         if(this.§_-Nz§)
         {
            this.§_-Nz§.§_-u6§ = _loc2_;
         }
         this.§_-Nz§ = _loc2_;
         ++this.§_-hT§;
         return _loc2_;
      }
      
      public function §_-U6§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§_-n4§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§_-xc§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§_-WK§;
            if(this.§_-N1§)
            {
               this.§_-N1§.§_-LH§(_loc6_.§_-26§);
            }
            this.§_-vU§(_loc6_.§_-26§);
         }
         var _loc3_:b2ControllerEdge = param1.§_-eA§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§_-d4§;
            _loc7_.§ try§.§_-6S§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§_-Ew§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§_-WK§;
            this.§_-2e§.§_-TB§(_loc8_.§_-NB§);
         }
         param1.§_-Ew§ = null;
         var _loc5_:b2Fixture = param1.§_-00u§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§_-E1§;
            if(this.§_-N1§)
            {
               this.§_-N1§.§_-p2§(_loc9_);
            }
            _loc9_.§_-XN§(this.§_-2e§.§get §);
            _loc9_.§_-TB§();
         }
         param1.§_-00u§ = null;
         param1.§super§ = 0;
         if(param1.§_-u6§)
         {
            param1.§_-u6§.§_-E1§ = param1.§_-E1§;
         }
         if(param1.§_-E1§)
         {
            param1.§_-E1§.§_-u6§ = param1.§_-u6§;
         }
         if(param1 == this.§_-Nz§)
         {
            this.§_-Nz§ = param1.§_-E1§;
         }
         --this.§_-hT§;
      }
      
      public function §_-sj§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§null §(param1,null);
         _loc2_.§_-u6§ = null;
         _loc2_.§_-E1§ = this.§_-xc§;
         if(this.§_-xc§)
         {
            this.§_-xc§.§_-u6§ = _loc2_;
         }
         this.§_-xc§ = _loc2_;
         ++this.§_-rJ§;
         _loc2_.§_-5h§.§_-26§ = _loc2_;
         _loc2_.§_-5h§.§_-4o§ = _loc2_.§_-52§;
         _loc2_.§_-5h§.§_-ey§ = null;
         _loc2_.§_-5h§.§_-WK§ = _loc2_.§_-oB§.§_-xc§;
         if(_loc2_.§_-oB§.§_-xc§)
         {
            _loc2_.§_-oB§.§_-xc§.§_-ey§ = _loc2_.§_-5h§;
         }
         _loc2_.§_-oB§.§_-xc§ = _loc2_.§_-5h§;
         _loc2_.§_-Hk§.§_-26§ = _loc2_;
         _loc2_.§_-Hk§.§_-4o§ = _loc2_.§_-oB§;
         _loc2_.§_-Hk§.§_-ey§ = null;
         _loc2_.§_-Hk§.§_-WK§ = _loc2_.§_-52§.§_-xc§;
         if(_loc2_.§_-52§.§_-xc§)
         {
            _loc2_.§_-52§.§_-xc§.§_-ey§ = _loc2_.§_-Hk§;
         }
         _loc2_.§_-52§.§_-xc§ = _loc2_.§_-Hk§;
         var _loc3_:b2Body = param1.§_-c7§;
         var _loc4_:b2Body = param1.§_-60§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§_-37§();
            while(_loc5_)
            {
               if(_loc5_.§_-4o§ == _loc3_)
               {
                  _loc5_.§_-NB§.§_-SC§();
               }
               _loc5_ = _loc5_.§_-WK§;
            }
         }
         return _loc2_;
      }
      
      public function §_-vU§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§_-J-§;
         if(param1.§_-u6§)
         {
            param1.§_-u6§.§_-E1§ = param1.§_-E1§;
         }
         if(param1.§_-E1§)
         {
            param1.§_-E1§.§_-u6§ = param1.§_-u6§;
         }
         if(param1 == this.§_-xc§)
         {
            this.§_-xc§ = param1.§_-E1§;
         }
         var _loc3_:b2Body = param1.§_-oB§;
         var _loc4_:b2Body = param1.§_-52§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§_-5h§.§_-ey§)
         {
            param1.§_-5h§.§_-ey§.§_-WK§ = param1.§_-5h§.§_-WK§;
         }
         if(param1.§_-5h§.§_-WK§)
         {
            param1.§_-5h§.§_-WK§.§_-ey§ = param1.§_-5h§.§_-ey§;
         }
         if(param1.§_-5h§ == _loc3_.§_-xc§)
         {
            _loc3_.§_-xc§ = param1.§_-5h§.§_-WK§;
         }
         param1.§_-5h§.§_-ey§ = null;
         param1.§_-5h§.§_-WK§ = null;
         if(param1.§_-Hk§.§_-ey§)
         {
            param1.§_-Hk§.§_-ey§.§_-WK§ = param1.§_-Hk§.§_-WK§;
         }
         if(param1.§_-Hk§.§_-WK§)
         {
            param1.§_-Hk§.§_-WK§.§_-ey§ = param1.§_-Hk§.§_-ey§;
         }
         if(param1.§_-Hk§ == _loc4_.§_-xc§)
         {
            _loc4_.§_-xc§ = param1.§_-Hk§.§_-WK§;
         }
         param1.§_-Hk§.§_-ey§ = null;
         param1.§_-Hk§.§_-WK§ = null;
         b2Joint.§_-TB§(param1,null);
         --this.§_-rJ§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§_-37§();
            while(_loc5_)
            {
               if(_loc5_.§_-4o§ == _loc3_)
               {
                  _loc5_.§_-NB§.§_-SC§();
               }
               _loc5_ = _loc5_.§_-WK§;
            }
         }
      }
      
      public function §_-ft§(param1:b2Controller) : b2Controller
      {
         param1.§_-E1§ = this.§_-eA§;
         param1.§_-u6§ = null;
         this.§_-eA§ = param1;
         param1.m_world = this;
         ++this.§_-ih§;
         return param1;
      }
      
      public function §_-jD§(param1:b2Controller) : void
      {
         if(param1.§_-u6§)
         {
            param1.§_-u6§.§_-E1§ = param1.§_-E1§;
         }
         if(param1.§_-E1§)
         {
            param1.§_-E1§.§_-u6§ = param1.§_-u6§;
         }
         if(this.§_-eA§ == param1)
         {
            this.§_-eA§ = param1.§_-E1§;
         }
         --this.§_-ih§;
      }
      
      public function §_-h1§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§_-E1§ = this.§_-eA§;
         param1.§_-u6§ = null;
         if(this.§_-eA§)
         {
            this.§_-eA§.§_-u6§ = param1;
         }
         this.§_-eA§ = param1;
         ++this.§_-ih§;
         param1.m_world = this;
         return param1;
      }
      
      public function §_-yr§(param1:b2Controller) : void
      {
         param1.§_-SP§();
         if(param1.§_-E1§)
         {
            param1.§_-E1§.§_-u6§ = param1.§_-u6§;
         }
         if(param1.§_-u6§)
         {
            param1.§_-u6§.§_-E1§ = param1.§_-E1§;
         }
         if(param1 == this.§_-eA§)
         {
            this.§_-eA§ = param1.§_-E1§;
         }
         --this.§_-ih§;
      }
      
      public function §_-C7§(param1:Boolean) : void
      {
         §_-00j§ = param1;
      }
      
      public function §_-U5§(param1:Boolean) : void
      {
         §_-sL§ = param1;
      }
      
      public function §_-kj§() : int
      {
         return this.§_-hT§;
      }
      
      public function §_-fa§() : int
      {
         return this.§_-rJ§;
      }
      
      public function §_-Qm§() : int
      {
         return this.§_-6k§;
      }
      
      public function §_-JE§(param1:b2Vec2) : void
      {
         this.§_-bS§ = param1;
      }
      
      public function §_-zG§() : b2Vec2
      {
         return this.§_-bS§;
      }
      
      public function §_-EL§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §_-qa§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§_-Tw§ & §_-IF§)
         {
            this.§_-2e§.§_-c4§();
            this.§_-Tw§ &= ~§_-IF§;
         }
         this.§_-Tw§ |= §_-LA§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§_-Km§ = param1;
         _loc4_.§_-xq§ = param2;
         _loc4_.§_-BQ§ = param3;
         if(param1 > 0)
         {
            _loc4_.§_-FS§ = 1 / param1;
         }
         else
         {
            _loc4_.§_-FS§ = 0;
         }
         _loc4_.§_-na§ = this.§_-pc§ * param1;
         _loc4_.§_-eH§ = §_-00j§;
         this.§_-2e§.§_-yE§();
         if(_loc4_.§_-Km§ > 0)
         {
            this.§_-O8§(_loc4_);
         }
         if(§_-sL§ && _loc4_.§_-Km§ > 0)
         {
            this.§_-HU§(_loc4_);
         }
         if(_loc4_.§_-Km§ > 0)
         {
            this.§_-pc§ = _loc4_.§_-FS§;
         }
         this.§_-Tw§ &= ~§_-LA§;
      }
      
      public function §_-4d§() : void
      {
         var _loc1_:b2Body = this.§_-Nz§;
         while(_loc1_)
         {
            _loc1_.§_-4s§.§return§();
            _loc1_.§_-Ri§ = 0;
            _loc1_ = _loc1_.§_-E1§;
         }
      }
      
      public function §_-CL§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§_-n0§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§_-Np§ == null)
         {
            return;
         }
         this.§_-Np§.§_-IQ§.graphics.clear();
         var _loc1_:uint = this.§_-Np§.§_-YH§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§_-R2§)
         {
            _loc3_ = this.§_-Nz§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§_-00J§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§_-Uh§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§_-dw§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-n§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§_-dw§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-n§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§_-dw§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§_-dw§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§_-dw§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§_-E1§;
               }
               _loc3_ = _loc3_.§_-E1§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-CY§)
         {
            _loc6_ = this.§_-xc§;
            while(_loc6_)
            {
               this.§ in§(_loc6_);
               _loc6_ = _loc6_.§_-E1§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-at§)
         {
            _loc16_ = this.§_-eA§;
            while(_loc16_)
            {
               _loc16_.§_-ub§(this.§_-Np§);
               _loc16_ = _loc16_.§_-E1§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-Yf§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§_-2e§.§_-Ew§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§_-tb§();
               _loc19_ = _loc17_.§_-Ix§();
               _loc20_ = _loc18_.§_-r0§().§_-Mz§();
               _loc21_ = _loc19_.§_-r0§().§_-Mz§();
               this.§_-Np§.§_-o-§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§_-si§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-WU§)
         {
            _loc7_ = this.§_-2e§.§get §;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§_-Nz§;
            while(_loc3_)
            {
               if(_loc3_.§_-Uh§() != false)
               {
                  _loc4_ = _loc3_.§_-00J§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§_-x2§(_loc4_.§_-Wg§);
                     _loc14_[0].Set(_loc22_.§_-00c§.x,_loc22_.§_-00c§.y);
                     _loc14_[1].Set(_loc22_.§_-ZN§.x,_loc22_.§_-00c§.y);
                     _loc14_[2].Set(_loc22_.§_-ZN§.x,_loc22_.§_-ZN§.y);
                     _loc14_[3].Set(_loc22_.§_-00c§.x,_loc22_.§_-ZN§.y);
                     this.§_-Np§.§_-iF§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§_-si§();
                  }
               }
               _loc3_ = _loc3_.§_-si§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-VJ§)
         {
            _loc3_ = this.§_-Nz§;
            while(_loc3_)
            {
               (_loc11_ = §_-vn§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§_-Cs§();
               this.§_-Np§.§_-00W§(_loc11_);
               _loc3_ = _loc3_.§_-E1§;
            }
         }
      }
      
      public function §_-fN§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§_-n0§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§_-2e§.§get §;
         broadPhase.§_-H0§(WorldQueryWrapper,aabb);
      }
      
      public function §_-wM§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§_-n0§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§_-wl§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§_-fs§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§_-dm§();
         }
         broadPhase = this.§_-2e§.§get §;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§_-H0§(WorldQueryWrapper,aabb);
      }
      
      public function §_-td§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§_-n0§ = null;
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
         broadPhase = this.§_-2e§.§get §;
         var aabb:b2AABB = new b2AABB();
         aabb.§_-00c§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§_-ZN§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§_-H0§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§_-n0§ = null;
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
            return param1.§_-S2§;
         };
         broadPhase = this.§_-2e§.§get §;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §_-zg§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §_-A0§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §_-Sw§() : b2Body
      {
         return this.§_-Nz§;
      }
      
      public function §_-rA§() : b2Joint
      {
         return this.§_-xc§;
      }
      
      public function §_-37§() : b2Contact
      {
         return this.§_-Ew§;
      }
      
      public function §_-n4§() : Boolean
      {
         return (this.§_-Tw§ & §_-LA§) > 0;
      }
      
      b2internal function §_-O8§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§_-eA§;
         while(_loc3_)
         {
            _loc3_.§_-qa§(param1);
            _loc3_ = _loc3_.§_-E1§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§_-AF§).§_-yN§(this.§_-hT§,this.§_-6k§,this.§_-rJ§,null,this.§_-2e§.§_-5P§,this.§_-bx§);
         _loc2_ = this.§_-Nz§;
         while(_loc2_)
         {
            _loc2_.§_-Tw§ &= ~b2Body.§_-VA§;
            _loc2_ = _loc2_.§_-E1§;
         }
         var _loc5_:b2Contact = this.§_-Ew§;
         while(_loc5_)
         {
            _loc5_.§_-Tw§ &= ~b2Contact.§_-VA§;
            _loc5_ = _loc5_.§_-E1§;
         }
         var _loc6_:b2Joint = this.§_-xc§;
         while(_loc6_)
         {
            _loc6_.§_-JK§ = false;
            _loc6_ = _loc6_.§_-E1§;
         }
         var _loc7_:int = this.§_-hT§;
         var _loc8_:Vector.<b2Body> = this.§_-OH§;
         var _loc9_:b2Body = this.§_-Nz§;
         while(_loc9_)
         {
            if(!(_loc9_.§_-Tw§ & b2Body.§_-VA§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§_-Uh§() == false))
               {
                  if(_loc9_.§_-n§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§_-SP§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§_-Tw§ |= b2Body.§_-VA§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§ case§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§_-n§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§_-Ew§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§_-NB§.§_-Tw§ & b2Contact.§_-VA§))
                              {
                                 if(!(_loc13_.§_-NB§.§_-z0§() == true || _loc13_.§_-NB§.§_-00q§() == false || _loc13_.§_-NB§.§_-yI§() == false))
                                 {
                                    _loc4_.§_-Lk§(_loc13_.§_-NB§);
                                    _loc13_.§_-NB§.§_-Tw§ |= b2Contact.§_-VA§;
                                    if(!((_loc12_ = _loc13_.§_-4o§).§_-Tw§ & b2Body.§_-VA§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-Tw§ |= b2Body.§_-VA§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§_-WK§;
                           }
                           _loc14_ = _loc2_.§_-xc§;
                           while(_loc14_)
                           {
                              if(_loc14_.§_-26§.§_-JK§ != true)
                              {
                                 if((_loc12_ = _loc14_.§_-4o§).§_-Uh§() != false)
                                 {
                                    _loc4_.§_-Xh§(_loc14_.§_-26§);
                                    _loc14_.§_-26§.§_-JK§ = true;
                                    if(!(_loc12_.§_-Tw§ & b2Body.§_-VA§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-Tw§ |= b2Body.§_-VA§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§_-WK§;
                           }
                        }
                     }
                     _loc4_.§_-O8§(param1,this.§_-bS§,this.§_-Ex§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§_-hT§)
                     {
                        _loc2_ = _loc4_.§_-Pe§[_loc11_];
                        if(_loc2_.§_-n§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§_-Tw§ &= ~b2Body.§_-VA§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§_-E1§;
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
         _loc2_ = this.§_-Nz§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§_-Uh§() == false))
            {
               if(_loc2_.§_-n§() != b2Body.b2_staticBody)
               {
                  _loc2_.§_-7K§();
               }
            }
            _loc2_ = _loc2_.§_-E1§;
         }
         this.§_-2e§.§_-c4§();
      }
      
      b2internal function §_-HU§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§_-AF§).§_-yN§(this.§_-hT§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§_-2e§.§_-5P§,this.§_-bx§);
         var _loc10_:Vector.<b2Body> = §_-cv§;
         _loc2_ = this.§_-Nz§;
         while(_loc2_)
         {
            _loc2_.§_-Tw§ &= ~b2Body.§_-VA§;
            _loc2_.m_sweep.§_-4f§ = 0;
            _loc2_ = _loc2_.§_-E1§;
         }
         _loc11_ = this.§_-Ew§;
         while(_loc11_)
         {
            _loc11_.§_-Tw§ &= ~(b2Contact.§_-0B§ | b2Contact.§_-VA§);
            _loc11_ = _loc11_.§_-E1§;
         }
         _loc8_ = this.§_-xc§;
         while(_loc8_)
         {
            _loc8_.§_-JK§ = false;
            _loc8_ = _loc8_.§_-E1§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§_-Ew§;
            while(_loc11_)
            {
               if(!(_loc11_.§_-z0§() == true || _loc11_.§_-00q§() == false || _loc11_.§_-he§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§_-Tw§ & b2Contact.§_-0B§)
                  {
                     _loc19_ = _loc11_.§_-zt§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§_-a9§;
                     _loc4_ = _loc11_.§_-2b§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§_-n§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§_-n§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr515:
                        _loc11_ = _loc11_.§_-E1§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§_-4f§;
                     if(_loc5_.m_sweep.§_-4f§ < _loc6_.m_sweep.§_-4f§)
                     {
                        _loc20_ = _loc6_.m_sweep.§_-4f§;
                        _loc5_.m_sweep.§_-Ng§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§_-4f§ < _loc5_.m_sweep.§_-4f§)
                     {
                        _loc20_ = _loc5_.m_sweep.§_-4f§;
                        _loc6_.m_sweep.§_-Ng§(_loc20_);
                     }
                     _loc19_ = _loc11_.§_-F4§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§_-zt§ = _loc19_;
                     _loc11_.§_-Tw§ |= b2Contact.§_-0B§;
                     §§goto(addr515);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr515);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§_-a9§;
            _loc4_ = _loc12_.§_-2b§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §_-OK§.Set(_loc5_.m_sweep);
            §_-WE§.Set(_loc6_.m_sweep);
            _loc5_.§_-Ng§(_loc13_);
            _loc6_.§_-Ng§(_loc13_);
            _loc12_.§_-0-8§(this.§_-2e§.§_-5P§);
            _loc12_.§_-Tw§ &= ~b2Contact.§_-0B§;
            if(_loc12_.§_-z0§() == true || _loc12_.§_-00q§() == false)
            {
               _loc5_.m_sweep.Set(§_-OK§);
               _loc6_.m_sweep.Set(§_-WE§);
               _loc5_.§_-X2§();
               _loc6_.§_-X2§();
            }
            else if(_loc12_.§_-yI§() != false)
            {
               if((_loc14_ = _loc5_).§_-n§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§_-SP§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§_-Tw§ |= b2Body.§_-VA§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§ case§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§_-n§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§_-Ew§;
                     while(_loc7_)
                     {
                        if(_loc9_.§_-6k§ == _loc9_.§_-Fe§)
                        {
                           break;
                        }
                        if(!(_loc7_.§_-NB§.§_-Tw§ & b2Contact.§_-VA§))
                        {
                           if(!(_loc7_.§_-NB§.§_-z0§() == true || _loc7_.§_-NB§.§_-00q§() == false || _loc7_.§_-NB§.§_-yI§() == false))
                           {
                              _loc9_.§_-Lk§(_loc7_.§_-NB§);
                              _loc7_.§_-NB§.§_-Tw§ |= b2Contact.§_-VA§;
                              if(!((_loc22_ = _loc7_.§_-4o§).§_-Tw§ & b2Body.§_-VA§))
                              {
                                 if(_loc22_.§_-n§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§_-Ng§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§_-Tw§ |= b2Body.§_-VA§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§_-WK§;
                     }
                     _loc21_ = _loc2_.§_-xc§;
                     while(_loc21_)
                     {
                        if(_loc9_.§_-rJ§ != _loc9_.§_-RC§)
                        {
                           if(_loc21_.§_-26§.§_-JK§ != true)
                           {
                              if((_loc22_ = _loc21_.§_-4o§).§_-Uh§() != false)
                              {
                                 _loc9_.§_-Xh§(_loc21_.§_-26§);
                                 _loc21_.§_-26§.§_-JK§ = true;
                                 if(!(_loc22_.§_-Tw§ & b2Body.§_-VA§))
                                 {
                                    if(_loc22_.§_-n§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§_-Ng§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§_-Tw§ |= b2Body.§_-VA§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§_-WK§;
                     }
                  }
               }
               (_loc17_ = §_-T0§).§_-eH§ = false;
               _loc17_.§_-Km§ = (1 - _loc13_) * param1.§_-Km§;
               _loc17_.§_-FS§ = 1 / _loc17_.§_-Km§;
               _loc17_.§_-na§ = 0;
               _loc17_.§_-xq§ = param1.§_-xq§;
               _loc17_.§_-BQ§ = param1.§_-BQ§;
               _loc9_.§_-HU§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-hT§)
               {
                  _loc2_ = _loc9_.§_-Pe§[_loc18_];
                  _loc2_.§_-Tw§ &= ~b2Body.§_-VA§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§_-n§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§_-7K§();
                        _loc7_ = _loc2_.§_-Ew§;
                        while(_loc7_)
                        {
                           _loc7_.§_-NB§.§_-Tw§ &= ~b2Contact.§_-0B§;
                           _loc7_ = _loc7_.§_-WK§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-6k§)
               {
                  _loc11_ = _loc9_.§_-Jq§[_loc18_];
                  _loc11_.§_-Tw§ &= ~(b2Contact.§_-0B§ | b2Contact.§_-VA§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-rJ§)
               {
                  (_loc8_ = _loc9_.§_-cX§[_loc18_]).§_-JK§ = false;
                  _loc18_++;
               }
               this.§_-2e§.§_-c4§();
            }
         }
      }
      
      b2internal function § in§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§_-AM§();
         var _loc3_:b2Body = param1.§_-oE§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §_-my§;
         switch(param1.§_-Kg§)
         {
            case b2Joint.§_-ew§:
               this.§_-Np§.§_-o-§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§_-j2§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§_-8q§();
               _loc13_ = _loc11_.§_-R4§();
               this.§_-Np§.§_-o-§(_loc12_,_loc8_,_loc10_);
               this.§_-Np§.§_-o-§(_loc13_,_loc9_,_loc10_);
               this.§_-Np§.§_-o-§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§_-2m§:
               this.§_-Np§.§_-o-§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§_-Np§.§_-o-§(_loc6_,_loc8_,_loc10_);
               }
               this.§_-Np§.§_-o-§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§_-Np§.§_-o-§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §_-dw§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§_-Kg§)
         {
            case b2Shape.§_-b9§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§_-jR§(param2,_loc4_.§_-QL§);
               _loc6_ = _loc4_.§_-EG§;
               _loc7_ = param2.R.col1;
               this.§_-Np§.§_-rG§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§_-8u§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§_-kB§();
               _loc11_ = _loc9_.§_-MW§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§_-jR§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§_-Np§.§_-IJ§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§_-Jk§:
               _loc13_ = param1 as b2EdgeShape;
               this.§_-Np§.§_-o-§(b2Math.§_-jR§(param2,_loc13_.GetVertex1()),b2Math.§_-jR§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

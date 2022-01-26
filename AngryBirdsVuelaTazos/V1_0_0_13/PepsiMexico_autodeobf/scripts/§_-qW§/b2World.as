package §_-qW§
{
   import §_-2V§.*;
   import §_-8i§.*;
   import §_-SM§.*;
   import §_-gy§.*;
   import §_-q4§.b2Controller;
   import §_-q4§.b2ControllerEdge;
   import §_-wZ§.*;
   import §var§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §_-Vo§:b2Transform = new b2Transform();
      
      private static var §_-xc§:b2Sweep = new b2Sweep();
      
      private static var §_-NA§:b2Sweep = new b2Sweep();
      
      private static var §_-vZ§:b2TimeStep = new b2TimeStep();
      
      private static var §_-GM§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §_-zI§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §_-9g§:Boolean;
      
      private static var §_-Yg§:Boolean;
      
      public static const §_-2p§:int = 1;
      
      public static const §_-eO§:int = 2;
       
      
      private var §_-eE§:Vector.<b2Body>;
      
      b2internal var §_-X3§:int;
      
      b2internal var §_-wl§:b2ContactManager;
      
      private var §_-fq§:b2ContactSolver;
      
      private var §_-WE§:b2Island;
      
      b2internal var §_-Sx§:b2Body;
      
      private var §_-sD§:b2Joint;
      
      b2internal var §_-EI§:b2Contact;
      
      private var §_-fQ§:int;
      
      b2internal var §_-kN§:int;
      
      private var §_-ru§:int;
      
      private var §_-3d§:b2Controller;
      
      private var §_-ag§:int;
      
      private var §_-S4§:b2Vec2;
      
      private var §_-kW§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §_-b5§:b2DestructionListener;
      
      private var §_-Ef§:b2DebugDraw;
      
      private var §_-uh§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§_-eE§ = new Vector.<b2Body>();
         this.§_-wl§ = new b2ContactManager();
         this.§_-fq§ = new b2ContactSolver();
         this.§_-WE§ = new b2Island();
         super();
         this.§_-b5§ = null;
         this.§_-Ef§ = null;
         this.§_-Sx§ = null;
         this.§_-EI§ = null;
         this.§_-sD§ = null;
         this.§_-3d§ = null;
         this.§_-fQ§ = 0;
         this.§_-kN§ = 0;
         this.§_-ru§ = 0;
         this.§_-ag§ = 0;
         §_-9g§ = true;
         §_-Yg§ = true;
         this.§_-kW§ = param2;
         this.§_-S4§ = param1;
         this.§_-uh§ = 0;
         this.§_-wl§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§_-ji§(_loc3_);
      }
      
      public function §_-Y3§(param1:b2DestructionListener) : void
      {
         this.§_-b5§ = param1;
      }
      
      public function §_-ZW§(param1:b2ContactFilter) : void
      {
         this.§_-wl§.§_-8k§ = param1;
      }
      
      public function §_-JH§(param1:b2ContactListener) : void
      {
         this.§_-wl§.§_-v5§ = param1;
      }
      
      public function §_-rF§(param1:b2DebugDraw) : void
      {
         this.§_-Ef§ = param1;
      }
      
      public function §_-Vk§(param1:§_-Of§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§_-Of§ = this.§_-wl§.§_-XD§;
         this.§_-wl§.§_-XD§ = param1;
         var _loc3_:b2Body = this.§_-Sx§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§_-tg§;
            while(_loc4_)
            {
               _loc4_.§_-uj§ = param1.§_-c6§(_loc2_.§_-hC§(_loc4_.§_-uj§),_loc4_);
               _loc4_ = _loc4_.§_-4b§;
            }
            _loc3_ = _loc3_.§_-4b§;
         }
      }
      
      public function §_-aL§() : void
      {
         this.§_-wl§.§_-XD§.§_-aL§();
      }
      
      public function §_-Fb§() : int
      {
         return this.§_-wl§.§_-XD§.§_-Fb§();
      }
      
      public function §_-ji§(param1:b2BodyDef) : b2Body
      {
         if(this.§_-Ky§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§_-ft§ = null;
         _loc2_.§_-4b§ = this.§_-Sx§;
         if(this.§_-Sx§)
         {
            this.§_-Sx§.§_-ft§ = _loc2_;
         }
         this.§_-Sx§ = _loc2_;
         ++this.§_-fQ§;
         return _loc2_;
      }
      
      public function §_-vG§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§_-Ky§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§_-sD§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§_-PT§;
            if(this.§_-b5§)
            {
               this.§_-b5§.§_-sP§(_loc6_.§_-Ne§);
            }
            this.§_-qI§(_loc6_.§_-Ne§);
         }
         var _loc3_:b2ControllerEdge = param1.§_-3d§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§_-Sr§;
            _loc7_.§_-eR§.§_-op§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§_-EI§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§_-PT§;
            this.§_-wl§.§_-l6§(_loc8_.§_-k9§);
         }
         param1.§_-EI§ = null;
         var _loc5_:b2Fixture = param1.§_-tg§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§_-4b§;
            if(this.§_-b5§)
            {
               this.§_-b5§.§_-x9§(_loc9_);
            }
            _loc9_.§_-La§(this.§_-wl§.§_-XD§);
            _loc9_.§_-l6§();
         }
         param1.§_-tg§ = null;
         param1.§_-Qw§ = 0;
         if(param1.§_-ft§)
         {
            param1.§_-ft§.§_-4b§ = param1.§_-4b§;
         }
         if(param1.§_-4b§)
         {
            param1.§_-4b§.§_-ft§ = param1.§_-ft§;
         }
         if(param1 == this.§_-Sx§)
         {
            this.§_-Sx§ = param1.§_-4b§;
         }
         --this.§_-fQ§;
      }
      
      public function §_-tT§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§_-0K§(param1,null);
         _loc2_.§_-ft§ = null;
         _loc2_.§_-4b§ = this.§_-sD§;
         if(this.§_-sD§)
         {
            this.§_-sD§.§_-ft§ = _loc2_;
         }
         this.§_-sD§ = _loc2_;
         ++this.§_-ru§;
         _loc2_.§_-RI§.§_-Ne§ = _loc2_;
         _loc2_.§_-RI§.§_-r7§ = _loc2_.§_-Zw§;
         _loc2_.§_-RI§.§_-6c§ = null;
         _loc2_.§_-RI§.§_-PT§ = _loc2_.§_-do§.§_-sD§;
         if(_loc2_.§_-do§.§_-sD§)
         {
            _loc2_.§_-do§.§_-sD§.§_-6c§ = _loc2_.§_-RI§;
         }
         _loc2_.§_-do§.§_-sD§ = _loc2_.§_-RI§;
         _loc2_.§_-8O§.§_-Ne§ = _loc2_;
         _loc2_.§_-8O§.§_-r7§ = _loc2_.§_-do§;
         _loc2_.§_-8O§.§_-6c§ = null;
         _loc2_.§_-8O§.§_-PT§ = _loc2_.§_-Zw§.§_-sD§;
         if(_loc2_.§_-Zw§.§_-sD§)
         {
            _loc2_.§_-Zw§.§_-sD§.§_-6c§ = _loc2_.§_-8O§;
         }
         _loc2_.§_-Zw§.§_-sD§ = _loc2_.§_-8O§;
         var _loc3_:b2Body = param1.§_-cw§;
         var _loc4_:b2Body = param1.§_-U9§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§_-VA§();
            while(_loc5_)
            {
               if(_loc5_.§_-r7§ == _loc3_)
               {
                  _loc5_.§_-k9§.§_-KG§();
               }
               _loc5_ = _loc5_.§_-PT§;
            }
         }
         return _loc2_;
      }
      
      public function §_-qI§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§_-7I§;
         if(param1.§_-ft§)
         {
            param1.§_-ft§.§_-4b§ = param1.§_-4b§;
         }
         if(param1.§_-4b§)
         {
            param1.§_-4b§.§_-ft§ = param1.§_-ft§;
         }
         if(param1 == this.§_-sD§)
         {
            this.§_-sD§ = param1.§_-4b§;
         }
         var _loc3_:b2Body = param1.§_-do§;
         var _loc4_:b2Body = param1.§_-Zw§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§_-RI§.§_-6c§)
         {
            param1.§_-RI§.§_-6c§.§_-PT§ = param1.§_-RI§.§_-PT§;
         }
         if(param1.§_-RI§.§_-PT§)
         {
            param1.§_-RI§.§_-PT§.§_-6c§ = param1.§_-RI§.§_-6c§;
         }
         if(param1.§_-RI§ == _loc3_.§_-sD§)
         {
            _loc3_.§_-sD§ = param1.§_-RI§.§_-PT§;
         }
         param1.§_-RI§.§_-6c§ = null;
         param1.§_-RI§.§_-PT§ = null;
         if(param1.§_-8O§.§_-6c§)
         {
            param1.§_-8O§.§_-6c§.§_-PT§ = param1.§_-8O§.§_-PT§;
         }
         if(param1.§_-8O§.§_-PT§)
         {
            param1.§_-8O§.§_-PT§.§_-6c§ = param1.§_-8O§.§_-6c§;
         }
         if(param1.§_-8O§ == _loc4_.§_-sD§)
         {
            _loc4_.§_-sD§ = param1.§_-8O§.§_-PT§;
         }
         param1.§_-8O§.§_-6c§ = null;
         param1.§_-8O§.§_-PT§ = null;
         b2Joint.§_-l6§(param1,null);
         --this.§_-ru§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§_-VA§();
            while(_loc5_)
            {
               if(_loc5_.§_-r7§ == _loc3_)
               {
                  _loc5_.§_-k9§.§_-KG§();
               }
               _loc5_ = _loc5_.§_-PT§;
            }
         }
      }
      
      public function §_-MS§(param1:b2Controller) : b2Controller
      {
         param1.§_-4b§ = this.§_-3d§;
         param1.§_-ft§ = null;
         this.§_-3d§ = param1;
         param1.m_world = this;
         ++this.§_-ag§;
         return param1;
      }
      
      public function §_-vO§(param1:b2Controller) : void
      {
         if(param1.§_-ft§)
         {
            param1.§_-ft§.§_-4b§ = param1.§_-4b§;
         }
         if(param1.§_-4b§)
         {
            param1.§_-4b§.§_-ft§ = param1.§_-ft§;
         }
         if(this.§_-3d§ == param1)
         {
            this.§_-3d§ = param1.§_-4b§;
         }
         --this.§_-ag§;
      }
      
      public function §_-VZ§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§_-4b§ = this.§_-3d§;
         param1.§_-ft§ = null;
         if(this.§_-3d§)
         {
            this.§_-3d§.§_-ft§ = param1;
         }
         this.§_-3d§ = param1;
         ++this.§_-ag§;
         param1.m_world = this;
         return param1;
      }
      
      public function §_-0r§(param1:b2Controller) : void
      {
         param1.§_-OH§();
         if(param1.§_-4b§)
         {
            param1.§_-4b§.§_-ft§ = param1.§_-ft§;
         }
         if(param1.§_-ft§)
         {
            param1.§_-ft§.§_-4b§ = param1.§_-4b§;
         }
         if(param1 == this.§_-3d§)
         {
            this.§_-3d§ = param1.§_-4b§;
         }
         --this.§_-ag§;
      }
      
      public function §_-fl§(param1:Boolean) : void
      {
         §_-9g§ = param1;
      }
      
      public function §_-ay§(param1:Boolean) : void
      {
         §_-Yg§ = param1;
      }
      
      public function §_-iC§() : int
      {
         return this.§_-fQ§;
      }
      
      public function §_-fu§() : int
      {
         return this.§_-ru§;
      }
      
      public function §_-BO§() : int
      {
         return this.§_-kN§;
      }
      
      public function §_-8p§(param1:b2Vec2) : void
      {
         this.§_-S4§ = param1;
      }
      
      public function §_-Uz§() : b2Vec2
      {
         return this.§_-S4§;
      }
      
      public function §_-ua§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §_-1I§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§_-X3§ & §_-2p§)
         {
            this.§_-wl§.§_-zU§();
            this.§_-X3§ &= ~§_-2p§;
         }
         this.§_-X3§ |= §_-eO§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§_-sn§ = param1;
         _loc4_.§_-ZZ§ = param2;
         _loc4_.§ case§ = param3;
         if(param1 > 0)
         {
            _loc4_.§_-vR§ = 1 / param1;
         }
         else
         {
            _loc4_.§_-vR§ = 0;
         }
         _loc4_.§_-PA§ = this.§_-uh§ * param1;
         _loc4_.§_-bF§ = §_-9g§;
         this.§_-wl§.§_-dP§();
         if(_loc4_.§_-sn§ > 0)
         {
            this.§_-Zy§(_loc4_);
         }
         if(§_-Yg§ && _loc4_.§_-sn§ > 0)
         {
            this.§_-Pg§(_loc4_);
         }
         if(_loc4_.§_-sn§ > 0)
         {
            this.§_-uh§ = _loc4_.§_-vR§;
         }
         this.§_-X3§ &= ~§_-eO§;
      }
      
      public function §_-Db§() : void
      {
         var _loc1_:b2Body = this.§_-Sx§;
         while(_loc1_)
         {
            _loc1_.§_-hM§.§_-pR§();
            _loc1_.§_-Yk§ = 0;
            _loc1_ = _loc1_.§_-4b§;
         }
      }
      
      public function §_-nN§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§_-Of§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§_-Ef§ == null)
         {
            return;
         }
         this.§_-Ef§.§_-e9§.graphics.clear();
         var _loc1_:uint = this.§_-Ef§.§_-I5§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§_-fw§)
         {
            _loc3_ = this.§_-Sx§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§_-oR§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§_-O8§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§_-03§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-kK§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§_-03§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-kK§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§_-03§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§_-03§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§_-03§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§_-4b§;
               }
               _loc3_ = _loc3_.§_-4b§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-6H§)
         {
            _loc6_ = this.§_-sD§;
            while(_loc6_)
            {
               this.§_-G8§(_loc6_);
               _loc6_ = _loc6_.§_-4b§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-rR§)
         {
            _loc16_ = this.§_-3d§;
            while(_loc16_)
            {
               _loc16_.§_-EE§(this.§_-Ef§);
               _loc16_ = _loc16_.§_-4b§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-Wv§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§_-wl§.§_-EI§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§_-5M§();
               _loc19_ = _loc17_.§_-w4§();
               _loc20_ = _loc18_.§_-uM§().§_-A8§();
               _loc21_ = _loc19_.§_-uM§().§_-A8§();
               this.§_-Ef§.§_-z1§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§_-lA§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-IO§)
         {
            _loc7_ = this.§_-wl§.§_-XD§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§_-Sx§;
            while(_loc3_)
            {
               if(_loc3_.§_-O8§() != false)
               {
                  _loc4_ = _loc3_.§_-oR§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§_-hC§(_loc4_.§_-uj§);
                     _loc14_[0].Set(_loc22_.§_-Cw§.x,_loc22_.§_-Cw§.y);
                     _loc14_[1].Set(_loc22_.§_-OC§.x,_loc22_.§_-Cw§.y);
                     _loc14_[2].Set(_loc22_.§_-OC§.x,_loc22_.§_-OC§.y);
                     _loc14_[3].Set(_loc22_.§_-Cw§.x,_loc22_.§_-OC§.y);
                     this.§_-Ef§.§_-eX§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§_-lA§();
                  }
               }
               _loc3_ = _loc3_.§_-lA§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-Lf§)
         {
            _loc3_ = this.§_-Sx§;
            while(_loc3_)
            {
               (_loc11_ = §_-Vo§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§_-b2§();
               this.§_-Ef§.§_-WA§(_loc11_);
               _loc3_ = _loc3_.§_-4b§;
            }
         }
      }
      
      public function §_-U2§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§_-Of§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§_-wl§.§_-XD§;
         broadPhase.§_-7F§(WorldQueryWrapper,aabb);
      }
      
      public function §_-RT§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§_-Of§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§_-db§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§_-tx§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§_-2N§();
         }
         broadPhase = this.§_-wl§.§_-XD§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§_-7F§(WorldQueryWrapper,aabb);
      }
      
      public function §_-wG§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§_-Of§ = null;
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
         broadPhase = this.§_-wl§.§_-XD§;
         var aabb:b2AABB = new b2AABB();
         aabb.§_-Cw§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§_-OC§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§_-7F§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§_-Of§ = null;
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
            return param1.§_-r3§;
         };
         broadPhase = this.§_-wl§.§_-XD§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §_-eM§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §_-as§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §_-P§() : b2Body
      {
         return this.§_-Sx§;
      }
      
      public function §_-IT§() : b2Joint
      {
         return this.§_-sD§;
      }
      
      public function §_-VA§() : b2Contact
      {
         return this.§_-EI§;
      }
      
      public function §_-Ky§() : Boolean
      {
         return (this.§_-X3§ & §_-eO§) > 0;
      }
      
      b2internal function §_-Zy§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§_-3d§;
         while(_loc3_)
         {
            _loc3_.§_-1I§(param1);
            _loc3_ = _loc3_.§_-4b§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§_-WE§).§_-PU§(this.§_-fQ§,this.§_-kN§,this.§_-ru§,null,this.§_-wl§.§_-v5§,this.§_-fq§);
         _loc2_ = this.§_-Sx§;
         while(_loc2_)
         {
            _loc2_.§_-X3§ &= ~b2Body.§_-CI§;
            _loc2_ = _loc2_.§_-4b§;
         }
         var _loc5_:b2Contact = this.§_-EI§;
         while(_loc5_)
         {
            _loc5_.§_-X3§ &= ~b2Contact.§_-CI§;
            _loc5_ = _loc5_.§_-4b§;
         }
         var _loc6_:b2Joint = this.§_-sD§;
         while(_loc6_)
         {
            _loc6_.§_-iW§ = false;
            _loc6_ = _loc6_.§_-4b§;
         }
         var _loc7_:int = this.§_-fQ§;
         var _loc8_:Vector.<b2Body> = this.§_-eE§;
         var _loc9_:b2Body = this.§_-Sx§;
         while(_loc9_)
         {
            if(!(_loc9_.§_-X3§ & b2Body.§_-CI§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§_-O8§() == false))
               {
                  if(_loc9_.§_-kK§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§_-OH§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§_-X3§ |= b2Body.§_-CI§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§_-cX§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§_-kK§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§_-EI§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§_-k9§.§_-X3§ & b2Contact.§_-CI§))
                              {
                                 if(!(_loc13_.§_-k9§.§ null§() == true || _loc13_.§_-k9§.§_-Jw§() == false || _loc13_.§_-k9§.§_-m5§() == false))
                                 {
                                    _loc4_.§_-3m§(_loc13_.§_-k9§);
                                    _loc13_.§_-k9§.§_-X3§ |= b2Contact.§_-CI§;
                                    if(!((_loc12_ = _loc13_.§_-r7§).§_-X3§ & b2Body.§_-CI§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-X3§ |= b2Body.§_-CI§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§_-PT§;
                           }
                           _loc14_ = _loc2_.§_-sD§;
                           while(_loc14_)
                           {
                              if(_loc14_.§_-Ne§.§_-iW§ != true)
                              {
                                 if((_loc12_ = _loc14_.§_-r7§).§_-O8§() != false)
                                 {
                                    _loc4_.§_-Be§(_loc14_.§_-Ne§);
                                    _loc14_.§_-Ne§.§_-iW§ = true;
                                    if(!(_loc12_.§_-X3§ & b2Body.§_-CI§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-X3§ |= b2Body.§_-CI§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§_-PT§;
                           }
                        }
                     }
                     _loc4_.§_-Zy§(param1,this.§_-S4§,this.§_-kW§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§_-fQ§)
                     {
                        _loc2_ = _loc4_.§_-Ju§[_loc11_];
                        if(_loc2_.§_-kK§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§_-X3§ &= ~b2Body.§_-CI§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§_-4b§;
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
         _loc2_ = this.§_-Sx§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§_-O8§() == false))
            {
               if(_loc2_.§_-kK§() != b2Body.b2_staticBody)
               {
                  _loc2_.§_-g0§();
               }
            }
            _loc2_ = _loc2_.§_-4b§;
         }
         this.§_-wl§.§_-zU§();
      }
      
      b2internal function §_-Pg§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§_-WE§).§_-PU§(this.§_-fQ§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§_-wl§.§_-v5§,this.§_-fq§);
         var _loc10_:Vector.<b2Body> = §_-GM§;
         _loc2_ = this.§_-Sx§;
         while(_loc2_)
         {
            _loc2_.§_-X3§ &= ~b2Body.§_-CI§;
            _loc2_.m_sweep.§_-EZ§ = 0;
            _loc2_ = _loc2_.§_-4b§;
         }
         _loc11_ = this.§_-EI§;
         while(_loc11_)
         {
            _loc11_.§_-X3§ &= ~(b2Contact.§_-6w§ | b2Contact.§_-CI§);
            _loc11_ = _loc11_.§_-4b§;
         }
         _loc8_ = this.§_-sD§;
         while(_loc8_)
         {
            _loc8_.§_-iW§ = false;
            _loc8_ = _loc8_.§_-4b§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§_-EI§;
            while(_loc11_)
            {
               if(!(_loc11_.§ null§() == true || _loc11_.§_-Jw§() == false || _loc11_.§_-d0§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§_-X3§ & b2Contact.§_-6w§)
                  {
                     _loc19_ = _loc11_.§_-aZ§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§_-ow§;
                     _loc4_ = _loc11_.§_-10§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§_-kK§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§_-kK§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr475:
                        _loc11_ = _loc11_.§_-4b§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§_-EZ§;
                     if(_loc5_.m_sweep.§_-EZ§ < _loc6_.m_sweep.§_-EZ§)
                     {
                        _loc20_ = _loc6_.m_sweep.§_-EZ§;
                        _loc5_.m_sweep.§_-n6§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§_-EZ§ < _loc5_.m_sweep.§_-EZ§)
                     {
                        _loc20_ = _loc5_.m_sweep.§_-EZ§;
                        _loc6_.m_sweep.§_-n6§(_loc20_);
                     }
                     _loc19_ = _loc11_.§_-ML§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§_-aZ§ = _loc19_;
                     _loc11_.§_-X3§ |= b2Contact.§_-6w§;
                     §§goto(addr475);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr475);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§_-ow§;
            _loc4_ = _loc12_.§_-10§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §_-xc§.Set(_loc5_.m_sweep);
            §_-NA§.Set(_loc6_.m_sweep);
            _loc5_.§_-n6§(_loc13_);
            _loc6_.§_-n6§(_loc13_);
            _loc12_.§_-IM§(this.§_-wl§.§_-v5§);
            _loc12_.§_-X3§ &= ~b2Contact.§_-6w§;
            if(_loc12_.§ null§() == true || _loc12_.§_-Jw§() == false)
            {
               _loc5_.m_sweep.Set(§_-xc§);
               _loc6_.m_sweep.Set(§_-NA§);
               _loc5_.§_-W0§();
               _loc6_.§_-W0§();
            }
            else if(_loc12_.§_-m5§() != false)
            {
               if((_loc14_ = _loc5_).§_-kK§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§_-OH§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§_-X3§ |= b2Body.§_-CI§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§_-cX§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§_-kK§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§_-EI§;
                     while(_loc7_)
                     {
                        if(_loc9_.§_-kN§ == _loc9_.§_-ek§)
                        {
                           break;
                        }
                        if(!(_loc7_.§_-k9§.§_-X3§ & b2Contact.§_-CI§))
                        {
                           if(!(_loc7_.§_-k9§.§ null§() == true || _loc7_.§_-k9§.§_-Jw§() == false || _loc7_.§_-k9§.§_-m5§() == false))
                           {
                              _loc9_.§_-3m§(_loc7_.§_-k9§);
                              _loc7_.§_-k9§.§_-X3§ |= b2Contact.§_-CI§;
                              if(!((_loc22_ = _loc7_.§_-r7§).§_-X3§ & b2Body.§_-CI§))
                              {
                                 if(_loc22_.§_-kK§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§_-n6§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§_-X3§ |= b2Body.§_-CI§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§_-PT§;
                     }
                     _loc21_ = _loc2_.§_-sD§;
                     while(_loc21_)
                     {
                        if(_loc9_.§_-ru§ != _loc9_.§_-fI§)
                        {
                           if(_loc21_.§_-Ne§.§_-iW§ != true)
                           {
                              if((_loc22_ = _loc21_.§_-r7§).§_-O8§() != false)
                              {
                                 _loc9_.§_-Be§(_loc21_.§_-Ne§);
                                 _loc21_.§_-Ne§.§_-iW§ = true;
                                 if(!(_loc22_.§_-X3§ & b2Body.§_-CI§))
                                 {
                                    if(_loc22_.§_-kK§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§_-n6§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§_-X3§ |= b2Body.§_-CI§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§_-PT§;
                     }
                  }
               }
               (_loc17_ = §_-vZ§).§_-bF§ = false;
               _loc17_.§_-sn§ = (1 - _loc13_) * param1.§_-sn§;
               _loc17_.§_-vR§ = 1 / _loc17_.§_-sn§;
               _loc17_.§_-PA§ = 0;
               _loc17_.§_-ZZ§ = param1.§_-ZZ§;
               _loc17_.§ case§ = param1.§ case§;
               _loc9_.§_-Pg§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-fQ§)
               {
                  _loc2_ = _loc9_.§_-Ju§[_loc18_];
                  _loc2_.§_-X3§ &= ~b2Body.§_-CI§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§_-kK§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§_-g0§();
                        _loc7_ = _loc2_.§_-EI§;
                        while(_loc7_)
                        {
                           _loc7_.§_-k9§.§_-X3§ &= ~b2Contact.§_-6w§;
                           _loc7_ = _loc7_.§_-PT§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-kN§)
               {
                  _loc11_ = _loc9_.§_-Cz§[_loc18_];
                  _loc11_.§_-X3§ &= ~(b2Contact.§_-6w§ | b2Contact.§_-CI§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-ru§)
               {
                  (_loc8_ = _loc9_.§_-Jx§[_loc18_]).§_-iW§ = false;
                  _loc18_++;
               }
               this.§_-wl§.§_-zU§();
            }
         }
      }
      
      b2internal function §_-G8§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.set();
         var _loc3_:b2Body = param1.§_-c1§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §_-zI§;
         switch(param1.§_-64§)
         {
            case b2Joint.§_-SL§:
               this.§_-Ef§.§_-z1§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§_-0P§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§_-uR§();
               _loc13_ = _loc11_.§_-cT§();
               this.§_-Ef§.§_-z1§(_loc12_,_loc8_,_loc10_);
               this.§_-Ef§.§_-z1§(_loc13_,_loc9_,_loc10_);
               this.§_-Ef§.§_-z1§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§_-2P§:
               this.§_-Ef§.§_-z1§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§_-Ef§.§_-z1§(_loc6_,_loc8_,_loc10_);
               }
               this.§_-Ef§.§_-z1§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§_-Ef§.§_-z1§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §_-03§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§_-64§)
         {
            case b2Shape.§_-LV§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§_-ei§(param2,_loc4_.§_-SG§);
               _loc6_ = _loc4_.§_-uG§;
               _loc7_ = param2.R.col1;
               this.§_-Ef§.§_-3Y§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§_-Bp§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§_-R5§();
               _loc11_ = _loc9_.§_-J7§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§_-ei§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§_-Ef§.§_-8n§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§_-pV§:
               _loc13_ = param1 as b2EdgeShape;
               this.§_-Ef§.§_-z1§(b2Math.§_-ei§(param2,_loc13_.GetVertex1()),b2Math.§_-ei§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

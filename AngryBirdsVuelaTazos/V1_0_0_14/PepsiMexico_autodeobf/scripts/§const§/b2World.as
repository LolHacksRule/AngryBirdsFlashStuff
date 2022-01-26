package §const§
{
   import §_-4n§.*;
   import §_-K2§.*;
   import §_-bW§.*;
   import §_-bt§.*;
   import §_-cA§.b2Controller;
   import §_-cA§.b2ControllerEdge;
   import §_-iw§.*;
   import §_-yJ§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §_-jz§:b2Transform = new b2Transform();
      
      private static var §_-Pg§:b2Sweep = new b2Sweep();
      
      private static var §_-CZ§:b2Sweep = new b2Sweep();
      
      private static var §_-g9§:b2TimeStep = new b2TimeStep();
      
      private static var §_-23§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §_-bc§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §_-gS§:Boolean;
      
      private static var §_-d1§:Boolean;
      
      public static const §_-WY§:int = 1;
      
      public static const §_-yk§:int = 2;
       
      
      private var §_-nt§:Vector.<b2Body>;
      
      b2internal var §_-rY§:int;
      
      b2internal var §_-Y7§:b2ContactManager;
      
      private var §_-ZE§:b2ContactSolver;
      
      private var §_-VR§:b2Island;
      
      b2internal var §_-fJ§:b2Body;
      
      private var §_-UG§:b2Joint;
      
      b2internal var §_-z-§:b2Contact;
      
      private var §_-JW§:int;
      
      b2internal var §_-LQ§:int;
      
      private var §_-gx§:int;
      
      private var §_-PH§:b2Controller;
      
      private var §_-7s§:int;
      
      private var §_-yX§:b2Vec2;
      
      private var §_-6V§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §_-TZ§:b2DestructionListener;
      
      private var §_-jy§:b2DebugDraw;
      
      private var §_-dv§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§_-nt§ = new Vector.<b2Body>();
         this.§_-Y7§ = new b2ContactManager();
         this.§_-ZE§ = new b2ContactSolver();
         this.§_-VR§ = new b2Island();
         super();
         this.§_-TZ§ = null;
         this.§_-jy§ = null;
         this.§_-fJ§ = null;
         this.§_-z-§ = null;
         this.§_-UG§ = null;
         this.§_-PH§ = null;
         this.§_-JW§ = 0;
         this.§_-LQ§ = 0;
         this.§_-gx§ = 0;
         this.§_-7s§ = 0;
         §_-gS§ = true;
         §_-d1§ = true;
         this.§_-6V§ = param2;
         this.§_-yX§ = param1;
         this.§_-dv§ = 0;
         this.§_-Y7§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§_-fs§(_loc3_);
      }
      
      public function §_-pk§(param1:b2DestructionListener) : void
      {
         this.§_-TZ§ = param1;
      }
      
      public function §_-5B§(param1:b2ContactFilter) : void
      {
         this.§_-Y7§.§_-PA§ = param1;
      }
      
      public function §_-qx§(param1:b2ContactListener) : void
      {
         this.§_-Y7§.§_-eN§ = param1;
      }
      
      public function §_-cc§(param1:b2DebugDraw) : void
      {
         this.§_-jy§ = param1;
      }
      
      public function §_-lr§(param1:§_-T5§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§_-T5§ = this.§_-Y7§.§_-Oa§;
         this.§_-Y7§.§_-Oa§ = param1;
         var _loc3_:b2Body = this.§_-fJ§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§_-hi§;
            while(_loc4_)
            {
               _loc4_.§_-8I§ = param1.§_-U5§(_loc2_.§_-bv§(_loc4_.§_-8I§),_loc4_);
               _loc4_ = _loc4_.§_-1k§;
            }
            _loc3_ = _loc3_.§_-1k§;
         }
      }
      
      public function §_-a2§() : void
      {
         this.§_-Y7§.§_-Oa§.§_-a2§();
      }
      
      public function §_-4l§() : int
      {
         return this.§_-Y7§.§_-Oa§.§_-4l§();
      }
      
      public function §_-fs§(param1:b2BodyDef) : b2Body
      {
         if(this.§_-4E§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§_-nr§ = null;
         _loc2_.§_-1k§ = this.§_-fJ§;
         if(this.§_-fJ§)
         {
            this.§_-fJ§.§_-nr§ = _loc2_;
         }
         this.§_-fJ§ = _loc2_;
         ++this.§_-JW§;
         return _loc2_;
      }
      
      public function §_-S§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§_-4E§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§_-UG§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§_-Q2§;
            if(this.§_-TZ§)
            {
               this.§_-TZ§.§_-DC§(_loc6_.§_-DP§);
            }
            this.§_-mm§(_loc6_.§_-DP§);
         }
         var _loc3_:b2ControllerEdge = param1.§_-PH§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§_-J9§;
            _loc7_.§_-FQ§.§_-z8§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§_-z-§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§_-Q2§;
            this.§_-Y7§.§_-T9§(_loc8_.§_-Mc§);
         }
         param1.§_-z-§ = null;
         var _loc5_:b2Fixture = param1.§_-hi§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§_-1k§;
            if(this.§_-TZ§)
            {
               this.§_-TZ§.§_-Rp§(_loc9_);
            }
            _loc9_.§_-IN§(this.§_-Y7§.§_-Oa§);
            _loc9_.§_-T9§();
         }
         param1.§_-hi§ = null;
         param1.§_-yg§ = 0;
         if(param1.§_-nr§)
         {
            param1.§_-nr§.§_-1k§ = param1.§_-1k§;
         }
         if(param1.§_-1k§)
         {
            param1.§_-1k§.§_-nr§ = param1.§_-nr§;
         }
         if(param1 == this.§_-fJ§)
         {
            this.§_-fJ§ = param1.§_-1k§;
         }
         --this.§_-JW§;
      }
      
      public function §_-Hd§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§_-mA§(param1,null);
         _loc2_.§_-nr§ = null;
         _loc2_.§_-1k§ = this.§_-UG§;
         if(this.§_-UG§)
         {
            this.§_-UG§.§_-nr§ = _loc2_;
         }
         this.§_-UG§ = _loc2_;
         ++this.§_-gx§;
         _loc2_.§_-II§.§_-DP§ = _loc2_;
         _loc2_.§_-II§.§_-Z3§ = _loc2_.§_-pK§;
         _loc2_.§_-II§.§_-zv§ = null;
         _loc2_.§_-II§.§_-Q2§ = _loc2_.§_-ba§.§_-UG§;
         if(_loc2_.§_-ba§.§_-UG§)
         {
            _loc2_.§_-ba§.§_-UG§.§_-zv§ = _loc2_.§_-II§;
         }
         _loc2_.§_-ba§.§_-UG§ = _loc2_.§_-II§;
         _loc2_.§_-17§.§_-DP§ = _loc2_;
         _loc2_.§_-17§.§_-Z3§ = _loc2_.§_-ba§;
         _loc2_.§_-17§.§_-zv§ = null;
         _loc2_.§_-17§.§_-Q2§ = _loc2_.§_-pK§.§_-UG§;
         if(_loc2_.§_-pK§.§_-UG§)
         {
            _loc2_.§_-pK§.§_-UG§.§_-zv§ = _loc2_.§_-17§;
         }
         _loc2_.§_-pK§.§_-UG§ = _loc2_.§_-17§;
         var _loc3_:b2Body = param1.§_-pV§;
         var _loc4_:b2Body = param1.§_-3o§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§_-x3§();
            while(_loc5_)
            {
               if(_loc5_.§_-Z3§ == _loc3_)
               {
                  _loc5_.§_-Mc§.§_-yN§();
               }
               _loc5_ = _loc5_.§_-Q2§;
            }
         }
         return _loc2_;
      }
      
      public function §_-mm§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§_-mf§;
         if(param1.§_-nr§)
         {
            param1.§_-nr§.§_-1k§ = param1.§_-1k§;
         }
         if(param1.§_-1k§)
         {
            param1.§_-1k§.§_-nr§ = param1.§_-nr§;
         }
         if(param1 == this.§_-UG§)
         {
            this.§_-UG§ = param1.§_-1k§;
         }
         var _loc3_:b2Body = param1.§_-ba§;
         var _loc4_:b2Body = param1.§_-pK§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§_-II§.§_-zv§)
         {
            param1.§_-II§.§_-zv§.§_-Q2§ = param1.§_-II§.§_-Q2§;
         }
         if(param1.§_-II§.§_-Q2§)
         {
            param1.§_-II§.§_-Q2§.§_-zv§ = param1.§_-II§.§_-zv§;
         }
         if(param1.§_-II§ == _loc3_.§_-UG§)
         {
            _loc3_.§_-UG§ = param1.§_-II§.§_-Q2§;
         }
         param1.§_-II§.§_-zv§ = null;
         param1.§_-II§.§_-Q2§ = null;
         if(param1.§_-17§.§_-zv§)
         {
            param1.§_-17§.§_-zv§.§_-Q2§ = param1.§_-17§.§_-Q2§;
         }
         if(param1.§_-17§.§_-Q2§)
         {
            param1.§_-17§.§_-Q2§.§_-zv§ = param1.§_-17§.§_-zv§;
         }
         if(param1.§_-17§ == _loc4_.§_-UG§)
         {
            _loc4_.§_-UG§ = param1.§_-17§.§_-Q2§;
         }
         param1.§_-17§.§_-zv§ = null;
         param1.§_-17§.§_-Q2§ = null;
         b2Joint.§_-T9§(param1,null);
         --this.§_-gx§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§_-x3§();
            while(_loc5_)
            {
               if(_loc5_.§_-Z3§ == _loc3_)
               {
                  _loc5_.§_-Mc§.§_-yN§();
               }
               _loc5_ = _loc5_.§_-Q2§;
            }
         }
      }
      
      public function §_-Ku§(param1:b2Controller) : b2Controller
      {
         param1.§_-1k§ = this.§_-PH§;
         param1.§_-nr§ = null;
         this.§_-PH§ = param1;
         param1.m_world = this;
         ++this.§_-7s§;
         return param1;
      }
      
      public function §_-sE§(param1:b2Controller) : void
      {
         if(param1.§_-nr§)
         {
            param1.§_-nr§.§_-1k§ = param1.§_-1k§;
         }
         if(param1.§_-1k§)
         {
            param1.§_-1k§.§_-nr§ = param1.§_-nr§;
         }
         if(this.§_-PH§ == param1)
         {
            this.§_-PH§ = param1.§_-1k§;
         }
         --this.§_-7s§;
      }
      
      public function §_-bw§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§_-1k§ = this.§_-PH§;
         param1.§_-nr§ = null;
         if(this.§_-PH§)
         {
            this.§_-PH§.§_-nr§ = param1;
         }
         this.§_-PH§ = param1;
         ++this.§_-7s§;
         param1.m_world = this;
         return param1;
      }
      
      public function §_-n3§(param1:b2Controller) : void
      {
         param1.§_-5E§();
         if(param1.§_-1k§)
         {
            param1.§_-1k§.§_-nr§ = param1.§_-nr§;
         }
         if(param1.§_-nr§)
         {
            param1.§_-nr§.§_-1k§ = param1.§_-1k§;
         }
         if(param1 == this.§_-PH§)
         {
            this.§_-PH§ = param1.§_-1k§;
         }
         --this.§_-7s§;
      }
      
      public function §_-Y6§(param1:Boolean) : void
      {
         §_-gS§ = param1;
      }
      
      public function §_-xD§(param1:Boolean) : void
      {
         §_-d1§ = param1;
      }
      
      public function §_-Ea§() : int
      {
         return this.§_-JW§;
      }
      
      public function §_-dl§() : int
      {
         return this.§_-gx§;
      }
      
      public function §_-Jq§() : int
      {
         return this.§_-LQ§;
      }
      
      public function §_-yZ§(param1:b2Vec2) : void
      {
         this.§_-yX§ = param1;
      }
      
      public function §_-J1§() : b2Vec2
      {
         return this.§_-yX§;
      }
      
      public function §_-5C§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §_-Aq§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§_-rY§ & §_-WY§)
         {
            this.§_-Y7§.§_-08§();
            this.§_-rY§ &= ~§_-WY§;
         }
         this.§_-rY§ |= §_-yk§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§_-ib§ = param1;
         _loc4_.§_-ZG§ = param2;
         _loc4_.§_-GE§ = param3;
         if(param1 > 0)
         {
            _loc4_.§_-h4§ = 1 / param1;
         }
         else
         {
            _loc4_.§_-h4§ = 0;
         }
         _loc4_.§_-4Y§ = this.§_-dv§ * param1;
         _loc4_.§_-lv§ = §_-gS§;
         this.§_-Y7§.§_-IA§();
         if(_loc4_.§_-ib§ > 0)
         {
            this.§_-B8§(_loc4_);
         }
         if(§_-d1§ && _loc4_.§_-ib§ > 0)
         {
            this.§_-HZ§(_loc4_);
         }
         if(_loc4_.§_-ib§ > 0)
         {
            this.§_-dv§ = _loc4_.§_-h4§;
         }
         this.§_-rY§ &= ~§_-yk§;
      }
      
      public function §_-Oz§() : void
      {
         var _loc1_:b2Body = this.§_-fJ§;
         while(_loc1_)
         {
            _loc1_.§_-vq§.§_-IE§();
            _loc1_.§_-VK§ = 0;
            _loc1_ = _loc1_.§_-1k§;
         }
      }
      
      public function §_-Bk§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§_-T5§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§_-jy§ == null)
         {
            return;
         }
         this.§_-jy§.§_-6x§.graphics.clear();
         var _loc1_:uint = this.§_-jy§.§_-OA§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§_-FV§)
         {
            _loc3_ = this.§_-fJ§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§_-O6§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§_-07§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§_-CL§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-hZ§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§_-CL§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-hZ§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§_-CL§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§_-CL§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§_-CL§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§_-1k§;
               }
               _loc3_ = _loc3_.§_-1k§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-mH§)
         {
            _loc6_ = this.§_-UG§;
            while(_loc6_)
            {
               this.§_-cK§(_loc6_);
               _loc6_ = _loc6_.§_-1k§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-QH§)
         {
            _loc16_ = this.§_-PH§;
            while(_loc16_)
            {
               _loc16_.§_-nB§(this.§_-jy§);
               _loc16_ = _loc16_.§_-1k§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-ml§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§_-Y7§.§_-z-§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§_-IQ§();
               _loc19_ = _loc17_.§_-6f§();
               _loc20_ = _loc18_.§_-QR§().§_-mb§();
               _loc21_ = _loc19_.§_-QR§().§_-mb§();
               this.§_-jy§.§_-hH§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§_-e4§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-15§)
         {
            _loc7_ = this.§_-Y7§.§_-Oa§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§_-fJ§;
            while(_loc3_)
            {
               if(_loc3_.§_-07§() != false)
               {
                  _loc4_ = _loc3_.§_-O6§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§_-bv§(_loc4_.§_-8I§);
                     _loc14_[0].Set(_loc22_.§_-Cd§.x,_loc22_.§_-Cd§.y);
                     _loc14_[1].Set(_loc22_.§_-sZ§.x,_loc22_.§_-Cd§.y);
                     _loc14_[2].Set(_loc22_.§_-sZ§.x,_loc22_.§_-sZ§.y);
                     _loc14_[3].Set(_loc22_.§_-Cd§.x,_loc22_.§_-sZ§.y);
                     this.§_-jy§.§_-2t§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§_-e4§();
                  }
               }
               _loc3_ = _loc3_.§_-e4§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-Yc§)
         {
            _loc3_ = this.§_-fJ§;
            while(_loc3_)
            {
               (_loc11_ = §_-jz§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§_-hN§();
               this.§_-jy§.§_-ie§(_loc11_);
               _loc3_ = _loc3_.§_-1k§;
            }
         }
      }
      
      public function §_-OX§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§_-T5§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§_-Y7§.§_-Oa§;
         broadPhase.§_-Me§(WorldQueryWrapper,aabb);
      }
      
      public function §_-d3§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§_-T5§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§_-va§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§_-XD§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§_-oc§();
         }
         broadPhase = this.§_-Y7§.§_-Oa§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§_-Me§(WorldQueryWrapper,aabb);
      }
      
      public function §_-DM§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§_-T5§ = null;
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
         broadPhase = this.§_-Y7§.§_-Oa§;
         var aabb:b2AABB = new b2AABB();
         aabb.§_-Cd§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§_-sZ§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§_-Me§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§_-T5§ = null;
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
            return param1.§_-k-§;
         };
         broadPhase = this.§_-Y7§.§_-Oa§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §_-Lp§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §_-I0§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §_-IO§() : b2Body
      {
         return this.§_-fJ§;
      }
      
      public function §_-ei§() : b2Joint
      {
         return this.§_-UG§;
      }
      
      public function §_-x3§() : b2Contact
      {
         return this.§_-z-§;
      }
      
      public function §_-4E§() : Boolean
      {
         return (this.§_-rY§ & §_-yk§) > 0;
      }
      
      b2internal function §_-B8§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§_-PH§;
         while(_loc3_)
         {
            _loc3_.§_-Aq§(param1);
            _loc3_ = _loc3_.§_-1k§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§_-VR§).§_-Vy§(this.§_-JW§,this.§_-LQ§,this.§_-gx§,null,this.§_-Y7§.§_-eN§,this.§_-ZE§);
         _loc2_ = this.§_-fJ§;
         while(_loc2_)
         {
            _loc2_.§_-rY§ &= ~b2Body.§_-Xv§;
            _loc2_ = _loc2_.§_-1k§;
         }
         var _loc5_:b2Contact = this.§_-z-§;
         while(_loc5_)
         {
            _loc5_.§_-rY§ &= ~b2Contact.§_-Xv§;
            _loc5_ = _loc5_.§_-1k§;
         }
         var _loc6_:b2Joint = this.§_-UG§;
         while(_loc6_)
         {
            _loc6_.§_-lR§ = false;
            _loc6_ = _loc6_.§_-1k§;
         }
         var _loc7_:int = this.§_-JW§;
         var _loc8_:Vector.<b2Body> = this.§_-nt§;
         var _loc9_:b2Body = this.§_-fJ§;
         while(_loc9_)
         {
            if(!(_loc9_.§_-rY§ & b2Body.§_-Xv§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§_-07§() == false))
               {
                  if(_loc9_.§_-hZ§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§_-5E§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§_-rY§ |= b2Body.§_-Xv§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§_-FP§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§_-hZ§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§_-z-§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§_-Mc§.§_-rY§ & b2Contact.§_-Xv§))
                              {
                                 if(!(_loc13_.§_-Mc§.§switch§() == true || _loc13_.§_-Mc§.§_-JZ§() == false || _loc13_.§_-Mc§.§_-i9§() == false))
                                 {
                                    _loc4_.§_-yx§(_loc13_.§_-Mc§);
                                    _loc13_.§_-Mc§.§_-rY§ |= b2Contact.§_-Xv§;
                                    if(!((_loc12_ = _loc13_.§_-Z3§).§_-rY§ & b2Body.§_-Xv§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-rY§ |= b2Body.§_-Xv§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§_-Q2§;
                           }
                           _loc14_ = _loc2_.§_-UG§;
                           while(_loc14_)
                           {
                              if(_loc14_.§_-DP§.§_-lR§ != true)
                              {
                                 if((_loc12_ = _loc14_.§_-Z3§).§_-07§() != false)
                                 {
                                    _loc4_.§_-Gy§(_loc14_.§_-DP§);
                                    _loc14_.§_-DP§.§_-lR§ = true;
                                    if(!(_loc12_.§_-rY§ & b2Body.§_-Xv§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-rY§ |= b2Body.§_-Xv§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§_-Q2§;
                           }
                        }
                     }
                     _loc4_.§_-B8§(param1,this.§_-yX§,this.§_-6V§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§_-JW§)
                     {
                        _loc2_ = _loc4_.§_-ZK§[_loc11_];
                        if(_loc2_.§_-hZ§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§_-rY§ &= ~b2Body.§_-Xv§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§_-1k§;
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
         _loc2_ = this.§_-fJ§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§_-07§() == false))
            {
               if(_loc2_.§_-hZ§() != b2Body.b2_staticBody)
               {
                  _loc2_.§_-Dr§();
               }
            }
            _loc2_ = _loc2_.§_-1k§;
         }
         this.§_-Y7§.§_-08§();
      }
      
      b2internal function §_-HZ§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§_-VR§).§_-Vy§(this.§_-JW§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§_-Y7§.§_-eN§,this.§_-ZE§);
         var _loc10_:Vector.<b2Body> = §_-23§;
         _loc2_ = this.§_-fJ§;
         while(_loc2_)
         {
            _loc2_.§_-rY§ &= ~b2Body.§_-Xv§;
            _loc2_.m_sweep.§_-pu§ = 0;
            _loc2_ = _loc2_.§_-1k§;
         }
         _loc11_ = this.§_-z-§;
         while(_loc11_)
         {
            _loc11_.§_-rY§ &= ~(b2Contact.§_-eq§ | b2Contact.§_-Xv§);
            _loc11_ = _loc11_.§_-1k§;
         }
         _loc8_ = this.§_-UG§;
         while(_loc8_)
         {
            _loc8_.§_-lR§ = false;
            _loc8_ = _loc8_.§_-1k§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§_-z-§;
            while(_loc11_)
            {
               if(!(_loc11_.§switch§() == true || _loc11_.§_-JZ§() == false || _loc11_.§_-0K§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§_-rY§ & b2Contact.§_-eq§)
                  {
                     _loc19_ = _loc11_.§_-X0§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§_-S9§;
                     _loc4_ = _loc11_.§_-Z7§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§_-hZ§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§_-hZ§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr515:
                        _loc11_ = _loc11_.§_-1k§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§_-pu§;
                     if(_loc5_.m_sweep.§_-pu§ < _loc6_.m_sweep.§_-pu§)
                     {
                        _loc20_ = _loc6_.m_sweep.§_-pu§;
                        _loc5_.m_sweep.§_-y5§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§_-pu§ < _loc5_.m_sweep.§_-pu§)
                     {
                        _loc20_ = _loc5_.m_sweep.§_-pu§;
                        _loc6_.m_sweep.§_-y5§(_loc20_);
                     }
                     _loc19_ = _loc11_.§_-k5§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§_-X0§ = _loc19_;
                     _loc11_.§_-rY§ |= b2Contact.§_-eq§;
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
            _loc3_ = _loc12_.§_-S9§;
            _loc4_ = _loc12_.§_-Z7§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §_-Pg§.Set(_loc5_.m_sweep);
            §_-CZ§.Set(_loc6_.m_sweep);
            _loc5_.§_-y5§(_loc13_);
            _loc6_.§_-y5§(_loc13_);
            _loc12_.§_-Fw§(this.§_-Y7§.§_-eN§);
            _loc12_.§_-rY§ &= ~b2Contact.§_-eq§;
            if(_loc12_.§switch§() == true || _loc12_.§_-JZ§() == false)
            {
               _loc5_.m_sweep.Set(§_-Pg§);
               _loc6_.m_sweep.Set(§_-CZ§);
               _loc5_.§_-Zz§();
               _loc6_.§_-Zz§();
            }
            else if(_loc12_.§_-i9§() != false)
            {
               if((_loc14_ = _loc5_).§_-hZ§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§_-5E§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§_-rY§ |= b2Body.§_-Xv§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§_-FP§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§_-hZ§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§_-z-§;
                     while(_loc7_)
                     {
                        if(_loc9_.§_-LQ§ == _loc9_.§_-F§)
                        {
                           break;
                        }
                        if(!(_loc7_.§_-Mc§.§_-rY§ & b2Contact.§_-Xv§))
                        {
                           if(!(_loc7_.§_-Mc§.§switch§() == true || _loc7_.§_-Mc§.§_-JZ§() == false || _loc7_.§_-Mc§.§_-i9§() == false))
                           {
                              _loc9_.§_-yx§(_loc7_.§_-Mc§);
                              _loc7_.§_-Mc§.§_-rY§ |= b2Contact.§_-Xv§;
                              if(!((_loc22_ = _loc7_.§_-Z3§).§_-rY§ & b2Body.§_-Xv§))
                              {
                                 if(_loc22_.§_-hZ§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§_-y5§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§_-rY§ |= b2Body.§_-Xv§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§_-Q2§;
                     }
                     _loc21_ = _loc2_.§_-UG§;
                     while(_loc21_)
                     {
                        if(_loc9_.§_-gx§ != _loc9_.§_-3g§)
                        {
                           if(_loc21_.§_-DP§.§_-lR§ != true)
                           {
                              if((_loc22_ = _loc21_.§_-Z3§).§_-07§() != false)
                              {
                                 _loc9_.§_-Gy§(_loc21_.§_-DP§);
                                 _loc21_.§_-DP§.§_-lR§ = true;
                                 if(!(_loc22_.§_-rY§ & b2Body.§_-Xv§))
                                 {
                                    if(_loc22_.§_-hZ§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§_-y5§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§_-rY§ |= b2Body.§_-Xv§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§_-Q2§;
                     }
                  }
               }
               (_loc17_ = §_-g9§).§_-lv§ = false;
               _loc17_.§_-ib§ = (1 - _loc13_) * param1.§_-ib§;
               _loc17_.§_-h4§ = 1 / _loc17_.§_-ib§;
               _loc17_.§_-4Y§ = 0;
               _loc17_.§_-ZG§ = param1.§_-ZG§;
               _loc17_.§_-GE§ = param1.§_-GE§;
               _loc9_.§_-HZ§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-JW§)
               {
                  _loc2_ = _loc9_.§_-ZK§[_loc18_];
                  _loc2_.§_-rY§ &= ~b2Body.§_-Xv§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§_-hZ§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§_-Dr§();
                        _loc7_ = _loc2_.§_-z-§;
                        while(_loc7_)
                        {
                           _loc7_.§_-Mc§.§_-rY§ &= ~b2Contact.§_-eq§;
                           _loc7_ = _loc7_.§_-Q2§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-LQ§)
               {
                  _loc11_ = _loc9_.§_-z6§[_loc18_];
                  _loc11_.§_-rY§ &= ~(b2Contact.§_-eq§ | b2Contact.§_-Xv§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-gx§)
               {
                  (_loc8_ = _loc9_.§_-JM§[_loc18_]).§_-lR§ = false;
                  _loc18_++;
               }
               this.§_-Y7§.§_-08§();
            }
         }
      }
      
      b2internal function §_-cK§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§_-kI§();
         var _loc3_:b2Body = param1.§do§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §_-bc§;
         switch(param1.§_-rI§)
         {
            case b2Joint.§_-6G§:
               this.§_-jy§.§_-hH§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§_-sU§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§_-1A§();
               _loc13_ = _loc11_.§_-QX§();
               this.§_-jy§.§_-hH§(_loc12_,_loc8_,_loc10_);
               this.§_-jy§.§_-hH§(_loc13_,_loc9_,_loc10_);
               this.§_-jy§.§_-hH§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§_-X7§:
               this.§_-jy§.§_-hH§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§_-jy§.§_-hH§(_loc6_,_loc8_,_loc10_);
               }
               this.§_-jy§.§_-hH§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§_-jy§.§_-hH§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §_-CL§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§_-rI§)
         {
            case b2Shape.§_-x7§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§_-7c§(param2,_loc4_.§_-11§);
               _loc6_ = _loc4_.§_-9H§;
               _loc7_ = param2.R.col1;
               this.§_-jy§.§_-VX§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§_-yl§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§_-IZ§();
               _loc11_ = _loc9_.§_-N5§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§_-7c§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§_-jy§.§_-aV§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§_-Rn§:
               _loc13_ = param1 as b2EdgeShape;
               this.§_-jy§.§_-hH§(b2Math.§_-7c§(param2,_loc13_.GetVertex1()),b2Math.§_-7c§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

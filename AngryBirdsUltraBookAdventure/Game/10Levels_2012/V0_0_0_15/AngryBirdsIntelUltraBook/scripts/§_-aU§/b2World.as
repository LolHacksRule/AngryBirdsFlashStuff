package §_-aU§
{
   import §_-03n§.*;
   import §_-09-§.*;
   import §_-0DM§.*;
   import §_-5§.*;
   import §_-YZ§.b2Controller;
   import §_-YZ§.b2ControllerEdge;
   import §_-Yp§.*;
   import §_-gE§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §_-0AG§:b2Transform = new b2Transform();
      
      private static var §_-095§:b2Sweep = new b2Sweep();
      
      private static var §_-2K§:b2Sweep = new b2Sweep();
      
      private static var §_-0A1§:b2TimeStep = new b2TimeStep();
      
      private static var §_-OH§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §_-06w§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §_-KS§:Boolean;
      
      private static var §_-65§:Boolean;
      
      public static const §_-0DB§:int = 1;
      
      public static const §_-nF§:int = 2;
       
      
      private var §_-rQ§:Vector.<b2Body>;
      
      b2internal var §_-7R§:int;
      
      b2internal var §_-Xl§:b2ContactManager;
      
      private var §_-ol§:b2ContactSolver;
      
      private var §_-s3§:b2Island;
      
      b2internal var §_-WS§:b2Body;
      
      private var §_-6c§:b2Joint;
      
      b2internal var §_-4p§:b2Contact;
      
      private var §_-F9§:int;
      
      b2internal var §_-09s§:int;
      
      private var §_-ug§:int;
      
      private var §_-DZ§:b2Controller;
      
      private var §_-04s§:int;
      
      private var §_-hu§:b2Vec2;
      
      private var §_-0DS§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §_-Nc§:b2DestructionListener;
      
      private var §_-nw§:b2DebugDraw;
      
      private var §_-qt§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§_-rQ§ = new Vector.<b2Body>();
         this.§_-Xl§ = new b2ContactManager();
         this.§_-ol§ = new b2ContactSolver();
         this.§_-s3§ = new b2Island();
         super();
         this.§_-Nc§ = null;
         this.§_-nw§ = null;
         this.§_-WS§ = null;
         this.§_-4p§ = null;
         this.§_-6c§ = null;
         this.§_-DZ§ = null;
         this.§_-F9§ = 0;
         this.§_-09s§ = 0;
         this.§_-ug§ = 0;
         this.§_-04s§ = 0;
         §_-KS§ = true;
         §_-65§ = true;
         this.§_-0DS§ = param2;
         this.§_-hu§ = param1;
         this.§_-qt§ = 0;
         this.§_-Xl§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§_-S0§(_loc3_);
      }
      
      public function §_-Gp§(param1:b2DestructionListener) : void
      {
         this.§_-Nc§ = param1;
      }
      
      public function §_-fe§(param1:b2ContactFilter) : void
      {
         this.§_-Xl§.§_-K4§ = param1;
      }
      
      public function §_-06F§(param1:b2ContactListener) : void
      {
         this.§_-Xl§.§_-0DF§ = param1;
      }
      
      public function §_-7l§(param1:b2DebugDraw) : void
      {
         this.§_-nw§ = param1;
      }
      
      public function §_-pe§(param1:§_-We§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§_-We§ = this.§_-Xl§.§_-Q-§;
         this.§_-Xl§.§_-Q-§ = param1;
         var _loc3_:b2Body = this.§_-WS§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§_-7L§;
            while(_loc4_)
            {
               _loc4_.§_-Xg§ = param1.§_-7Y§(_loc2_.§_-082§(_loc4_.§_-Xg§),_loc4_);
               _loc4_ = _loc4_.§_-oz§;
            }
            _loc3_ = _loc3_.§_-oz§;
         }
      }
      
      public function §_-0DA§() : void
      {
         this.§_-Xl§.§_-Q-§.§_-0DA§();
      }
      
      public function §_-ps§() : int
      {
         return this.§_-Xl§.§_-Q-§.§_-ps§();
      }
      
      public function §_-S0§(param1:b2BodyDef) : b2Body
      {
         if(this.§_-ZM§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§_-021§ = null;
         _loc2_.§_-oz§ = this.§_-WS§;
         if(this.§_-WS§)
         {
            this.§_-WS§.§_-021§ = _loc2_;
         }
         this.§_-WS§ = _loc2_;
         ++this.§_-F9§;
         return _loc2_;
      }
      
      public function §_-yl§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§_-ZM§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§_-6c§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§_-Oh§;
            if(this.§_-Nc§)
            {
               this.§_-Nc§.§_-98§(_loc6_.§_-q5§);
            }
            this.§_-r5§(_loc6_.§_-q5§);
         }
         var _loc3_:b2ControllerEdge = param1.§_-DZ§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§_-0AE§;
            _loc7_.§_-03s§.§_-kG§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§_-4p§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§_-Oh§;
            this.§_-Xl§.§_-01§(_loc8_.§_-20§);
         }
         param1.§_-4p§ = null;
         var _loc5_:b2Fixture = param1.§_-7L§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§_-oz§;
            if(this.§_-Nc§)
            {
               this.§_-Nc§.§_-nh§(_loc9_);
            }
            _loc9_.§_-yw§(this.§_-Xl§.§_-Q-§);
            _loc9_.§_-01§();
         }
         param1.§_-7L§ = null;
         param1.§_-jM§ = 0;
         if(param1.§_-021§)
         {
            param1.§_-021§.§_-oz§ = param1.§_-oz§;
         }
         if(param1.§_-oz§)
         {
            param1.§_-oz§.§_-021§ = param1.§_-021§;
         }
         if(param1 == this.§_-WS§)
         {
            this.§_-WS§ = param1.§_-oz§;
         }
         --this.§_-F9§;
      }
      
      public function §_-oW§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§_-xb§(param1,null);
         _loc2_.§_-021§ = null;
         _loc2_.§_-oz§ = this.§_-6c§;
         if(this.§_-6c§)
         {
            this.§_-6c§.§_-021§ = _loc2_;
         }
         this.§_-6c§ = _loc2_;
         ++this.§_-ug§;
         _loc2_.§_-b3§.§_-q5§ = _loc2_;
         _loc2_.§_-b3§.§_-TK§ = _loc2_.§_-c9§;
         _loc2_.§_-b3§.§_-05Y§ = null;
         _loc2_.§_-b3§.§_-Oh§ = _loc2_.§_-0FB§.§_-6c§;
         if(_loc2_.§_-0FB§.§_-6c§)
         {
            _loc2_.§_-0FB§.§_-6c§.§_-05Y§ = _loc2_.§_-b3§;
         }
         _loc2_.§_-0FB§.§_-6c§ = _loc2_.§_-b3§;
         _loc2_.§_-0DP§.§_-q5§ = _loc2_;
         _loc2_.§_-0DP§.§_-TK§ = _loc2_.§_-0FB§;
         _loc2_.§_-0DP§.§_-05Y§ = null;
         _loc2_.§_-0DP§.§_-Oh§ = _loc2_.§_-c9§.§_-6c§;
         if(_loc2_.§_-c9§.§_-6c§)
         {
            _loc2_.§_-c9§.§_-6c§.§_-05Y§ = _loc2_.§_-0DP§;
         }
         _loc2_.§_-c9§.§_-6c§ = _loc2_.§_-0DP§;
         var _loc3_:b2Body = param1.§_-ZR§;
         var _loc4_:b2Body = param1.§_-7b§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§_-qw§();
            while(_loc5_)
            {
               if(_loc5_.§_-TK§ == _loc3_)
               {
                  _loc5_.§_-20§.§_-FN§();
               }
               _loc5_ = _loc5_.§_-Oh§;
            }
         }
         return _loc2_;
      }
      
      public function §_-r5§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§_-vY§;
         if(param1.§_-021§)
         {
            param1.§_-021§.§_-oz§ = param1.§_-oz§;
         }
         if(param1.§_-oz§)
         {
            param1.§_-oz§.§_-021§ = param1.§_-021§;
         }
         if(param1 == this.§_-6c§)
         {
            this.§_-6c§ = param1.§_-oz§;
         }
         var _loc3_:b2Body = param1.§_-0FB§;
         var _loc4_:b2Body = param1.§_-c9§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§_-b3§.§_-05Y§)
         {
            param1.§_-b3§.§_-05Y§.§_-Oh§ = param1.§_-b3§.§_-Oh§;
         }
         if(param1.§_-b3§.§_-Oh§)
         {
            param1.§_-b3§.§_-Oh§.§_-05Y§ = param1.§_-b3§.§_-05Y§;
         }
         if(param1.§_-b3§ == _loc3_.§_-6c§)
         {
            _loc3_.§_-6c§ = param1.§_-b3§.§_-Oh§;
         }
         param1.§_-b3§.§_-05Y§ = null;
         param1.§_-b3§.§_-Oh§ = null;
         if(param1.§_-0DP§.§_-05Y§)
         {
            param1.§_-0DP§.§_-05Y§.§_-Oh§ = param1.§_-0DP§.§_-Oh§;
         }
         if(param1.§_-0DP§.§_-Oh§)
         {
            param1.§_-0DP§.§_-Oh§.§_-05Y§ = param1.§_-0DP§.§_-05Y§;
         }
         if(param1.§_-0DP§ == _loc4_.§_-6c§)
         {
            _loc4_.§_-6c§ = param1.§_-0DP§.§_-Oh§;
         }
         param1.§_-0DP§.§_-05Y§ = null;
         param1.§_-0DP§.§_-Oh§ = null;
         b2Joint.§_-01§(param1,null);
         --this.§_-ug§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§_-qw§();
            while(_loc5_)
            {
               if(_loc5_.§_-TK§ == _loc3_)
               {
                  _loc5_.§_-20§.§_-FN§();
               }
               _loc5_ = _loc5_.§_-Oh§;
            }
         }
      }
      
      public function §_-cY§(param1:b2Controller) : b2Controller
      {
         param1.§_-oz§ = this.§_-DZ§;
         param1.§_-021§ = null;
         this.§_-DZ§ = param1;
         param1.m_world = this;
         ++this.§_-04s§;
         return param1;
      }
      
      public function §_-Bz§(param1:b2Controller) : void
      {
         if(param1.§_-021§)
         {
            param1.§_-021§.§_-oz§ = param1.§_-oz§;
         }
         if(param1.§_-oz§)
         {
            param1.§_-oz§.§_-021§ = param1.§_-021§;
         }
         if(this.§_-DZ§ == param1)
         {
            this.§_-DZ§ = param1.§_-oz§;
         }
         --this.§_-04s§;
      }
      
      public function §_-dL§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§_-oz§ = this.§_-DZ§;
         param1.§_-021§ = null;
         if(this.§_-DZ§)
         {
            this.§_-DZ§.§_-021§ = param1;
         }
         this.§_-DZ§ = param1;
         ++this.§_-04s§;
         param1.m_world = this;
         return param1;
      }
      
      public function §_-00S§(param1:b2Controller) : void
      {
         param1.§_-p7§();
         if(param1.§_-oz§)
         {
            param1.§_-oz§.§_-021§ = param1.§_-021§;
         }
         if(param1.§_-021§)
         {
            param1.§_-021§.§_-oz§ = param1.§_-oz§;
         }
         if(param1 == this.§_-DZ§)
         {
            this.§_-DZ§ = param1.§_-oz§;
         }
         --this.§_-04s§;
      }
      
      public function §_-06U§(param1:Boolean) : void
      {
         §_-KS§ = param1;
      }
      
      public function §_-xp§(param1:Boolean) : void
      {
         §_-65§ = param1;
      }
      
      public function §_-LB§() : int
      {
         return this.§_-F9§;
      }
      
      public function §_-SX§() : int
      {
         return this.§_-ug§;
      }
      
      public function §_-Kb§() : int
      {
         return this.§_-09s§;
      }
      
      public function §_-06x§(param1:b2Vec2) : void
      {
         this.§_-hu§ = param1;
      }
      
      public function §_-aX§() : b2Vec2
      {
         return this.§_-hu§;
      }
      
      public function §_-0Df§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §_-wu§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§_-7R§ & §_-0DB§)
         {
            this.§_-Xl§.§_-Wx§();
            this.§_-7R§ &= ~§_-0DB§;
         }
         this.§_-7R§ |= §_-nF§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§_-pn§ = param1;
         _loc4_.§_-lE§ = param2;
         _loc4_.§_-u5§ = param3;
         if(param1 > 0)
         {
            _loc4_.§_-00-§ = 1 / param1;
         }
         else
         {
            _loc4_.§_-00-§ = 0;
         }
         _loc4_.§_-b8§ = this.§_-qt§ * param1;
         _loc4_.§_-0F7§ = §_-KS§;
         this.§_-Xl§.§_-4P§();
         if(_loc4_.§_-pn§ > 0)
         {
            this.§_-NQ§(_loc4_);
         }
         if(§_-65§ && _loc4_.§_-pn§ > 0)
         {
            this.§_-Fk§(_loc4_);
         }
         if(_loc4_.§_-pn§ > 0)
         {
            this.§_-qt§ = _loc4_.§_-00-§;
         }
         this.§_-7R§ &= ~§_-nF§;
      }
      
      public function §_-RE§() : void
      {
         var _loc1_:b2Body = this.§_-WS§;
         while(_loc1_)
         {
            _loc1_.§_-wp§.§_-el§();
            _loc1_.§_-cH§ = 0;
            _loc1_ = _loc1_.§_-oz§;
         }
      }
      
      public function §_-jZ§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§_-We§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§_-nw§ == null)
         {
            return;
         }
         this.§_-nw§.§_-f9§.graphics.clear();
         var _loc1_:uint = this.§_-nw§.§_-0p§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§_-vn§)
         {
            _loc3_ = this.§_-WS§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§_-0DJ§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§_-04Z§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§_-Si§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-oF§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§_-Si§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-oF§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§_-Si§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§_-Si§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§_-Si§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§_-oz§;
               }
               _loc3_ = _loc3_.§_-oz§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-x1§)
         {
            _loc6_ = this.§_-6c§;
            while(_loc6_)
            {
               this.§_-YP§(_loc6_);
               _loc6_ = _loc6_.§_-oz§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-Mo§)
         {
            _loc16_ = this.§_-DZ§;
            while(_loc16_)
            {
               _loc16_.§_-xw§(this.§_-nw§);
               _loc16_ = _loc16_.§_-oz§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-0E1§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§_-Xl§.§_-4p§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§_-k-§();
               _loc19_ = _loc17_.§_-7G§();
               _loc20_ = _loc18_.override().§_-sF§();
               _loc21_ = _loc19_.override().§_-sF§();
               this.§_-nw§.§_-T4§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§_-02g§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-Wa§)
         {
            _loc7_ = this.§_-Xl§.§_-Q-§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§_-WS§;
            while(_loc3_)
            {
               if(_loc3_.§_-04Z§() != false)
               {
                  _loc4_ = _loc3_.§_-0DJ§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§_-082§(_loc4_.§_-Xg§);
                     _loc14_[0].Set(_loc22_.§_-Bv§.x,_loc22_.§_-Bv§.y);
                     _loc14_[1].Set(_loc22_.§_-MB§.x,_loc22_.§_-Bv§.y);
                     _loc14_[2].Set(_loc22_.§_-MB§.x,_loc22_.§_-MB§.y);
                     _loc14_[3].Set(_loc22_.§_-Bv§.x,_loc22_.§_-MB§.y);
                     this.§_-nw§.§default§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§_-02g§();
                  }
               }
               _loc3_ = _loc3_.§_-02g§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-d6§)
         {
            _loc3_ = this.§_-WS§;
            while(_loc3_)
            {
               (_loc11_ = §_-0AG§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§_-Hi§();
               this.§_-nw§.§_-As§(_loc11_);
               _loc3_ = _loc3_.§_-oz§;
            }
         }
      }
      
      public function §_-02p§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§_-We§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§_-Xl§.§_-Q-§;
         broadPhase.§_-CP§(WorldQueryWrapper,aabb);
      }
      
      public function §_-4K§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§_-We§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§_-Rd§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§_-tg§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§_-H2§();
         }
         broadPhase = this.§_-Xl§.§_-Q-§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§_-CP§(WorldQueryWrapper,aabb);
      }
      
      public function §_-73§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§_-We§ = null;
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
         broadPhase = this.§_-Xl§.§_-Q-§;
         var aabb:b2AABB = new b2AABB();
         aabb.§_-Bv§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§_-MB§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§_-CP§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§_-We§ = null;
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
            return param1.§_-r9§;
         };
         broadPhase = this.§_-Xl§.§_-Q-§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §_-V2§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §_-06a§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §_-JW§() : b2Body
      {
         return this.§_-WS§;
      }
      
      public function §_-ip§() : b2Joint
      {
         return this.§_-6c§;
      }
      
      public function §_-qw§() : b2Contact
      {
         return this.§_-4p§;
      }
      
      public function §_-ZM§() : Boolean
      {
         return (this.§_-7R§ & §_-nF§) > 0;
      }
      
      b2internal function §_-NQ§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§_-DZ§;
         while(_loc3_)
         {
            _loc3_.§_-wu§(param1);
            _loc3_ = _loc3_.§_-oz§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§_-s3§).§_-bL§(this.§_-F9§,this.§_-09s§,this.§_-ug§,null,this.§_-Xl§.§_-0DF§,this.§_-ol§);
         _loc2_ = this.§_-WS§;
         while(_loc2_)
         {
            _loc2_.§_-7R§ &= ~b2Body.§_-0AI§;
            _loc2_ = _loc2_.§_-oz§;
         }
         var _loc5_:b2Contact = this.§_-4p§;
         while(_loc5_)
         {
            _loc5_.§_-7R§ &= ~b2Contact.§_-0AI§;
            _loc5_ = _loc5_.§_-oz§;
         }
         var _loc6_:b2Joint = this.§_-6c§;
         while(_loc6_)
         {
            _loc6_.§_-GX§ = false;
            _loc6_ = _loc6_.§_-oz§;
         }
         var _loc7_:int = this.§_-F9§;
         var _loc8_:Vector.<b2Body> = this.§_-rQ§;
         var _loc9_:b2Body = this.§_-WS§;
         while(_loc9_)
         {
            if(!(_loc9_.§_-7R§ & b2Body.§_-0AI§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§_-04Z§() == false))
               {
                  if(_loc9_.§_-oF§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§_-p7§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§_-7R§ |= b2Body.§_-0AI§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§_-gW§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§_-oF§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§_-4p§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§_-20§.§_-7R§ & b2Contact.§_-0AI§))
                              {
                                 if(!(_loc13_.§_-20§.§_-07V§() == true || _loc13_.§_-20§.§_-0Dw§() == false || _loc13_.§_-20§.§_-bU§() == false))
                                 {
                                    _loc4_.§_-ms§(_loc13_.§_-20§);
                                    _loc13_.§_-20§.§_-7R§ |= b2Contact.§_-0AI§;
                                    if(!((_loc12_ = _loc13_.§_-TK§).§_-7R§ & b2Body.§_-0AI§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-7R§ |= b2Body.§_-0AI§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§_-Oh§;
                           }
                           _loc14_ = _loc2_.§_-6c§;
                           while(_loc14_)
                           {
                              if(_loc14_.§_-q5§.§_-GX§ != true)
                              {
                                 if((_loc12_ = _loc14_.§_-TK§).§_-04Z§() != false)
                                 {
                                    _loc4_.§_-9S§(_loc14_.§_-q5§);
                                    _loc14_.§_-q5§.§_-GX§ = true;
                                    if(!(_loc12_.§_-7R§ & b2Body.§_-0AI§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-7R§ |= b2Body.§_-0AI§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§_-Oh§;
                           }
                        }
                     }
                     _loc4_.§_-NQ§(param1,this.§_-hu§,this.§_-0DS§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§_-F9§)
                     {
                        _loc2_ = _loc4_.§_-oa§[_loc11_];
                        if(_loc2_.§_-oF§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§_-7R§ &= ~b2Body.§_-0AI§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§_-oz§;
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
         _loc2_ = this.§_-WS§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§_-04Z§() == false))
            {
               if(_loc2_.§_-oF§() != b2Body.b2_staticBody)
               {
                  _loc2_.§_-QG§();
               }
            }
            _loc2_ = _loc2_.§_-oz§;
         }
         this.§_-Xl§.§_-Wx§();
      }
      
      b2internal function §_-Fk§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§_-s3§).§_-bL§(this.§_-F9§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§_-Xl§.§_-0DF§,this.§_-ol§);
         var _loc10_:Vector.<b2Body> = §_-OH§;
         _loc2_ = this.§_-WS§;
         while(_loc2_)
         {
            _loc2_.§_-7R§ &= ~b2Body.§_-0AI§;
            _loc2_.m_sweep.§_-RN§ = 0;
            _loc2_ = _loc2_.§_-oz§;
         }
         _loc11_ = this.§_-4p§;
         while(_loc11_)
         {
            _loc11_.§_-7R§ &= ~(b2Contact.§_-P1§ | b2Contact.§_-0AI§);
            _loc11_ = _loc11_.§_-oz§;
         }
         _loc8_ = this.§_-6c§;
         while(_loc8_)
         {
            _loc8_.§_-GX§ = false;
            _loc8_ = _loc8_.§_-oz§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§_-4p§;
            while(_loc11_)
            {
               if(!(_loc11_.§_-07V§() == true || _loc11_.§_-0Dw§() == false || _loc11_.§_-05O§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§_-7R§ & b2Contact.§_-P1§)
                  {
                     _loc19_ = _loc11_.§_-07y§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§_-f-§;
                     _loc4_ = _loc11_.§_-N-§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§_-oF§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§_-oF§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr624:
                        _loc11_ = _loc11_.§_-oz§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§_-RN§;
                     if(_loc5_.m_sweep.§_-RN§ < _loc6_.m_sweep.§_-RN§)
                     {
                        _loc20_ = _loc6_.m_sweep.§_-RN§;
                        _loc5_.m_sweep.§_-nE§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§_-RN§ < _loc5_.m_sweep.§_-RN§)
                     {
                        _loc20_ = _loc5_.m_sweep.§_-RN§;
                        _loc6_.m_sweep.§_-nE§(_loc20_);
                     }
                     _loc19_ = _loc11_.§_-gV§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§_-07y§ = _loc19_;
                     _loc11_.§_-7R§ |= b2Contact.§_-P1§;
                     §§goto(addr624);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr624);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§_-f-§;
            _loc4_ = _loc12_.§_-N-§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §_-095§.Set(_loc5_.m_sweep);
            §_-2K§.Set(_loc6_.m_sweep);
            _loc5_.§_-nE§(_loc13_);
            _loc6_.§_-nE§(_loc13_);
            _loc12_.§_-Gb§(this.§_-Xl§.§_-0DF§);
            _loc12_.§_-7R§ &= ~b2Contact.§_-P1§;
            if(_loc12_.§_-07V§() == true || _loc12_.§_-0Dw§() == false)
            {
               _loc5_.m_sweep.Set(§_-095§);
               _loc6_.m_sweep.Set(§_-2K§);
               _loc5_.§_-da§();
               _loc6_.§_-da§();
            }
            else if(_loc12_.§_-bU§() != false)
            {
               if((_loc14_ = _loc5_).§_-oF§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§_-p7§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§_-7R§ |= b2Body.§_-0AI§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§_-gW§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§_-oF§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§_-4p§;
                     while(_loc7_)
                     {
                        if(_loc9_.§_-09s§ == _loc9_.§_-Fy§)
                        {
                           break;
                        }
                        if(!(_loc7_.§_-20§.§_-7R§ & b2Contact.§_-0AI§))
                        {
                           if(!(_loc7_.§_-20§.§_-07V§() == true || _loc7_.§_-20§.§_-0Dw§() == false || _loc7_.§_-20§.§_-bU§() == false))
                           {
                              _loc9_.§_-ms§(_loc7_.§_-20§);
                              _loc7_.§_-20§.§_-7R§ |= b2Contact.§_-0AI§;
                              if(!((_loc22_ = _loc7_.§_-TK§).§_-7R§ & b2Body.§_-0AI§))
                              {
                                 if(_loc22_.§_-oF§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§_-nE§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§_-7R§ |= b2Body.§_-0AI§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§_-Oh§;
                     }
                     _loc21_ = _loc2_.§_-6c§;
                     while(_loc21_)
                     {
                        if(_loc9_.§_-ug§ != _loc9_.§_-068§)
                        {
                           if(_loc21_.§_-q5§.§_-GX§ != true)
                           {
                              if((_loc22_ = _loc21_.§_-TK§).§_-04Z§() != false)
                              {
                                 _loc9_.§_-9S§(_loc21_.§_-q5§);
                                 _loc21_.§_-q5§.§_-GX§ = true;
                                 if(!(_loc22_.§_-7R§ & b2Body.§_-0AI§))
                                 {
                                    if(_loc22_.§_-oF§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§_-nE§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§_-7R§ |= b2Body.§_-0AI§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§_-Oh§;
                     }
                  }
               }
               (_loc17_ = §_-0A1§).§_-0F7§ = false;
               _loc17_.§_-pn§ = (1 - _loc13_) * param1.§_-pn§;
               _loc17_.§_-00-§ = 1 / _loc17_.§_-pn§;
               _loc17_.§_-b8§ = 0;
               _loc17_.§_-lE§ = param1.§_-lE§;
               _loc17_.§_-u5§ = param1.§_-u5§;
               _loc9_.§_-Fk§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-F9§)
               {
                  _loc2_ = _loc9_.§_-oa§[_loc18_];
                  _loc2_.§_-7R§ &= ~b2Body.§_-0AI§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§_-oF§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§_-QG§();
                        _loc7_ = _loc2_.§_-4p§;
                        while(_loc7_)
                        {
                           _loc7_.§_-20§.§_-7R§ &= ~b2Contact.§_-P1§;
                           _loc7_ = _loc7_.§_-Oh§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-09s§)
               {
                  _loc11_ = _loc9_.§_-03H§[_loc18_];
                  _loc11_.§_-7R§ &= ~(b2Contact.§_-P1§ | b2Contact.§_-0AI§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-ug§)
               {
                  (_loc8_ = _loc9_.§_-tI§[_loc18_]).§_-GX§ = false;
                  _loc18_++;
               }
               this.§_-Xl§.§_-Wx§();
            }
         }
      }
      
      b2internal function §_-YP§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§_-00L§();
         var _loc3_:b2Body = param1.§_-03D§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §_-06w§;
         switch(param1.§_-1c§)
         {
            case b2Joint.§_-Mk§:
               this.§_-nw§.§_-T4§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§_-kH§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§_-qK§();
               _loc13_ = _loc11_.§_-zV§();
               this.§_-nw§.§_-T4§(_loc12_,_loc8_,_loc10_);
               this.§_-nw§.§_-T4§(_loc13_,_loc9_,_loc10_);
               this.§_-nw§.§_-T4§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§_-w§:
               this.§_-nw§.§_-T4§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§_-nw§.§_-T4§(_loc6_,_loc8_,_loc10_);
               }
               this.§_-nw§.§_-T4§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§_-nw§.§_-T4§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §_-Si§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§_-1c§)
         {
            case b2Shape.§_-rv§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§_-yP§(param2,_loc4_.§_-bq§);
               _loc6_ = _loc4_.§_-0CZ§;
               _loc7_ = param2.R.col1;
               this.§_-nw§.§_-7J§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§_-04L§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§_-y3§();
               _loc11_ = _loc9_.§_-Y2§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§_-yP§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§_-nw§.§_-Oc§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§_-Ee§:
               _loc13_ = param1 as b2EdgeShape;
               this.§_-nw§.§_-T4§(b2Math.§_-yP§(param2,_loc13_.GetVertex1()),b2Math.§_-yP§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

package §_-vk§
{
   import §_-Pu§.*;
   import §_-bA§.*;
   import §_-l7§.*;
   import §_-mg§.*;
   import §_-rz§.*;
   import §_-we§.b2Controller;
   import §_-we§.b2ControllerEdge;
   import §_-zP§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §_-lA§:b2Transform = new b2Transform();
      
      private static var §_-GP§:b2Sweep = new b2Sweep();
      
      private static var §_-AO§:b2Sweep = new b2Sweep();
      
      private static var §_-vg§:b2TimeStep = new b2TimeStep();
      
      private static var §_-Cu§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §_-sh§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §_-Mv§:Boolean;
      
      private static var §_-7M§:Boolean;
      
      public static const §_-BX§:int = 1;
      
      public static const §_-dS§:int = 2;
       
      
      private var §_-u6§:Vector.<b2Body>;
      
      b2internal var §_-xk§:int;
      
      b2internal var §_-OW§:b2ContactManager;
      
      private var §_-b1§:b2ContactSolver;
      
      private var §_-vY§:b2Island;
      
      b2internal var §_-Zx§:b2Body;
      
      private var §_-Wy§:b2Joint;
      
      b2internal var §_-L3§:b2Contact;
      
      private var §_-OF§:int;
      
      b2internal var §_-aG§:int;
      
      private var §_-3F§:int;
      
      private var §_-lO§:b2Controller;
      
      private var §_-T9§:int;
      
      private var §_-ks§:b2Vec2;
      
      private var §_-c6§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §_-vr§:b2DestructionListener;
      
      private var §_-32§:b2DebugDraw;
      
      private var §_-OT§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§_-u6§ = new Vector.<b2Body>();
         this.§_-OW§ = new b2ContactManager();
         this.§_-b1§ = new b2ContactSolver();
         this.§_-vY§ = new b2Island();
         super();
         this.§_-vr§ = null;
         this.§_-32§ = null;
         this.§_-Zx§ = null;
         this.§_-L3§ = null;
         this.§_-Wy§ = null;
         this.§_-lO§ = null;
         this.§_-OF§ = 0;
         this.§_-aG§ = 0;
         this.§_-3F§ = 0;
         this.§_-T9§ = 0;
         §_-Mv§ = true;
         §_-7M§ = true;
         this.§_-c6§ = param2;
         this.§_-ks§ = param1;
         this.§_-OT§ = 0;
         this.§_-OW§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§_-6o§(_loc3_);
      }
      
      public function §_-Kh§(param1:b2DestructionListener) : void
      {
         this.§_-vr§ = param1;
      }
      
      public function §_-q8§(param1:b2ContactFilter) : void
      {
         this.§_-OW§.§_-XN§ = param1;
      }
      
      public function §_-It§(param1:b2ContactListener) : void
      {
         this.§_-OW§.§_-1P§ = param1;
      }
      
      public function §_-Js§(param1:b2DebugDraw) : void
      {
         this.§_-32§ = param1;
      }
      
      public function §_-Yb§(param1:§_-Y0§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§_-Y0§ = this.§_-OW§.§_-qO§;
         this.§_-OW§.§_-qO§ = param1;
         var _loc3_:b2Body = this.§_-Zx§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§_-qj§;
            while(_loc4_)
            {
               _loc4_.§_-ej§ = param1.§_-Nl§(_loc2_.§_-8q§(_loc4_.§_-ej§),_loc4_);
               _loc4_ = _loc4_.§_-np§;
            }
            _loc3_ = _loc3_.§_-np§;
         }
      }
      
      public function §_-wo§() : void
      {
         this.§_-OW§.§_-qO§.§_-wo§();
      }
      
      public function §_-fF§() : int
      {
         return this.§_-OW§.§_-qO§.§_-fF§();
      }
      
      public function §_-6o§(param1:b2BodyDef) : b2Body
      {
         if(this.§_-kC§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§_-Fg§ = null;
         _loc2_.§_-np§ = this.§_-Zx§;
         if(this.§_-Zx§)
         {
            this.§_-Zx§.§_-Fg§ = _loc2_;
         }
         this.§_-Zx§ = _loc2_;
         ++this.§_-OF§;
         return _loc2_;
      }
      
      public function §_-k§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§_-kC§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§_-Wy§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§_-PP§;
            if(this.§_-vr§)
            {
               this.§_-vr§.§_-SS§(_loc6_.§_-o0§);
            }
            this.§_-SY§(_loc6_.§_-o0§);
         }
         var _loc3_:b2ControllerEdge = param1.§_-lO§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§_-c1§;
            _loc7_.§_-6j§.§_-YJ§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§_-L3§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§_-PP§;
            this.§_-OW§.§_-6A§(_loc8_.§_-AG§);
         }
         param1.§_-L3§ = null;
         var _loc5_:b2Fixture = param1.§_-qj§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§_-np§;
            if(this.§_-vr§)
            {
               this.§_-vr§.§_-vh§(_loc9_);
            }
            _loc9_.§_-Xm§(this.§_-OW§.§_-qO§);
            _loc9_.§_-6A§();
         }
         param1.§_-qj§ = null;
         param1.§_-j7§ = 0;
         if(param1.§_-Fg§)
         {
            param1.§_-Fg§.§_-np§ = param1.§_-np§;
         }
         if(param1.§_-np§)
         {
            param1.§_-np§.§_-Fg§ = param1.§_-Fg§;
         }
         if(param1 == this.§_-Zx§)
         {
            this.§_-Zx§ = param1.§_-np§;
         }
         --this.§_-OF§;
      }
      
      public function §_-oV§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§_-gE§(param1,null);
         _loc2_.§_-Fg§ = null;
         _loc2_.§_-np§ = this.§_-Wy§;
         if(this.§_-Wy§)
         {
            this.§_-Wy§.§_-Fg§ = _loc2_;
         }
         this.§_-Wy§ = _loc2_;
         ++this.§_-3F§;
         _loc2_.§_-0H§.§_-o0§ = _loc2_;
         _loc2_.§_-0H§.§_-uw§ = _loc2_.§_-qa§;
         _loc2_.§_-0H§.§_-SO§ = null;
         _loc2_.§_-0H§.§_-PP§ = _loc2_.§_-Vj§.§_-Wy§;
         if(_loc2_.§_-Vj§.§_-Wy§)
         {
            _loc2_.§_-Vj§.§_-Wy§.§_-SO§ = _loc2_.§_-0H§;
         }
         _loc2_.§_-Vj§.§_-Wy§ = _loc2_.§_-0H§;
         _loc2_.§_-6X§.§_-o0§ = _loc2_;
         _loc2_.§_-6X§.§_-uw§ = _loc2_.§_-Vj§;
         _loc2_.§_-6X§.§_-SO§ = null;
         _loc2_.§_-6X§.§_-PP§ = _loc2_.§_-qa§.§_-Wy§;
         if(_loc2_.§_-qa§.§_-Wy§)
         {
            _loc2_.§_-qa§.§_-Wy§.§_-SO§ = _loc2_.§_-6X§;
         }
         _loc2_.§_-qa§.§_-Wy§ = _loc2_.§_-6X§;
         var _loc3_:b2Body = param1.§_-wE§;
         var _loc4_:b2Body = param1.§_-3J§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§_-ea§();
            while(_loc5_)
            {
               if(_loc5_.§_-uw§ == _loc3_)
               {
                  _loc5_.§_-AG§.§_-HV§();
               }
               _loc5_ = _loc5_.§_-PP§;
            }
         }
         return _loc2_;
      }
      
      public function §_-SY§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§_-Pc§;
         if(param1.§_-Fg§)
         {
            param1.§_-Fg§.§_-np§ = param1.§_-np§;
         }
         if(param1.§_-np§)
         {
            param1.§_-np§.§_-Fg§ = param1.§_-Fg§;
         }
         if(param1 == this.§_-Wy§)
         {
            this.§_-Wy§ = param1.§_-np§;
         }
         var _loc3_:b2Body = param1.§_-Vj§;
         var _loc4_:b2Body = param1.§_-qa§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§_-0H§.§_-SO§)
         {
            param1.§_-0H§.§_-SO§.§_-PP§ = param1.§_-0H§.§_-PP§;
         }
         if(param1.§_-0H§.§_-PP§)
         {
            param1.§_-0H§.§_-PP§.§_-SO§ = param1.§_-0H§.§_-SO§;
         }
         if(param1.§_-0H§ == _loc3_.§_-Wy§)
         {
            _loc3_.§_-Wy§ = param1.§_-0H§.§_-PP§;
         }
         param1.§_-0H§.§_-SO§ = null;
         param1.§_-0H§.§_-PP§ = null;
         if(param1.§_-6X§.§_-SO§)
         {
            param1.§_-6X§.§_-SO§.§_-PP§ = param1.§_-6X§.§_-PP§;
         }
         if(param1.§_-6X§.§_-PP§)
         {
            param1.§_-6X§.§_-PP§.§_-SO§ = param1.§_-6X§.§_-SO§;
         }
         if(param1.§_-6X§ == _loc4_.§_-Wy§)
         {
            _loc4_.§_-Wy§ = param1.§_-6X§.§_-PP§;
         }
         param1.§_-6X§.§_-SO§ = null;
         param1.§_-6X§.§_-PP§ = null;
         b2Joint.§_-6A§(param1,null);
         --this.§_-3F§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§_-ea§();
            while(_loc5_)
            {
               if(_loc5_.§_-uw§ == _loc3_)
               {
                  _loc5_.§_-AG§.§_-HV§();
               }
               _loc5_ = _loc5_.§_-PP§;
            }
         }
      }
      
      public function §_-WV§(param1:b2Controller) : b2Controller
      {
         param1.§_-np§ = this.§_-lO§;
         param1.§_-Fg§ = null;
         this.§_-lO§ = param1;
         param1.m_world = this;
         ++this.§_-T9§;
         return param1;
      }
      
      public function §_-KN§(param1:b2Controller) : void
      {
         if(param1.§_-Fg§)
         {
            param1.§_-Fg§.§_-np§ = param1.§_-np§;
         }
         if(param1.§_-np§)
         {
            param1.§_-np§.§_-Fg§ = param1.§_-Fg§;
         }
         if(this.§_-lO§ == param1)
         {
            this.§_-lO§ = param1.§_-np§;
         }
         --this.§_-T9§;
      }
      
      public function §_-hy§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§_-np§ = this.§_-lO§;
         param1.§_-Fg§ = null;
         if(this.§_-lO§)
         {
            this.§_-lO§.§_-Fg§ = param1;
         }
         this.§_-lO§ = param1;
         ++this.§_-T9§;
         param1.m_world = this;
         return param1;
      }
      
      public function §_-Ke§(param1:b2Controller) : void
      {
         param1.§_-XW§();
         if(param1.§_-np§)
         {
            param1.§_-np§.§_-Fg§ = param1.§_-Fg§;
         }
         if(param1.§_-Fg§)
         {
            param1.§_-Fg§.§_-np§ = param1.§_-np§;
         }
         if(param1 == this.§_-lO§)
         {
            this.§_-lO§ = param1.§_-np§;
         }
         --this.§_-T9§;
      }
      
      public function §_-G3§(param1:Boolean) : void
      {
         §_-Mv§ = param1;
      }
      
      public function §_-hv§(param1:Boolean) : void
      {
         §_-7M§ = param1;
      }
      
      public function §_-eC§() : int
      {
         return this.§_-OF§;
      }
      
      public function §_-uj§() : int
      {
         return this.§_-3F§;
      }
      
      public function §_-7Y§() : int
      {
         return this.§_-aG§;
      }
      
      public function §_-Wi§(param1:b2Vec2) : void
      {
         this.§_-ks§ = param1;
      }
      
      public function §_-iO§() : b2Vec2
      {
         return this.§_-ks§;
      }
      
      public function §_-6V§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §_-If§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§_-xk§ & §_-BX§)
         {
            this.§_-OW§.§_-Bk§();
            this.§_-xk§ &= ~§_-BX§;
         }
         this.§_-xk§ |= §_-dS§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§_-Qf§ = param1;
         _loc4_.§_-TU§ = param2;
         _loc4_.§_-zg§ = param3;
         if(param1 > 0)
         {
            _loc4_.§_-Uz§ = 1 / param1;
         }
         else
         {
            _loc4_.§_-Uz§ = 0;
         }
         _loc4_.§_-D§ = this.§_-OT§ * param1;
         _loc4_.§_-uU§ = §_-Mv§;
         this.§_-OW§.§_-yp§();
         if(_loc4_.§_-Qf§ > 0)
         {
            this.§_-TD§(_loc4_);
         }
         if(§_-7M§ && _loc4_.§_-Qf§ > 0)
         {
            this.§_-Z3§(_loc4_);
         }
         if(_loc4_.§_-Qf§ > 0)
         {
            this.§_-OT§ = _loc4_.§_-Uz§;
         }
         this.§_-xk§ &= ~§_-dS§;
      }
      
      public function §_-tD§() : void
      {
         var _loc1_:b2Body = this.§_-Zx§;
         while(_loc1_)
         {
            _loc1_.§_-Zr§.§_-qi§();
            _loc1_.§_-O8§ = 0;
            _loc1_ = _loc1_.§_-np§;
         }
      }
      
      public function §_-OZ§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§_-Y0§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§_-32§ == null)
         {
            return;
         }
         this.§_-32§.§_-Pp§.graphics.clear();
         var _loc1_:uint = this.§_-32§.§_-5G§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§_-y6§)
         {
            _loc3_ = this.§_-Zx§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§_-J1§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§_-B7§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§_-gK§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-Wx§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§_-gK§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-Wx§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§_-gK§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§_-gK§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§_-gK§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§_-np§;
               }
               _loc3_ = _loc3_.§_-np§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-b4§)
         {
            _loc6_ = this.§_-Wy§;
            while(_loc6_)
            {
               this.§_-9K§(_loc6_);
               _loc6_ = _loc6_.§_-np§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-r5§)
         {
            _loc16_ = this.§_-lO§;
            while(_loc16_)
            {
               _loc16_.§_-Hw§(this.§_-32§);
               _loc16_ = _loc16_.§_-np§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-Pl§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§_-OW§.§_-L3§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§_-bX§();
               _loc19_ = _loc17_.§_-sy§();
               _loc20_ = _loc18_.§_-Sk§().§_-ju§();
               _loc21_ = _loc19_.§_-Sk§().§_-ju§();
               this.§_-32§.§_-ek§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§_-9Y§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-Fq§)
         {
            _loc7_ = this.§_-OW§.§_-qO§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§_-Zx§;
            while(_loc3_)
            {
               if(_loc3_.§_-B7§() != false)
               {
                  _loc4_ = _loc3_.§_-J1§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§_-8q§(_loc4_.§_-ej§);
                     _loc14_[0].Set(_loc22_.§_-PO§.x,_loc22_.§_-PO§.y);
                     _loc14_[1].Set(_loc22_.§_-LW§.x,_loc22_.§_-PO§.y);
                     _loc14_[2].Set(_loc22_.§_-LW§.x,_loc22_.§_-LW§.y);
                     _loc14_[3].Set(_loc22_.§_-PO§.x,_loc22_.§_-LW§.y);
                     this.§_-32§.§_-MG§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§_-9Y§();
                  }
               }
               _loc3_ = _loc3_.§_-9Y§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-VA§)
         {
            _loc3_ = this.§_-Zx§;
            while(_loc3_)
            {
               (_loc11_ = §_-lA§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§_-GX§();
               this.§_-32§.§_-K5§(_loc11_);
               _loc3_ = _loc3_.§_-np§;
            }
         }
      }
      
      public function §_-BA§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§_-Y0§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§_-OW§.§_-qO§;
         broadPhase.§_-xd§(WorldQueryWrapper,aabb);
      }
      
      public function §_-bE§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§_-Y0§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§_-lP§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§_-ow§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§_-N§();
         }
         broadPhase = this.§_-OW§.§_-qO§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§_-xd§(WorldQueryWrapper,aabb);
      }
      
      public function §_-cW§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§_-Y0§ = null;
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
         broadPhase = this.§_-OW§.§_-qO§;
         var aabb:b2AABB = new b2AABB();
         aabb.§_-PO§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§_-LW§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§_-xd§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§_-Y0§ = null;
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
            return param1.§_-1x§;
         };
         broadPhase = this.§_-OW§.§_-qO§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §_-wA§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §set §(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §_-Ir§() : b2Body
      {
         return this.§_-Zx§;
      }
      
      public function §_-gN§() : b2Joint
      {
         return this.§_-Wy§;
      }
      
      public function §_-ea§() : b2Contact
      {
         return this.§_-L3§;
      }
      
      public function §_-kC§() : Boolean
      {
         return (this.§_-xk§ & §_-dS§) > 0;
      }
      
      b2internal function §_-TD§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§_-lO§;
         while(_loc3_)
         {
            _loc3_.§_-If§(param1);
            _loc3_ = _loc3_.§_-np§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§_-vY§).§_-95§(this.§_-OF§,this.§_-aG§,this.§_-3F§,null,this.§_-OW§.§_-1P§,this.§_-b1§);
         _loc2_ = this.§_-Zx§;
         while(_loc2_)
         {
            _loc2_.§_-xk§ &= ~b2Body.§_-N2§;
            _loc2_ = _loc2_.§_-np§;
         }
         var _loc5_:b2Contact = this.§_-L3§;
         while(_loc5_)
         {
            _loc5_.§_-xk§ &= ~b2Contact.§_-N2§;
            _loc5_ = _loc5_.§_-np§;
         }
         var _loc6_:b2Joint = this.§_-Wy§;
         while(_loc6_)
         {
            _loc6_.§_-CQ§ = false;
            _loc6_ = _loc6_.§_-np§;
         }
         var _loc7_:int = this.§_-OF§;
         var _loc8_:Vector.<b2Body> = this.§_-u6§;
         var _loc9_:b2Body = this.§_-Zx§;
         while(_loc9_)
         {
            if(!(_loc9_.§_-xk§ & b2Body.§_-N2§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§_-B7§() == false))
               {
                  if(_loc9_.§_-Wx§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§_-XW§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§_-xk§ |= b2Body.§_-N2§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§_-Fe§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§_-Wx§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§_-L3§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§_-AG§.§_-xk§ & b2Contact.§_-N2§))
                              {
                                 if(!(_loc13_.§_-AG§.§_-Nn§() == true || _loc13_.§_-AG§.§_-WO§() == false || _loc13_.§_-AG§.§_-gC§() == false))
                                 {
                                    _loc4_.§_-kk§(_loc13_.§_-AG§);
                                    _loc13_.§_-AG§.§_-xk§ |= b2Contact.§_-N2§;
                                    if(!((_loc12_ = _loc13_.§_-uw§).§_-xk§ & b2Body.§_-N2§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-xk§ |= b2Body.§_-N2§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§_-PP§;
                           }
                           _loc14_ = _loc2_.§_-Wy§;
                           while(_loc14_)
                           {
                              if(_loc14_.§_-o0§.§_-CQ§ != true)
                              {
                                 if((_loc12_ = _loc14_.§_-uw§).§_-B7§() != false)
                                 {
                                    _loc4_.§_-Ow§(_loc14_.§_-o0§);
                                    _loc14_.§_-o0§.§_-CQ§ = true;
                                    if(!(_loc12_.§_-xk§ & b2Body.§_-N2§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-xk§ |= b2Body.§_-N2§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§_-PP§;
                           }
                        }
                     }
                     _loc4_.§_-TD§(param1,this.§_-ks§,this.§_-c6§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§_-OF§)
                     {
                        _loc2_ = _loc4_.§_-eu§[_loc11_];
                        if(_loc2_.§_-Wx§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§_-xk§ &= ~b2Body.§_-N2§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§_-np§;
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
         _loc2_ = this.§_-Zx§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§_-B7§() == false))
            {
               if(_loc2_.§_-Wx§() != b2Body.b2_staticBody)
               {
                  _loc2_.§_-DV§();
               }
            }
            _loc2_ = _loc2_.§_-np§;
         }
         this.§_-OW§.§_-Bk§();
      }
      
      b2internal function §_-Z3§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§_-vY§).§_-95§(this.§_-OF§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§_-OW§.§_-1P§,this.§_-b1§);
         var _loc10_:Vector.<b2Body> = §_-Cu§;
         _loc2_ = this.§_-Zx§;
         while(_loc2_)
         {
            _loc2_.§_-xk§ &= ~b2Body.§_-N2§;
            _loc2_.m_sweep.§_-QQ§ = 0;
            _loc2_ = _loc2_.§_-np§;
         }
         _loc11_ = this.§_-L3§;
         while(_loc11_)
         {
            _loc11_.§_-xk§ &= ~(b2Contact.§_-vi§ | b2Contact.§_-N2§);
            _loc11_ = _loc11_.§_-np§;
         }
         _loc8_ = this.§_-Wy§;
         while(_loc8_)
         {
            _loc8_.§_-CQ§ = false;
            _loc8_ = _loc8_.§_-np§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§_-L3§;
            while(_loc11_)
            {
               if(!(_loc11_.§_-Nn§() == true || _loc11_.§_-WO§() == false || _loc11_.§_-c-§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§_-xk§ & b2Contact.§_-vi§)
                  {
                     _loc19_ = _loc11_.§_-2j§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§_-lE§;
                     _loc4_ = _loc11_.§_-Qr§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§_-Wx§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§_-Wx§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr460:
                        _loc11_ = _loc11_.§_-np§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§_-QQ§;
                     if(_loc5_.m_sweep.§_-QQ§ < _loc6_.m_sweep.§_-QQ§)
                     {
                        _loc20_ = _loc6_.m_sweep.§_-QQ§;
                        _loc5_.m_sweep.§_-Cd§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§_-QQ§ < _loc5_.m_sweep.§_-QQ§)
                     {
                        _loc20_ = _loc5_.m_sweep.§_-QQ§;
                        _loc6_.m_sweep.§_-Cd§(_loc20_);
                     }
                     _loc19_ = _loc11_.§_-3X§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§_-2j§ = _loc19_;
                     _loc11_.§_-xk§ |= b2Contact.§_-vi§;
                     §§goto(addr460);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr460);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§_-lE§;
            _loc4_ = _loc12_.§_-Qr§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §_-GP§.Set(_loc5_.m_sweep);
            §_-AO§.Set(_loc6_.m_sweep);
            _loc5_.§_-Cd§(_loc13_);
            _loc6_.§_-Cd§(_loc13_);
            _loc12_.§_-Ht§(this.§_-OW§.§_-1P§);
            _loc12_.§_-xk§ &= ~b2Contact.§_-vi§;
            if(_loc12_.§_-Nn§() == true || _loc12_.§_-WO§() == false)
            {
               _loc5_.m_sweep.Set(§_-GP§);
               _loc6_.m_sweep.Set(§_-AO§);
               _loc5_.§_-I5§();
               _loc6_.§_-I5§();
            }
            else if(_loc12_.§_-gC§() != false)
            {
               if((_loc14_ = _loc5_).§_-Wx§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§_-XW§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§_-xk§ |= b2Body.§_-N2§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§_-Fe§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§_-Wx§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§_-L3§;
                     while(_loc7_)
                     {
                        if(_loc9_.§_-aG§ == _loc9_.§_-xh§)
                        {
                           break;
                        }
                        if(!(_loc7_.§_-AG§.§_-xk§ & b2Contact.§_-N2§))
                        {
                           if(!(_loc7_.§_-AG§.§_-Nn§() == true || _loc7_.§_-AG§.§_-WO§() == false || _loc7_.§_-AG§.§_-gC§() == false))
                           {
                              _loc9_.§_-kk§(_loc7_.§_-AG§);
                              _loc7_.§_-AG§.§_-xk§ |= b2Contact.§_-N2§;
                              if(!((_loc22_ = _loc7_.§_-uw§).§_-xk§ & b2Body.§_-N2§))
                              {
                                 if(_loc22_.§_-Wx§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§_-Cd§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§_-xk§ |= b2Body.§_-N2§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§_-PP§;
                     }
                     _loc21_ = _loc2_.§_-Wy§;
                     while(_loc21_)
                     {
                        if(_loc9_.§_-3F§ != _loc9_.§_-5Z§)
                        {
                           if(_loc21_.§_-o0§.§_-CQ§ != true)
                           {
                              if((_loc22_ = _loc21_.§_-uw§).§_-B7§() != false)
                              {
                                 _loc9_.§_-Ow§(_loc21_.§_-o0§);
                                 _loc21_.§_-o0§.§_-CQ§ = true;
                                 if(!(_loc22_.§_-xk§ & b2Body.§_-N2§))
                                 {
                                    if(_loc22_.§_-Wx§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§_-Cd§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§_-xk§ |= b2Body.§_-N2§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§_-PP§;
                     }
                  }
               }
               (_loc17_ = §_-vg§).§_-uU§ = false;
               _loc17_.§_-Qf§ = (1 - _loc13_) * param1.§_-Qf§;
               _loc17_.§_-Uz§ = 1 / _loc17_.§_-Qf§;
               _loc17_.§_-D§ = 0;
               _loc17_.§_-TU§ = param1.§_-TU§;
               _loc17_.§_-zg§ = param1.§_-zg§;
               _loc9_.§_-Z3§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-OF§)
               {
                  _loc2_ = _loc9_.§_-eu§[_loc18_];
                  _loc2_.§_-xk§ &= ~b2Body.§_-N2§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§_-Wx§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§_-DV§();
                        _loc7_ = _loc2_.§_-L3§;
                        while(_loc7_)
                        {
                           _loc7_.§_-AG§.§_-xk§ &= ~b2Contact.§_-vi§;
                           _loc7_ = _loc7_.§_-PP§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-aG§)
               {
                  _loc11_ = _loc9_.§_-7Q§[_loc18_];
                  _loc11_.§_-xk§ &= ~(b2Contact.§_-vi§ | b2Contact.§_-N2§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-3F§)
               {
                  (_loc8_ = _loc9_.§_-kt§[_loc18_]).§_-CQ§ = false;
                  _loc18_++;
               }
               this.§_-OW§.§_-Bk§();
            }
         }
      }
      
      b2internal function §_-9K§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§_-tM§();
         var _loc3_:b2Body = param1.§_-fu§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §_-sh§;
         switch(param1.§_-Ra§)
         {
            case b2Joint.§_-rD§:
               this.§_-32§.§_-ek§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§_-e3§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§_-dO§();
               _loc13_ = _loc11_.§_-9A§();
               this.§_-32§.§_-ek§(_loc12_,_loc8_,_loc10_);
               this.§_-32§.§_-ek§(_loc13_,_loc9_,_loc10_);
               this.§_-32§.§_-ek§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§_-qZ§:
               this.§_-32§.§_-ek§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§_-32§.§_-ek§(_loc6_,_loc8_,_loc10_);
               }
               this.§_-32§.§_-ek§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§_-32§.§_-ek§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §_-gK§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§_-Ra§)
         {
            case b2Shape.§_-Pk§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§_-av§(param2,_loc4_.§_-cE§);
               _loc6_ = _loc4_.§_-Cv§;
               _loc7_ = param2.R.col1;
               this.§_-32§.§_-hg§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§_-u-§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§_-5B§();
               _loc11_ = _loc9_.§_-xu§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§_-av§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§_-32§.§_-KL§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§_-ne§:
               _loc13_ = param1 as b2EdgeShape;
               this.§_-32§.§_-ek§(b2Math.§_-av§(param2,_loc13_.GetVertex1()),b2Math.§_-av§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

package §_-EH§
{
   import §_-9z§.*;
   import §_-Bt§.*;
   import §_-GC§.b2Controller;
   import §_-GC§.b2ControllerEdge;
   import §_-Nw§.*;
   import §_-Ox§.*;
   import §_-j6§.*;
   import §_-sU§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §_-YY§:b2Transform = new b2Transform();
      
      private static var §_-M4§:b2Sweep = new b2Sweep();
      
      private static var §_-M0§:b2Sweep = new b2Sweep();
      
      private static var §_-aY§:b2TimeStep = new b2TimeStep();
      
      private static var §_-3y§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §_-3Z§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §_-si§:Boolean;
      
      private static var §_-J§:Boolean;
      
      public static const §_-TG§:int = 1;
      
      public static const §_-YU§:int = 2;
       
      
      private var §_-pQ§:Vector.<b2Body>;
      
      b2internal var §_-QK§:int;
      
      b2internal var §_-Hh§:b2ContactManager;
      
      private var §_-La§:b2ContactSolver;
      
      private var §_-Tp§:b2Island;
      
      b2internal var §_-bX§:b2Body;
      
      private var §_-kc§:b2Joint;
      
      b2internal var §_-Al§:b2Contact;
      
      private var §_-39§:int;
      
      b2internal var §_-aX§:int;
      
      private var §_-HU§:int;
      
      private var §_-ne§:b2Controller;
      
      private var §_-Gc§:int;
      
      private var §_-X4§:b2Vec2;
      
      private var §_-0N§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §_-I2§:b2DestructionListener;
      
      private var §_-b8§:b2DebugDraw;
      
      private var §_-D-§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§_-pQ§ = new Vector.<b2Body>();
         this.§_-Hh§ = new b2ContactManager();
         this.§_-La§ = new b2ContactSolver();
         this.§_-Tp§ = new b2Island();
         super();
         this.§_-I2§ = null;
         this.§_-b8§ = null;
         this.§_-bX§ = null;
         this.§_-Al§ = null;
         this.§_-kc§ = null;
         this.§_-ne§ = null;
         this.§_-39§ = 0;
         this.§_-aX§ = 0;
         this.§_-HU§ = 0;
         this.§_-Gc§ = 0;
         §_-si§ = true;
         §_-J§ = true;
         this.§_-0N§ = param2;
         this.§_-X4§ = param1;
         this.§_-D-§ = 0;
         this.§_-Hh§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§_-kv§(_loc3_);
      }
      
      public function §_-Pf§(param1:b2DestructionListener) : void
      {
         this.§_-I2§ = param1;
      }
      
      public function §_-ZJ§(param1:b2ContactFilter) : void
      {
         this.§_-Hh§.§_-mB§ = param1;
      }
      
      public function §_-fB§(param1:b2ContactListener) : void
      {
         this.§_-Hh§.§_-oe§ = param1;
      }
      
      public function §_-LP§(param1:b2DebugDraw) : void
      {
         this.§_-b8§ = param1;
      }
      
      public function §_-Po§(param1:§_-vU§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§_-vU§ = this.§_-Hh§.§_-2x§;
         this.§_-Hh§.§_-2x§ = param1;
         var _loc3_:b2Body = this.§_-bX§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§_-WO§;
            while(_loc4_)
            {
               _loc4_.§_-8T§ = param1.§_-S3§(_loc2_.§_-nm§(_loc4_.§_-8T§),_loc4_);
               _loc4_ = _loc4_.§_-GH§;
            }
            _loc3_ = _loc3_.§_-GH§;
         }
      }
      
      public function §_-5t§() : void
      {
         this.§_-Hh§.§_-2x§.§_-5t§();
      }
      
      public function §_-iu§() : int
      {
         return this.§_-Hh§.§_-2x§.§_-iu§();
      }
      
      public function §_-kv§(param1:b2BodyDef) : b2Body
      {
         if(this.§_-Ro§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§_-3w§ = null;
         _loc2_.§_-GH§ = this.§_-bX§;
         if(this.§_-bX§)
         {
            this.§_-bX§.§_-3w§ = _loc2_;
         }
         this.§_-bX§ = _loc2_;
         ++this.§_-39§;
         return _loc2_;
      }
      
      public function §_-Fi§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§_-Ro§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§_-kc§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§_-3N§;
            if(this.§_-I2§)
            {
               this.§_-I2§.§_-rD§(_loc6_.§_-pW§);
            }
            this.§_-VV§(_loc6_.§_-pW§);
         }
         var _loc3_:b2ControllerEdge = param1.§_-ne§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§_-65§;
            _loc7_.§_-0A§.§_-9§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§_-Al§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§_-3N§;
            this.§_-Hh§.§else§(_loc8_.§_-CT§);
         }
         param1.§_-Al§ = null;
         var _loc5_:b2Fixture = param1.§_-WO§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§_-GH§;
            if(this.§_-I2§)
            {
               this.§_-I2§.§_-BZ§(_loc9_);
            }
            _loc9_.§_-r5§(this.§_-Hh§.§_-2x§);
            _loc9_.§else§();
         }
         param1.§_-WO§ = null;
         param1.§_-t7§ = 0;
         if(param1.§_-3w§)
         {
            param1.§_-3w§.§_-GH§ = param1.§_-GH§;
         }
         if(param1.§_-GH§)
         {
            param1.§_-GH§.§_-3w§ = param1.§_-3w§;
         }
         if(param1 == this.§_-bX§)
         {
            this.§_-bX§ = param1.§_-GH§;
         }
         --this.§_-39§;
      }
      
      public function §_-wT§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§_-1Z§(param1,null);
         _loc2_.§_-3w§ = null;
         _loc2_.§_-GH§ = this.§_-kc§;
         if(this.§_-kc§)
         {
            this.§_-kc§.§_-3w§ = _loc2_;
         }
         this.§_-kc§ = _loc2_;
         ++this.§_-HU§;
         _loc2_.§_-8Z§.§_-pW§ = _loc2_;
         _loc2_.§_-8Z§.§_-og§ = _loc2_.§_-qA§;
         _loc2_.§_-8Z§.§_-ZN§ = null;
         _loc2_.§_-8Z§.§_-3N§ = _loc2_.§_-e4§.§_-kc§;
         if(_loc2_.§_-e4§.§_-kc§)
         {
            _loc2_.§_-e4§.§_-kc§.§_-ZN§ = _loc2_.§_-8Z§;
         }
         _loc2_.§_-e4§.§_-kc§ = _loc2_.§_-8Z§;
         _loc2_.§_-2G§.§_-pW§ = _loc2_;
         _loc2_.§_-2G§.§_-og§ = _loc2_.§_-e4§;
         _loc2_.§_-2G§.§_-ZN§ = null;
         _loc2_.§_-2G§.§_-3N§ = _loc2_.§_-qA§.§_-kc§;
         if(_loc2_.§_-qA§.§_-kc§)
         {
            _loc2_.§_-qA§.§_-kc§.§_-ZN§ = _loc2_.§_-2G§;
         }
         _loc2_.§_-qA§.§_-kc§ = _loc2_.§_-2G§;
         var _loc3_:b2Body = param1.§_-lk§;
         var _loc4_:b2Body = param1.§_-OV§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§_-JW§();
            while(_loc5_)
            {
               if(_loc5_.§_-og§ == _loc3_)
               {
                  _loc5_.§_-CT§.§_-lp§();
               }
               _loc5_ = _loc5_.§_-3N§;
            }
         }
         return _loc2_;
      }
      
      public function §_-VV§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§_-Sh§;
         if(param1.§_-3w§)
         {
            param1.§_-3w§.§_-GH§ = param1.§_-GH§;
         }
         if(param1.§_-GH§)
         {
            param1.§_-GH§.§_-3w§ = param1.§_-3w§;
         }
         if(param1 == this.§_-kc§)
         {
            this.§_-kc§ = param1.§_-GH§;
         }
         var _loc3_:b2Body = param1.§_-e4§;
         var _loc4_:b2Body = param1.§_-qA§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§_-8Z§.§_-ZN§)
         {
            param1.§_-8Z§.§_-ZN§.§_-3N§ = param1.§_-8Z§.§_-3N§;
         }
         if(param1.§_-8Z§.§_-3N§)
         {
            param1.§_-8Z§.§_-3N§.§_-ZN§ = param1.§_-8Z§.§_-ZN§;
         }
         if(param1.§_-8Z§ == _loc3_.§_-kc§)
         {
            _loc3_.§_-kc§ = param1.§_-8Z§.§_-3N§;
         }
         param1.§_-8Z§.§_-ZN§ = null;
         param1.§_-8Z§.§_-3N§ = null;
         if(param1.§_-2G§.§_-ZN§)
         {
            param1.§_-2G§.§_-ZN§.§_-3N§ = param1.§_-2G§.§_-3N§;
         }
         if(param1.§_-2G§.§_-3N§)
         {
            param1.§_-2G§.§_-3N§.§_-ZN§ = param1.§_-2G§.§_-ZN§;
         }
         if(param1.§_-2G§ == _loc4_.§_-kc§)
         {
            _loc4_.§_-kc§ = param1.§_-2G§.§_-3N§;
         }
         param1.§_-2G§.§_-ZN§ = null;
         param1.§_-2G§.§_-3N§ = null;
         b2Joint.§else§(param1,null);
         --this.§_-HU§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§_-JW§();
            while(_loc5_)
            {
               if(_loc5_.§_-og§ == _loc3_)
               {
                  _loc5_.§_-CT§.§_-lp§();
               }
               _loc5_ = _loc5_.§_-3N§;
            }
         }
      }
      
      public function §_-ib§(param1:b2Controller) : b2Controller
      {
         param1.§_-GH§ = this.§_-ne§;
         param1.§_-3w§ = null;
         this.§_-ne§ = param1;
         param1.m_world = this;
         ++this.§_-Gc§;
         return param1;
      }
      
      public function §_-1X§(param1:b2Controller) : void
      {
         if(param1.§_-3w§)
         {
            param1.§_-3w§.§_-GH§ = param1.§_-GH§;
         }
         if(param1.§_-GH§)
         {
            param1.§_-GH§.§_-3w§ = param1.§_-3w§;
         }
         if(this.§_-ne§ == param1)
         {
            this.§_-ne§ = param1.§_-GH§;
         }
         --this.§_-Gc§;
      }
      
      public function §_-1F§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§_-GH§ = this.§_-ne§;
         param1.§_-3w§ = null;
         if(this.§_-ne§)
         {
            this.§_-ne§.§_-3w§ = param1;
         }
         this.§_-ne§ = param1;
         ++this.§_-Gc§;
         param1.m_world = this;
         return param1;
      }
      
      public function §_-O2§(param1:b2Controller) : void
      {
         param1.§_-SQ§();
         if(param1.§_-GH§)
         {
            param1.§_-GH§.§_-3w§ = param1.§_-3w§;
         }
         if(param1.§_-3w§)
         {
            param1.§_-3w§.§_-GH§ = param1.§_-GH§;
         }
         if(param1 == this.§_-ne§)
         {
            this.§_-ne§ = param1.§_-GH§;
         }
         --this.§_-Gc§;
      }
      
      public function §_-Lx§(param1:Boolean) : void
      {
         §_-si§ = param1;
      }
      
      public function §_-KW§(param1:Boolean) : void
      {
         §_-J§ = param1;
      }
      
      public function §_-g0§() : int
      {
         return this.§_-39§;
      }
      
      public function §_-Bg§() : int
      {
         return this.§_-HU§;
      }
      
      public function §_-Fj§() : int
      {
         return this.§_-aX§;
      }
      
      public function §_-wx§(param1:b2Vec2) : void
      {
         this.§_-X4§ = param1;
      }
      
      public function §_-Si§() : b2Vec2
      {
         return this.§_-X4§;
      }
      
      public function §_-xK§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §_-23§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§_-QK§ & §_-TG§)
         {
            this.§_-Hh§.§_-sl§();
            this.§_-QK§ &= ~§_-TG§;
         }
         this.§_-QK§ |= §_-YU§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§_-pG§ = param1;
         _loc4_.§_-97§ = param2;
         _loc4_.§_-cc§ = param3;
         if(param1 > 0)
         {
            _loc4_.§ else§ = 1 / param1;
         }
         else
         {
            _loc4_.§ else§ = 0;
         }
         _loc4_.§_-Xs§ = this.§_-D-§ * param1;
         _loc4_.§_-lZ§ = §_-si§;
         this.§_-Hh§.§_-Qr§();
         if(_loc4_.§_-pG§ > 0)
         {
            this.§_-5z§(_loc4_);
         }
         if(§_-J§ && _loc4_.§_-pG§ > 0)
         {
            this.§_-aa§(_loc4_);
         }
         if(_loc4_.§_-pG§ > 0)
         {
            this.§_-D-§ = _loc4_.§ else§;
         }
         this.§_-QK§ &= ~§_-YU§;
      }
      
      public function §_-Z5§() : void
      {
         var _loc1_:b2Body = this.§_-bX§;
         while(_loc1_)
         {
            _loc1_.§_-6Z§.§_-TJ§();
            _loc1_.§_-91§ = 0;
            _loc1_ = _loc1_.§_-GH§;
         }
      }
      
      public function §_-rT§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§_-vU§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§_-b8§ == null)
         {
            return;
         }
         this.§_-b8§.§_-uR§.graphics.clear();
         var _loc1_:uint = this.§_-b8§.§_-Ne§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§_-fq§)
         {
            _loc3_ = this.§_-bX§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§_-Hx§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§_-YL§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§_-6x§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-7L§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§_-6x§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-7L§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§_-6x§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§_-6x§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§_-6x§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§_-GH§;
               }
               _loc3_ = _loc3_.§_-GH§;
            }
         }
         if(_loc1_ & b2DebugDraw.§in§)
         {
            _loc6_ = this.§_-kc§;
            while(_loc6_)
            {
               this.§_-jK§(_loc6_);
               _loc6_ = _loc6_.§_-GH§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-F6§)
         {
            _loc16_ = this.§_-ne§;
            while(_loc16_)
            {
               _loc16_.§_-52§(this.§_-b8§);
               _loc16_ = _loc16_.§_-GH§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-D§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§_-Hh§.§_-Al§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§_-uy§();
               _loc19_ = _loc17_.§_-WC§();
               _loc20_ = _loc18_.§_-jF§().§_-3f§();
               _loc21_ = _loc19_.§_-jF§().§_-3f§();
               this.§_-b8§.§_-mo§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§_-nc§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-Pu§)
         {
            _loc7_ = this.§_-Hh§.§_-2x§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§_-bX§;
            while(_loc3_)
            {
               if(_loc3_.§_-YL§() != false)
               {
                  _loc4_ = _loc3_.§_-Hx§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§_-nm§(_loc4_.§_-8T§);
                     _loc14_[0].Set(_loc22_.§_-9P§.x,_loc22_.§_-9P§.y);
                     _loc14_[1].Set(_loc22_.§_-5c§.x,_loc22_.§_-9P§.y);
                     _loc14_[2].Set(_loc22_.§_-5c§.x,_loc22_.§_-5c§.y);
                     _loc14_[3].Set(_loc22_.§_-9P§.x,_loc22_.§_-5c§.y);
                     this.§_-b8§.§_-1z§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§_-nc§();
                  }
               }
               _loc3_ = _loc3_.§_-nc§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-as§)
         {
            _loc3_ = this.§_-bX§;
            while(_loc3_)
            {
               (_loc11_ = §_-YY§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§_-s8§();
               this.§_-b8§.§_-go§(_loc11_);
               _loc3_ = _loc3_.§_-GH§;
            }
         }
      }
      
      public function §_-00§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§_-vU§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§_-Hh§.§_-2x§;
         broadPhase.§_-sP§(WorldQueryWrapper,aabb);
      }
      
      public function §_-JO§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§_-vU§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§_-4S§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§return§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§_-PV§();
         }
         broadPhase = this.§_-Hh§.§_-2x§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§_-sP§(WorldQueryWrapper,aabb);
      }
      
      public function §function§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§_-vU§ = null;
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
         broadPhase = this.§_-Hh§.§_-2x§;
         var aabb:b2AABB = new b2AABB();
         aabb.§_-9P§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§_-5c§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§_-sP§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§_-vU§ = null;
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
            return param1.§_-1o§;
         };
         broadPhase = this.§_-Hh§.§_-2x§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §_-Jh§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §_-T7§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §_-FD§() : b2Body
      {
         return this.§_-bX§;
      }
      
      public function §_-YM§() : b2Joint
      {
         return this.§_-kc§;
      }
      
      public function §_-JW§() : b2Contact
      {
         return this.§_-Al§;
      }
      
      public function §_-Ro§() : Boolean
      {
         return (this.§_-QK§ & §_-YU§) > 0;
      }
      
      b2internal function §_-5z§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§_-ne§;
         while(_loc3_)
         {
            _loc3_.§_-23§(param1);
            _loc3_ = _loc3_.§_-GH§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§_-Tp§).§_-fn§(this.§_-39§,this.§_-aX§,this.§_-HU§,null,this.§_-Hh§.§_-oe§,this.§_-La§);
         _loc2_ = this.§_-bX§;
         while(_loc2_)
         {
            _loc2_.§_-QK§ &= ~b2Body.§_-7w§;
            _loc2_ = _loc2_.§_-GH§;
         }
         var _loc5_:b2Contact = this.§_-Al§;
         while(_loc5_)
         {
            _loc5_.§_-QK§ &= ~b2Contact.§_-7w§;
            _loc5_ = _loc5_.§_-GH§;
         }
         var _loc6_:b2Joint = this.§_-kc§;
         while(_loc6_)
         {
            _loc6_.§_-ly§ = false;
            _loc6_ = _loc6_.§_-GH§;
         }
         var _loc7_:int = this.§_-39§;
         var _loc8_:Vector.<b2Body> = this.§_-pQ§;
         var _loc9_:b2Body = this.§_-bX§;
         while(_loc9_)
         {
            if(!(_loc9_.§_-QK§ & b2Body.§_-7w§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§_-YL§() == false))
               {
                  if(_loc9_.§_-7L§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§_-SQ§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§_-QK§ |= b2Body.§_-7w§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§_-EV§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§_-7L§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§_-Al§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§_-CT§.§_-QK§ & b2Contact.§_-7w§))
                              {
                                 if(!(_loc13_.§_-CT§.§_-Jr§() == true || _loc13_.§_-CT§.§_-Zv§() == false || _loc13_.§_-CT§.§_-3n§() == false))
                                 {
                                    _loc4_.§_-1A§(_loc13_.§_-CT§);
                                    _loc13_.§_-CT§.§_-QK§ |= b2Contact.§_-7w§;
                                    if(!((_loc12_ = _loc13_.§_-og§).§_-QK§ & b2Body.§_-7w§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-QK§ |= b2Body.§_-7w§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§_-3N§;
                           }
                           _loc14_ = _loc2_.§_-kc§;
                           while(_loc14_)
                           {
                              if(_loc14_.§_-pW§.§_-ly§ != true)
                              {
                                 if((_loc12_ = _loc14_.§_-og§).§_-YL§() != false)
                                 {
                                    _loc4_.§_-Y3§(_loc14_.§_-pW§);
                                    _loc14_.§_-pW§.§_-ly§ = true;
                                    if(!(_loc12_.§_-QK§ & b2Body.§_-7w§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-QK§ |= b2Body.§_-7w§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§_-3N§;
                           }
                        }
                     }
                     _loc4_.§_-5z§(param1,this.§_-X4§,this.§_-0N§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§_-39§)
                     {
                        _loc2_ = _loc4_.§_-vI§[_loc11_];
                        if(_loc2_.§_-7L§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§_-QK§ &= ~b2Body.§_-7w§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§_-GH§;
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
         _loc2_ = this.§_-bX§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§_-YL§() == false))
            {
               if(_loc2_.§_-7L§() != b2Body.b2_staticBody)
               {
                  _loc2_.§_-q§();
               }
            }
            _loc2_ = _loc2_.§_-GH§;
         }
         this.§_-Hh§.§_-sl§();
      }
      
      b2internal function §_-aa§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§_-Tp§).§_-fn§(this.§_-39§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§_-Hh§.§_-oe§,this.§_-La§);
         var _loc10_:Vector.<b2Body> = §_-3y§;
         _loc2_ = this.§_-bX§;
         while(_loc2_)
         {
            _loc2_.§_-QK§ &= ~b2Body.§_-7w§;
            _loc2_.m_sweep.§_-Mv§ = 0;
            _loc2_ = _loc2_.§_-GH§;
         }
         _loc11_ = this.§_-Al§;
         while(_loc11_)
         {
            _loc11_.§_-QK§ &= ~(b2Contact.§_-wc§ | b2Contact.§_-7w§);
            _loc11_ = _loc11_.§_-GH§;
         }
         _loc8_ = this.§_-kc§;
         while(_loc8_)
         {
            _loc8_.§_-ly§ = false;
            _loc8_ = _loc8_.§_-GH§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§_-Al§;
            while(_loc11_)
            {
               if(!(_loc11_.§_-Jr§() == true || _loc11_.§_-Zv§() == false || _loc11_.§_-jZ§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§_-QK§ & b2Contact.§_-wc§)
                  {
                     _loc19_ = _loc11_.§_-6Y§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§_-om§;
                     _loc4_ = _loc11_.§_-X8§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§_-7L§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§_-7L§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr459:
                        _loc11_ = _loc11_.§_-GH§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§_-Mv§;
                     if(_loc5_.m_sweep.§_-Mv§ < _loc6_.m_sweep.§_-Mv§)
                     {
                        _loc20_ = _loc6_.m_sweep.§_-Mv§;
                        _loc5_.m_sweep.§_-qB§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§_-Mv§ < _loc5_.m_sweep.§_-Mv§)
                     {
                        _loc20_ = _loc5_.m_sweep.§_-Mv§;
                        _loc6_.m_sweep.§_-qB§(_loc20_);
                     }
                     _loc19_ = _loc11_.§_-GW§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§_-6Y§ = _loc19_;
                     _loc11_.§_-QK§ |= b2Contact.§_-wc§;
                     §§goto(addr459);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr459);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§_-om§;
            _loc4_ = _loc12_.§_-X8§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §_-M4§.Set(_loc5_.m_sweep);
            §_-M0§.Set(_loc6_.m_sweep);
            _loc5_.§_-qB§(_loc13_);
            _loc6_.§_-qB§(_loc13_);
            _loc12_.§_-3c§(this.§_-Hh§.§_-oe§);
            _loc12_.§_-QK§ &= ~b2Contact.§_-wc§;
            if(_loc12_.§_-Jr§() == true || _loc12_.§_-Zv§() == false)
            {
               _loc5_.m_sweep.Set(§_-M4§);
               _loc6_.m_sweep.Set(§_-M0§);
               _loc5_.§_-dS§();
               _loc6_.§_-dS§();
            }
            else if(_loc12_.§_-3n§() != false)
            {
               if((_loc14_ = _loc5_).§_-7L§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§_-SQ§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§_-QK§ |= b2Body.§_-7w§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§_-EV§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§_-7L§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§_-Al§;
                     while(_loc7_)
                     {
                        if(_loc9_.§_-aX§ == _loc9_.§_-d2§)
                        {
                           break;
                        }
                        if(!(_loc7_.§_-CT§.§_-QK§ & b2Contact.§_-7w§))
                        {
                           if(!(_loc7_.§_-CT§.§_-Jr§() == true || _loc7_.§_-CT§.§_-Zv§() == false || _loc7_.§_-CT§.§_-3n§() == false))
                           {
                              _loc9_.§_-1A§(_loc7_.§_-CT§);
                              _loc7_.§_-CT§.§_-QK§ |= b2Contact.§_-7w§;
                              if(!((_loc22_ = _loc7_.§_-og§).§_-QK§ & b2Body.§_-7w§))
                              {
                                 if(_loc22_.§_-7L§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§_-qB§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§_-QK§ |= b2Body.§_-7w§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§_-3N§;
                     }
                     _loc21_ = _loc2_.§_-kc§;
                     while(_loc21_)
                     {
                        if(_loc9_.§_-HU§ != _loc9_.§_-4Z§)
                        {
                           if(_loc21_.§_-pW§.§_-ly§ != true)
                           {
                              if((_loc22_ = _loc21_.§_-og§).§_-YL§() != false)
                              {
                                 _loc9_.§_-Y3§(_loc21_.§_-pW§);
                                 _loc21_.§_-pW§.§_-ly§ = true;
                                 if(!(_loc22_.§_-QK§ & b2Body.§_-7w§))
                                 {
                                    if(_loc22_.§_-7L§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§_-qB§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§_-QK§ |= b2Body.§_-7w§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§_-3N§;
                     }
                  }
               }
               (_loc17_ = §_-aY§).§_-lZ§ = false;
               _loc17_.§_-pG§ = (1 - _loc13_) * param1.§_-pG§;
               _loc17_.§ else§ = 1 / _loc17_.§_-pG§;
               _loc17_.§_-Xs§ = 0;
               _loc17_.§_-97§ = param1.§_-97§;
               _loc17_.§_-cc§ = param1.§_-cc§;
               _loc9_.§_-aa§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-39§)
               {
                  _loc2_ = _loc9_.§_-vI§[_loc18_];
                  _loc2_.§_-QK§ &= ~b2Body.§_-7w§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§_-7L§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§_-q§();
                        _loc7_ = _loc2_.§_-Al§;
                        while(_loc7_)
                        {
                           _loc7_.§_-CT§.§_-QK§ &= ~b2Contact.§_-wc§;
                           _loc7_ = _loc7_.§_-3N§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-aX§)
               {
                  _loc11_ = _loc9_.§_-6G§[_loc18_];
                  _loc11_.§_-QK§ &= ~(b2Contact.§_-wc§ | b2Contact.§_-7w§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-HU§)
               {
                  (_loc8_ = _loc9_.§_-N1§[_loc18_]).§_-ly§ = false;
                  _loc18_++;
               }
               this.§_-Hh§.§_-sl§();
            }
         }
      }
      
      b2internal function §_-jK§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§_-Kk§();
         var _loc3_:b2Body = param1.§_-pc§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §_-3Z§;
         switch(param1.§_-g1§)
         {
            case b2Joint.§_-Eu§:
               this.§_-b8§.§_-mo§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§_-5X§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§_-ie§();
               _loc13_ = _loc11_.§_-O9§();
               this.§_-b8§.§_-mo§(_loc12_,_loc8_,_loc10_);
               this.§_-b8§.§_-mo§(_loc13_,_loc9_,_loc10_);
               this.§_-b8§.§_-mo§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§_-DQ§:
               this.§_-b8§.§_-mo§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§_-b8§.§_-mo§(_loc6_,_loc8_,_loc10_);
               }
               this.§_-b8§.§_-mo§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§_-b8§.§_-mo§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §_-6x§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§_-g1§)
         {
            case b2Shape.§_-1M§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§_-sF§(param2,_loc4_.§_-c1§);
               _loc6_ = _loc4_.§_-uB§;
               _loc7_ = param2.R.col1;
               this.§_-b8§.§_-Qs§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§_-Tn§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§_-Kn§();
               _loc11_ = _loc9_.§_-la§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§_-sF§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§_-b8§.§_-or§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§_-x5§:
               _loc13_ = param1 as b2EdgeShape;
               this.§_-b8§.§_-mo§(b2Math.§_-sF§(param2,_loc13_.GetVertex1()),b2Math.§_-sF§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

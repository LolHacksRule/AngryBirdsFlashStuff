package §try§
{
   import §_-b4§.*;
   import §_-cG§.*;
   import §_-cP§.*;
   import §_-lH§.b2Controller;
   import §_-lH§.b2ControllerEdge;
   import §_-yI§.*;
   import §const§.*;
   import §with§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §_-ig§:b2Transform = new b2Transform();
      
      private static var §_-B6§:b2Sweep = new b2Sweep();
      
      private static var §_-0-a§:b2Sweep = new b2Sweep();
      
      private static var §_-8v§:b2TimeStep = new b2TimeStep();
      
      private static var §_-RK§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §_-d8§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §_-87§:Boolean;
      
      private static var §_-EQ§:Boolean;
      
      public static const §_-B9§:int = 1;
      
      public static const §_-f5§:int = 2;
       
      
      private var §_-qo§:Vector.<b2Body>;
      
      b2internal var §_-L9§:int;
      
      b2internal var §_-0b§:b2ContactManager;
      
      private var §_-Sk§:b2ContactSolver;
      
      private var §_-oQ§:b2Island;
      
      b2internal var §_-dC§:b2Body;
      
      private var §_-o3§:b2Joint;
      
      b2internal var §_-vp§:b2Contact;
      
      private var §_-Is§:int;
      
      b2internal var §_-V5§:int;
      
      private var §_-0-1§:int;
      
      private var §_-KT§:b2Controller;
      
      private var §_-5T§:int;
      
      private var §_-EK§:b2Vec2;
      
      private var §_-UE§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §_-Ym§:b2DestructionListener;
      
      private var §_-Qs§:b2DebugDraw;
      
      private var §_-Hr§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§_-qo§ = new Vector.<b2Body>();
         this.§_-0b§ = new b2ContactManager();
         this.§_-Sk§ = new b2ContactSolver();
         this.§_-oQ§ = new b2Island();
         super();
         this.§_-Ym§ = null;
         this.§_-Qs§ = null;
         this.§_-dC§ = null;
         this.§_-vp§ = null;
         this.§_-o3§ = null;
         this.§_-KT§ = null;
         this.§_-Is§ = 0;
         this.§_-V5§ = 0;
         this.§_-0-1§ = 0;
         this.§_-5T§ = 0;
         §_-87§ = true;
         §_-EQ§ = true;
         this.§_-UE§ = param2;
         this.§_-EK§ = param1;
         this.§_-Hr§ = 0;
         this.§_-0b§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§_-qw§(_loc3_);
      }
      
      public function §_-0-l§(param1:b2DestructionListener) : void
      {
         this.§_-Ym§ = param1;
      }
      
      public function §_-DJ§(param1:b2ContactFilter) : void
      {
         this.§_-0b§.§_-Kq§ = param1;
      }
      
      public function §_-ew§(param1:b2ContactListener) : void
      {
         this.§_-0b§.§_-2z§ = param1;
      }
      
      public function §_-gz§(param1:b2DebugDraw) : void
      {
         this.§_-Qs§ = param1;
      }
      
      public function §_-cA§(param1:§_-2G§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§_-2G§ = this.§_-0b§.§_-3t§;
         this.§_-0b§.§_-3t§ = param1;
         var _loc3_:b2Body = this.§_-dC§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§_-I3§;
            while(_loc4_)
            {
               _loc4_.§_-j8§ = param1.§_-Kb§(_loc2_.§_-Ux§(_loc4_.§_-j8§),_loc4_);
               _loc4_ = _loc4_.§_-QK§;
            }
            _loc3_ = _loc3_.§_-QK§;
         }
      }
      
      public function §_-2C§() : void
      {
         this.§_-0b§.§_-3t§.§_-2C§();
      }
      
      public function §_-MQ§() : int
      {
         return this.§_-0b§.§_-3t§.§_-MQ§();
      }
      
      public function §_-qw§(param1:b2BodyDef) : b2Body
      {
         if(this.§_-Qb§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§_-o2§ = null;
         _loc2_.§_-QK§ = this.§_-dC§;
         if(this.§_-dC§)
         {
            this.§_-dC§.§_-o2§ = _loc2_;
         }
         this.§_-dC§ = _loc2_;
         ++this.§_-Is§;
         return _loc2_;
      }
      
      public function §_-rH§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§_-Qb§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§_-o3§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§_-TE§;
            if(this.§_-Ym§)
            {
               this.§_-Ym§.§_-91§(_loc6_.§_-8J§);
            }
            this.§_-Yb§(_loc6_.§_-8J§);
         }
         var _loc3_:b2ControllerEdge = param1.§_-KT§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§_-pP§;
            _loc7_.§_-Og§.§_-kU§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§_-vp§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§_-TE§;
            this.§_-0b§.§_-y3§(_loc8_.§_-3P§);
         }
         param1.§_-vp§ = null;
         var _loc5_:b2Fixture = param1.§_-I3§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§_-QK§;
            if(this.§_-Ym§)
            {
               this.§_-Ym§.§_-UV§(_loc9_);
            }
            _loc9_.§_-ht§(this.§_-0b§.§_-3t§);
            _loc9_.§_-y3§();
         }
         param1.§_-I3§ = null;
         param1.§_-MY§ = 0;
         if(param1.§_-o2§)
         {
            param1.§_-o2§.§_-QK§ = param1.§_-QK§;
         }
         if(param1.§_-QK§)
         {
            param1.§_-QK§.§_-o2§ = param1.§_-o2§;
         }
         if(param1 == this.§_-dC§)
         {
            this.§_-dC§ = param1.§_-QK§;
         }
         --this.§_-Is§;
      }
      
      public function §_-So§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§_-JJ§(param1,null);
         _loc2_.§_-o2§ = null;
         _loc2_.§_-QK§ = this.§_-o3§;
         if(this.§_-o3§)
         {
            this.§_-o3§.§_-o2§ = _loc2_;
         }
         this.§_-o3§ = _loc2_;
         ++this.§_-0-1§;
         _loc2_.§_-UP§.§_-8J§ = _loc2_;
         _loc2_.§_-UP§.§_-u9§ = _loc2_.§_-RO§;
         _loc2_.§_-UP§.§_-0-V§ = null;
         _loc2_.§_-UP§.§_-TE§ = _loc2_.§_-Jb§.§_-o3§;
         if(_loc2_.§_-Jb§.§_-o3§)
         {
            _loc2_.§_-Jb§.§_-o3§.§_-0-V§ = _loc2_.§_-UP§;
         }
         _loc2_.§_-Jb§.§_-o3§ = _loc2_.§_-UP§;
         _loc2_.§_-2q§.§_-8J§ = _loc2_;
         _loc2_.§_-2q§.§_-u9§ = _loc2_.§_-Jb§;
         _loc2_.§_-2q§.§_-0-V§ = null;
         _loc2_.§_-2q§.§_-TE§ = _loc2_.§_-RO§.§_-o3§;
         if(_loc2_.§_-RO§.§_-o3§)
         {
            _loc2_.§_-RO§.§_-o3§.§_-0-V§ = _loc2_.§_-2q§;
         }
         _loc2_.§_-RO§.§_-o3§ = _loc2_.§_-2q§;
         var _loc3_:b2Body = param1.§_-6a§;
         var _loc4_:b2Body = param1.§_-95§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§_-KS§();
            while(_loc5_)
            {
               if(_loc5_.§_-u9§ == _loc3_)
               {
                  _loc5_.§_-3P§.§_-nM§();
               }
               _loc5_ = _loc5_.§_-TE§;
            }
         }
         return _loc2_;
      }
      
      public function §_-Yb§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§_-yj§;
         if(param1.§_-o2§)
         {
            param1.§_-o2§.§_-QK§ = param1.§_-QK§;
         }
         if(param1.§_-QK§)
         {
            param1.§_-QK§.§_-o2§ = param1.§_-o2§;
         }
         if(param1 == this.§_-o3§)
         {
            this.§_-o3§ = param1.§_-QK§;
         }
         var _loc3_:b2Body = param1.§_-Jb§;
         var _loc4_:b2Body = param1.§_-RO§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§_-UP§.§_-0-V§)
         {
            param1.§_-UP§.§_-0-V§.§_-TE§ = param1.§_-UP§.§_-TE§;
         }
         if(param1.§_-UP§.§_-TE§)
         {
            param1.§_-UP§.§_-TE§.§_-0-V§ = param1.§_-UP§.§_-0-V§;
         }
         if(param1.§_-UP§ == _loc3_.§_-o3§)
         {
            _loc3_.§_-o3§ = param1.§_-UP§.§_-TE§;
         }
         param1.§_-UP§.§_-0-V§ = null;
         param1.§_-UP§.§_-TE§ = null;
         if(param1.§_-2q§.§_-0-V§)
         {
            param1.§_-2q§.§_-0-V§.§_-TE§ = param1.§_-2q§.§_-TE§;
         }
         if(param1.§_-2q§.§_-TE§)
         {
            param1.§_-2q§.§_-TE§.§_-0-V§ = param1.§_-2q§.§_-0-V§;
         }
         if(param1.§_-2q§ == _loc4_.§_-o3§)
         {
            _loc4_.§_-o3§ = param1.§_-2q§.§_-TE§;
         }
         param1.§_-2q§.§_-0-V§ = null;
         param1.§_-2q§.§_-TE§ = null;
         b2Joint.§_-y3§(param1,null);
         --this.§_-0-1§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§_-KS§();
            while(_loc5_)
            {
               if(_loc5_.§_-u9§ == _loc3_)
               {
                  _loc5_.§_-3P§.§_-nM§();
               }
               _loc5_ = _loc5_.§_-TE§;
            }
         }
      }
      
      public function §_-F8§(param1:b2Controller) : b2Controller
      {
         param1.§_-QK§ = this.§_-KT§;
         param1.§_-o2§ = null;
         this.§_-KT§ = param1;
         param1.m_world = this;
         ++this.§_-5T§;
         return param1;
      }
      
      public function §_-Bb§(param1:b2Controller) : void
      {
         if(param1.§_-o2§)
         {
            param1.§_-o2§.§_-QK§ = param1.§_-QK§;
         }
         if(param1.§_-QK§)
         {
            param1.§_-QK§.§_-o2§ = param1.§_-o2§;
         }
         if(this.§_-KT§ == param1)
         {
            this.§_-KT§ = param1.§_-QK§;
         }
         --this.§_-5T§;
      }
      
      public function §_-nS§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§_-QK§ = this.§_-KT§;
         param1.§_-o2§ = null;
         if(this.§_-KT§)
         {
            this.§_-KT§.§_-o2§ = param1;
         }
         this.§_-KT§ = param1;
         ++this.§_-5T§;
         param1.m_world = this;
         return param1;
      }
      
      public function §_-K7§(param1:b2Controller) : void
      {
         param1.§_-Xb§();
         if(param1.§_-QK§)
         {
            param1.§_-QK§.§_-o2§ = param1.§_-o2§;
         }
         if(param1.§_-o2§)
         {
            param1.§_-o2§.§_-QK§ = param1.§_-QK§;
         }
         if(param1 == this.§_-KT§)
         {
            this.§_-KT§ = param1.§_-QK§;
         }
         --this.§_-5T§;
      }
      
      public function §_-QL§(param1:Boolean) : void
      {
         §_-87§ = param1;
      }
      
      public function §_-pr§(param1:Boolean) : void
      {
         §_-EQ§ = param1;
      }
      
      public function §_-nu§() : int
      {
         return this.§_-Is§;
      }
      
      public function §_-TR§() : int
      {
         return this.§_-0-1§;
      }
      
      public function §_-52§() : int
      {
         return this.§_-V5§;
      }
      
      public function §_-Vi§(param1:b2Vec2) : void
      {
         this.§_-EK§ = param1;
      }
      
      public function §_-u6§() : b2Vec2
      {
         return this.§_-EK§;
      }
      
      public function §_-v4§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §_-bY§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§_-L9§ & §_-B9§)
         {
            this.§_-0b§.§_-Q7§();
            this.§_-L9§ &= ~§_-B9§;
         }
         this.§_-L9§ |= §_-f5§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§_-ec§ = param1;
         _loc4_.§_-8s§ = param2;
         _loc4_.§_-1e§ = param3;
         if(param1 > 0)
         {
            _loc4_.§_-uP§ = 1 / param1;
         }
         else
         {
            _loc4_.§_-uP§ = 0;
         }
         _loc4_.§_-Mu§ = this.§_-Hr§ * param1;
         _loc4_.§_-0X§ = §_-87§;
         this.§_-0b§.§_-0-p§();
         if(_loc4_.§_-ec§ > 0)
         {
            this.§_-xM§(_loc4_);
         }
         if(§_-EQ§ && _loc4_.§_-ec§ > 0)
         {
            this.§_-Lt§(_loc4_);
         }
         if(_loc4_.§_-ec§ > 0)
         {
            this.§_-Hr§ = _loc4_.§_-uP§;
         }
         this.§_-L9§ &= ~§_-f5§;
      }
      
      public function §_-rJ§() : void
      {
         var _loc1_:b2Body = this.§_-dC§;
         while(_loc1_)
         {
            _loc1_.§_-fj§.§_-WO§();
            _loc1_.§_-U5§ = 0;
            _loc1_ = _loc1_.§_-QK§;
         }
      }
      
      public function §_-mU§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§_-2G§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§_-Qs§ == null)
         {
            return;
         }
         this.§_-Qs§.§_-iN§.graphics.clear();
         var _loc1_:uint = this.§_-Qs§.§_-eC§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§_-1z§)
         {
            _loc3_ = this.§_-dC§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§_-0-b§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§_-Bw§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§if §(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-sl§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§if §(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-sl§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§if §(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§if §(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§if §(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§_-QK§;
               }
               _loc3_ = _loc3_.§_-QK§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-Le§)
         {
            _loc6_ = this.§_-o3§;
            while(_loc6_)
            {
               this.§_-R9§(_loc6_);
               _loc6_ = _loc6_.§_-QK§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-qB§)
         {
            _loc16_ = this.§_-KT§;
            while(_loc16_)
            {
               _loc16_.§_-GC§(this.§_-Qs§);
               _loc16_ = _loc16_.§_-QK§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-20§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§_-0b§.§_-vp§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§_-79§();
               _loc19_ = _loc17_.§_-mq§();
               _loc20_ = _loc18_.§import§().§_-fb§();
               _loc21_ = _loc19_.§import§().§_-fb§();
               this.§_-Qs§.§_-oE§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§_-go§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-Hj§)
         {
            _loc7_ = this.§_-0b§.§_-3t§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§_-dC§;
            while(_loc3_)
            {
               if(_loc3_.§_-Bw§() != false)
               {
                  _loc4_ = _loc3_.§_-0-b§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§_-Ux§(_loc4_.§_-j8§);
                     _loc14_[0].Set(_loc22_.§_-fA§.x,_loc22_.§_-fA§.y);
                     _loc14_[1].Set(_loc22_.§_-WM§.x,_loc22_.§_-fA§.y);
                     _loc14_[2].Set(_loc22_.§_-WM§.x,_loc22_.§_-WM§.y);
                     _loc14_[3].Set(_loc22_.§_-fA§.x,_loc22_.§_-WM§.y);
                     this.§_-Qs§.§_-Ae§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§_-go§();
                  }
               }
               _loc3_ = _loc3_.§_-go§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-wa§)
         {
            _loc3_ = this.§_-dC§;
            while(_loc3_)
            {
               (_loc11_ = §_-ig§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§_-t8§();
               this.§_-Qs§.§_-Mo§(_loc11_);
               _loc3_ = _loc3_.§_-QK§;
            }
         }
      }
      
      public function §_-F0§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§_-2G§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§_-0b§.§_-3t§;
         broadPhase.§_-uZ§(WorldQueryWrapper,aabb);
      }
      
      public function §_-RG§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§_-2G§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§_-wT§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§_-KR§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§_-cQ§();
         }
         broadPhase = this.§_-0b§.§_-3t§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§_-uZ§(WorldQueryWrapper,aabb);
      }
      
      public function §_-49§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§_-2G§ = null;
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
         broadPhase = this.§_-0b§.§_-3t§;
         var aabb:b2AABB = new b2AABB();
         aabb.§_-fA§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§_-WM§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§_-uZ§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§_-2G§ = null;
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
            return param1.§_-n-§;
         };
         broadPhase = this.§_-0b§.§_-3t§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §_-rD§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §_-9G§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §_-ej§() : b2Body
      {
         return this.§_-dC§;
      }
      
      public function §_-Fv§() : b2Joint
      {
         return this.§_-o3§;
      }
      
      public function §_-KS§() : b2Contact
      {
         return this.§_-vp§;
      }
      
      public function §_-Qb§() : Boolean
      {
         return (this.§_-L9§ & §_-f5§) > 0;
      }
      
      b2internal function §_-xM§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§_-KT§;
         while(_loc3_)
         {
            _loc3_.§_-bY§(param1);
            _loc3_ = _loc3_.§_-QK§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§_-oQ§).§_-Qz§(this.§_-Is§,this.§_-V5§,this.§_-0-1§,null,this.§_-0b§.§_-2z§,this.§_-Sk§);
         _loc2_ = this.§_-dC§;
         while(_loc2_)
         {
            _loc2_.§_-L9§ &= ~b2Body.§_-J§;
            _loc2_ = _loc2_.§_-QK§;
         }
         var _loc5_:b2Contact = this.§_-vp§;
         while(_loc5_)
         {
            _loc5_.§_-L9§ &= ~b2Contact.§_-J§;
            _loc5_ = _loc5_.§_-QK§;
         }
         var _loc6_:b2Joint = this.§_-o3§;
         while(_loc6_)
         {
            _loc6_.§_-a0§ = false;
            _loc6_ = _loc6_.§_-QK§;
         }
         var _loc7_:int = this.§_-Is§;
         var _loc8_:Vector.<b2Body> = this.§_-qo§;
         var _loc9_:b2Body = this.§_-dC§;
         while(_loc9_)
         {
            if(!(_loc9_.§_-L9§ & b2Body.§_-J§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§_-Bw§() == false))
               {
                  if(_loc9_.§_-sl§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§_-Xb§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§_-L9§ |= b2Body.§_-J§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§_-1y§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§_-sl§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§_-vp§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§_-3P§.§_-L9§ & b2Contact.§_-J§))
                              {
                                 if(!(_loc13_.§_-3P§.§_-6i§() == true || _loc13_.§_-3P§.§_-Ye§() == false || _loc13_.§_-3P§.§_-oy§() == false))
                                 {
                                    _loc4_.§_-X3§(_loc13_.§_-3P§);
                                    _loc13_.§_-3P§.§_-L9§ |= b2Contact.§_-J§;
                                    if(!((_loc12_ = _loc13_.§_-u9§).§_-L9§ & b2Body.§_-J§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-L9§ |= b2Body.§_-J§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§_-TE§;
                           }
                           _loc14_ = _loc2_.§_-o3§;
                           while(_loc14_)
                           {
                              if(_loc14_.§_-8J§.§_-a0§ != true)
                              {
                                 if((_loc12_ = _loc14_.§_-u9§).§_-Bw§() != false)
                                 {
                                    _loc4_.§_-U6§(_loc14_.§_-8J§);
                                    _loc14_.§_-8J§.§_-a0§ = true;
                                    if(!(_loc12_.§_-L9§ & b2Body.§_-J§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-L9§ |= b2Body.§_-J§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§_-TE§;
                           }
                        }
                     }
                     _loc4_.§_-xM§(param1,this.§_-EK§,this.§_-UE§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§_-Is§)
                     {
                        _loc2_ = _loc4_.§_-mH§[_loc11_];
                        if(_loc2_.§_-sl§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§_-L9§ &= ~b2Body.§_-J§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§_-QK§;
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
         _loc2_ = this.§_-dC§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§_-Bw§() == false))
            {
               if(_loc2_.§_-sl§() != b2Body.b2_staticBody)
               {
                  _loc2_.§_-ZV§();
               }
            }
            _loc2_ = _loc2_.§_-QK§;
         }
         this.§_-0b§.§_-Q7§();
      }
      
      b2internal function §_-Lt§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§_-oQ§).§_-Qz§(this.§_-Is§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§_-0b§.§_-2z§,this.§_-Sk§);
         var _loc10_:Vector.<b2Body> = §_-RK§;
         _loc2_ = this.§_-dC§;
         while(_loc2_)
         {
            _loc2_.§_-L9§ &= ~b2Body.§_-J§;
            _loc2_.m_sweep.§_-7z§ = 0;
            _loc2_ = _loc2_.§_-QK§;
         }
         _loc11_ = this.§_-vp§;
         while(_loc11_)
         {
            _loc11_.§_-L9§ &= ~(b2Contact.§_-Z3§ | b2Contact.§_-J§);
            _loc11_ = _loc11_.§_-QK§;
         }
         _loc8_ = this.§_-o3§;
         while(_loc8_)
         {
            _loc8_.§_-a0§ = false;
            _loc8_ = _loc8_.§_-QK§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§_-vp§;
            while(_loc11_)
            {
               if(!(_loc11_.§_-6i§() == true || _loc11_.§_-Ye§() == false || _loc11_.§_-nc§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§_-L9§ & b2Contact.§_-Z3§)
                  {
                     _loc19_ = _loc11_.§_-C5§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§_-6B§;
                     _loc4_ = _loc11_.§_-lO§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§_-sl§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§_-sl§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr475:
                        _loc11_ = _loc11_.§_-QK§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§_-7z§;
                     if(_loc5_.m_sweep.§_-7z§ < _loc6_.m_sweep.§_-7z§)
                     {
                        _loc20_ = _loc6_.m_sweep.§_-7z§;
                        _loc5_.m_sweep.§_-Bc§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§_-7z§ < _loc5_.m_sweep.§_-7z§)
                     {
                        _loc20_ = _loc5_.m_sweep.§_-7z§;
                        _loc6_.m_sweep.§_-Bc§(_loc20_);
                     }
                     _loc19_ = _loc11_.§_-RQ§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§_-C5§ = _loc19_;
                     _loc11_.§_-L9§ |= b2Contact.§_-Z3§;
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
            _loc3_ = _loc12_.§_-6B§;
            _loc4_ = _loc12_.§_-lO§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §_-B6§.Set(_loc5_.m_sweep);
            §_-0-a§.Set(_loc6_.m_sweep);
            _loc5_.§_-Bc§(_loc13_);
            _loc6_.§_-Bc§(_loc13_);
            _loc12_.§_-cE§(this.§_-0b§.§_-2z§);
            _loc12_.§_-L9§ &= ~b2Contact.§_-Z3§;
            if(_loc12_.§_-6i§() == true || _loc12_.§_-Ye§() == false)
            {
               _loc5_.m_sweep.Set(§_-B6§);
               _loc6_.m_sweep.Set(§_-0-a§);
               _loc5_.§_-fH§();
               _loc6_.§_-fH§();
            }
            else if(_loc12_.§_-oy§() != false)
            {
               if((_loc14_ = _loc5_).§_-sl§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§_-Xb§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§_-L9§ |= b2Body.§_-J§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§_-1y§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§_-sl§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§_-vp§;
                     while(_loc7_)
                     {
                        if(_loc9_.§_-V5§ == _loc9_.§_-VO§)
                        {
                           break;
                        }
                        if(!(_loc7_.§_-3P§.§_-L9§ & b2Contact.§_-J§))
                        {
                           if(!(_loc7_.§_-3P§.§_-6i§() == true || _loc7_.§_-3P§.§_-Ye§() == false || _loc7_.§_-3P§.§_-oy§() == false))
                           {
                              _loc9_.§_-X3§(_loc7_.§_-3P§);
                              _loc7_.§_-3P§.§_-L9§ |= b2Contact.§_-J§;
                              if(!((_loc22_ = _loc7_.§_-u9§).§_-L9§ & b2Body.§_-J§))
                              {
                                 if(_loc22_.§_-sl§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§_-Bc§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§_-L9§ |= b2Body.§_-J§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§_-TE§;
                     }
                     _loc21_ = _loc2_.§_-o3§;
                     while(_loc21_)
                     {
                        if(_loc9_.§_-0-1§ != _loc9_.§continue§)
                        {
                           if(_loc21_.§_-8J§.§_-a0§ != true)
                           {
                              if((_loc22_ = _loc21_.§_-u9§).§_-Bw§() != false)
                              {
                                 _loc9_.§_-U6§(_loc21_.§_-8J§);
                                 _loc21_.§_-8J§.§_-a0§ = true;
                                 if(!(_loc22_.§_-L9§ & b2Body.§_-J§))
                                 {
                                    if(_loc22_.§_-sl§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§_-Bc§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§_-L9§ |= b2Body.§_-J§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§_-TE§;
                     }
                  }
               }
               (_loc17_ = §_-8v§).§_-0X§ = false;
               _loc17_.§_-ec§ = (1 - _loc13_) * param1.§_-ec§;
               _loc17_.§_-uP§ = 1 / _loc17_.§_-ec§;
               _loc17_.§_-Mu§ = 0;
               _loc17_.§_-8s§ = param1.§_-8s§;
               _loc17_.§_-1e§ = param1.§_-1e§;
               _loc9_.§_-Lt§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-Is§)
               {
                  _loc2_ = _loc9_.§_-mH§[_loc18_];
                  _loc2_.§_-L9§ &= ~b2Body.§_-J§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§_-sl§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§_-ZV§();
                        _loc7_ = _loc2_.§_-vp§;
                        while(_loc7_)
                        {
                           _loc7_.§_-3P§.§_-L9§ &= ~b2Contact.§_-Z3§;
                           _loc7_ = _loc7_.§_-TE§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-V5§)
               {
                  _loc11_ = _loc9_.§_-Mj§[_loc18_];
                  _loc11_.§_-L9§ &= ~(b2Contact.§_-Z3§ | b2Contact.§_-J§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-0-1§)
               {
                  (_loc8_ = _loc9_.§_-9m§[_loc18_]).§_-a0§ = false;
                  _loc18_++;
               }
               this.§_-0b§.§_-Q7§();
            }
         }
      }
      
      b2internal function §_-R9§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§_-qJ§();
         var _loc3_:b2Body = param1.§_-CS§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §_-d8§;
         switch(param1.§_-f7§)
         {
            case b2Joint.§_-hG§:
               this.§_-Qs§.§_-oE§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§_-a8§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§_-vm§();
               _loc13_ = _loc11_.§_-0-G§();
               this.§_-Qs§.§_-oE§(_loc12_,_loc8_,_loc10_);
               this.§_-Qs§.§_-oE§(_loc13_,_loc9_,_loc10_);
               this.§_-Qs§.§_-oE§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§_-Y5§:
               this.§_-Qs§.§_-oE§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§_-Qs§.§_-oE§(_loc6_,_loc8_,_loc10_);
               }
               this.§_-Qs§.§_-oE§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§_-Qs§.§_-oE§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §if §(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§_-f7§)
         {
            case b2Shape.§_-RR§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§_-GQ§(param2,_loc4_.§_-Hd§);
               _loc6_ = _loc4_.§_-EO§;
               _loc7_ = param2.R.col1;
               this.§_-Qs§.§_-Nc§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§_-fT§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§_-xY§();
               _loc11_ = _loc9_.§_-j-§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§_-GQ§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§_-Qs§.§_-Wa§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§_-iw§:
               _loc13_ = param1 as b2EdgeShape;
               this.§_-Qs§.§_-oE§(b2Math.§_-GQ§(param2,_loc13_.GetVertex1()),b2Math.§_-GQ§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

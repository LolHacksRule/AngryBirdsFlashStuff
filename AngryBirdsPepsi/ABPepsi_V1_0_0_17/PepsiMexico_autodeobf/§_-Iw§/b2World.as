package §_-Iw§
{
   import §_-1N§.*;
   import §_-Ja§.*;
   import §_-Kt§.*;
   import §_-a5§.*;
   import §_-lh§.*;
   import §_-ly§.b2Controller;
   import §_-ly§.b2ControllerEdge;
   import §_-qg§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §_-5d§:b2Transform = new b2Transform();
      
      private static var §_-yc§:b2Sweep = new b2Sweep();
      
      private static var §_-LF§:b2Sweep = new b2Sweep();
      
      private static var §_-y8§:b2TimeStep = new b2TimeStep();
      
      private static var §_-4k§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §_-NM§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §_-Uj§:Boolean;
      
      private static var §_-wN§:Boolean;
      
      public static const §_-2C§:int = 1;
      
      public static const §_-oh§:int = 2;
       
      
      private var §_-F0§:Vector.<b2Body>;
      
      b2internal var §_-Il§:int;
      
      b2internal var §_-bL§:b2ContactManager;
      
      private var §_-Ul§:b2ContactSolver;
      
      private var §_-G4§:b2Island;
      
      b2internal var §_-qV§:b2Body;
      
      private var §_-Ry§:b2Joint;
      
      b2internal var §_-W1§:b2Contact;
      
      private var §_-Ww§:int;
      
      b2internal var §_-b7§:int;
      
      private var §_-LT§:int;
      
      private var §_-C2§:b2Controller;
      
      private var §_-Tf§:int;
      
      private var §_-iz§:b2Vec2;
      
      private var §_-p§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §_-U-§:b2DestructionListener;
      
      private var §_-my§:b2DebugDraw;
      
      private var §_-Zu§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§_-F0§ = new Vector.<b2Body>();
         this.§_-bL§ = new b2ContactManager();
         this.§_-Ul§ = new b2ContactSolver();
         this.§_-G4§ = new b2Island();
         super();
         this.§_-U-§ = null;
         this.§_-my§ = null;
         this.§_-qV§ = null;
         this.§_-W1§ = null;
         this.§_-Ry§ = null;
         this.§_-C2§ = null;
         this.§_-Ww§ = 0;
         this.§_-b7§ = 0;
         this.§_-LT§ = 0;
         this.§_-Tf§ = 0;
         §_-Uj§ = true;
         §_-wN§ = true;
         this.§_-p§ = param2;
         this.§_-iz§ = param1;
         this.§_-Zu§ = 0;
         this.§_-bL§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§_-EK§(_loc3_);
      }
      
      public function §_-QE§(param1:b2DestructionListener) : void
      {
         this.§_-U-§ = param1;
      }
      
      public function §_-va§(param1:b2ContactFilter) : void
      {
         this.§_-bL§.§_-P9§ = param1;
      }
      
      public function §_-PR§(param1:b2ContactListener) : void
      {
         this.§_-bL§.§_-qO§ = param1;
      }
      
      public function §_-DA§(param1:b2DebugDraw) : void
      {
         this.§_-my§ = param1;
      }
      
      public function §_-JJ§(param1:§_-nW§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§_-nW§ = this.§_-bL§.§_-ep§;
         this.§_-bL§.§_-ep§ = param1;
         var _loc3_:b2Body = this.§_-qV§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§_-EF§;
            while(_loc4_)
            {
               _loc4_.§_-ev§ = param1.§_-mf§(_loc2_.§_-zV§(_loc4_.§_-ev§),_loc4_);
               _loc4_ = _loc4_.§_-NA§;
            }
            _loc3_ = _loc3_.§_-NA§;
         }
      }
      
      public function §_-Xa§() : void
      {
         this.§_-bL§.§_-ep§.§_-Xa§();
      }
      
      public function §_-G3§() : int
      {
         return this.§_-bL§.§_-ep§.§_-G3§();
      }
      
      public function §_-EK§(param1:b2BodyDef) : b2Body
      {
         if(this.§_-NO§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§_-VL§ = null;
         _loc2_.§_-NA§ = this.§_-qV§;
         if(this.§_-qV§)
         {
            this.§_-qV§.§_-VL§ = _loc2_;
         }
         this.§_-qV§ = _loc2_;
         ++this.§_-Ww§;
         return _loc2_;
      }
      
      public function §_-uT§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§_-NO§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§_-Ry§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§_-Jr§;
            if(this.§_-U-§)
            {
               this.§_-U-§.§_-kD§(_loc6_.§_-Kx§);
            }
            this.§_-mH§(_loc6_.§_-Kx§);
         }
         var _loc3_:b2ControllerEdge = param1.§_-C2§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§_-Ok§;
            _loc7_.§_-Gk§.§_-4E§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§_-W1§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§_-Jr§;
            this.§_-bL§.§_-2A§(_loc8_.§_-bX§);
         }
         param1.§_-W1§ = null;
         var _loc5_:b2Fixture = param1.§_-EF§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§_-NA§;
            if(this.§_-U-§)
            {
               this.§_-U-§.§_-GV§(_loc9_);
            }
            _loc9_.§_-aV§(this.§_-bL§.§_-ep§);
            _loc9_.§_-2A§();
         }
         param1.§_-EF§ = null;
         param1.§_-eR§ = 0;
         if(param1.§_-VL§)
         {
            param1.§_-VL§.§_-NA§ = param1.§_-NA§;
         }
         if(param1.§_-NA§)
         {
            param1.§_-NA§.§_-VL§ = param1.§_-VL§;
         }
         if(param1 == this.§_-qV§)
         {
            this.§_-qV§ = param1.§_-NA§;
         }
         --this.§_-Ww§;
      }
      
      public function §_-8T§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§_-xO§(param1,null);
         _loc2_.§_-VL§ = null;
         _loc2_.§_-NA§ = this.§_-Ry§;
         if(this.§_-Ry§)
         {
            this.§_-Ry§.§_-VL§ = _loc2_;
         }
         this.§_-Ry§ = _loc2_;
         ++this.§_-LT§;
         _loc2_.§_-jw§.§_-Kx§ = _loc2_;
         _loc2_.§_-jw§.§_-dr§ = _loc2_.§_-9K§;
         _loc2_.§_-jw§.§_-M0§ = null;
         _loc2_.§_-jw§.§_-Jr§ = _loc2_.§_-93§.§_-Ry§;
         if(_loc2_.§_-93§.§_-Ry§)
         {
            _loc2_.§_-93§.§_-Ry§.§_-M0§ = _loc2_.§_-jw§;
         }
         _loc2_.§_-93§.§_-Ry§ = _loc2_.§_-jw§;
         _loc2_.§_-7k§.§_-Kx§ = _loc2_;
         _loc2_.§_-7k§.§_-dr§ = _loc2_.§_-93§;
         _loc2_.§_-7k§.§_-M0§ = null;
         _loc2_.§_-7k§.§_-Jr§ = _loc2_.§_-9K§.§_-Ry§;
         if(_loc2_.§_-9K§.§_-Ry§)
         {
            _loc2_.§_-9K§.§_-Ry§.§_-M0§ = _loc2_.§_-7k§;
         }
         _loc2_.§_-9K§.§_-Ry§ = _loc2_.§_-7k§;
         var _loc3_:b2Body = param1.§_-dL§;
         var _loc4_:b2Body = param1.§_-h1§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§_-Xi§();
            while(_loc5_)
            {
               if(_loc5_.§_-dr§ == _loc3_)
               {
                  _loc5_.§_-bX§.§_-om§();
               }
               _loc5_ = _loc5_.§_-Jr§;
            }
         }
         return _loc2_;
      }
      
      public function §_-mH§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§_-Ef§;
         if(param1.§_-VL§)
         {
            param1.§_-VL§.§_-NA§ = param1.§_-NA§;
         }
         if(param1.§_-NA§)
         {
            param1.§_-NA§.§_-VL§ = param1.§_-VL§;
         }
         if(param1 == this.§_-Ry§)
         {
            this.§_-Ry§ = param1.§_-NA§;
         }
         var _loc3_:b2Body = param1.§_-93§;
         var _loc4_:b2Body = param1.§_-9K§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§_-jw§.§_-M0§)
         {
            param1.§_-jw§.§_-M0§.§_-Jr§ = param1.§_-jw§.§_-Jr§;
         }
         if(param1.§_-jw§.§_-Jr§)
         {
            param1.§_-jw§.§_-Jr§.§_-M0§ = param1.§_-jw§.§_-M0§;
         }
         if(param1.§_-jw§ == _loc3_.§_-Ry§)
         {
            _loc3_.§_-Ry§ = param1.§_-jw§.§_-Jr§;
         }
         param1.§_-jw§.§_-M0§ = null;
         param1.§_-jw§.§_-Jr§ = null;
         if(param1.§_-7k§.§_-M0§)
         {
            param1.§_-7k§.§_-M0§.§_-Jr§ = param1.§_-7k§.§_-Jr§;
         }
         if(param1.§_-7k§.§_-Jr§)
         {
            param1.§_-7k§.§_-Jr§.§_-M0§ = param1.§_-7k§.§_-M0§;
         }
         if(param1.§_-7k§ == _loc4_.§_-Ry§)
         {
            _loc4_.§_-Ry§ = param1.§_-7k§.§_-Jr§;
         }
         param1.§_-7k§.§_-M0§ = null;
         param1.§_-7k§.§_-Jr§ = null;
         b2Joint.§_-2A§(param1,null);
         --this.§_-LT§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§_-Xi§();
            while(_loc5_)
            {
               if(_loc5_.§_-dr§ == _loc3_)
               {
                  _loc5_.§_-bX§.§_-om§();
               }
               _loc5_ = _loc5_.§_-Jr§;
            }
         }
      }
      
      public function §_-T8§(param1:b2Controller) : b2Controller
      {
         param1.§_-NA§ = this.§_-C2§;
         param1.§_-VL§ = null;
         this.§_-C2§ = param1;
         param1.m_world = this;
         ++this.§_-Tf§;
         return param1;
      }
      
      public function §_-v8§(param1:b2Controller) : void
      {
         if(param1.§_-VL§)
         {
            param1.§_-VL§.§_-NA§ = param1.§_-NA§;
         }
         if(param1.§_-NA§)
         {
            param1.§_-NA§.§_-VL§ = param1.§_-VL§;
         }
         if(this.§_-C2§ == param1)
         {
            this.§_-C2§ = param1.§_-NA§;
         }
         --this.§_-Tf§;
      }
      
      public function §_-BQ§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§_-NA§ = this.§_-C2§;
         param1.§_-VL§ = null;
         if(this.§_-C2§)
         {
            this.§_-C2§.§_-VL§ = param1;
         }
         this.§_-C2§ = param1;
         ++this.§_-Tf§;
         param1.m_world = this;
         return param1;
      }
      
      public function §_-t4§(param1:b2Controller) : void
      {
         param1.§_-jU§();
         if(param1.§_-NA§)
         {
            param1.§_-NA§.§_-VL§ = param1.§_-VL§;
         }
         if(param1.§_-VL§)
         {
            param1.§_-VL§.§_-NA§ = param1.§_-NA§;
         }
         if(param1 == this.§_-C2§)
         {
            this.§_-C2§ = param1.§_-NA§;
         }
         --this.§_-Tf§;
      }
      
      public function §_-BO§(param1:Boolean) : void
      {
         §_-Uj§ = param1;
      }
      
      public function §_-0z§(param1:Boolean) : void
      {
         §_-wN§ = param1;
      }
      
      public function §_-Mf§() : int
      {
         return this.§_-Ww§;
      }
      
      public function §_-Lr§() : int
      {
         return this.§_-LT§;
      }
      
      public function §_-MU§() : int
      {
         return this.§_-b7§;
      }
      
      public function §_-xn§(param1:b2Vec2) : void
      {
         this.§_-iz§ = param1;
      }
      
      public function §_-cv§() : b2Vec2
      {
         return this.§_-iz§;
      }
      
      public function §_-eT§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §_-bf§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§_-Il§ & §_-2C§)
         {
            this.§_-bL§.§_-Z6§();
            this.§_-Il§ &= ~§_-2C§;
         }
         this.§_-Il§ |= §_-oh§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§_-h8§ = param1;
         _loc4_.§_-yW§ = param2;
         _loc4_.§_-Pe§ = param3;
         if(param1 > 0)
         {
            _loc4_.§_-0w§ = 1 / param1;
         }
         else
         {
            _loc4_.§_-0w§ = 0;
         }
         _loc4_.§break§ = this.§_-Zu§ * param1;
         _loc4_.§_-o-§ = §_-Uj§;
         this.§_-bL§.§_-ch§();
         if(_loc4_.§_-h8§ > 0)
         {
            this.§_-B-§(_loc4_);
         }
         if(§_-wN§ && _loc4_.§_-h8§ > 0)
         {
            this.§_-4y§(_loc4_);
         }
         if(_loc4_.§_-h8§ > 0)
         {
            this.§_-Zu§ = _loc4_.§_-0w§;
         }
         this.§_-Il§ &= ~§_-oh§;
      }
      
      public function §_-RZ§() : void
      {
         var _loc1_:b2Body = this.§_-qV§;
         while(_loc1_)
         {
            _loc1_.§return§.§_-0a§();
            _loc1_.§_-0C§ = 0;
            _loc1_ = _loc1_.§_-NA§;
         }
      }
      
      public function §_-is§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§_-nW§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§_-my§ == null)
         {
            return;
         }
         this.§_-my§.§_-C-§.graphics.clear();
         var _loc1_:uint = this.§_-my§.§_-FJ§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§_-iH§)
         {
            _loc3_ = this.§_-qV§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§_-xG§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§_-w4§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§_-wP§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-ww§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§_-wP§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-ww§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§_-wP§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§_-wP§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§_-wP§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§_-NA§;
               }
               _loc3_ = _loc3_.§_-NA§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-Nl§)
         {
            _loc6_ = this.§_-Ry§;
            while(_loc6_)
            {
               this.§_-LB§(_loc6_);
               _loc6_ = _loc6_.§_-NA§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-9q§)
         {
            _loc16_ = this.§_-C2§;
            while(_loc16_)
            {
               _loc16_.§_-q0§(this.§_-my§);
               _loc16_ = _loc16_.§_-NA§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-1d§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§_-bL§.§_-W1§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§_-8S§();
               _loc19_ = _loc17_.§_-16§();
               _loc20_ = _loc18_.§_-SE§().§_-aW§();
               _loc21_ = _loc19_.§_-SE§().§_-aW§();
               this.§_-my§.§_-xF§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§_-tx§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-kR§)
         {
            _loc7_ = this.§_-bL§.§_-ep§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§_-qV§;
            while(_loc3_)
            {
               if(_loc3_.§_-w4§() != false)
               {
                  _loc4_ = _loc3_.§_-xG§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§_-zV§(_loc4_.§_-ev§);
                     _loc14_[0].Set(_loc22_.§_-N-§.x,_loc22_.§_-N-§.y);
                     _loc14_[1].Set(_loc22_.§_-TE§.x,_loc22_.§_-N-§.y);
                     _loc14_[2].Set(_loc22_.§_-TE§.x,_loc22_.§_-TE§.y);
                     _loc14_[3].Set(_loc22_.§_-N-§.x,_loc22_.§_-TE§.y);
                     this.§_-my§.§_-Ti§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§_-tx§();
                  }
               }
               _loc3_ = _loc3_.§_-tx§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-hl§)
         {
            _loc3_ = this.§_-qV§;
            while(_loc3_)
            {
               (_loc11_ = §_-5d§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§_-lC§();
               this.§_-my§.§_-tl§(_loc11_);
               _loc3_ = _loc3_.§_-NA§;
            }
         }
      }
      
      public function §else §(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§_-nW§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§_-bL§.§_-ep§;
         broadPhase.§_-7a§(WorldQueryWrapper,aabb);
      }
      
      public function §_-r3§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§_-nW§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§_-pb§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§_-ZO§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§_-Xx§();
         }
         broadPhase = this.§_-bL§.§_-ep§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§_-7a§(WorldQueryWrapper,aabb);
      }
      
      public function §_-Bi§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§_-nW§ = null;
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
         broadPhase = this.§_-bL§.§_-ep§;
         var aabb:b2AABB = new b2AABB();
         aabb.§_-N-§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§_-TE§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§_-7a§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§_-nW§ = null;
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
            return param1.§_-fa§;
         };
         broadPhase = this.§_-bL§.§_-ep§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §_-44§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §_-Uz§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §_-kA§() : b2Body
      {
         return this.§_-qV§;
      }
      
      public function §_-9y§() : b2Joint
      {
         return this.§_-Ry§;
      }
      
      public function §_-Xi§() : b2Contact
      {
         return this.§_-W1§;
      }
      
      public function §_-NO§() : Boolean
      {
         return (this.§_-Il§ & §_-oh§) > 0;
      }
      
      b2internal function §_-B-§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§_-C2§;
         while(_loc3_)
         {
            _loc3_.§_-bf§(param1);
            _loc3_ = _loc3_.§_-NA§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§_-G4§).§_-lc§(this.§_-Ww§,this.§_-b7§,this.§_-LT§,null,this.§_-bL§.§_-qO§,this.§_-Ul§);
         _loc2_ = this.§_-qV§;
         while(_loc2_)
         {
            _loc2_.§_-Il§ &= ~b2Body.§_-rW§;
            _loc2_ = _loc2_.§_-NA§;
         }
         var _loc5_:b2Contact = this.§_-W1§;
         while(_loc5_)
         {
            _loc5_.§_-Il§ &= ~b2Contact.§_-rW§;
            _loc5_ = _loc5_.§_-NA§;
         }
         var _loc6_:b2Joint = this.§_-Ry§;
         while(_loc6_)
         {
            _loc6_.§_-j§ = false;
            _loc6_ = _loc6_.§_-NA§;
         }
         var _loc7_:int = this.§_-Ww§;
         var _loc8_:Vector.<b2Body> = this.§_-F0§;
         var _loc9_:b2Body = this.§_-qV§;
         while(_loc9_)
         {
            if(!(_loc9_.§_-Il§ & b2Body.§_-rW§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§_-w4§() == false))
               {
                  if(_loc9_.§_-ww§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§_-jU§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§_-Il§ |= b2Body.§_-rW§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§_-J2§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§_-ww§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§_-W1§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§_-bX§.§_-Il§ & b2Contact.§_-rW§))
                              {
                                 if(!(_loc13_.§_-bX§.§_-YU§() == true || _loc13_.§_-bX§.§_-v7§() == false || _loc13_.§_-bX§.§_-ps§() == false))
                                 {
                                    _loc4_.§_-T4§(_loc13_.§_-bX§);
                                    _loc13_.§_-bX§.§_-Il§ |= b2Contact.§_-rW§;
                                    if(!((_loc12_ = _loc13_.§_-dr§).§_-Il§ & b2Body.§_-rW§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-Il§ |= b2Body.§_-rW§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§_-Jr§;
                           }
                           _loc14_ = _loc2_.§_-Ry§;
                           while(_loc14_)
                           {
                              if(_loc14_.§_-Kx§.§_-j§ != true)
                              {
                                 if((_loc12_ = _loc14_.§_-dr§).§_-w4§() != false)
                                 {
                                    _loc4_.§_-ZD§(_loc14_.§_-Kx§);
                                    _loc14_.§_-Kx§.§_-j§ = true;
                                    if(!(_loc12_.§_-Il§ & b2Body.§_-rW§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-Il§ |= b2Body.§_-rW§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§_-Jr§;
                           }
                        }
                     }
                     _loc4_.§_-B-§(param1,this.§_-iz§,this.§_-p§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§_-Ww§)
                     {
                        _loc2_ = _loc4_.§_-SV§[_loc11_];
                        if(_loc2_.§_-ww§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§_-Il§ &= ~b2Body.§_-rW§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§_-NA§;
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
         _loc2_ = this.§_-qV§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§_-w4§() == false))
            {
               if(_loc2_.§_-ww§() != b2Body.b2_staticBody)
               {
                  _loc2_.§_-F6§();
               }
            }
            _loc2_ = _loc2_.§_-NA§;
         }
         this.§_-bL§.§_-Z6§();
      }
      
      b2internal function §_-4y§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§_-G4§).§_-lc§(this.§_-Ww§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§_-bL§.§_-qO§,this.§_-Ul§);
         var _loc10_:Vector.<b2Body> = §_-4k§;
         _loc2_ = this.§_-qV§;
         while(_loc2_)
         {
            _loc2_.§_-Il§ &= ~b2Body.§_-rW§;
            _loc2_.m_sweep.§_-EG§ = 0;
            _loc2_ = _loc2_.§_-NA§;
         }
         _loc11_ = this.§_-W1§;
         while(_loc11_)
         {
            _loc11_.§_-Il§ &= ~(b2Contact.§_-Sn§ | b2Contact.§_-rW§);
            _loc11_ = _loc11_.§_-NA§;
         }
         _loc8_ = this.§_-Ry§;
         while(_loc8_)
         {
            _loc8_.§_-j§ = false;
            _loc8_ = _loc8_.§_-NA§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§_-W1§;
            for(; _loc11_; _loc11_ = _loc11_.§_-NA§)
            {
               if(!(_loc11_.§_-YU§() == true || _loc11_.§_-v7§() == false || _loc11_.§_-UV§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§_-Il§ & b2Contact.§_-Sn§)
                  {
                     _loc19_ = _loc11_.§_-fE§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§_-NZ§;
                     _loc4_ = _loc11_.§_-xL§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§_-ww§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§_-ww§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§_-EG§;
                     if(_loc5_.m_sweep.§_-EG§ < _loc6_.m_sweep.§_-EG§)
                     {
                        _loc20_ = _loc6_.m_sweep.§_-EG§;
                        _loc5_.m_sweep.§_-8j§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§_-EG§ < _loc5_.m_sweep.§_-EG§)
                     {
                        _loc20_ = _loc5_.m_sweep.§_-EG§;
                        _loc6_.m_sweep.§_-8j§(_loc20_);
                     }
                     _loc19_ = _loc11_.§_-cy§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§_-fE§ = _loc19_;
                     _loc11_.§_-Il§ |= b2Contact.§_-Sn§;
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§_-NZ§;
            _loc4_ = _loc12_.§_-xL§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §_-yc§.Set(_loc5_.m_sweep);
            §_-LF§.Set(_loc6_.m_sweep);
            _loc5_.§_-8j§(_loc13_);
            _loc6_.§_-8j§(_loc13_);
            _loc12_.§_-r-§(this.§_-bL§.§_-qO§);
            _loc12_.§_-Il§ &= ~b2Contact.§_-Sn§;
            if(_loc12_.§_-YU§() == true || _loc12_.§_-v7§() == false)
            {
               _loc5_.m_sweep.Set(§_-yc§);
               _loc6_.m_sweep.Set(§_-LF§);
               _loc5_.§_-Z9§();
               _loc6_.§_-Z9§();
            }
            else if(_loc12_.§_-ps§() != false)
            {
               if((_loc14_ = _loc5_).§_-ww§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§_-jU§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§_-Il§ |= b2Body.§_-rW§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§_-J2§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§_-ww§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§_-W1§;
                     while(_loc7_)
                     {
                        if(_loc9_.§_-b7§ == _loc9_.§_-UT§)
                        {
                           break;
                        }
                        if(!(_loc7_.§_-bX§.§_-Il§ & b2Contact.§_-rW§))
                        {
                           if(!(_loc7_.§_-bX§.§_-YU§() == true || _loc7_.§_-bX§.§_-v7§() == false || _loc7_.§_-bX§.§_-ps§() == false))
                           {
                              _loc9_.§_-T4§(_loc7_.§_-bX§);
                              _loc7_.§_-bX§.§_-Il§ |= b2Contact.§_-rW§;
                              if(!((_loc22_ = _loc7_.§_-dr§).§_-Il§ & b2Body.§_-rW§))
                              {
                                 if(_loc22_.§_-ww§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§_-8j§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§_-Il§ |= b2Body.§_-rW§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§_-Jr§;
                     }
                     _loc21_ = _loc2_.§_-Ry§;
                     while(_loc21_)
                     {
                        if(_loc9_.§_-LT§ != _loc9_.§_-iv§)
                        {
                           if(_loc21_.§_-Kx§.§_-j§ != true)
                           {
                              if((_loc22_ = _loc21_.§_-dr§).§_-w4§() != false)
                              {
                                 _loc9_.§_-ZD§(_loc21_.§_-Kx§);
                                 _loc21_.§_-Kx§.§_-j§ = true;
                                 if(!(_loc22_.§_-Il§ & b2Body.§_-rW§))
                                 {
                                    if(_loc22_.§_-ww§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§_-8j§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§_-Il§ |= b2Body.§_-rW§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§_-Jr§;
                     }
                  }
               }
               (_loc17_ = §_-y8§).§_-o-§ = false;
               _loc17_.§_-h8§ = (1 - _loc13_) * param1.§_-h8§;
               _loc17_.§_-0w§ = 1 / _loc17_.§_-h8§;
               _loc17_.§break§ = 0;
               _loc17_.§_-yW§ = param1.§_-yW§;
               _loc17_.§_-Pe§ = param1.§_-Pe§;
               _loc9_.§_-4y§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-Ww§)
               {
                  _loc2_ = _loc9_.§_-SV§[_loc18_];
                  _loc2_.§_-Il§ &= ~b2Body.§_-rW§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§_-ww§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§_-F6§();
                        _loc7_ = _loc2_.§_-W1§;
                        while(_loc7_)
                        {
                           _loc7_.§_-bX§.§_-Il§ &= ~b2Contact.§_-Sn§;
                           _loc7_ = _loc7_.§_-Jr§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-b7§)
               {
                  _loc11_ = _loc9_.§_-LO§[_loc18_];
                  _loc11_.§_-Il§ &= ~(b2Contact.§_-Sn§ | b2Contact.§_-rW§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-LT§)
               {
                  (_loc8_ = _loc9_.§_-O2§[_loc18_]).§_-j§ = false;
                  _loc18_++;
               }
               this.§_-bL§.§_-Z6§();
            }
         }
      }
      
      b2internal function §_-LB§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§_-kE§();
         var _loc3_:b2Body = param1.§_-Pl§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §_-NM§;
         switch(param1.§_-Sj§)
         {
            case b2Joint.§_-wG§:
               this.§_-my§.§_-xF§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§_-45§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§_-wj§();
               _loc13_ = _loc11_.§_-Km§();
               this.§_-my§.§_-xF§(_loc12_,_loc8_,_loc10_);
               this.§_-my§.§_-xF§(_loc13_,_loc9_,_loc10_);
               this.§_-my§.§_-xF§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§_-5H§:
               this.§_-my§.§_-xF§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§_-my§.§_-xF§(_loc6_,_loc8_,_loc10_);
               }
               this.§_-my§.§_-xF§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§_-my§.§_-xF§(_loc7_,_loc9_,_loc10_);
               }
         }
      }
      
      b2internal function §_-wP§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§_-Sj§)
         {
            case b2Shape.§_-n7§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§_-Y9§(param2,_loc4_.§_-Ga§);
               _loc6_ = _loc4_.§_-Q2§;
               _loc7_ = param2.R.col1;
               this.§_-my§.§_-fn§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§_-6T§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§_-m9§();
               _loc11_ = _loc9_.§_-JC§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§_-Y9§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§_-my§.§_-eB§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§_-mn§:
               _loc13_ = param1 as b2EdgeShape;
               this.§_-my§.§_-xF§(b2Math.§_-Y9§(param2,_loc13_.GetVertex1()),b2Math.§_-Y9§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

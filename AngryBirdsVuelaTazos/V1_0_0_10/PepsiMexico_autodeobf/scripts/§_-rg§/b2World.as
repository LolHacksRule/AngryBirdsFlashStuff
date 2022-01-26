package §_-rg§
{
   import §_-DM§.*;
   import §_-Et§.*;
   import §_-I2§.*;
   import §_-Rb§.*;
   import §_-Vs§.b2Controller;
   import §_-Vs§.b2ControllerEdge;
   import §_-Zl§.*;
   import §_-uS§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §_-9R§:b2Transform = new b2Transform();
      
      private static var §_-5v§:b2Sweep = new b2Sweep();
      
      private static var §_-KL§:b2Sweep = new b2Sweep();
      
      private static var §_-4b§:b2TimeStep = new b2TimeStep();
      
      private static var §_-Ro§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §_-eM§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §_-tJ§:Boolean;
      
      private static var § case§:Boolean;
      
      public static const §_-JF§:int = 1;
      
      public static const §_-AY§:int = 2;
       
      
      private var §_-i3§:Vector.<b2Body>;
      
      b2internal var §_-2F§:int;
      
      b2internal var §_-pk§:b2ContactManager;
      
      private var §_-Ne§:b2ContactSolver;
      
      private var §_-qQ§:b2Island;
      
      b2internal var §_-38§:b2Body;
      
      private var §_-8s§:b2Joint;
      
      b2internal var §_-kI§:b2Contact;
      
      private var §_-FG§:int;
      
      b2internal var §_-88§:int;
      
      private var §_-lM§:int;
      
      private var §_-wG§:b2Controller;
      
      private var §_-OP§:int;
      
      private var §_-WP§:b2Vec2;
      
      private var §_-uP§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §_-05§:b2DestructionListener;
      
      private var §_-ip§:b2DebugDraw;
      
      private var §_-mX§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§_-i3§ = new Vector.<b2Body>();
         this.§_-pk§ = new b2ContactManager();
         this.§_-Ne§ = new b2ContactSolver();
         this.§_-qQ§ = new b2Island();
         super();
         this.§_-05§ = null;
         this.§_-ip§ = null;
         this.§_-38§ = null;
         this.§_-kI§ = null;
         this.§_-8s§ = null;
         this.§_-wG§ = null;
         this.§_-FG§ = 0;
         this.§_-88§ = 0;
         this.§_-lM§ = 0;
         this.§_-OP§ = 0;
         §_-tJ§ = true;
         § case§ = true;
         this.§_-uP§ = param2;
         this.§_-WP§ = param1;
         this.§_-mX§ = 0;
         this.§_-pk§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§_-g2§(_loc3_);
      }
      
      public function §_-d0§(param1:b2DestructionListener) : void
      {
         this.§_-05§ = param1;
      }
      
      public function §_-Ww§(param1:b2ContactFilter) : void
      {
         this.§_-pk§.§_-Oa§ = param1;
      }
      
      public function §_-5f§(param1:b2ContactListener) : void
      {
         this.§_-pk§.§_-B4§ = param1;
      }
      
      public function §_-5i§(param1:b2DebugDraw) : void
      {
         this.§_-ip§ = param1;
      }
      
      public function §_-w§(param1:§_-ei§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§_-ei§ = this.§_-pk§.§_-qs§;
         this.§_-pk§.§_-qs§ = param1;
         var _loc3_:b2Body = this.§_-38§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§_-4v§;
            while(_loc4_)
            {
               _loc4_.§_-d8§ = param1.§_-A5§(_loc2_.§_-cN§(_loc4_.§_-d8§),_loc4_);
               _loc4_ = _loc4_.§_-AX§;
            }
            _loc3_ = _loc3_.§_-AX§;
         }
      }
      
      public function § else§() : void
      {
         this.§_-pk§.§_-qs§.§ else§();
      }
      
      public function §_-Us§() : int
      {
         return this.§_-pk§.§_-qs§.§_-Us§();
      }
      
      public function §_-g2§(param1:b2BodyDef) : b2Body
      {
         if(this.§_-Tw§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§_-M9§ = null;
         _loc2_.§_-AX§ = this.§_-38§;
         if(this.§_-38§)
         {
            this.§_-38§.§_-M9§ = _loc2_;
         }
         this.§_-38§ = _loc2_;
         ++this.§_-FG§;
         return _loc2_;
      }
      
      public function §_-49§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§_-Tw§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§_-8s§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§_-kL§;
            if(this.§_-05§)
            {
               this.§_-05§.§_-me§(_loc6_.§_-bO§);
            }
            this.§_-kZ§(_loc6_.§_-bO§);
         }
         var _loc3_:b2ControllerEdge = param1.§_-wG§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§_-EK§;
            _loc7_.§_-gT§.§_-D7§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§_-kI§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§_-kL§;
            this.§_-pk§.§_-1m§(_loc8_.§_-vb§);
         }
         param1.§_-kI§ = null;
         var _loc5_:b2Fixture = param1.§_-4v§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§_-AX§;
            if(this.§_-05§)
            {
               this.§_-05§.§_-WD§(_loc9_);
            }
            _loc9_.§_-Uu§(this.§_-pk§.§_-qs§);
            _loc9_.§_-1m§();
         }
         param1.§_-4v§ = null;
         param1.§_-x6§ = 0;
         if(param1.§_-M9§)
         {
            param1.§_-M9§.§_-AX§ = param1.§_-AX§;
         }
         if(param1.§_-AX§)
         {
            param1.§_-AX§.§_-M9§ = param1.§_-M9§;
         }
         if(param1 == this.§_-38§)
         {
            this.§_-38§ = param1.§_-AX§;
         }
         --this.§_-FG§;
      }
      
      public function §_-PU§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§_-i-§(param1,null);
         _loc2_.§_-M9§ = null;
         _loc2_.§_-AX§ = this.§_-8s§;
         if(this.§_-8s§)
         {
            this.§_-8s§.§_-M9§ = _loc2_;
         }
         this.§_-8s§ = _loc2_;
         ++this.§_-lM§;
         _loc2_.§_-O4§.§_-bO§ = _loc2_;
         _loc2_.§_-O4§.§_-Vi§ = _loc2_.§_-GP§;
         _loc2_.§_-O4§.§_-tH§ = null;
         _loc2_.§_-O4§.§_-kL§ = _loc2_.§_-Rz§.§_-8s§;
         if(_loc2_.§_-Rz§.§_-8s§)
         {
            _loc2_.§_-Rz§.§_-8s§.§_-tH§ = _loc2_.§_-O4§;
         }
         _loc2_.§_-Rz§.§_-8s§ = _loc2_.§_-O4§;
         _loc2_.§_-dj§.§_-bO§ = _loc2_;
         _loc2_.§_-dj§.§_-Vi§ = _loc2_.§_-Rz§;
         _loc2_.§_-dj§.§_-tH§ = null;
         _loc2_.§_-dj§.§_-kL§ = _loc2_.§_-GP§.§_-8s§;
         if(_loc2_.§_-GP§.§_-8s§)
         {
            _loc2_.§_-GP§.§_-8s§.§_-tH§ = _loc2_.§_-dj§;
         }
         _loc2_.§_-GP§.§_-8s§ = _loc2_.§_-dj§;
         var _loc3_:b2Body = param1.§_-Ay§;
         var _loc4_:b2Body = param1.§_-vo§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§_-c4§();
            while(_loc5_)
            {
               if(_loc5_.§_-Vi§ == _loc3_)
               {
                  _loc5_.§_-vb§.§_-Lu§();
               }
               _loc5_ = _loc5_.§_-kL§;
            }
         }
         return _loc2_;
      }
      
      public function §_-kZ§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§_-b-§;
         if(param1.§_-M9§)
         {
            param1.§_-M9§.§_-AX§ = param1.§_-AX§;
         }
         if(param1.§_-AX§)
         {
            param1.§_-AX§.§_-M9§ = param1.§_-M9§;
         }
         if(param1 == this.§_-8s§)
         {
            this.§_-8s§ = param1.§_-AX§;
         }
         var _loc3_:b2Body = param1.§_-Rz§;
         var _loc4_:b2Body = param1.§_-GP§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§_-O4§.§_-tH§)
         {
            param1.§_-O4§.§_-tH§.§_-kL§ = param1.§_-O4§.§_-kL§;
         }
         if(param1.§_-O4§.§_-kL§)
         {
            param1.§_-O4§.§_-kL§.§_-tH§ = param1.§_-O4§.§_-tH§;
         }
         if(param1.§_-O4§ == _loc3_.§_-8s§)
         {
            _loc3_.§_-8s§ = param1.§_-O4§.§_-kL§;
         }
         param1.§_-O4§.§_-tH§ = null;
         param1.§_-O4§.§_-kL§ = null;
         if(param1.§_-dj§.§_-tH§)
         {
            param1.§_-dj§.§_-tH§.§_-kL§ = param1.§_-dj§.§_-kL§;
         }
         if(param1.§_-dj§.§_-kL§)
         {
            param1.§_-dj§.§_-kL§.§_-tH§ = param1.§_-dj§.§_-tH§;
         }
         if(param1.§_-dj§ == _loc4_.§_-8s§)
         {
            _loc4_.§_-8s§ = param1.§_-dj§.§_-kL§;
         }
         param1.§_-dj§.§_-tH§ = null;
         param1.§_-dj§.§_-kL§ = null;
         b2Joint.§_-1m§(param1,null);
         --this.§_-lM§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§_-c4§();
            while(_loc5_)
            {
               if(_loc5_.§_-Vi§ == _loc3_)
               {
                  _loc5_.§_-vb§.§_-Lu§();
               }
               _loc5_ = _loc5_.§_-kL§;
            }
         }
      }
      
      public function §_-ZW§(param1:b2Controller) : b2Controller
      {
         param1.§_-AX§ = this.§_-wG§;
         param1.§_-M9§ = null;
         this.§_-wG§ = param1;
         param1.m_world = this;
         ++this.§_-OP§;
         return param1;
      }
      
      public function §_-xE§(param1:b2Controller) : void
      {
         if(param1.§_-M9§)
         {
            param1.§_-M9§.§_-AX§ = param1.§_-AX§;
         }
         if(param1.§_-AX§)
         {
            param1.§_-AX§.§_-M9§ = param1.§_-M9§;
         }
         if(this.§_-wG§ == param1)
         {
            this.§_-wG§ = param1.§_-AX§;
         }
         --this.§_-OP§;
      }
      
      public function §_-ie§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§_-AX§ = this.§_-wG§;
         param1.§_-M9§ = null;
         if(this.§_-wG§)
         {
            this.§_-wG§.§_-M9§ = param1;
         }
         this.§_-wG§ = param1;
         ++this.§_-OP§;
         param1.m_world = this;
         return param1;
      }
      
      public function §_-jz§(param1:b2Controller) : void
      {
         param1.§_-H0§();
         if(param1.§_-AX§)
         {
            param1.§_-AX§.§_-M9§ = param1.§_-M9§;
         }
         if(param1.§_-M9§)
         {
            param1.§_-M9§.§_-AX§ = param1.§_-AX§;
         }
         if(param1 == this.§_-wG§)
         {
            this.§_-wG§ = param1.§_-AX§;
         }
         --this.§_-OP§;
      }
      
      public function §_-wt§(param1:Boolean) : void
      {
         §_-tJ§ = param1;
      }
      
      public function §_-h8§(param1:Boolean) : void
      {
         § case§ = param1;
      }
      
      public function §_-Fc§() : int
      {
         return this.§_-FG§;
      }
      
      public function §_-eK§() : int
      {
         return this.§_-lM§;
      }
      
      public function §_-ki§() : int
      {
         return this.§_-88§;
      }
      
      public function §_-FL§(param1:b2Vec2) : void
      {
         this.§_-WP§ = param1;
      }
      
      public function §_-MV§() : b2Vec2
      {
         return this.§_-WP§;
      }
      
      public function §_-nM§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §_-h0§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§_-2F§ & §_-JF§)
         {
            this.§_-pk§.§_-hD§();
            this.§_-2F§ &= ~§_-JF§;
         }
         this.§_-2F§ |= §_-AY§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§_-Vj§ = param1;
         _loc4_.§_-6-§ = param2;
         _loc4_.§_-7D§ = param3;
         if(param1 > 0)
         {
            _loc4_.§_-Ub§ = 1 / param1;
         }
         else
         {
            _loc4_.§_-Ub§ = 0;
         }
         _loc4_.§_-4i§ = this.§_-mX§ * param1;
         _loc4_.§_-Fx§ = §_-tJ§;
         this.§_-pk§.§_-4z§();
         if(_loc4_.§_-Vj§ > 0)
         {
            this.§_-c7§(_loc4_);
         }
         if(§ case§ && _loc4_.§_-Vj§ > 0)
         {
            this.§_-ks§(_loc4_);
         }
         if(_loc4_.§_-Vj§ > 0)
         {
            this.§_-mX§ = _loc4_.§_-Ub§;
         }
         this.§_-2F§ &= ~§_-AY§;
      }
      
      public function §_-DC§() : void
      {
         var _loc1_:b2Body = this.§_-38§;
         while(_loc1_)
         {
            _loc1_.§_-6I§.§_-Vw§();
            _loc1_.§_-Cq§ = 0;
            _loc1_ = _loc1_.§_-AX§;
         }
      }
      
      public function §_-qA§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§_-ei§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§_-ip§ == null)
         {
            return;
         }
         this.§_-ip§.§_-Oc§.graphics.clear();
         var _loc1_:uint = this.§_-ip§.§_-VK§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§_-Hv§)
         {
            _loc3_ = this.§_-38§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§_-TL§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§_-2Y§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§_-fK§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-Iy§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§_-fK§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-Iy§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§_-fK§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§_-fK§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§_-fK§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§_-AX§;
               }
               _loc3_ = _loc3_.§_-AX§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-sQ§)
         {
            _loc6_ = this.§_-8s§;
            while(_loc6_)
            {
               this.§ true§(_loc6_);
               _loc6_ = _loc6_.§_-AX§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-sf§)
         {
            _loc16_ = this.§_-wG§;
            while(_loc16_)
            {
               _loc16_.§_-tG§(this.§_-ip§);
               _loc16_ = _loc16_.§_-AX§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-qo§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§_-pk§.§_-kI§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§_-cW§();
               _loc19_ = _loc17_.§_-q-§();
               _loc20_ = _loc18_.§_-RV§().§_-ij§();
               _loc21_ = _loc19_.§_-RV§().§_-ij§();
               this.§_-ip§.§_-sK§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§_-mR§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-Xd§)
         {
            _loc7_ = this.§_-pk§.§_-qs§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§_-38§;
            while(_loc3_)
            {
               if(_loc3_.§_-2Y§() != false)
               {
                  _loc4_ = _loc3_.§_-TL§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§_-cN§(_loc4_.§_-d8§);
                     _loc14_[0].Set(_loc22_.§_-nx§.x,_loc22_.§_-nx§.y);
                     _loc14_[1].Set(_loc22_.§_-u6§.x,_loc22_.§_-nx§.y);
                     _loc14_[2].Set(_loc22_.§_-u6§.x,_loc22_.§_-u6§.y);
                     _loc14_[3].Set(_loc22_.§_-nx§.x,_loc22_.§_-u6§.y);
                     this.§_-ip§.§_-tn§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§_-mR§();
                  }
               }
               _loc3_ = _loc3_.§_-mR§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-an§)
         {
            _loc3_ = this.§_-38§;
            while(_loc3_)
            {
               (_loc11_ = §_-9R§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§_-RE§();
               this.§_-ip§.§_-9k§(_loc11_);
               _loc3_ = _loc3_.§_-AX§;
            }
         }
      }
      
      public function §_-Xy§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§_-ei§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§_-pk§.§_-qs§;
         broadPhase.§_-OD§(WorldQueryWrapper,aabb);
      }
      
      public function §var §(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§_-ei§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§_-e2§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§_-9F§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§_-Y2§();
         }
         broadPhase = this.§_-pk§.§_-qs§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§_-OD§(WorldQueryWrapper,aabb);
      }
      
      public function §_-EC§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§_-ei§ = null;
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
         broadPhase = this.§_-pk§.§_-qs§;
         var aabb:b2AABB = new b2AABB();
         aabb.§_-nx§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§_-u6§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§_-OD§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§_-ei§ = null;
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
            return param1.§_-pC§;
         };
         broadPhase = this.§_-pk§.§_-qs§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §_-n7§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §_-4q§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §_-b3§() : b2Body
      {
         return this.§_-38§;
      }
      
      public function §_-BT§() : b2Joint
      {
         return this.§_-8s§;
      }
      
      public function §_-c4§() : b2Contact
      {
         return this.§_-kI§;
      }
      
      public function §_-Tw§() : Boolean
      {
         return (this.§_-2F§ & §_-AY§) > 0;
      }
      
      b2internal function §_-c7§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§_-wG§;
         while(_loc3_)
         {
            _loc3_.§_-h0§(param1);
            _loc3_ = _loc3_.§_-AX§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§_-qQ§).§_-E0§(this.§_-FG§,this.§_-88§,this.§_-lM§,null,this.§_-pk§.§_-B4§,this.§_-Ne§);
         _loc2_ = this.§_-38§;
         while(_loc2_)
         {
            _loc2_.§_-2F§ &= ~b2Body.§_-9S§;
            _loc2_ = _loc2_.§_-AX§;
         }
         var _loc5_:b2Contact = this.§_-kI§;
         while(_loc5_)
         {
            _loc5_.§_-2F§ &= ~b2Contact.§_-9S§;
            _loc5_ = _loc5_.§_-AX§;
         }
         var _loc6_:b2Joint = this.§_-8s§;
         while(_loc6_)
         {
            _loc6_.§_-pp§ = false;
            _loc6_ = _loc6_.§_-AX§;
         }
         var _loc7_:int = this.§_-FG§;
         var _loc8_:Vector.<b2Body> = this.§_-i3§;
         var _loc9_:b2Body = this.§_-38§;
         while(_loc9_)
         {
            if(!(_loc9_.§_-2F§ & b2Body.§_-9S§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§_-2Y§() == false))
               {
                  if(_loc9_.§_-Iy§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§_-H0§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§_-2F§ |= b2Body.§_-9S§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§_-T1§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§_-Iy§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§_-kI§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§_-vb§.§_-2F§ & b2Contact.§_-9S§))
                              {
                                 if(!(_loc13_.§_-vb§.§_-Hm§() == true || _loc13_.§_-vb§.§_-Ko§() == false || _loc13_.§_-vb§.§_-fg§() == false))
                                 {
                                    _loc4_.§_-ai§(_loc13_.§_-vb§);
                                    _loc13_.§_-vb§.§_-2F§ |= b2Contact.§_-9S§;
                                    if(!((_loc12_ = _loc13_.§_-Vi§).§_-2F§ & b2Body.§_-9S§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-2F§ |= b2Body.§_-9S§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§_-kL§;
                           }
                           _loc14_ = _loc2_.§_-8s§;
                           while(_loc14_)
                           {
                              if(_loc14_.§_-bO§.§_-pp§ != true)
                              {
                                 if((_loc12_ = _loc14_.§_-Vi§).§_-2Y§() != false)
                                 {
                                    _loc4_.§_-RM§(_loc14_.§_-bO§);
                                    _loc14_.§_-bO§.§_-pp§ = true;
                                    if(!(_loc12_.§_-2F§ & b2Body.§_-9S§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-2F§ |= b2Body.§_-9S§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§_-kL§;
                           }
                        }
                     }
                     _loc4_.§_-c7§(param1,this.§_-WP§,this.§_-uP§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§_-FG§)
                     {
                        _loc2_ = _loc4_.§_-0k§[_loc11_];
                        if(_loc2_.§_-Iy§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§_-2F§ &= ~b2Body.§_-9S§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§_-AX§;
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
         _loc2_ = this.§_-38§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§_-2Y§() == false))
            {
               if(_loc2_.§_-Iy§() != b2Body.b2_staticBody)
               {
                  _loc2_.§_-i1§();
               }
            }
            _loc2_ = _loc2_.§_-AX§;
         }
         this.§_-pk§.§_-hD§();
      }
      
      b2internal function §_-ks§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§_-qQ§).§_-E0§(this.§_-FG§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§_-pk§.§_-B4§,this.§_-Ne§);
         var _loc10_:Vector.<b2Body> = §_-Ro§;
         _loc2_ = this.§_-38§;
         while(_loc2_)
         {
            _loc2_.§_-2F§ &= ~b2Body.§_-9S§;
            _loc2_.m_sweep.§_-eq§ = 0;
            _loc2_ = _loc2_.§_-AX§;
         }
         _loc11_ = this.§_-kI§;
         while(_loc11_)
         {
            _loc11_.§_-2F§ &= ~(b2Contact.§_-59§ | b2Contact.§_-9S§);
            _loc11_ = _loc11_.§_-AX§;
         }
         _loc8_ = this.§_-8s§;
         while(_loc8_)
         {
            _loc8_.§_-pp§ = false;
            _loc8_ = _loc8_.§_-AX§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§_-kI§;
            while(_loc11_)
            {
               if(!(_loc11_.§_-Hm§() == true || _loc11_.§_-Ko§() == false || _loc11_.§while§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§_-2F§ & b2Contact.§_-59§)
                  {
                     _loc19_ = _loc11_.§_-t-§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§_-di§;
                     _loc4_ = _loc11_.include;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§_-Iy§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§_-Iy§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr511:
                        _loc11_ = _loc11_.§_-AX§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§_-eq§;
                     if(_loc5_.m_sweep.§_-eq§ < _loc6_.m_sweep.§_-eq§)
                     {
                        _loc20_ = _loc6_.m_sweep.§_-eq§;
                        _loc5_.m_sweep.§_-d5§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§_-eq§ < _loc5_.m_sweep.§_-eq§)
                     {
                        _loc20_ = _loc5_.m_sweep.§_-eq§;
                        _loc6_.m_sweep.§_-d5§(_loc20_);
                     }
                     _loc19_ = _loc11_.§_-ZT§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§_-t-§ = _loc19_;
                     _loc11_.§_-2F§ |= b2Contact.§_-59§;
                     §§goto(addr511);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr511);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§_-di§;
            _loc4_ = _loc12_.include;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §_-5v§.Set(_loc5_.m_sweep);
            §_-KL§.Set(_loc6_.m_sweep);
            _loc5_.§_-d5§(_loc13_);
            _loc6_.§_-d5§(_loc13_);
            _loc12_.§_-gI§(this.§_-pk§.§_-B4§);
            _loc12_.§_-2F§ &= ~b2Contact.§_-59§;
            if(_loc12_.§_-Hm§() == true || _loc12_.§_-Ko§() == false)
            {
               _loc5_.m_sweep.Set(§_-5v§);
               _loc6_.m_sweep.Set(§_-KL§);
               _loc5_.§_-Ax§();
               _loc6_.§_-Ax§();
            }
            else if(_loc12_.§_-fg§() != false)
            {
               if((_loc14_ = _loc5_).§_-Iy§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§_-H0§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§_-2F§ |= b2Body.§_-9S§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§_-T1§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§_-Iy§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§_-kI§;
                     while(_loc7_)
                     {
                        if(_loc9_.§_-88§ == _loc9_.§const§)
                        {
                           break;
                        }
                        if(!(_loc7_.§_-vb§.§_-2F§ & b2Contact.§_-9S§))
                        {
                           if(!(_loc7_.§_-vb§.§_-Hm§() == true || _loc7_.§_-vb§.§_-Ko§() == false || _loc7_.§_-vb§.§_-fg§() == false))
                           {
                              _loc9_.§_-ai§(_loc7_.§_-vb§);
                              _loc7_.§_-vb§.§_-2F§ |= b2Contact.§_-9S§;
                              if(!((_loc22_ = _loc7_.§_-Vi§).§_-2F§ & b2Body.§_-9S§))
                              {
                                 if(_loc22_.§_-Iy§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§_-d5§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§_-2F§ |= b2Body.§_-9S§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§_-kL§;
                     }
                     _loc21_ = _loc2_.§_-8s§;
                     while(_loc21_)
                     {
                        if(_loc9_.§_-lM§ != _loc9_.§_-tb§)
                        {
                           if(_loc21_.§_-bO§.§_-pp§ != true)
                           {
                              if((_loc22_ = _loc21_.§_-Vi§).§_-2Y§() != false)
                              {
                                 _loc9_.§_-RM§(_loc21_.§_-bO§);
                                 _loc21_.§_-bO§.§_-pp§ = true;
                                 if(!(_loc22_.§_-2F§ & b2Body.§_-9S§))
                                 {
                                    if(_loc22_.§_-Iy§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§_-d5§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§_-2F§ |= b2Body.§_-9S§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§_-kL§;
                     }
                  }
               }
               (_loc17_ = §_-4b§).§_-Fx§ = false;
               _loc17_.§_-Vj§ = (1 - _loc13_) * param1.§_-Vj§;
               _loc17_.§_-Ub§ = 1 / _loc17_.§_-Vj§;
               _loc17_.§_-4i§ = 0;
               _loc17_.§_-6-§ = param1.§_-6-§;
               _loc17_.§_-7D§ = param1.§_-7D§;
               _loc9_.§_-ks§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-FG§)
               {
                  _loc2_ = _loc9_.§_-0k§[_loc18_];
                  _loc2_.§_-2F§ &= ~b2Body.§_-9S§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§_-Iy§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§_-i1§();
                        _loc7_ = _loc2_.§_-kI§;
                        while(_loc7_)
                        {
                           _loc7_.§_-vb§.§_-2F§ &= ~b2Contact.§_-59§;
                           _loc7_ = _loc7_.§_-kL§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-88§)
               {
                  _loc11_ = _loc9_.§_-TH§[_loc18_];
                  _loc11_.§_-2F§ &= ~(b2Contact.§_-59§ | b2Contact.§_-9S§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-lM§)
               {
                  (_loc8_ = _loc9_.§_-nX§[_loc18_]).§_-pp§ = false;
                  _loc18_++;
               }
               this.§_-pk§.§_-hD§();
            }
         }
      }
      
      b2internal function § true§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§_-ut§();
         var _loc3_:b2Body = param1.§_-ir§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §_-eM§;
         switch(param1.§_-K9§)
         {
            case b2Joint.§_-Uo§:
               this.§_-ip§.§_-sK§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§_-WJ§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§_-GN§();
               _loc13_ = _loc11_.§_-3X§();
               this.§_-ip§.§_-sK§(_loc12_,_loc8_,_loc10_);
               this.§_-ip§.§_-sK§(_loc13_,_loc9_,_loc10_);
               this.§_-ip§.§_-sK§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§_-fD§:
               this.§_-ip§.§_-sK§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§_-ip§.§_-sK§(_loc6_,_loc8_,_loc10_);
               }
               this.§_-ip§.§_-sK§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§_-ip§.§_-sK§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §_-fK§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§_-K9§)
         {
            case b2Shape.§_-sH§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§_-Oi§(param2,_loc4_.§_-E4§);
               _loc6_ = _loc4_.§_-Bn§;
               _loc7_ = param2.R.col1;
               this.§_-ip§.§_-WG§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§_-Sw§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§_-1d§();
               _loc11_ = _loc9_.§_-Ua§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§_-Oi§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§_-ip§.§_-rN§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§_-bK§:
               _loc13_ = param1 as b2EdgeShape;
               this.§_-ip§.§_-sK§(b2Math.§_-Oi§(param2,_loc13_.GetVertex1()),b2Math.§_-Oi§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

package §_-WW§
{
   import §_-26§.*;
   import §_-E6§.*;
   import §_-cw§.*;
   import §_-dx§.*;
   import §_-iK§.b2Controller;
   import §_-iK§.b2ControllerEdge;
   import §_-iO§.*;
   import §_-tK§.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var §_-DP§:b2Transform = new b2Transform();
      
      private static var §_-EH§:b2Sweep = new b2Sweep();
      
      private static var §_-jr§:b2Sweep = new b2Sweep();
      
      private static var §_-Te§:b2TimeStep = new b2TimeStep();
      
      private static var §_-db§:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var §_-Dd§:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var §_-Ys§:Boolean;
      
      private static var §_-dc§:Boolean;
      
      public static const §_-0f§:int = 1;
      
      public static const §_-lZ§:int = 2;
       
      
      private var §_-qL§:Vector.<b2Body>;
      
      b2internal var §_-Sr§:int;
      
      b2internal var §_-7a§:b2ContactManager;
      
      private var §_-iW§:b2ContactSolver;
      
      private var §_-l2§:b2Island;
      
      b2internal var §_-Q3§:b2Body;
      
      private var §_-9w§:b2Joint;
      
      b2internal var §_-Zv§:b2Contact;
      
      private var §_-E3§:int;
      
      b2internal var §_-6u§:int;
      
      private var §_-Tc§:int;
      
      private var §_-4F§:b2Controller;
      
      private var §_-Jl§:int;
      
      private var §_-Xz§:b2Vec2;
      
      private var §_-F5§:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var §_-eg§:b2DestructionListener;
      
      private var §_-17§:b2DebugDraw;
      
      private var §_-ND§:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         this.§_-qL§ = new Vector.<b2Body>();
         this.§_-7a§ = new b2ContactManager();
         this.§_-iW§ = new b2ContactSolver();
         this.§_-l2§ = new b2Island();
         super();
         this.§_-eg§ = null;
         this.§_-17§ = null;
         this.§_-Q3§ = null;
         this.§_-Zv§ = null;
         this.§_-9w§ = null;
         this.§_-4F§ = null;
         this.§_-E3§ = 0;
         this.§_-6u§ = 0;
         this.§_-Tc§ = 0;
         this.§_-Jl§ = 0;
         §_-Ys§ = true;
         §_-dc§ = true;
         this.§_-F5§ = param2;
         this.§_-Xz§ = param1;
         this.§_-ND§ = 0;
         this.§_-7a§.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.§_-LE§(_loc3_);
      }
      
      public function §_-4-§(param1:b2DestructionListener) : void
      {
         this.§_-eg§ = param1;
      }
      
      public function §_-Gr§(param1:b2ContactFilter) : void
      {
         this.§_-7a§.§_-w2§ = param1;
      }
      
      public function §_-gm§(param1:b2ContactListener) : void
      {
         this.§_-7a§.§_-cx§ = param1;
      }
      
      public function §_-ZF§(param1:b2DebugDraw) : void
      {
         this.§_-17§ = param1;
      }
      
      public function §_-O-§(param1:§_-S8§) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:§_-S8§ = this.§_-7a§.§_-ZV§;
         this.§_-7a§.§_-ZV§ = param1;
         var _loc3_:b2Body = this.§_-Q3§;
         while(_loc3_)
         {
            _loc4_ = _loc3_.§_-i4§;
            while(_loc4_)
            {
               _loc4_.§_-Mu§ = param1.§_-BX§(_loc2_.§_-Oz§(_loc4_.§_-Mu§),_loc4_);
               _loc4_ = _loc4_.§_-Lg§;
            }
            _loc3_ = _loc3_.§_-Lg§;
         }
      }
      
      public function §_-Iz§() : void
      {
         this.§_-7a§.§_-ZV§.§_-Iz§();
      }
      
      public function §_-sP§() : int
      {
         return this.§_-7a§.§_-ZV§.§_-sP§();
      }
      
      public function §_-LE§(param1:b2BodyDef) : b2Body
      {
         if(this.§_-OM§() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.§_-mb§ = null;
         _loc2_.§_-Lg§ = this.§_-Q3§;
         if(this.§_-Q3§)
         {
            this.§_-Q3§.§_-mb§ = _loc2_;
         }
         this.§_-Q3§ = _loc2_;
         ++this.§_-E3§;
         return _loc2_;
      }
      
      public function §_-Ts§(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.§_-OM§() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.§_-9w§;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.§_-70§;
            if(this.§_-eg§)
            {
               this.§_-eg§.§_-5t§(_loc6_.§_-OV§);
            }
            this.§_-27§(_loc6_.§_-OV§);
         }
         var _loc3_:b2ControllerEdge = param1.§_-4F§;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.§_-0Z§;
            _loc7_.§_-V7§.§_-Du§(param1);
         }
         var _loc4_:b2ContactEdge = param1.§_-Zv§;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.§_-70§;
            this.§_-7a§.§_-Hh§(_loc8_.§_-xH§);
         }
         param1.§_-Zv§ = null;
         var _loc5_:b2Fixture = param1.§_-i4§;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.§_-Lg§;
            if(this.§_-eg§)
            {
               this.§_-eg§.§_-L-§(_loc9_);
            }
            _loc9_.§_-o1§(this.§_-7a§.§_-ZV§);
            _loc9_.§_-Hh§();
         }
         param1.§_-i4§ = null;
         param1.§_-tS§ = 0;
         if(param1.§_-mb§)
         {
            param1.§_-mb§.§_-Lg§ = param1.§_-Lg§;
         }
         if(param1.§_-Lg§)
         {
            param1.§_-Lg§.§_-mb§ = param1.§_-mb§;
         }
         if(param1 == this.§_-Q3§)
         {
            this.§_-Q3§ = param1.§_-Lg§;
         }
         --this.§_-E3§;
      }
      
      public function §_-oL§(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.§_-JU§(param1,null);
         _loc2_.§_-mb§ = null;
         _loc2_.§_-Lg§ = this.§_-9w§;
         if(this.§_-9w§)
         {
            this.§_-9w§.§_-mb§ = _loc2_;
         }
         this.§_-9w§ = _loc2_;
         ++this.§_-Tc§;
         _loc2_.§_-wo§.§_-OV§ = _loc2_;
         _loc2_.§_-wo§.§_-ik§ = _loc2_.§_-7f§;
         _loc2_.§_-wo§.§_-Kz§ = null;
         _loc2_.§_-wo§.§_-70§ = _loc2_.§_-t6§.§_-9w§;
         if(_loc2_.§_-t6§.§_-9w§)
         {
            _loc2_.§_-t6§.§_-9w§.§_-Kz§ = _loc2_.§_-wo§;
         }
         _loc2_.§_-t6§.§_-9w§ = _loc2_.§_-wo§;
         _loc2_.§_-SH§.§_-OV§ = _loc2_;
         _loc2_.§_-SH§.§_-ik§ = _loc2_.§_-t6§;
         _loc2_.§_-SH§.§_-Kz§ = null;
         _loc2_.§_-SH§.§_-70§ = _loc2_.§_-7f§.§_-9w§;
         if(_loc2_.§_-7f§.§_-9w§)
         {
            _loc2_.§_-7f§.§_-9w§.§_-Kz§ = _loc2_.§_-SH§;
         }
         _loc2_.§_-7f§.§_-9w§ = _loc2_.§_-SH§;
         var _loc3_:b2Body = param1.§_-33§;
         var _loc4_:b2Body = param1.§_-Pt§;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.§_-s8§();
            while(_loc5_)
            {
               if(_loc5_.§_-ik§ == _loc3_)
               {
                  _loc5_.§_-xH§.§_-1l§();
               }
               _loc5_ = _loc5_.§_-70§;
            }
         }
         return _loc2_;
      }
      
      public function §_-27§(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.§_-3G§;
         if(param1.§_-mb§)
         {
            param1.§_-mb§.§_-Lg§ = param1.§_-Lg§;
         }
         if(param1.§_-Lg§)
         {
            param1.§_-Lg§.§_-mb§ = param1.§_-mb§;
         }
         if(param1 == this.§_-9w§)
         {
            this.§_-9w§ = param1.§_-Lg§;
         }
         var _loc3_:b2Body = param1.§_-t6§;
         var _loc4_:b2Body = param1.§_-7f§;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.§_-wo§.§_-Kz§)
         {
            param1.§_-wo§.§_-Kz§.§_-70§ = param1.§_-wo§.§_-70§;
         }
         if(param1.§_-wo§.§_-70§)
         {
            param1.§_-wo§.§_-70§.§_-Kz§ = param1.§_-wo§.§_-Kz§;
         }
         if(param1.§_-wo§ == _loc3_.§_-9w§)
         {
            _loc3_.§_-9w§ = param1.§_-wo§.§_-70§;
         }
         param1.§_-wo§.§_-Kz§ = null;
         param1.§_-wo§.§_-70§ = null;
         if(param1.§_-SH§.§_-Kz§)
         {
            param1.§_-SH§.§_-Kz§.§_-70§ = param1.§_-SH§.§_-70§;
         }
         if(param1.§_-SH§.§_-70§)
         {
            param1.§_-SH§.§_-70§.§_-Kz§ = param1.§_-SH§.§_-Kz§;
         }
         if(param1.§_-SH§ == _loc4_.§_-9w§)
         {
            _loc4_.§_-9w§ = param1.§_-SH§.§_-70§;
         }
         param1.§_-SH§.§_-Kz§ = null;
         param1.§_-SH§.§_-70§ = null;
         b2Joint.§_-Hh§(param1,null);
         --this.§_-Tc§;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.§_-s8§();
            while(_loc5_)
            {
               if(_loc5_.§_-ik§ == _loc3_)
               {
                  _loc5_.§_-xH§.§_-1l§();
               }
               _loc5_ = _loc5_.§_-70§;
            }
         }
      }
      
      public function §_-3C§(param1:b2Controller) : b2Controller
      {
         param1.§_-Lg§ = this.§_-4F§;
         param1.§_-mb§ = null;
         this.§_-4F§ = param1;
         param1.m_world = this;
         ++this.§_-Jl§;
         return param1;
      }
      
      public function §_-H4§(param1:b2Controller) : void
      {
         if(param1.§_-mb§)
         {
            param1.§_-mb§.§_-Lg§ = param1.§_-Lg§;
         }
         if(param1.§_-Lg§)
         {
            param1.§_-Lg§.§_-mb§ = param1.§_-mb§;
         }
         if(this.§_-4F§ == param1)
         {
            this.§_-4F§ = param1.§_-Lg§;
         }
         --this.§_-Jl§;
      }
      
      public function §_-RZ§(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.§_-Lg§ = this.§_-4F§;
         param1.§_-mb§ = null;
         if(this.§_-4F§)
         {
            this.§_-4F§.§_-mb§ = param1;
         }
         this.§_-4F§ = param1;
         ++this.§_-Jl§;
         param1.m_world = this;
         return param1;
      }
      
      public function §_-OE§(param1:b2Controller) : void
      {
         param1.§_-Fa§();
         if(param1.§_-Lg§)
         {
            param1.§_-Lg§.§_-mb§ = param1.§_-mb§;
         }
         if(param1.§_-mb§)
         {
            param1.§_-mb§.§_-Lg§ = param1.§_-Lg§;
         }
         if(param1 == this.§_-4F§)
         {
            this.§_-4F§ = param1.§_-Lg§;
         }
         --this.§_-Jl§;
      }
      
      public function §_-Ob§(param1:Boolean) : void
      {
         §_-Ys§ = param1;
      }
      
      public function §_-F3§(param1:Boolean) : void
      {
         §_-dc§ = param1;
      }
      
      public function §_-vh§() : int
      {
         return this.§_-E3§;
      }
      
      public function §_-j6§() : int
      {
         return this.§_-Tc§;
      }
      
      public function §_-IS§() : int
      {
         return this.§_-6u§;
      }
      
      public function §_-Am§(param1:b2Vec2) : void
      {
         this.§_-Xz§ = param1;
      }
      
      public function §get §() : b2Vec2
      {
         return this.§_-Xz§;
      }
      
      public function §_-ED§() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function §_-g8§(param1:Number, param2:int, param3:int) : void
      {
         if(this.§_-Sr§ & §_-0f§)
         {
            this.§_-7a§.§_-3F§();
            this.§_-Sr§ &= ~§_-0f§;
         }
         this.§_-Sr§ |= §_-lZ§;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).§_-a9§ = param1;
         _loc4_.§_-Gh§ = param2;
         _loc4_.§_-Gq§ = param3;
         if(param1 > 0)
         {
            _loc4_.§_-c-§ = 1 / param1;
         }
         else
         {
            _loc4_.§_-c-§ = 0;
         }
         _loc4_.§_-3W§ = this.§_-ND§ * param1;
         _loc4_.§_-xV§ = §_-Ys§;
         this.§_-7a§.§_-Tn§();
         if(_loc4_.§_-a9§ > 0)
         {
            this.§_-Ok§(_loc4_);
         }
         if(§_-dc§ && _loc4_.§_-a9§ > 0)
         {
            this.§_-1t§(_loc4_);
         }
         if(_loc4_.§_-a9§ > 0)
         {
            this.§_-ND§ = _loc4_.§_-c-§;
         }
         this.§_-Sr§ &= ~§_-lZ§;
      }
      
      public function §_-Dt§() : void
      {
         var _loc1_:b2Body = this.§_-Q3§;
         while(_loc1_)
         {
            _loc1_.§_-5E§.§_-pZ§();
            _loc1_.§_-uX§ = 0;
            _loc1_ = _loc1_.§_-Lg§;
         }
      }
      
      public function §_-om§() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:§_-S8§ = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.§_-17§ == null)
         {
            return;
         }
         this.§_-17§.§_-ov§.graphics.clear();
         var _loc1_:uint = this.§_-17§.§_-fk§();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.§_-1W§)
         {
            _loc3_ = this.§_-Q3§;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.§_-jg§();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.§_-ml§() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.§_-gs§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-AY§() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.§_-gs§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.§_-AY§() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.§_-gs§(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.§_-gs§(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.§_-gs§(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.§_-Lg§;
               }
               _loc3_ = _loc3_.§_-Lg§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-aP§)
         {
            _loc6_ = this.§_-9w§;
            while(_loc6_)
            {
               this.§_-gF§(_loc6_);
               _loc6_ = _loc6_.§_-Lg§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-QK§)
         {
            _loc16_ = this.§_-4F§;
            while(_loc16_)
            {
               _loc16_.§_-RJ§(this.§_-17§);
               _loc16_ = _loc16_.§_-Lg§;
            }
         }
         if(_loc1_ & b2DebugDraw.§_-AA§)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.§_-7a§.§_-Zv§;
            while(_loc17_)
            {
               _loc18_ = _loc17_.§_-8a§();
               _loc19_ = _loc17_.§_-tA§();
               _loc20_ = _loc18_.§_-Qe§().§_-qN§();
               _loc21_ = _loc19_.§_-Qe§().§_-qN§();
               this.§_-17§.§_-ee§(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.§_-7P§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-G2§)
         {
            _loc7_ = this.§_-7a§.§_-ZV§;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.§_-Q3§;
            while(_loc3_)
            {
               if(_loc3_.§_-ml§() != false)
               {
                  _loc4_ = _loc3_.§_-jg§();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.§_-Oz§(_loc4_.§_-Mu§);
                     _loc14_[0].Set(_loc22_.§_-eZ§.x,_loc22_.§_-eZ§.y);
                     _loc14_[1].Set(_loc22_.§_-ad§.x,_loc22_.§_-eZ§.y);
                     _loc14_[2].Set(_loc22_.§_-ad§.x,_loc22_.§_-ad§.y);
                     _loc14_[3].Set(_loc22_.§_-eZ§.x,_loc22_.§_-ad§.y);
                     this.§_-17§.§_-ut§(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.§_-7P§();
                  }
               }
               _loc3_ = _loc3_.§_-7P§();
            }
         }
         if(_loc1_ & b2DebugDraw.§_-as§)
         {
            _loc3_ = this.§_-Q3§;
            while(_loc3_)
            {
               (_loc11_ = §_-DP§).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.§_-Hj§();
               this.§_-17§.§_-qm§(_loc11_);
               _loc3_ = _loc3_.§_-Lg§;
            }
         }
      }
      
      public function §_-nr§(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:§_-S8§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.§_-7a§.§_-ZV§;
         broadPhase.§_-gi§(WorldQueryWrapper,aabb);
      }
      
      public function §_-EY§(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:§_-S8§ = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.§_-9u§(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().§_-LW§()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.§_-Bk§();
         }
         broadPhase = this.§_-7a§.§_-ZV§;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.§_-gi§(WorldQueryWrapper,aabb);
      }
      
      public function §_-Q4§(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:§_-S8§ = null;
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
         broadPhase = this.§_-7a§.§_-ZV§;
         var aabb:b2AABB = new b2AABB();
         aabb.§_-eZ§.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.§_-ad§.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.§_-gi§(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:§_-S8§ = null;
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
            return param1.§_-CW§;
         };
         broadPhase = this.§_-7a§.§_-ZV§;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function §_-mW§(param1:b2Vec2, param2:b2Vec2) : b2Fixture
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
      
      public function §_-iH§(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
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
      
      public function §_-XL§() : b2Body
      {
         return this.§_-Q3§;
      }
      
      public function §_-Qp§() : b2Joint
      {
         return this.§_-9w§;
      }
      
      public function §_-s8§() : b2Contact
      {
         return this.§_-Zv§;
      }
      
      public function §_-OM§() : Boolean
      {
         return (this.§_-Sr§ & §_-lZ§) > 0;
      }
      
      b2internal function §_-Ok§(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.§_-4F§;
         while(_loc3_)
         {
            _loc3_.§_-g8§(param1);
            _loc3_ = _loc3_.§_-Lg§;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.§_-l2§).§_-t1§(this.§_-E3§,this.§_-6u§,this.§_-Tc§,null,this.§_-7a§.§_-cx§,this.§_-iW§);
         _loc2_ = this.§_-Q3§;
         while(_loc2_)
         {
            _loc2_.§_-Sr§ &= ~b2Body.§_-MQ§;
            _loc2_ = _loc2_.§_-Lg§;
         }
         var _loc5_:b2Contact = this.§_-Zv§;
         while(_loc5_)
         {
            _loc5_.§_-Sr§ &= ~b2Contact.§_-MQ§;
            _loc5_ = _loc5_.§_-Lg§;
         }
         var _loc6_:b2Joint = this.§_-9w§;
         while(_loc6_)
         {
            _loc6_.§_-53§ = false;
            _loc6_ = _loc6_.§_-Lg§;
         }
         var _loc7_:int = this.§_-E3§;
         var _loc8_:Vector.<b2Body> = this.§_-qL§;
         var _loc9_:b2Body = this.§_-Q3§;
         while(_loc9_)
         {
            if(!(_loc9_.§_-Sr§ & b2Body.§_-MQ§))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.§_-ml§() == false))
               {
                  if(_loc9_.§_-AY§() != b2Body.b2_staticBody)
                  {
                     _loc4_.§_-Fa§();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.§_-Sr§ |= b2Body.§_-MQ§;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.§_-Km§(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.§_-AY§() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.§_-Zv§;
                           while(_loc13_)
                           {
                              if(!(_loc13_.§_-xH§.§_-Sr§ & b2Contact.§_-MQ§))
                              {
                                 if(!(_loc13_.§_-xH§.§_-gA§() == true || _loc13_.§_-xH§.§_-CN§() == false || _loc13_.§_-xH§.§_-2W§() == false))
                                 {
                                    _loc4_.§_-RK§(_loc13_.§_-xH§);
                                    _loc13_.§_-xH§.§_-Sr§ |= b2Contact.§_-MQ§;
                                    if(!((_loc12_ = _loc13_.§_-ik§).§_-Sr§ & b2Body.§_-MQ§))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-Sr§ |= b2Body.§_-MQ§;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.§_-70§;
                           }
                           _loc14_ = _loc2_.§_-9w§;
                           while(_loc14_)
                           {
                              if(_loc14_.§_-OV§.§_-53§ != true)
                              {
                                 if((_loc12_ = _loc14_.§_-ik§).§_-ml§() != false)
                                 {
                                    _loc4_.§var §(_loc14_.§_-OV§);
                                    _loc14_.§_-OV§.§_-53§ = true;
                                    if(!(_loc12_.§_-Sr§ & b2Body.§_-MQ§))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.§_-Sr§ |= b2Body.§_-MQ§;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.§_-70§;
                           }
                        }
                     }
                     _loc4_.§_-Ok§(param1,this.§_-Xz§,this.§_-F5§);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.§_-E3§)
                     {
                        _loc2_ = _loc4_.§_-nz§[_loc11_];
                        if(_loc2_.§_-AY§() == b2Body.b2_staticBody)
                        {
                           _loc2_.§_-Sr§ &= ~b2Body.§_-MQ§;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.§_-Lg§;
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
         _loc2_ = this.§_-Q3§;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.§_-ml§() == false))
            {
               if(_loc2_.§_-AY§() != b2Body.b2_staticBody)
               {
                  _loc2_.§_-bx§();
               }
            }
            _loc2_ = _loc2_.§_-Lg§;
         }
         this.§_-7a§.§_-3F§();
      }
      
      b2internal function §_-1t§(param1:b2TimeStep) : void
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
         (_loc9_ = this.§_-l2§).§_-t1§(this.§_-E3§,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.§_-7a§.§_-cx§,this.§_-iW§);
         var _loc10_:Vector.<b2Body> = §_-db§;
         _loc2_ = this.§_-Q3§;
         while(_loc2_)
         {
            _loc2_.§_-Sr§ &= ~b2Body.§_-MQ§;
            _loc2_.m_sweep.§_-Oc§ = 0;
            _loc2_ = _loc2_.§_-Lg§;
         }
         _loc11_ = this.§_-Zv§;
         while(_loc11_)
         {
            _loc11_.§_-Sr§ &= ~(b2Contact.§_-aq§ | b2Contact.§_-MQ§);
            _loc11_ = _loc11_.§_-Lg§;
         }
         _loc8_ = this.§_-9w§;
         while(_loc8_)
         {
            _loc8_.§_-53§ = false;
            _loc8_ = _loc8_.§_-Lg§;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.§_-Zv§;
            while(_loc11_)
            {
               if(!(_loc11_.§_-gA§() == true || _loc11_.§_-CN§() == false || _loc11_.§_-0w§() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.§_-Sr§ & b2Contact.§_-aq§)
                  {
                     _loc19_ = _loc11_.§_-xM§;
                  }
                  else
                  {
                     _loc3_ = _loc11_.§_-Ny§;
                     _loc4_ = _loc11_.§_-83§;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.§_-AY§() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.§_-AY§() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        addr491:
                        _loc11_ = _loc11_.§_-Lg§;
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.§_-Oc§;
                     if(_loc5_.m_sweep.§_-Oc§ < _loc6_.m_sweep.§_-Oc§)
                     {
                        _loc20_ = _loc6_.m_sweep.§_-Oc§;
                        _loc5_.m_sweep.§_-N9§(_loc20_);
                     }
                     else if(_loc6_.m_sweep.§_-Oc§ < _loc5_.m_sweep.§_-Oc§)
                     {
                        _loc20_ = _loc5_.m_sweep.§_-Oc§;
                        _loc6_.m_sweep.§_-N9§(_loc20_);
                     }
                     _loc19_ = _loc11_.§_-ao§(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.§_-xM§ = _loc19_;
                     _loc11_.§_-Sr§ |= b2Contact.§_-aq§;
                     §§goto(addr491);
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
               §§goto(addr491);
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.§_-Ny§;
            _loc4_ = _loc12_.§_-83§;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            §_-EH§.Set(_loc5_.m_sweep);
            §_-jr§.Set(_loc6_.m_sweep);
            _loc5_.§_-N9§(_loc13_);
            _loc6_.§_-N9§(_loc13_);
            _loc12_.§_-XS§(this.§_-7a§.§_-cx§);
            _loc12_.§_-Sr§ &= ~b2Contact.§_-aq§;
            if(_loc12_.§_-gA§() == true || _loc12_.§_-CN§() == false)
            {
               _loc5_.m_sweep.Set(§_-EH§);
               _loc6_.m_sweep.Set(§_-jr§);
               _loc5_.§_-B0§();
               _loc6_.§_-B0§();
            }
            else if(_loc12_.§_-2W§() != false)
            {
               if((_loc14_ = _loc5_).§_-AY§() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.§_-Fa§();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.§_-Sr§ |= b2Body.§_-MQ§;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.§_-Km§(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.§_-AY§() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.§_-Zv§;
                     while(_loc7_)
                     {
                        if(_loc9_.§_-6u§ == _loc9_.§_-QO§)
                        {
                           break;
                        }
                        if(!(_loc7_.§_-xH§.§_-Sr§ & b2Contact.§_-MQ§))
                        {
                           if(!(_loc7_.§_-xH§.§_-gA§() == true || _loc7_.§_-xH§.§_-CN§() == false || _loc7_.§_-xH§.§_-2W§() == false))
                           {
                              _loc9_.§_-RK§(_loc7_.§_-xH§);
                              _loc7_.§_-xH§.§_-Sr§ |= b2Contact.§_-MQ§;
                              if(!((_loc22_ = _loc7_.§_-ik§).§_-Sr§ & b2Body.§_-MQ§))
                              {
                                 if(_loc22_.§_-AY§() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.§_-N9§(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.§_-Sr§ |= b2Body.§_-MQ§;
                              }
                           }
                        }
                        _loc7_ = _loc7_.§_-70§;
                     }
                     _loc21_ = _loc2_.§_-9w§;
                     while(_loc21_)
                     {
                        if(_loc9_.§_-Tc§ != _loc9_.§_-Xw§)
                        {
                           if(_loc21_.§_-OV§.§_-53§ != true)
                           {
                              if((_loc22_ = _loc21_.§_-ik§).§_-ml§() != false)
                              {
                                 _loc9_.§var §(_loc21_.§_-OV§);
                                 _loc21_.§_-OV§.§_-53§ = true;
                                 if(!(_loc22_.§_-Sr§ & b2Body.§_-MQ§))
                                 {
                                    if(_loc22_.§_-AY§() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.§_-N9§(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.§_-Sr§ |= b2Body.§_-MQ§;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.§_-70§;
                     }
                  }
               }
               (_loc17_ = §_-Te§).§_-xV§ = false;
               _loc17_.§_-a9§ = (1 - _loc13_) * param1.§_-a9§;
               _loc17_.§_-c-§ = 1 / _loc17_.§_-a9§;
               _loc17_.§_-3W§ = 0;
               _loc17_.§_-Gh§ = param1.§_-Gh§;
               _loc17_.§_-Gq§ = param1.§_-Gq§;
               _loc9_.§_-1t§(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-E3§)
               {
                  _loc2_ = _loc9_.§_-nz§[_loc18_];
                  _loc2_.§_-Sr§ &= ~b2Body.§_-MQ§;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.§_-AY§() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.§_-bx§();
                        _loc7_ = _loc2_.§_-Zv§;
                        while(_loc7_)
                        {
                           _loc7_.§_-xH§.§_-Sr§ &= ~b2Contact.§_-aq§;
                           _loc7_ = _loc7_.§_-70§;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-6u§)
               {
                  _loc11_ = _loc9_.§_-o3§[_loc18_];
                  _loc11_.§_-Sr§ &= ~(b2Contact.§_-aq§ | b2Contact.§_-MQ§);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.§_-Tc§)
               {
                  (_loc8_ = _loc9_.§_-0r§[_loc18_]).§_-53§ = false;
                  _loc18_++;
               }
               this.§_-7a§.§_-3F§();
            }
         }
      }
      
      b2internal function §_-gF§(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.§_-qv§();
         var _loc3_:b2Body = param1.§_-3h§();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = §_-Dd§;
         switch(param1.§_-9f§)
         {
            case b2Joint.§_-e9§:
               this.§_-17§.§_-ee§(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.§_-fP§:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).§_-4x§();
               _loc13_ = _loc11_.§_-8i§();
               this.§_-17§.§_-ee§(_loc12_,_loc8_,_loc10_);
               this.§_-17§.§_-ee§(_loc13_,_loc9_,_loc10_);
               this.§_-17§.§_-ee§(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.§_-r9§:
               this.§_-17§.§_-ee§(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.§_-17§.§_-ee§(_loc6_,_loc8_,_loc10_);
               }
               this.§_-17§.§_-ee§(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.§_-17§.§_-ee§(_loc7_,_loc9_,_loc10_);
                  break;
               }
         }
      }
      
      b2internal function §_-gs§(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
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
         switch(param1.§_-9f§)
         {
            case b2Shape.§_-UU§:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.§_-nn§(param2,_loc4_.§_-B1§);
               _loc6_ = _loc4_.§_-8z§;
               _loc7_ = param2.R.col1;
               this.§_-17§.§_-OP§(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.§_-fB§:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).§_-tH§();
               _loc11_ = _loc9_.§_-so§();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.§_-nn§(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.§_-17§.§_-SP§(_loc12_,_loc10_,param3);
               break;
            case b2Shape.§_-Ci§:
               _loc13_ = param1 as b2EdgeShape;
               this.§_-17§.§_-ee§(b2Math.§_-nn§(param2,_loc13_.GetVertex1()),b2Math.§_-nn§(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}

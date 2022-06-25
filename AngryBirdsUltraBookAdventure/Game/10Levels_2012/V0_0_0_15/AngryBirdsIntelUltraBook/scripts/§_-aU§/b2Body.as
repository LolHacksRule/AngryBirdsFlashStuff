package §_-aU§
{
   import §_-03n§.b2EdgeShape;
   import §_-03n§.b2MassData;
   import §_-03n§.b2Shape;
   import §_-09-§.b2JointEdge;
   import §_-0DM§.b2Contact;
   import §_-0DM§.b2ContactEdge;
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-YZ§.b2ControllerEdge;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Sweep;
   import §_-Yp§.b2Transform;
   import §_-Yp§.b2Vec2;
   import §_-gE§.§_-We§;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §_-X0§:b2Transform;
      
      b2internal static var §_-0AI§:uint = 1;
      
      b2internal static var §_-Lb§:uint = 2;
      
      b2internal static var §_-W7§:uint = 4;
      
      b2internal static var §_-0-F§:uint = 8;
      
      b2internal static var §_-XJ§:uint = 16;
      
      b2internal static var §_-cp§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §_-X0§ = new b2Transform();
         }
         while(true)
         {
            §_-0AI§ = 1;
            while(!(_loc2_ && _loc1_))
            {
               §_-Lb§ = 2;
               loop2:
               while(!_loc2_)
               {
                  §_-W7§ = 4;
                  loop3:
                  while(true)
                  {
                     §_-0-F§ = 8;
                     loop4:
                     while(true)
                     {
                        §_-XJ§ = 16;
                        loop5:
                        while(true)
                        {
                           §_-cp§ = 32;
                           loop6:
                           while(!_loc2_)
                           {
                              b2_staticBody = 0;
                              loop7:
                              while(!_loc2_)
                              {
                                 b2_kinematicBody = 1;
                                 while(true)
                                 {
                                    if(_loc1_ || b2Body)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    continue loop7;
                                    addr72:
                                    b2_dynamicBody = 2;
                                    if(!(_loc2_ && b2Body))
                                    {
                                       if(!_loc2_)
                                       {
                                          return;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 continue loop6;
                              }
                              continue loop5;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
      }
      
      b2internal var §_-7R§:uint;
      
      b2internal var §_-1c§:int;
      
      b2internal var §_-Sb§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §_-kZ§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §_-wp§:b2Vec2;
      
      b2internal var §_-cH§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §_-021§:b2Body;
      
      b2internal var §_-oz§:b2Body;
      
      b2internal var §_-7L§:b2Fixture;
      
      b2internal var §_-jM§:int;
      
      b2internal var §_-DZ§:b2ControllerEdge;
      
      b2internal var §_-04s§:int;
      
      b2internal var §_-6c§:b2JointEdge;
      
      b2internal var §_-4p§:b2ContactEdge;
      
      b2internal var §_-5W§:Number;
      
      b2internal var §_-03A§:Number;
      
      b2internal var §_-Eq§:Number;
      
      b2internal var §_-Dz§:Number;
      
      b2internal var §_-Ld§:Number;
      
      b2internal var §_-aS§:Number;
      
      b2internal var §_-cz§:Number;
      
      b2internal var §_-yN§:Number;
      
      private var §_-oP§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.m_xf = new b2Transform();
            loop0:
            while(true)
            {
               this.m_sweep = new b2Sweep();
               loop1:
               while(true)
               {
                  this.§_-kZ§ = new b2Vec2();
                  addr269:
                  while(true)
                  {
                     this.§_-wp§ = new b2Vec2();
                     while(true)
                     {
                        super();
                        if(!(_loc6_ && param1))
                        {
                           continue loop0;
                        }
                        addr293:
                        var _loc3_:b2Mat22 = this.m_xf.R;
                        var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                        if(!(_loc6_ && _loc3_))
                        {
                           addr803:
                           this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
                           addr804:
                           addr789:
                           addr790:
                           addr795:
                           addr799:
                           addr801:
                           addr798:
                           addr796:
                           addr802:
                           addr793:
                           §§push(this.m_sweep.c);
                           §§push(_loc3_.col1);
                           if(!_loc6_)
                           {
                              §§push(§§pop().y);
                              if(!(_loc6_ && param1))
                              {
                                 if(_loc7_ || param1)
                                 {
                                    §§push(_loc4_.x);
                                    if(!_loc6_)
                                    {
                                       if(_loc7_)
                                       {
                                          addr741:
                                          §§push(§§pop() * §§pop());
                                          if(_loc7_ || param2)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(_loc3_.col2);
                                                if(_loc7_)
                                                {
                                                   addr760:
                                                   §§push(§§pop().y);
                                                   §§push(_loc4_.y);
                                                   if(!_loc6_)
                                                   {
                                                      addr765:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc7_ || this)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            addr785:
                                                            §§pop().y = §§pop() + §§pop();
                                                            addr786:
                                                            §§push(this.m_sweep.c);
                                                            if(_loc7_ || param1)
                                                            {
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  addr697:
                                                                  §§push(this.m_sweep.c.x);
                                                                  §§push(this.m_xf.position.x);
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     addr709:
                                                                     §§pop().x = §§pop() + §§pop();
                                                                     addr710:
                                                                     §§push(this.m_sweep);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(§§pop().c);
                                                                        if(_loc7_ || _loc3_)
                                                                        {
                                                                           §§push(this.m_sweep);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop().c);
                                                                              if(_loc7_ || param2)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(this.m_xf);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(§§pop().position);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr662:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(_loc7_ || param1)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§pop().y = §§pop();
                                                                                                            addr674:
                                                                                                            §§push(this.m_sweep);
                                                                                                            if(!(_loc6_ && this))
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§pop().c0.SetV(this.m_sweep.c);
                                                                                                                     this.§_-6c§ = null;
                                                                                                                     this.§_-DZ§ = null;
                                                                                                                     addr586:
                                                                                                                     addr618:
                                                                                                                     addr598:
                                                                                                                     if(_loc7_ || _loc3_)
                                                                                                                     {
                                                                                                                        this.§_-4p§ = null;
                                                                                                                        addr574:
                                                                                                                        if(_loc7_ || _loc3_)
                                                                                                                        {
                                                                                                                           this.§_-04s§ = 0;
                                                                                                                           this.§_-021§ = null;
                                                                                                                           this.§_-oz§ = null;
                                                                                                                           this.§_-kZ§.SetV(param1.§_-02c§);
                                                                                                                           this.m_angularVelocity = param1.§_-Hp§;
                                                                                                                           this.§_-aS§ = param1.§_-ov§;
                                                                                                                           this.§_-cz§ = param1.§_-ZI§;
                                                                                                                           addr559:
                                                                                                                           addr541:
                                                                                                                           addr554:
                                                                                                                           addr547:
                                                                                                                           addr569:
                                                                                                                           addr564:
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              this.§_-wp§.Set(0,0);
                                                                                                                              this.§_-cH§ = 0;
                                                                                                                              addr527:
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 if(_loc7_ || param1)
                                                                                                                                 {
                                                                                                                                    if(_loc7_ || param2)
                                                                                                                                    {
                                                                                                                                       this.§_-yN§ = 0;
                                                                                                                                       addr492:
                                                                                                                                       if(!(_loc6_ && param1))
                                                                                                                                       {
                                                                                                                                          this.§_-1c§ = param1.type;
                                                                                                                                          addr485:
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             if(this.§_-1c§ == b2_dynamicBody)
                                                                                                                                             {
                                                                                                                                                addr474:
                                                                                                                                                this.§_-5W§ = 1;
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   this.§_-03A§ = 1;
                                                                                                                                                   addr459:
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc6_ && param1))
                                                                                                                                                      {
                                                                                                                                                         addr406:
                                                                                                                                                         this.§_-Eq§ = 0;
                                                                                                                                                         addr410:
                                                                                                                                                         if(!(_loc6_ && param1))
                                                                                                                                                         {
                                                                                                                                                            this.§_-Dz§ = 0;
                                                                                                                                                            addr384:
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc7_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     this.§_-Ld§ = param1.§_-sj§;
                                                                                                                                                                     addr377:
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        this.§_-oP§ = param1.§_-05u§;
                                                                                                                                                                        addr357:
                                                                                                                                                                        if(_loc7_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc6_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              this.§_-7L§ = null;
                                                                                                                                                                              addr347:
                                                                                                                                                                              if(_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§_-jM§ = 0;
                                                                                                                                                                                    if(!(_loc6_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc7_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc7_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr574);
                                                                                                                                                                                             }
                                                                                                                                                                                             return;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr527);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr410);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr347);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr559);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr357);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr459);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr377);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr384);
                                                                                                                                                                     addr405:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr541);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr527);
                                                                                                                                                            }
                                                                                                                                                            addr422:
                                                                                                                                                            if(_loc7_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc6_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr406);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr586);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr474);
                                                                                                                                                            }
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc6_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  this.§_-03A§ = 0;
                                                                                                                                                                  §§goto(addr422);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr786);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr485);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr492);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr554);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr474);
                                                                                                                                                }
                                                                                                                                                §§goto(addr547);
                                                                                                                                             }
                                                                                                                                             this.§_-5W§ = 0;
                                                                                                                                             §§goto(addr422);
                                                                                                                                          }
                                                                                                                                          §§goto(addr674);
                                                                                                                                       }
                                                                                                                                       §§goto(addr569);
                                                                                                                                    }
                                                                                                                                    §§goto(addr618);
                                                                                                                                 }
                                                                                                                                 §§goto(addr564);
                                                                                                                              }
                                                                                                                              §§goto(addr559);
                                                                                                                           }
                                                                                                                           §§goto(addr710);
                                                                                                                        }
                                                                                                                        §§goto(addr598);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr804);
                                                                                                               }
                                                                                                               §§goto(addr786);
                                                                                                            }
                                                                                                            §§goto(addr710);
                                                                                                         }
                                                                                                         §§goto(addr741);
                                                                                                      }
                                                                                                      §§goto(addr697);
                                                                                                   }
                                                                                                   §§goto(addr709);
                                                                                                }
                                                                                                §§goto(addr765);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr697);
                                                                                    }
                                                                                    §§goto(addr785);
                                                                                 }
                                                                                 §§goto(addr662);
                                                                              }
                                                                           }
                                                                           §§goto(addr697);
                                                                        }
                                                                        §§goto(addr785);
                                                                     }
                                                                     §§goto(addr789);
                                                                  }
                                                                  §§goto(addr760);
                                                               }
                                                               §§goto(addr790);
                                                            }
                                                            §§goto(addr804);
                                                         }
                                                         §§goto(addr795);
                                                      }
                                                      §§goto(addr799);
                                                   }
                                                   §§goto(addr801);
                                                }
                                                §§goto(addr798);
                                             }
                                             §§goto(addr796);
                                          }
                                          §§goto(addr803);
                                       }
                                       §§goto(addr802);
                                    }
                                    §§goto(addr765);
                                 }
                                 §§goto(addr793);
                              }
                              §§goto(addr785);
                           }
                           addr792:
                           §§goto(addr792);
                        }
                        §§goto(addr405);
                        addr150:
                        while(_loc7_ || this)
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr204);
      }
      
      private function §_-Mg§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Number = Math.atan2(param2.§_-ja§().y,param2.§_-ja§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§_-xN§(_loc5_,param2.§_-ja§());
         _loc6_ = b2Math.§_-DO§(_loc6_,param2.§_-qL§());
         _loc6_ = b2Math.§_-xN§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§_-1K§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§_-1K§(param1.§_-ja§(),param2.§_-ja§())).Normalize();
         var _loc8_:* = b2Math.§_-r8§(param1.§_-ja§(),param2.§_-qL§()) > 0;
         if(_loc9_)
         {
            param1.§_-n6§(param2,_loc6_,_loc7_,_loc8_);
            do
            {
               param2.§_-Xu§(param1,_loc6_,_loc7_,_loc8_);
            }
            while(_loc10_ && this);
            
         }
         return _loc4_;
      }
      
      public function §_-kX§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§_-We§ = null;
         if(_loc7_ || param1)
         {
            if(this.m_world.§_-ZM§() == true)
            {
               if(!(_loc6_ && param1))
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Fixture = new b2Fixture();
         if(!(_loc6_ && _loc2_))
         {
            _loc2_.§_-xb§(this,this.m_xf,param1);
            if(!_loc6_)
            {
               if(this.§_-7R§ & b2internal::_-cp)
               {
                  if(_loc7_ || _loc3_)
                  {
                     addr72:
                     §§push(this.m_world);
                     if(_loc7_)
                     {
                        _loc3_ = §§pop().§_-Xl§.§_-Q-§;
                        if(!_loc6_)
                        {
                           _loc2_.§_-7Y§(_loc3_,this.m_xf);
                           addr97:
                           _loc2_.§_-oz§ = this.§_-7L§;
                           if(_loc7_ || _loc2_)
                           {
                              this.§_-7L§ = _loc2_;
                              if(!_loc6_)
                              {
                                 var _loc4_:*;
                                 §§push((_loc4_ = this).§_-jM§);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc5_:* = §§pop();
                                 if(_loc7_)
                                 {
                                    _loc4_.§_-jM§ = _loc5_;
                                 }
                                 if(_loc7_)
                                 {
                                    _loc2_.m_body = this;
                                    addr135:
                                    loop0:
                                    while(_loc2_.§_-9C§ > 0)
                                    {
                                       if(!(_loc7_ || _loc2_))
                                       {
                                          loop1:
                                          while(true)
                                          {
                                             break loop0;
                                             addr144:
                                             while(true)
                                             {
                                                §§push(this.m_world.§_-7R§);
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§push(§§pop() | b2World.§_-0DB§);
                                                }
                                                §§pop().§_-7R§ = §§pop();
                                                if(!_loc6_)
                                                {
                                                   break loop1;
                                                }
                                                continue loop1;
                                             }
                                          }
                                          return _loc2_;
                                       }
                                       addr192:
                                       if(!(_loc7_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       addr190:
                                       this.§_-6S§();
                                       §§goto(addr192);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr144);
                                       §§goto(addr192);
                                    }
                                    addr135:
                                 }
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr135);
               }
               §§goto(addr97);
            }
            §§goto(addr72);
         }
         §§goto(addr190);
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(!(_loc4_ && param1))
         {
            _loc3_.shape = param1;
            do
            {
               _loc3_.density = param2;
            }
            while(_loc4_);
            
         }
         return this.§_-kX§(_loc3_);
      }
      
      public function §_-Iy§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§_-We§ = null;
         if(!_loc13_)
         {
            if(this.m_world.§_-ZM§() == true)
            {
               if(!_loc13_)
               {
                  §§goto(addr37);
               }
            }
            var _loc2_:b2Fixture = this.§_-7L§;
            var _loc3_:b2Fixture = null;
            var _loc4_:Boolean = false;
            loop0:
            for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§_-oz§)
            {
               if(_loc2_ != param1)
               {
                  continue;
               }
               while(true)
               {
                  if(!_loc3_)
                  {
                     this.§_-7L§ = param1.§_-oz§;
                     if(_loc12_)
                     {
                        if(!_loc13_)
                        {
                           if(!_loc13_)
                           {
                              loop2:
                              while(true)
                              {
                                 _loc4_ = true;
                                 if(!(_loc12_ || param1))
                                 {
                                    break loop0;
                                 }
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                                 if(true)
                                 {
                                    break loop0;
                                 }
                                 addr62:
                                 while(true)
                                 {
                                    continue loop2;
                                 }
                              }
                              continue;
                           }
                           addr83:
                           _loc3_.§_-oz§ = param1.§_-oz§;
                           addr87:
                           §§goto(addr62);
                        }
                        §§goto(addr87);
                     }
                     break loop0;
                  }
                  §§goto(addr83);
               }
            }
            var _loc5_:b2ContactEdge = this.§_-4p§;
            if(!(_loc13_ && _loc3_))
            {
               while(_loc5_)
               {
                  _loc6_ = _loc5_.§_-20§;
                  _loc5_ = _loc5_.§_-Oh§;
                  _loc7_ = _loc6_.§_-k-§();
                  _loc8_ = _loc6_.§_-7G§();
                  if(_loc12_)
                  {
                     §§push(param1 == _loc7_);
                     if(_loc12_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc13_)
                           {
                              §§pop();
                              if(_loc13_)
                              {
                                 continue;
                              }
                              addr152:
                              §§push(param1 == _loc8_);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!(_loc13_ && _loc3_))
                        {
                           this.m_world.§_-Xl§.§_-01§(_loc6_);
                        }
                     }
                     continue;
                  }
                  §§goto(addr152);
               }
               if(!_loc13_)
               {
                  if(this.§_-7R§ & b2internal::_-cp)
                  {
                     if(!(_loc13_ && _loc2_))
                     {
                        _loc9_ = this.m_world.§_-Xl§.§_-Q-§;
                        if(_loc12_)
                        {
                           param1.§_-yw§(_loc9_);
                        }
                        §§goto(addr195);
                     }
                     §§goto(addr219);
                  }
                  addr195:
                  param1.§_-01§();
                  if(_loc12_ || _loc2_)
                  {
                     param1.m_body = null;
                     if(!_loc13_)
                     {
                        addr209:
                        param1.§_-oz§ = null;
                        if(!(_loc13_ && _loc3_))
                        {
                           addr219:
                           var _loc10_:*;
                           §§push((_loc10_ = this).§_-jM§);
                           if(!(_loc13_ && _loc3_))
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc11_:* = §§pop();
                           if(_loc12_ || _loc3_)
                           {
                              _loc10_.§_-jM§ = _loc11_;
                           }
                           if(!(_loc13_ && _loc2_))
                           {
                              addr261:
                              this.§_-6S§();
                           }
                        }
                        §§goto(addr261);
                     }
                  }
                  return;
               }
               §§goto(addr209);
            }
            §§goto(addr261);
         }
         addr37:
      }
      
      public function §_-0CU§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2Fixture = null;
         if(!_loc8_)
         {
            if(this.m_world.§_-ZM§() == true)
            {
               if(_loc9_ || this)
               {
                  return;
               }
               addr76:
               while(true)
               {
               }
               addr76:
            }
            loop0:
            while(true)
            {
               §§push(this.m_xf);
               loop1:
               while(true)
               {
                  §§push(§§pop().R);
                  if(!(_loc8_ && this))
                  {
                     §§pop().Set(param2);
                     while(true)
                     {
                        if(_loc9_)
                        {
                           §§push(this.m_xf);
                           if(_loc8_ && _loc3_)
                           {
                              break;
                           }
                           if(!(_loc8_ && param2))
                           {
                              §§pop().position.SetV(param1);
                              if(_loc9_)
                              {
                                 if(true)
                                 {
                                    §§push(this.m_xf);
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        §§goto(addr76);
                     }
                     §§push(§§pop().R);
                     break;
                  }
                  break;
               }
               var _loc4_:b2Mat22 = §§pop();
               var _loc5_:b2Vec2 = this.m_sweep.localCenter;
               if(_loc9_)
               {
                  §§push(this.m_sweep);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop().c);
                     loop4:
                     while(true)
                     {
                        §§push(_loc4_.col1);
                        loop5:
                        while(true)
                        {
                           §§push(§§pop().x);
                           loop6:
                           while(true)
                           {
                              §§push(_loc5_.x);
                              loop7:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop8:
                                 while(true)
                                 {
                                    §§push(_loc4_.col2);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc5_.y);
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                loop13:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(this.m_sweep);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().c);
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.col1);
                                                            if(_loc8_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop().y);
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_.x);
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.col2);
                                                                     if(!_loc9_)
                                                                     {
                                                                        break;
                                                                        addr311:
                                                                     }
                                                                     §§push(§§pop().y);
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_.y);
                                                                        if(!(_loc9_ || _loc3_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     continue loop11;
                                                                     addr158:
                                                                     if(!(_loc9_ || param2))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(this.m_xf);
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        §§push(§§pop().position);
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(!_loc8_)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(!(_loc9_ || this))
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 if(_loc8_ && param2)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 addr207:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       if(!(_loc9_ || _loc3_))
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       §§pop().y = §§pop();
                                                                                       if(_loc9_ || param1)
                                                                                       {
                                                                                          addr230:
                                                                                          if(_loc8_ && param2)
                                                                                          {
                                                                                             loop31:
                                                                                             while(true)
                                                                                             {
                                                                                                addr116:
                                                                                                addr351:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.m_sweep);
                                                                                                   if(_loc8_ && this)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   §§push(§§pop().c);
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      while(_loc9_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(this.m_sweep);
                                                                                                      }
                                                                                                      continue loop16;
                                                                                                      addr256:
                                                                                                   }
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   addr133:
                                                                                                   §§push(this.m_sweep);
                                                                                                   if(_loc9_ || param2)
                                                                                                   {
                                                                                                      addr267:
                                                                                                      §§push(§§pop().c);
                                                                                                      if(_loc9_ || param2)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(_loc9_ || param1)
                                                                                                         {
                                                                                                            §§goto(addr158);
                                                                                                         }
                                                                                                         §§goto(addr207);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.m_xf);
                                                                                                         addr269:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().position);
                                                                                                            addr270:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               addr271:
                                                                                                               addr321:
                                                                                                               while(_loc9_)
                                                                                                               {
                                                                                                                  if(!(_loc8_ && param2))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           continue loop31;
                                                                                                                        }
                                                                                                                        addr322:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           if(_loc8_ && param1)
                                                                                                                           {
                                                                                                                              var _loc6_:§_-We§ = this.m_world.§_-Xl§.§_-Q-§;
                                                                                                                              _loc3_ = this.§_-7L§;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       this.m_world.§_-Xl§.§_-Wx§();
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 _loc3_.§_-OO§(_loc6_,this.m_xf,this.m_xf);
                                                                                                                                 if(_loc8_ && param1)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 _loc3_ = _loc3_.§_-oz§;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr360:
                                                                                                                           }
                                                                                                                           §§push(this.m_sweep);
                                                                                                                           continue loop3;
                                                                                                                           return;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop13;
                                                                                                                     addr281:
                                                                                                                  }
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr322);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr267:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().c);
                                                                                                         §§goto(addr133);
                                                                                                      }
                                                                                                      addr265:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr267);
                                                                                                   }
                                                                                                   §§goto(addr265);
                                                                                                }
                                                                                                addr351:
                                                                                                §§pop().a0 = this.m_sweep.a = param2;
                                                                                                §§goto(addr360);
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc8_ && param2)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          §§push(this.m_sweep);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          §§goto(addr351);
                                                                                       }
                                                                                       §§goto(addr360);
                                                                                    }
                                                                                    §§goto(addr267);
                                                                                 }
                                                                                 §§goto(addr281);
                                                                              }
                                                                              §§goto(addr311);
                                                                           }
                                                                           §§goto(addr271);
                                                                        }
                                                                        §§goto(addr270);
                                                                     }
                                                                     §§goto(addr269);
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               §§goto(addr321);
                                                            }
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr360);
            }
         }
         §§goto(addr76);
      }
      
      public function §_-Uk§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-0CU§(param1.position,param1.GetAngle());
         }
      }
      
      public function §_-tg§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §_-vE§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-0CU§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §_-2T§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§_-0CU§(this.GetPosition(),param1);
         }
      }
      
      public function §_-Hi§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §_-9w§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§_-1c§ != b2_staticBody)
            {
               do
               {
                  this.§_-kZ§.SetV(param1);
               }
               while(!(_loc2_ || _loc2_));
               
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§_-kZ§;
      }
      
      public function §_-ZF§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§_-1c§ != b2_staticBody)
            {
               loop0:
               while(true)
               {
                  this.m_angularVelocity = param1;
                  if(!(_loc3_ && _loc2_))
                  {
                     break;
                  }
                  addr57:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!(_loc3_ && param1))
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §_-06Y§() : b2BodyDef
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(_loc3_ || _loc3_)
         {
            _loc1_.type = this.§_-oF§();
            while(true)
            {
               _loc1_.§_-sD§ = (this.§_-7R§ & b2internal::_-W7) == b2internal::_-W7;
               loop1:
               while(true)
               {
                  _loc1_.angle = this.GetAngle();
                  loop2:
                  while(true)
                  {
                     _loc1_.§_-ZI§ = this.§_-cz§;
                     while(true)
                     {
                        _loc1_.§_-Hp§ = this.m_angularVelocity;
                        loop4:
                        while(true)
                        {
                           _loc1_.§_-0-u§ = (this.§_-7R§ & b2internal::_-XJ) == b2internal::_-XJ;
                           while(_loc3_)
                           {
                              _loc1_.§_-mq§ = (this.§_-7R§ & b2internal::_-0-F) == b2internal::_-0-F;
                              continue loop2;
                              loop7:
                              while(!(_loc2_ && _loc1_))
                              {
                                 _loc1_.§_-ov§ = this.§_-aS§;
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       continue loop4;
                                    }
                                    continue loop7;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function §_-03m§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§_-1c§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     while(true)
                     {
                        this.SetAwake(true);
                        addr188:
                        while(true)
                        {
                        }
                     }
                     addr185:
                  }
                  while(true)
                  {
                     §§push(this.§_-wp§);
                     loop4:
                     while(true)
                     {
                        §§push(this.§_-wp§);
                        addr167:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr168:
                           while(true)
                           {
                              §§push(param1.x);
                              addr170:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr171:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    addr172:
                                    while(!(_loc4_ && _loc3_))
                                    {
                                       continue loop4;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr193);
         }
         §§goto(addr194);
      }
      
      public function §_-rH§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§_-1c§ == b2_dynamicBody)
            {
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     while(true)
                     {
                        this.SetAwake(true);
                        §§goto(addr81);
                     }
                     addr78:
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§_-cH§);
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§_-cH§ = §§pop();
                     if(!_loc2_)
                     {
                        if(!(_loc2_ && param1))
                        {
                           break;
                        }
                        §§goto(addr78);
                     }
                     addr81:
                     §§goto(addr95);
                  }
                  return;
               }
            }
         }
         addr95:
         do
         {
            if(!_loc3_)
            {
               continue loop0;
            }
         }
         while(!(_loc2_ && this));
         
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(this.§_-1c§ == b2_dynamicBody)
            {
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        while(true)
                        {
                           this.SetAwake(true);
                        }
                        addr218:
                     }
                     while(true)
                     {
                     }
                     addr221:
                  }
                  while(true)
                  {
                     §§push(this.§_-kZ§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§_-kZ§);
                        addr187:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr198:
                           while(true)
                           {
                              §§push(this.§_-03A§);
                              addr200:
                              while(true)
                              {
                                 §§push(param1.x);
                                 addr202:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr203:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr204:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr226);
         }
         §§goto(addr218);
      }
      
      public function §_-Tk§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.GetAngularVelocity());
         if(!(_loc16_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§_-Hi§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§_-S0§(this.§_-06Y§());
         var _loc8_:b2Fixture = _loc5_.§_-7L§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc17_ || this)
               {
                  break;
               }
               addr206:
               var _loc9_:b2Vec2 = _loc5_.§_-Hi§();
               var _loc10_:b2Vec2 = _loc6_.§_-Hi§();
               var _loc11_:b2Vec2 = b2Math.§_-1K§(_loc2_,b2Math.§_-2t§(_loc3_,b2Math.§_-DO§(_loc9_,_loc4_)));
               var _loc12_:b2Vec2 = b2Math.§_-1K§(_loc2_,b2Math.§_-2t§(_loc3_,b2Math.§_-DO§(_loc10_,_loc4_)));
               if(_loc17_)
               {
                  _loc5_.SetLinearVelocity(_loc11_);
                  while(true)
                  {
                     _loc6_.SetLinearVelocity(_loc12_);
                     while(_loc17_ || _loc3_)
                     {
                        _loc5_.§_-ZF§(_loc3_);
                        loop3:
                        while(true)
                        {
                           _loc6_.§_-ZF§(_loc3_);
                           while(true)
                           {
                              _loc5_.§_-QG§();
                              loop5:
                              while(!(_loc16_ && this))
                              {
                                 while(true)
                                 {
                                    _loc6_.§_-QG§();
                                    if(!(_loc16_ && this))
                                    {
                                       continue loop3;
                                    }
                                    continue loop5;
                                 }
                                 return _loc6_;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr286);
            }
            else
            {
               if(!param1(_loc8_))
               {
                  _loc7_ = _loc8_;
                  _loc8_ = _loc8_.§_-oz§;
                  continue;
               }
               if(!_loc17_)
               {
                  break;
               }
               _loc13_ = _loc8_.§_-oz§;
               if(!(_loc16_ && this))
               {
                  if(_loc7_)
                  {
                     if(!(_loc16_ && _loc3_))
                     {
                        _loc7_.§_-oz§ = _loc13_;
                        if(!(_loc16_ && param1))
                        {
                           addr102:
                           var _loc14_:*;
                           §§push((_loc14_ = _loc5_).§_-jM§);
                           if(!(_loc16_ && _loc3_))
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc15_:* = §§pop();
                           if(!(_loc16_ && this))
                           {
                              _loc14_.§_-jM§ = _loc15_;
                           }
                           if(_loc17_)
                           {
                              addr129:
                              _loc8_.§_-oz§ = _loc6_.§_-7L§;
                              if(!(_loc16_ && this))
                              {
                                 addr150:
                                 _loc6_.§_-7L§ = _loc8_;
                                 if(_loc16_)
                                 {
                                 }
                                 addr180:
                                 _loc8_ = _loc13_;
                                 continue;
                              }
                              §§push((_loc14_ = _loc6_).§_-jM§);
                              if(!_loc16_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              _loc15_ = §§pop();
                              if(_loc17_)
                              {
                                 _loc14_.§_-jM§ = _loc15_;
                              }
                              if(_loc17_ || param1)
                              {
                              }
                              §§goto(addr180);
                           }
                           _loc8_.m_body = _loc6_;
                           §§goto(addr180);
                        }
                        §§goto(addr150);
                     }
                  }
                  else
                  {
                     _loc5_.§_-7L§ = _loc13_;
                     if(_loc17_)
                     {
                        §§goto(addr102);
                     }
                  }
                  §§goto(addr129);
               }
               §§goto(addr150);
            }
         }
         _loc5_.§_-6S§();
         if(!_loc16_)
         {
            _loc6_.§_-6S§();
         }
         §§goto(addr206);
      }
      
      public function §_-fO§(param1:b2Body) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§_-7L§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§_-oz§;
            if(_loc14_)
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§_-jM§);
               if(!_loc15_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(!(_loc15_ && _loc3_))
               {
                  _loc12_.§_-jM§ = _loc13_;
               }
               if(_loc14_)
               {
                  _loc2_.§_-oz§ = this.§_-7L§;
                  if(_loc14_)
                  {
                     addr68:
                     this.§_-7L§ = _loc2_;
                     if(_loc15_)
                     {
                        continue;
                     }
                     §§push((_loc12_ = this).§_-jM§);
                     if(_loc14_ || param1)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc13_ = §§pop();
                     if(!(_loc15_ && _loc3_))
                     {
                        _loc12_.§_-jM§ = _loc13_;
                     }
                     if(!_loc14_)
                     {
                        continue;
                     }
                  }
               }
               _loc2_.m_body = _loc4_;
               continue;
            }
            §§goto(addr68);
         }
         if(!(_loc15_ && _loc3_))
         {
            _loc3_.§_-jM§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§_-Hi§();
         var _loc6_:b2Vec2 = _loc4_.§_-Hi§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.GetAngularVelocity());
         if(_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.GetAngularVelocity());
         if(_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(_loc14_ || param1)
         {
            _loc3_.§_-6S§();
         }
         do
         {
            this.§_-QG§();
         }
         while(_loc15_);
         
      }
      
      public function GetMass() : Number
      {
         return this.§_-5W§;
      }
      
      public function §_-0By§() : Number
      {
         return this.§_-Eq§;
      }
      
      public function §_-N5§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.§_-ze§ = this.§_-5W§;
            while(true)
            {
               param1.§_-CG§ = this.§_-Eq§;
               while(_loc3_)
               {
                  param1.center.SetV(this.m_sweep.localCenter);
                  if(_loc3_ || this)
                  {
                     return;
                     addr48:
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public function §_-0Bp§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §§push(b2Settings);
            §§push(this.m_world.§_-ZM§());
            if(!_loc4_)
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§_-ZM§());
               addr287:
               loop1:
               while(true)
               {
                  §§push(true);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§_-1c§);
                        while(true)
                        {
                           if(§§pop() == b2_dynamicBody)
                           {
                              while(true)
                              {
                                 this.§_-03A§ = 0;
                                 while(_loc3_ || _loc3_)
                                 {
                                    if(!(_loc3_ || param1))
                                    {
                                       continue loop3;
                                    }
                                    this.§_-Eq§ = 0;
                                    while(true)
                                    {
                                       this.§_-Dz§ = 0;
                                       loop8:
                                       for(; !(_loc4_ && this); if(!(_loc4_ && param1))
                                       {
                                          this.§_-5W§ = 1;
                                          continue loop0;
                                       })
                                       {
                                          while(true)
                                          {
                                             this.§_-5W§ = param1.§_-ze§;
                                             while(true)
                                             {
                                                if(_loc4_ && this)
                                                {
                                                   break loop2;
                                                }
                                                §§push(this.§_-5W§);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr191:
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            continue loop8;
                                                         }
                                                         continue loop0;
                                                      }
                                                      addr179:
                                                      while(true)
                                                      {
                                                         this.§_-03A§ = 1 / this.§_-5W§;
                                                         continue loop11;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       §§push(this);
                                       §§push(param1.§_-CG§);
                                       if(!_loc4_)
                                       {
                                          §§push(this.§_-5W§);
                                          if(!_loc4_)
                                          {
                                             §§push(param1.center.x);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(param1.center);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      addr123:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc3_)
                                                      {
                                                         addr109:
                                                         §§push(param1.center.y);
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            addr117:
                                                            §§push(§§pop() * param1.center.y);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().§_-Eq§ = §§pop() - §§pop() * §§pop();
                                                      §§goto(addr125);
                                                   }
                                                   §§goto(addr117);
                                                }
                                             }
                                             §§goto(addr109);
                                          }
                                       }
                                       §§goto(addr123);
                                    }
                                 }
                              }
                           }
                           return;
                        }
                     }
                  }
                  return;
                  while(true)
                  {
                     if(_loc4_ && this)
                     {
                        continue loop1;
                     }
                     §§goto(addr177);
                  }
               }
            }
         }
         §§goto(addr251);
      }
      
      public function §_-6S§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2MassData = null;
         if(_loc6_)
         {
            this.§_-5W§ = 0;
            while(true)
            {
               this.§_-03A§ = 0;
            }
            addr113:
         }
         while(true)
         {
            this.§_-Eq§ = 0;
            loop2:
            while(true)
            {
               this.§_-Dz§ = 0;
               addr99:
               while(true)
               {
                  this.m_sweep.localCenter.§_-el§();
                  continue loop2;
               }
            }
         }
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(!(_loc4_ && param1))
         {
            §§push(param1.x);
            if(!_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_)
               {
                  §§push(_loc2_.col2.x);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(param1.y);
                     if(!_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_ || param1)
                        {
                           addr63:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!(_loc4_ && this))
                           {
                              §§push(param1.x);
                              if(_loc5_ || _loc3_)
                              {
                                 §§goto(addr109);
                              }
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr109);
                     }
                     addr109:
                     §§push(§§pop() * §§pop());
                     if(!_loc4_)
                     {
                        addr95:
                        §§push(_loc2_.col2.y);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(§§pop() * param1.y);
                        }
                     }
                     var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(_loc3_);
                        §§push(_loc3_.x);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(§§pop() + this.m_xf.position.x);
                        }
                        §§pop().x = §§pop();
                     }
                     do
                     {
                        §§push(_loc3_);
                        §§push(_loc3_.y);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(§§pop() + this.m_xf.position.y);
                        }
                        §§pop().y = §§pop();
                     }
                     while(_loc4_ && _loc2_);
                     
                     return _loc3_;
                     §§push(§§pop() + §§pop());
                  }
                  §§goto(addr95);
               }
               §§goto(addr63);
            }
            §§goto(addr109);
         }
         §§goto(addr63);
      }
      
      public function §_-2R§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-S4§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-Yk§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-bf§(this.m_xf.R,param1);
      }
      
      public function §_-om§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§_-kZ§.x);
         if(_loc2_)
         {
            §§push(this.m_angularVelocity);
            if(!_loc3_)
            {
               §§push(param1.y);
               if(_loc2_)
               {
                  §§push(this.m_sweep.c.y);
                  if(_loc2_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc3_)
                     {
                        addr49:
                        §§push(§§pop() * §§pop());
                        if(_loc2_ || _loc2_)
                        {
                           addr58:
                           §§push(§§pop() - §§pop());
                           §§push(this.§_-kZ§.y);
                           if(_loc3_ && _loc3_)
                           {
                           }
                           §§goto(addr103);
                        }
                        §§push(this.m_angularVelocity);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(param1.x);
                           if(_loc2_ || _loc2_)
                           {
                              addr101:
                              §§push(§§pop() * (§§pop() - this.m_sweep.c.x));
                           }
                           §§goto(addr101);
                        }
                     }
                     addr103:
                     return new §§pop().b2Vec2(§§pop(),§§pop());
                     §§push(§§pop() + §§pop());
                  }
                  §§goto(addr101);
               }
               §§goto(addr49);
            }
            §§goto(addr103);
         }
         §§goto(addr58);
      }
      
      public function §_-1§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(!(_loc4_ && this))
         {
            §§push(param1.x);
            if(!_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc4_ && param1))
               {
                  addr45:
                  §§push(_loc2_.col2.x);
                  if(!(_loc4_ && param1))
                  {
                     addr55:
                     §§push(param1.y);
                     if(_loc5_ || this)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc4_)
                        {
                           addr68:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!_loc4_)
                           {
                              §§push(param1.x);
                              if(_loc5_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc5_)
                                 {
                                 }
                                 addr94:
                                 var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                 if(_loc5_ || param1)
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.x);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() + this.m_xf.position.x);
                                    }
                                    §§pop().x = §§pop();
                                 }
                                 do
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.y);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(§§pop() + this.m_xf.position.y);
                                    }
                                    §§pop().y = §§pop();
                                 }
                                 while(_loc4_);
                                 
                                 §§push(§§findproperty(b2Vec2));
                                 §§push(this.§_-kZ§.x);
                                 if(_loc5_)
                                 {
                                    §§push(this.m_angularVelocity);
                                    if(_loc5_ || param1)
                                    {
                                       §§push(_loc3_.y);
                                       if(!(_loc4_ && param1))
                                       {
                                          §§push(this.m_sweep.c.y);
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc4_ && this))
                                                {
                                                   addr163:
                                                   §§push(§§pop() - §§pop());
                                                   §§push(this.§_-kZ§.y);
                                                   if(_loc5_ || this)
                                                   {
                                                   }
                                                   §§goto(addr193);
                                                }
                                                §§push(this.m_angularVelocity);
                                                if(_loc5_)
                                                {
                                                   addr177:
                                                   §§push(_loc3_.x);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      addr191:
                                                      §§push(§§pop() * (§§pop() - this.m_sweep.c.x));
                                                   }
                                                   §§goto(addr191);
                                                }
                                                addr193:
                                                return new §§pop().b2Vec2(§§pop(),§§pop());
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§goto(addr177);
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr177);
                                    }
                                    §§goto(addr193);
                                 }
                                 §§goto(addr163);
                              }
                              addr90:
                              §§goto(addr94);
                              §§push(§§pop() + §§pop() * param1.y);
                           }
                           §§goto(addr94);
                        }
                        §§push(_loc2_.col2.y);
                        if(_loc5_ || param1)
                        {
                        }
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr94);
               }
               §§goto(addr68);
            }
            §§goto(addr55);
         }
         §§goto(addr45);
      }
      
      public function §_-Aw§() : Number
      {
         return this.§_-aS§;
      }
      
      public function §_-ah§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-aS§ = param1;
         }
      }
      
      public function §_-m3§() : Number
      {
         return this.§_-cz§;
      }
      
      public function §_-1B§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-cz§ = param1;
         }
      }
      
      public function §_-pj§(param1:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§_-1c§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr138:
               while(§§pop() != §§pop())
               {
                  while(true)
                  {
                     this.§_-1c§ = param1;
                     addr124:
                     while(true)
                     {
                        this.§_-6S§();
                        continue loop0;
                     }
                  }
               }
               addr139:
               return;
            }
         }
         §§goto(addr78);
      }
      
      public function §_-oF§() : uint
      {
         return this.§_-1c§;
      }
      
      public function §_-pf§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               this.§_-7R§ &= ~b2internal::_-0-F;
               if(!_loc2_)
               {
                  addr61:
               }
               return;
            }
            if(_loc2_ || _loc2_)
            {
               this.§_-7R§ |= b2internal::_-0-F;
            }
         }
         §§goto(addr61);
      }
      
      public function §_-02U§() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-0-F) == b2internal::_-0-F;
      }
      
      public function §_-MH§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!param1)
            {
               this.§_-7R§ &= ~b2internal::_-W7;
               loop0:
               while(!_loc2_)
               {
                  if(_loc2_ && this)
                  {
                     this.§_-7R§ |= b2internal::_-W7;
                     break;
                  }
                  addr78:
                  while(true)
                  {
                     this.SetAwake(true);
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return;
               }
               §§goto(addr25);
            }
            §§goto(addr78);
         }
         §§goto(addr75);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(!param1)
            {
               this.§_-7R§ &= ~b2internal::_-Lb;
               loop0:
               while(true)
               {
                  this.§_-yN§ = 0;
                  while(true)
                  {
                     this.§_-kZ§.§_-el§();
                     loop2:
                     while(true)
                     {
                        this.m_angularVelocity = 0;
                        loop3:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              if(_loc2_)
                              {
                                 this.§_-wp§.§_-el§();
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             this.§_-7R§ |= b2internal::_-Lb;
                                             while(true)
                                             {
                                                this.§_-yN§ = 0;
                                                break loop3;
                                             }
                                          }
                                          else
                                          {
                                             addr118:
                                             addr109:
                                             addr112:
                                          }
                                          continue;
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    continue loop3;
                                 }
                                 return;
                              }
                              break;
                           }
                           continue loop2;
                        }
                        if(_loc3_)
                        {
                           §§goto(addr118);
                        }
                        §§goto(addr109);
                     }
                  }
               }
            }
            §§goto(addr112);
         }
         §§goto(addr118);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-Lb) == b2internal::_-Lb;
      }
      
      public function §_-3G§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               this.§_-7R§ &= ~b2internal::_-XJ;
               loop3:
               while(true)
               {
                  addr23:
                  while(true)
                  {
                     this.§_-6S§();
                     if(!(_loc3_ && param1))
                     {
                        break;
                     }
                     continue loop3;
                  }
                  if(!(_loc3_ && this))
                  {
                     addr60:
                     if(!(_loc2_ || _loc2_))
                     {
                        while(true)
                        {
                           this.§_-7R§ |= b2internal::_-XJ;
                           addr87:
                           while(true)
                           {
                              §§goto(addr23);
                           }
                           §§goto(addr60);
                        }
                        addr81:
                     }
                     return;
                  }
                  §§goto(addr87);
               }
               addr78:
            }
            §§goto(addr81);
         }
         §§goto(addr78);
      }
      
      public function §_-Ah§() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-XJ) == b2internal::_-XJ;
      }
      
      public function §_-Bd§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§_-We§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc7_ || _loc2_)
            {
               if(§§pop() == this.§_-04Z§())
               {
                  if(_loc7_ || _loc2_)
                  {
                     return;
                  }
                  addr61:
                  this.§_-7R§ |= b2internal::_-cp;
                  addr67:
                  _loc2_ = this.m_world.§_-Xl§.§_-Q-§;
                  _loc3_ = this.§_-7L§;
                  while(_loc3_)
                  {
                     _loc3_.§_-7Y§(_loc2_,this.m_xf);
                     if(_loc6_)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§_-oz§;
                  }
               }
               else
               {
                  addr58:
                  if(param1)
                  {
                     if(_loc7_)
                     {
                        §§goto(addr61);
                     }
                     §§goto(addr67);
                  }
                  else
                  {
                     this.§_-7R§ &= ~b2internal::_-cp;
                     _loc2_ = this.m_world.§_-Xl§.§_-Q-§;
                     _loc3_ = this.§_-7L§;
                     if(_loc7_)
                     {
                        loop1:
                        while(_loc3_)
                        {
                           _loc3_.§_-yw§(_loc2_);
                           if(_loc6_)
                           {
                              break;
                           }
                           while(true)
                           {
                              _loc3_ = _loc3_.§_-oz§;
                              continue loop1;
                           }
                        }
                        _loc4_ = this.§_-4p§;
                        if(!(_loc6_ && _loc3_))
                        {
                           while(_loc4_)
                           {
                              _loc5_ = _loc4_;
                              _loc4_ = _loc4_.§_-Oh§;
                              if(_loc7_)
                              {
                                 this.m_world.§_-Xl§.§_-01§(_loc5_.§_-20§);
                              }
                           }
                           if(_loc7_ || _loc2_)
                           {
                           }
                           §§goto(addr185);
                        }
                        this.§_-4p§ = null;
                        §§goto(addr185);
                     }
                     §§goto(addr129);
                  }
               }
               addr185:
               return;
            }
         }
         §§goto(addr58);
      }
      
      public function §_-04Z§() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-cp) == b2internal::_-cp;
      }
      
      public function §_-u6§() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-W7) == b2internal::_-W7;
      }
      
      public function §_-0DJ§() : b2Fixture
      {
         return this.§_-7L§;
      }
      
      public function §_-ip§() : b2JointEdge
      {
         return this.§_-6c§;
      }
      
      public function §_-3j§() : b2ControllerEdge
      {
         return this.§_-DZ§;
      }
      
      public function §_-qw§() : b2ContactEdge
      {
         return this.§_-4p§;
      }
      
      public function §_-02g§() : b2Body
      {
         return this.§_-oz§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-oP§;
      }
      
      public function §_-zJ§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-oP§ = param1;
         }
      }
      
      public function §_-ZS§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §_-QG§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §_-X0§;
         if(!(_loc7_ && _loc3_))
         {
            §§push(_loc1_.R);
            if(!(_loc7_ && _loc3_))
            {
               §§pop().Set(this.m_sweep.a0);
               addr42:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(!(_loc7_ && _loc2_))
            {
               §§push(_loc1_.position);
               if(!(_loc7_ && _loc2_))
               {
                  §§push(this.m_sweep);
                  if(!_loc7_)
                  {
                     §§push(§§pop().c0);
                     if(_loc6_ || _loc3_)
                     {
                        §§push(§§pop().x);
                        if(!_loc7_)
                        {
                           §§push(_loc2_.col1);
                           if(_loc6_ || this)
                           {
                              §§push(§§pop().x);
                              if(!(_loc7_ && _loc1_))
                              {
                                 §§push(_loc3_.x);
                                 if(_loc6_ || _loc1_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(_loc2_.col2);
                                       if(_loc6_ || this)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc7_)
                                          {
                                             §§push(_loc3_.y);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc6_ || _loc3_)
                                                {
                                                   addr150:
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc7_ && this))
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc7_ && _loc1_))
                                                      {
                                                         addr166:
                                                         §§pop().x = §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            addr174:
                                                            §§push(_loc1_.position);
                                                            §§push(this.m_sweep.c0.y);
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               addr182:
                                                               §§push(_loc2_.col1.y);
                                                               if(!(_loc7_ && _loc3_))
                                                               {
                                                                  addr192:
                                                                  §§push(_loc3_.x);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     addr201:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        addr209:
                                                                        addr211:
                                                                        §§push(_loc2_.col2.y);
                                                                        if(_loc7_ && _loc2_)
                                                                        {
                                                                        }
                                                                        addr234:
                                                                        §§pop().y = §§pop() - (§§pop() + §§pop());
                                                                        addr235:
                                                                        var _loc5_:§_-We§ = this.m_world.§_-Xl§.§_-Q-§;
                                                                        _loc4_ = this.§_-7L§;
                                                                        while(_loc4_)
                                                                        {
                                                                           _loc4_.§_-OO§(_loc5_,_loc1_,this.m_xf);
                                                                           if(_loc7_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc4_ = _loc4_.§_-oz§;
                                                                        }
                                                                        return;
                                                                        addr233:
                                                                        addr222:
                                                                     }
                                                                     §§goto(addr233);
                                                                  }
                                                                  addr221:
                                                                  §§goto(addr222);
                                                                  §§push(§§pop() * _loc3_.y);
                                                               }
                                                               §§goto(addr233);
                                                            }
                                                            §§goto(addr234);
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      §§goto(addr182);
                                                   }
                                                   §§goto(addr209);
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr221);
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr211);
                                    }
                                    §§goto(addr192);
                                 }
                              }
                              §§goto(addr209);
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr166);
                     }
                  }
               }
            }
            §§goto(addr174);
         }
         §§goto(addr42);
      }
      
      b2internal function §_-da§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc1_)
         {
            §§push(this.m_xf);
            if(!_loc3_)
            {
               §§push(§§pop().R);
               if(_loc4_)
               {
                  §§pop().Set(this.m_sweep.a);
                  addr37:
                  §§push(this.m_xf.R);
               }
               var _loc1_:b2Mat22 = §§pop();
               var _loc2_:b2Vec2 = this.m_sweep.localCenter;
               if(_loc4_ || this)
               {
                  §§push(this.m_xf);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().position);
                     addr209:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr211:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr212:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr213:
                              loop4:
                              while(true)
                              {
                                 §§push(_loc1_.col1);
                                 addr215:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc2_.x);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(§§pop() * §§pop());
                                          while(true)
                                          {
                                             §§push(_loc1_.col2);
                                             addr228:
                                             addr119:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                             }
                                             if(_loc3_ && _loc1_)
                                             {
                                                continue;
                                             }
                                             §§push(_loc2_.x);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§push(_loc1_.col2);
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§pop().y);
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            addr154:
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               §§push(_loc2_.y);
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  addr171:
                                                                  §§push(§§pop() + §§pop() * §§pop());
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr180:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           return;
                                                                           addr195:
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     addr232:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                  }
                                                                  addr231:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  addr234:
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr229:
                                                               while(true)
                                                               {
                                                               }
                                                               addr229:
                                                            }
                                                            §§goto(addr231);
                                                         }
                                                         §§goto(addr171);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr228);
                                                      }
                                                   }
                                                   §§goto(addr171);
                                                }
                                                §§goto(addr232);
                                             }
                                             §§goto(addr154);
                                          }
                                       }
                                       §§goto(addr229);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr208:
               }
               while(true)
               {
                  §§push(this.m_xf);
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(§§pop().position);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(this.m_sweep);
                        if(!_loc3_)
                        {
                           §§push(§§pop().c);
                           if(_loc4_)
                           {
                              §§push(§§pop().y);
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(_loc1_.col1);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop().y);
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§goto(addr119);
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr215);
                                 }
                                 §§goto(addr234);
                              }
                              §§goto(addr180);
                           }
                           else
                           {
                              §§goto(addr212);
                           }
                        }
                        else
                        {
                           §§goto(addr211);
                        }
                        §§goto(addr212);
                     }
                     else
                     {
                        §§goto(addr209);
                     }
                  }
                  else
                  {
                     §§goto(addr208);
                  }
                  §§goto(addr209);
               }
               §§goto(addr195);
            }
         }
         §§goto(addr37);
      }
      
      b2internal function §_-VH§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.§_-1c§);
            if(!_loc3_)
            {
               §§push(b2_dynamicBody);
               if(_loc4_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc3_ && this))
                  {
                     §§push(!§§pop());
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && param1))
                           {
                              addr51:
                              §§pop();
                              if(!_loc3_)
                              {
                                 §§goto(addr67);
                              }
                              §§goto(addr83);
                           }
                           §§goto(addr70);
                        }
                        §§goto(addr73);
                     }
                  }
                  §§goto(addr51);
               }
               addr67:
               §§goto(addr66);
            }
            addr66:
            §§push(param1.§_-1c§ == b2_dynamicBody);
            if(_loc4_)
            {
               addr70:
               §§push(!§§pop());
               if(_loc4_)
               {
                  addr73:
                  if(§§pop())
                  {
                     if(_loc4_ || param1)
                     {
                        §§push(false);
                     }
                     else
                     {
                        addr83:
                        var _loc2_:b2JointEdge = this.§_-6c§;
                        for(; _loc2_; _loc2_ = _loc2_.§_-Oh§)
                        {
                           if(_loc2_.§_-TK§ == param1)
                           {
                              if(_loc4_)
                              {
                                 §§push(_loc2_.§_-q5§.§_-vY§);
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(§§pop() != false)
                                    {
                                       continue;
                                    }
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(false);
                                    if(!_loc4_)
                                    {
                                       §§goto(addr137);
                                    }
                                 }
                                 return §§pop();
                              }
                              break;
                           }
                        }
                        addr137:
                        return §§pop();
                        §§push(true);
                     }
                  }
                  §§goto(addr83);
               }
            }
            return §§pop();
         }
         §§goto(addr83);
      }
      
      b2internal function §_-nE§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.m_sweep);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§pop().§_-nE§(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(this.m_sweep);
                     while(true)
                     {
                        §§pop().c.SetV(this.m_sweep.c0);
                        loop4:
                        while(true)
                        {
                           §§push(this.m_sweep);
                           if(!(_loc3_ || _loc3_))
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              §§push(this.m_sweep.a0);
                              if(_loc3_ || this)
                              {
                                 §§pop().a = §§pop();
                                 while(true)
                                 {
                                    this.§_-da§();
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 return;
                                 addr87:
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr87);
      }
   }
}

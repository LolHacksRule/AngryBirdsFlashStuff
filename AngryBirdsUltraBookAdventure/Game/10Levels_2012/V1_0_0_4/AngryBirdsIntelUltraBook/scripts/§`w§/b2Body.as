package §`w§
{
   import §!!R§.b2ControllerEdge;
   import §2!+§.b2EdgeShape;
   import §2!+§.b2MassData;
   import §2!+§.b2Shape;
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §72§.§<X§;
   import §9!"§.b2JointEdge;
   import §>H§.b2Mat22;
   import §>H§.b2Math;
   import §>H§.b2Sweep;
   import §>H§.b2Transform;
   import §>H§.b2Vec2;
   import §break§.b2Contact;
   import §break§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §%!`§:b2Transform;
      
      b2internal static var §#!`§:uint = 1;
      
      b2internal static var §1"§:uint = 2;
      
      b2internal static var §?!O§:uint = 4;
      
      b2internal static var §%6§:uint = 8;
      
      b2internal static var §'U§:uint = 16;
      
      b2internal static var §1T§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §%!`§ = new b2Transform();
            loop0:
            while(true)
            {
               §#!`§ = 1;
               loop1:
               while(true)
               {
                  §1"§ = 2;
                  while(true)
                  {
                     §?!O§ = 4;
                     loop4:
                     for(; _loc1_ || _loc1_; while(true)
                     {
                        if(_loc2_ && _loc2_)
                        {
                           continue loop4;
                        }
                        if(_loc2_)
                        {
                           break;
                        }
                        b2_kinematicBody = 1;
                        §§goto(addr48);
                     },while(true)
                     {
                        §%6§ = 8;
                        continue loop4;
                     })
                     {
                        §'U§ = 16;
                        while(true)
                        {
                           §1T§ = 32;
                           addr91:
                           while(!_loc2_)
                           {
                              b2_staticBody = 0;
                              continue loop4;
                           }
                           addr48:
                           continue loop1;
                           while(_loc1_ || _loc1_)
                           {
                              continue loop0;
                              b2_dynamicBody = 2;
                              if(_loc2_ && _loc1_)
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 continue loop4;
                              }
                              if(!_loc2_)
                              {
                                 return;
                              }
                              §§goto(addr91);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      b2internal var §;!R§:uint;
      
      b2internal var §+!?§:int;
      
      b2internal var §>!c§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §^O§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §84§:b2Vec2;
      
      b2internal var §3!T§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §-!I§:b2Body;
      
      b2internal var §3=§:b2Body;
      
      b2internal var §92§:b2Fixture;
      
      b2internal var §+q§:int;
      
      b2internal var §-_§:b2ControllerEdge;
      
      b2internal var § !>§:int;
      
      b2internal var §"O§:b2JointEdge;
      
      b2internal var §]3§:b2ContactEdge;
      
      b2internal var §,0§:Number;
      
      b2internal var §7n§:Number;
      
      b2internal var §'v§:Number;
      
      b2internal var §;5§:Number;
      
      b2internal var §'!x§:Number;
      
      b2internal var §[s§:Number;
      
      b2internal var §[!j§:Number;
      
      b2internal var §@!#§:Number;
      
      private var §?f§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.m_xf = new b2Transform();
            while(true)
            {
               this.m_sweep = new b2Sweep();
               loop1:
               while(true)
               {
                  this.§^O§ = new b2Vec2();
                  if(_loc7_ || _loc3_)
                  {
                     this.§84§ = new b2Vec2();
                     while(true)
                     {
                        super();
                        while(true)
                        {
                           this.§;!R§ = 0;
                           loop4:
                           for(; _loc7_ || param2; if(_loc6_ && this)
                           {
                              continue;
                           },this.§;!R§ |= b2internal::'U,§§goto(addr241))
                           {
                              §§push(param1.§,$§);
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(_loc7_)
                                    {
                                       this.§;!R§ |= b2internal::%6;
                                       while(true)
                                       {
                                       }
                                    }
                                    continue loop1;
                                    addr246:
                                 }
                                 while(true)
                                 {
                                    §§push(param1.§do§);
                                    loop8:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(_loc7_)
                                          {
                                             continue loop4;
                                          }
                                          addr226:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(param1.§import§);
                                             while(!_loc6_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      this.§;!R§ |= b2internal::?!O;
                                                      if(!_loc6_)
                                                      {
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            addr182:
                                                            §§push(param1.§!,§);
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§;!R§ |= b2internal::1";
                                                                  addr192:
                                                                  while(true)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr246);
                                                         }
                                                      }
                                                   }
                                                   addr316:
                                                   var _loc3_:b2Mat22 = this.m_xf.R;
                                                   var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                                                   addr313:
                                                   if(_loc7_ || param2)
                                                   {
                                                      addr787:
                                                      addr788:
                                                      addr808:
                                                      addr807:
                                                      addr791:
                                                      addr790:
                                                      §§push(this.m_sweep.c);
                                                      §§push(_loc3_.col1.x);
                                                      §§push(_loc4_.x);
                                                      if(_loc7_ || param2)
                                                      {
                                                         addr804:
                                                         §§push(§§pop() * §§pop());
                                                         §§push(_loc3_.col2.x * _loc4_.y);
                                                      }
                                                      §§pop().x = §§pop() + §§pop();
                                                      addr809:
                                                      §§push(this.m_sweep.c);
                                                      §§push(_loc3_.col1);
                                                      if(_loc7_)
                                                      {
                                                         addr751:
                                                         §§push(§§pop().y);
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            addr750:
                                                            §§push(§§pop() * _loc4_.x);
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            if(_loc7_ || this)
                                                            {
                                                               §§push(_loc3_.col2);
                                                               if(_loc7_)
                                                               {
                                                                  addr765:
                                                                  §§push(§§pop().y);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(_loc4_.y);
                                                                     if(_loc7_)
                                                                     {
                                                                        addr783:
                                                                        §§pop().y = §§pop() + §§pop() * §§pop();
                                                                        addr784:
                                                                        addr782:
                                                                        §§push(this.m_sweep.c);
                                                                        if(_loc7_)
                                                                        {
                                                                           addr714:
                                                                           §§push(this.m_sweep.c.x);
                                                                           §§push(this.m_xf.position.x);
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr726:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          addr731:
                                                                                          §§push(this.m_sweep);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(§§pop().c);
                                                                                             if(_loc7_ || _loc3_)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(this.m_sweep);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop().c);
                                                                                                      if(_loc7_ || param2)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               §§push(this.m_xf);
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§push(§§pop().position);
                                                                                                                  if(_loc7_ || param1)
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(!(_loc6_ && param2))
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && this))
                                                                                                                        {
                                                                                                                           addr684:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc7_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(!(_loc6_ && this))
                                                                                                                              {
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                 addr699:
                                                                                                                                 §§push(this.m_sweep);
                                                                                                                                 if(!(_loc6_ && param2))
                                                                                                                                 {
                                                                                                                                    if(!(_loc6_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          §§pop().c0.SetV(this.m_sweep.c);
                                                                                                                                          addr621:
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             this.§"O§ = null;
                                                                                                                                             this.§-_§ = null;
                                                                                                                                             addr596:
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                this.§]3§ = null;
                                                                                                                                                this.§ !>§ = 0;
                                                                                                                                                this.§-!I§ = null;
                                                                                                                                                this.§3=§ = null;
                                                                                                                                                addr574:
                                                                                                                                                addr579:
                                                                                                                                                if(!(_loc6_ && param2))
                                                                                                                                                {
                                                                                                                                                   this.§^O§.SetV(param1.§,W§);
                                                                                                                                                   this.m_angularVelocity = param1.§"!T§;
                                                                                                                                                   this.§[s§ = param1.§2!s§;
                                                                                                                                                   addr557:
                                                                                                                                                   addr550:
                                                                                                                                                   if(_loc7_ || param2)
                                                                                                                                                   {
                                                                                                                                                      if(_loc7_)
                                                                                                                                                      {
                                                                                                                                                         this.§[!j§ = param1.§!!J§;
                                                                                                                                                         this.§84§.Set(0,0);
                                                                                                                                                         addr529:
                                                                                                                                                         if(_loc7_)
                                                                                                                                                         {
                                                                                                                                                            this.§3!T§ = 0;
                                                                                                                                                            addr512:
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               this.§@!#§ = 0;
                                                                                                                                                               addr505:
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  this.§+!?§ = param1.type;
                                                                                                                                                                  addr500:
                                                                                                                                                                  if(this.§+!?§ == b2_dynamicBody)
                                                                                                                                                                  {
                                                                                                                                                                     addr484:
                                                                                                                                                                     if(_loc7_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        this.§,0§ = 1;
                                                                                                                                                                        this.§7n§ = 1;
                                                                                                                                                                        addr467:
                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc6_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr423:
                                                                                                                                                                                 this.§'v§ = 0;
                                                                                                                                                                                 if(!(_loc6_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§;5§ = 0;
                                                                                                                                                                                    this.§'!x§ = param1.§4!D§;
                                                                                                                                                                                    addr422:
                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§?f§ = param1.§+!+§;
                                                                                                                                                                                       addr378:
                                                                                                                                                                                       if(!(_loc6_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc6_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc7_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§92§ = null;
                                                                                                                                                                                                addr364:
                                                                                                                                                                                                if(_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§+q§ = 0;
                                                                                                                                                                                                            if(_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc7_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc6_ && param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr731);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        return;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr557);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr422);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr364);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr574);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr467);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr439:
                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc6_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr423);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr550);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr512);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr378);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr621);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr455:
                                                                                                                                                                                          if(_loc7_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§7n§ = 0;
                                                                                                                                                                                             §§goto(addr439);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr557);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr423);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr484);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr500);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr596);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr529);
                                                                                                                                                                        }
                                                                                                                                                                        addr494:
                                                                                                                                                                        §§goto(addr494);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr505);
                                                                                                                                                                  }
                                                                                                                                                                  this.§,0§ = 0;
                                                                                                                                                                  §§goto(addr455);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr579);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr529);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr574);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr784);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr596);
                                                                                                                                                   addr569:
                                                                                                                                                }
                                                                                                                                                addr584:
                                                                                                                                                §§goto(addr584);
                                                                                                                                             }
                                                                                                                                             §§goto(addr809);
                                                                                                                                          }
                                                                                                                                          §§goto(addr699);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr787);
                                                                                                                                 }
                                                                                                                                 §§goto(addr731);
                                                                                                                              }
                                                                                                                              §§goto(addr783);
                                                                                                                           }
                                                                                                                           §§goto(addr726);
                                                                                                                        }
                                                                                                                        §§goto(addr782);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr714);
                                                                                                         }
                                                                                                         §§goto(addr684);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr714);
                                                                                                }
                                                                                                §§goto(addr788);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr783);
                                                                                       }
                                                                                       §§goto(addr808);
                                                                                    }
                                                                                    §§goto(addr751);
                                                                                 }
                                                                                 §§goto(addr804);
                                                                              }
                                                                              §§goto(addr750);
                                                                           }
                                                                           §§goto(addr765);
                                                                        }
                                                                        §§goto(addr787);
                                                                     }
                                                                     §§goto(addr804);
                                                                  }
                                                                  §§goto(addr807);
                                                               }
                                                               §§goto(addr804);
                                                            }
                                                            §§goto(addr791);
                                                         }
                                                         §§goto(addr804);
                                                      }
                                                      §§goto(addr790);
                                                   }
                                                   §§goto(addr569);
                                                }
                                                §§goto(addr182);
                                                if(!(_loc6_ && param1))
                                                {
                                                   continue loop5;
                                                }
                                             }
                                             continue loop8;
                                          }
                                          addr193:
                                       }
                                       §§goto(addr254);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr316);
               }
               if(_loc6_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr120);
            }
         }
         §§goto(addr254);
      }
      
      private function §1R§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Number = Math.atan2(param2.§'!!§().y,param2.§'!!§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§3!O§(_loc5_,param2.§'!!§());
         _loc6_ = b2Math.§54§(_loc6_,param2.§77§());
         _loc6_ = b2Math.§3!O§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§,x§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§,x§(param1.§'!!§(),param2.§'!!§())).Normalize();
         var _loc8_:* = b2Math.§'l§(param1.§'!!§(),param2.§77§()) > 0;
         if(_loc9_ || param2)
         {
            param1.§-!g§(param2,_loc6_,_loc7_,_loc8_);
         }
         do
         {
            param2.§?d§(param1,_loc6_,_loc7_,_loc8_);
         }
         while(!(_loc9_ || param2));
         
         return _loc4_;
      }
      
      public function §'[§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§<X§ = null;
         if(_loc6_)
         {
            if(this.m_world.§3C§() == true)
            {
               if(!_loc7_)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:b2Fixture = new b2Fixture();
            if(!(_loc7_ && _loc2_))
            {
               _loc2_.§`4§(this,this.m_xf,param1);
               if(!_loc7_)
               {
                  if(this.§;!R§ & b2internal::1T)
                  {
                     if(_loc6_ || this)
                     {
                        §§push(this.m_world);
                        if(_loc6_ || this)
                        {
                           _loc3_ = §§pop().§`!n§.§<Z§;
                           if(!(_loc7_ && _loc2_))
                           {
                              _loc2_.§0!S§(_loc3_,this.m_xf);
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr134);
                  }
                  addr96:
                  _loc2_.§3=§ = this.§92§;
                  if(_loc6_ || _loc3_)
                  {
                     this.§92§ = _loc2_;
                     if(!_loc7_)
                     {
                        var _loc4_:*;
                        §§push((_loc4_ = this).§+q§);
                        if(_loc6_ || param1)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc5_:* = §§pop();
                        if(_loc6_)
                        {
                           _loc4_.§+q§ = _loc5_;
                        }
                        if(_loc6_)
                        {
                           _loc2_.m_body = this;
                           addr134:
                           loop3:
                           while(true)
                           {
                              if(_loc2_.§7!%§ > 0)
                              {
                                 if(!_loc7_)
                                 {
                                    this.§2!D§();
                                    addr191:
                                    while(true)
                                    {
                                    }
                                    addr191:
                                 }
                                 §§goto(addr191);
                              }
                              loop2:
                              while(true)
                              {
                                 §§push(this.m_world);
                                 addr143:
                                 while(true)
                                 {
                                    §§push(this.m_world.§;!R§);
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§push(§§pop() | b2World.§?!;§);
                                    }
                                    §§pop().§;!R§ = §§pop();
                                    if(!(_loc7_ && param1))
                                    {
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr191);
                                    continue loop2;
                                 }
                              }
                           }
                           addr134:
                        }
                     }
                     §§goto(addr191);
                  }
                  return _loc2_;
               }
               §§goto(addr191);
            }
            §§goto(addr134);
         }
         addr28:
         return null;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(_loc5_ || param2)
         {
            _loc3_.shape = param1;
         }
         do
         {
            _loc3_.density = param2;
         }
         while(!_loc5_);
         
         return this.§'[§(_loc3_);
      }
      
      public function §?E§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§<X§ = null;
         if(_loc12_)
         {
            if(this.m_world.§3C§() == true)
            {
               if(!(_loc13_ && this))
               {
                  §§goto(addr42);
               }
            }
            var _loc2_:b2Fixture = this.§92§;
            var _loc3_:b2Fixture = null;
            var _loc4_:Boolean = false;
            loop0:
            for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§3=§)
            {
               if(_loc2_ != param1)
               {
                  continue;
               }
               if(!(_loc13_ && param1))
               {
                  if(!_loc3_)
                  {
                     this.§92§ = param1.§3=§;
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           _loc4_ = true;
                           if(!_loc13_)
                           {
                              if(!_loc12_)
                              {
                                 break;
                              }
                              if(_loc12_)
                              {
                                 if(_loc12_ || _loc3_)
                                 {
                                    if(true)
                                    {
                                       break loop0;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       _loc3_.§3=§ = param1.§3=§;
                                       addr97:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr93:
                                 }
                                 while(true)
                                 {
                                    continue loop2;
                                 }
                              }
                              §§goto(addr97);
                           }
                           break loop0;
                        }
                     }
                  }
               }
               §§goto(addr93);
            }
            var _loc5_:b2ContactEdge = this.§]3§;
            if(!(_loc13_ && _loc3_))
            {
               while(_loc5_)
               {
                  _loc6_ = _loc5_.§+2§;
                  _loc5_ = _loc5_.§-!3§;
                  _loc7_ = _loc6_.§?!l§();
                  _loc8_ = _loc6_.§0+§();
                  if(!(_loc12_ || _loc3_))
                  {
                     continue;
                  }
                  §§push(param1 == _loc7_);
                  if(_loc12_ || this)
                  {
                     if(!§§pop())
                     {
                        if(!_loc13_)
                        {
                           addr169:
                           §§pop();
                           if(!_loc13_)
                           {
                              addr175:
                              if(param1 != _loc8_)
                              {
                                 continue;
                              }
                              if(_loc13_)
                              {
                                 continue;
                              }
                           }
                           this.m_world.§`!n§.§[M§(_loc6_);
                           continue;
                        }
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr169);
               }
               if(_loc12_ || this)
               {
                  if(this.§;!R§ & b2internal::1T)
                  {
                     if(!(_loc13_ && _loc3_))
                     {
                        _loc9_ = this.m_world.§`!n§.§<Z§;
                        if(_loc12_)
                        {
                           param1.§!O§(_loc9_);
                        }
                     }
                     §§goto(addr273);
                  }
                  param1.§[M§();
                  if(!_loc13_)
                  {
                     param1.m_body = null;
                     if(_loc12_ || _loc3_)
                     {
                     }
                     addr249:
                     var _loc10_:*;
                     §§push((_loc10_ = this).§+q§);
                     if(_loc12_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc11_:* = §§pop();
                     if(_loc12_)
                     {
                        _loc10_.§+q§ = _loc11_;
                     }
                     if(_loc12_ || _loc3_)
                     {
                        this.§2!D§();
                     }
                     §§goto(addr273);
                  }
                  param1.§3=§ = null;
                  if(_loc12_ || _loc3_)
                  {
                  }
                  §§goto(addr273);
               }
               §§goto(addr249);
            }
            addr273:
            return;
         }
         addr42:
      }
      
      public function §5!N§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2Fixture = null;
         if(!(_loc8_ && this))
         {
            if(this.m_world.§3C§() == true)
            {
               if(!(_loc8_ && _loc3_))
               {
                  return;
               }
               addr71:
               while(true)
               {
               }
               addr71:
            }
            loop0:
            while(true)
            {
               §§push(this.m_xf);
               loop1:
               while(true)
               {
                  §§push(§§pop().R);
                  if(_loc9_)
                  {
                     §§pop().Set(param2);
                     while(true)
                     {
                        if(_loc9_)
                        {
                           §§push(this.m_xf);
                           if(!(_loc9_ || this))
                           {
                              break;
                           }
                           if(!_loc8_)
                           {
                              §§pop().position.SetV(param1);
                              if(!_loc8_)
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
                        §§goto(addr71);
                     }
                     §§push(§§pop().R);
                     break;
                  }
                  break;
               }
               var _loc4_:b2Mat22 = §§pop();
               var _loc5_:b2Vec2 = this.m_sweep.localCenter;
               if(!_loc8_)
               {
                  §§push(this.m_sweep);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop().c);
                     while(true)
                     {
                        §§push(_loc4_.col1);
                        loop5:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(_loc9_)
                           {
                              §§push(_loc5_.x);
                              if(!(_loc8_ && this))
                              {
                                 addr335:
                                 §§push(§§pop() * §§pop());
                                 while(true)
                                 {
                                    §§push(_loc4_.col2);
                                    addr337:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr338:
                                       while(true)
                                       {
                                          §§push(_loc5_.y);
                                          addr340:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                          }
                                       }
                                    }
                                 }
                                 addr335:
                              }
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 loop7:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    addr343:
                                    loop12:
                                    while(true)
                                    {
                                       §§push(this.m_sweep);
                                       if(_loc8_ && this)
                                       {
                                          addr346:
                                          addr346:
                                          addr355:
                                          addr346:
                                          §§pop().a0 = this.m_sweep.a = param2;
                                          var _loc6_:§<X§ = this.m_world.§`!n§.§<Z§;
                                          _loc3_ = this.§92§;
                                       }
                                       §§push(§§pop().c);
                                       loop13:
                                       while(true)
                                       {
                                          §§push(_loc4_.col1);
                                          if(_loc8_ && param2)
                                          {
                                             break;
                                          }
                                          §§push(§§pop().y);
                                          loop14:
                                          while(_loc9_ || this)
                                          {
                                             §§push(_loc5_.x);
                                             loop15:
                                             while(_loc9_ || param1)
                                             {
                                                §§push(§§pop() * §§pop());
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(_loc4_.col2);
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop().y);
                                                   if(_loc9_)
                                                   {
                                                      §§push(_loc5_.y);
                                                      if(_loc9_ || this)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop17:
                                                         for(; _loc9_; if(_loc8_ && _loc3_)
                                                         {
                                                            continue;
                                                         },§§pop().y = §§pop() + §§pop(),if(_loc9_ || param2)
                                                         {
                                                            §§push(this.m_sweep);
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               §§goto(addr95);
                                                            }
                                                            §§goto(addr346);
                                                         },§§goto(addr355))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            while(true)
                                                            {
                                                               §§pop().y = §§pop();
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  §§push(this.m_sweep);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().c);
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_sweep);
                                                                        addr235:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().c);
                                                                           addr236:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(this.m_xf);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().position);
                                                                                    addr242:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr243:
                                                                                       while(_loc9_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                 }
                                                                                 addr241:
                                                                              }
                                                                              addr246:
                                                                              loop27:
                                                                              while(_loc9_)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc8_ && param1)
                                                                                    {
                                                                                       break;
                                                                                       addr127:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.m_sweep);
                                                                                       if(_loc9_ || param2)
                                                                                       {
                                                                                          §§push(§§pop().c);
                                                                                          if(!(_loc8_ && this))
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                       addr355:
                                                                                       §§goto(addr346);
                                                                                    }
                                                                                    continue loop27;
                                                                                    addr116:
                                                                                    if(!(_loc9_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr127);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.m_sweep);
                                                                                    }
                                                                                    §§goto(addr346);
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr95:
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                  }
                                                               }
                                                               addr176:
                                                               if(_loc8_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc8_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               if(_loc8_ && param1)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               §§push(this.m_xf);
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(§§pop().position);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(_loc9_)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     §§goto(addr243);
                                                                  }
                                                                  §§goto(addr242);
                                                               }
                                                               §§goto(addr241);
                                                            }
                                                         }
                                                         §§goto(addr338);
                                                         addr312:
                                                      }
                                                      §§goto(addr340);
                                                   }
                                                   §§goto(addr312);
                                                }
                                                §§goto(addr337);
                                             }
                                             continue loop6;
                                          }
                                          §§goto(addr335);
                                       }
                                       continue loop5;
                                       addr390:
                                       if(_loc3_)
                                       {
                                          _loc3_.§'!@§(_loc6_,this.m_xf,this.m_xf);
                                          if(!_loc8_)
                                          {
                                             _loc3_ = _loc3_.§3=§;
                                             §§goto(addr390);
                                          }
                                          §§goto(addr403);
                                       }
                                       if(_loc9_ || param1)
                                       {
                                          this.m_world.§`!n§.§0a§();
                                       }
                                       addr403:
                                       return;
                                    }
                                 }
                              }
                           }
                           §§goto(addr335);
                        }
                     }
                  }
               }
               §§goto(addr343);
            }
         }
         §§goto(addr71);
      }
      
      public function §>v§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§5!N§(param1.position,param1.GetAngle());
         }
      }
      
      public function §2!0§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §`!'§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§5!N§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §,v§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5!N§(this.GetPosition(),param1);
         }
      }
      
      public function §[!S§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function § !&§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§+!?§ == b2_staticBody)
            {
               if(!(_loc2_ && param1))
               {
                  §§goto(addr53);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr54:
               }
            }
            while(true)
            {
               this.§^O§.SetV(param1);
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr54);
            }
            return;
         }
         addr53:
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§^O§;
      }
      
      public function §@X§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§+!?§ != b2_staticBody)
            {
               do
               {
                  this.m_angularVelocity = param1;
               }
               while(!_loc3_);
               
               if(!(_loc2_ && param1))
               {
                  return;
                  addr47:
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §-!]§() : b2BodyDef
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(_loc2_)
         {
            _loc1_.type = this.§2!r§();
            loop0:
            while(true)
            {
               _loc1_.§import§ = (this.§;!R§ & b2internal::?!O) == b2internal::?!O;
               loop1:
               while(true)
               {
                  _loc1_.angle = this.GetAngle();
                  while(true)
                  {
                     _loc1_.§!!J§ = this.§[!j§;
                     loop3:
                     while(_loc2_)
                     {
                        _loc1_.§"!T§ = this.m_angularVelocity;
                        loop4:
                        while(true)
                        {
                           _loc1_.§do§ = (this.§;!R§ & b2internal::'U) == b2internal::'U;
                           loop5:
                           for(; !_loc3_; if(_loc2_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 _loc1_.§+!+§ = this.GetUserData();
                                 addr68:
                                 if(!_loc2_)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          while(!_loc3_)
                                          {
                                             _loc1_.position = this.GetPosition();
                                             continue loop10;
                                          }
                                          continue loop4;
                                          addr85:
                                       }
                                       if(!_loc3_)
                                       {
                                          §§goto(addr52);
                                       }
                                       while(true)
                                       {
                                          _loc1_.§2!s§ = this.§[s§;
                                          continue loop3;
                                       }
                                    }
                                    §§goto(addr120);
                                 }
                                 addr35:
                                 if(_loc2_ || _loc3_)
                                 {
                                    return _loc1_;
                                 }
                                 continue loop3;
                              }
                              continue loop1;
                           })
                           {
                              _loc1_.§,$§ = (this.§;!R§ & b2internal::%6) == b2internal::%6;
                              while(true)
                              {
                                 _loc1_.§!,§ = (this.§;!R§ & b2internal::1") == b2internal::1";
                                 addr52:
                                 if(_loc2_ || _loc3_)
                                 {
                                    continue loop5;
                                 }
                              }
                           }
                           continue loop0;
                        }
                        while(_loc2_ || _loc3_)
                        {
                           _loc1_.§,W§.SetV(this.GetLinearVelocity());
                           §§goto(addr85);
                           §§goto(addr35);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      public function §^=§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            if(this.§+!?§ == b2_dynamicBody)
            {
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     while(true)
                     {
                        this.SetAwake(true);
                        addr202:
                        §§goto(addr214);
                     }
                     addr199:
                  }
                  while(true)
                  {
                     §§push(this.§84§);
                     loop4:
                     while(true)
                     {
                        §§push(this.§84§);
                        addr188:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr189:
                           while(true)
                           {
                              §§push(param1.x);
                              addr191:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr192:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         addr214:
         while(!(_loc3_ && _loc3_))
         {
         }
      }
      
      public function §>F§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§+!?§ != b2_dynamicBody)
            {
               if(_loc3_)
               {
                  return;
               }
               while(true)
               {
               }
               addr81:
            }
            while(true)
            {
               if(this.IsAwake() != false)
               {
                  addr39:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§3!T§);
                     if(!_loc2_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§3!T§ = §§pop();
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     continue loop2;
                  }
               }
               while(_loc3_)
               {
                  this.SetAwake(true);
                  while(true)
                  {
                     §§goto(addr39);
                  }
               }
               continue;
               return;
            }
         }
         §§goto(addr81);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(this.§+!?§ != b2_dynamicBody)
            {
               if(_loc3_ || _loc3_)
               {
                  return;
               }
               while(true)
               {
               }
               addr231:
            }
            loop1:
            while(true)
            {
               if(this.IsAwake() == false)
               {
                  while(true)
                  {
                     this.SetAwake(true);
                     addr218:
                     while(true)
                     {
                     }
                     addr192:
                     if(_loc3_ || param1)
                     {
                        loop13:
                        while(true)
                        {
                           §§push(this.§^O§);
                           if(!_loc4_)
                           {
                              §§push(this.§^O§);
                              if(!_loc4_)
                              {
                                 §§push(§§pop().y);
                                 if(!(_loc4_ && param1))
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc3_ || this)
                                       {
                                          §§push(this.§7n§);
                                          if(_loc3_)
                                          {
                                             §§push(param1.y);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr158:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc4_ && param1))
                                                {
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      addr173:
                                                      §§pop().y = §§pop() + §§pop();
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§push(this);
                                                         §§push(this.m_angularVelocity);
                                                         if(!(_loc4_ && this))
                                                         {
                                                            §§push(this.§;5§);
                                                            if(_loc3_ || param2)
                                                            {
                                                               §§push(param2.x);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(this.m_sweep.c.x);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc3_ || this)
                                                                     {
                                                                        §§push(param1.y);
                                                                        if(_loc3_)
                                                                        {
                                                                           addr70:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc3_ || param2)
                                                                           {
                                                                              addr78:
                                                                              §§push(param2.y);
                                                                              if(!(_loc4_ && param1))
                                                                              {
                                                                                 addr87:
                                                                                 §§push(this.m_sweep.c.y);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr99:
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(param1.x);
                                                                                    }
                                                                                    §§pop().m_angularVelocity = §§pop() + §§pop() * (§§pop() - §§pop());
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       break loop13;
                                                                                    }
                                                                                    addr190:
                                                                                    while(_loc3_)
                                                                                    {
                                                                                       §§goto(addr192);
                                                                                    }
                                                                                    §§goto(addr218);
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                           }
                                                                           §§goto(addr99);
                                                                        }
                                                                        §§goto(addr87);
                                                                     }
                                                                     §§goto(addr78);
                                                                  }
                                                                  §§goto(addr70);
                                                               }
                                                               §§goto(addr78);
                                                            }
                                                         }
                                                         §§goto(addr99);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§^O§);
                                                         addr180:
                                                         while(true)
                                                         {
                                                            §§push(this.§^O§);
                                                            addr182:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               addr183:
                                                               while(true)
                                                               {
                                                                  §§push(this.§7n§);
                                                               }
                                                            }
                                                            continue loop13;
                                                         }
                                                         §§goto(addr218);
                                                      }
                                                      addr177:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1.x);
                                                      addr187:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr189:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      §§goto(addr190);
                                                   }
                                                }
                                             }
                                             §§goto(addr187);
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr183);
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr180);
                        }
                        return;
                        addr209:
                     }
                  }
               }
               §§goto(addr177);
            }
         }
         §§goto(addr209);
      }
      
      public function §>!$§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.GetAngularVelocity());
         if(!_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§[!S§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§04§(this.§-!]§());
         var _loc8_:b2Fixture = _loc5_.§92§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc17_ || _loc3_)
               {
                  _loc5_.§2!D§();
                  if(!(_loc16_ && _loc2_))
                  {
                     addr189:
                     _loc6_.§2!D§();
                     break;
                  }
                  break;
               }
               §§goto(addr189);
            }
            else
            {
               if(!param1(_loc8_))
               {
                  _loc7_ = _loc8_;
                  _loc8_ = _loc8_.§3=§;
                  continue;
               }
               if(!_loc17_)
               {
                  break;
               }
               _loc13_ = _loc8_.§3=§;
               if(!(_loc16_ && _loc3_))
               {
                  if(_loc7_)
                  {
                     if(_loc17_ || param1)
                     {
                        _loc7_.§3=§ = _loc13_;
                        if(!_loc16_)
                        {
                           addr97:
                           var _loc14_:*;
                           §§push((_loc14_ = _loc5_).§+q§);
                           if(!_loc16_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc15_:* = §§pop();
                           if(!(_loc16_ && _loc3_))
                           {
                              _loc14_.§+q§ = _loc15_;
                           }
                           if(!_loc16_)
                           {
                              _loc8_.§3=§ = _loc6_.§92§;
                              if(!_loc16_)
                              {
                                 addr125:
                                 _loc6_.§92§ = _loc8_;
                                 if(!_loc17_)
                                 {
                                 }
                                 addr160:
                                 _loc8_ = _loc13_;
                                 continue;
                              }
                           }
                           §§goto(addr160);
                        }
                        §§push((_loc14_ = _loc6_).§+q§);
                        if(_loc17_)
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc15_ = §§pop();
                        if(_loc17_)
                        {
                           _loc14_.§+q§ = _loc15_;
                        }
                        if(!_loc16_)
                        {
                           addr157:
                           _loc8_.m_body = _loc6_;
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr125);
                  }
                  else
                  {
                     _loc5_.§92§ = _loc13_;
                     if(!(_loc16_ && param1))
                     {
                        §§goto(addr97);
                     }
                  }
                  §§goto(addr157);
               }
               §§goto(addr125);
            }
         }
         var _loc9_:b2Vec2 = _loc5_.§[!S§();
         var _loc10_:b2Vec2 = _loc6_.§[!S§();
         var _loc11_:b2Vec2 = b2Math.§,x§(_loc2_,b2Math.§;C§(_loc3_,b2Math.§54§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§,x§(_loc2_,b2Math.§;C§(_loc3_,b2Math.§54§(_loc10_,_loc4_)));
         if(_loc17_ || _loc2_)
         {
            _loc5_.SetLinearVelocity(_loc11_);
         }
         loop1:
         while(true)
         {
            _loc6_.SetLinearVelocity(_loc12_);
            while(true)
            {
               _loc5_.§@X§(_loc3_);
               addr269:
               while(_loc17_ || _loc2_)
               {
                  continue loop1;
               }
            }
         }
      }
      
      public function §39§(param1:b2Body) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§92§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§3=§;
            if(!_loc14_)
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§+q§);
               if(_loc15_ || param1)
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(!(_loc14_ && _loc3_))
               {
                  _loc12_.§+q§ = _loc13_;
               }
               if(_loc15_)
               {
                  _loc2_.§3=§ = this.§92§;
                  if(!_loc14_)
                  {
                     this.§92§ = _loc2_;
                     if(!(_loc14_ && this))
                     {
                        §§push((_loc12_ = this).§+q§);
                        if(!_loc14_)
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc13_ = §§pop();
                        if(_loc15_ || _loc3_)
                        {
                           _loc12_.§+q§ = _loc13_;
                        }
                        if(_loc15_ || _loc3_)
                        {
                           _loc2_.m_body = _loc4_;
                        }
                     }
                  }
               }
            }
            _loc2_ = _loc11_;
         }
         if(!_loc14_)
         {
            _loc3_.§+q§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§[!S§();
         var _loc6_:b2Vec2 = _loc4_.§[!S§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.GetAngularVelocity());
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.GetAngularVelocity());
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(_loc15_)
         {
            _loc3_.§2!D§();
         }
         do
         {
            this.§-!6§();
         }
         while(_loc14_ && _loc2_);
         
      }
      
      public function GetMass() : Number
      {
         return this.§,0§;
      }
      
      public function §[D§() : Number
      {
         return this.§'v§;
      }
      
      public function §!!+§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            param1.§@K§ = this.§,0§;
         }
         do
         {
            param1.§8`§ = this.§'v§;
            do
            {
               param1.center.SetV(this.m_sweep.localCenter);
            }
            while(!_loc3_);
            
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      public function §"!&§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(b2Settings);
            §§push(this.m_world.§3C§());
            if(!_loc3_)
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§3C§());
               loop1:
               while(true)
               {
                  §§push(true);
                  loop2:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        §§goto(addr285);
                     }
                     loop3:
                     while(true)
                     {
                        §§push(this.§+!?§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() == b2_dynamicBody)
                           {
                              loop5:
                              while(true)
                              {
                                 this.§7n§ = 0;
                                 loop6:
                                 while(true)
                                 {
                                    this.§'v§ = 0;
                                    loop7:
                                    for(; !(_loc3_ && _loc2_); while(!(_loc3_ && _loc3_))
                                    {
                                       this.§;5§ = 1 / this.§'v§;
                                       if(_loc3_ && this)
                                       {
                                          continue;
                                       }
                                       §§goto(addr34);
                                    })
                                    {
                                       this.§;5§ = 0;
                                       loop8:
                                       while(true)
                                       {
                                          this.§,0§ = param1.§@K§;
                                          loop9:
                                          while(!_loc3_)
                                          {
                                             §§push(this.§,0§);
                                             while(true)
                                             {
                                                §§push(0);
                                                addr225:
                                                addr220:
                                                while(true)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         this.§,0§ = 1;
                                                         addr229:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr226:
                                                   }
                                                   addr204:
                                                   while(true)
                                                   {
                                                      this.§7n§ = 1 / this.§,0§;
                                                      while(_loc4_)
                                                      {
                                                         continue loop0;
                                                         if(!(_loc4_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc3_ && _loc2_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(false)
                                                         {
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§push(this.§;!R§ & b2internal::'U);
                                                               if(_loc3_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() == 0);
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  while(§§pop())
                                                                  {
                                                                     if(!(_loc4_ || _loc3_))
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§push(this);
                                                                        §§push(param1.§8`§);
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           §§push(this.§,0§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(param1.center.x);
                                                                              if(!(_loc3_ && param1))
                                                                              {
                                                                                 §§push(param1.center);
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr145:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr132:
                                                                                          §§push(param1.center.y);
                                                                                          if(_loc4_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() * param1.center.y);
                                                                                          }
                                                                                       }
                                                                                       §§pop().§'v§ = §§pop() - §§pop() * §§pop();
                                                                                       continue loop7;
                                                                                    }
                                                                                    §§goto(addr145);
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§goto(addr132);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr145);
                                                                     }
                                                                  }
                                                                  var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     addr498:
                                                                     this.m_sweep.localCenter.SetV(param1.center);
                                                                  }
                                                                  addr482:
                                                                  addr502:
                                                                  §§push(this.m_sweep);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§pop().c0.SetV(b2Math.§'!6§(this.m_xf,this.m_sweep.localCenter));
                                                                     addr493:
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(this.m_sweep);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§pop().c.SetV(this.m_sweep.c0);
                                                                           addr476:
                                                                           if(_loc4_)
                                                                           {
                                                                              addr428:
                                                                              addr447:
                                                                              addr446:
                                                                              addr445:
                                                                              addr444:
                                                                              addr433:
                                                                              addr432:
                                                                              addr430:
                                                                              addr427:
                                                                              addr425:
                                                                              §§push(this.§^O§);
                                                                              §§push(this.§^O§.x);
                                                                              §§push(this.m_angularVelocity);
                                                                              §§push(this.m_sweep.c.y);
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 addr443:
                                                                                 §§push(§§pop() - _loc2_.y);
                                                                              }
                                                                              §§pop().x = §§pop() + §§pop() * -§§pop();
                                                                              addr448:
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 §§push(this.§^O§);
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    §§push(this.§^O§);
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          §§push(this.m_angularVelocity);
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§push(this.m_sweep);
                                                                                                if(_loc4_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop().c);
                                                                                                   if(_loc4_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(_loc2_.x);
                                                                                                         if(!(_loc3_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc4_ || this)
                                                                                                            {
                                                                                                               addr395:
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  addr398:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr406:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        addr409:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              if(_loc3_ && _loc3_)
                                                                                                                              {
                                                                                                                                 §§goto(addr448);
                                                                                                                              }
                                                                                                                              return;
                                                                                                                           }
                                                                                                                           §§goto(addr428);
                                                                                                                        }
                                                                                                                        §§goto(addr447);
                                                                                                                     }
                                                                                                                     §§goto(addr446);
                                                                                                                  }
                                                                                                                  §§goto(addr445);
                                                                                                               }
                                                                                                               §§goto(addr444);
                                                                                                            }
                                                                                                            §§goto(addr398);
                                                                                                         }
                                                                                                         §§goto(addr443);
                                                                                                      }
                                                                                                      §§goto(addr395);
                                                                                                   }
                                                                                                   §§goto(addr433);
                                                                                                }
                                                                                                §§goto(addr432);
                                                                                             }
                                                                                             §§goto(addr430);
                                                                                          }
                                                                                          §§goto(addr406);
                                                                                       }
                                                                                       §§goto(addr409);
                                                                                    }
                                                                                    §§goto(addr427);
                                                                                 }
                                                                                 §§goto(addr425);
                                                                              }
                                                                              §§goto(addr476);
                                                                           }
                                                                           §§goto(addr493);
                                                                        }
                                                                        §§goto(addr482);
                                                                     }
                                                                     §§goto(addr502);
                                                                  }
                                                                  §§goto(addr498);
                                                               }
                                                               else
                                                               {
                                                                  addr186:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                  }
                                                                  addr186:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        if(_loc3_ && _loc2_)
                                                                        {
                                                                           addr285:
                                                                           return;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                        addr203:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr226);
                                                                     }
                                                                  }
                                                                  break;
                                                                  §§goto(addr186);
                                                               }
                                                               §§goto(addr229);
                                                            }
                                                            continue loop4;
                                                         }
                                                         §§goto(addr297);
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                                §§push(param1.§8`§);
                                                if(_loc3_)
                                                {
                                                   continue;
                                                }
                                                §§push(0);
                                                if(_loc4_ || this)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   if(_loc4_ || param1)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc4_ || _loc2_))
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr186);
                                                      }
                                                      §§goto(addr73);
                                                   }
                                                   §§goto(addr186);
                                                }
                                                else
                                                {
                                                   §§goto(addr225);
                                                }
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                           }
                           if(_loc4_)
                           {
                              return;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr203);
      }
      
      public function §2!D§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2MassData = null;
         if(!_loc5_)
         {
            this.§,0§ = 0;
            while(true)
            {
               this.§7n§ = 0;
            }
            addr123:
         }
         while(true)
         {
            this.§'v§ = 0;
            loop2:
            while(_loc6_ || _loc1_)
            {
               this.§;5§ = 0;
               loop3:
               while(true)
               {
                  this.m_sweep.localCenter.§`!5§();
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(this.§+!?§);
                        addr68:
                        while(true)
                        {
                           §§push(b2_staticBody);
                           addr69:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc6_ || this)
                              {
                                 if(!§§pop())
                                 {
                                    addr79:
                                    while(true)
                                    {
                                       §§pop();
                                    }
                                    addr79:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc5_ && _loc3_)
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             addr80:
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   continue loop3;
                                                }
                                                continue loop4;
                                                §§goto(addr79);
                                             }
                                             continue loop2;
                                          }
                                          if(!_loc5_)
                                          {
                                             return;
                                          }
                                          §§goto(addr123);
                                       }
                                       §§push(§§pop() == §§pop());
                                       addr36:
                                       break;
                                       if(_loc6_ || _loc1_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr79);
                                    }
                                    var _loc1_:b2Vec2 = b2Vec2.§5!3§(0,0);
                                    var _loc2_:b2Fixture = this.§92§;
                                    addr250:
                                    if(_loc2_)
                                    {
                                       §§push(_loc2_.§7!%§);
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(0);
                                          if(_loc6_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr246:
                                                   _loc2_ = _loc2_.§3=§;
                                                   §§goto(addr250);
                                                }
                                                addr466:
                                                §§push((this.§;!R§ & b2internal::'U) == 0);
                                                if(_loc6_ || _loc1_)
                                                {
                                                   addr400:
                                                   if(§§pop())
                                                   {
                                                      addr402:
                                                      §§push(this);
                                                      §§push(this.§'v§);
                                                      if(_loc6_ || _loc1_)
                                                      {
                                                         §§push(this.§,0§);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(_loc1_.x);
                                                            if(_loc6_)
                                                            {
                                                               §§push(_loc1_.x);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     addr445:
                                                                     addr446:
                                                                     addr447:
                                                                     §§push(_loc1_.y);
                                                                     if(_loc6_ || _loc1_)
                                                                     {
                                                                        addr441:
                                                                        §§push(§§pop() * _loc1_.y);
                                                                     }
                                                                     §§pop().§'v§ = §§pop() - §§pop() * (§§pop() + §§pop());
                                                                     addr448:
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§'v§);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§§pop() * this.§'!x§);
                                                                        }
                                                                        §§pop().§'v§ = §§pop();
                                                                        addr383:
                                                                        if(!_loc5_)
                                                                        {
                                                                           b2Settings.b2Assert(this.§'v§ > 0);
                                                                           addr365:
                                                                           if(!(_loc5_ && _loc1_))
                                                                           {
                                                                              this.§;5§ = 1 / this.§'v§;
                                                                              addr346:
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(_loc5_ && _loc2_)
                                                                                    {
                                                                                       addr451:
                                                                                       §§push(this.§'v§ > 0);
                                                                                       if(_loc6_ || _loc1_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr465:
                                                                                             §§pop();
                                                                                             §§goto(addr466);
                                                                                          }
                                                                                          §§goto(addr400);
                                                                                       }
                                                                                       §§goto(addr465);
                                                                                       addr495:
                                                                                    }
                                                                                    addr511:
                                                                                    var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       addr697:
                                                                                       this.m_sweep.localCenter.SetV(_loc1_);
                                                                                       addr700:
                                                                                       §§push(this.m_sweep);
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          §§pop().c0.SetV(b2Math.§'!6§(this.m_xf,this.m_sweep.localCenter));
                                                                                          addr694:
                                                                                          §§push(this.m_sweep);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§pop().c.SetV(this.m_sweep.c0);
                                                                                             addr657:
                                                                                             if(!(_loc5_ && _loc3_))
                                                                                             {
                                                                                                addr645:
                                                                                                this.§^O§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
                                                                                                addr646:
                                                                                                addr635:
                                                                                                addr644:
                                                                                                addr643:
                                                                                                addr641:
                                                                                                addr639:
                                                                                                addr642:
                                                                                                addr638:
                                                                                                addr637:
                                                                                                addr633:
                                                                                                addr632:
                                                                                                §§push(this.§^O§);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(this.§^O§);
                                                                                                   if(_loc6_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(this.m_angularVelocity);
                                                                                                            if(_loc6_ || _loc1_)
                                                                                                            {
                                                                                                               §§push(this.m_sweep);
                                                                                                               if(_loc6_ || _loc1_)
                                                                                                               {
                                                                                                                  §§push(§§pop().c);
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(!(_loc5_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(_loc3_.x);
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       addr591:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc6_ || this)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             addr602:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!(_loc5_ && this))
                                                                                                                                             {
                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                if(!(_loc5_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_ && this)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr700);
                                                                                                                                                      }
                                                                                                                                                      return;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr657);
                                                                                                                                                }
                                                                                                                                                §§goto(addr646);
                                                                                                                                             }
                                                                                                                                             §§goto(addr645);
                                                                                                                                          }
                                                                                                                                          §§goto(addr635);
                                                                                                                                       }
                                                                                                                                       §§goto(addr644);
                                                                                                                                    }
                                                                                                                                    §§goto(addr643);
                                                                                                                                 }
                                                                                                                                 §§goto(addr591);
                                                                                                                              }
                                                                                                                              §§goto(addr641);
                                                                                                                           }
                                                                                                                           §§goto(addr639);
                                                                                                                        }
                                                                                                                        §§goto(addr642);
                                                                                                                     }
                                                                                                                     §§goto(addr591);
                                                                                                                  }
                                                                                                                  §§goto(addr638);
                                                                                                               }
                                                                                                               §§goto(addr637);
                                                                                                            }
                                                                                                            §§goto(addr591);
                                                                                                         }
                                                                                                         §§goto(addr633);
                                                                                                      }
                                                                                                      §§goto(addr602);
                                                                                                   }
                                                                                                   §§goto(addr632);
                                                                                                }
                                                                                                addr630:
                                                                                                §§goto(addr630);
                                                                                             }
                                                                                             §§goto(addr694);
                                                                                          }
                                                                                          §§goto(addr700);
                                                                                       }
                                                                                       §§goto(addr697);
                                                                                    }
                                                                                    §§goto(addr694);
                                                                                    addr315:
                                                                                 }
                                                                                 §§goto(addr383);
                                                                              }
                                                                              §§goto(addr365);
                                                                           }
                                                                           §§goto(addr402);
                                                                           addr385:
                                                                        }
                                                                        addr471:
                                                                        §§goto(addr451);
                                                                     }
                                                                     addr477:
                                                                     if(!(_loc5_ && _loc2_))
                                                                     {
                                                                        this.§7n§ = 1;
                                                                        §§goto(addr471);
                                                                     }
                                                                     §§push(_loc1_);
                                                                     §§push(_loc1_.y);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(§§pop() * this.§7n§);
                                                                     }
                                                                     §§pop().y = §§pop();
                                                                     §§goto(addr495);
                                                                     addr510:
                                                                  }
                                                                  §§goto(addr445);
                                                               }
                                                               §§goto(addr441);
                                                            }
                                                            §§goto(addr445);
                                                         }
                                                         §§goto(addr446);
                                                      }
                                                      §§goto(addr447);
                                                   }
                                                   this.§'v§ = 0;
                                                   addr321:
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      this.§;5§ = 0;
                                                      if(_loc6_ || this)
                                                      {
                                                         if(_loc6_ || this)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr466);
                                                            }
                                                            if(false)
                                                            {
                                                               §§goto(addr315);
                                                            }
                                                            §§goto(addr511);
                                                         }
                                                         §§goto(addr346);
                                                      }
                                                      §§goto(addr321);
                                                   }
                                                   §§goto(addr448);
                                                }
                                                §§goto(addr465);
                                             }
                                             _loc4_ = _loc2_.§!!+§();
                                             if(_loc6_ || _loc1_)
                                             {
                                                §§push(this);
                                                §§push(this.§,0§);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() + _loc4_.§@K§);
                                                }
                                                §§pop().§,0§ = §§pop();
                                                §§push(_loc1_);
                                                §§push(_loc1_.x);
                                                if(_loc6_)
                                                {
                                                   §§push(_loc4_.center.x);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() * _loc4_.§@K§);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().x = §§pop();
                                                addr228:
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   addr190:
                                                   §§push(_loc1_);
                                                   §§push(_loc1_.y);
                                                   if(_loc6_)
                                                   {
                                                      §§push(_loc4_.center.y);
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(§§pop() * _loc4_.§@K§);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().y = §§pop();
                                                   §§push(this);
                                                   §§push(this.§'v§);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() + _loc4_.§8`§);
                                                   }
                                                   §§pop().§'v§ = §§pop();
                                                   if(_loc6_ || _loc1_)
                                                   {
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         addr188:
                                                         if(false)
                                                         {
                                                            §§goto(addr190);
                                                         }
                                                         §§goto(addr246);
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                   addr211:
                                                   §§goto(addr211);
                                                }
                                                addr245:
                                                §§goto(addr245);
                                             }
                                             §§goto(addr188);
                                          }
                                          §§goto(addr451);
                                       }
                                       addr263:
                                       §§push(0);
                                       if(_loc6_ || _loc3_)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                this.§7n§ = 1 / this.§,0§;
                                                if(_loc6_ || _loc2_)
                                                {
                                                   §§push(_loc1_);
                                                   §§push(_loc1_.x);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§push(§§pop() * this.§7n§);
                                                   }
                                                   §§pop().x = §§pop();
                                                   §§goto(addr510);
                                                   addr292:
                                                }
                                                §§goto(addr466);
                                             }
                                             §§goto(addr385);
                                          }
                                          else
                                          {
                                             this.§,0§ = 1;
                                          }
                                          §§goto(addr477);
                                       }
                                       §§goto(addr451);
                                    }
                                    if(!(_loc5_ && _loc1_))
                                    {
                                       §§push(this.§,0§);
                                       if(_loc6_)
                                       {
                                          §§goto(addr263);
                                       }
                                       §§goto(addr451);
                                    }
                                    §§goto(addr292);
                                 }
                                 §§goto(addr80);
                              }
                              §§goto(addr79);
                           }
                        }
                     }
                  }
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
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1.x);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
                  §§push(_loc2_.col2.x);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(param1.y);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           addr68:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(param1.x);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_)
                                 {
                                 }
                                 §§goto(addr109);
                              }
                              addr108:
                              addr109:
                              var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                              if(_loc5_ || _loc2_)
                              {
                                 §§push(_loc3_);
                                 §§push(_loc3_.x);
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(§§pop() + this.m_xf.position.x);
                                 }
                                 §§pop().x = §§pop();
                              }
                              do
                              {
                                 §§push(_loc3_);
                                 §§push(_loc3_.y);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() + this.m_xf.position.y);
                                 }
                                 §§pop().y = §§pop();
                              }
                              while(!(_loc5_ || _loc2_));
                              
                              return _loc3_;
                              §§push(§§pop() + §§pop());
                           }
                        }
                        §§push(_loc2_.col2.y);
                        if(_loc5_ || this)
                        {
                           §§push(§§pop() * param1.y);
                        }
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr109);
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §!!U§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§'q§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§0r§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§;%§(this.m_xf.R,param1);
      }
      
      public function §'M§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§^O§.x);
         if(!_loc2_)
         {
            §§push(this.m_angularVelocity);
            if(_loc3_ || this)
            {
               §§push(param1.y);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(this.m_sweep.c.y);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc3_ || this)
                        {
                           addr84:
                           §§push(§§pop() - §§pop());
                           §§push(this.§^O§.y);
                           if(_loc3_ || _loc3_)
                           {
                              addr94:
                              §§push(this.m_angularVelocity);
                              if(_loc3_)
                              {
                                 addr98:
                                 §§push(param1.x);
                                 if(_loc3_)
                                 {
                                    addr107:
                                    §§push(§§pop() * (§§pop() - this.m_sweep.c.x));
                                 }
                                 §§goto(addr107);
                              }
                              §§push(§§pop() + §§pop());
                           }
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr107);
               }
               §§goto(addr98);
            }
            §§goto(addr94);
         }
         §§goto(addr84);
      }
      
      public function §8G§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc4_)
         {
            §§push(param1.x);
            if(_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && _loc2_))
               {
                  addr39:
                  §§push(_loc2_.col2.x);
                  if(!_loc5_)
                  {
                     addr44:
                     §§push(param1.y);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_ || _loc3_)
                        {
                           addr62:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc4_ || this)
                           {
                              addr72:
                              §§push(param1.x);
                              if(_loc4_ || this)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_ || param1)
                                 {
                                    §§push(_loc2_.col2.y);
                                    if(_loc4_ || this)
                                    {
                                       addr99:
                                       §§push(§§pop() * param1.y);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                              }
                              §§goto(addr99);
                           }
                           var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                           if(_loc4_ || _loc2_)
                           {
                              §§push(_loc3_);
                              §§push(_loc3_.x);
                              if(!(_loc5_ && param1))
                              {
                                 §§push(§§pop() + this.m_xf.position.x);
                              }
                              §§pop().x = §§pop();
                           }
                           do
                           {
                              §§push(_loc3_);
                              §§push(_loc3_.y);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() + this.m_xf.position.y);
                              }
                              §§pop().y = §§pop();
                           }
                           while(_loc5_ && _loc2_);
                           
                           §§push(§§findproperty(b2Vec2));
                           §§push(this.§^O§.x);
                           if(_loc4_)
                           {
                              §§push(this.m_angularVelocity);
                              if(_loc4_ || param1)
                              {
                                 §§push(_loc3_.y);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(this.m_sweep.c.y);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc4_ || this)
                                       {
                                          §§goto(addr163);
                                       }
                                       §§goto(addr186);
                                    }
                                    §§goto(addr200);
                                 }
                                 addr163:
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr172:
                                    §§push(§§pop() - §§pop());
                                    §§push(this.§^O§.y);
                                    if(_loc4_)
                                    {
                                       §§push(this.m_angularVelocity);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          addr186:
                                          §§push(_loc3_.x);
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             addr200:
                                             §§push(§§pop() * (§§pop() - this.m_sweep.c.x));
                                          }
                                          §§goto(addr200);
                                       }
                                    }
                                 }
                                 §§goto(addr202);
                              }
                              addr202:
                              return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr72);
               }
               §§goto(addr62);
            }
            §§goto(addr44);
         }
         §§goto(addr39);
      }
      
      public function §=Z§() : Number
      {
         return this.§[s§;
      }
      
      public function §!I§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§[s§ = param1;
         }
      }
      
      public function §6!m§() : Number
      {
         return this.§[!j§;
      }
      
      public function §^!j§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§[!j§ = param1;
         }
      }
      
      public function §7!r§(param1:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(this.§+!?§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr133:
               while(§§pop() != §§pop())
               {
                  while(true)
                  {
                     this.§+!?§ = param1;
                     addr112:
                     while(_loc3_ || param1)
                     {
                        this.§2!D§();
                        continue loop0;
                     }
                  }
               }
               addr134:
               return;
            }
         }
         §§goto(addr76);
      }
      
      public function §2!r§() : uint
      {
         return this.§+!?§;
      }
      
      public function §&!@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!param1)
            {
               this.§;!R§ &= ~b2internal::%6;
               if(!_loc3_)
               {
                  if(!_loc2_)
                  {
                     addr55:
                     this.§;!R§ |= b2internal::%6;
                     addr61:
                  }
                  else
                  {
                     addr52:
                  }
                  return;
               }
               §§goto(addr61);
            }
            §§goto(addr55);
         }
         §§goto(addr52);
      }
      
      public function §<!l§() : Boolean
      {
         return (this.§;!R§ & b2internal::%6) == b2internal::%6;
      }
      
      public function §!!"§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               this.§;!R§ &= ~b2internal::?!O;
               while(!_loc2_)
               {
                  this.SetAwake(true);
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(!(_loc3_ || param1))
                  {
                     addr73:
                     this.§;!R§ |= b2internal::?!O;
                     break;
                  }
                  §§goto(addr20);
               }
               addr20:
               return;
               addr79:
            }
            §§goto(addr73);
         }
         §§goto(addr79);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               this.§;!R§ &= ~b2internal::1";
               loop0:
               while(true)
               {
                  if(!_loc2_)
                  {
                     this.§@!#§ = 0;
                     loop1:
                     while(true)
                     {
                        this.§^O§.§`!5§();
                        loop2:
                        while(!(_loc2_ && _loc3_))
                        {
                           this.m_angularVelocity = 0;
                           while(true)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 this.§84§.§`!5§();
                                 continue loop1;
                              }
                              continue loop2;
                              addr35:
                              if(_loc3_ || param1)
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr20);
                                 }
                                 break loop0;
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr125);
                     }
                  }
               }
               this.§@!#§ = 0;
               addr125:
               addr20:
               return;
               addr134:
            }
         }
         this.§;!R§ |= b2internal::1";
         §§goto(addr134);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§;!R§ & b2internal::1") == b2internal::1";
      }
      
      public function §`y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(param1)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.§;!R§ |= b2internal::'U;
               }
               while(true)
               {
                  §§goto(addr39);
               }
               addr88:
            }
            else
            {
               this.§;!R§ &= ~b2internal::'U;
            }
            while(true)
            {
               if(!_loc2_)
               {
                  §§goto(addr72);
               }
               else
               {
                  §§goto(addr88);
               }
               §§goto(addr59);
            }
         }
         addr59:
         do
         {
            this.§2!D§();
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      public function §2!L§() : Boolean
      {
         return (this.§;!R§ & b2internal::'U) == b2internal::'U;
      }
      
      public function §#V§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§<X§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(!_loc7_)
         {
            §§push(param1);
            if(!_loc7_)
            {
               if(§§pop() == this.§8!f§())
               {
                  if(_loc6_ || this)
                  {
                     return;
                  }
                  addr51:
                  §§push(param1);
               }
               §§goto(addr51);
            }
            if(§§pop())
            {
               if(!_loc7_)
               {
                  this.§;!R§ |= b2internal::1T;
               }
               _loc2_ = this.m_world.§`!n§.§<Z§;
               _loc3_ = this.§92§;
               while(_loc3_)
               {
                  _loc3_.§0!S§(_loc2_,this.m_xf);
                  if(!_loc6_)
                  {
                     break;
                  }
                  _loc3_ = _loc3_.§3=§;
               }
            }
            else
            {
               this.§;!R§ &= ~b2internal::1T;
               _loc2_ = this.m_world.§`!n§.§<Z§;
               _loc3_ = this.§92§;
               if(_loc6_)
               {
                  loop0:
                  while(_loc3_)
                  {
                     _loc3_.§!O§(_loc2_);
                     if(!_loc6_)
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc3_ = _loc3_.§3=§;
                        continue loop0;
                     }
                  }
                  _loc4_ = this.§]3§;
                  if(!(_loc7_ && this))
                  {
                     while(_loc4_)
                     {
                        _loc5_ = _loc4_;
                        _loc4_ = _loc4_.§-!3§;
                        if(!(_loc7_ && _loc2_))
                        {
                           this.m_world.§`!n§.§[M§(_loc5_.§+2§);
                        }
                     }
                     if(!_loc6_)
                     {
                     }
                     §§goto(addr179);
                  }
                  this.§]3§ = null;
                  §§goto(addr179);
               }
               §§goto(addr123);
            }
            addr179:
            return;
         }
         §§goto(addr51);
      }
      
      public function §8!f§() : Boolean
      {
         return (this.§;!R§ & b2internal::1T) == b2internal::1T;
      }
      
      public function §3!r§() : Boolean
      {
         return (this.§;!R§ & b2internal::?!O) == b2internal::?!O;
      }
      
      public function §=!e§() : b2Fixture
      {
         return this.§92§;
      }
      
      public function §+!<§() : b2JointEdge
      {
         return this.§"O§;
      }
      
      public function §9!P§() : b2ControllerEdge
      {
         return this.§-_§;
      }
      
      public function §"x§() : b2ContactEdge
      {
         return this.§]3§;
      }
      
      public function §+!N§() : b2Body
      {
         return this.§3=§;
      }
      
      public function GetUserData() : *
      {
         return this.§?f§;
      }
      
      public function §`!N§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?f§ = param1;
         }
      }
      
      public function §%!D§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §-!6§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §%!`§;
         if(_loc6_ || _loc2_)
         {
            §§push(_loc1_.R);
            if(_loc6_)
            {
               §§pop().Set(this.m_sweep.a0);
               addr37:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(_loc6_)
            {
               §§push(_loc1_.position);
               if(!(_loc7_ && _loc1_))
               {
                  §§push(this.m_sweep);
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(§§pop().c0);
                     if(_loc6_)
                     {
                        §§push(§§pop().x);
                        if(_loc6_)
                        {
                           §§push(_loc2_.col1);
                           if(_loc6_)
                           {
                              §§push(§§pop().x);
                              if(_loc6_)
                              {
                                 §§push(_loc3_.x);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc7_)
                                    {
                                       §§push(_loc2_.col2);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc6_ || this)
                                          {
                                             §§push(_loc3_.y);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   addr125:
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            addr149:
                                                            §§push(_loc1_.position);
                                                            §§push(this.m_sweep.c0.y);
                                                            if(!(_loc7_ && this))
                                                            {
                                                               addr159:
                                                               §§push(_loc2_.col1.y);
                                                               if(_loc6_)
                                                               {
                                                                  addr162:
                                                                  §§push(_loc3_.x);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr199);
                                                                  }
                                                               }
                                                               §§goto(addr174);
                                                            }
                                                            addr199:
                                                            addr166:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               addr174:
                                                               §§push(_loc2_.col2.y);
                                                               if(!(_loc7_ && _loc1_))
                                                               {
                                                                  addr184:
                                                                  §§push(§§pop() * _loc3_.y);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().y = §§pop() - §§pop();
                                                            §§goto(addr200);
                                                         }
                                                         addr200:
                                                         var _loc5_:§<X§ = this.m_world.§`!n§.§<Z§;
                                                         _loc4_ = this.§92§;
                                                         while(_loc4_)
                                                         {
                                                            _loc4_.§'!@§(_loc5_,_loc1_,this.m_xf);
                                                            if(_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            _loc4_ = _loc4_.§3=§;
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                   §§goto(addr174);
                                                }
                                             }
                                             §§goto(addr184);
                                          }
                                          §§goto(addr166);
                                       }
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr199);
                     }
                  }
               }
               §§goto(addr149);
            }
            §§goto(addr199);
         }
         §§goto(addr37);
      }
      
      b2internal function §0!y§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(this.m_xf);
            if(_loc4_ || _loc1_)
            {
               §§push(§§pop().R);
               if(_loc4_ || _loc3_)
               {
                  §§pop().Set(this.m_sweep.a);
                  addr47:
                  §§push(this.m_xf.R);
               }
               var _loc1_:b2Mat22 = §§pop();
               var _loc2_:b2Vec2 = this.m_sweep.localCenter;
               if(_loc4_)
               {
                  §§push(this.m_xf);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().position);
                     addr194:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr196:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr197:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr198:
                              while(true)
                              {
                                 §§push(_loc1_.col1);
                                 addr200:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc4_)
                                    {
                                       §§push(_loc2_.x);
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr206:
                                          while(true)
                                          {
                                             §§push(_loc1_.col2);
                                             addr208:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr209:
                                                while(true)
                                                {
                                                   §§push(_loc2_.y);
                                                   addr211:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr212:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr164:
                                          if(!(_loc4_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc3_)
                                          {
                                             addr175:
                                             §§push(§§pop() - §§pop());
                                             if(_loc4_)
                                             {
                                                §§pop().y = §§pop();
                                                if(!_loc3_)
                                                {
                                                   return;
                                                   addr190:
                                                }
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             addr213:
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                             }
                                             addr213:
                                          }
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             continue loop0;
                                          }
                                       }
                                    }
                                    §§goto(addr213);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr190);
            }
         }
         §§goto(addr47);
      }
      
      b2internal function §9e§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.§+!?§);
            if(!(_loc3_ && param1))
            {
               §§push(b2_dynamicBody);
               if(_loc4_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(!§§pop());
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              §§pop();
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr77:
                                 §§push(param1.§+!?§ == b2_dynamicBody);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr85:
                                    §§push(!§§pop());
                                    if(_loc4_)
                                    {
                                       §§goto(addr88);
                                    }
                                    §§goto(addr92);
                                 }
                                 §§goto(addr88);
                              }
                              §§push(false);
                           }
                           addr92:
                           return §§pop();
                        }
                     }
                     addr88:
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr93);
                        }
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr85);
               }
            }
            §§goto(addr77);
         }
         addr93:
         var _loc2_:b2JointEdge = this.§"O§;
         while(true)
         {
            if(!_loc2_)
            {
               §§push(true);
               break;
            }
            if(_loc2_.§,H§ != param1)
            {
               continue;
            }
            if(_loc4_)
            {
               §§push(_loc2_.§2B§.§0e§);
               if(!(_loc4_ || _loc3_))
               {
                  break;
               }
               if(§§pop() == false)
               {
                  if(!_loc3_)
                  {
                     addr129:
                     §§push(false);
                     if(_loc4_)
                     {
                        return §§pop();
                     }
                     break;
                  }
               }
               continue;
            }
            §§goto(addr129);
         }
         return §§pop();
      }
      
      b2internal function §]!W§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.m_sweep);
            while(true)
            {
               §§push(param1);
               addr109:
               while(true)
               {
                  §§pop().§]!W§(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(this.m_sweep);
                     loop3:
                     while(true)
                     {
                        §§pop().c.SetV(this.m_sweep.c0);
                        addr98:
                        while(!(_loc3_ && _loc2_))
                        {
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
               }
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               §§push(this.m_sweep.a0);
               if(!(_loc3_ && _loc2_))
               {
                  §§pop().a = §§pop();
                  while(true)
                  {
                     this.§0!y§();
                     if(_loc3_ && _loc2_)
                     {
                        continue;
                     }
                     if(!(_loc3_ && param1))
                     {
                        break;
                     }
                     §§goto(addr98);
                  }
                  return;
                  addr89:
               }
               §§goto(addr109);
            }
         }
         §§goto(addr89);
      }
   }
}
